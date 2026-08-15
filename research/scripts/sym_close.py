"""Symbolic closure engine for residual 3-term relations, (2,2) first.

Coordinates: pi^4 = R+iI (R^2+I^2=p^4), chi^4 = X+iY (X^2+Y^2=q^4).
Element (a,b,sg): p^{4-2a} q^{4-2b} * Im(P^a * C^{b*sg}) expanded in R,I,X,Y.
Relation: g1 E1 + g2 E2 + g3 E3 = 0.  Kill tests, applied in order:
 1. IDENT: relation is identically zero or identically reducible to
    2-term product identity T1 = T2 where both sides factor into
    (power) * (R/I/X/Y-monomial-ish) pieces -> valuation/bridge kill:
    check if poly factors as c * mono * (single Im/Re factor)... we
    implement: after expansion with norm substitutions, does the
    relation polynomial FACTOR with each irreducible factor being one of
    {R, I, X, Y, known-bridge-nonzero forms}? If the product of provably
    nonzero factors = 0 is required -> KILLED.
 2. PQDIV: reduce the relation mod p (set p=0 formally by dropping
    terms with positive p-prefactor... rigorous version: the min-p-layer
    sum must be div by p^2: layer sum as polynomial; if it factors into
    bridge-nonzero pieces times a unit -> its p-valuation is 0 exactly ->
    KILLED.
 (report what's left)
"""
from sympy import symbols, I as i_, im as sim, re as sre, expand, factor, gcd, Poly, sqrt
import itertools, pickle

p, q = symbols('p q', positive=True)
R, I, X, Y = symbols('R I X Y', real=True)
P1 = R + i_*I
C1 = X + i_*Y

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

VAL = {e: elem_expr(e) for e in elems}

def pexp(e): return 4 - 2*e[0]
def qexp(e): return 4 - 2*e[1]
def lone(rel):
    ps = [pexp(x) for x in rel]; qs = [qexp(x) for x in rel]
    return ps.count(min(ps)) == 1 or qs.count(min(qs)) == 1

rels = set()
for combo in itertools.permutations(range(12), 4):
    eu, ev, es, ed = [elems[k] for k in combo]
    if lone([es, eu, ev]) or lone([ed, eu, ev]): continue
    for sv, ss, sd in itertools.product((1,-1), repeat=3):
        for trip, sgns in (((es,eu,ev),(ss,-1,-sv)), ((ed,eu,ev),(sd,-1,sv))):
            key = frozenset(zip(trip, sgns))
            key2 = frozenset((t,-g) for t,g in key)
            rels.add(min(key, key2, key=lambda fs: sorted(str(x) for x in fs)))
print(f"distinct relations: {len(rels)}", flush=True)

# bridge-nonzero atoms: factors provably nonzero for valid (p,q,pi,chi):
# R, I, X, Y themselves? I = Im(pi^4) != 0 (bridge), R = Re(pi^4) != 0,
# X, Y same for q. p, q positive. Any factor equal (up to sign/constant)
# to one of these atoms is nonzero. Composite factors like (I*X + R*Y) =
# Im(pi^4 chi^4): nonzero? That's Im of a product of two Gaussian
# integers with no common prime — could it be real?? pi^4 chi^4 real
# would need chi^4 = real * conj(pi^4)/|..| — impossible by unique
# factorization (primes over p vs q).  So Im(pi^4 chi^4) != 0 and
# Im(pi^4 conj(chi^4)) != 0.  These are atoms too.
atoms = [R, I, X, Y, I*X + R*Y, I*X - R*Y,
         # Im(pi^8 chi^4)-type: 2RI X + (R^2-I^2) Y etc. also nonzero
         # (pi^8 chi^4 not real, same argument)
         ]
def is_atom(f):
    f = expand(f)
    for A in atoms:
        if expand(f - A) == 0 or expand(f + A) == 0: return True
    # PARITY atom: R,X odd; I,Y even (=0 mod 4); p,q odd. If f mod 2 == 1
    # under (R,X,p,q -> 1; I,Y -> 0), f is always odd, hence never zero.
    v = f.subs({R:1, X:1, p:1, q:1, I:0, Y:0})
    if v.is_integer and int(v) % 2 == 1: return True
    return False

killed_ident = []
survivors = []
for rel in sorted(rels, key=lambda fs: sorted(str(x) for x in fs)):
    tot = 0
    for e, g in rel:
        tot += g * VAL[e]
    tot = expand(tot)
    if tot == 0:
        # identically zero: the relation HOLDS identically -> not a kill;
        # flag separately (these would be real dependencies!)
        killed_ident.append((rel, 'IDENT-ZERO'))
        continue
    f = factor(tot)
    # decompose factors
    from sympy import Mul, Pow
    facs = Mul.make_args(f)
    flat = []
    for fac in facs:
        if isinstance(fac, Pow): flat.extend([fac.base]*int(fac.exp))
        else: flat.append(fac)
    nonatom = [fc for fc in flat if not (fc.is_number or fc == p or fc == q or is_atom(fc))]
    if not nonatom:
        killed_ident.append((rel, 'FACTOR-KILL'))
    else:
        survivors.append((rel, f, nonatom))
print(f"identically-zero flagged: {sum(1 for r,t in killed_ident if t=='IDENT-ZERO')}")
print(f"factor-killed (all factors nonzero atoms): {sum(1 for r,t in killed_ident if t=='FACTOR-KILL')}")
print(f"survivors: {len(survivors)}", flush=True)
from collections import Counter
shapes = Counter()
for rel, f, na in survivors:
    shapes[tuple(sorted(str(x) for x in na))] += 1
print(f"distinct surviving non-atom factor shapes: {len(shapes)}")
for k, v in shapes.most_common(10): print(v, k[:2])
pickle.dump(survivors, open('sym22_survivors.pkl','wb'))
