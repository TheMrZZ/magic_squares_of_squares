# Rigorous q-dominance checker (Round 231) for the terminal ratio
# residues. Each residue E(r, s, q[, p]) with p = sqrt(r^2 + s^2)
# must be nonzero for all admissible data (r, s >= 1, r^2 + s^2 =
# p^2, q >= 5). Method: substitute (r, s) = p(u, v) on the circle
# u^2 + v^2 = 1, decompose E/p^deg as a polynomial in q with
# coefficient functions c_k(u, v); certify |c_K| >= eps on the arc
# by a Lipschitz grid, bound |c_k| <= M_k by coefficient sums, and
# kill when eps * 5^K > sum M_k 5^k. Boundary-vanishing tops are
# flagged for hand analysis.
import sympy as sp
import math

r, s, q, w = sp.symbols('r s q w', positive=True)
p = sp.symbols('p', positive=True)
u, v = sp.symbols('u v', real=True)

def analyze(ser):
    E = sp.sympify(ser, locals={'r': r, 's': s, 'q': q, 'w': w})
    E = E.subs(sp.sqrt(r**2 + s**2), p)
    E = sp.expand(E.subs(sp.sqrt(r**6 + 3*r**4*s**2 + 3*r**2*s**4 + s**6), p**3))
    if E.has(sp.Pow) and any(isinstance(a, sp.Pow) and a.exp.is_Rational
                             and not a.exp.is_Integer for a in sp.preorder_traversal(E)):
        # a surviving radical means lambda is irrational unless the
        # radicand is a perfect square at data — the square branch.
        # sqrt(2)-carrying shapes die by rationality splitting when
        # either part is nonvanishing; general radicals queue.
        return 'SQUARE-BRANCH'
    # q-free shapes: kill by factor irrationality
    if not E.has(q):
        F = sp.factor(E)
        parts = F.args if isinstance(F, sp.Mul) else [F]
        ok = True
        for a_ in parts:
            g, _e = a_.as_base_exp()
            if g.is_number:
                continue
            if len(g.free_symbols) == 1:
                continue  # power of r or s alone: nonzero
            # binary form: check real roots of g(1, x) are irrational
            try:
                pg = sp.Poly(g.subs({r: 1, s: sp.Symbol('x')}), sp.Symbol('x'))
                rr = sp.roots(pg, filter='Q')
                for root in rr:
                    a_, b_ = sp.fraction(sp.Rational(root))
                    # data has r odd, s even: the root s/r = a/b is
                    # realizable only with a even, b odd
                    if int(a_) % 2 == 0 and int(b_) % 2 == 1:
                        ok = False
            except Exception:
                ok = False
        if ok:
            return 'QFREE-IRRATIONAL-KILL'
        return 'QFREE-RESIDUE'
    if E.has(w):
        return 'HAS-W'
    # substitute r = p*u, s = p*v and p^2 = 1 (scale-normalize):
    # E is p-homogeneous per q-level after normalization?
    Eq = sp.Poly(E, q)
    coeffs = {}
    degs = set()
    for (k,), c in Eq.terms():
        cc = sp.expand(c.subs({r: p*u, s: p*v}))
        # collect p-degree
        cp = sp.Poly(cc, p)
        pd = set(m[0] for m, _ in cp.terms())
        if len(pd) != 1:
            return 'INHOMOG'
        degs.add((k, pd.pop()))
        coeffs[k] = sp.expand(cc.subs(p, 1))
    pdeg = {k: d for k, d in degs}
    # require uniform p-degree across q-levels (else scale matters)
    if len(set(pdeg.values())) != 1:
        return 'MIXED-PDEG'
    K = max(coeffs)
    for k, c in coeffs.items():
        if c.free_symbols - {u, v}:
            return 'BAD-COEFF'
    cK = coeffs[K]
    # certified min of |c_K| on the arc via Lipschitz grid
    f = sp.lambdify((u, v), cK, 'math')
    # Lipschitz bound: sum |a| * deg over monomials
    PK = sp.Poly(cK, u, v)
    L = float(sum(abs(a) * (sum(m)) for m, a in PK.terms())) + 1.0
    n = 4000
    mn = float('inf')
    for i in range(n + 1):
        th = (math.pi / 2) * i / n
        val = abs(f(math.cos(th), math.sin(th)))
        if val < mn:
            mn = val
    step = (math.pi / 2) / n
    eps = mn - L * step
    if eps <= 0:
        return 'TOP-VANISHES'
    Ms = 0.0
    for k, c in coeffs.items():
        if k == K:
            continue
        Pk = sp.Poly(c, u, v)
        Ms += float(sum(abs(a) for _, a in Pk.terms())) * 5.0**k
    if eps * 5.0**K > Ms:
        return 'DOMINANCE-KILL'
    return 'GAP-TOO-SMALL'

from collections import Counter
out = Counter()
flagged = []
for ln in open('u3_terminal_ratios.txt'):
    n, ser = ln.rstrip('\n').split('\t')
    try:
        res = analyze(ser)
    except Exception as ex:
        res = f'ERROR:{type(ex).__name__}'
    out[res] += int(n)
    if res != 'DOMINANCE-KILL':
        flagged.append((int(n), res, ser[:120]))
print("dominance outcomes (weighted):", dict(out))
print(f"{len(flagged)} flagged shapes:")
for n, res, ser in flagged[:20]:
    print(f"  [{n}] {res}: {ser}")
