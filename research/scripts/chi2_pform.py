"""P-form multiplicities: any P-form with >= 2 live groups? If a multi-group
P-form can be minimal, its internal phase sum is another vanishing channel."""
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
    byP = {}
    for P, B, g in live: byP.setdefault(P, []).append((B, g))
    multi = {P: v for P, v in byP.items() if len(v) > 1}
    # which multi P-forms can be minimal (alone among P-forms)?
    minimal_multi = []
    for P1 in multi:
        others = [P for P in byP if P != P1]
        A_ub = [[-(Pk[t]-P1[t]) for t in range(nlev)] for Pk in others]
        res = linprog([0]*nlev, A_ub=A_ub, b_ub=[0]*len(A_ub),
                      bounds=[(1, None)]*nlev, method='highs')
        if res.status == 0:
            gs = [g for B, g in multi[P1]]
            minimal_multi.append((P1, gs))
    print(f"{nlev}-level {shape}: multi-group P-forms {len(multi)}, "
          f"minimal-feasible multi: {minimal_multi}", flush=True)
