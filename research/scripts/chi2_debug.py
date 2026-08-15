"""Debug one degeneration point: print p, js, d=ord(2A), b1, b2, Db, and checks."""
from chi2_engine_lib import build, gauss_rep, cpow
from sympy import symbols, expand, I as i_, Poly, re as sre
import itertools, math
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
shapes = build(3, 'imb3_fails.pkl')
# use a shape known to have exceptions: ('m1p','m3p','x1','x2') has (-1,1) pair
found = 0
for nlev, shape, Np, Dp, gens in shapes:
    if found: break
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
    primes = [p for p in range(5, 200) if all(p%k for k in range(2, math.isqrt(p)+1)) and p%4 == 1]
    for p in primes:
        if found: break
        Ag, Bg = gauss_rep(p); t = (2*Ag) % p
        for js in itertools.product(range(1,7), repeat=nlev):
            emin = min(sum(P[k]*js[k] for k in range(nlev)) for P,B,gr in live)
            mins = [(B, gr) for P,B,gr in live if sum(P[k]*js[k] for k in range(nlev)) == emin]
            S = sum((gr % p)*pow(t, sum(B[k]*js[k] for k in range(nlev)), p) for B,gr in mins) % p
            if S: continue
            emin2 = min(sum(B[k]*js[k] for k in range(nlev)) for P,B,gr in live)
            mins2 = [(P, gr) for P,B,gr in live if sum(B[k]*js[k] for k in range(nlev)) == emin2]
            S2 = sum((gr % p)*pow(t, sum(P[k]*js[k] for k in range(nlev)), p) for P,gr in mins2) % p
            if S2: continue
            print("shape", shape, "p =", p, "pi =", (Ag,Bg), "t = 2A =", t, "js =", js)
            print("min set size:", len(mins), "coeffs:", [g for _,g in mins])
            bs = [sum(B[k]*js[k] for k in range(nlev)) for B,_ in mins]
            print("b exponents:", bs, "Db =", abs(bs[0]-bs[1]) if len(bs)==2 else None)
            d = 1; x = t
            while x != 1: x = x*t % p; d += 1
            print("ord(t) =", d, "; Db mod d =", (abs(bs[0]-bs[1]) % d) if len(bs)==2 else None)
            print("t^Db mod p =", pow(t, abs(bs[0]-bs[1]), p) if len(bs)==2 else None)
            found = 1
            break
