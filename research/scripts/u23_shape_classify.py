"""Classify the 448 unresolved factor shapes of (2,3).

Each shape F is a short sum of monomials u^a v^b x^c y^d. F = 0 is a
vanishing sum of Gaussian S-unit monomials. Kills, in order:
  GRADE: in one of the four valuations (v_pi = 2a, v_pibar = 2b,
    v_chi = 2c, v_chibar = 2d), the minimal layer is a single monomial:
    then that prime must divide the integer coefficient — impossible
    beyond a tiny bound. The shape is nonzero for all large primes,
    and small primes fall to the exact sweep.
  BALANCE: F equals ± its own conjugate (u<->v, x<->y) times a monomial:
    the master-kill family (real/imaginary balance -> norm equation).
  Rest: core shapes for the pair analysis.
"""
import pickle
from collections import Counter
from sympy import symbols, expand, Poly

u, v, x, y = symbols('u v x y')
pairs, relstate = pickle.load(open('u23_factorstate.pkl', 'rb'))
shapes = {}
for rel, bad in relstate.items():
    for c in bad:
        shapes.setdefault(str(c), c)
print(f"{len(shapes)} distinct shapes")

def monomials(F):
    P = Poly(F, u, v, x, y)
    return list(P.terms())   # ((a,b,c,d), coeff)

def grade_kill(F):
    terms = monomials(F)
    for i in range(4):
        vs = [t[0][i] for t in terms]
        m = min(vs)
        if vs.count(m) == 1:
            # lone minimal monomial in this valuation: coefficient bound
            c = [t[1] for t in terms if t[0][i] == m][0]
            return ('pi', 'pibar', 'chi', 'chibar')[i], int(c)
    return None

def balance(F):
    Fc = expand(F.subs({u: v, v: u, x: y, y: x}, simultaneous=True))
    if expand(F - Fc) == 0: return 'self-conj (real form)'
    if expand(F + Fc) == 0: return 'anti-conj (imaginary form)'
    # up to a monomial factor: compare leading structures
    P, Pc = Poly(F, u, v, x, y), Poly(Fc, u, v, x, y)
    t1, t2 = P.terms(), Pc.terms()
    if len(t1) == len(t2):
        # try to find monomial shift s with F = ±(monomial)*Fc — degrees must shift uniformly
        d = tuple(a-b for a, b in zip(t1[0][0], t2[0][0]))
        shifted = all(tuple(a-b for a, b in zip(m1, m2)) == d and c1 in (c2, -c2)
                      for (m1, c1), (m2, c2) in zip(t1, t2))
        if shifted and all(c1 == t1[0][1]/t2[0][1]*c2 for (m1,c1),(m2,c2) in zip(t1,t2)):
            return f'conj up to monomial shift {d}'
    return None

res = Counter()
examples = {}
remaining = []
for s, F in shapes.items():
    g = grade_kill(F)
    if g:
        res[f'GRADE-{g[0]} (coeff {abs(g[1])})'] += 1
        continue
    b = balance(F)
    if b:
        res['BALANCE: ' + b] += 1
        examples.setdefault('BAL', s)
        continue
    res['core'] += 1
    remaining.append(s)
for k, c in res.most_common():
    print(f"  {c:4d}  {k}")
print(f"\ncore shapes remaining: {len(remaining)}")
for s in remaining[:10]:
    print("  ", s)
pickle.dump(remaining, open('u23_coreshapes.pkl', 'wb'))
