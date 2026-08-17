"""Classify the terminal polynomials T(r, s, q) of the (2,3) endgame.

T = sum_k q^{2k} t_k(r, s).  The pair dies when T-value != 0 at every
admissible datum.  Kill rules per T:
  Q-GRADE: the minimal-k coefficient t_{k0} has only irrational or
    parity-excluded rational root ratios -> T != 0 unless q^2 | t_{k0}-value:
    a thin band branch (record it); if additionally the whole T is a single
    q-level times a nonvanishing form, the kill is unconditional.
  FACTOR: T factors with all pieces nonvanishing (library) -> unconditional.
Report the class counts and the residual thin-branch list.
"""
import pickle
from collections import Counter
from sympy import symbols, sympify, Poly, factor, roots, Mul, Pow, expand

r, s, q, z = symbols('r s q z')


def nonvanishing_rs(b_):
    if b_.is_number:
        return True
    fs = b_.free_symbols
    if fs <= {q}:
        return None  # q-polynomial: separate handling
    if b_ in (r, s):
        return True
    rt = roots(b_.subs({r: z, s: 1}), z) if s in fs or r in fs else {}
    ratl = [w for w in rt if w.is_rational]
    for w in ratl:
        n, d = w.as_numer_denom()
        if abs(n) % 2 == 1 and d % 2 == 0:
            return False
    return True


terms = pickle.load(open('u23_terminal_polys.pkl', 'rb'))
print(f"{len(terms)} distinct terminal polynomials")
cls = Counter()
thin = []
for ts, cnt in terms.items():
    T = expand(sympify(ts))
    # try full factorization first
    allok = True
    anyq = False
    for fc in Mul.make_args(factor(T)):
        b_, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        v = nonvanishing_rs(b_)
        if v is None:
            anyq = True
            continue
        if not v:
            allok = False
    if allok and not anyq:
        cls['FACTOR kill (all pieces nonvanishing)'] += cnt
        continue
    P = Poly(T, q)
    lv = [(m[0], c) for m, c in P.terms()]
    k0 = min(k for k, c in lv)
    t0 = expand([c for k, c in lv if k == k0][0])
    ok0 = True
    for fc in Mul.make_args(factor(t0)):
        b_, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        v = nonvanishing_rs(b_)
        if v is False:
            ok0 = False
    if len(lv) == 1:
        cls['single q-level, t0 ' + ('nonvanishing -> DEAD' if ok0 else 'UNRESOLVED')] += cnt
        if not ok0:
            thin.append((ts, 'single-level t0 vanishing possible'))
        continue
    if ok0:
        cls['Q-GRADE thin branch (q^2 | t0 band)'] += cnt
        thin.append((ts, 'thin: q^2 | ' + str(factor(t0))[:80]))
    else:
        cls['t0 can vanish: UNRESOLVED'] += cnt
        thin.append((ts, 'unresolved t0'))
for k, c in cls.most_common():
    print(f"  {c:5d}  {k}")
print(f"\nthin/unresolved entries: {len(thin)}")
for ts, why in thin[:8]:
    print("  ", why)
pickle.dump(thin, open('u23_thin.pkl', 'wb'))
