"""Recompute the phase-sum exception points and evaluate c exactly there."""
from chi2_engine_lib import build, gauss_rep, cpow, eval_gauss_polyQ, norm2_polyQ
from sympy import symbols, I as i_
import itertools, math
Qsym = symbols('Q', positive=True)
shapes = build(3, 'imb3_fails.pkl') + build(4, 'imb4_fails.pkl')
primes = [p for p in range(5, 200) if all(p%k for k in range(2, math.isqrt(p)+1)) and p%4 == 1]

def valforms(cpdict_live, js, side):
    pass

zero_c = []
depths = []
total_exc = 0
from sympy import expand, Poly, re as sre, im as sim
def conj_expr(e, nlev):
    subs1 = []; subs2 = []
    ts = symbols(f'_t1:{nlev+1}')
    Zs = symbols(' '.join(f'Z{k} Z{k}b' for k in range(1, nlev+1)))
    for k in range(1, nlev+1):
        Zk, Zkb = Zs[2*(k-1)], Zs[2*(k-1)+1]
        subs1 += [(Zk, ts[k-1]), (Zkb, Zk)]
        subs2 += [(ts[k-1], Zkb)]
    return e.subs(subs1).subs(subs2).subs(i_, -i_)

for nlev, shape, Np, Dp, gens in shapes:
    Ne = Np.as_expr(); De = Dp.as_expr()
    A = expand(Ne / Qsym)
    c = expand(A*conj_expr(A, nlev) - De*conj_expr(De, nlev))
    cp = Poly(c, *[g for g in gens if str(g) != 'Q'])
    cg = cp.gens
    groups = {}
    for mono, coef in cp.as_dict().items():
        P = [0]*nlev; B = [0]*nlev
        for g, e in zip(cg, mono):
            if e == 0: continue
            name = str(g)
            if name.startswith('Z'):
                k = int(name[1])
                if name.endswith('b'): B[k-1] += 4*e
                else: P[k-1] += 4*e
            elif name.startswith('N'):
                k = int(name[1]); P[k-1] += 2*e; B[k-1] += 2*e
        key = (tuple(P), tuple(B))
        groups[key] = groups.get(key, 0) + coef
    live = [(P, B, int(sre(v))) for (P, B), v in groups.items() if v != 0]
    for p in primes:
        Ag, Bg = gauss_rep(p); t = (2*Ag) % p
        pi4 = cpow((Ag, Bg), 4)
        for js in itertools.product(range(1,7), repeat=nlev):
            emin = min(sum(P[k]*js[k] for k in range(nlev)) for P,B,gr in live)
            S = sum((gr % p)*pow(t, sum(B[k]*js[k] for k in range(nlev)), p)
                    for P,B,gr in live if sum(P[k]*js[k] for k in range(nlev)) == emin) % p
            if S: continue
            emin2 = min(sum(B[k]*js[k] for k in range(nlev)) for P,B,gr in live)
            S2 = sum((gr % p)*pow(t, sum(P[k]*js[k] for k in range(nlev)), p)
                     for P,B,gr in live if sum(B[k]*js[k] for k in range(nlev)) == emin2) % p
            if S2: continue
            total_exc += 1
            # exact c via group sum: c = sum gr * pi^{pe} * pibar^{be}
            cr = 0; ci = 0
            from chi2_engine_lib import cmul
            for P,B,gr in live:
                pe = sum(P[k]*js[k] for k in range(nlev))
                be = sum(B[k]*js[k] for k in range(nlev))
                v = cmul(cpow((Ag, Bg), pe), cpow((Ag, -Bg), be))
                cr += gr*v[0]; ci += gr*v[1]
            assert ci == 0, (shape, p, js, ci)
            if cr == 0:
                zero_c.append((nlev, shape, p, js))
                print("C=0 !!", nlev, shape, p, js, flush=True)
            else:
                v = 0; x = cr
                while x % p == 0: x //= p; v += 1
                depth = v - emin  # e_min in pi-units; v_p = v_pi for real c
                depths.append(depth)
from collections import Counter
print("exceptions found:", total_exc, "; c=0 points:", len(zero_c))
print("escape-depth distribution (v_p(c) - e_min):", dict(Counter(depths)))
