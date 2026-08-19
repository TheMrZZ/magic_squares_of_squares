# The affine clean-sector bands (Round 221). For each of the 80
# single-cell pair types at (1,1,1): build the two conditions in the
# Phi-plane (Phi = chi^{2d} rho^{2e} = Xf + i Yf), solve the affine
# system by Cramer, close with the circle |Phi|^2 = q^{2d} w^{2e}
# (w = the third prime), and factor the resulting band polynomial.
import sys
import sympy as sp

r, s, q, w = sp.symbols('r s q w', real=True)
Xf, Yf = sp.symbols('Xf Yf', real=True)
u = r + sp.I * s
v = r - sp.I * s

def poly_val(ser):
    # terms "c,ue,ve,xe,ye,ze,we" — chi/rho exps balanced pairs give
    # q- and w-powers; the shift part is carried by Phi, so here we
    # take the (u,v) coefficient times q^min(xe,ye) w^min(ze,we)
    val = sp.Integer(0)
    for t in ser.split(';'):
        f = [int(x) for x in t.split(',')]
        c, ue, ve, xe, ye, ze, we = f
        val += c * u**ue * v**ve * q**(2*min(xe, ye)) * w**(2*min(ze, we))
    return sp.expand(val)

def condition(part, cell, Pser, Zser):
    d, e = cell
    P = poly_val(Pser)
    Z = poly_val(Zser) if Zser else sp.Integer(0)
    expr = sp.conjugate(P) * (Xf + sp.I * Yf) + Z
    re_, im_ = expr.as_real_imag()
    return sp.expand(im_ if part == 'im' else re_)

import re as rex
pat = rex.compile(r'cell=\((-?\d+),(-?\d+)\) part=(\w+) P=\[([^\]]*)\] Z=\[([^\]]*)\]')

types = []
for ln in open('/tmp/clean80.txt'):
    sides = ln.strip().lstrip('1').strip().split('  ||  ')
    parsed = []
    for side in sides:
        m = pat.search(side)
        d, e, part, P, Z = int(m.group(1)), int(m.group(2)), m.group(3), m.group(4), m.group(5)
        parsed.append((d, e, part, P, Z))
    types.append(parsed)

shapes = {}
zero_band = 0
for t1, t2 in types:
    assert (t1[0], t1[1]) == (t2[0], t2[1]), "not aligned"
    d, e = t1[0], t1[1]
    c1 = condition(t1[2], (d, e), t1[3], t1[4])
    c2 = condition(t2[2], (d, e), t2[3], t2[4])
    sol = sp.solve([c1, c2], [Xf, Yf], dict=True)
    if not sol:
        # cross zero or inconsistent — flag
        shapes.setdefault('NO-CRAMER', []).append((t1, t2))
        continue
    sX = sol[0][Xf]; sY = sol[0][Yf]
    band = sp.factor(sp.together(sX**2 + sY**2 - q**(2*abs(d)) * w**(2*abs(e))))
    num, den = sp.fraction(band)
    F = sp.factor(num)
    key = sp.sstr(F)
    shapes.setdefault(key, []).append((d, e))

print(f"{len(types)} pair types; {len(shapes)} distinct band polynomials:")
for k, v in shapes.items():
    print(f"\n[{len(v)}x, cells {sorted(set(v))[:4] if k != 'NO-CRAMER' else ''}]")
    print(k[:600])
