"""General three-prime census. Usage: python3 sym3ab_census.py A B C"""
import sys, itertools, pickle
from collections import Counter
from sympy import symbols, I as iu, expand, factor, conjugate, sqrt, Mul, Pow, im as sim

EXPS = (int(sys.argv[1]), int(sys.argv[2]), int(sys.argv[3]))
p, q, r = symbols('p q r', positive=True)
R, I, X, Y, U, V = symbols('R I X Y U V', real=True)
PR = [(p, R, I), (q, X, Y), (r, U, V)]
u1, u2, v1, v2, w1, w2 = symbols('u1 u2 v1 v2 w1 w2', positive=True)
pairs = [(u1, u2), (v1, v2), (w1, w2)]

elems = []
for c in itertools.product(*(range(E+1) for E in EXPS)):
    if c == (0,0,0): continue
    nz = [i for i in range(3) if c[i]]
    first = nz[0]
    signopts = [[1]]*3
    for i in nz[1:]: signopts[i] = [1,-1]
    for sg in itertools.product(*signopts):
        elems.append((c, sg))
print("elems:", len(elems), flush=True)

def gexp(e, i): return 2*(EXPS[i] - e[0][i])
def lone(rel):
    for i in range(3):
        gs = [gexp(x, i) for x in rel]
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
print(f"{EXPS} relations: {len(rels)}", flush=True)

def elem_val(e):
    c, sg = e
    z = 1
    for i in range(3):
        pr, Re_, Im_ = PR[i]
        if c[i]:
            zz = (Re_ + iu*Im_)**c[i]
            if sg[i] < 0: zz = conjugate(zz)
            z *= zz
    pref = 1
    for i, (pr, _, _) in enumerate(PR):
        pref *= pr**gexp(e, i)
    return pref * expand(sim(expand(z)))
VAL = {e: elem_val(e) for e in elems}

def side_cert(F, i):
    pr, Re_, Im_ = PR[i]
    e = F.subs({Re_: -iu*Im_, pr: 0})
    subs = {}; units = [Im_]; smalls = []
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

killed = 0; alive = []; kills = []
how = Counter()
for idx, rel in enumerate(rels):
    if idx % 500 == 0: print(f"  {idx}/{len(rels)} killed={killed}", flush=True)
    T = expand(sum(g*VAL[e] for e, g in rel))
    ok = True; howrel = Counter()
    for fc in Mul.make_args(factor(T)):
        b, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        if b.is_number or b in (p, q, r): continue
        if parity_odd(b): howrel['parity'] += 1; continue
        certs = [side_cert(b, i) for i in range(3)]
        if any(c and c[0] == 'units' for c in certs):
            howrel['unit-side'] += 1; continue
        if all(c is not None for c in certs) and all(c[1] <= 1 for c in certs):
            howrel['triple-pinch'] += 1; continue
        ok = False
    if ok: killed += 1; kills.append((rel, dict(howrel))); how.update(howrel)
    else: alive.append(rel)
print(f"KILLED {killed}/{len(rels)}  certs: {dict(how)}", flush=True)

def classify(rel):
    rel = sorted(rel)
    slots = [s for (s,c),sg in rel]
    cnt = Counter(slots)
    tw = [s for s,k in cnt.items() if k == 2]
    ln = [s for s,k in cnt.items() if k == 1]
    if len(tw) == 1 and len(ln) == 1:
        tw_s, ln_s = tw[0], ln[0]
        twins = [((s,c),sg) for (s,c),sg in rel if s == tw_s]
        c1, c2 = twins[0][0][1], twins[1][0][1]
        s1, s2 = twins[0][1], twins[1][1]
        flips = frozenset(i for i in range(3) if c1[i] != c2[i] and tw_s[i] > 0)
        lone_pr = frozenset(i for i in range(3) if ln_s[i] > 0)
        unfl = frozenset(i for i in range(3) if tw_s[i] > 0) - flips
        diff = (s1 == -s2)
        if lone_pr == flips and diff:
            # master rule check on powers within flipped primes
            def v2(n):
                s = 0
                while n % 2 == 0: n //= 2; s += 1
                return s
            # composite lone power vector vs twin: instance if per-prime power ratio consistent; approx tag
            return ('twinA', tuple(sorted((ln_s[i], tw_s[i]) for i in flips)))
        if lone_pr == unfl and not diff:
            return ('twinB', tuple(sorted((ln_s[i], tw_s[i]) for i in unfl)))
        return ('twin-unmatched', ln_s, tw_s, tuple(flips), diff)
    if len(set(slots)) == 3:
        return ('tri', tuple(sorted(set(slots))))
    return ('other',)

cov = Counter(classify(rel) for rel, _ in kills)
print("shapes:")
for k, v in sorted(cov.items(), key=str): print("  ", v, k)
pickle.dump({'kills': kills, 'alive': alive}, open(f'sym3ab_{"".join(map(str,EXPS))}.pkl','wb'))
print("DONE", flush=True)
