"""Enumerate the terminal certificate data for the mismatch sector.

For each mismatch combo (two balance factors with shifts D1 < D2), the two
pinnings force  q^{2 D1} | A12 and q^{2 D1} | C12 where
  A12 = Sigma1*Sigma2 + 4*Omega1*Omega2,   C12 = 2*(Sigma1*Omega2 - Sigma2*Omega1).
Compute per family pair: the resultant contents of (A12, C12) — the
certificate is q | content, or the thin branches q | R or q | S with the
partner content. Report the content set and any degenerate (A12, C12).
"""
import pickle
from collections import Counter
from sympy import symbols, I as iu, expand, sympify, Poly, resultant, factor, factorint

u, v, x, y, r, s = symbols('u v x y r s')

def g_half_data(Fs):
    F = sympify(Fs) if isinstance(Fs, str) else Fs
    P = Poly(F, u, v, x, y)
    gterms = [(m, c) for m, c in P.terms() if m[2] > m[3]]
    diag = [(m, c) for m, c in P.terms() if m[2] == m[3]]
    if not gterms: return None
    e0 = min(m[2] for m, c in gterms)
    if any(m[2] < e0 for m, c in diag): return None  # layered
    lay = [(m, c) for m, c in gterms if m[2] == e0]
    f0 = min(m[3] for m, c in lay)
    lay = [(m, c) for m, c in lay if m[3] == f0]
    fmin = min(m[3] for m, c in gterms)
    delta = e0 - fmin if e0 > fmin else fmin - e0
    Pl = expand(sum(int(c)*u**m[0]*v**m[1] for m, c in lay))
    Pc = expand(Pl.subs({u: v, v: u}, simultaneous=True))
    Sig = expand((Pl + Pc).subs({u: r + iu*s, v: r - iu*s}))
    Om = expand(((Pl - Pc)/(2*iu)).subs({u: r + iu*s, v: r - iu*s}))
    return delta, str(Pl), Sig, Om

contents = Counter()
degen = Counter()
seenpair = set()
for fn in ('u23_factorstate.pkl', 'u23_corestate.pkl'):
    pairs, relstate = pickle.load(open(fn, 'rb'))
    cache = {rel: [g_half_data(sx) for sx in bad] for rel, bad in relstate.items()}
    for r1, r2 in pairs:
        b1 = cache.get(r1, []); b2 = cache.get(r2, [])
        if not b1 or not b2: continue
        for d1 in b1:
            for d2 in b2:
                if d1 is None or d2 is None: continue
                if d1[0] == d2[0]: continue  # equal shifts handled by the cross
                key = tuple(sorted([d1[1], d2[1]])) + (min(d1[0], d2[0]),)
                if key in seenpair: continue
                seenpair.add(key)
                _, _, S1, O1 = d1
                _, _, S2, O2 = d2
                A12 = expand(S1*S2 + 4*O1*O2)
                C12 = expand(2*(S1*O2 - S2*O1))
                if A12 == 0 and C12 == 0:
                    degen['both zero'] += 1; continue
                if C12 == 0:
                    degen['cross zero (aligned pinning)'] += 1; continue
                rs_ = expand(resultant(Poly(A12, s), Poly(C12, s))) if A12 != 0 else 0
                rr_ = expand(resultant(Poly(A12, r), Poly(C12, r))) if A12 != 0 else 0
                def content(e):
                    if e == 0: return 0
                    P_ = Poly(e, r, s)
                    from math import gcd
                    g = 0
                    for _, c in P_.terms(): g = gcd(g, abs(int(c)))
                    return g
                c1, c2 = content(rs_), content(rr_)
                contents[(c1, c2)] += 1
print(f"{len(seenpair)} distinct mismatch family pairs")
print("degenerate:", dict(degen))
print("resultant content pairs (c_S, c_R):")
tot_primes = set()
for (c1, c2), n in contents.most_common(15):
    f1 = factorint(c1) if c1 else {}
    f2 = factorint(c2) if c2 else {}
    tot_primes |= set(f1) | set(f2)
    print(f"  {n:4d}  ({c1}, {c2})  primes {sorted(set(f1)|set(f2))}")
print("all primes in contents:", sorted(tot_primes))
