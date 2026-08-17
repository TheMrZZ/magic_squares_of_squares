"""Evaluate all residual (2,2) relations at known coupled band pairs.

For each pair (p, q) on the persistent disc-12 locus, compute the exact
half-level coordinates and the exact value of each of the 600 residual
relations. Report the relations with p | T and q | T (the coupled locus
hits), their exact valuations, and the integer cofactor T / (p^i q^j).
"""
import pickle, math
from sympy import symbols, I as iu, expand, im as sim, factorint

p, q = symbols('p q', positive=True)
R, I, X, Y = symbols('R I X Y', real=True)
P1 = R + iu*I; C1 = X + iu*Y

elems = []
for a in range(3):
    for b in range(3):
        if (a, b) == (0, 0): continue
        if a == 0 or b == 0: elems.append((a, b, 1))
        else: elems.append((a, b, 1)); elems.append((a, b, -1))

def elem_expr(e):
    a, b, sg = e
    z = 1
    if a: z *= P1**a
    if b:
        c = C1**b
        if sg < 0: c = c.conjugate()
        z *= c
    return p**(4-2*a) * q**(4-2*b) * expand(sim(expand(z)))

EV = {e: elem_expr(e) for e in elems}

survivors = pickle.load(open('u22_survivors.pkl', 'rb'))
rels = set()
for perm, (s1, e2, e3, e4) in survivors:
    ea, eb, ec, ed = [elems[k] for k in perm]
    for terms in ([(ec, e3), (ed, e4), (ea, -2)],
                  [(ec, e3), (ed, -e4), (eb, -2*e2)]):
        key = tuple(sorted((e, g) for e, g in terms))
        key2 = tuple(sorted((e, -g) for e, g in terms))
        rels.add(min(key, key2))
rels = sorted(rels)
print(f"{len(rels)} relations")

def gauss_rep(n):
    for a_ in range(1, math.isqrt(n)+1):
        b2 = n - a_*a_; b_ = math.isqrt(b2)
        if b_*b_ == b2: return (a_, b_)

def pow4(a_, b_):
    x, y = a_, b_
    for _ in range(2):
        x, y = x*x - y*y, 2*x*y
    return x, y

# persistent disc-12 pairs from the band probe (k = l = 1), plus (37,13) reversed
PAIRS = [(37, 13), (13, 37)]
# extend: search more persistent pairs p,q < 3000 with p = C^2+4CD+D^2 (C,D rep of q)
prs = [n for n in range(5, 3000) if all(n % k for k in range(2, math.isqrt(n)+1)) and n % 4 == 1]
pset = set(prs)
for qq in prs:
    Cc, Dd = gauss_rep(qq)
    for (u_, v_) in ((Cc, Dd), (Dd, Cc)):
        val = u_*u_ + 4*u_*v_ + v_*v_
        if val in pset and val != qq:
            pp = val
            Aa, Bb = gauss_rep(pp)
            for (w_, z_) in ((Aa, Bb), (Bb, Aa)):
                if w_*w_ - 4*w_*z_ + z_*z_ in (qq, -qq):
                    PAIRS.append((pp, qq))
PAIRS = sorted(set(PAIRS))
print("locus pairs:", PAIRS)

for pp, qq in PAIRS:
    Aa, Bb = gauss_rep(pp); Cc, Dd = gauss_rep(qq)
    for (ra, rb) in ((Aa, Bb), (Bb, Aa)):
        for (rc, rd) in ((Cc, Dd), (Dd, Cc)):
            Rv, Iv = pow4(ra, rb)
            Xv, Yv = pow4(rc, rd)
            subs = {R: Rv, I: Iv, X: Xv, Y: Yv, p: pp, q: qq}
            hits = []
            for ri, rel in enumerate(rels):
                T = sum(g * EV[e] for e, g in rel)
                Tv = int(T.subs(subs))
                if Tv == 0:
                    print("!!! EXACT ZERO", pp, qq, rel)
                    continue
                vp = 0
                t = Tv
                while t % pp == 0: t //= pp; vp += 1
                vq = 0
                while t % qq == 0: t //= qq; vq += 1
                if vp >= 1 and vq >= 1:
                    hits.append((ri, rel, vp, vq, t))
            if hits:
                print(f"\n(p,q)=({pp},{qq}) rep p=({ra},{rb}) q=({rc},{rd}): {len(hits)} coupled hits")
                for ri, rel, vp, vq, t in hits[:6]:
                    fi = factorint(abs(t)) if abs(t) < 10**40 else '(big)'
                    print(f"  rel {ri} {rel}  v_p={vp} v_q={vq} cofactor={t} = {fi}")
