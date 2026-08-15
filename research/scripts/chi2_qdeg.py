from chi2_engine_lib import build
from sympy import symbols, Poly
Qsym = symbols('Q', positive=True)
shapes = build(3, 'imb3_fails.pkl') + build(4, 'imb4_fails.pkl')
for nlev, shape, Np, Dp, gens in shapes:
    nqd = sorted({m[gens.index(Qsym)] for m in Np.as_dict()})
    dqd = sorted({m[gens.index(Qsym)] for m in Dp.as_dict()})
    print(nlev, shape, "N Q-degrees:", nqd, " D Q-degrees:", dqd, flush=True)
