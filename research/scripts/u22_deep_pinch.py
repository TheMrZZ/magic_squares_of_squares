"""Pinch screen for the 256 deep (2,2) shapes.

For each deep leaf pair, factor both exact relations (content-free).
A factor of the form R -+ p^2, X -+ q^2, (R^2 - I^2) -+ p^4, W -+ q^4
(with W = X^2 - Y^2, Z = 2XY substituted) is a strict-pinch kill: the
real part of a unit-normed Gaussian power never reaches the norm when
the imaginary part is nonzero. Report which leaves die this way and
what remains.
"""
import pickle
from collections import Counter
from sympy import symbols, I as iu, expand, im as sim, factor, Mul, Pow

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
    a, b, sg = e
    z = 1
    if a: z *= P1**a
    if b:
        c = C1**b
        if sg < 0: c = c.conjugate()
        z *= c
    return p**(4-2*a) * q**(4-2*b) * expand(sim(expand(z)))
EV = {e: elem_expr(e) for e in elems}

deep = pickle.load(open('u22_deep.pkl', 'rb'))

PINCHES = [expand(f) for f in (
    R - p**2, R + p**2, X - q**2, X + q**2,
    R**2 - I**2 - p**4, R**2 - I**2 + p**4,
    X**2 - Y**2 - q**4, X**2 - Y**2 + q**4)]

def pinch_factor(terms):
    T = expand(sum(g * EV[e] for e, g in terms))
    fac = factor(T)
    for fc in Mul.make_args(fac):
        b_, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        eb = expand(b_)
        for pin in PINCHES:
            if eb == pin or expand(-eb) == pin:
                return str(pin)
    return None

res = Counter()
remaining = []
for t1, t2, kind in deep:
    f1 = pinch_factor(list(t1)); f2 = pinch_factor(list(t2))
    if f1 or f2:
        res[('R1' if f1 else 'R2') + ': ' + (f1 or f2)] += 1
    else:
        remaining.append((t1, t2))
print(dict(res))
print(f"\npinch-killed: {sum(res.values())} / {len(deep)}; remaining: {len(remaining)}")
for t1, t2 in remaining[:8]:
    T1 = factor(expand(sum(g*EV[e] for e, g in t1)))
    T2 = factor(expand(sum(g*EV[e] for e, g in t2)))
    print("\n  R1:", t1, "\n     =", T1, "\n  R2:", t2, "\n     =", T2)
pickle.dump(remaining, open('u22_deep2.pkl', 'wb'))
