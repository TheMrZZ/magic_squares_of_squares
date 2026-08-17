"""Extended coupling scan: only the relations with joint events on the
small grid. Scan p, q < 1000 and record every joint pair. The question:
does the joint set grow, or does it stay a fixed finite set of small
pairs?"""
import pickle, math
from sympy import symbols, I as iu, expand, im as sim, lambdify

p, q = symbols('p q', positive=True)
R, I, X, Y = symbols('R I X Y', real=True)
P1 = R + iu*I; C1 = X + iu*Y
elems = []
for a in range(3):
    for b in range(3):
        if (a, b) == (0, 0): continue
        if a == 0 or b == 0: elems.append((a, b, 1))
        else: elems.append((a, b, 1)); elems.append((a, b, -1))
def elem_expr(e):
    a, b, sg = e
    z = 1
    if a: z *= P1**a
    if b:
        c = C1**b
        if sg < 0: c = c.conjugate()
        z *= c
    return p**(4-2*a) * q**(4-2*b) * expand(sim(expand(z)))
EV = {e: elem_expr(e) for e in elems}

rels, ponly, qonly, joint, jex = pickle.load(open('u22_coupling.pkl', 'rb'))
active = [ri for ri in range(len(rels)) if joint[ri]]
print(f"{len(active)} relations with joint events on the small grid")
FNS = {}
for ri in active:
    rel = rels[ri]
    gp = min(4 - 2*e[0] for e, _ in rel)
    gq = min(4 - 2*e[1] for e, _ in rel)
    T = expand(sum(g * EV[e] for e, g in rel) / (p**gp * q**gq))
    FNS[ri] = lambdify((R, I, X, Y, p, q), T, 'math')

def gauss_rep(n):
    for a_ in range(1, math.isqrt(n)+1):
        b2 = n - a_*a_; b_ = math.isqrt(b2)
        if b_*b_ == b2: return (a_, b_)
def pow4(a_, b_):
    x, y = a_, b_
    for _ in range(2):
        x, y = x*x - y*y, 2*x*y
    return x, y

BOUND = 1000
prs = [n for n in range(5, BOUND) if all(n % k for k in range(2, math.isqrt(n)+1)) and n % 4 == 1]
reps = {pr: [pow4(*gauss_rep(pr)), pow4(*gauss_rep(pr)[::-1])] for pr in prs}
from collections import defaultdict
jpairs = defaultdict(set)
for pp in prs:
    for qq in prs:
        if pp == qq: continue
        for (Rv, Iv) in reps[pp]:
            for (Xv, Yv) in reps[qq]:
                for ri in active:
                    Tv = FNS[ri](Rv, Iv, Xv, Yv, pp, qq)
                    if Tv == 0:
                        print("!!! EXACT ZERO", pp, qq, rels[ri]); continue
                    if Tv % pp == 0 and Tv % qq == 0:
                        jpairs[ri].add((pp, qq))
print(f"\njoint pairs per relation (p, q < {BOUND}):")
allpairs = set()
for ri in active:
    ps = sorted(jpairs[ri])
    allpairs.update(ps)
    print(f"  rel {ri}: {ps}")
print(f"\nunion of all joint pairs: {sorted(allpairs)}")
print(f"max prime in any joint pair: {max((max(t) for t in allpairs), default=0)}")
pickle.dump(dict(jpairs), open('u22_jointpairs.pkl', 'wb'))
