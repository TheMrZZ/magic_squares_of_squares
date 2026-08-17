"""Norm formulas for the balance-family pi-side polynomials.

For each distinct pi-side polynomial P(u, v) in the (2,3) master catalog,
compute N(P) = P * conj(P) in the coordinates u = r + i s, v = r - i s
(so r = Re pi^2, s = Im pi^2, r^2 + s^2 = p^2), factor it, and classify
the finish the family kill needs:
  MONOMIAL: N(P) = const * p-powers * r/s-powers — the q-divisibility
    condition collapses to q | (small * r or s): a clean band + descent.
  SQUAREPLUS: N(P) = const * (sum of two squares) — Pythagorean finish.
  OTHER: needs its own argument.
"""
import pickle
from collections import Counter
from sympy import symbols, I as iu, expand, factor, sympify, Mul, Pow, Poly

u, v, r, s, p = symbols('u v r s p')
fams = pickle.load(open('u23_master_fams.pkl', 'rb'))
Ps = sorted({cp for (_, cp) in fams})
print(f"{len(Ps)} distinct pi-side polynomials")

res = Counter()
listing = []
for cp in Ps:
    P = sympify(cp)
    Pc = expand(P.subs({u: v, v: u}, simultaneous=True))
    N = expand((P * Pc).subs({u: r + iu*s, v: r - iu*s}))
    N = expand(N.subs(r**2, p**2 - s**2))  # normalize once via r^2+s^2=p^2
    F = factor(N)
    kinds = []
    for fc in Mul.make_args(F):
        b_, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        if b_.is_number: continue
        pol = Poly(b_, r, s, p)
        if len(pol.terms()) == 1: kinds.append('mono')
        else: kinds.append('poly:' + str(b_))
    if all(k == 'mono' for k in kinds):
        res['MONOMIAL'] += 1
    elif sum(1 for k in kinds if k != 'mono') == 1:
        res['ONE-POLY'] += 1
        listing.append((cp, F))
    else:
        res['MULTI-POLY'] += 1
        listing.append((cp, F))
print(dict(res))
for cp, F in listing[:24]:
    print(f"  P = {cp}\n    N = {F}")
