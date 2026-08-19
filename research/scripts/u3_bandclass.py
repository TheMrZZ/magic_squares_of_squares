# Classify the layered-sector band catalog (Round 222): factor each
# band and certify factors nonzero at admissible data. Conservative:
# a factor passes only by parity (odd value at data), monomiality,
# or sign-definiteness; everything else lands in the unresolved dump.
import sys
import sympy as sp
from multiprocessing import Pool

r, s, q, X, Y, w = sp.symbols('r s q X Y w')
VARS = [r, s, q, X, Y, w]

def parse(ser):
    h = sp.Integer(0)
    for t in ser.split(';'):
        f = t.split(',')
        c = sp.Integer(f[0])
        mono = c
        for v, e in zip(VARS, f[1:]):
            e = int(e)
            if e:
                mono *= v**e
        h += mono
    return h

def factor_ok(g):
    """True if g is certainly nonzero at admissible data
    (r,q,X,w odd nonzero; s,Y even nonzero; X^2+Y^2=q^2)."""
    if g.is_number:
        return g != 0
    P = sp.Poly(g, *VARS)
    # monomial
    if len(P.terms()) == 1:
        return True
    # parity: substitute exact residues mod 2
    val = P.eval({r: 1, s: 0, q: 1, X: 1, Y: 0, w: 1})
    if int(val) % 2 == 1:
        return True
    # sign-definite: all exponent-vectors even and coefficients of
    # one sign (positive or negative definite up to the origin,
    # excluded since data coords are nonzero)
    terms = P.terms()
    if all(all(e % 2 == 0 for e in m) for m, _ in terms):
        cs = [c for _, c in terms]
        if all(c > 0 for c in cs) or all(c < 0 for c in cs):
            return True
    # composite-lemma span: g proportional to Im(z * chi^{2m} pi^{+-2n})
    # (bihomogeneous in (X,Y) and (r,s), no q or w) — then z*W real
    # forces a chi-valuation contradiction for m, n >= 1.
    fv = g.free_symbols
    if q not in fv and w not in fv and (X in fv or Y in fv) and (r in fv or s in fv):
        try:
            m = sp.Poly(g, X, Y).total_degree()
            n = sp.Poly(g, r, s).total_degree()
        except Exception:
            return False
        if m >= 1 and n >= 1:
            for sgn in (1, -1):
                Wv = sp.expand((X + sp.I*Y)**m * (r + sgn*sp.I*s)**n)
                ReW = sp.expand((Wv + Wv.subs(sp.I, -sp.I)) / 2)
                ImW = sp.expand((Wv - Wv.subs(sp.I, -sp.I)) / (2*sp.I))
                al, be = sp.symbols('al be')
                sol = sp.solve_undetermined_coeffs(
                    sp.Eq(al*ReW + be*ImW, g), [al, be], X, Y, r, s)
                if sol and (sol[al] != 0 or sol[be] != 0):
                    return True
    return False

def classify(item):
    n, ser = item
    h = parse(ser)
    F = sp.factor(h)
    fac = []
    if isinstance(F, sp.Mul):
        parts = F.args
    else:
        parts = [F]
    bad = []
    for a in parts:
        b, e = a.as_base_exp()
        if not factor_ok(b):
            bad.append(sp.sstr(b))
    return (n, ser, bad)

if __name__ == '__main__':
    items = []
    for ln in open('rs/u3_bandcat_1_1_1.txt'):
        n, ser = ln.rstrip('\n').split('\t')
        if ser in ('ODD-SHIFT', 'DET-ZERO', 'BAND-ZERO'):
            continue
        items.append((int(n), ser))
    print(f"{len(items)} bands", flush=True)
    with Pool(10) as pool:
        res = pool.map(classify, items, chunksize=20)
    dead = sum(n for n, _, bad in res if not bad)
    alive = [(n, ser, bad) for n, ser, bad in res if bad]
    nalive = sum(n for n, _, _ in alive)
    print(f"bands fully certified nonzero: {len(res) - len(alive)} "
          f"({dead} pairs)")
    print(f"bands with unresolved factors: {len(alive)} ({nalive} pairs)")
    from collections import Counter
    cnt = Counter()
    for n, ser, bad in alive:
        for b in bad:
            cnt[b] += n
    with open('u3_band_unresolved.txt', 'w') as f:
        for b, n in cnt.most_common():
            f.write(f"{n}\t{b}\n")
    print(f"{len(cnt)} distinct unresolved factors -> u3_band_unresolved.txt")
    for b, n in cnt.most_common(15):
        print(f"  [{n}] {b[:140]}")
