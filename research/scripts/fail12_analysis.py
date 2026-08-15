from sympy import symbols, Poly, together, fraction, cancel, expand, factor, I as i_
import pickle

RB, IB, Q = symbols('RB IB Q', positive=True)
S = symbols('S', positive=True)
Z1, Z1b, Z2, Z2b, Z3, Z3b, Z4, Z4b = symbols('Z1 Z1b Z2 Z2b Z3 Z3b Z4 Z4b')
N1v, N2v, N3v, N4v = symbols('N1v N2v N3v N4v', positive=True)
def re_im(Ze, Zbe): return ((Ze + Zbe)/2, (Ze - Zbe)/(2*i_))
R1e, I1e = re_im(Z1, Z1b)
R2e, I2e = re_im(Z1*Z2, Z1b*Z2b)
R3e, I3e = re_im(Z1*Z2*Z3, Z1b*Z2b*Z3b)
R4e, I4e = re_im(Z1*Z2*Z3*Z4, Z1b*Z2b*Z3b*Z4b)
S4v_, S3v_, S2v_, S1v_ = S, S*N4v, S*N4v*N3v, S*N4v*N3v*N2v
Mv = S*N4v*N3v*N2v*N1v
elems = {
 'm1p': S1v_*(R1e*IB + I1e*RB), 'm1m': S1v_*(I1e*RB - R1e*IB), 'x1': S1v_*Q*I1e,
 'm2p': S2v_*(R2e*IB + I2e*RB), 'm2m': S2v_*(I2e*RB - R2e*IB), 'x2': S2v_*Q*I2e,
 'm3p': S3v_*(R3e*IB + I3e*RB), 'm3m': S3v_*(I3e*RB - R3e*IB), 'x3': S3v_*Q*I3e,
 'm4p': S4v_*(R4e*IB + I4e*RB), 'm4m': S4v_*(I4e*RB - R4e*IB), 'x4': S4v_*Q*I4e,
 'y': Mv*IB,
}
def conj_expr(e):
    t1,t2,t3,t4 = symbols('_t1 _t2 _t3 _t4')
    return e.subs([(Z1,t1),(Z1b,Z1),(Z2,t2),(Z2b,Z2),(Z3,t3),(Z3b,Z3),(Z4,t4),(Z4b,Z4)]) \
            .subs([(t1,Z1b),(t2,Z2b),(t3,Z3b),(t4,Z4b)]).subs(i_, -i_)

fails = pickle.load(open('imb4_fails.pkl','rb'))
byshape = {}
for f in fails:
    byshape.setdefault(tuple(sorted(f[:4])), []).append(f)
print("shapes:", len(byshape))
for shape, leaves in byshape.items():
    eu, ev, es, ed, signs = leaves[0]
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
    ND = expand(Nz * conj_expr(Dz))
    print(f"shape {shape} (example {leaves[0]}):")
    print(f"  N*conj(D) factored: {str(factor(ND))[:260]}")
    print(flush=True)
