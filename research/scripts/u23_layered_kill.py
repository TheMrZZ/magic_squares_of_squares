"""Layered kill: expand each layered factor's value in the chi-coordinate
basis and apply the divisibility cascade.

F-value = sum_k  c_k(r, s) * q^{2 m_k} * Z_k,   Z_k in {X_j, Y_j, 1},
where X_j + i Y_j = chi^{2j}. Extraction: substitute x = X + iY-symbols
level by level via chi^{2j}-recursion; practically, collect F's terms by
(x-exp - y-exp) = 2j and use  x^a y^b = q^{2 min(a,b)} * chi^{2(a-b)} for
a > b (and conjugate). Verify numerically, then cascade:
  - q nmid Y_j, X_j (coprime coordinates) and p nmid pi-coordinates:
    lone q-minimal or p-minimal term forces divisibility of its c_k or
    a coordinate — bands; a lone minimal term with unit content is dead.
Report the relation table and the cascade verdicts.
"""
import pickle
from collections import Counter
from sympy import symbols, I as iu, expand, sympify, Poly

u, v, x, y, r, s, q = symbols('u v x y r s q')
seen = {}
for fn in ('u23_factorstate.pkl', 'u23_corestate.pkl'):
    pairs, relstate = pickle.load(open(fn, 'rb'))
    for rel, bad in relstate.items():
        for sx in bad:
            key = str(sx)
            if key in seen: continue
            F = sympify(sx) if isinstance(sx, str) else sx
            P = Poly(F, u, v, x, y)
            gterms = [(m, c) for m, c in P.terms() if m[2] > m[3]]
            diag = [(m, c) for m, c in P.terms() if m[2] == m[3]]
            if not gterms or not diag: continue
            e0 = min(m[2] for m, c in gterms)
            if min(m[2] for m, c in diag) >= e0: continue
            seen[key] = P
print(f"{len(seen)} layered factors")

tables = Counter()
for key, P in seen.items():
    # group by j = (x-exp - y-exp)/2 signed; entry: (j, m=min exp, coeff-poly)
    groups = {}
    for m, c in P.terms():
        a, b = m[2], m[3]
        j2 = a - b
        mm = min(a, b)
        groups.setdefault((j2, mm), []).append((m, c))
    ent = []
    for (j2, mm), ts in sorted(groups.items()):
        cp = expand(sum(int(c)*u**m[0]*v**m[1] for m, c in ts))
        cval = expand(cp.subs({u: r + iu*s, v: r - iu*s}))
        ent.append((j2, mm, cval))
    # signature: list of (j2, m, is coefficient real / imaginary / mixed)
    sig = []
    for j2, mm, cval in ent:
        from sympy import im as sim, re as sre
        ci = expand(sim(cval)); cr = expand(sre(cval))
        kind = 'real' if ci == 0 else ('imag' if cr == 0 else 'mixed')
        sig.append((j2, mm, kind))
    tables[tuple(sig)] += 1
print(f"{len(tables)} distinct relation signatures:")
for k, c in tables.most_common(15):
    print(f"  {c:3d}  {k}")
PYEOF
