"""General (a,b) grading census: D-elements p^{2a-2al}q^{2b-2be}Im(pi^{4al}chi^{±4be}),
0<=al<=a, 0<=be<=b, (al,be)!=(0,0).  Count leaves killed by the grading lemma."""
import itertools

def census(a, b, cap=None):
    elems = []
    for al in range(a+1):
        for be in range(b+1):
            if (al, be) == (0, 0): continue
            if al == 0 or be == 0: elems.append((al, be, 1))
            else: elems.append((al, be, 1)); elems.append((al, be, -1))
    n = len(elems)
    def pexp(e): return 2*a - 2*e[0]
    def qexp(e): return 2*b - 2*e[1]
    def lone(rel):
        ps = [pexp(x) for x in rel]; qs = [qexp(x) for x in rel]
        return ps.count(min(ps)) == 1 or qs.count(min(qs)) == 1
    total = killed = 0
    resid_rels = set()
    for combo in itertools.permutations(range(n), 4):
        eu, ev, es, ed = [elems[k] for k in combo]
        l1 = lone([es, eu, ev]); l2 = lone([ed, eu, ev])
        total += 8
        if l1 or l2: killed += 8; continue
        for sv, ss, sd in itertools.product((1,-1), repeat=3):
            for trip, sgns in (((es, eu, ev), (ss, -1, -sv)), ((ed, eu, ev), (sd, -1, sv))):
                key = frozenset(zip(trip, sgns))
                key2 = frozenset((t, -g) for t, g in key)
                resid_rels.add(min(key, key2, key=lambda fs: sorted(str(x) for x in fs)))
    print(f"(a,b)=({a},{b}): |D|={n}, leaves={total}, grading-killed={killed} "
          f"({100*killed/total:.1f}%), residual relations={len(resid_rels)}", flush=True)

for ab in ((2,2), (3,2), (3,3), (4,2), (4,3), (4,4)):
    census(*ab)
