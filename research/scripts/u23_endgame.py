"""The (2,3) endgame, corrected: terminal Diophantines for the residual
layered pairs.

Each single-level layered factor satisfies (verified 208/208 numerically):
  F-value = q^{2 qb} [ q^{2 ep} (c * chi^{2 j2} + sigma * conj) + q^{2 ed} d ]
with c = c(pi-side), d real (sigma=+1) or imaginary (sigma=-1), and
X + iY = chi^{2 j2}-coordinates, X^2 + Y^2 = q^{2 j2}.  The scalar
condition F = 0 is affine:
  sigma=+1:  2Re(c) X - 2Im(c) Y + q^{2 ed'} d      = 0   (d real)
  sigma=-1:  2Im(c) X + 2Re(c) Y + q^{2 ed'} t      = 0   (d = i t)
with ed' = ed - ep (WLOG ep or ed is 0 after qb-normalization).
For a residual pair, solve the two affine conditions (same j2) and plug
into the circle:  Xs^2 + Ys^2 = q^{2 j2} * det^2.  Classify terminals.
"""
import pickle
from collections import Counter
from sympy import (symbols, I as iu, expand, sympify, Poly, factor,
                   im as sim, re as sre)

u, v, x, y, r, s, q = symbols('u v x y r s q')


def affine(Fs):
    F = sympify(Fs) if isinstance(Fs, str) else Fs
    P = Poly(F, u, v, x, y)
    terms = P.terms()
    for i in range(4):
        vs = [t[0][i] for t in terms]
        mn = min(vs)
        if vs.count(mn) == 1 and abs(int([c for mm, c in terms if mm[i] == mn][0])) == 1:
            return ('DEAD',)
    gt = [(m, c) for m, c in terms if m[2] > m[3]]
    dg = [(m, c) for m, c in terms if m[2] == m[3]]
    if not gt:
        return ('DEAD',)
    e0 = min(m[2] for m, c in gt)
    layered = bool(dg) and min(m[2] for m, c in dg) < e0
    if not layered:
        # clean factor: monomial-P or Sigma/Omega rules
        lay = [(m, c) for m, c in gt if m[2] == e0]
        f0 = min(m[3] for m, c in lay)
        lay = [(m, c) for m, c in lay if m[3] == f0]
        Pl = expand(sum(int(c)*u**m[0]*v**m[1] for m, c in lay))
        if len(Poly(Pl, u, v).terms()) == 1:
            return ('DEAD',)
        Pc = expand(Pl.subs({u: v, v: u}, simultaneous=True))
        Sig = expand((Pl + Pc).subs({u: r + iu*s, v: r - iu*s}))
        Om = expand(((Pl - Pc)/(2*iu)).subs({u: r + iu*s, v: r - iu*s}))
        if (Sig == 0) != (Om == 0):
            return ('DEAD',)
        fmin = min(m[3] for m, c in gt)
        return ('CLEAN', abs(e0 - fmin), Sig, Om)
    groups = {}
    for m, co in terms:
        groups.setdefault(m[2] - m[3], []).append((m, co))
    js = sorted(k for k in groups if k > 0)
    if len(js) != 1:
        return ('MULTI',)
    j2 = js[0]
    cpos = expand(sum(int(co)*u**m[0]*v**m[1] for m, co in groups[j2]))
    cneg = expand(sum(int(co)*u**m[0]*v**m[1] for m, co in groups[-j2]))
    cposc = expand(cpos.subs({u: v, v: u}, simultaneous=True))
    if expand(cneg - cposc) == 0:
        sigma = 1
    elif expand(cneg + cposc) == 0:
        sigma = -1
    else:
        return ('MULTI',)
    dpoly = expand(sum(int(co)*u**m[0]*v**m[1] for m, co in groups.get(0, []))) if 0 in groups else 0
    qpos = min(min(m[2], m[3]) for m, co in groups[j2])
    qdia = min((min(m[2], m[3]) for m, co in groups.get(0, [])), default=0)
    epd = qdia - qpos   # diagonal q-offset relative to the asymmetric layer
    cval = expand(cpos.subs({u: r + iu*s, v: r - iu*s}))
    cre = expand(sre(cval))
    cim = expand(sim(cval))
    dval = expand(dpoly.subs({u: r + iu*s, v: r - iu*s})) if dpoly != 0 else 0
    if sigma == 1:
        alpha, beta, gam = 2*cre, -2*cim, expand(sre(dval))
    else:
        alpha, beta, gam = 2*cim, 2*cre, expand(sim(dval))
    return ('AFF', j2, expand(alpha), expand(beta), epd, gam)


state = {}
for fn in ('u23_factorstate.pkl', 'u23_corestate.pkl'):
    pairs, relstate = pickle.load(open(fn, 'rb'))
    for rel, bad in relstate.items():
        state.setdefault(rel, list(bad))

residual = pickle.load(open('u23_residual.pkl', 'rb'))
print(f"{len(residual)} residual pairs")
kinds = Counter()
terms = Counter()
for r1, r2, obs in residual:
    c1 = [affine(sx) for sx in state.get(r1, [])]
    c2 = [affine(sx) for sx in state.get(r2, [])]
    live1 = [c for c in c1 if c[0] != 'DEAD']
    live2 = [c for c in c2 if c[0] != 'DEAD']
    if not live1 or not live2:
        kinds['pair dead on recount'] += 1
        continue
    for k1 in live1:
        for k2 in live2:
            tag = (k1[0], k2[0])
            if tag == ('AFF', 'AFF'):
                _, j1, a1, b1, e1, g1 = k1
                _, j2_, a2, b2, e2, g2 = k2
                if j1 != j2_:
                    kinds['AFF level mismatch'] += 1
                    continue
                det = expand(a1*b2 - a2*b1)
                if det == 0:
                    kinds['AFF parallel'] += 1
                    continue
                G1 = expand(-q**(2*e1)*g1)
                G2 = expand(-q**(2*e2)*g2)
                Xs = expand(G1*b2 - G2*b1)
                Ys = expand(a1*G2 - a2*G1)
                T = expand(Xs**2 + Ys**2 - q**(2*j1)*det**2)
                terms[str(factor(T))] += 1
                kinds['AFF-AFF terminal'] += 1
            else:
                kinds[str(tag)] += 1
print(dict(kinds))
print(f"\n{len(terms)} distinct terminal polynomials")
for k, c in terms.most_common(5):
    print(f"  {c:4d}  {k[:150]}")
pickle.dump(terms, open('u23_terminal_polys.pkl', 'wb'))
