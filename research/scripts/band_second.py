"""Second-order census on band loci: for each band relation, gather many
integer points ON its pi-side band locus (p | core(C_q, D_q), p prime
= 1 mod 4, no reverse condition required) and record v_p of the exact
relation value.  If v_p == 1 at every locus point, the mod-p^2
coefficient never vanishes there empirically."""
import pickle, math
from sympy import symbols, I as iu, expand, im as sim, factor, Mul, Pow, Poly, lambdify
p, q = symbols('p q', positive=True)
R, I, X, Y = symbols('R I X Y', real=True)
C, D = symbols('C D', real=True)
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
prof = pickle.load(open('sym22_profile.pkl','rb'))
bands = [rel for rel, (cps, cqs) in prof
         if cps and cps[0] == 1.0 and cqs and cqs[0] == 1.0]
# core forms per relation: reuse sym_bands cores()
def cores(F):
    e = F.subs({R: -iu*I, p: 0})
    t = C + iu*D
    e = e.subs({X: expand((t**4 + (t.conjugate())**4)/2),
                Y: expand((t**4 - (t.conjugate())**4)/(2*iu)),
                q: C**2 + D**2})
    e = expand(e)
    out = []
    for fc in Mul.make_args(factor(e)):
        b_, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        if b_.is_number or b_ == I: continue
        pl = Poly(b_, C, D)
        if len(pl.as_dict()) == 1: continue
        if pl.total_degree() == 2: out.append(b_)
    return out
def gauss_rep(n):
    for a_ in range(1, math.isqrt(n)+1):
        b2 = n - a_*a_; b_ = math.isqrt(b2)
        if b_*b_ == b2: return (a_, b_)
def val4(a_, b_):
    x, y = a_, b_
    for _ in range(2):
        x, y = x*x - y*y, 2*x*y
    return x, y
primes = [n for n in range(5, 20000) if all(n % k for k in range(2, math.isqrt(n)+1)) and n % 4 == 1]
pset = set(primes)
from collections import Counter
overall = Counter()
for ri, rel in enumerate(bands[:6]):   # representative subset for speed
    T = expand(sum(g*elem_expr(e) for e, g in rel))
    # find uncertified factor + its cores
    target = None
    for fc in Mul.make_args(factor(T)):
        b_, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        if b_.is_number or b_ in (p, q): continue
        vv = b_.subs({R:1, X:1, p:1, q:1, I:0, Y:0})
        if vv.is_integer and int(vv) % 2 == 1: continue
        target = b_
    cs = cores(target)
    fns = [lambdify((C, D), c_, 'math') for c_ in cs]
    Tf = lambdify((R, I, X, Y, p, q), T, 'math')
    cnt = Counter(); pts = 0
    for qv in primes:
        if pts >= 60: break
        Cq, Dq = gauss_rep(qv)
        Xv, Yv = val4(Cq, Dq)
        for f in fns:
            v = abs(round(f(Cq, Dq)))
            if v < 5: continue
            # prime factors of v that are 1 mod 4
            vv_ = v
            for pr in (x for x in range(5, v+1) if x in pset):
                if vv_ % pr == 0 and pr != qv:
                    Ap, Bp = gauss_rep(pr)
                    Rv, Iv = val4(Ap, Bp)
                    val = round(Tf(Rv, Iv, Xv, Yv, pr, qv))
                    if val == 0: cnt['ZERO'] += 1; continue
                    vp = 0; x_ = abs(val)
                    while x_ % pr == 0: x_ //= pr; vp += 1
                    cnt[vp] += 1; pts += 1
                    break
    print(f"band rel {ri}: locus points {pts}, v_p census {dict(cnt)}", flush=True)
    overall.update(cnt)
print("OVERALL:", dict(overall))
