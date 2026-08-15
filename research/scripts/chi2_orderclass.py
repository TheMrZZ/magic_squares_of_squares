"""At each double-vanishing point: is the phase-sum vanishing TRIVIAL
(gamma-sums cancel per congruence class of exponents mod d = ord(2A mod p))
or a genuine mod-p accident?  Trivial vanishing is p-independent and
parameterizable; accidents would need per-p treatment."""
from chi2_engine_lib import build, gauss_rep
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

def mult_order(t, p):
    d = 1; x = t % p
    while x != 1: x = x*t % p; d += 1
    return d

shapes = build(3, 'imb3_fails.pkl') + build(4, 'imb4_fails.pkl')
primes = [p for p in range(5, 200) if all(p%k for k in range(2, math.isqrt(p)+1)) and p%4 == 1]
trivial = 0; accident = 0; orddist = {}
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
    for p in primes:
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
            d = mult_order(t, p)
            # trivial iff per-class gamma sums are 0 as INTEGERS on both sides
            def is_trivial(mins_):
                cls = {}
                for E, gr in mins_:
                    e = sum(E[k]*js[k] for k in range(nlev)) % d
                    cls[e] = cls.get(e, 0) + gr
                return all(v == 0 for v in cls.values())
            if is_trivial(mins) and is_trivial(mins2):
                trivial += 1
            else:
                accident += 1
            orddist[d] = orddist.get(d, 0) + 1
print("trivial (class-sum zero both sides):", trivial)
print("mod-p accidents:", accident)
print("order distribution:", dict(sorted(orddist.items())))
