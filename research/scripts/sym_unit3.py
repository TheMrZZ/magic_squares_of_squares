"""Full-coordinate certificates for (2,2): chi = C+Di (C^2+D^2=q),
pi = A+Bi (A^2+B^2=p).  Reductions in (C,D) resp. (A,B); atom classes:
 UNITS: C+Di-power monomials... work with t=C+Di, tb=C-Di:
   units: t, tb (chi, chibar), I-analog kept vars.
 SMALL-1/2 cores (all size <= sqrt(2) q, nonzero for odd prime q):
   C, D?? careful: chi = C+Di primitive: C,D >= 1, nonzero ✓ but q | C
   impossible? C < sqrt(q) so any p > sqrt(q)... treat C, D as
   sqrt-size atoms (size sqrt(q)); C±D (size sqrt(2q));
   quadratic combos in span: any real/imag-valued factor f(C,D)
   homogeneous of degree d has size <= c*q^{d/2}.
GENERIC CLASSIFIER: reduce factor mod pi -> poly in (C,D) (real coeffs
after unit stripping); factor over QQ; for each irreducible factor
compute homogeneous degree d and coeff sum c -> size bound c*q^{d/2};
condition p | factor. Certificate 'sizes' = list of (d, c). Factor
closed for p > sum-bound; combined with chi-side similarly. Report the
per-factor bound exponents: exponent = d/2. Closed-no-wedge if every
irreducible on the pi-side has d <= 2 with small c AND chi-side d <= 2
(then only constant-band wedges remain -> record band constants).
"""
from sympy import symbols, I as iu, expand, factor, Mul, Pow, Poly, im as sim, sqrt
import itertools, pickle
from collections import Counter

p, q = symbols('p q', positive=True)
R, I, X, Y = symbols('R I X Y', real=True)
A, B, C, D = symbols('A B C D', real=True)
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

def side_profile(F, side):
    """Return sorted list of (halfdeg, coeffsum) for non-unit irreducible
    factors of the reduction, or None if reduction == 0."""
    if side == 'pi':
        e = F.subs({R: -iu*I, p: 0})
        # chi-vars in C,D: X+iY = (C+Di)^4 ...
        t = C + iu*D
        e = e.subs({X: expand((t**4 + (t.conjugate())**4)/2),
                    Y: expand((t**4 - (t.conjugate())**4)/(2*iu)),
                    q: C**2 + D**2, I: I})
        gens = (C, D)
    else:
        e = F.subs({X: -iu*Y, q: 0})
        t = A + iu*B
        e = e.subs({R: expand((t**4 + (t.conjugate())**4)/2),
                    I: expand((t**4 - (t.conjugate())**4)/(2*iu)),
                    p: A**2 + B**2})
        gens = (A, B)
    e = expand(e)
    if e == 0: return None
    prof = []
    for fc in Mul.make_args(factor(e)):
        b, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        if b.is_number: continue
        if b in (I, Y): continue  # bridge units
        pl = Poly(b, *gens)
        d = pl.total_degree()
        # unit monomials t^k tb^k... a pure monomial C^a D^b: atoms C, D are
        # sqrt-size: keep them as (0.5, 1) entries per degree
        csum = sum(abs(cf) for cf in pl.as_dict().values())
        if len(pl.as_dict()) == 1:
            prof.extend([(0.5, 1)] * d)   # C or D powers: sqrt-size each
        else:
            prof.append((d/2, int(csum)))
    return sorted(prof, reverse=True)

cnt = Counter()
store = []
for rel in rels:
    T = expand(sum(g*VAL[e] for e, g in rel))
    worst_p = 0; worst_q = 0; cp_all = []; cq_all = []
    ok = True
    for fc in Mul.make_args(factor(T)):
        b, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        if b.is_number or b == p or b == q: continue
        vv = b.subs({R:1, X:1, p:1, q:1, I:0, Y:0})
        if vv.is_integer and int(vv) % 2 == 1: continue  # parity
        pp = side_profile(b, 'pi'); qq = side_profile(b, 'chi')
        # p | product of cores => p | one core: exponent = MAX core halfdeg
        ep = max((h for h, c in pp), default=0) if pp else None
        eq = max((h for h, c in qq), default=0) if qq else None
        cp_all.append(ep); cq_all.append(eq)
    key = (tuple(cp_all), tuple(cq_all))
    cnt[key] += 1
    store.append((rel, key))
print("per-relation (pi-side MAX-core exps, chi-side) census:")
for k, v in cnt.most_common(20): print(v, k)
# closure classification per relation (single nontrivial factor each):
cls = Counter()
for rel, (cps, cqs) in store:
    if not cps: cls['no-nontrivial'] += 1; continue
    hp, hq = cps[0], cqs[0]
    if hp is None and hq is None: cls['both-zero-reduction'] += 1
    elif hp is None or hq is None: cls['one-zero-reduction'] += 1
    elif min(hp, hq) <= 0.5 and max(hp, hq) < 2: cls['FINITE-CLOSED'] += 1
    elif hp <= 1 and hq <= 1: cls['BAND(Pell)'] += 1
    else: cls['WEDGE'] += 1
print("closure classes:", dict(cls))
pickle.dump(store, open('sym22_profile.pkl','wb'))
