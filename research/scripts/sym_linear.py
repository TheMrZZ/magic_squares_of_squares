"""Linear-pinch classifier.  Substitute:
  q-side residue gq(X, Y, q): X=(v^2+vb^2)/2, Y=(v^2-vb^2)/(2i), q^2=v*vb
    where v=chi^2, vb=chibar^2  -> polynomial in v, vb; factor.
  p-side residue hp(R, I, p): same with u=pi^2, ub=pibar^2.
Non-unit factor degrees (total degree in v,vb resp. u,ub):
  deg 2 factors are size <= c*q (resp. c*p): LINEAR pinch closes.
  deg 4 factors are size <= c*q^2: only a wedge remains.
Relation classification: LINPINCH if ALL non-unit factors on the q-side
have deg <= 2 AND all on the p-side have deg <= 2. Otherwise record max degs.
"""
import pickle
from sympy import symbols, I as iu, expand, factor, Poly, Mul, Pow, together, cancel, fraction
data = pickle.load(open('sym22_residues.pkl','rb'))
R, I, X, Y = symbols('R I X Y', real=True)
p, q = symbols('p q', positive=True)
from sympy import sqrt
u, ub, v, vb = symbols('u ub v vb', positive=True)

def side_degs(res, which):
    if expand(res) == 0: return None  # zero side
    res = expand(res)
    if which == 'q':
        e = expand(res.subs({X: (v**2+vb**2)/2, Y: (v**2-vb**2)/(2*iu), q: sqrt(v*vb)}))
        gens = (v, vb)
    else:
        e = expand(res.subs({R: (u**2+ub**2)/2, I: (u**2-ub**2)/(2*iu), p: sqrt(u*ub)}))
        gens = (u, ub)
    e = cancel(together(expand(e)))
    num, den = fraction(e)
    f = factor(num)
    degs = []
    for fac in Mul.make_args(f):
        base, ex = (fac.base, int(fac.exp)) if isinstance(fac, Pow) else (fac, 1)
        if base.is_number: continue
        pl = Poly(base, *gens)
        d = pl.total_degree()
        # unit factors: pure v^k or vb^k (or u/ub) monomials
        if len(pl.as_dict()) == 1: continue
        degs.append(d)
    return degs

from collections import Counter
cnt = Counter()
for rel, gq, hp in data:
    dq = side_degs(gq, 'q'); dp = side_degs(hp, 'p')
    def tag(d):
        if d is None: return 'ZERO'
        if not d: return 'UNIT'
        return f"max{max(d)}"
    cnt[(tag(dq), tag(dp))] += 1
print("classification (q-side, p-side):")
for k, val in cnt.most_common(): print(val, k)
lin = sum(val for k, val in cnt.items()
          if all(t in ('UNIT',) or (t.startswith('max') and int(t[3:]) <= 2) for t in k))
print(f"LINEAR-PINCH closable (both sides nonzero, all factors deg<=2): {lin} / 216")
