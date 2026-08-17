"""Coupling scan: for every residual (2,2) relation, scan all prime pairs
p != q < BOUND (all rep orientations). Count the events p | T' and
q | T' separately and jointly, where T' is the content-free relation
value. A relation with zero joint events on the full grid supports the
incompatibility hypothesis: the two divisibility conditions exclude
each other."""
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
rels = set()
for perm, (s1, e2, e3, e4) in survivors:
    ea, eb, ec, ed = [elems[k] for k in perm]
    for terms in ([(ec, e3), (ed, e4), (ea, -2)],
                  [(ec, e3), (ed, -e4), (eb, -2*e2)]):
        key = tuple(sorted((e, g) for e, g in terms))
        key2 = tuple(sorted((e, -g) for e, g in terms))
        rels.add(min(key, key2))
rels = sorted(rels)

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

BOUND = 250
prs = [n for n in range(5, BOUND) if all(n % k for k in range(2, math.isqrt(n)+1)) and n % 4 == 1]
reps = {}
for pr in prs:
    a_, b_ = gauss_rep(pr)
    reps[pr] = [pow4(a_, b_), pow4(b_, a_)]

ponly = [0]*len(rels); qonly = [0]*len(rels); joint = [0]*len(rels)
jexamples = {}
for pp in prs:
    for qq in prs:
        if pp == qq: continue
        for (Rv, Iv) in reps[pp]:
            for (Xv, Yv) in reps[qq]:
                for ri, f in enumerate(FNS):
                    Tv = round(f(Rv, Iv, Xv, Yv, pp, qq))
                    if Tv == 0:
                        print("!!! EXACT ZERO", pp, qq, rels[ri]); continue
                    dp = (Tv % pp == 0); dq = (Tv % qq == 0)
                    if dp and dq:
                        joint[ri] += 1
                        jexamples.setdefault(ri, []).append((pp, qq))
                    elif dp: ponly[ri] += 1
                    elif dq: qonly[ri] += 1
tot_j = sum(joint)
print(f"grid: {len(prs)} primes < {BOUND}; relations: {len(rels)}")
print(f"total p-only events: {sum(ponly)}, q-only: {sum(qonly)}, JOINT: {tot_j}")
withj = [(ri, joint[ri]) for ri in range(len(rels)) if joint[ri]]
print(f"relations with any joint event: {len(withj)}")
for ri, c in sorted(withj, key=lambda t: -t[1])[:20]:
    print(f"  rel {ri} {rels[ri]}: {c} joint, examples {jexamples[ri][:4]}")
pickle.dump((rels, ponly, qonly, joint, jexamples), open('u22_coupling.pkl', 'wb'))
