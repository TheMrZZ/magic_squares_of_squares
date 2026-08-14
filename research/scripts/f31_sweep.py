from sympy import symbols, solve, factor, expand, fraction, together, cancel, Poly, rem, Matrix
import itertools, pickle, sys

RA, IA, P, Qv, RB, IB = symbols('RA IA P Q RB IB', real=True)
# pi^4 = RA + IA*i ;  pi^8 = (RA^2-IA^2) + 2RA*IA*i ; pi^12 = pi^8*pi^4
R4, I4 = RA, IA
R8, I8 = expand(R4*R4 - I4*I4), expand(2*R4*I4)
R12, I12 = expand(R8*R4 - I8*I4), expand(R8*I4 + I8*R4)
NORM = IA**2 + RA**2 - P**2
def rednorm(f): return expand(rem(Poly(f, IA), Poly(NORM, IA)).as_expr())

a = 3
PW = {1: P**2, 2: P**1, 3: 1}   # p^{2(a-j)} with P=p^2: j=1 -> p^4=P^2, j=2 -> P, j=3 -> 1
PI = {1: (R4, I4), 2: (R8, I8), 3: (R12, I12)}
elems = {}
for j in (1, 2, 3):
    Rj, Ij = PI[j]
    elems[f'm{j}p'] = PW[j]*(Rj*IB + Ij*RB)
    elems[f'm{j}m'] = PW[j]*(Ij*RB - Rj*IB)
    elems[f'x{j}']  = PW[j]*Qv*Ij          # sign of Ij handled by sign var
elems['y'] = P**3*IB
signable = {n for n in elems if n != 'y'}   # y = P^3*IB, IB>0
names = list(elems)
print(f"a=3: {len(names)} elements")

Fclasses = {}
count = 0
for eu, ev, es, ed in itertools.permutations(names, 4):
    sn = [n for n in (eu, ev, es, ed) if n in signable]
    for signs in itertools.product((1,-1), repeat=len(sn)):
        sg = dict(zip(sn, signs))
        val = lambda n: sg.get(n, 1)*elems[n]
        E1 = val(es) - val(eu) - val(ev)
        E2 = val(ed) - val(eu) + val(ev)
        count += 1
        p1, p2 = Poly(E1, RB, IB), Poly(E2, RB, IB)
        M = Matrix([[p1.as_dict().get((1,0),0), p1.as_dict().get((0,1),0)],
                    [p2.as_dict().get((1,0),0), p2.as_dict().get((0,1),0)]])
        det = expand(M.det())
        c1 = -(p1.as_dict().get((0,0),0)); c2 = -(p2.as_dict().get((0,0),0))
        if det == 0:
            Fclasses.setdefault(("SINGULAR", str(factor(E1)), str(factor(E2))), []).append((eu,ev,es,ed,signs))
            continue
        RBv = cancel((c1*M[1,1] - c2*M[0,1])/det)
        IBv = cancel((M[0,0]*c2 - M[1,0]*c1)/det)
        num, den = fraction(together(RBv**2 + IBv**2 - Qv**2))
        F = str(factor(rednorm(num)))
        Fclasses.setdefault(F, []).append((eu,ev,es,ed,signs))
print(f"leaves: {count}, distinct F/singular classes: {len(Fclasses)}")
pickle.dump(Fclasses, open('f31_classes.pkl','wb'))
