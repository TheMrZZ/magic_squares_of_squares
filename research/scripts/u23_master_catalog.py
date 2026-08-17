"""Extract the master-form catalog from the 402 balance shapes of (2,3).

Write each shape as F = sum_m X-monomial_m * P_m(u, v). For the master
form, F pairs an x-monomial with its y-partner and P with its conjugate.
Catalog the distinct (chi-shift, P) families up to symmetry (u<->v swap,
global sign, u->-u twist). Each family needs one norm-splitting kill.
"""
import pickle
from collections import Counter, defaultdict
from sympy import symbols, expand, Poly, sympify

u, v, x, y = symbols('u v x y')
pairs, relstate = pickle.load(open('u23_factorstate.pkl', 'rb'))
shapes = {}
for rel, bad in relstate.items():
    for c in bad:
        shapes.setdefault(str(c), c)

def xy_decomp(F):
    P = Poly(F, x, y)
    return {m: expand(c) for m, c in P.terms()}   # (cx, cy) -> poly in u,v

def canon_poly(P):
    # canonical form of the pi-side polynomial under u<->v, sign, u->-u,v->-v
    cands = []
    for Q in (P, expand(P.subs({u: v, v: u}, simultaneous=True))):
        for T in (Q, expand(Q.subs({u: -u, v: -v}))):
            cands.append(str(expand(T)))
            cands.append(str(expand(-T)))
    return min(cands)

fams = Counter()
examples = {}
unpaired = []
for s, F in shapes.items():
    # skip GRADE shapes: lone minimal valuation monomial with unit coeff
    terms = Poly(F, u, v, x, y).terms()
    if any([t[0][i] for t in terms].count(min(t2[0][i] for t2 in terms)) == 1
           for i in range(4)):
        continue
    D = xy_decomp(F)
    # pair x-monomials (cx,cy) with (cy,cx)
    keys = sorted(D)
    used = set()
    ok = True
    fam_here = []
    for m in keys:
        if m in used: continue
        mm = (m[1], m[0])
        if mm not in D: ok = False; break
        used.add(m); used.add(mm)
        Pm = D[m]
        fam_here.append((abs(m[0]-m[1]), canon_poly(Pm)))
    if not ok:
        unpaired.append(s); continue
    for sh, cp in fam_here:
        fams[(sh, cp)] += 1
    examples.setdefault(tuple(sorted(set(fam_here))), s)
print(f"unpaired shapes: {len(unpaired)}")
print(f"distinct (chi-shift, P) families: {len(fams)}")
for (sh, cp), c in fams.most_common(30):
    print(f"  {c:4d}  shift {sh}:  {cp}")
pickle.dump(fams, open('u23_master_fams.pkl', 'wb'))
