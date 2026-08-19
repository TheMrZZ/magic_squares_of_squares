# Classifier v3 (Round 223): chi-shift decomposition of the
# unresolved band factors. Substitute X = (t + q^2/t)/2,
# Y = (t - q^2/t)/(2i) (t = chi^2), clear t-powers, and read the
# shift support of each factor. Single-shift factors are exact
# chi-pinnings with an explicit P_delta(r,s,q,w) form; the catalog
# of (delta, P_delta, N(P_delta) factorization) is the terminal
# landscape of the layered sector.
import sympy as sp
from multiprocessing import get_context
from collections import Counter

r, s, q, X, Y, w, t = sp.symbols('r s q X Y w t')

def shift_decompose(g):
    """Return dict shift -> coefficient (in r,s,q,w), or None if the
    factor has no (X,Y)-dependence."""
    if X not in g.free_symbols and Y not in g.free_symbols:
        return None
    m = sp.Poly(g, X, Y).total_degree()
    sub = g.subs({X: (t + q**2/t)/2, Y: (t - q**2/t)/(2*sp.I)})
    poly = sp.expand(sp.together(sub * t**m))
    num, den = sp.fraction(poly)
    P = sp.Poly(sp.expand(num), t)
    cells = {}
    for (k,), c in P.terms():
        cells[k - m] = sp.expand(c)
    return cells

def classify(item):
    n, ser = item
    g = sp.sympify(ser)
    cells = shift_decompose(g)
    if cells is None:
        return (n, 'no-chi', None, None)
    shifts = sorted(cells)
    pos = [d for d in shifts if d > 0]
    if len(shifts) == 1:
        return (n, f'single-abs-{shifts[0]}', None, None)
    if len(pos) == 1 and len(shifts) <= 3:
        d = pos[0]
        P = cells[d]
        Ne = sp.expand(P * P.subs(sp.I, -sp.I))
        nterms = len(sp.Add.make_args(Ne))
        # guard: factor only small norms; big ones deferred
        Nf = sp.factor(Ne) if nterms <= 25 else Ne
        tag = '' if nterms <= 25 else ' (unfactored)'
        return (n, f'pinning-d{d}', sp.sstr(P), sp.sstr(Nf) + tag)
    return (n, f'multi-{len(pos)}pos', None, None)

if __name__ == '__main__':
    items = []
    for ln in open('u3_band_unresolved.txt'):
        n, ser = ln.rstrip('\n').split('\t')
        items.append((int(n), ser))
    print(f"{len(items)} unresolved factors", flush=True)
    import sys
    with get_context('fork').Pool(10) as pool:
        res = []
        for i, out in enumerate(pool.imap_unordered(classify, items, chunksize=8)):
            res.append(out)
            if (i + 1) % 200 == 0:
                print(f"  {i+1}/{len(items)}", flush=True)
    kinds = Counter()
    for n, kind, P, Nf in res:
        kinds[kind] += n
    print("factor kinds (weighted by pair multiplicity):")
    for k, n in kinds.most_common():
        print(f"  [{n}] {k}")
    ncat = Counter()
    for n, kind, P, Nf in res:
        if kind.startswith('pinning') and Nf:
            ncat[(kind, Nf)] += n
    print(f"\n{len(ncat)} distinct (shift, N(P)) pinning cells; top 25:")
    with open('u3_pinning_cells.txt', 'w') as f:
        for (kind, Nf), n in ncat.most_common():
            f.write(f"{n}\t{kind}\t{Nf}\n")
    for (kind, Nf), n in ncat.most_common(25):
        print(f"  [{n}] {kind}  N = {Nf[:120]}")
