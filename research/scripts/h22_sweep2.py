"""(2,2) pass 2A: exact sweep of residual leaves over (p,q) pairs."""
import itertools, math
from chi2_engine_lib import gauss_rep, cmul, cpow

elems = []
for a in range(3):
    for b in range(3):
        if (a, b) == (0, 0): continue
        if a == 0 or b == 0: elems.append((a, b, 1))
        else: elems.append((a, b, 1)); elems.append((a, b, -1))

def pexp(e): return 4 - 2*e[0]
def qexp(e): return 4 - 2*e[1]

# residual leaves: no lone-minimal layer in any relation/grading
def lone(rel):
    ps = [pexp(e) for e in rel]; qs = [qexp(e) for e in rel]
    return ps.count(min(ps)) == 1 or qs.count(min(qs)) == 1

residual = []
for combo in itertools.permutations(range(12), 4):
    eu, ev, es, ed = [elems[k] for k in combo]
    if lone([es, eu, ev]) or lone([ed, eu, ev]): continue
    for sv, ss, sd in itertools.product((1,-1), repeat=3):
        residual.append((combo, sv, ss, sd))
print(f"residual leaves: {len(residual)}", flush=True)

primes = [p for p in range(5, 1000) if all(p%k for k in range(2, math.isqrt(p)+1)) and p%4 == 1]
sat = []
checks = 0
for p in primes:
    Ap, Bp = gauss_rep(p); pi4 = cpow((Ap, Bp), 4); pi8 = cmul(pi4, pi4)
    for q in primes:
        if q == p: continue
        Aq, Bq = gauss_rep(q); ch4 = cpow((Aq, Bq), 4); ch8 = cmul(ch4, ch4)
        # element values (s^2 = 1 wlog)
        val = {}
        for e in elems:
            a, b, sg = e
            pp = {0: (1,0), 1: pi4, 2: pi8}[a]
            cc = {0: (1,0), 1: ch4, 2: ch8}[b]
            if sg < 0: cc = (cc[0], -cc[1])
            v = cmul(pp, cc)[1] * p**(4-2*a) * q**(4-2*b)
            val[e] = v
        for combo, sv, ss, sd in residual:
            eu, ev, es, ed = [elems[k] for k in combo]
            checks += 1
            if ss*val[es] == val[eu] + sv*val[ev] and sd*val[ed] == val[eu] - sv*val[ev]:
                sat.append((p, q, combo, sv, ss, sd))
                print("SATISFIED:", sat[-1], flush=True)
    print(f"p={p} done, checks={checks}", flush=True)
print(f"TOTAL checks {checks}; satisfied leaves: {len(sat)}")
