"""The 58-family table: for each P in the stable catalog, the norm formula
N(P) in (p, s), its factorization, and the finish class:
  W2Q: N(P) = w^2 q^{2D} needs w^2 = (explicit form): list the form.
  Classes: MONO (pure monomial: q-power divides a p/s-monomial times a
  constant — thin, exact square condition on a monomial), SQFACT (all
  non-monomial factors appear squared — w^2 condition factors through),
  MIXED (contains an odd-multiplicity non-monomial factor — the square
  condition is a Pell/Pythagorean curve: the deep finishes).
"""
import pickle
from collections import Counter
from sympy import symbols, I as iu, expand, factor, sympify, Mul, Pow, Poly

u, v, r, s, p = symbols('u v r s p')
Ps = sorted(pickle.load(open('u23_pcat.pkl', 'rb')))
print(f"{len(Ps)} families")
res = Counter()
rows = []
for cp in Ps:
    P = sympify(cp)
    Pc = expand(P.subs({u: v, v: u}, simultaneous=True))
    N = expand((P*Pc).subs({u: r + iu*s, v: r - iu*s}))
    N = expand(N.subs(r**2, p**2 - s**2))
    F = factor(N)
    odd_nonmono = []
    for fc in Mul.make_args(F):
        b_, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        if b_.is_number: continue
        if len(Poly(b_, r, s, p).terms()) == 1: continue
        if ex % 2 == 1: odd_nonmono.append(b_)
    if not any(len(Poly(b_. base if isinstance(b_, Pow) else b_, r, s, p).terms()) > 1
               for b_ in Mul.make_args(F) if not (b_.is_number)):
        cls = 'MONO'
    elif not odd_nonmono:
        cls = 'SQFACT'
    else:
        cls = 'MIXED(' + '; '.join(str(o) for o in odd_nonmono) + ')'
    res[cls.split('(')[0]] += 1
    rows.append((cp, str(F), cls))
print(dict(res))
with open('u2b_family_table.md', 'w') as f:
    f.write("# The 58 balance families of the two-exponent landscape\n\n")
    f.write("| P(u, v) | N(P) factored (r^2 -> p^2 - s^2) | finish class |\n|---|---|---|\n")
    for cp, F, cls in rows:
        f.write(f"| `{cp}` | `{F}` | {cls} |\n")
print("table written")
for cp, F, cls in rows:
    if cls.startswith('MIXED'):
        print(f"  MIXED: P = {cp}  N = {F}")
