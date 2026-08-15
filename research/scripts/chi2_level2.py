"""Level-2 leading analysis for the 12 cancelling-pair shapes.

On the tie hyperplane H: P1.j = P2.j (the unique feasible pair, coeffs
-1/+1, which cancels identically), c = sum of remaining groups.  Restricted
to H, find which minimal sets of min(P.j, B.j) are feasible (exact simplex
over Fractions with the equality constraint).  Classify: unit singleton /
conjugate pair with real unit gamma (both give c != 0 by valuation) vs
cancelling configurations (would need level 3)."""
from chi2_engine_lib import build
from sympy import symbols, expand, I as i_, Poly, re as sre
from fractions import Fraction
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

def feasible(ineqs, eqs, n):
    """exact phase-1 simplex: ineqs a.j >= b, eqs a.j = 0, j >= 1."""
    from fractions import Fraction as F
    rows = []
    for a, b in ineqs:
        rows.append(([F(x) for x in a], F(b) - sum(F(x) for x in a), False))
    for a in eqs:
        rows.append(([F(x) for x in a], -sum(F(x) for x in a), True))
    # substitute j = 1 + x, x >= 0. equality rows: a.x = b2 (both directions)
    ineq2 = []
    for a, b2, iseq in rows:
        ineq2.append((a, b2))
        if iseq: ineq2.append(([-v for v in a], -b2))
    m = len(ineq2)
    T = []; basis = []
    for i,(a,b2) in enumerate(ineq2):
        row = list(a) + [F(0)]*m + [F(0)]*m + [b2]
        row[n+i] = F(-1)
        if b2 < 0: row = [-v for v in row]
        row[n+m+i] = F(1)
        T.append(row); basis.append(n+m+i)
    ncols = n + 2*m
    obj = [F(0)]*(ncols+1)
    for i in range(m):
        obj = [o - t for o, t in zip(obj, T[i])]
    for j in range(n+m, n+m+m): obj[j] = F(0)
    it = 0
    while True:
        it += 1
        if it > 50000: raise RuntimeError("stall")
        piv = next((j for j in range(ncols) if obj[j] < 0), None)
        if piv is None: break
        best = None; bi = None
        for i in range(m):
            if T[i][piv] > 0:
                r = T[i][ncols]/T[i][piv]
                if best is None or r < best or (r == best and basis[i] < basis[bi]):
                    best = r; bi = i
        if bi is None: break
        pr = T[bi]; pv = pr[piv]
        T[bi] = [v/pv for v in pr]; basis[bi] = piv
        for i in range(m):
            if i != bi and T[i][piv] != 0:
                f = T[i][piv]; T[i] = [v - f*w for v, w in zip(T[i], T[bi])]
        if obj[piv] != 0:
            f = obj[piv]; obj = [v - f*w for v, w in zip(obj, T[bi])]
    return -obj[ncols] == 0

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
    # find the unique feasible leading pair (level-1)
    Pl = [P for P,B,g in live]
    pair = None
    for a, b in itertools.combinations(range(len(live)), 2):
        P1, P2 = Pl[a], Pl[b]
        if P1 == P2: continue
        others = [([Pl[k][t]-P1[t] for t in range(nlev)], 0) for k in range(len(live)) if k not in (a,b)]
        if feasible(others, [[P1[t]-P2[t] for t in range(nlev)]], nlev):
            pair = (a, b); break
    g1, g2 = live[pair[0]][2], live[pair[1]][2]
    if sorted((g1,g2)) != [-1, 1]:
        print(f"{nlev}-level {shape}: (1,2)-shape, already closed", flush=True); continue
    P1 = live[pair[0]][0]; P2 = live[pair[1]][0]
    Hdir = [P1[t]-P2[t] for t in range(nlev)]
    rest = [live[k] for k in range(len(live)) if k not in pair]
    # level 2: on H, which single groups can minimize min over rest of min(P.j,B.j)?
    # For each candidate group G and each side (P or B as the achieving form):
    # feasibility: chosen form f satisfies f.j <= all forms of all rest groups (both P and B), on H.
    surv = []
    for idx, (P, B, g) in enumerate(rest):
        for f in (P, B):
            cons = []
            for (P3, B3, g3) in rest:
                for f3 in (P3, B3):
                    if f3 == f: continue
                    cons.append(([f3[t]-f[t] for t in range(nlev)], 0))
            if feasible(cons, [Hdir], nlev):
                surv.append((idx, g, 'P' if f is P else 'B'))
    from collections import Counter
    print(f"{nlev}-level {shape}: level-2 feasible minimal singles: {len(surv)}; coeffs {sorted(set(g for _,g,_ in surv))}", flush=True)
