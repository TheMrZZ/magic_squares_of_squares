"""Collapse (1,1,1) residual leaves to distinct 3-term relations."""
import itertools
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
        gs = [2 - 2*x[0][i] for x in rel]
        if gs.count(min(gs)) == 1: return True
    return False
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
print("distinct residual (1,1,1) relations:", len(rels))
# classify by the multiset of grading vectors
from collections import Counter
shapes = Counter()
for rel in rels:
    sig = tuple(sorted(tuple(t[0]) for t, g in rel))
    shapes[sig] += 1
print("grading-shape classes:", len(shapes))
for k, v in shapes.most_common(12): print(v, k)
