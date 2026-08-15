"""Three-sided per-factor certificates for the 600 (1,1,1) relations.
Factor closed if: any side units-only (const), or ALL THREE sides have
<= 1 small atom (then the max prime's side forces its single small core
— bounded by a strictly smaller prime — to vanish: impossible)."""
from sympy import symbols, I as iu, expand, factor, Mul, Pow, sqrt, im as sim, conjugate
import itertools, pickle
from collections import Counter

p, q, r = symbols('p q r', positive=True)
R, I, X, Y, U, V = symbols('R I X Y U V', real=True)
PR = [(p, R, I), (q, X, Y), (r, U, V)]
pairs = {0: symbols('a0 b0', positive=True), 1: symbols('a1 b1', positive=True), 2: symbols('a2 b2', positive=True)}

elems = []
for c in itertools.product(range(2), repeat=3):
    if c == (0,0,0): continue
    first = next(i for i,x in enumerate(c) if x)
    signopts = [[1]]*3
    for i in range(3):
        if c[i] and i != first: signopts[i] = [1,-1]
    for sg in itertools.product(*signopts):
        elems.append((c, sg))
def elem_val(e):
    c, sg = e
    z = 1
    for i in range(3):
        if c[i]:
            zz = PR[i][1] + iu*PR[i][2]
            z *= zz if sg[i] > 0 else conjugate(zz)
    pref = 1
    for i in range(3): pref *= PR[i][0]**(2-2*c[i])
    return pref * expand(sim(expand(z)))
VAL = {e: elem_val(e) for e in elems}
def lone(rel):
    for i in range(3):
        gs = [2-2*x[0][i] for x in rel]
        if gs.count(min(gs)) == 1: return True
    return False
rels = set()
for combo in itertools.permutations(range(len(elems)), 4):
    eu, ev, es, ed = [elems[k] for k in combo]
    if lone([es,eu,ev]) or lone([ed,eu,ev]): continue
    for sv, ss, sd in itertools.product((1,-1), repeat=3):
        for trip, sgns in (((es,eu,ev),(ss,-1,-sv)), ((ed,eu,ev),(sd,-1,sv))):
            key = frozenset(zip(trip, sgns))
            key2 = frozenset((t,-g) for t,g in key)
            rels.add(min(key, key2, key=lambda fs: sorted(str(x) for x in fs)))
rels = sorted(rels, key=lambda fs: sorted(str(x) for x in fs))
print(f"relations: {len(rels)}", flush=True)

def side_cert(F, i):
    pr, Re_, Im_ = PR[i]
    e = F.subs({Re_: -iu*Im_, pr: 0})
    subs = {}; units = [Im_]; smalls = []; 
    for j in range(3):
        if j == i: continue
        prj, Rj, Ij = PR[j]
        a, b = pairs[j]
        subs[Rj] = (a**2+b**2)/2; subs[Ij] = (a**2-b**2)/(2*iu); subs[prj] = sqrt(a*b)
        units += [a, b]; smalls += [a+b, a-b]
    e = expand(e.subs(subs))
    if e == 0: return None
    f = factor(e)
    nsmall = 0; const = 1
    for fc in Mul.make_args(f):
        bb, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        if bb.is_number: const *= abs(bb)**ex; continue
        if any(expand(bb - A) == 0 or expand(bb + A) == 0 for A in units): continue
        hit = False
        for A in smalls:
            if expand(bb - A) == 0 or expand(bb + A) == 0:
                nsmall += ex; hit = True; break
        if not hit: return None
    if const == 0: return None
    return ('units', const) if nsmall == 0 else ('small', nsmall)

def parity_odd(fexpr):
    val = fexpr.subs({R:1, X:1, U:1, p:1, q:1, r:1, I:0, Y:0, V:0})
    return val.is_integer and int(val) % 2 == 1

killed = 0; alive = []
how = Counter()
for rel in rels:
    T = expand(sum(g*VAL[e] for e, g in rel))
    ok = True; fails = []
    for fc in Mul.make_args(factor(T)):
        b, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        if b.is_number or b in (p, q, r): continue
        if parity_odd(b): how['parity'] += 1; continue
        certs = [side_cert(b, i) for i in range(3)]
        if any(c and c[0] == 'units' for c in certs):
            how['unit-side'] += 1; continue
        if all(c and c[1] <= 1 for c in certs if True) and all(c is not None for c in certs):
            how['triple-pinch'] += 1; continue
        ok = False; fails.append((b, certs))
    if ok: killed += 1
    else: alive.append((rel, fails))
print(f"KILLED: {killed} / {len(rels)}; certificates: {dict(how)}")
sig = Counter()
for rel, fails in alive:
    sig[tuple(sorted(str(cs) for b, cs in fails))] += 1
print(f"alive: {len(alive)}; signatures: {len(sig)}")
for k, v in sig.most_common(8): print(v, [s[:80] for s in k])
pickle.dump(alive, open('sym3_alive.pkl','wb'))
