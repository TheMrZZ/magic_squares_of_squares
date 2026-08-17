"""The exact oracle: verify nonvanishing of the certifier's minimal-layer
forms by root arguments (replacing the data-evaluation check).

Input: oracle_t0_<a>_<b>.txt files from the Rust certifier (one form per
line, sympy-parsable in r, s). For each form: factor over Q; each factor
must be a monomial, a parity-excluded linear form, r^2+s^2, or a
homogeneous form whose rational roots (rational-root theorem on the
dehomogenization) are all parity-excluded (r odd, s even is the admissible
class). Report any factor that fails — those need bespoke arguments.
"""
import glob
import sys
from multiprocessing import Pool
from sympy import symbols, sympify, factor, roots, Mul, Pow, Poly, expand

r, s, z = symbols('r s z')


def check_form(line):
    F = expand(sympify(line))
    if F == 0:
        return (line, 'IDENTICALLY ZERO — needs deeper elimination')
    bad = []
    for fc in Mul.make_args(factor(F)):
        b_, _ = (fc.base, fc.exp) if isinstance(fc, Pow) else (fc, 1)
        if b_.is_number or b_ in (r, s):
            continue
        st = str(b_)
        if st in ('r - s', 'r + s', '-r + s', '-r - s', 'r**2 + s**2'):
            continue
        P = Poly(b_, r, s)
        deg = P.total_degree()
        if any(sum(m) != deg for m in P.monoms()):
            bad.append(('inhomogeneous', st))
            continue
        rt = roots(b_.subs({r: z, s: 1}), z)
        for w in rt:
            if not w.is_rational:
                continue
            n, d = w.as_numer_denom()
            if abs(n) % 2 == 1 and d % 2 == 0:
                bad.append(('realizable root ' + str(w), st))
    return (line, bad if bad else 'OK')


if __name__ == '__main__':
    files = sorted(glob.glob('oracle_t0_*.txt'))
    if not files:
        print('no oracle dumps found')
        sys.exit(0)
    for fn in files:
        lines = [l.strip() for l in open(fn) if l.strip()]
        print(f"{fn}: {len(lines)} forms")
        ok = 0
        issues = []
        with Pool(10) as pool:
            for line, verdict in pool.imap_unordered(check_form, lines, chunksize=2):
                if verdict == 'OK':
                    ok += 1
                else:
                    issues.append((line[:80], verdict))
        print(f"  OK: {ok} / {len(lines)}")
        for l, v in issues[:10]:
            print(f"  ISSUE: {v}  in  {l}")
