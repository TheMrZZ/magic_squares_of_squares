"""How do the 18 band relations fail at actual persistent-band pairs?
Evaluate each band relation exactly at the co-occurring pairs found by
the probe (both orders), and record v_p, v_q of the relation value."""
import pickle, math
from sympy import symbols, I as iu, expand, im as sim
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
prof = pickle.load(open('sym22_profile.pkl','rb'))
bands = [rel for rel, (cps, cqs) in prof
         if cps and cps[0] == 1.0 and cqs and cqs[0] == 1.0]
def gauss_rep(n):
    for a in range(1, math.isqrt(n)+1):
        b2 = n - a*a; b = math.isqrt(b2)
        if b*b == b2: return (a, b)
def val4(a_, b_):
    z = complex(a_, b_)**4
    return round(z.real), round(z.imag)
pairs = [(13,17),(17,13),(37,13),(13,37),(37,61),(61,37)]
from collections import Counter
res = Counter()
for pv, qv in pairs:
    Ap, Bp = gauss_rep(pv); Aq, Bq = gauss_rep(qv)
    Rv, Iv = val4(Ap, Bp); Xv, Yv = val4(Aq, Bq)
    subs = {R: Rv, I: Iv, X: Xv, Y: Yv, p: pv, q: qv}
    for rel in bands:
        T = expand(sum(g*elem_expr(e) for e, g in rel))
        v = int(T.subs(subs))
        if v == 0:
            res['ZERO!!'] += 1
            print("RELATION HOLDS at", pv, qv, rel)
            continue
        vp = 0; x = abs(v)
        while x % pv == 0: x //= pv; vp += 1
        vq = 0; x = abs(v)
        while x % qv == 0: x //= qv; vq += 1
        res[(vp, vq)] += 1
print("valuation (v_p, v_q) census of band-relation values at test pairs:")
for k, c in res.most_common(): print(c, k)
