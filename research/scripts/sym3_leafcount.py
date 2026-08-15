import pickle, itertools
alive = pickle.load(open('sym3_alive.pkl','rb'))
alive_keys = set(rel for rel, fails in alive)
elems = []
for c in itertools.product(range(2), repeat=3):
    if c == (0,0,0): continue
    first = next(i for i,x in enumerate(c) if x)
    signopts = [[1]]*3
    for i in range(3):
        if c[i] and i != first: signopts[i] = [1,-1]
    for sg in itertools.product(*signopts):
        elems.append((c, sg))
def lone(rel):
    for i in range(3):
        gs = [2-2*x[0][i] for x in rel]
        if gs.count(min(gs)) == 1: return True
    return False
def norm_key(trip, sgns):
    key = frozenset(zip(trip, sgns))
    key2 = frozenset((t,-g) for t,g in key)
    return min(key, key2, key=lambda fs: sorted(str(x) for x in fs))
total = dead = 0
for combo in itertools.permutations(range(len(elems)), 4):
    eu, ev, es, ed = [elems[k] for k in combo]
    if lone([es,eu,ev]) or lone([ed,eu,ev]): continue
    for sv, ss, sd in itertools.product((1,-1), repeat=3):
        total += 1
        k1 = norm_key((es,eu,ev), (ss,-1,-sv))
        k2 = norm_key((ed,eu,ev), (sd,-1,sv))
        if k1 not in alive_keys or k2 not in alive_keys: dead += 1
print(f"residual leaves: {total}; killed via dead relation: {dead} ({100*dead/total:.1f}%); remaining: {total-dead}")
