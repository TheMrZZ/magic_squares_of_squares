"""Factor screen for the (2,3) CORE-pattern sector (the 576 patterns with
p | f(q) resultant certificates). Same nonzero library as the degenerate
screen; report how many leaf pairs die outright and catalog the rest."""
import itertools, pickle
from collections import Counter
from sympy import symbols, I as iu, expand, factor, Mul, Pow, Poly

u, v, x, y = symbols('u v x y')
A, B = 2, 3
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
def ppat(rel):
    m = min(pexp[e] for e, _ in rel)
    lay = sorted((e[1], e[2], g) for e, g in rel if pexp[e] == m)
    k0 = min(k for k, _, _ in lay)
    return tuple((k-k0, sg, g) for k, sg, g in lay)

degen, cores = pickle.load(open('u23_pattern_residue.pkl', 'rb'))
cset = set((tuple(p1), tuple(p2)) for p1, p2, _ in cores)
pairs = set()
n = len(els)
for combo in itertools.permutations(range(n), 4):
    ea, eb, ec, ed = [els[i] for i in combo]
    for e2, e3, e4 in itertools.product((1,-1), repeat=3):
        r1 = tuple([(ec, e3), (ed, e4), (ea, -2)])
        r2 = tuple([(ec, e3), (ed, -e4), (eb, -2*e2)])
        if lone(list(r1)) or lone(list(r2)): continue
        if (ppat(list(r1)), ppat(list(r2))) in cset:
            pairs.add((r1, r2))
rels = set()
for r1, r2 in pairs: rels.add(r1); rels.add(r2)
print(f"core sector: {len(pairs)} pairs, {len(rels)} distinct relations")

NONZERO = set()
for j in (1, 2, 3):
    for expr in (u**j + v**j, u**j - v**j, x**j + y**j, x**j - y**j,
                 u**(2*j) + v**(2*j), x**(2*j) + y**(2*j),
                 u**(2*j) - v**(2*j), x**(2*j) - y**(2*j),
                 u**(2*j) + v**(2*j) - 2*(u*v)**j, u**(2*j) + v**(2*j) + 2*(u*v)**j,
                 x**(2*j) + y**(2*j) - 2*(x*y)**j, x**(2*j) + y**(2*j) + 2*(x*y)**j,
                 u**(2*j) + v**(2*j) - (u*v)**j, u**(2*j) + v**(2*j) + (u*v)**j,
                 x**(2*j) + y**(2*j) - (x*y)**j, x**(2*j) + y**(2*j) + (x*y)**j):
        NONZERO.add(expand(expr))
def norm_sign(e):
    e = expand(e)
    en = expand(-e)
    return min(str(e), str(en))
NZKEYS = {norm_sign(e) for e in NONZERO}

def grade_unit(F):
    terms = Poly(F, u, v, x, y).terms()
    for i in range(4):
        vs = [t[0][i] for t in terms]
        m = min(vs)
        if vs.count(m) == 1:
            c = [t[1] for t in terms if t[0][i] == m][0]
            if abs(int(c)) == 1: return True
    return False

killed = 0
unresolved = Counter()
relstate = {}
for rel in rels:
    T = expand(sum(g*EV[e] for e, g in rel))
    bad = []
    for fc in Mul.make_args(factor(T)):
        b_, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        if b_.is_number or b_ in (u, v, x, y): continue
        if norm_sign(b_) in NZKEYS: continue
        if grade_unit(b_): continue
        bad.append(norm_sign(b_))
    relstate[rel] = bad
    if not bad: killed += 1
    else:
        for c in bad: unresolved[c] += 1
pk = sum(1 for r1, r2 in pairs if not relstate[r1] or not relstate[r2])
print(f"relations dead: {killed}/{len(rels)}; pairs dead: {pk}/{len(pairs)}")
print(f"unresolved shapes: {len(unresolved)}")
for s, c in unresolved.most_common(10): print(f"  {c:4d}  {s}")
pickle.dump((pairs, relstate), open('u23_corestate.pkl', 'wb'))
