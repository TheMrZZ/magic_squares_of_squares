"""Three-prime engine: e = s p q r (all =1 mod 4, distinct).
D-elements: p^{2-2al} q^{2-2be} r^{2-2ga} Im(pi^{4al} chi^{s1*4be} psi^{s2*4ga}),
(al,be,ga) in {0,1}^3 \ {0}, signs on nonzero later coords (canonical: first
nonzero coordinate gets +).  |D| = (27-1)/2 = 13.
Grading kill in any of 3 gradings; then exact sweep over (p,q,r) triples.
"""
import itertools, math
from chi2_engine_lib import gauss_rep, cmul, cpow

elems = []
for al in range(2):
    for be in range(2):
        for ga in range(2):
            if (al,be,ga) == (0,0,0): continue
            # sign choices: each of the later nonzero coordinates after the first
            coords = [al,be,ga]
            first = next(i for i,x in enumerate(coords) if x)
            signopts = [[1]]*3
            for i in range(3):
                if coords[i] and i != first: signopts[i] = [1,-1]
            for s0 in signopts[0]:
                for s1 in signopts[1]:
                    for s2 in signopts[2]:
                        elems.append((al,be,ga,s0,s1,s2))
print("D size:", len(elems))
def gexp(e, i): return 2 - 2*e[i]
def lone(rel):
    for i in range(3):
        gs = [gexp(x, i) for x in rel]
        if gs.count(min(gs)) == 1: return True
    return False

total = killed = 0
residual = []
n = len(elems)
for combo in itertools.permutations(range(n), 4):
    eu, ev, es, ed = [elems[k] for k in combo]
    l1 = lone([es,eu,ev]); l2 = lone([ed,eu,ev])
    total += 8
    if l1 or l2: killed += 8; continue
    for sv, ss, sd in itertools.product((1,-1), repeat=3):
        residual.append((combo, sv, ss, sd))
print(f"leaves {total}, grading-killed {killed} ({100*killed/total:.1f}%), residual {len(residual)}", flush=True)

primes = [p for p in range(5, 120) if all(p%k for k in range(2, math.isqrt(p)+1)) and p%4 == 1]
sat = []; checks = 0
for p, q, r in itertools.permutations(primes, 3):
    reps = {}
    for nm, pr in (('p',p),('q',q),('r',r)):
        A,B = gauss_rep(pr); reps[nm] = cpow((A,B), 4)
    val = {}
    for e in elems:
        al,be,ga,s0,s1,s2 = e
        v = (1,0)
        if al: v = cmul(v, reps['p'] if s0>0 else (reps['p'][0],-reps['p'][1]))
        if be: v = cmul(v, reps['q'] if s1>0 else (reps['q'][0],-reps['q'][1]))
        if ga: v = cmul(v, reps['r'] if s2>0 else (reps['r'][0],-reps['r'][1]))
        val[e] = v[1] * p**(2-2*al) * q**(2-2*be) * r**(2-2*ga)
    for combo, sv, ss, sd in residual:
        eu, ev, es, ed = [elems[k] for k in combo]
        checks += 1
        if ss*val[es] == val[eu] + sv*val[ev] and sd*val[ed] == val[eu] - sv*val[ev]:
            sat.append((p,q,r,combo,sv,ss,sd)); print("SATISFIED:", sat[-1], flush=True)
print(f"TOTAL checks {checks}; satisfied: {len(sat)}")
