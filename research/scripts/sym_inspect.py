import pickle
from sympy import symbols, I as iu, expand, factor, sqrt, Mul, Pow
p, q = symbols('p q', positive=True)
R, I, X, Y = symbols('R I X Y', real=True)
u, ub, v, vb = symbols('u ub v vb', positive=True)
alive = pickle.load(open('sym22_alive2.pkl','rb'))
from collections import Counter
seen = Counter()
for rel, fails in alive:
    for b, cp, cq in fails:
        if cp is None:
            e = b.subs({R: -iu*I, p: 0})
            e = expand(e.subs({X: (v**2+vb**2)/2, Y: (v**2-vb**2)/(2*iu), q: sqrt(v*vb)}))
            seen[('pi', str(factor(e)))] += 1
        if cq is None:
            e = b.subs({X: -iu*Y, q: 0})
            e = expand(e.subs({R: (u**2+ub**2)/2, I: (u**2-ub**2)/(2*iu), p: sqrt(u*ub)}))
            seen[('chi', str(factor(e)))] += 1
print(len(seen))
for k, c in seen.most_common(16): print(c, k[0], k[1][:110])
