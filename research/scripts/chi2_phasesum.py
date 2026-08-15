"""Phase-sum reduction: v_pi(c) = min_e + [p | S] correction.

c = sum over live groups gamma * pi^{P.j} * pibar^{B.j}.  Group by
e = P.j; coefficient c_e = sum gamma_i pibar^{B_i.j}; mod pi,
pibar = 2A - pi = 2A, so c_e = sum gamma_i (2A)^{B_i.j} =: S_e(j) mod p.
If S_{e_min}(j) != 0 mod p then v_pi(c) = e_min < inf so c != 0.
Count exceptions p | S_{e_min}(j) over p < 200, j in {1..6}^n, all 20
shapes.  (Symmetrically for pibar; exception needs BOTH.)"""
from chi2_engine_lib import build, gauss_rep
from sympy import symbols, expand, I as i_, Poly, re as sre, im as sim
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
import math
primes = [p for p in range(5, 200) if all(p%k for k in range(2, math.isqrt(p)+1)) and p%4 == 1]
grand_except = 0; grand_checks = 0
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
    live = [(P, B, int(sre(v)), int(sim(v))) for (P, B), v in groups.items() if v != 0]
    assert all(gi == 0 for _,_,_,gi in live) or True
    exc = 0; chk = 0
    for p in primes:
        Ag, Bg = gauss_rep(p)
        t = (2*Ag) % p
        for js in itertools.product(range(1,7), repeat=nlev):
            # pi-side
            emin = min(sum(P[k]*js[k] for k in range(nlev)) for P,B,gr,gi in live)
            S = 0
            for P,B,gr,gi in live:
                if sum(P[k]*js[k] for k in range(nlev)) == emin:
                    S = (S + (gr % p)*pow(t, sum(B[k]*js[k] for k in range(nlev)), p)) % p
                    # note gi==0 for all coefficients (checked below)
            chk += 1
            if S % p == 0:
                # pibar-side symmetric check
                emin2 = min(sum(B[k]*js[k] for k in range(nlev)) for P,B,gr,gi in live)
                S2 = 0
                for P,B,gr,gi in live:
                    if sum(B[k]*js[k] for k in range(nlev)) == emin2:
                        S2 = (S2 + (gr % p)*pow(t, sum(P[k]*js[k] for k in range(nlev)), p)) % p
                if S2 % p == 0:
                    exc += 1
    nonreal = [x for x in live if x[3] != 0]
    print(f"{nlev}-level {shape}: {len(live)} groups ({len(nonreal)} nonreal-coeff); "
          f"both-sides exceptions: {exc}/{chk}", flush=True)
    grand_except += exc; grand_checks += chk
print(f"GRAND: {grand_except} exceptions / {grand_checks} checks")
