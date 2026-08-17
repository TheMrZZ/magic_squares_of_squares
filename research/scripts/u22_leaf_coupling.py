"""Leaf-level coupling test for (2,2).

A leaf carries TWO relations (R1 from hE1, R2 from hE2). A satisfiable
leaf needs p and q to divide the content-free values of BOTH relations
at the SAME point (p, q, orientation). Compute, over all points with
p, q < 1000, the joint-divisibility point set of every relation; then
intersect the two sets for each surviving leaf. Report every leaf with a
nonempty intersection.
"""
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

survivors = pickle.load(open('u22_survivors.pkl', 'rb'))

def relkey(terms):
    key = tuple(sorted((e, g) for e, g in terms))
    key2 = tuple(sorted((e, -g) for e, g in terms))
    return min(key, key2)

leaves = []
relset = set()
for perm, (s1, e2, e3, e4) in survivors:
    ea, eb, ec, ed = [elems[k] for k in perm]
    k1 = relkey([(ec, e3), (ed, e4), (ea, -2)])
    k2 = relkey([(ec, e3), (ed, -e4), (eb, -2*e2)])
    leaves.append((k1, k2, perm, (s1, e2, e3, e4)))
    relset.add(k1); relset.add(k2)
rels = sorted(relset)
ridx = {rel: i for i, rel in enumerate(rels)}
print(f"{len(leaves)} leaves over {len(rels)} relations")

FNS = []
for rel in rels:
    gp = min(4 - 2*e[0] for e, _ in rel)
    gq = min(4 - 2*e[1] for e, _ in rel)
    T = expand(sum(g * EV[e] for e, g in rel) / (p**gp * q**gq))
    FNS.append(lambdify((R, I, X, Y, p, q), T, 'math'))

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

jointset = [set() for _ in rels]   # point ids where p|T' and q|T'
pid = 0
for pp in prs:
    for qq in prs:
        if pp == qq: continue
        for oi, (Rv, Iv) in enumerate(reps[pp]):
            for oj, (Xv, Yv) in enumerate(reps[qq]):
                point = (pp, qq, oi, oj)
                for ri, f in enumerate(FNS):
                    Tv = f(Rv, Iv, Xv, Yv, pp, qq)
                    if Tv == 0:
                        print("!!! EXACT ZERO", point, rels[ri]); continue
                    if Tv % pp == 0 and Tv % qq == 0:
                        jointset[ri].add(point)
nz = sum(1 for s in jointset if s)
print(f"relations with nonempty joint set: {nz}")

bad = 0
for k1, k2, perm, sgns in leaves:
    inter = jointset[ridx[k1]] & jointset[ridx[k2]]
    if inter:
        bad += 1
        if bad <= 20:
            print("LEAF SURVIVES first-order:", perm, sgns, sorted(inter)[:4])
print(f"\nleaves with a common joint point: {bad} / {len(leaves)}")
pickle.dump(jointset, open('u22_jointsets.pkl', 'wb'))
