"""Extract the Pell-band relations of (2,2): both sides max-core halfdeg
<= 1 but not finite-closed (i.e. exactly (1,1)).  For each, list the
actual core factors on each side and the band conditions core = k*prime.
Then check quadratic-residue consistency of the coupled system."""
import pickle
from sympy import symbols, I as iu, expand, factor, Mul, Pow, Poly, im as sim
p, q = symbols('p q', positive=True)
R, I, X, Y = symbols('R I X Y', real=True)
A, B, C, D = symbols('A B C D', real=True)
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
prof = pickle.load(open('sym22_profile.pkl','rb'))
bands = [rel for rel, (cps, cqs) in prof
         if cps and cps[0] is not None and cqs[0] is not None
         and cps[0] == 1.0 and cqs[0] == 1.0]
print(f"band relations: {len(bands)}", flush=True)
def cores(F, side):
    if side == 'pi':
        e = F.subs({R: -iu*I, p: 0})
        t = C + iu*D
        e = e.subs({X: expand((t**4 + (t.conjugate())**4)/2),
                    Y: expand((t**4 - (t.conjugate())**4)/(2*iu)),
                    q: C**2 + D**2})
        gens = (C, D); uv = I
    else:
        e = F.subs({X: -iu*Y, q: 0})
        t = A + iu*B
        e = e.subs({R: expand((t**4 + (t.conjugate())**4)/2),
                    I: expand((t**4 - (t.conjugate())**4)/(2*iu)),
                    p: A**2 + B**2})
        gens = (A, B); uv = Y
    e = expand(e)
    out = []
    for fc in Mul.make_args(factor(e)):
        b_, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        if b_.is_number or b_ == uv: continue
        pl = Poly(b_, *gens)
        if len(pl.as_dict()) == 1: continue
        if pl.total_degree() == 2: out.append(str(b_))
    return out
from collections import Counter
combos = Counter()
for rel in bands:
    T = expand(sum(g*elem_expr(e) for e, g in rel))
    for fc in Mul.make_args(factor(T)):
        b_, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        if b_.is_number or b_ in (p, q): continue
        vv = b_.subs({R:1, X:1, p:1, q:1, I:0, Y:0})
        if vv.is_integer and int(vv) % 2 == 1: continue
        cp = cores(b_, 'pi'); cq = cores(b_, 'chi')
        combos[(tuple(sorted(cp)), tuple(sorted(cq)))] += 1
print("distinct (pi-cores, chi-cores) systems:")
for k, v in combos.most_common(): print(v, k)
