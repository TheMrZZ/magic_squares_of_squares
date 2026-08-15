"""Mixed three-prime engine: e = s p^2 q r.
D-elements: p^{4-2al} q^{2-2be} r^{2-2ga} Im(pi^{4al} chi^{±4be} psi^{±4ga}),
al in {0,1,2}, be,ga in {0,1}, (al,be,ga)!=0.  |D| = (5*3*3-1)/2 = 22.
Grading census + exact sweep."""
import itertools, math
from chi2_engine_lib import gauss_rep, cmul, cpow

elems = []
for al in range(3):
    for be in range(2):
        for ga in range(2):
            if (al,be,ga) == (0,0,0): continue
            coords = [al,be,ga]
            first = next(i for i,x in enumerate(coords) if x)
            signopts = [[1]]*3
            for i in range(3):
                if coords[i] and i != first: signopts[i] = [1,-1]
            for s0 in signopts[0]:
                for s1 in signopts[1]:
                    for s2 in signopts[2]:
                        elems.append((al,be,ga,s0,s1,s2))
print("D size:", len(elems), flush=True)
EXP = [4, 2, 2]
def gexp(e, i): return EXP[i] - 2*e[i]
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
    total += 8
    if lone([es,eu,ev]) or lone([ed,eu,ev]): killed += 8; continue
    for sv, ss, sd in itertools.product((1,-1), repeat=3):
        residual.append((combo, sv, ss, sd))
print(f"leaves {total}, grading-killed {killed} ({100*killed/total:.1f}%), residual {len(residual)}", flush=True)

primes = [p for p in range(5, 75) if all(p%k for k in range(2, math.isqrt(p)+1)) and p%4 == 1]
sat = []; checks = 0
for p, q, r in itertools.permutations(primes, 3):
    A,B = gauss_rep(p); pi4 = cpow((A,B),4); pi8 = cmul(pi4, pi4)
    Aq,Bq = gauss_rep(q); ch4 = cpow((Aq,Bq),4)
    Ar,Br = gauss_rep(r); ps4 = cpow((Ar,Br),4)
    val = {}
    for e in elems:
        al,be,ga,s0,s1,s2 = e
        v = (1,0)
        if al:
            pp = pi4 if al == 1 else pi8
            v = cmul(v, pp if s0>0 else (pp[0],-pp[1]))
        if be: v = cmul(v, ch4 if s1>0 else (ch4[0],-ch4[1]))
        if ga: v = cmul(v, ps4 if s2>0 else (ps4[0],-ps4[1]))
        val[e] = v[1] * p**(4-2*al) * q**(2-2*be) * r**(2-2*ga)
    for combo, sv, ss, sd in residual:
        eu, ev, es, ed = [elems[k] for k in combo]
        checks += 1
        if ss*val[es] == val[eu] + sv*val[ev] and sd*val[ed] == val[eu] - sv*val[ev]:
            sat.append((p,q,r,combo,sv,ss,sd)); print("SATISFIED:", sat[-1], flush=True)
print(f"TOTAL checks {checks}; satisfied: {len(sat)}")
