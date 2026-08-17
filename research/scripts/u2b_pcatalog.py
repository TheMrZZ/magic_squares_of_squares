"""Does the pi-side P-catalog of balance factors stabilize in b?

Enumerate all 3-class relations at (2,b) with leaf coefficient patterns
(two +-1 and one +-2), keep those with no lone minimal layer, factor,
drop library-nonzero factors, and collect the minimal-chi-layer P
polynomials of the balance factors. Compare catalogs across b.
"""
import itertools, sys, pickle
from collections import Counter
from sympy import symbols, I as iu, expand, factor, Mul, Pow, Poly

u, v, x, y = symbols('u v x y')
A = 2

def catalog(B):
    els = []
    for j in range(A+1):
        for k in range(B+1):
            if (j, k) == (0, 0): continue
            sgs = (1,) if (j == 0 or k == 0) else (1, -1)
            for sg in sgs: els.append((j, k, sg))
    pexp = {e: 2*(A-e[0]) for e in els}
    qexp = {e: 2*(B-e[1]) for e in els}
    def elem_uv(e):
        j, k, sg = e
        w = 1
        if j: w *= u**(2*j)
        if k: w *= (x**(2*k) if sg > 0 else y**(2*k))
        wc = w.subs({u: v, v: u, x: y, y: x}, simultaneous=True)
        return expand((w - wc)/(2*iu) * (u*v)**(A-j) * (x*y)**(B-k))
    EV = {e: elem_uv(e) for e in els}
    def lone(rel):
        for exp in (pexp, qexp):
            vs = [exp[e] for e, _ in rel]
            m = min(vs)
            if vs.count(m) == 1: return True
        return False
    NONZERO = set()
    for j in range(1, 2*B+2):
        for expr in (u**j+v**j, u**j-v**j, x**j+y**j, x**j-y**j):
            NONZERO.add(str(expand(expr))); NONZERO.add(str(expand(-expr)))
    for j in range(1, B+1):
        for expr in (u**(2*j)+v**(2*j)-2*(u*v)**j, u**(2*j)+v**(2*j)+2*(u*v)**j,
                     x**(2*j)+y**(2*j)-2*(x*y)**j, x**(2*j)+y**(2*j)+2*(x*y)**j,
                     u**(2*j)+v**(2*j)-(u*v)**j, u**(2*j)+v**(2*j)+(u*v)**j,
                     x**(2*j)+y**(2*j)-(x*y)**j, x**(2*j)+y**(2*j)+(x*y)**j):
            NONZERO.add(str(expand(expr))); NONZERO.add(str(expand(-expr)))
    rels = set()
    for c3 in itertools.combinations(range(len(els)), 3):
        trip = [els[i] for i in c3]
        for pos2 in range(3):
            for s2 in (2, -2):
                for sa, sb in itertools.product((1,-1), repeat=2):
                    co = [0,0,0]; k = 0
                    for i in range(3):
                        if i == pos2: co[i] = s2
                        else: co[i] = (sa if k == 0 else sb); k += 1
                    rel = tuple(sorted(zip(trip, co)))
                    rel2 = tuple(sorted((e, -g) for e, g in rel))
                    rels.add(min(rel, rel2))
    kept = [r for r in rels if not lone(list(r))]
    Ps = set()
    nshapes = 0
    for rel in kept:
        T = expand(sum(g*EV[e] for e, g in rel))
        for fc in Mul.make_args(factor(T)):
            b_, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
            if b_.is_number or b_ in (u, v, x, y): continue
            if str(expand(b_)) in NONZERO or str(expand(-b_)) in NONZERO: continue
            terms = Poly(b_, u, v, x, y).terms()
            # grade-unit skip
            gr = False
            for i in range(4):
                vs = [t[0][i] for t in terms]
                m = min(vs)
                if vs.count(m) == 1 and abs(int([c for mm, c in terms if mm[i] == m][0])) == 1:
                    gr = True
            if gr: continue
            nshapes += 1
            ex_ = [t[0][2] for t in terms]
            e0 = min(ex_)
            lay = [t for t in terms if t[0][2] == e0]
            Pl = expand(sum(int(c)*u**mm[0]*v**mm[1] for mm, c in lay))
            # canonical
            cands = []
            for Q in (Pl, expand(Pl.subs({u: v, v: u}, simultaneous=True))):
                for Tq in (Q, expand(Q.subs({u: -u, v: -v}))):
                    cands.append(str(expand(Tq))); cands.append(str(expand(-Tq)))
            Ps.add(min(cands))
    return len(kept), nshapes, Ps

base = None
for B in (3, 4):
    nk, ns, Ps = catalog(B)
    if base is None:
        base = Ps
        print(f"(2,{B}): {nk} relations kept, {ns} balance-factor instances, {len(Ps)} distinct P")
    else:
        new = Ps - base
        print(f"(2,{B}): {nk} relations kept, {ns} instances, {len(Ps)} distinct P, NEW vs (2,3): {len(new)}")
        for s in sorted(new)[:10]: print("   NEW:", s)
    pickle.dump(Ps, open(f'u2{B}_pcat.pkl', 'wb'))
