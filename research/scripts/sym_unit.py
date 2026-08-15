"""Per-factor unit-certificate engine for (2,2).

Relation total T (real poly in R,I,X,Y,p,q) factors as prod F_j.
For each factor F: two certificates:
  MOD-PI: Fp = F(R -> -i*I, p -> 0), factored.  If every irreducible
    factor is in {I, X+iY, X-iY, q} (any powers) and the leading integer
    constant c != 0, then for every prime p > |c| the value of F is a
    p-unit -> F != 0.  (p <= |c| tiny, covered by the p,q<1000 sweep.)
  MOD-CHI: Fq = F(X -> -i*Y, q -> 0) with atoms {Y, R+iI, R-iI, p}.
A factor is CERTIFIED if either side works; a relation is KILLED if all
its non-constant factors are certified (or are p/q powers).
"""
from sympy import symbols, I as iu, expand, factor, Mul, Pow, Poly
import itertools, pickle
from collections import Counter

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
    from sympy import im as sim
    a, b, sg = e
    z = 1
    if a: z *= P1**a
    if b:
        c = C1**b
        if sg < 0: c = c.conjugate()
        z *= c
    return p**(4-2*a) * q**(4-2*b) * expand(sim(expand(z)))
VAL = {e: elem_expr(e) for e in elems}
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
print(f"relations: {len(rels)}", flush=True)

def atoms_only(e, atomset, const_bound=10**6):
    """factor e; return |const| if all non-numeric irreducible factors are
    (up to sign) in atomset, else None."""
    e = expand(e)
    if e == 0: return None
    f = factor(e)
    const = 1
    for fc in Mul.make_args(f):
        b, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        if b.is_number:
            const *= abs(b)**ex; continue
        ok = False
        for A in atomset:
            if expand(b - A) == 0 or expand(b + A) == 0: ok = True; break
        if not ok: return None
    return const if const != 0 else None

def parity_odd(fexpr):
    v = fexpr.subs({R:1, X:1, p:1, q:1, I:0, Y:0})
    return v.is_integer and int(v) % 2 == 1

ATOMS_P = [I, X + iu*Y, X - iu*Y, q]
ATOMS_Q = [Y, R + iu*I, R - iu*I, p]

killed = 0; alive = []
cert_stats = Counter()
for rel in rels:
    T = expand(sum(g*VAL[e] for e, g in rel))
    ok_all = True
    fails = []
    for fc in Mul.make_args(factor(T)):
        b, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        if b.is_number or b == p or b == q: continue
        if parity_odd(b): cert_stats['parity'] += 1; continue
        cp = atoms_only(b.subs({R: -iu*I, p: 0}), ATOMS_P)
        if cp is not None: cert_stats['mod-pi'] += 1; continue
        cq = atoms_only(b.subs({X: -iu*Y, q: 0}), ATOMS_Q)
        if cq is not None: cert_stats['mod-chi'] += 1; continue
        ok_all = False; fails.append(b)
    if ok_all: killed += 1
    else: alive.append((rel, fails))
print(f"KILLED (all factors certified): {killed} / {len(rels)}")
print("certificate usage:", dict(cert_stats))
shapes = Counter()
for rel, fails in alive:
    shapes[tuple(sorted(str(f) for f in fails))] += 1
print(f"surviving relations: {len(alive)}; distinct uncertified factor sets: {len(shapes)}")
for k, v in shapes.most_common(8): print(v, [s[:70] for s in k])
pickle.dump(alive, open('sym22_alive.pkl','wb'))
