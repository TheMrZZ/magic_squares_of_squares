"""Two-sided residue pinch for surviving (2,2) relations.

Relation F = Im(G), G = sum_e g_e p^{4-2a} q^{4-2b} pi^{4a} chi^{4b*sg}.
mod pi: only a=2 terms survive: F == -(1/2i) pibar^8 * gq  (mod pi), where
  gq = sum_{a=2 terms} g_e q^{4-2b} chibar^{4b*sg}   (Gaussian in chi only).
So F = 0 forces pi | gq, i.e. p | N(gq)  [after clearing the unit].
Symmetrically mod chi: F = 0 forces chi | hp with
  hp = sum_{b=2 terms} g_e p^{4-2a} pibar^{4a*(+1 for pi-part sg... pi has
  no sign; careful: chi side: terms with b=2 survive; hp in pi only.
KEY: factor gq, hp symbolically over Z[i]-friendly forms: substitute
chibar^4 = (X - iY), chibar^8 = (X-iY)^2, q^2 = ... keep q symbolic and
factor the polynomial in (X, Y, q) [with X^2+Y^2=q^4 available].  Look
for small factors (degree-1 in chi, i.e. expressions like Re(chi^2),
Im(chi^2) with |.| < q) enabling the size pinch when p > q.
Report classification.
"""
from sympy import symbols, I as i_, expand, factor, im as sim, re as sre, conjugate, simplify
import itertools, pickle
from collections import Counter

p, q = symbols('p q', positive=True)
R, I, X, Y = symbols('R I X Y', real=True)

elems = []
for a in range(3):
    for b in range(3):
        if (a, b) == (0, 0): continue
        if a == 0 or b == 0: elems.append((a, b, 1))
        else: elems.append((a, b, 1)); elems.append((a, b, -1))
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

CB4 = X - i_*Y            # chibar^4
PB4 = R - i_*I            # pibar^4
def gq_of(rel):
    tot = 0
    for (a,b,sg), g in rel:
        if a != 2: continue
        c = CB4 if sg > 0 else conjugate(CB4)  # chibar^{4} or chi^{4}=conj(chibar^4)
        cc = {0: 1, 1: c, 2: c**2}[b]
        tot += g * q**(4-2*b) * cc
    return expand(tot)
def hp_of(rel):
    tot = 0
    for (a,b,sg), g in rel:
        if b != 2: continue
        pp = {0: 1, 1: PB4, 2: PB4**2}[a]
        # sign on chi doesn't matter here (chi-part vanished mod chi? no:
        # terms with b=2 survive mod chi: their chi^{4b sg} = chi^{±8};
        # mod chi both chi^8 -> 0?? NO: mod chi, chi -> 0 but chibar is a
        # unit. chi^{8} == 0 mod chi, chibar^{8} unit. So only sg=-1
        # (chibar) terms survive... and Im(w): w-terms with chi^8 vanish,
        # wbar has chibar^8 -> for sg=+1 the SURVIVING piece is the
        # conjugate term. Handle: for sg=+1, contribution -(1/2i)*conj:
        # both cases contribute via chibar^8; the pi-part is pibar^{4a}
        # for sg=+1 (from wbar) and pi^{4a} for sg=-1 (w survives).
        if sg > 0:
            tot -= g * p**(4-2*a) * pp             # from -Gbar/2i: -pibar^{4a}
        else:
            tot += g * p**(4-2*a) * conjugate(pp)  # from +G/2i: +pi^{4a}
    return expand(tot)

cnt = Counter()
data = []
for rel in rels:
    gq = factor(gq_of(rel)); hp = factor(hp_of(rel))
    # classify by whether factors include degree-1-in-chi^2 pieces
    data.append((rel, gq, hp))
    cnt[(str(gq)[:60], str(hp)[:60])] += 1
print("distinct (gq,hp) residue pairs:", len(cnt))
for k, v in cnt.most_common(14): print(v, k)
pickle.dump(data, open('sym22_residues.pkl','wb'))
