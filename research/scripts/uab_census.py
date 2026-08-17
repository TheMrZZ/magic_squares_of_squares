"""Certificate census for general (a,b): do the four Theorem-H layers close
higher exponent grids, and how do the residue patterns stabilize?

For each grid (a,b): enumerate classes (j,k,sg), leaves, grading kill.
For survivors, extract the PATTERN of each relation's minimal p-layer:
the multiset of (k, sg, coeff) at the tying j — shifted so min k = 0 —
plus the same on the q-side. Patterns, not leaves, feed the certificate
computation, so the count stays small at every grid.
"""
import itertools, pickle, sys
from collections import Counter

def classes(a, b):
    out = []
    for j in range(a+1):
        for k in range(b+1):
            if (j, k) == (0, 0): continue
            sgs = (1,) if (j == 0 or k == 0) else (1, -1)
            for sg in sgs:
                out.append((j, k, sg))
    return out

def run(a, b):
    els = classes(a, b)
    n = len(els)
    pexp = {e: 2*(a - e[0]) for e in els}
    qexp = {e: 2*(b - e[1]) for e in els}
    def lone(rel):
        for exp in (pexp, qexp):
            vs = [exp[e] for e, _ in rel]
            m = min(vs)
            if vs.count(m) == 1: return True
        return False
    total = killed = 0
    pat1 = Counter()   # (p-side pattern of R1, p-side pattern of R2)
    surv = 0
    for combo in itertools.combinations(range(n), 4):
        for perm in itertools.permutations(combo):
            ea, eb, ec, ed = [els[i] for i in perm]
            for e2, e3, e4 in itertools.product((1,-1), repeat=3):
                total += 1
                r1 = [(ec, e3), (ed, e4), (ea, -2)]
                r2 = [(ec, e3), (ed, -e4), (eb, -2*e2)]
                if lone(r1) or lone(r2):
                    killed += 1
                    continue
                surv += 1
                def ppat(rel):
                    m = min(pexp[e] for e, _ in rel)
                    lay = sorted((e[1], e[2], g) for e, g in rel if pexp[e] == m)
                    k0 = min(k for k, _, _ in lay)
                    return tuple((k - k0, sg, g) for k, sg, g in lay)
                pat1[(ppat(r1), ppat(r2))] += 1
    return total, killed, surv, pat1

grids = [(2,2), (3,2), (2,3), (3,3)]
allpats = {}
for (a, b) in grids:
    total, killed, surv, pats = run(a, b)
    allpats[(a,b)] = pats
    print(f"({a},{b}): {total} leaves, grading-killed {killed} ({100*killed/total:.1f}%), "
          f"survivors {surv}, distinct p-layer pattern pairs: {len(pats)}")
# stabilization: which patterns at (3,3) are new vs (2,2)?
base = set(allpats[(2,2)])
for g in grids[1:]:
    new = set(allpats[g]) - base
    print(f"pattern pairs in {g} not present in (2,2): {len(new)} / {len(allpats[g])}")
pickle.dump(allpats, open('uab_patterns.pkl', 'wb'))
