"""q-side certificate engine for the p-side-degenerate (2,2) shapes.

Mod chi (over F_q): U = chi^4 == 0, so
  X == Cb/2,  Y == i*Cb/2         (Cb = chibar^4, a q-unit)
  R = (W + Wb)/2, I = -i*(W - Wb)/2   (W = pi^4, Wb = pibar^4, W*Wb = p^4)
Substitute into the minimal q-layers, set Wb = p^4/W, clear denominators:
polynomials in W and Cb over Z[i][p]. Resultant in W; factor; classify.
"""
import pickle
from collections import Counter
from sympy import symbols, I as iu, expand, im as sim, factor, Poly, resultant, together, fraction, Mul, Pow

p, q = symbols('p q', positive=True)
R, I, X, Y = symbols('R I X Y', real=True)
Cb, W = symbols('Cb W')
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

shapes, degen = pickle.load(open('u22_cert.pkl', 'rb'))
print(f"{len(degen)} p-side-degenerate shapes")

def minlayer_q(terms):
    gq = min(4 - 2*e[1] for e, _ in terms)
    L = 0
    for e, g in terms:
        if 4 - 2*e[1] == gq:
            L += g * EV[e] / q**(4 - 2*e[1])
    return expand(L)

SUB = {X: Cb/2, Y: iu*Cb/2, R: (W + p**4/W)/2, I: -iu*(W - p**4/W)/2}

def reduce_modchi(L):
    e = expand(L.subs(SUB))
    num, den = fraction(together(e))
    return expand(num)

results = Counter()
examples = {}
deep = []
for t1, t2 in degen:
    L1 = minlayer_q(list(t1)); L2 = minlayer_q(list(t2))
    E1 = reduce_modchi(L1); E2 = reduce_modchi(L2)
    if E1 == 0 or E2 == 0:
        results['zero-side'] += 1; deep.append((t1, t2, 'zero')); continue
    Rres = expand(resultant(Poly(E1, W), Poly(E2, W)))
    if Rres == 0:
        results['DEGENERATE both sides'] += 1; deep.append((t1, t2, 'degen')); continue
    fac = factor(Rres)
    core = []
    for fc in Mul.make_args(fac):
        b_, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        if b_.is_number or b_ in (Cb, p): continue
        core.append((b_, ex))
    if not core:
        results['UNIT certificate'] += 1
        examples.setdefault('UNIT', (t1, t2, fac))
    else:
        onlyp = all(b_.free_symbols <= {p} for b_, _ in core)
        key = 'p-CORE certificate' if onlyp else 'MIXED core'
        results[key] += 1
        examples.setdefault(key, (t1, t2, fac))
        if key == 'MIXED core': deep.append((t1, t2, 'mixed'))
print(dict(results))
for k, v in examples.items():
    print(f"\n--- example {k}: {v[0]} / {v[1]}\n  factor: {v[2]}")
pickle.dump(deep, open('u22_deep.pkl', 'wb'))
print(f"\nremaining deep shapes: {len(deep)}")
