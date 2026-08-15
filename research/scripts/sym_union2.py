import pickle, itertools
from sympy import symbols
alive2 = pickle.load(open('sym22_alive2.pkl','rb'))
prof = pickle.load(open('sym22_profile.pkl','rb'))
zk = pickle.load(open('sym22_zeroside_killed.pkl','rb'))
dead = set(r for r, _ in prof) - set(r for r, f in alive2)
for rel, (cps, cqs) in prof:
    if not cps or cps[0] is None or cqs[0] is None: continue
    hp, hq = cps[0], cqs[0]
    if hp and hq and min(hp, hq) <= 0.5 and max(hp, hq) < 2: dead.add(rel)
dead |= set(zk)
print("total dead relations:", len(dead), "/ 216")
elems = []
for a in range(3):
    for b in range(3):
        if (a, b) == (0, 0): continue
        if a == 0 or b == 0: elems.append((a, b, 1))
        else: elems.append((a, b, 1)); elems.append((a, b, -1))
def pexp(e): return 4 - 2*e[0]
def qexp(e): return 4 - 2*e[1]
def lone(rel):
    ps = [pexp(x) for x in rel]; qs = [qexp(x) for x in rel]
    return ps.count(min(ps)) == 1 or qs.count(min(qs)) == 1
def norm_key(trip, sgns):
    key = frozenset(zip(trip, sgns))
    key2 = frozenset((t,-g) for t,g in key)
    return min(key, key2, key=lambda fs: sorted(str(x) for x in fs))
total = deadleaf = 0
for combo in itertools.permutations(range(12), 4):
    eu, ev, es, ed = [elems[k] for k in combo]
    if lone([es, eu, ev]) or lone([ed, eu, ev]): continue
    for sv, ss, sd in itertools.product((1,-1), repeat=3):
        total += 1
        k1 = norm_key((es,eu,ev),(ss,-1,-sv)); k2 = norm_key((ed,eu,ev),(sd,-1,sv))
        if k1 in dead or k2 in dead: deadleaf += 1
print(f"residual leaves {total}; dead {deadleaf}; remaining {total-deadleaf}")
print(f"TOTAL (2,2) coverage: {88832 + deadleaf} / 95040 = {100*(88832+deadleaf)/95040:.2f}%")
