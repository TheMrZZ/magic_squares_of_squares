"""Lean generator v2: factored form.  For each relation:
  T (in R,I,X,Y,p,q) factors as  c * p^i q^j * I^k * Y^l * F1 * F2...
For relations where every non-monomial factor Fi is ODD under the parity
structure: emit theorem with hypotheses (parities, A,B,C,D >= 1, A != B,
C != D) proving T != 0 via: T = E * (prod Fi) [ring identity in
A,B,C,D], each Fi odd (4 explicit witnesses), E != 0 elementary.
First: census which relations qualify (all non-monomial factors odd)."""
import itertools, pickle
from sympy import symbols, I as iu, expand, im as sim, factor, Mul, Pow, Poly

Asym, Bsym, Csym, Dsym, a, b, c, d = symbols('A B C D a b c d')
Rs, Is, Xs, Ys, ps, qs = symbols('Rv Iv Xv Yv pv qv')
P1 = Rs + iu*Is; C1 = Xs + iu*Ys
elems = []
for aa in range(3):
    for bb in range(3):
        if (aa, bb) == (0, 0): continue
        if aa == 0 or bb == 0: elems.append((aa, bb, 1))
        else: elems.append((aa, bb, 1)); elems.append((aa, bb, -1))
def elem_expr(e):
    aa, bb, sg = e
    z = 1
    if aa: z *= P1**aa
    if bb:
        cc = C1**bb
        if sg < 0: cc = cc.conjugate()
        z *= cc
    return ps**(4-2*aa) * qs**(4-2*bb) * expand(sim(expand(z)))
def pexp(e): return 4 - 2*e[0]
def qexp(e): return 4 - 2*e[1]
def lone(rel):
    pss = [pexp(x) for x in rel]; qss = [qexp(x) for x in rel]
    return pss.count(min(pss)) == 1 or qss.count(min(qss)) == 1
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

def parity_val(expr, pa, pb, pc, pd):
    Rv = pa**4 - 6*pa**2*pb**2 + pb**4
    Iv = 4*pa*pb*(pa**2-pb**2)
    Xv = pc**4 - 6*pc**2*pd**2 + pd**4
    Yv = 4*pc*pd*(pc**2-pd**2)
    pv = pa**2+pb**2; qv = pc**2+pd**2
    return int(expr.subs({Rs: Rv, Is: Iv, Xs: Xv, Ys: Yv, ps: pv, qs: qv}))

qualify = []
for rel in rels:
    T = expand(sum(g*elem_expr(e) for e, g in rel))
    fct = factor(T)
    ok = True; nonmono = []
    for fc in Mul.make_args(fct):
        b_, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        if b_.is_number or b_ in (ps, qs, Is, Ys, Rs, Xs): continue
        # non-monomial factor: check odd in all 4 parity cases (use 3,2-style
        # values to avoid zero coincidences: (A,B)=(2,1),(1,2); (C,D)=(2,1),(1,2))
        odds = all(parity_val(b_, pa, pb, pc, pd) % 2 == 1
                   for pa, pb in ((2,1),(1,2)) for pc, pd in ((2,1),(1,2)))
        if not odds: ok = False; break
        nonmono.append((b_, ex))
    if ok and nonmono: qualify.append((rel, fct, nonmono))
print(f"relations with ALL non-monomial factors odd: {len(qualify)}")
pickle.dump(qualify, open('parity_qualify.pkl','wb'))
