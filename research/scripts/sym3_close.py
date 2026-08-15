from sympy import symbols, I as iu, expand, factor, conjugate, sqrt, Mul, Pow, Poly, im as sim
import itertools, pickle
from collections import Counter

p, q, r = symbols('p q r', positive=True)
R, I, X, Y, U, V = symbols('R I X Y U V', real=True)
PRIMS = [(p, R, I), (q, X, Y), (r, U, V)]

elems = []
for c in itertools.product(range(2), repeat=3):
    if c == (0,0,0): continue
    first = next(i for i,x in enumerate(c) if x)
    signopts = [[1]]*3
    for i in range(3):
        if c[i] and i != first: signopts[i] = [1,-1]
    for sg in itertools.product(*signopts):
        elems.append((c, sg))

def gexp(e, i): return 2 - 2*e[0][i]
def lone(rel):
    for i in range(3):
        gs = [gexp(x, i) for x in rel]
        if gs.count(min(gs)) == 1: return True
    return False

rels = set()
for combo in itertools.permutations(range(len(elems)), 4):
    eu, ev, es, ed = [elems[k] for k in combo]
    if lone([es,eu,ev]) or lone([ed,eu,ev]): continue
    for sv, ss, sd in itertools.product((1,-1), repeat=3):
        for trip, sgns in (((es,eu,ev),(ss,-1,-sv)), ((ed,eu,ev),(sd,-1,sv))):
            key = frozenset(zip(trip, sgns))
            key2 = frozenset((t,-g) for t,g in key)
            rels.add(min(key, key2, key=lambda fs: sorted(str(x) for x in fs)))
rels = sorted(rels, key=lambda fs: sorted(str(x) for x in fs))
print(f"relations: {len(rels)}", flush=True)

def zfac(i, ci, sgi):
    pr, Re_, Im_ = PRIMS[i]
    if not ci: return 1
    z = Re_ + iu*Im_
    return z if sgi > 0 else conjugate(z)

def elem_val(e):
    c, sg = e
    z = 1
    for i in range(3):
        z *= zfac(i, c[i], sg[i])
    pref = 1
    for i, (pr, _, _) in enumerate(PRIMS):
        pref *= pr**(2-2*c[i])
    return pref * expand(sim(expand(z)))

VAL = {e: elem_val(e) for e in elems}

# PASS 1: parity
def parity_odd(f):
    v = f.subs({R:1, X:1, U:1, p:1, q:1, r:1, I:0, Y:0, V:0})
    return v.is_integer and int(v) % 2 == 1

par_killed = 0; rest = []
for rel in rels:
    tot = expand(sum(g*VAL[e] for e, g in rel))
    facs = Mul.make_args(factor(tot))
    flat = []
    for fc in facs:
        b, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        flat.append(b)
    nonzero_atoms = all(b.is_number or b in (p,q,r) or parity_odd(b) for b in flat)
    if nonzero_atoms: par_killed += 1
    else: rest.append(rel)
print(f"parity-killed: {par_killed}; remaining: {len(rest)}", flush=True)

# PASS 2: residues mod each prime i: Gbar-terms with c[i]=1 survive; the
# sg on OTHER coordinates flips (conjugation); the surviving pi-part is a
# unit. For sg-on-coordinate-i=+1: from Gbar (sign -). For coordinate-i
# sg=-1 (element has conj(z_i) in G): G-term survives (sign +) with
# unconjugated other parts.
def residue(rel, i):
    tot = 0
    for (c, sg), g in rel:
        if c[i] != 1: continue  # c[i]=0 -> prefactor p_i^2 -> 0 mod prime i
        pref = 1
        for j in range(3):
            if j == i: continue
            pref *= PRIMS[j][0]**(2-2*c[j])
        other = 1
        for j in range(3):
            if j == i or not c[j]: continue
            other *= zfac(j, 1, sg[j])
        if sg[i] > 0:
            tot -= g * pref * conjugate(other)   # from -Gbar/2i
        else:
            tot += g * pref * other              # from +G/2i
    return expand(tot)

vpairs = {0: symbols('u1 u2', positive=True), 1: symbols('v1 v2', positive=True), 2: symbols('w1 w2', positive=True)}
def deg_census(res, i):
    if res == 0: return 'ZERO'
    subs = {}
    gens = []
    for j in range(3):
        if j == i: continue
        pr, Re_, Im_ = PRIMS[j]
        a, b = vpairs[j]
        subs[Re_] = (a**2 + b**2)/2
        subs[Im_] = (a**2 - b**2)/(2*iu)
        subs[pr] = sqrt(a*b)
        gens += [a, b]
    e = expand(res.subs(subs))
    f = factor(e)
    degs = []
    for fc in Mul.make_args(f):
        b, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        if b.is_number: continue
        pl = Poly(b, *gens)
        if len(pl.as_dict()) == 1: continue
        degs.append(pl.total_degree())
    if not degs: return 'UNIT'
    return f"max{max(degs)}"

cnt = Counter()
store = []
for rel in rest:
    tags = tuple(deg_census(residue(rel, i), i) for i in range(3))
    cnt[tags] += 1
    store.append((rel, tags))
print("three-sided residue census (mod p, mod q, mod r):")
for k, v in cnt.most_common(20): print(v, k)
lin = sum(v for k, v in cnt.items()
          if all(t == 'UNIT' or (t.startswith('max') and int(t[3:]) <= 2) for t in k))
print(f"ALL-SIDES nonzero with deg<=2 (linear pinch closable): {lin}")
pickle.dump(store, open('sym3_store.pkl','wb'))
