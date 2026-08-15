"""(2,2) engine: leaf enumeration + grading kills.

D-elements indexed by (alpha, beta) in {0,1,2}^2 \ {(0,0)}, beta signed
(sgn=+1: chi^{4b}, sgn=-1: chibar^{4b}); on axes (alpha=0 or beta=0) only
one sign.  Element value: p^{4-2a} q^{4-2b} * Im(pi^{4a} chi^{4b sgn}).
Leaf: distinct e_u, e_v, e_s, e_d with sign choices (su=+1 wlog, sv,ss,sd):
  ss*d_s = d_u + sv*d_v      (R1)
  sd*d_d = d_u - sv*d_v      (R2)
First-pass kills per relation (3-term sum = 0):
  GRADE-p: group terms by p-exponent 4-2a. If the minimal p-layer has ONE
  term: that term's Im(...) would need v_p > 0 -- Im(pi^{4a}chi^{4b}) is
  coprime to p when a=2 (pure pi^8-part has Im coprime... careful) --
  record as PENDING-P (needs the bridge argument) vs if min layer has 2-3
  terms: congruence condition mod p^gap -- deeper analysis.
  Same for q.  Here we just CLASSIFY leaves by their (p,q) grading patterns
  to see the shape of the problem.
"""
import itertools
from collections import Counter

elems = []  # (alpha, beta, sgn)
for a in range(3):
    for b in range(3):
        if (a, b) == (0, 0): continue
        if a == 0 or b == 0: elems.append((a, b, 1))
        else: elems.append((a, b, 1)); elems.append((a, b, -1))
assert len(elems) == 12

def pexp(e): return 4 - 2*e[0]
def qexp(e): return 4 - 2*e[1]

patterns = Counter()
total = 0
for combo in itertools.permutations(range(12), 4):
    eu, ev, es, ed = [elems[k] for k in combo]
    for sv, ss, sd in itertools.product((1,-1), repeat=3):
        total += 1
        # classify each relation by p-grading and q-grading of its 3 terms
        def grade(rel):  # rel = list of elements
            ps = [pexp(e) for e in rel]; qs = [qexp(e) for e in rel]
            mp = min(ps); mq = min(qs)
            return (tuple(sorted(x - mp for x in ps)), tuple(sorted(x - mq for x in qs)))
        g1 = grade([es, eu, ev]); g2 = grade([ed, eu, ev])
        patterns[(g1, g2)] += 1
print(f"total leaves: {total}")
print(f"distinct grading patterns: {len(patterns)}")
# which patterns have a LONE minimal term in some grading? (=> strong kill route)
lone = sum(c for k, c in patterns.items()
           if any(g.count(0) == 1 for gg in k for g in gg))
print(f"leaves with a lone-minimal layer in some relation/grading: {lone} ({100*lone/total:.1f}%)")
for k, c in patterns.most_common(8): print(c, k)
