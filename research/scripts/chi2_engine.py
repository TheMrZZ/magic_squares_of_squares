"""chi-square criterion engine over the 20 deep shapes (3- and 4-level).

For each residual shape, chi^4 = Q * Nz / Dz.  Taking norms:
|chi^4|^2 = Q^4  =>  |Nz|^2 = Q^2 |Dz|^2  at Q = q^2.
Sweep p < 200 (p ≡ 1 mod 4), orbit indices j_k in 1..4, q < 500
(q ≡ 1 mod 4, q != p); for any root also require Q*Nz/Dz to be an exact
4th power of a norm-q^2 Gaussian integer.  Exact integer arithmetic.
"""
import pickle, math, itertools
from sympy import symbols, Poly, together, fraction, cancel, expand, I as i_, re as sre, im as sim

def build(nlev, pklfile):
    RB, IB, Q = symbols('RB IB Q', positive=True)
    S = symbols('S', positive=True)
    Zs = symbols(' '.join(f'Z{k} Z{k}b' for k in range(1, nlev+1)))
    Ns = symbols(' '.join(f'N{k}v' for k in range(1, nlev+1)), positive=True)
    Z = {k: Zs[2*(k-1)] for k in range(1, nlev+1)}
    Zb = {k: Zs[2*(k-1)+1] for k in range(1, nlev+1)}
    def re_im(Ze, Zbe): return ((Ze + Zbe)/2, (Ze - Zbe)/(2*i_))
    R, I = {}, {}
    for k in range(1, nlev+1):
        prod = 1; prodb = 1
        for m in range(1, k+1): prod *= Z[m]; prodb *= Zb[m]
        R[k], I[k] = re_im(prod, prodb)
    Sv = {}
    for k in range(1, nlev+1):
        acc = S
        for m in range(k+1, nlev+1): acc *= Ns[m-1]
        Sv[k] = acc
    Mv = S
    for m in range(1, nlev+1): Mv *= Ns[m-1]
    elems = {'y': Mv*IB}
    for k in range(1, nlev+1):
        elems[f'm{k}p'] = Sv[k]*(R[k]*IB + I[k]*RB)
        elems[f'm{k}m'] = Sv[k]*(I[k]*RB - R[k]*IB)
        elems[f'x{k}'] = Sv[k]*Q*I[k]
    fails = pickle.load(open(pklfile,'rb'))
    byshape = {}
    for f in fails: byshape.setdefault(tuple(sorted(f[:4])), f)
    out = []
    for shape, leaf in byshape.items():
        eu, ev, es, ed, signs = leaf
        sn = [n for n in (eu, ev, es, ed) if n != 'y']
        sg = dict(zip(sn, signs))
        val = lambda n: sg.get(n, 1)*elems[n]
        p1 = Poly(together(val(es) - val(eu) - val(ev)), RB, IB)
        p2 = Poly(together(val(ed) - val(eu) + val(ev)), RB, IB)
        a1,b1,c1 = [p1.as_dict().get(k,0) for k in ((1,0),(0,1),(0,0))]
        a2,b2,c2 = [p2.as_dict().get(k,0) for k in ((1,0),(0,1),(0,0))]
        det = expand(a1*b2 - a2*b1)
        RBv = cancel((-c1*b2 + c2*b1)/det); IBv = cancel((a1*(-c2) - a2*(-c1))/det)
        zeta = cancel(together(RBv + i_*IBv))
        Nz, Dz = fraction(zeta)
        gens = list(Zs) + list(Ns) + [Q]
        out.append((nlev, shape, Poly(expand(Nz.subs(S,1)), *gens, i_),
                    Poly(expand(Dz.subs(S,1)), *gens, i_), gens))
    return out

def gauss_rep(p):
    for A in range(1, math.isqrt(p)+1):
        B2 = p - A*A; B = math.isqrt(B2)
        if B*B == B2: return (A, B)
def cmul(u, v): return (u[0]*v[0]-u[1]*v[1], u[0]*v[1]+u[1]*v[0])
def cpow(u, e):
    r = (1, 0)
    for _ in range(e): r = cmul(r, u)
    return r

def eval_gauss_polyQ(poly, gens, zvals, nvals, i_sym, Qsym):
    """return dict qexp -> (re, im) exact ints"""
    acc = {}
    gi = {g: k for k, g in enumerate(poly.gens)}
    for mono, coef in poly.as_dict().items():
        cr, ci = int(sre(coef)), int(sim(coef))
        # i_ exponent folded in via generator
        v = (cr, ci)
        qexp = 0
        for g, e in zip(poly.gens, mono):
            if e == 0: continue
            if g == Qsym: qexp += e; continue
            if g == i_sym:
                v = cmul(v, cpow((0,1), e)); continue
            name = str(g)
            if name.startswith('N'):
                v = (v[0]*nvals[name]**e, v[1]*nvals[name]**e)
            else:
                v = cmul(v, cpow(zvals[name], e))
        a, b = acc.get(qexp, (0,0))
        acc[qexp] = (a+v[0], b+v[1])
    return acc

def norm2_polyQ(d):
    out = {}
    for k1, c1 in d.items():
        for k2, c2 in d.items():
            k = k1 + k2
            out[k] = out.get(k, 0) + c1[0]*c2[0] + c1[1]*c2[1]
    return out

def is_fourth_power(z, q):
    # z should equal u^4 with |u|^2 = q^2 * something; just test all u with |u|^4 = |z|
    n = z[0]*z[0] + z[1]*z[1]
    r = round(n ** 0.25)
    for cand in (r-1, r, r+1):
        if cand > 0 and cand**4 == n:
            m = cand  # |u|^2 = m
            for A in range(0, math.isqrt(m)+1):
                B2 = m - A*A; B = math.isqrt(B2)
                if B*B != B2: continue
                for u in ((A,B),(A,-B),(-A,B),(B,A),(-B,A),(B,-A)):
                    if cpow(u,4) == z: return True
    return False

shapes = build(3, 'imb3_fails.pkl') + build(4, 'imb4_fails.pkl')
print(f"{len(shapes)} shapes built", flush=True)

primes = [p for p in range(5, 200) if all(p%k for k in range(2, math.isqrt(p)+1)) and p%4 == 1]
qs = [q for q in range(5, 500) if all(q%k for k in range(2, math.isqrt(q)+1)) and q%4 == 1]
Qsym = symbols('Q', positive=True)
survivors = []
checked = 0
for nlev, shape, Np, Dp, gens in shapes:
    for p in primes:
        pi = gauss_rep(p); pi4 = cpow(pi, 4)
        for js in itertools.product(range(1,5), repeat=nlev):
            zvals = {}; nvals = {}
            for k in range(1, nlev+1):
                zk = cpow(pi4, js[k-1])
                zvals[f'Z{k}'] = zk; zvals[f'Z{k}b'] = (zk[0], -zk[1])
                nvals[f'N{k}v'] = p**(2*js[k-1])
            nd = eval_gauss_polyQ(Np, gens, zvals, nvals, i_, Qsym)
            dd = eval_gauss_polyQ(Dp, gens, zvals, nvals, i_, Qsym)
            n2 = norm2_polyQ(nd); d2 = norm2_polyQ(dd)
            for q in qs:
                if q == p: continue
                Qv = q*q
                lhs = sum(c*Qv**k for k, c in n2.items())
                rhs = Qv*Qv*sum(c*Qv**k for k, c in d2.items())
                checked += 1
                if lhs == rhs:
                    # norm condition met; exact 4th-power check
                    Nval = (sum(c[0]*Qv**k for k,c in nd.items()), sum(c[1]*Qv**k for k,c in nd.items()))
                    Dval = (sum(c[0]*Qv**k for k,c in dd.items()), sum(c[1]*Qv**k for k,c in dd.items()))
                    # chi4 = Qv * Nval / Dval must be Gaussian integer 4th power
                    dn = Dval[0]*Dval[0] + Dval[1]*Dval[1]
                    num = cmul((Qv*Nval[0], Qv*Nval[1]), (Dval[0], -Dval[1]))
                    if num[0] % dn == 0 and num[1] % dn == 0:
                        chi4 = (num[0]//dn, num[1]//dn)
                        if is_fourth_power(chi4, q):
                            survivors.append((nlev, shape, p, js, q, 'FOURTH-POWER'))
                            print("SURVIVOR", survivors[-1], flush=True)
                        else:
                            print("norm-root but not 4th power:", nlev, shape, p, js, q, flush=True)
                    else:
                        print("norm-root not Gaussian-integral:", nlev, shape, p, js, q, flush=True)
    print(f"shape {shape} (nlev={nlev}) done; checked so far {checked}", flush=True)
print(f"TOTAL checks: {checked}; survivors: {len(survivors)}")
for s in survivors: print(s)
