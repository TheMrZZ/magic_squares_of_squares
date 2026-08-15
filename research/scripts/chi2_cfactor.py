"""Factor c = A*conj(A) - D*conj(D) for each deep shape (Nz = Q*A)."""
from chi2_engine_lib import build
from sympy import symbols, Poly, factor, expand, I as i_
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

shapes = build(3, 'imb3_fails.pkl') + build(4, 'imb4_fails.pkl')
for nlev, shape, Np, Dp, gens in shapes:
    Ne = Np.as_expr(); De = Dp.as_expr()
    A = expand(Ne / Qsym)
    c = expand(A*conj_expr(A, nlev) - De*conj_expr(De, nlev))
    print(f"{nlev}-level {shape}:")
    print(f"  c factored: {str(factor(c))[:400]}")
    print(flush=True)
