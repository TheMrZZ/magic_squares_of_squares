"""Screen the (2,3) leaves whose pattern pair is first-order degenerate:
factor both exact relations and look for strict-pinch factors, then for
master balance forms (relation proportional to x^(4b')*B -+ conj with B a
quartic in u, v — the chi-power generic master shape).
"""
import itertools, pickle
from collections import Counter
from sympy import symbols, I as iu, expand, im as sim, factor, Mul, Pow, simplify

p, q = symbols('p q', positive=True)
u, v, x, y = symbols('u v x y')

A, B = 2, 3   # grid (a, b) = (2, 3)
els = []
for j in range(A+1):
    for k in range(B+1):
        if (j, k) == (0, 0): continue
        sgs = (1,) if (j == 0 or k == 0) else (1, -1)
        for sg in sgs: els.append((j, k, sg))
pexp = {e: 2*(A-e[0]) for e in els}
qexp = {e: 2*(B-e[1]) for e in els}

def elem_uv(e):
    j, k, sg = e
    # value / (p^pexp q^qexp) in half-level variables, then re-scale by (uv), (xy)
    w = 1
    if j: w *= (u**2)**j
    if k:
        c = (x**2)**k
        w = w * c if sg > 0 else w * (y**2)**k
    # Im part: (w - conj(w))/(2i) with conj: u<->v, x<->y
    wc = w.subs({u: v, v: u, x: y, y: x}, simultaneous=True)
    return expand((w - wc)/(2*iu)) * (u*v)**(A - e[0]) * (x*y)**(B - e[1])

EV = {e: expand(elem_uv(e)) for e in els}

def lone(rel):
    for exp in (pexp, qexp):
        vs = [exp[e] for e, _ in rel]
        m = min(vs)
        if vs.count(m) == 1: return True
    return False

def ppat(rel):
    m = min(pexp[e] for e, _ in rel)
    lay = sorted((e[1], e[2], g) for e, g in rel if pexp[e] == m)
    k0 = min(k for k, _, _ in lay)
    return tuple((k-k0, sg, g) for k, sg, g in lay)

degen, cores = pickle.load(open('u23_pattern_residue.pkl', 'rb'))
dset = set(map(tuple, degen))
print(f"{len(dset)} degenerate pattern pairs")

# collect distinct relation-pairs whose pattern pair is degenerate
pairs = set()
n = len(els)
for combo in itertools.permutations(range(n), 4):
    ea, eb, ec, ed = [els[i] for i in combo]
    for e2, e3, e4 in itertools.product((1,-1), repeat=3):
        r1 = tuple([(ec, e3), (ed, e4), (ea, -2)])
        r2 = tuple([(ec, e3), (ed, -e4), (eb, -2*e2)])
        if lone(list(r1)) or lone(list(r2)): continue
        if (ppat(list(r1)), ppat(list(r2))) in dset:
            pairs.add((r1, r2))
print(f"{len(pairs)} leaf relation-pairs on degenerate patterns")

# pinch factors at (2,3): re(pi^{4j}) -+ p^{2j} etc., in u,v,x,y variables
PINCH = []
for j in (1, 2):
    Rj = expand(((u**2)**j + (v**2)**j)/2)
    PINCH += [expand(Rj - (u*v)**j), expand(Rj + (u*v)**j)]
for k in (1, 2, 3):
    Xk = expand(((x**2)**k + (y**2)**k)/2)
    PINCH += [expand(Xk - (x*y)**k), expand(Xk + (x*y)**k)]

def has_pinch(T):
    for fc in Mul.make_args(factor(T)):
        b_, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        eb = expand(b_)
        for pin in PINCH:
            if eb == pin or expand(-eb) == pin or expand(2*eb) == expand(2*pin):
                return True
            if expand(eb + pin) == 0: return True
    return False

res = Counter()
remaining = []
done = 0
for r1, r2 in pairs:
    T1 = expand(sum(g*EV[e] for e, g in r1))
    T2 = expand(sum(g*EV[e] for e, g in r2))
    k1 = has_pinch(T1); k2 = has_pinch(T2)
    if k1 or k2: res['pinch'] += 1
    else:
        res['remaining'] += 1
        remaining.append((r1, r2))
    done += 1
print(dict(res))
pickle.dump(remaining, open('u23_remaining.pkl', 'wb'))
for r1, r2 in remaining[:4]:
    print("REM R1:", r1)
    print("    R2:", r2)
