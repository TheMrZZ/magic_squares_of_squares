"""Tie-pair feasibility lemma: for each shape, which PAIRS of valuation
groups can jointly achieve the pi-minimum for some real orbit weights
j >= 1?  LP feasibility: (P1-P2).j = 0, (Pk-P1).j >= 0 for all k, j >= 1.
Lemma target: every feasible leading pair has gamma1 + gamma2 = 0."""
from chi2_engine_lib import build
from sympy import symbols, expand, I as i_, Poly, re as sre
from scipy.optimize import linprog
import itertools
Qsym = symbols('Q', positive=True)
def conj_expr(e, nlev):
    subs1 = []; subs2 = []
    ts = symbols(f'_t1:{nlev+1}')
    Zs = symbols(' '.join(f'Z{k} Z{k}b' for k in range(1, nlev+1)))
    for k in range(1, nlev+1):
        Zk, Zkb = Zs[2*(k-1)], Zs[2*(k-1)+1]
        subs1 += [(Zk, ts[k-1]), (Zkb, Zk)]
        subs2 += [(ts[k-1], Zkb)]
    return e.subs(subs1).subs(subs2).subs(i_, -i_)
shapes = build(3, 'imb3_fails.pkl') + build(4, 'imb4_fails.pkl')
allgood = True
for nlev, shape, Np, Dp, gens in shapes:
    A = expand(Np.as_expr() / Qsym)
    c = expand(A*conj_expr(A, nlev) - Dp.as_expr()*conj_expr(Dp.as_expr(), nlev))
    cp = Poly(c, *[g for g in gens if str(g) != 'Q'])
    groups = {}
    for mono, coef in cp.as_dict().items():
        P = [0]*nlev; B = [0]*nlev
        for g, e in zip(cp.gens, mono):
            if e == 0: continue
            name = str(g)
            if name.startswith('Z'):
                k = int(name[1])
                if name.endswith('b'): B[k-1] += 4*e
                else: P[k-1] += 4*e
            elif name.startswith('N'):
                k = int(name[1]); P[k-1] += 2*e; B[k-1] += 2*e
        groups[(tuple(P), tuple(B))] = groups.get((tuple(P), tuple(B)), 0) + coef
    live = [(P, B, int(sre(v))) for (P, B), v in groups.items() if v != 0]
    Ps = [P for P,B,g in live]
    bad = []
    feas_pairs = []
    for a, b in itertools.combinations(range(len(live)), 2):
        P1, P2 = Ps[a], Ps[b]
        if P1 == P2: continue
        # feasibility: strict interior — require (Pk-P1).j >= 0.001 for k not in {a,b}? no:
        # ties among MORE groups allowed; here just pairwise joint minimality
        A_eq = [[P1[k]-P2[k] for k in range(nlev)]]; b_eq = [0]
        A_ub = [[-(live[k2][0][t]-P1[t]) for t in range(nlev)] for k2 in range(len(live)) if k2 not in (a,b)]
        b_ub = [0]*len(A_ub)
        res = linprog([0]*nlev, A_ub=A_ub or None, b_ub=b_ub or None,
                      A_eq=A_eq, b_eq=b_eq, bounds=[(1, None)]*nlev, method='highs')
        if res.status == 0:
            g1, g2 = live[a][2], live[b][2]
            feas_pairs.append((g1, g2))
            if g1 + g2 != 0: bad.append((P1, P2, g1, g2))
    # triples: can 3 distinct P-forms jointly achieve the minimum?
    tri_feas = 0
    distinctP = {}
    for idx,(P,B,g) in enumerate(live): distinctP.setdefault(P, []).append(idx)
    Pl = list(distinctP)
    for a3, b3, c3 in itertools.combinations(range(len(Pl)), 3):
        P1, P2, P3 = Pl[a3], Pl[b3], Pl[c3]
        A_eq = [[P1[k]-P2[k] for k in range(nlev)], [P1[k]-P3[k] for k in range(nlev)]]
        b_eq = [0, 0]
        others = [P for P in Pl if P not in (P1, P2, P3)]
        A_ub = [[-(Pk[t]-P1[t]) for t in range(nlev)] for Pk in others]
        res = linprog([0]*nlev, A_ub=A_ub or None, b_ub=[0]*len(A_ub) or None,
                      A_eq=A_eq, b_eq=b_eq, bounds=[(1, None)]*nlev, method='highs')
        if res.status == 0: tri_feas += 1
    print(f"   triple-ties feasible: {tri_feas}", flush=True)
    from collections import Counter
    print(f"{nlev}-level {shape}: feasible leading pairs {len(feas_pairs)}, "
          f"coeff combos {dict(Counter(tuple(sorted((x,y))) for x,y in feas_pairs))}, "
          f"NON-CANCELLING: {len(bad)}", flush=True)
    if bad: allgood = False; print("   bad:", bad[:4])
print("LEMMA HOLDS" if allgood else "LEMMA FAILS")
