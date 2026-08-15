"""Refined per-factor certificates with chi^2/pi^2 coordinates.

For factor F (real poly in R,I,X,Y,p,q):
 MOD-PI side: Fp = F(R->-i*I, p->0); substitute X=(v^2+vb^2)/2,
 Y=(v^2-vb^2)/(2i), q=sqrt(v*vb); factor in (v,vb) with I kept.
 Atom classes:
   UNIT: v, vb, I (bridge), numeric constants
   SMALL: v+vb (=2Re(chi^2), core C^2-D^2 < q, nonzero),
          v-vb (=2i*Im(chi^2), core 2CD < q, nonzero)
 Certificate outcome for the side: ('units', c) or ('small', k) where
 k = number of SMALL factors (with multiplicity), or None (uncertified).
 MOD-CHI symmetric with (u, ub), atom Y kept... (atoms: u, ub, Y).
Closure per factor:
 - any side ('units', c): factor != 0 for primes > c  -> CLOSED.
 - both sides ('small', 1): two-ordering pinch (p>q via pi-side, q>p via
   chi-side using q > sqrt(p))  -> CLOSED.
 - pi-side ('small',1) and chi-side ('units',c): p>q closed by pinch;
   q>p... chi-side units means q never divides F at all -> F != 0 ALWAYS
   (q side alone suffices!) -> CLOSED.
 Actually ('units', c) on either side alone closes the factor outright.
 So: CLOSED iff (either side units) or (both sides small with k=1).
 Everything else: UNCLOSED (k>=2 smalls = product bound too big, or
 non-atom factors remain).
"""
from sympy import symbols, I as iu, expand, factor, Mul, Pow, Poly, sqrt, im as sim
import itertools, pickle
from collections import Counter

p, q = symbols('p q', positive=True)
R, I, X, Y = symbols('R I X Y', real=True)
u, ub, v, vb = symbols('u ub v vb', positive=True)
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
VAL = {e: elem_expr(e) for e in elems}
def pexp(e): return 4 - 2*e[0]
def qexp(e): return 4 - 2*e[1]
def lone(rel):
    ps = [pexp(x) for x in rel]; qs = [qexp(x) for x in rel]
    return ps.count(min(ps)) == 1 or qs.count(min(qs)) == 1
rels = set()
for combo in itertools.permutations(range(12), 4):
    eu, ev, es, ed = [elems[k] for k in combo]
    if lone([es,eu,ev]) or lone([ed,eu,ev]): continue
    for sv, ss, sd in itertools.product((1,-1), repeat=3):
        for trip, sgns in (((es,eu,ev),(ss,-1,-sv)), ((ed,eu,ev),(sd,-1,sv))):
            key = frozenset(zip(trip, sgns))
            key2 = frozenset((t,-g) for t,g in key)
            rels.add(min(key, key2, key=lambda fs: sorted(str(x) for x in fs)))
rels = sorted(rels, key=lambda fs: sorted(str(x) for x in fs))
print(f"relations: {len(rels)}", flush=True)

def side_cert(F, side):
    if side == 'pi':
        e = F.subs({R: -iu*I, p: 0})
        e = expand(e.subs({X: (v**2+vb**2)/2, Y: (v**2-vb**2)/(2*iu), q: sqrt(v*vb)}))
        units = [v, vb, I]; smalls = [v+vb, v-vb]
        gens = (v, vb, I)
    else:
        e = F.subs({X: -iu*Y, q: 0})
        e = expand(e.subs({R: (u**2+ub**2)/2, I: (u**2-ub**2)/(2*iu), p: sqrt(u*ub)}))
        units = [u, ub, Y]; smalls = [u+ub, u-ub]
        gens = (u, ub, Y)
    if e == 0: return None
    f = factor(e)
    nsmall = 0; const = 1
    for fc in Mul.make_args(f):
        b, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        if b.is_number: const *= abs(b)**ex; continue
        if any(expand(b - A) == 0 or expand(b + A) == 0 for A in units): continue
        matched = False
        for A in smalls:
            if expand(b - A) == 0 or expand(b + A) == 0:
                nsmall += ex; matched = True; break
        if not matched: return None
    if const == 0: return None
    return ('units', const) if nsmall == 0 else ('small', nsmall)

def parity_odd(fexpr):
    val = fexpr.subs({R:1, X:1, p:1, q:1, I:0, Y:0})
    return val.is_integer and int(val) % 2 == 1

killed = 0; alive = []; kills = []
how = Counter()
for rel in rels:
    T = expand(sum(g*VAL[e] for e, g in rel))
    ok = True; fails = []; howrel = Counter()
    for fc in Mul.make_args(factor(T)):
        b, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        if b.is_number or b == p or b == q: continue
        if parity_odd(b): how['parity'] += 1; howrel['parity'] += 1; continue
        cp = side_cert(b, 'pi'); cq = side_cert(b, 'chi')
        if (cp and cp[0] == 'units') or (cq and cq[0] == 'units'):
            how['unit-side'] += 1; howrel['unit-side'] += 1; continue
        if cp and cq and cp == ('small', 1) and cq == ('small', 1):
            how['double-pinch'] += 1; howrel['double-pinch'] += 1; continue
        ok = False; fails.append((b, cp, cq))
    if ok: killed += 1; kills.append((rel, dict(howrel)))
    else: alive.append((rel, fails))
print(f"KILLED: {killed} / {len(rels)}; certificates: {dict(how)}")
shapes = Counter()
for rel, fails in alive:
    shapes[tuple(sorted(f"{cp}|{cq}" for b, cp, cq in fails))] += 1
print(f"alive: {len(alive)}; failure signatures: {len(shapes)}")
for k, val in shapes.most_common(10): print(val, k)
pickle.dump(alive, open('sym22_alive2.pkl','wb'))
pickle.dump(kills, open('sym22_kills.pkl','wb'))
from collections import Counter as C2
print('kill profiles:', C2(tuple(sorted(d.items())) for r, d in kills))
