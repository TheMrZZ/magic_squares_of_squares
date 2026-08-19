# Terminal-descent batch (Round 229): for every pair at (1,1,1),
# for every single-positive-shift band factor, pin A on the factor
# locus and compute the descent outcome:
#   B-ZERO       — Cramer's B vanishes identically (dead: |B| > 0)
#   NORM-CLASH   — |B|^2 / w^4 is a nonzero lam-free expression
#                  that cannot equal 1 (dead when structurally so;
#                  recorded for per-family analysis)
#   RESIDUE      — anything else (dump for study)
import sympy as sp
from multiprocessing import get_context
from collections import Counter

r, s, q, w, t = sp.symbols('r s q w t', positive=True)
XA, YA = sp.symbols('XA YA', real=True)
X, Y = sp.symbols('X Y', real=True)
lam = sp.symbols('lam', real=True)
SLOTS = [r, s, q, XA, YA, w, None, None]

def parse8(ser):
    h = sp.Integer(0)
    if not ser.strip():
        return h
    for term in ser.split(';'):
        f = term.split(',')
        mono = sp.Integer(f[0])
        for v, e in zip(SLOTS, f[1:]):
            e = int(e)
            if e:
                mono *= v**e
        h += mono
    return h

tri = {}
for ln in open('rs/u3_tri_1_1_1.txt'):
    parts = ln.rstrip('\n').split('\t')
    if parts[1] == 'NONE':
        continue
    tri[int(parts[0])] = tuple(parse8(x) for x in parts[1:4])
pairs = []
for ln in open('rs/u3_pairidx_1_1_1.txt'):
    a, b = (int(x) for x in ln.split())
    pairs.append((a, b))

def outcome(pair):
    i1, i2 = pair
    if i1 not in tri or i2 not in tri:
        return ['SKIP-ODD']
    (x1, y1, z1) = tri[i1]
    (x2, y2, z2) = tri[i2]
    det = sp.expand(x1*y2 - x2*y1)
    if det == 0:
        return ['SKIP-DETZERO']
    nx = sp.expand(z2*y1 - z1*y2)
    ny = sp.expand(x2*z1 - x1*z2)
    band = sp.expand(nx**2 + ny**2 - w**4*det**2)
    bandXY = band.subs({XA: X**2 - Y**2, YA: 2*X*Y})
    F = sp.factor(sp.expand(bandXY))
    parts = F.args if isinstance(F, sp.Mul) else [F]
    outs = []
    for a_ in parts:
        g, _e = a_.as_base_exp()
        if g.is_number:
            continue
        if X not in g.free_symbols and Y not in g.free_symbols:
            continue
        m = sp.Poly(g, X, Y).total_degree()
        sub = g.subs({X: (t + q**2/t)/2, Y: (t - q**2/t)/(2*sp.I)})
        num, _ = sp.fraction(sp.together(sp.expand(sub * t**m)))
        P = sp.Poly(sp.expand(num), t)
        cells = {k - m: sp.expand(c) for (k,), c in P.terms()}
        pos = [d for d in cells if d > 0]
        if len(pos) != 1:
            outs.append('MULTI')
            continue
        Pd = cells[pos[0]]
        Pc = sp.expand(Pd.subs(sp.I, -sp.I))
        Aval = sp.expand(lam * Pc)
        AR, AI = Aval.as_real_imag()
        AR = AR.subs(sp.im(lam), 0).subs(sp.re(lam), lam) if AR.has(sp.re(lam)) else AR
        AI = AI.subs(sp.im(lam), 0).subs(sp.re(lam), lam) if AI.has(sp.re(lam)) else AI
        subsA = {XA: AR, YA: AI}
        dv = sp.expand(det.subs(subsA))
        nxv = sp.expand(nx.subs(subsA))
        nyv = sp.expand(ny.subs(subsA))
        if nxv == 0 and nyv == 0:
            outs.append('B-ZERO' if dv != 0 else 'ALL-ZERO')
            continue
        if dv == 0:
            outs.append('DET-VANISH')
            continue
        NB = sp.factor(sp.expand(nxv**2 + nyv**2))
        ratio = sp.factor(sp.simplify(NB / (w**4 * dv**2)))
        outs.append(('RATIO', sp.sstr(ratio)[:180]))
    return outs

if __name__ == '__main__':
    print(f"{len(tri)} triples, {len(pairs)} pairs", flush=True)
    with get_context('fork').Pool(10) as pool:
        res = []
        for i, out in enumerate(pool.imap(outcome, pairs, chunksize=16)):
            res.append(out)
            if (i + 1) % 500 == 0:
                print(f"  {i+1}/{len(pairs)}", flush=True)
    tally = Counter()
    ratios = Counter()
    for outs in res:
        for o in outs:
            if isinstance(o, tuple):
                tally['RATIO'] += 1
                ratios[o[1]] += 1
            else:
                tally[o] += 1
    print("descent outcomes (per factor):", dict(tally))
    print(f"{len(ratios)} distinct ratios; top 12:")
    with open('u3_terminal_ratios.txt', 'w') as f:
        for k, n in ratios.most_common():
            f.write(f"{n}\t{k}\n")
    for k, n in ratios.most_common(12):
        print(f"  [{n}] {k}")
