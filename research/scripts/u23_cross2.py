"""Corrected cross analysis: read the pinning from the G-half.

A balance factor is F = G -+ conj(G). Split F's terms: G-half = terms with
x-exp > y-exp, half of the diagonal (x-exp = y-exp) terms. The chi-adic
minimal layer of the equation G = +-conj(G) sits at delta = (min y-exp of
G) - (min x-exp of G) per G; the pinning uses the minimal-x layer of G:
P = its (u,v)-polynomial, with Sigma = P + conj P, Omega = (P - conj P)/2i.
Then the cross between the two relations' factors as before.
Diagonal terms with x-exp = y-exp are real (q-power times Im pi-part):
they join Sigma's side at their own layer — flagged and handled separately
when they are minimal.
"""
import pickle
from collections import Counter
from sympy import symbols, I as iu, expand, sympify, Poly

u, v, x, y, r, s = symbols('u v x y r s')

def g_half_data(Fs):
    F = sympify(Fs) if isinstance(Fs, str) else Fs
    P = Poly(F, u, v, x, y)
    gterms = []
    diag = []
    for m, c in P.terms():
        if m[2] > m[3]: gterms.append((m, c))
        elif m[2] == m[3]: diag.append((m, c))
    if not gterms:
        return None  # purely diagonal factor: pure pi-side condition
    e0 = min(m[2] for m, c in gterms)
    lay = [(m, c) for m, c in gterms if m[2] == e0]
    f_of_lay = min(m[3] for m, c in lay)
    lay = [(m, c) for m, c in lay if m[3] == f_of_lay]
    delta = None
    # delta for the balance: conj(G) has x-exp = G's y-exps; min x over conj(G) = min y over G
    fmin = min(m[3] for m, c in gterms)
    delta = fmin - e0 if fmin >= e0 else e0 - fmin
    Pl = expand(sum(int(c)*u**m[0]*v**m[1] for m, c in lay))
    Pc = expand(Pl.subs({u: v, v: u}, simultaneous=True))
    Sig = expand((Pl + Pc).subs({u: r + iu*s, v: r - iu*s}))
    Om = expand(((Pl - Pc)/(2*iu)).subs({u: r + iu*s, v: r - iu*s}))
    has_diag_below = any(m[2] < e0 for m, c in diag)
    return delta, str(Pl), Sig, Om, bool(diag), has_diag_below

states = Counter()
cross_polys = Counter()
zero_cross = Counter()
for fn in ('u23_factorstate.pkl', 'u23_corestate.pkl'):
    pairs, relstate = pickle.load(open(fn, 'rb'))
    cache = {}
    for rel, bad in relstate.items():
        out = []
        for sx in bad:
            d = g_half_data(sx)
            out.append(d)
        cache[rel] = out
    for r1, r2 in pairs:
        b1 = cache.get(r1, []); b2 = cache.get(r2, [])
        if not b1 or not b2:
            states['pair already dead'] += 1; continue
        for d1 in b1:
            for d2 in b2:
                if d1 is None or d2 is None:
                    states['pure-diagonal factor (pi-side condition)'] += 1; continue
                del1, P1, S1, O1, dg1, db1 = d1
                del2, P2, S2, O2, dg2, db2 = d2
                if db1 or db2:
                    states['diagonal layer below minimum (layered case)'] += 1; continue
                if del1 != del2:
                    states['shift mismatch'] += 1; continue
                C = expand(S1*O2 - S2*O1)
                if C == 0:
                    states['CROSS ZERO'] += 1
                    zero_cross[(min(P1,P2), max(P1,P2), del1)] += 1
                else:
                    states['cross nonzero'] += 1
                    cross_polys[str(C)] += 1
print(dict(states))
print(f"distinct cross polys: {len(cross_polys)}; zero-cross families: {len(zero_cross)}")
for k, c in zero_cross.most_common(12): print(f"  {c:4d}  {k}")
pickle.dump((cross_polys, zero_cross), open('u23_cross2.pkl', 'wb'))
