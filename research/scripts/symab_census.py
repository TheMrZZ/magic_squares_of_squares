"""General-(a,b) symbolic census + uniform-theorem coverage.
Usage: python3 symab_census.py A B
"""
import sys, itertools, pickle
from collections import Counter, defaultdict
from sympy import symbols, I as iu, expand, factor, Mul, Pow, sqrt, im as sim

AE, BE = int(sys.argv[1]), int(sys.argv[2])
p, q = symbols('p q', positive=True)
R, I, X, Y = symbols('R I X Y', real=True)
u, ub, v, vb = symbols('u ub v vb', positive=True)
P1 = R + iu*I; C1 = X + iu*Y

elems = []
for a in range(AE+1):
    for b in range(BE+1):
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
    return p**(2*(AE-a)) * q**(2*(BE-b)) * expand(sim(expand(z)))
VAL = {e: elem_expr(e) for e in elems}
def pexp(e): return 2*(AE-e[0])
def qexp(e): return 2*(BE-e[1])
def lone(rel):
    ps = [pexp(x) for x in rel]; qs = [qexp(x) for x in rel]
    return ps.count(min(ps)) == 1 or qs.count(min(qs)) == 1
rels = set()
n = len(elems)
for combo in itertools.permutations(range(n), 4):
    eu, ev, es, ed = [elems[k] for k in combo]
    if lone([es,eu,ev]) or lone([ed,eu,ev]): continue
    for sv, ss, sd in itertools.product((1,-1), repeat=3):
        for trip, sgns in (((es,eu,ev),(ss,-1,-sv)), ((ed,eu,ev),(sd,-1,sv))):
            key = frozenset(zip(trip, sgns))
            key2 = frozenset((t,-g) for t,g in key)
            rels.add(min(key, key2, key=lambda fs: sorted(str(x) for x in fs)))
rels = sorted(rels, key=lambda fs: sorted(str(x) for x in fs))
print(f"({AE},{BE}) relations: {len(rels)}", flush=True)

def side_cert(F, side):
    if side == 'pi':
        e = F.subs({R: -iu*I, p: 0})
        e = expand(e.subs({X: (v**2+vb**2)/2, Y: (v**2-vb**2)/(2*iu), q: sqrt(v*vb)}))
        units = [v, vb, I]; smalls = [v+vb, v-vb]
    else:
        e = F.subs({X: -iu*Y, q: 0})
        e = expand(e.subs({R: (u**2+ub**2)/2, I: (u**2-ub**2)/(2*iu), p: sqrt(u*ub)}))
        units = [u, ub, Y]; smalls = [u+ub, u-ub]
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
for idx, rel in enumerate(rels):
    if idx % 500 == 0: print(f"  {idx}/{len(rels)} killed={killed}", flush=True)
    T = expand(sum(g*VAL[e] for e, g in rel))
    ok = True; howrel = Counter()
    for fc in Mul.make_args(factor(T)):
        b, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        if b.is_number or b == p or b == q: continue
        if parity_odd(b): howrel['parity'] += 1; continue
        cp = side_cert(b, 'pi'); cq = side_cert(b, 'chi')
        if (cp and cp[0] == 'units') or (cq and cq[0] == 'units'):
            howrel['unit-side'] += 1; continue
        if cp and cq and cp == ('small', 1) and cq == ('small', 1):
            howrel['double-pinch'] += 1; continue
        ok = False
    if ok: killed += 1; kills.append((rel, dict(howrel))); how.update(howrel)
    else: alive.append(rel)

print(f"KILLED {killed}/{len(rels)}  certs: {dict(how)}", flush=True)

# uniform-theorem coverage
def classify(rel):
    rel = sorted(rel)
    slots = [ (a,b) for ((a,b,c),s) in rel ]
    sset = sorted(set(slots))
    # corner triple {(al-1,be),(al,be-1),(al,be)}
    if len(sset) == 3:
        al, be = max(sset)
        if set(sset) == {(al-1,be),(al,be-1),(al,be)} and al >= 1 and be >= 1:
            conj = { (a,b): c for ((a,b,c),s) in rel }
            c1, c2, c3 = conj[(al-1,be)], conj[(al,be-1)], conj[(al,be)]
            if c1 == c3 or be-1 == 0: return 'corner-aligned' if (c1 == c3 or (al-1==0)) else 'corner-other'
            if al == 1: return 'corner-mixed'
            return 'corner-other'
    # lone + twin
    if len(sset) == 2:
        cnt = Counter(slots)
        tw = [s for s,k in cnt.items() if k == 2]
        ln = [s for s,k in cnt.items() if k == 1]
        if len(tw) == 1 and len(ln) == 1:
            (ta,tb), (la,lb) = tw[0], ln[0]
            if la == 0 or lb == 0: return f'twin-L{la}{lb}'
            return 'twin-other'
    return 'other'

cov = Counter()
for rel, howrel in kills:
    cov[classify(rel)] += 1
print("kill-shape coverage:", dict(cov), flush=True)
pickle.dump({'rels': rels, 'kills': kills, 'alive': alive, 'cov': dict(cov)},
            open(f'symab_{AE}{BE}.pkl','wb'))
print("DONE", flush=True)
