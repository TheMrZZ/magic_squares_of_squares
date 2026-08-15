"""4-level imbalance sweep: for every 3-level leaf, check the pi/pibar
imbalance kill on the solved chi^4-direction."""
from sympy import symbols, Poly, together, fraction, cancel, expand, I as i_, simplify
import itertools, pickle
from collections import Counter

RB, IB, Q = symbols('RB IB Q', positive=True)
S = symbols('S', positive=True)
Z1, Z1b, Z2, Z2b, Z3, Z3b, Z4, Z4b = symbols('Z1 Z1b Z2 Z2b Z3 Z3b Z4 Z4b')  # level orbits: pi^{4j1}, chains
N1v, N2v, N3v, N4v = symbols('N1v N2v N3v N4v', positive=True)
# components: level1 = Z1; level2 = Z1*Z2; level3 = Z1*Z2*Z3 (Gaussian)
# real/imag via (Z + Zb)/2 etc. — build elements directly in Gaussian form:
def re_im(Zexpr, Zbexpr):
    return ( (Zexpr + Zbexpr)/2, (Zexpr - Zbexpr)/(2*i_) )
R1e, I1e = re_im(Z1, Z1b)
R2e, I2e = re_im(Z1*Z2, Z1b*Z2b)
R3e, I3e = re_im(Z1*Z2*Z3, Z1b*Z2b*Z3b)
R4e, I4e = re_im(Z1*Z2*Z3*Z4, Z1b*Z2b*Z3b*Z4b)
# powers: S3=S, S2=S*N3v, S1=S*N3v*N2v; M = S*N3v*N2v*N1v
S4v_, S3v_, S2v_, S1v_ = S, S*N4v, S*N4v*N3v, S*N4v*N3v*N2v
Mv = S*N4v*N3v*N2v*N1v
elems = {
 'm1p': S1v_*(R1e*IB + I1e*RB), 'm1m': S1v_*(I1e*RB - R1e*IB), 'x1': S1v_*Q*I1e,
 'm2p': S2v_*(R2e*IB + I2e*RB), 'm2m': S2v_*(I2e*RB - R2e*IB), 'x2': S2v_*Q*I2e,
 'm3p': S3v_*(R3e*IB + I3e*RB), 'm3m': S3v_*(I3e*RB - R3e*IB), 'x3': S3v_*Q*I3e,
 'm4p': S4v_*(R4e*IB + I4e*RB), 'm4m': S4v_*(I4e*RB - R4e*IB), 'x4': S4v_*Q*I4e,
 'y': Mv*IB,
}
names = list(elems)
def lvl(n): return int(n[1]) if n != 'y' else 0

def conj_expr(e):
    t1,t2,t3,t4 = symbols('_t1 _t2 _t3 _t4')
    return e.subs([(Z1,t1),(Z1b,Z1),(Z2,t2),(Z2b,Z2),(Z3,t3),(Z3b,Z3),(Z4,t4),(Z4b,Z4)]) \
            .subs([(t1,Z1b),(t2,Z2b),(t3,Z3b),(t4,Z4b)]).subs(i_, -i_)

VARS = (Z1, Z1b, Z2, Z2b, Z3, Z3b, Z4, Z4b, N1v, N2v, N3v, N4v)
def vforms(e, at_pi=True):
    pol = Poly(expand(e), *VARS)
    out = []
    for m in pol.as_dict():
        z1,z1b,z2,z2b,z3,z3b,z4,z4b,n1,n2,n3,n4 = m
        if at_pi: out.append((4*z1+2*n1, 4*z2+2*n2, 4*z3+2*n3, 4*z4+2*n4))
        else: out.append((4*z1b+2*n1, 4*z2b+2*n2, 4*z3b+2*n3, 4*z4b+2*n4))
    return out


def residual_analyze(RBv, IBv):
    """chain-style leading-form analysis of the norm residual; True if the
    residual provably cannot vanish (unit leading coefficient in all regimes)."""
    from sympy import fraction as _fr, together as _tg
    num, _ = _fr(_tg(RBv**2 + IBv**2 - Q**2))
    g = expand(num)
    pol = Poly(g, *VARS)
    monos = pol.as_dict()
    if not monos: return False
    def wf(m, pib):
        return tuple((4*m[2*k+1]+2*m[2*4+k]) if pib else (4*m[2*k]+2*m[2*4+k]) for k in range(4))
    # weight = valuation form at pi (residual is real: pi/pibar symmetric min);
    # enumerate minimal sets over a grid
    grids = [ (1,2,3,5) ]*4
    import itertools as _it
    minima = set()
    for pt in _it.product(*grids):
        wts = {}
        for m in monos:
            f = wf(m, False)
            wts[m] = sum(a*b for a, b in zip(f, pt))
        mw = min(wts.values())
        minima.add(frozenset(m for m in monos if wts[m] == mw))
    for pat in minima:
        lead = expand(sum(monos[m]*1 for m in pat)) if False else None
        s0 = 0
        for m in pat: s0 += monos[m]
        s0 = expand(s0)
        if s0 == 0: return False
        # unit iff, as poly in the Zb-variables and N's... require s0 to be
        # a nonzero constant times Q^2 times a monomial in the Z's:
        pl = Poly(s0, *VARS)
        if len(pl.as_dict()) != 1: return False
        c = list(pl.as_dict().values())[0]
        cc = simplify(c/Q**2)
        try:
            if int(cc) % 2 == 0 and abs(int(cc)) not in (2,4,8,16,32): return False
        except Exception:
            return False
    return True

res = Counter(); fails = []
count = 0
for eu, ev, es, ed in itertools.permutations(names, 4):
    levels = {lvl(n) for n in (eu, ev, es, ed)} - {0}
    if levels != {1, 2, 3, 4}: continue
    sn = [n for n in (eu, ev, es, ed) if n != 'y']
    for signs in itertools.product((1,-1), repeat=len(sn)):
        sg = dict(zip(sn, signs))
        val = lambda n: sg.get(n, 1)*elems[n]
        p1 = Poly(together(val(es) - val(eu) - val(ev)), RB, IB)
        p2 = Poly(together(val(ed) - val(eu) + val(ev)), RB, IB)
        a1,b1,c1 = [p1.as_dict().get(k,0) for k in ((1,0),(0,1),(0,0))]
        a2,b2,c2 = [p2.as_dict().get(k,0) for k in ((1,0),(0,1),(0,0))]
        det = expand(a1*b2 - a2*b1)
        count += 1
        if count % 1000 == 0:
            print(f"...{count} {dict(res)}", flush=True)
            pickle.dump(fails, open('imb4_fails.pkl','wb'))
        if det == 0:
            res['SING'] += 1   # handled by earlier singular analysis (all dead)
            continue
        RBv = cancel((-c1*b2 + c2*b1)/det); IBv = cancel((a1*(-c2) - a2*(-c1))/det)
        zeta = cancel(together(RBv + i_*IBv))
        Nz, Dz = fraction(zeta)
        Nz, Dz = expand(Nz), expand(Dz)
        if Nz == 0:
            res['ZERO-KILL'] += 1   # solved (RB, IB) = (0,0): dead, IB != 0
            continue
        Dbal = simplify(expand(Dz + conj_expr(Dz))) == 0 or simplify(expand(Dz - conj_expr(Dz))) == 0
        vpib = vforms(Nz, at_pi=False); vpi = vforms(Nz, at_pi=True)
        nzero_b = sum(1 for v in vpib if v == (0,0,0,0))
        nzero_p = sum(1 for v in vpi if v == (0,0,0,0))
        # generalized: consider SUM of unit-form coefficients
        pol0 = Poly(Nz, *VARS)
        def unit_sum(pib):
            s0 = 0
            for m, c in pol0.as_dict().items():
                f = tuple((4*m[2*k+1]+2*m[2*nv+k]) if pib else (4*m[2*k]+2*m[2*nv+k]) for k in range(nv))
                if all(x == 0 for x in f): s0 += c
            return simplify(s0/Q)
        nv = len(VARS)//3
        us_b = unit_sum(True); us_p = unit_sum(False)
        cond = Dbal and ((us_b != 0 and us_p == 0) or (us_p != 0 and us_b == 0))
        if cond:
            # coefficient audit on the unit sum
            ok = True
            if True:
                cc = us_b if us_b != 0 else us_p
                try:
                    ok = int(cc) % 2 != 0 or abs(int(cc)) in (2,4,8,16)
                except Exception:
                    ok = False
            for m, c in []:
                pass
            res['IMB-KILL' if ok else 'IMB-coeff-check'] += 1
        elif residual_analyze(RBv, IBv):
            res['RESID-KILL'] += 1
        else:
            res['FAIL'] += 1
            fails.append((eu,ev,es,ed,signs))
print("FINAL:", dict(res), f"total={count}")
pickle.dump(fails, open('imb4_fails.pkl','wb'))
