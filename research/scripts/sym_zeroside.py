"""Zero-side reduction for (2,2): relations whose mod-pi residue gq == 0
have their a=2 layer cancelling exactly; then T = p^2 * T' where T' is a
lower-grading relation.  Divide out p (and q symmetric) powers and rerun
the full certificate battery (parity / unit-side / double-pinch /
finite-bound) on T'."""
import pickle
from sympy import symbols, I as iu, expand, factor, Mul, Pow, Poly, im as sim, sqrt, div, gcd
p, q = symbols('p q', positive=True)
R, I, X, Y = symbols('R I X Y', real=True)
A, B, C, D = symbols('A B C D', real=True)

# load residue data to find zero-side relations
data = pickle.load(open('sym22_residues.pkl','rb'))
zero_side = [(rel, gq, hp) for rel, gq, hp in data if expand(gq) == 0 or expand(hp) == 0]
print(f"zero-side relations: {len(zero_side)}", flush=True)

P1 = R + iu*I; C1 = X + iu*Y
def elem_expr(e):
    a, b, sg = e
    z = 1
    if a: z *= P1**a
    if b:
        c = C1**b
        if sg < 0: c = c.conjugate()
        z *= c
    return p**(4-2*a) * q**(4-2*b) * expand(sim(expand(z)))

def side_profile(F, side):
    """(C,D)-coordinate profile as in sym_unit3: list of halfdegs or None"""
    if side == 'pi':
        e = F.subs({R: -iu*I, p: 0})
        t = C + iu*D
        e = e.subs({X: expand((t**4 + (t.conjugate())**4)/2),
                    Y: expand((t**4 - (t.conjugate())**4)/(2*iu)),
                    q: C**2 + D**2})
        gens = (C, D); unitvars = (I,)
    else:
        e = F.subs({X: -iu*Y, q: 0})
        t = A + iu*B
        e = e.subs({R: expand((t**4 + (t.conjugate())**4)/2),
                    I: expand((t**4 - (t.conjugate())**4)/(2*iu)),
                    p: A**2 + B**2})
        gens = (A, B); unitvars = (Y,)
    e = expand(e)
    if e == 0: return None
    prof = []
    for fc in Mul.make_args(factor(e)):
        b_, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        if b_.is_number or b_ in unitvars: continue
        pl = Poly(b_, *gens)
        d = pl.total_degree()
        if len(pl.as_dict()) == 1: prof.extend([0.5]*d)
        else: prof.append(d/2)
    return prof

killed = 0; alive = []; killed_keys = []
for rel, gq, hp in zero_side:
    T = expand(sum(g*elem_expr(e) for e, g in rel))
    # strip p/q powers (the reduction): divide by gcd with p^8 q^8
    from sympy import Poly as SPoly
    Tp = SPoly(T, p)
    k = min(m[0] for m in Tp.as_dict())
    T2 = expand(T / p**k)
    Tq = SPoly(T2, q)
    k2 = min(m[0] for m in Tq.as_dict())
    T2 = expand(T2 / q**k2)
    ok = True; info = []
    for fc in Mul.make_args(factor(T2)):
        b_, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        if b_.is_number or b_ in (p, q): continue
        vv = b_.subs({R:1, X:1, p:1, q:1, I:0, Y:0})
        if vv.is_integer and int(vv) % 2 == 1: continue  # parity
        pp = side_profile(b_, 'pi'); qq = side_profile(b_, 'chi')
        if pp == [] or qq == []: continue  # units-only side -> closed
        if pp is None or qq is None: ok = False; info.append(('still-zero-side', str(b_)[:60])); continue
        hp_ = max(pp); hq_ = max(qq)
        if min(hp_, hq_) <= 0.5 and max(hp_, hq_) < 2: continue  # finite bound
        if hp_ <= 1 and hq_ <= 1: info.append(('band', hp_, hq_)); ok = False; continue
        ok = False; info.append(('wedge', hp_, hq_))
    if ok: killed += 1; killed_keys.append(rel)
    else: alive.append((rel, info))
print(f"zero-side relations KILLED after reduction: {killed} / {len(zero_side)}")
from collections import Counter
c = Counter(tuple(i[0] for i in info) for rel, info in alive)
print("remaining:", dict(c))
pickle.dump(killed_keys, open("sym22_zeroside_killed.pkl","wb"))
