"""(2,2) engine step 1: enumerate D(e) for e = s p^2 q^2 symbolically.

Gaussian divisors of norm e^2: w = s * u * pi^i pibar^{4-i} chi^j chibar^{4-j},
i,j in 0..4.  d = Im(w^2) up to sign/unit; the essentially distinct nonzero
values (up to sign) form D(e).  Express in terms of:
  P4 = pi^4 = R + i I   (R^2 + I^2 = p^4)
  C4 = chi^4 = X + i Y  (X^2 + Y^2 = q^4)
and integer powers of p, q, s.  w^2 = s^2 p^{2 min(i,4-i)} q^{2 min(j,4-j)}
  * pi_sign^{|4-2i|... } -- work directly: w^2 = s^2 pi^{2i} pibar^{8-2i}
  chi^{2j} chibar^{8-2j} = s^2 p^{2m} q^{2n} pi^{2i-2m'}...
Simplest exact route: pibar^{8-2i} pi^{2i} = p^{2*min(2i, 8-2i)/1}...
Use: pi^a pibar^b = p^min(a,b) * (pi^{a-b} if a>b else pibar^{b-a}).
And pi^4 = P4, pibar^4 = conj(P4); pi^8 = P4^2 etc. Exponents a-b are
multiples of 4 here (a+b=8, a=2i even; a-b = 4i-8 in {-8,-4,0,4,8}). Good.
Also unit u: w -> u w multiplies w^2 by u^2 = ±1 -> d -> ±d; u=i gives -.
But x,y swap (Re/Im of w) comes from u=(1+i)/sqrt2? Not a unit. Actually
2xy = Im(w^2) covers it; the OTHER cell value is |Re(w^2)|? No: the pair
(x,y) with x^2+y^2=e^2 gives d = 2xy = Im(w^2). Different divisors give
different d. So D = { |Im(w^2)| : w as above } \ {0}.
"""
from sympy import symbols, I as i_, re as sre, im as sim, expand, simplify, sqrt, conjugate, Symbol
p, q, s = symbols('p q s', positive=True)
R, I, X, Y = symbols('R I X Y', real=True)
P4 = R + i_*I; P4c = R - i_*I
C4 = X + i_*Y; C4c = X - i_*Y

def pipow(k):  # pi^{4k} for k in -2..2 as expression
    if k == 0: return 1
    if k > 0: return P4**k
    return P4c**(-k)
def chipow(k):
    if k == 0: return 1
    if k > 0: return C4**k
    return C4c**(-k)

elems = {}
for i in range(5):
    for j in range(5):
        # w^2 = s^2 pi^{2i} pibar^{8-2i} chi^{2j} chibar^{8-2j}
        a, b = 2*i, 8-2*i
        m = min(a,b); k = (a-b)//4  # a-b multiple of 4
        c, d2 = 2*j, 8-2*j
        n = min(c,d2); l = (c-d2)//4
        w2 = s**2 * p**m * q**n * pipow(k) * chipow(l)
        d = expand(sim(expand(w2)))
        if d == 0: continue
        key = (i, j)
        elems[key] = d
# dedup up to sign / conjugation (i,j)~(4-i,4-j) gives -d
seen = {}
for (i,j), d in elems.items():
    dn = expand(-d)
    matched = None
    for k2, d2 in seen.items():
        if expand(d - d2) == 0 or expand(d + d2) == 0: matched = k2; break
    if not matched: seen[(i,j)] = d
print(f"distinct D-elements (up to sign): {len(seen)}")
for k, d in sorted(seen.items()): print(k, ":", d)
