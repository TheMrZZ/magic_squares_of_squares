"""For FINITE-CLOSED relations compute the explicit prime bound:
p-side condition: p | core_p, |core_p| <= c1 * q^{hp}  (c1 = coeff sum, using
|C|,|D| <= sqrt(q) so a monomial C^aD^b <= q^{(a+b)/2})
q-side: q | core_q, |core_q| <= c2 * p^{hq}
If cores nonzero: p <= c1 q^{hp}, q <= c2 p^{hq}
 -> p <= c1 (c2 p^{hq})^{hp} = c1 c2^{hp} p^{hp*hq}
 -> p^{1-hp*hq} <= c1 c2^{hp}  (requires hp*hq < 1)
 -> p <= (c1 c2^{hp})^{1/(1-hp*hq)}; then q <= c2 p^{hq}.
Also need each core != 0: cores are irreducible non-monomial homogeneous
forms in (C,D) (or (A,B)) -- nonzero because C/D would be a rational root
of an irreducible form of degree >= 1... degree-1 forms aC+bD = 0 give
C/D = -b/a rational: POSSIBLE (e.g. C=D impossible? C=2,D=1, form C-2D=0
possible!).  CAREFUL: only forms whose rational roots are impossible for
a PRIMITIVE pair (C,D) with C^2+D^2 = q prime: C±D != 0 OK (else q even);
C, D != 0 OK; but e.g. C-2D = 0 => q = 5D^2 => q = 5, D = 1: only q=5!
So degree-1 cores aC+bD vanish only for finitely many q (q = a^2+b^2
scaled): still finite -> fold into the bound: q in {a^2+b^2 cases}.
Verdict per relation: max prime bound; OK if < 1000 (swept).
"""
import pickle
from sympy import symbols, I as iu, expand, factor, Mul, Pow, Poly, im as sim
p, q = symbols('p q', positive=True)
R, I, X, Y = symbols('R I X Y', real=True)
A, B, C, D = symbols('A B C D', real=True)
store = pickle.load(open('sym22_profile.pkl','rb'))
# reconstruct per-relation core data with coeff sums: rerun profile quickly
import importlib.util, sys
sys.argv = ['x']
# simplest: recompute using functions from sym_unit3 by exec with guard
src = open('sym_unit3.py').read()
src = src.split("cnt = Counter()")[0]
exec(src)
maxbound = 0; results = []
for rel in rels:
    T = expand(sum(g*VAL[e] for e, g in rel))
    facts = []
    for fc in Mul.make_args(factor(T)):
        b, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        if b.is_number or b == p or b == q: continue
        vv = b.subs({R:1, X:1, p:1, q:1, I:0, Y:0})
        if vv.is_integer and int(vv) % 2 == 1: continue
        pp = side_profile(b, 'pi'); qq = side_profile(b, 'chi')
        facts.append((pp, qq))
    if len(facts) != 1: results.append((rel, 'multi-or-none')); continue
    pp, qq = facts[0]
    if pp is None or qq is None: results.append((rel, 'zero-side')); continue
    if not pp or not qq: results.append((rel, 'unit-side')); continue
    hp, cp = max(pp), max(pp)  # max by halfdeg; take its coeff
    hp, cp = sorted(pp, reverse=True)[0]
    hq, cq = sorted(qq, reverse=True)[0]
    if not (min(hp, hq) <= 0.5 and max(hp, hq) < 2):
        results.append((rel, 'not-finite-class')); continue
    if hp > hq: hp, cp, hq, cq = hq, cq, hp, cp  # ensure hp is the small one
    # p <= (cp * cq^hp)^(1/(1-hp*hq)); note roles: p-side bound uses q etc.
    expo = 1 - hp*hq
    bound_p = (cp * (cq ** hp)) ** (1/expo)
    bound_q = cq * bound_p ** hq
    bnd = max(bound_p, bound_q)
    maxbound = max(maxbound, bnd)
    results.append((rel, ('bound', round(bnd, 1))))
from collections import Counter
c = Counter(r if isinstance(r, str) else 'bounded' for _, r in results)
print(dict(c))
print("max prime bound over FINITE-CLOSED relations:", round(maxbound, 1))
bad = [r for _, r in results if not isinstance(r, str) and r[1] >= 1000]
print("relations with bound >= 1000 (outside sweep):", len(bad))
