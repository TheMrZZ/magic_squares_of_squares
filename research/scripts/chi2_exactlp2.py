"""Exact rational re-certification of the tie-structure LP claims via
Fourier-Motzkin over Fractions.  System: j in R^n, j_k >= 1;
pair (P1,P2): P1.j = P2.j and Pk.j >= P1.j for all other forms.
Triples analogous with two equalities."""
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

def feasible(ineqs, n):
    """Exact phase-1 simplex (Bland) over Fractions.  ineqs: (a, b) with a.j >= b.
    Vars j free but every system includes j_k >= 1, so substitute j = 1 + x, x >= 0:
    a.x >= b - a.1.  Solve min sum(s) s.t. a.x + s >= b', x,s >= 0 feasibility."""
    from fractions import Fraction as F
    rows = []
    for a, b in ineqs:
        b2 = F(b) - sum(F(x) for x in a)
        rows.append(([F(x) for x in a], b2))
    # keep only rows with b2 > 0 as binding; feasibility: exists x>=0 with a.x >= b2 for all rows.
    # Standard form: minimize 1.s ; a.x - t + s = b2 fails... use big-M-free phase 1:
    # a.x >= b2  <=>  a.x - y = b2, y >= 0?? no (y surplus): a.x - y = b2, y>=0.
    # phase-1: a.x - y + z = b2 with artificial z >= 0 (sign-adjusted so z >= 0), min sum z.
    m = len(rows)
    # tableau: columns = x(n) | y(m) | z(m) | rhs
    T = []
    basis = []
    for i,(a,b2) in enumerate(rows):
        row = a[:] + [F(0)]*m + [F(0)]*m + [b2]
        row[n+i] = F(-1)
        if b2 < 0:
            row = [-v for v in row]
        row[n+m+i] = F(1)
        T.append(row); basis.append(n+m+i)
    ncols = n + 2*m
    obj = [F(0)]*(ncols+1)
    for i in range(m):
        obj = [o - t for o, t in zip(obj, T[i])]  # minimize sum z: reduced costs
    # add back non-artificial part: objective = sum z = sum (rhs_i - row_x_y part)
    for j in range(n+m, n+m+m): obj[j] = F(0)
    it = 0
    while True:
        it += 1
        if it > 20000: raise RuntimeError("simplex stall")
        piv = next((j for j in range(ncols) if obj[j] < 0), None)
        if piv is None: break
        best = None; bi = None
        for i in range(m):
            if T[i][piv] > 0:
                r = T[i][ncols]/T[i][piv]
                if best is None or r < best or (r == best and basis[i] < basis[bi]):
                    best = r; bi = i
        if bi is None: break  # unbounded improving direction: feasible
        pr = T[bi]; pv = pr[piv]
        T[bi] = [v/pv for v in pr]; basis[bi] = piv
        for i in range(m):
            if i != bi and T[i][piv] != 0:
                f = T[i][piv]; T[i] = [v - f*w for v, w in zip(T[i], T[bi])]
        if obj[piv] != 0:
            f = obj[piv]; obj = [v - f*w for v, w in zip(obj, T[bi])]
    val = -obj[ncols]
    return val == 0

shapes = build(3, 'imb3_fails.pkl') + build(4, 'imb4_fails.pkl')
print("exact FM re-certification:", flush=True)
allok = True
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
    Pl = sorted(set(P for P,B,g in live))
    assert len(Pl) == len(live), "P-form multiplicity!"  # singletons re-check
    gam = {P: g for P,B,g in live}
    def base_ineqs(mins):
        out = []
        for k in range(nlev):
            e = [0]*nlev; e[k] = 1
            out.append((e, 1))            # j_k >= 1
        P1 = mins[0]
        for Pk in Pl:
            if Pk in mins: continue
            out.append(([Pk[t]-P1[t] for t in range(nlev)], 0))  # Pk.j >= P1.j
        for Pm in mins[1:]:               # equalities as two ineqs
            out.append(([P1[t]-Pm[t] for t in range(nlev)], 0))
            out.append(([Pm[t]-P1[t] for t in range(nlev)], 0))
        return out
    pairs = [ (P1,P2) for P1,P2 in itertools.combinations(Pl,2) if feasible(base_ineqs([P1,P2]), nlev) ]
    tris  = [ 1 for c3 in itertools.combinations(Pl,3) if feasible(base_ineqs(list(c3)), nlev) ]
    coeffs = sorted(tuple(sorted((gam[a],gam[b]))) for a,b in pairs)
    ok = len(pairs) == 1 and len(tris) == 0
    allok &= ok
    print(f"{nlev}-level {shape}: exact pairs={len(pairs)} coeffs={coeffs} triples={len(tris)} {'OK' if ok else 'MISMATCH'}", flush=True)
print("ALL EXACT-CERTIFIED" if allok else "DISCREPANCY vs float LP")
