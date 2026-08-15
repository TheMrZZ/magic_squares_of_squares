"""Classify leading ties of c per ordering: is the minimal set exactly one
conjugate pair {(P,B),(B,P)} (or a self-conjugate group P=B)?  If yes with
unit coefficient, c != 0 in that strongly-separated regime by the
Re/Im(gamma*pibar^M) valuation-zero lemma."""
from chi2_engine_lib import build
from sympy import symbols, expand, I as i_, Poly, re as sre, im as sim
Qsym = symbols('Q', positive=True)
import itertools

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
summary = {}
for nlev, shape, Np, Dp, gens in shapes:
    Ne = Np.as_expr(); De = Dp.as_expr()
    A = expand(Ne / Qsym)
    c = expand(A*conj_expr(A, nlev) - De*conj_expr(De, nlev))
    cp = Poly(c, *[g for g in gens if str(g) != 'Q'])
    cg = cp.gens
    groups = {}
    for mono, coef in cp.as_dict().items():
        P = [0]*nlev; B = [0]*nlev
        for g, e in zip(cg, mono):
            if e == 0: continue
            name = str(g)
            if name.startswith('Z'):
                k = int(name[1])
                if name.endswith('b'): B[k-1] += 4*e
                else: P[k-1] += 4*e
            elif name.startswith('N'):
                k = int(name[1]); P[k-1] += 2*e; B[k-1] += 2*e
        key = (tuple(P), tuple(B))
        groups[key] = groups.get(key, 0) + coef
    live = {k: v for k, v in groups.items() if v != 0}
    kinds = []
    for perm in itertools.permutations(range(nlev)):
        w = [0]*nlev
        for idx, coord in enumerate(perm): w[coord] = 1000**(nlev-1-idx)
        best = None; bk = []
        for (P, B), v in live.items():
            val = min(sum(p*wi for p, wi in zip(P, w)), sum(b*wi for b, wi in zip(B, w)))
            if best is None or val < best: best = val; bk = [((P,B),v)]
            elif val == best: bk.append(((P,B),v))
        if len(bk) == 2:
            (k1, v1), (k2, v2) = bk
            if k1 == (k2[1], k2[0]) and v1 == v2.conjugate():
                # conjugate pair; gamma = v1, exponent diff M = (B-P).w
                gr, gi = int(sre(v1)), int(sim(v1))
                bad = [f for f in (2,3) if (gr % f == 0 and gi % f == 0)]
                kinds.append(('PAIR', (gr, gi)))
            else: kinds.append(('TIE2-NONCONJ', None))
        elif len(bk) == 1:
            (k1, v1) = bk[0]
            if k1[0] == k1[1]: kinds.append(('SELF', v1))
            else: kinds.append(('UNIQ-NONREAL?', v1))
        else:
            kinds.append((f'TIE{len(bk)}', None))
    from collections import Counter
    cnt = Counter(k[0] for k in kinds)
    coeffs = set(k[1] for k in kinds if k[0] in ('PAIR','SELF'))
    print(f"{nlev}-level {shape}: {dict(cnt)} coeffs={coeffs}", flush=True)
