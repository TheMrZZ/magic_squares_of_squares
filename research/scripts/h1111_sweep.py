"""Four-prime sweep: residual leaves over quadruples of primes < 40."""
import itertools, math
from chi2_engine_lib import gauss_rep, cmul, cpow
elems = []
for c in itertools.product(range(2), repeat=4):
    if c == (0,0,0,0): continue
    first = next(i for i,x in enumerate(c) if x)
    signopts = [[1]]*4
    for i in range(4):
        if c[i] and i != first: signopts[i] = [1,-1]
    for sg in itertools.product(*signopts):
        elems.append((c, sg))
def lone(rel):
    for i in range(4):
        gs = [2 - 2*x[0][i] for x in rel]
        if gs.count(min(gs)) == 1: return True
    return False
residual = []
n = len(elems)
for combo in itertools.permutations(range(n), 4):
    eu, ev, es, ed = [elems[k] for k in combo]
    if lone([es,eu,ev]) or lone([ed,eu,ev]): continue
    for sv, ss, sd in itertools.product((1,-1), repeat=3):
        residual.append((combo, sv, ss, sd))
print(f"residual {len(residual)}", flush=True)
primes = [5, 13, 17, 29, 37]
sat = []; checks = 0
for quad in itertools.permutations(primes, 4):
    reps = []
    for pr in quad:
        A,B = gauss_rep(pr); reps.append(cpow((A,B),4))
    val = {}
    for e in elems:
        c, sg = e
        v = (1,0); coef = 1
        for i in range(4):
            if c[i]:
                z = reps[i]
                v = cmul(v, z if sg[i]>0 else (z[0],-z[1]))
            else:
                coef *= quad[i]**2
        val[e] = v[1] * coef
    for combo, sv, ss, sd in residual:
        eu, ev, es, ed = [elems[k] for k in combo]
        checks += 1
        if ss*val[es] == val[eu] + sv*val[ev] and sd*val[ed] == val[eu] - sv*val[ev]:
            sat.append((quad,combo,sv,ss,sd)); print("SATISFIED:", sat[-1], flush=True)
    print(f"{quad} done, checks={checks}", flush=True)
print(f"TOTAL checks {checks}; satisfied: {len(sat)}")
