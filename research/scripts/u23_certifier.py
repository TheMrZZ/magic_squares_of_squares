"""Certifier v1: the definitive kill audit for rung (2,3).

Per factor: DEAD reasons: (nonzero library was already applied upstream —
factors here are the unresolved balance shapes), grade-unit, balance with
one of Sigma/Omega zero, monomial P (clean or layered), layered mono-P.
Per relation: DEAD if every factor is DEAD.
Per pair: DEAD if a relation is DEAD; else every live combo must be killed
by: equal-shift nonzero cross (verified class), mismatch content/gcd kill
(2-powers or p-powers), aligned monomial. Whatever survives is the
residual obligation list.
"""
import pickle
from collections import Counter
from sympy import symbols, I as iu, expand, sympify, Poly, factor, roots, Mul, Pow, gcd as pgcd

u, v, x, y, r, s, z = symbols('u v x y r s z')

def fdata(Fs):
    F = sympify(Fs) if isinstance(Fs, str) else Fs
    P = Poly(F, u, v, x, y)
    terms = P.terms()
    for i in range(4):
        vs = [t[0][i] for t in terms]
        m = min(vs)
        if vs.count(m) == 1 and abs(int([c for mm, c in terms if mm[i] == m][0])) == 1:
            return ('DEAD', 'grade-unit')
    gterms = [(m, c) for m, c in terms if m[2] > m[3]]
    diag = [(m, c) for m, c in terms if m[2] == m[3]]
    if not gterms:
        return ('DEAD', 'no chi-asymmetry (pure pi-side, nonzero checked)')
    e0 = min(m[2] for m, c in gterms)
    layered = bool(diag) and min(m[2] for m, c in diag) < e0
    if layered:
        etop = max(m[2] for m, c in gterms)
        top = [(m, c) for m, c in gterms if m[2] == etop]
        ftop = min(m[3] for m, c in top)
        top = [(m, c) for m, c in top if m[3] == ftop]
        Ptop = expand(sum(int(c)*u**m[0]*v**m[1] for m, c in top))
        if len(Poly(Ptop, u, v).terms()) == 1:
            return ('DEAD', 'layered mono-P valuation')
        return ('LIVE-LAYERED', Fs)
    lay = [(m, c) for m, c in gterms if m[2] == e0]
    f0 = min(m[3] for m, c in lay)
    lay = [(m, c) for m, c in lay if m[3] == f0]
    fmin = min(m[3] for m, c in gterms)
    delta = abs(e0 - fmin)
    Pl = expand(sum(int(c)*u**m[0]*v**m[1] for m, c in lay))
    if len(Poly(Pl, u, v).terms()) == 1:
        return ('DEAD', 'monomial-P valuation')
    Pc = expand(Pl.subs({u: v, v: u}, simultaneous=True))
    Sig = expand((Pl + Pc).subs({u: r + iu*s, v: r - iu*s}))
    Om = expand(((Pl - Pc)/(2*iu)).subs({u: r + iu*s, v: r - iu*s}))
    if (Sig == 0) != (Om == 0):
        return ('DEAD', 'Sigma/Omega vanishing')
    return ('LIVE', (delta, str(Pl), Sig, Om))

def nonvanishing(C):
    for fc in Mul.make_args(factor(C)):
        b_, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        if b_.is_number or b_ in (r, s): continue
        if str(b_) in ('r - s', 'r + s', '-r + s', '-r - s', 'r**2 + s**2'): continue
        rt = roots(b_.subs({r: z, s: 1}), z)
        ratl = [w for w in rt if w.is_rational]
        if any(abs(w.as_numer_denom()[0]) % 2 == 1 and w.as_numer_denom()[1] % 2 == 0 for w in ratl):
            return False
    return True

def content_ok(A12, C12):
    # mismatch kill: contents 2-powers or gcd = p-powers/constant
    if A12 == 0 or C12 == 0: return None
    G = pgcd(Poly(A12, r, s), Poly(C12, r, s))
    gf = str(factor(G.as_expr()))
    import re as _re
    core = gf
    for tok in ('16*', '8*', '4*', '2*', '64*', '(', ')', '-'):
        core = core.replace(tok, '')
    # p-power gcd: only r**2 + s**2 blocks
    stripped = gf.replace(' ', '')
    if G.total_degree() == 0:
        return True   # constant gcd; contents were verified 2-smooth
    okblocks = all(part.strip().startswith('(r**2+s**2)') or part.strip().replace('*','').isdigit()
                   for part in stripped.replace('16','').replace('8','').split('*') if part.strip())
    if 'r**2+s**2' in stripped and '2*r*s' not in stripped and 'r-s' not in stripped and 'r+s' not in stripped and 'r**2-s**2' not in stripped and stripped.count('r') == stripped.count('r**2+s**2')*1 + 0:
        pass
    # conservative: kill only when gcd is purely (r^2+s^2)-powers times a constant
    inner = stripped
    for c_ in ('16','8','4','2','64','128','256'):
        inner = inner.replace(c_+'*', '')
    inner = inner.replace('(r**2+s**2)', '').replace('**2','').replace('**3','').replace('**4','').replace('*','')
    return inner == ''

cnt = Counter()
residual = []
for fn in ('u23_factorstate.pkl', 'u23_corestate.pkl'):
    pairs, relstate = pickle.load(open(fn, 'rb'))
    cache = {}
    for rel, bad in relstate.items():
        cache[rel] = [fdata(sx) for sx in bad] if bad else []
    for r1, r2 in pairs:
        b1 = cache.get(r1); b2 = cache.get(r2)
        if not b1 or not b2:
            cnt['pair dead: relation fully factored'] += 1; continue
        live1 = [d for st, d in b1 if st != 'DEAD']
        live2 = [d for st, d in b2 if st != 'DEAD']
        st1 = [st for st, d in b1]; st2 = [st for st, d in b2]
        if not live1 or not live2:
            cnt['pair dead: a relation all-DEAD factors'] += 1; continue
        combos_ok = True
        obligations = []
        for s1_, d1 in [(st, d) for st, d in b1 if st != 'DEAD']:
            for s2_, d2 in [(st, d) for st, d in b2 if st != 'DEAD']:
                if s1_ == 'LIVE' and s2_ == 'LIVE':
                    D1, P1, S1, O1 = d1
                    D2, P2, S2, O2 = d2
                    if D1 == D2:
                        C = expand(S1*O2 - S2*O1)
                        if C != 0 and nonvanishing(C): continue
                        if C == 0:
                            obligations.append(('aligned', P1, P2, D1)); combos_ok = False; continue
                        obligations.append(('cross-unres', P1, P2, D1)); combos_ok = False
                    else:
                        A12 = expand(S1*S2 + 4*O1*O2)
                        C12 = expand(2*(S1*O2 - S2*O1))
                        res = content_ok(A12, C12)
                        if res: continue
                        obligations.append(('mismatch-unres', P1, P2, D1, D2)); combos_ok = False
                else:
                    obligations.append(('layered-combo', s1_, s2_)); combos_ok = False
        if combos_ok:
            cnt['pair dead: all combos killed'] += 1
        else:
            cnt['pair RESIDUAL'] += 1
            residual.append((r1, r2, obligations))
print(dict(cnt))
obl = Counter()
for r1, r2, obs in residual:
    for o in obs: obl[o[0]] += 1
print("residual obligation kinds:", dict(obl))
pickle.dump(residual, open('u23_residual.pkl', 'wb'))
print(f"residual pairs: {len(residual)}")
