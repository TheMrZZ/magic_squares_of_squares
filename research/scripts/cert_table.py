"""Certificate table for the 32 double-pinch (2,2) relations: per relation,
the three signed elements, and for each side which core appears
(Re: v+vb, or Im: v-vb) — determined from the earlier side_cert data."""
import itertools, pickle
from sympy import symbols, I as iu, expand, im as sim, factor, Mul, Pow, sqrt

p, q = symbols('p q', positive=True)
R, I, X, Y = symbols('R I X Y', real=True)
u, ub, v, vb = symbols('u ub v vb', positive=True)
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
def pexp(e): return 4 - 2*e[0]
def qexp(e): return 4 - 2*e[1]
def lone(rel):
    ps = [pexp(x) for x in rel]; qs = [qexp(x) for x in rel]
    return ps.count(min(ps)) == 1 or qs.count(min(qs)) == 1
rels = set()
for combo in itertools.permutations(range(12), 4):
    eu, ev, es, ed = [elems[k] for k in combo]
    if lone([es,eu,ev]) or lone([ed,eu,ev]): continue
    for sv, ss, sd in itertools.product((1,-1), repeat=3):
        for trip, sgns in (((es,eu,ev),(ss,-1,-sv)), ((ed,eu,ev),(sd,-1,sv))):
            key = frozenset(zip(trip, sgns))
            key2 = frozenset((t,-g) for t,g in key)
            rels.add(min(key, key2, key=lambda fs: sorted(str(x) for x in fs)))
rels = sorted(rels, key=lambda fs: sorted(str(x) for x in fs))

def side_core(F, side):
    if side == 'pi':
        e = F.subs({R: -iu*I, p: 0})
        e = expand(e.subs({X: (v**2+vb**2)/2, Y: (v**2-vb**2)/(2*iu), q: sqrt(v*vb)}))
        smalls = {'Re': v+vb, 'Im': v-vb}
    else:
        e = F.subs({X: -iu*Y, q: 0})
        e = expand(e.subs({R: (u**2+ub**2)/2, I: (u**2-ub**2)/(2*iu), p: sqrt(u*ub)}))
        smalls = {'Re': u+ub, 'Im': u-ub}
    if e == 0: return None
    found = []
    for fc in Mul.make_args(factor(e)):
        b_, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        for nm, A in smalls.items():
            if expand(b_ - A) == 0 or expand(b_ + A) == 0: found.append(nm)
    return found

table = []
for rel in rels:
    T = expand(sum(g*elem_expr(e) for e, g in rel))
    # relation-level cores (works since dead relations have one nontrivial factor)
    cp = side_core(T, 'pi'); cq = side_core(T, 'chi')
    if cp and cq and len(cp) == 1 and len(cq) == 1:
        table.append((sorted((e, g) for e, g in rel), cp[0], cq[0]))
print(f"double-pinch table entries: {len(table)}")
from collections import Counter
print(Counter((c1, c2) for _, c1, c2 in table))
for row in table[:6]: print(row)
pickle.dump(table, open('cert_table.pkl','wb'))
