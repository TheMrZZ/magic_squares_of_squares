"""Verify the affine extraction numerically: for each single-level layered
factor, check that F-value = q^{2 qb} * (alpha*X_j + beta*Y_j + q^{2 dd} * d)
up to the overall structure, at exact Gaussian data points.
"""
import pickle
from sympy import symbols, I as iu, expand, sympify, Poly, im as sim, re as sre

u, v, x, y, r, s, q = symbols('u v x y r s q')


def affine_of_layered(P):
    groups = {}
    for m, co in P.terms():
        a, b = m[2], m[3]
        groups.setdefault(a - b, []).append((m, co))
    js = sorted(k for k in groups if k > 0)
    if len(js) != 1:
        return None
    j2 = js[0]

    def cpoly(ts):
        return expand(sum(int(co)*u**m[0]*v**m[1] for m, co in ts))

    # factor out the chi/chibar monomial from the positive group:
    # each term u^a v^b x^c y^d with c-d = j2: x^c y^d = (xy)^{min} x^{j2}
    qpos = min(min(m[2], m[3]) for m, co in groups[j2])
    cpos = cpoly(groups[j2])
    dpoly = cpoly(groups.get(0, [])) if 0 in groups else 0
    qdia = min((min(m[2], m[3]) for m, co in groups.get(0, [])), default=0)
    qb = min(qpos, qdia)
    return j2, qpos - qb, cpos, qdia - qb, dpoly, qb


class G:
    def __init__(self, re, im): self.re, self.im = re, im
    def __mul__(self, o): return G(self.re*o.re - self.im*o.im, self.re*o.im + self.im*o.re)
    def __add__(self, o): return G(self.re + o.re, self.im + o.im)
    def __sub__(self, o): return G(self.re - o.re, self.im - o.im)
    def conj(self): return G(self.re, -self.im)
    def scale(self, k): return G(self.re*k, self.im*k)
    def pw(self, n):
        r = G(1, 0)
        for _ in range(n): r = r * self
        return r
def gv(a, b):
    return G(a, b)


pts = [((1, 2), (2, 3)), ((2, 5), (1, 4)), ((3, 8), (5, 6))]
seen = set()
tested = ok = 0
for fn in ('u23_factorstate.pkl', 'u23_corestate.pkl'):
    pairs, relstate = pickle.load(open(fn, 'rb'))
    for rel, bad in relstate.items():
        for sx in bad:
            key = str(sx)
            if key in seen:
                continue
            seen.add(key)
            F = sympify(sx) if isinstance(sx, str) else sx
            P = Poly(F, u, v, x, y)
            gt = [(m, c) for m, c in P.terms() if m[2] > m[3]]
            dg = [(m, c) for m, c in P.terms() if m[2] == m[3]]
            if not gt or not dg or min(m[2] for m, c in dg) >= min(m[2] for m, c in gt):
                continue
            aff = affine_of_layered(P)
            if aff is None:
                continue
            j2, ep, cpos, ed, dpoly, qb = aff
            good = True
            for (A, B), (C, D) in pts:
                pi2 = gv(A, B).pw(2)
                pib2 = pi2.conj()
                ch2 = gv(C, D).pw(2)
                chb2 = ch2.conj()
                qq = C*C + D*D
                Z = G(0, 0)
                Fv = Z
                for m, co in P.terms():
                    Fv = Fv + (pi2.pw(m[0]) * pib2.pw(m[1]) * ch2.pw(m[2]) * chb2.pw(m[3])).scale(int(co))
                cval = Z
                for m, co in Poly(cpos, u, v).terms():
                    cval = cval + (pi2.pw(m[0]) * pib2.pw(m[1])).scale(int(co))
                dval = Z
                if dpoly != 0:
                    for m, co in Poly(dpoly, u, v).terms():
                        dval = dval + (pi2.pw(m[0]) * pib2.pw(m[1])).scale(int(co))
                chij = ch2.pw(j2)
                top = cval * chij
                for sigma in (1, -1):
                    core = (top + top.conj().scale(sigma)).scale((qq*qq)**ep) + dval.scale((qq*qq)**ed)
                    model = core.scale((qq*qq)**qb)
                    if model.re == Fv.re and model.im == Fv.im:
                        break
                else:
                    good = False
                    break
            tested += 1
            if good:
                ok += 1
print(f"verified {ok}/{tested} single-level layered factors match the affine model")
