"""Factor screen for the (2,3) degenerate leaves, with a nonzero-factor
library. A relation dies when EVERY non-unit factor of it is provably
nonzero. Library: variable monomials; coordinate forms 2R_j = u^2j + v^2j
(and chi-side); strict pinches R_j -+ p^2j (as (u^2j+v^2j)/2 -+ (uv)^j and
their square-multiples); sums of even powers with positive coefficients.
Everything else is collected and classified by shape.
"""
import itertools, pickle
from collections import Counter
from sympy import symbols, I as iu, expand, factor, Mul, Pow, Poly, total_degree

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

degen, _ = pickle.load(open('u23_pattern_residue.pkl', 'rb'))
dset = set(map(tuple, degen))
pairs = set()
n = len(els)
for combo in itertools.permutations(range(n), 4):
    ea, eb, ec, ed = [els[i] for i in combo]
    for e2, e3, e4 in itertools.product((1,-1), repeat=3):
        r1 = tuple([(ec, e3), (ed, e4), (ea, -2)])
        r2 = tuple([(ec, e3), (ed, -e4), (eb, -2*e2)])
        if lone(list(r1)) or lone(list(r2)): continue
        if (ppat(list(r1)), ppat(list(r2))) in dset:
            pairs.add((r1, r2))
rels = set()
for r1, r2 in pairs:
    rels.add(r1); rels.add(r2)
print(f"{len(pairs)} pairs, {len(rels)} distinct relations")

# nonzero library
NONZERO = set()
for j in (1, 2, 3):
    NONZERO.add(expand(u**j + v**j))     # 2Re / 2i*Im of pi^j-level: nonzero
    NONZERO.add(expand(u**j - v**j))
    NONZERO.add(expand(x**j + y**j))
    NONZERO.add(expand(x**j - y**j))
    NONZERO.add(expand(u**(2*j) + v**(2*j)))          # 2*Re(pi^{2j}) family
    NONZERO.add(expand(x**(2*j) + y**(2*j)))
    NONZERO.add(expand(u**(2*j) - v**(2*j)))          # 2i*Im — nonzero
    NONZERO.add(expand(x**(2*j) - y**(2*j)))
    NONZERO.add(expand((u**(2*j) + v**(2*j)) - 2*(u*v)**j))   # 2(Rj - p^..) pinch x2
    NONZERO.add(expand((u**(2*j) + v**(2*j)) + 2*(u*v)**j))
    NONZERO.add(expand((x**(2*j) + y**(2*j)) - 2*(x*y)**j))
    NONZERO.add(expand((x**(2*j) + y**(2*j)) + 2*(x*y)**j))
    NONZERO.add(expand(u**(2*j) + v**(2*j) - (u*v)**j))       # Rj -+ p/2… exact pinch forms
    NONZERO.add(expand(u**(2*j) + v**(2*j) + (u*v)**j))
    NONZERO.add(expand(x**(2*j) + y**(2*j) - (x*y)**j))
    NONZERO.add(expand(x**(2*j) + y**(2*j) + (x*y)**j))

def norm_sign(e):
    e = expand(e)
    s = str(e)
    en = expand(-e)
    return min(s, str(en)), (e if s < str(en) else en)

NZKEYS = {norm_sign(e)[0] for e in NONZERO}

killed = 0
unresolved = Counter()
relstate = {}
for rel in rels:
    T = expand(sum(g*EV[e] for e, g in rel))
    bad = []
    for fc in Mul.make_args(factor(T)):
        b_, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        if b_.is_number: continue
        if b_ in (u, v, x, y): continue
        key, canon = norm_sign(b_)
        if key in NZKEYS: continue
        bad.append(canon)
    relstate[rel] = bad
    if not bad:
        killed += 1
    else:
        for c in bad: unresolved[str(c)] += 1
print(f"relations fully nonzero-factored (dead): {killed} / {len(rels)}")
pk = 0
for r1, r2 in pairs:
    if not relstate[r1] or not relstate[r2]: pk += 1
print(f"pairs dead via a fully-factored relation: {pk} / {len(pairs)}")
print(f"distinct unresolved factor shapes: {len(unresolved)}")
for s, c in unresolved.most_common(12):
    print(f"  {c:5d}  {s}")
pickle.dump((pairs, relstate), open('u23_factorstate.pkl', 'wb'))
