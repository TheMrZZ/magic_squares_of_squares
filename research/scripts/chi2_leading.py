"""Mod-pibar leading analysis of c = |A|^2 - |D|^2 per deep shape.

Substitution Zk = pi^{4 j_k}, Nk = p^{2 j_k}.  pibar-valuations:
v(Zk) = 0, v(Zkb) = 4 j_k, v(Nk) = 2 j_k.  For a weight regime (an
ordering/spacing class of j), collect the monomials of minimal
pibar-valuation; mod pibar each surviving Zk residue is t^{j_k} with
t = (2B)^4 (a single multiplicative generator value), Nk residue is
u^{j_k} with u = p... wait p ≡ 0 mod pibar? p = pi*pibar so v(p)=1.
Correct: Nk = p^{2 j_k} has v = 2 j_k, and its unit part mod higher
powers involves pi^{2jk}.  We handle valuations symbolically: each
monomial's value = (unit coeff) * pi^{a} * pibar^{b} exactly, since
Zk, Zkb, Nk are EXACT powers of pi and pibar (no unit ambiguity!).
So c = sum over monomials coeff * pi^{P(m,j)} * pibar^{B(m,j)} —
c is determined exactly.  Group by (P, B) as linear forms in j:
in a regime where a unique (P,B)-group is minimal in BOTH coordinates
jointly... simpler: compute c EXACTLY as Gaussian integer for given
(p, j) — already done numerically.  Here instead: for each shape,
list the distinct valuation-form pairs (P(j), B(j)) with their
coefficient sums as polynomials — identically-cancelling groups reveal
the true leading structure.  We enumerate the group structure for the
generic regime j1 >> j2 >> ... (dominant separation) and check the
leading group coefficient is a nonzero integer times a pure power —
which proves c != 0 for sufficiently separated j, unconditionally.
"""
from chi2_engine_lib import build
from sympy import symbols, expand, I as i_, Poly
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
for nlev, shape, Np, Dp, gens in shapes:
    Ne = Np.as_expr(); De = Dp.as_expr()
    A = expand(Ne / Qsym)
    c = expand(A*conj_expr(A, nlev) - De*conj_expr(De, nlev))
    cp = Poly(c, *[g for g in gens if str(g) != 'Q'])
    cg = cp.gens
    # valuation forms: pi-exponent P = sum 4 j_k [Zk] + 2 j_k [Nk];
    # pibar-exponent B = sum 4 j_k [Zkb] + 2 j_k [Nk]
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
                k = int(name[1])
                P[k-1] += 2*e; B[k-1] += 2*e
        key = (tuple(P), tuple(B))
        groups[key] = groups.get(key, 0) + coef
    live = {k: v for k, v in groups.items() if v != 0}
    # check: for regimes given by orderings of j with strong separation,
    # is there a unique minimizer of total valuation min(P.j, B.j)? use
    # lexicographic dominance: try all orderings of coordinates
    import math
    n_unique = 0; n_tied = 0
    for perm in itertools.permutations(range(nlev)):
        # weights: j_{perm[0]} >> j_{perm[1]} >> ... encode as base-1000
        w = [0]*nlev
        for idx, coord in enumerate(perm): w[coord] = 1000**(nlev-1-idx)
        best = None; bestkeys = []
        for (P, B), v in live.items():
            val = min(sum(p*wi for p, wi in zip(P, w)), sum(b*wi for b, wi in zip(B, w)))
            if best is None or val < best: best = val; bestkeys = [((P,B),v)]
            elif val == best: bestkeys.append(((P,B),v))
        if len(bestkeys) == 1: n_unique += 1
        else: n_tied += 1
    print(f"{nlev}-level {shape}: {len(live)} live valuation groups; "
          f"orderings with unique leading group: {n_unique}/{n_unique+n_tied}", flush=True)
