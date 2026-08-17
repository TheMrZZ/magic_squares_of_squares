"""Certificate engine for the (2,2) leaf-level incompatibility.

For a leaf, the first-order p-condition asks p to divide both minimal
p-layers L1, L2. Mod pi (over F_p with i -> omega):
  R = (pi^4 + pibar^4)/2  == Pb/2,   I == i*Pb/2      (Pb = pibar^4, a p-unit)
  X = (U + V)/2,           Y == -i*(U - V)/2          (U = chi^4, V = chibar^4)
with the constraint U*V = q^4 (a p-unit). Substitute, clear denominators,
set V = q^4/U, clear U-denominators: two Laurent-free polynomials
E1, E2 in U and Pb over Z[i][q]. Simultaneous vanishing mod pi forces
pi | Res_U(E1, E2) — a polynomial in Pb, q. Factor it. Unit-monomial
factors in Pb drop out (pi divides neither pibar nor chi values). What
remains is the certificate: pi must divide an explicit quantity in q
(and i) alone, so p is bounded — or the resultant vanishes identically
and the shape is degenerate at first order.
"""
import pickle, itertools
from collections import Counter, defaultdict
from sympy import symbols, I as iu, expand, im as sim, factor, Poly, resultant, simplify, together, fraction, degree

p, q = symbols('p q', positive=True)
R, I, X, Y = symbols('R I X Y', real=True)
Pb, U = symbols('Pb U')
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

survivors = pickle.load(open('u22_survivors.pkl', 'rb'))

def minlayer(terms):
    # minimal p-layer of the relation sum, with p-content stripped
    gp = min(4 - 2*e[0] for e, _ in terms)
    L = 0
    for e, g in terms:
        if 4 - 2*e[0] == gp:
            L += g * EV[e] / p**(4 - 2*e[0])
    return expand(L)

SUB = {R: Pb/2, I: iu*Pb/2, X: (U + q**4/U)/2, Y: -iu*(U - q**4/U)/2}

def reduce_modpi(L):
    e = expand(L.subs(SUB))
    e = together(e)
    num, den = fraction(e)
    return expand(num)   # den is a power of 2*U — a p-unit

shapes = {}
for perm, (s1, e2, e3, e4) in survivors:
    ea, eb, ec, ed = [elems[k] for k in perm]
    t1 = [(ec, e3), (ed, e4), (ea, -2)]
    t2 = [(ec, e3), (ed, -e4), (eb, -2*e2)]
    key = (tuple(sorted((e, g) for e, g in t1)), tuple(sorted((e, g) for e, g in t2)))
    shapes.setdefault(key, 0)
    shapes[key] += 1
print(f"{len(shapes)} distinct leaf relation-pairs")

results = Counter()
degen = []
cert_examples = {}
for li, ((t1, t2), cnt) in enumerate(shapes.items()):
    L1 = minlayer(list(t1)); L2 = minlayer(list(t2))
    E1 = reduce_modpi(L1); E2 = reduce_modpi(L2)
    if E1 == 0 or E2 == 0:
        results['zero-side (needs mod-pi^2)'] += cnt
        continue
    P1u = Poly(E1, U); P2u = Poly(E2, U)
    Rres = resultant(P1u, P2u)
    Rres = expand(Rres)
    if Rres == 0:
        results['DEGENERATE resultant'] += cnt
        degen.append((t1, t2))
        continue
    fac = factor(Rres)
    # classify: strip unit-monomial factors (powers of Pb, U, q, i, integers)
    from sympy import Mul, Pow
    core = []
    for fc in Mul.make_args(fac):
        b_, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        if b_.is_number: continue
        if b_ in (Pb, q): continue
        core.append((b_, ex))
    if not core:
        results['UNIT certificate (p bounded by a constant)'] += cnt
        cert_examples.setdefault('UNIT', (t1, t2, fac))
    else:
        # cores in q only => p | value(q): size-coupled certificate
        onlyq = all(b_.free_symbols <= {q} for b_, _ in core)
        if onlyq:
            results['q-CORE certificate (p | poly(q))'] += cnt
            cert_examples.setdefault('QCORE', (t1, t2, fac))
        else:
            results['MIXED core (Pb remains)'] += cnt
            cert_examples.setdefault('MIXED', (t1, t2, fac))
print(dict(results))
for k, v in cert_examples.items():
    print(f"\n--- example {k}: {v[0]} / {v[1]}\n  resultant factor: {v[2]}")
if degen:
    print(f"\n{len(degen)} degenerate shapes; first: {degen[0]}")
pickle.dump((shapes, degen), open('u22_cert.pkl', 'wb'))
