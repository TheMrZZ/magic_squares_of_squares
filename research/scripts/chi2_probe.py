"""Probe the Q-coefficient structure of F(Q)=|Nz|^2 - Q^2|Dz|^2 across the
20 deep shapes: sign patterns, p-adic valuations of coefficients, and
whether F(Q)>0 or <0 for all Q>0 in each sampled regime."""
import pickle, math, itertools
from chi2_engine import build, gauss_rep, cpow, eval_gauss_polyQ, norm2_polyQ
from sympy import symbols, I as i_
Qsym = symbols('Q', positive=True)

shapes = build(3, 'imb3_fails.pkl') + build(4, 'imb4_fails.pkl')
print(f"{len(shapes)} shapes", flush=True)
primes = [5, 13, 29, 53, 97, 149, 197]
from collections import Counter
patterns = Counter()
def vp(n, p):
    if n == 0: return 'inf'
    v = 0
    while n % p == 0: n //= p; v += 1
    return v
for nlev, shape, Np, Dp, gens in shapes:
    shape_pat = Counter()
    for p in primes:
        pi = gauss_rep(p); pi4 = cpow(pi, 4)
        for js in itertools.product((1,2,3,5), repeat=nlev):
            zvals = {}; nvals = {}
            for k in range(1, nlev+1):
                zk = cpow(pi4, js[k-1])
                zvals[f'Z{k}'] = zk; zvals[f'Z{k}b'] = (zk[0], -zk[1])
                nvals[f'N{k}v'] = p**(2*js[k-1])
            nd = eval_gauss_polyQ(Np, gens, zvals, nvals, i_, Qsym)
            dd = eval_gauss_polyQ(Dp, gens, zvals, nvals, i_, Qsym)
            n2 = norm2_polyQ(nd); d2 = norm2_polyQ(dd)
            F = dict(n2)
            for k, c in d2.items(): F[k+2] = F.get(k+2, 0) - c
            ks = sorted(k for k in F if F[k] != 0)
            sig = tuple((k, 1 if F[k] > 0 else -1) for k in ks)
            # p-adic: valuation of each coeff
            vps = tuple((k, vp(F[k], p)) for k in ks)
            shape_pat[sig] += 1
            patterns[(nlev, shape, sig)] += 1
    print(f"{nlev}-level {shape}: {len(shape_pat)} sign patterns:", flush=True)
    for sig, c in shape_pat.most_common(6):
        print(f"   [{c}] {sig}", flush=True)
