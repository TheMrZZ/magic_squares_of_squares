"""The (2,3) endgame: terminal Diophantines for the 1,440 residual pairs.

Each layered factor's vanishing is an affine condition on the chi-circle:
  alpha(r,s) X_j + beta(r,s) Y_j = gamma(r,s) * q^{2m}   (level j)
extracted from the signature decomposition (chi^{2j}-group coefficient c:
alpha = 2*Re(c), beta = -2*Im(c) or the mirrored pair — derived exactly
below). Clean live factors pin (X_d, Y_d) projectively (Sigma, Omega).
For each residual pair, take one live condition per relation:
  - equal level: solve the 2x2 linear system for (X, Y); the determinant
    is the cross (nonvanishing classes verified); substitute into
    X^2 + Y^2 = q^{2j}: terminal polynomial in (r, s, q).
  - different levels: record as multi-level (handled via power maps later).
Classify terminal polynomials: q-monomial coefficients -> band; check
realizable rational roots in (r, s) per q-power pattern.
"""
import pickle
from collections import Counter
from sympy import symbols, I as iu, expand, sympify, Poly, factor, im as sim, re as sre, together, fraction

u, v, x, y, r, s, q = symbols('u v x y r s q')


def affine_of_layered(P):
    """Return (j, alpha, beta, gamma_qexp, gamma_poly) for a layered factor:
    F-value = 0  <=>  alpha X_j + beta Y_j + q^{2m} * d = 0, where the
    chi^{2j}-group coefficient c gives  c*chi^{2j} + conj = alpha X_j - beta' Y_j...
    Exactly: c*chi^{2j} + bar c*bar chi^{2j} = 2 Re(c) X_j - 2 Im(c) Y_j.
    Sandwich: F = c-group + diag + conj-group (times q^{2*minexp} overall)."""
    groups = {}
    for m, co in P.terms():
        a, b = m[2], m[3]
        groups.setdefault(a - b, []).append((m, co))
    js = sorted(k for k in groups if k > 0)
    if len(js) != 1:
        return None  # multi-level sandwich (8 factors)
    j2 = js[0]
    # common q-power: min over min(a,b) across all terms
    def cval(ts):
        return expand(sum(int(co)*u**m[0]*v**m[1] for m, co in ts).subs(
            {u: r + iu*s, v: r - iu*s}))
    cpos = cval(groups[j2])
    qpos = min(min(m[2], m[3]) for m, co in groups[j2])
    dval = cval(groups.get(0, [])) if 0 in groups else 0
    qdia = min((min(m[2], m[3]) for m, co in groups.get(0, [])), default=0)
    qbase = min(qpos, qdia)
    alpha = expand(2*sre(cpos))
    beta = expand(-2*sim(cpos))
    # F = q^{2 qpos} (c chi^{2j2} + conj) + q^{2 qdia} d  (d real or imag)
    return (j2 // 2, alpha, beta, qpos - qbase, qdia - qbase, expand(dval))


def clean_data(P):
    terms = P.terms()
    gterms = [(m, c) for m, c in terms if m[2] > m[3]]
    e0 = min(m[2] for m, c in gterms)
    lay = [(m, c) for m, c in gterms if m[2] == e0]
    f0 = min(m[3] for m, c in lay)
    lay = [(m, c) for m, c in lay if m[3] == f0]
    fmin = min(m[3] for m, c in gterms)
    delta = abs(e0 - fmin)
    Pl = expand(sum(int(c)*u**m[0]*v**m[1] for m, c in lay))
    Pc = expand(Pl.subs({u: v, v: u}, simultaneous=True))
    Sig = expand((Pl + Pc).subs({u: r + iu*s, v: r - iu*s}))
    Om = expand(((Pl - Pc)/(2*iu)).subs({u: r + iu*s, v: r - iu*s}))
    return (delta, Sig, Om)


def conditions_of(Fs):
    F = sympify(Fs) if isinstance(Fs, str) else Fs
    P = Poly(F, u, v, x, y)
    terms = P.terms()
    for i in range(4):
        vs = [t[0][i] for t in terms]
        mn = min(vs)
        if vs.count(mn) == 1 and abs(int([c for mm, c in terms if mm[i] == mn][0])) == 1:
            return []
    gterms = [(m, c) for m, c in terms if m[2] > m[3]]
    diag = [(m, c) for m, c in terms if m[2] == m[3]]
    if not gterms:
        return []
    e0 = min(m[2] for m, c in gterms)
    layered = bool(diag) and min(m[2] for m, c in diag) < e0
    if layered:
        aff = affine_of_layered(P)
        if aff is None:
            return [('multi', Fs)]
        return [('affine', aff)]
    d = clean_data(P)
    if (d[1] == 0) != (d[2] == 0):
        return []
    lay_poly = None
    # monomial-P check
    lay0 = [(m, c) for m, c in gterms if m[2] == e0]
    f0 = min(m[3] for m, c in lay0)
    lay0 = [(m, c) for m, c in lay0 if m[3] == f0]
    Pl = expand(sum(int(c)*u**m[0]*v**m[1] for m, c in lay0))
    if len(Poly(Pl, u, v).terms()) == 1:
        return []
    return [('clean', d)]


residual = pickle.load(open('u23_residual.pkl', 'rb'))
print(f"{len(residual)} residual pairs")

term_polys = Counter()
kinds = Counter()
for r1, r2, obs in residual:
    # recompute live conditions per relation from the stored relations
    pass

# we need factor lists: rebuild from the state files
state = {}
for fn in ('u23_factorstate.pkl', 'u23_corestate.pkl'):
    pairs, relstate = pickle.load(open(fn, 'rb'))
    for rel, bad in relstate.items():
        state.setdefault(rel, [])
        for sx in bad:
            state[rel].append(sx)

for r1, r2, obs in residual:
    c1 = sum([conditions_of(sx) for sx in state.get(r1, [])], [])
    c2 = sum([conditions_of(sx) for sx in state.get(r2, [])], [])
    if not c1 or not c2:
        kinds['relation with no live condition (dead — recount)'] += 1
        continue
    pair_done = True
    for k1 in c1:
        for k2 in c2:
            if k1[0] == 'multi' or k2[0] == 'multi':
                kinds['multi-level sandwich combo'] += 1
                pair_done = False
                continue
            if k1[0] == 'affine' and k2[0] == 'affine':
                j1, a1, b1, e1_, d1_, dd1 = k1[1]
                j2_, a2, b2, e2_, d2_, dd2 = k2[1]
                if j1 != j2_:
                    kinds['affine level mismatch'] += 1
                    pair_done = False
                    continue
                det = expand(a1*b2 - a2*b1)
                if det == 0:
                    kinds['affine parallel (aligned)'] += 1
                    pair_done = False
                    continue
                # solve: X = (g1 b2 - g2 b1)/det, Y = (a1 g2 - a2 g1)/det
                g1 = expand(-q**(2*d1_)*dd1) if dd1 != 0 else 0
                g2 = expand(-q**(2*d2_)*dd2) if dd2 != 0 else 0
                Xs = expand(g1*b2 - g2*b1)
                Ys = expand(a1*g2 - a2*g1)
                T = expand(Xs**2 + Ys**2 - q**(2*j1)*det**2)
                term_polys[str(factor(T))] += 1
                kinds['affine-affine terminal'] += 1
            else:
                kinds[f'{k1[0]}-{k2[0]} combo'] += 1
                pair_done = False
print(dict(kinds))
print(f"\n{len(term_polys)} distinct terminal polynomials; top:")
for k, c in term_polys.most_common(6):
    print(f"  {c:4d}  {k[:140]}")
pickle.dump(term_polys, open('u23_terminal_polys.pkl', 'wb'))
