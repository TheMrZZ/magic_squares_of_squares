"""The core kill for the last 64 leaves of (2,2).

Claim: each remaining relation is equivalent to  x^4 * B = +- y^4 * Bbar
(chi-side) or  u^4 * C = +- v^4 * Cbar (pi-side), where B (resp. C) is one
of the quartics  u^4 + v^4 -+ 2 u^3 v  (resp. in x, y).  Then:
  chibar^8 | B, B = d*chibar^8 (or i*d), N(B) = (4 s w)^2, and
  (s(3r^2-s^2), r p^2, w) is a primitive Pythagorean triple.  The coprime
  splitting of r p^2 forces r2^2 p^4 - r1^2 <= 6 p^3: impossible for
  p >= 7; p = 5 dies by direct check.  Verify the reduction for all 64.
"""
import pickle
from sympy import symbols, I as iu, expand, im as sim, simplify

p, q = symbols('p q', positive=True)
R, I, X, Y = symbols('R I X Y', real=True)
u, v, x, y = symbols('u v x y')
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

# half-level substitution: R,I,X,Y,p,q in terms of u=pi^2, v=pibar^2, x=chi^2, y=chibar^2
SUB = {R: (u**2 + v**2)/2, I: (u**2 - v**2)/(2*iu),
       X: (x**2 + y**2)/2, Y: (x**2 - y**2)/(2*iu),
       p: 0, q: 0}  # placeholders; p,q powers handled via uv, xy

def to_uv(terms):
    T = 0
    for e, g in terms:
        a, b, sg = e
        # element value with p -> sqrt(uv), q -> sqrt(xy): p^(4-2a) = (uv)^(2-a)
        val = EV[e] / (p**(4-2*a) * q**(4-2*b))
        val = val.subs({R: (u**2+v**2)/2, I: (u**2-v**2)/(2*iu),
                        X: (x**2+y**2)/2, Y: (x**2-y**2)/(2*iu)})
        T += g * (u*v)**(2-a) * (x*y)**(2-b) * val
    return expand(T)

Bm = u**4 + v**4 - 2*u**3*v; Bmb = u**4 + v**4 - 2*u*v**3
Bp = u**4 + v**4 + 2*u**3*v; Bpb = u**4 + v**4 + 2*u*v**3
Cm = x**4 + y**4 - 2*x**3*y; Cmb = x**4 + y**4 - 2*x*y**3
Cp = x**4 + y**4 + 2*x**3*y; Cpb = x**4 + y**4 + 2*x*y**3

CANDS = []
for nm, Bq, Bqb in (('B-', Bm, Bmb), ('B+', Bp, Bpb)):
    for s1 in (1, -1):
        CANDS.append((f'chi8*{nm} {"real" if s1>0 else "imag"}',
                      expand(x**4*Bq - s1*y**4*Bqb)))
for nm, Cq, Cqb in (('C-', Cm, Cmb), ('C+', Cp, Cpb)):
    for s1 in (1, -1):
        CANDS.append((f'pi8*{nm} {"real" if s1>0 else "imag"}',
                      expand(u**4*Cq - s1*v**4*Cqb)))

rem = pickle.load(open('u22_deep2.pkl', 'rb'))
from collections import Counter
matched = Counter()
unmatched = []
for t1, t2 in rem:
    forms = []
    for terms in (t1, t2):
        T = to_uv(list(terms))
        hit = None
        for nm, cand in CANDS:
            rat = simplify(T / cand)
            if rat.is_number and rat != 0:
                hit = nm
                break
        forms.append(hit)
    if all(forms):
        matched[tuple(sorted(forms))] += 1
    else:
        unmatched.append((t1, t2, forms))
print("matched pairs:", dict(matched))
print("unmatched:", len(unmatched))
for t1, t2, f in unmatched[:4]:
    print("  ", t1, t2, f)
# p = 5 base check for the master condition
r_, s_ = 3, 4
M = (3*r_**2 - s_**2)**2 * s_**2 + r_**2 * (r_**2 + s_**2)**2
import math
w0 = math.isqrt(M)
print(f"\np=5 check: M = {M}, floor sqrt = {w0}, square? {w0*w0 == M}")
