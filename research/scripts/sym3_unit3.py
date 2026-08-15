"""Full-coordinate side profiles for the 600 (1,1,1) relations."""
from sympy import symbols, I as iu, expand, factor, Mul, Pow, Poly, im as sim, conjugate
import itertools, pickle
from collections import Counter

p, q, r = symbols('p q r', positive=True)
R, I, X, Y, U, V = symbols('R I X Y U V', real=True)
PR = [(p, R, I), (q, X, Y), (r, U, V)]
CD = {0: symbols('A0 B0', real=True), 1: symbols('A1 B1', real=True), 2: symbols('A2 B2', real=True)}

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

def side_profile(F, i):
    pr, Re_, Im_ = PR[i]
    e = F.subs({Re_: -iu*Im_, pr: 0})
    subs = {}
    gens = []
    for j in range(3):
        if j == i: continue
        prj, Rj, Ij = PR[j]
        a, b = CD[j]
        t = a + iu*b
        subs[Rj] = expand((t**4 + conjugate(t)**4)/2)
        subs[Ij] = expand((t**4 - conjugate(t)**4)/(2*iu))
        subs[prj] = a**2 + b**2
        gens += [a, b]
    e = expand(e.subs(subs))
    if e == 0: return None
    prof = []
    for fc in Mul.make_args(factor(e)):
        b_, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        if b_.is_number or b_ == Im_: continue
        pl = Poly(b_, *gens)
        d = pl.total_degree()
        if len(pl.as_dict()) == 1:
            prof.extend([0.5]*d)
        else:
            prof.append(d/2)
    return max(prof) if prof else 0

import signal
class TO(Exception): pass
def hdl(sig, frm): raise TO()
signal.signal(signal.SIGALRM, hdl)
cnt = Counter()
store = []
done = 0
for rel in rels:
    done += 1
    if done % 20 == 0:
        print(f"...{done}", flush=True)
        pickle.dump(store, open('sym3_profile_partial.pkl','wb'))
    T = expand(sum(g*VAL[e] for e, g in rel))
    profs = []
    signal.alarm(30)
    try:
        fct = factor(T)
    except TO:
        store.append((rel, 'TIMEOUT')); cnt['TIMEOUT'] += 1; signal.alarm(0); continue
    signal.alarm(0)
    for fc in Mul.make_args(fct):
        b_, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        if b_.is_number or b_ in (p, q, r): continue
        vv = b_.subs({R:1, X:1, U:1, p:1, q:1, r:1, I:0, Y:0, V:0})
        if vv.is_integer and int(vv) % 2 == 1: continue
        signal.alarm(45)
        try:
            profs.append(tuple(side_profile(b_, i) for i in range(3)))
        except TO:
            profs.append('SLOW')
        signal.alarm(0)
    key = tuple(sorted(map(str, profs)))
    cnt[key] += 1
    store.append((rel, key))
print("per-relation side max-core exponent census:")
for k, v in cnt.most_common(20): print(v, k)
pickle.dump(store, open('sym3_profile.pkl','wb'))
