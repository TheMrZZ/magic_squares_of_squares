"""The two-relation cross at (2,3).

For each stored leaf pair and each combination of balance factors
(F1 from R1, F2 from R2): both vanishing pins (X, Y) = coords of
chi^{2 delta} to (Sigma_i / 2 w_i, Omega_i / w_i). For equal shifts the
cross condition is Sigma_1 Omega_2 - Sigma_2 Omega_1 = 0, a pure pi-side
polynomial in (r, s) after expressing all levels through pi^2 = r + i s.
Report: combos with identically-zero cross (need deeper), nonzero-cross
polynomials (the final lemma inputs), and shift-mismatch combos.
"""
import pickle
from collections import Counter
from sympy import symbols, I as iu, expand, sympify, Poly

u, v, x, y, r, s = symbols('u v x y r s')
combos_state = Counter()
cross_polys = Counter()

def factor_data(Fs):
    F = sympify(Fs)
    P = Poly(F, u, v, x, y)
    terms = P.terms()
    ex = [t[0][2] for t in terms]; ey = [t[0][3] for t in terms]
    e0, f0 = min(ex), min(ey)
    delta = f0 - e0
    lay = [t for t in terms if t[0][2] == e0]
    Pl = expand(sum(int(c)*u**m[0]*v**m[1] for m, c in lay))
    # Sigma, Omega in (r, s) through u = (r + i s), v = (r - i s)  [u = pi^2]
    Pc = expand(Pl.subs({u: v, v: u}, simultaneous=True))
    Sig = expand((Pl + Pc).subs({u: r + iu*s, v: r - iu*s}))
    Om = expand(((Pl - Pc)/(2*iu)).subs({u: r + iu*s, v: r - iu*s}))
    return delta, Sig, Om

for fn in ('u23_factorstate.pkl', 'u23_corestate.pkl'):
    pairs, relstate = pickle.load(open(fn, 'rb'))
    seenrel = {}
    for rel, bad in relstate.items():
        seenrel[rel] = [factor_data(sx) for sx in bad]
    for r1, r2 in pairs:
        b1 = seenrel.get(r1, []); b2 = seenrel.get(r2, [])
        if not b1 or not b2:
            combos_state['pair already dead (a relation fully factored)'] += 1
            continue
        allkill = True
        for d1, S1, O1 in b1:
            for d2, S2, O2 in b2:
                if d1 != d2:
                    combos_state['shift mismatch (chi-power ratio pinned)'] += 1
                    continue
                C = expand(S1*O2 - S2*O1)
                if C == 0:
                    combos_state['CROSS IDENTICALLY ZERO'] += 1
                    allkill = False
                else:
                    combos_state['cross nonzero'] += 1
                    cross_polys[str(C)] += 1
        if not allkill:
            combos_state['PAIR with a zero cross'] += 1
print(dict(combos_state))
print(f"distinct nonzero cross polynomials: {len(cross_polys)}")
for cs, c in cross_polys.most_common(8):
    print(f"  {c:5d}  {cs}")
pickle.dump(cross_polys, open('u23_cross_polys.pkl', 'wb'))
