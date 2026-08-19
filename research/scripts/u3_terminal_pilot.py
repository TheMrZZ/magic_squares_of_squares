# Terminal-descent pilot (Round 228). Scan pairs at (1,1,1) for one
# whose band contains a quadratic-family pinning factor; on the hit,
# pin A exactly and run the rho-side descent: both conditions become
# affine in B with known coefficients; Cramer gives B exactly; check
# |B| = w^4-consistency and rho-integrality — print the closing
# contradiction shape.
import sympy as sp

r, s, q, w, t = sp.symbols('r s q w t', positive=True)
XA, YA = sp.symbols('XA YA', real=True)
SLOTS = [r, s, q, XA, YA, w, None, None]

def parse8(ser):
    h = sp.Integer(0)
    if not ser.strip():
        return h
    for term in ser.split(';'):
        f = term.split(',')
        c = sp.Integer(f[0])
        mono = c
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
print(f"{len(tri)} triples, {len(pairs)} pairs", flush=True)

X, Y = sp.symbols('X Y', real=True)

def band_factors(i1, i2):
    (x1, y1, z1) = tri[i1]
    (x2, y2, z2) = tri[i2]
    det = sp.expand(x1*y2 - x2*y1)
    if det == 0:
        return None
    nx = sp.expand(z2*y1 - z1*y2)
    ny = sp.expand(x2*z1 - x1*z2)
    band = sp.expand(nx**2 + ny**2 - w**4*det**2)
    band = band.subs({XA: X**2 - Y**2, YA: 2*X*Y})
    F = sp.factor(sp.expand(band))
    parts = F.args if isinstance(F, sp.Mul) else [F]
    return [b for a in parts for b, e in [a.as_base_exp()] if not b.is_number]

def shiftcells(g):
    if X not in g.free_symbols and Y not in g.free_symbols:
        return None
    m = sp.Poly(g, X, Y).total_degree()
    sub = g.subs({X: (t + q**2/t)/2, Y: (t - q**2/t)/(2*sp.I)})
    num, _ = sp.fraction(sp.together(sp.expand(sub * t**m)))
    P = sp.Poly(sp.expand(num), t)
    return {k - m: sp.expand(c) for (k,), c in P.terms()}, m

TARGET = sp.expand(9*r**2 + s**2)
hit = None
for idx, (i1, i2) in enumerate(pairs):
    if i1 not in tri or i2 not in tri:
        continue
    fac = band_factors(i1, i2)
    if fac is None:
        continue
    for g in fac:
        sc = shiftcells(g)
        if sc is None:
            continue
        cells, m = sc
        pos = [d for d in cells if d > 0]
        if len(pos) != 1:
            continue
        P = cells[pos[0]]
        Nf = sp.factor(sp.expand(P * P.subs(sp.I, -sp.I)))
        num, _ = sp.fraction(Nf)
        Fp = sp.factor(num)
        bases = [bb.as_base_exp()[0] for bb in (Fp.args if isinstance(Fp, sp.Mul) else [Fp])]
        if any(sp.expand(bb - TARGET) == 0 for bb in bases):
            hit = (idx, i1, i2, g, pos[0], P, Nf)
            break
    if hit:
        break
    if idx % 200 == 0:
        print(f"  scanned {idx}", flush=True)

if not hit:
    print("no quadratic-family hit found in scan")
    raise SystemExit

idx, i1, i2, g, d, P, Nf = hit
print(f"\nHIT pair {idx} (cores {i1},{i2}), shift d={d}")
print("factor:", sp.sstr(g)[:200])
print("P =", sp.sstr(P))
print("N(P) =", sp.sstr(Nf))

# The descent: on the locus, chi^{2d} = lam * conj(P) with lam real,
# |chi^2| = q. Solve the pinned A and the resulting B.
# chi^{2d} value: A^k with A = chi^4 when d even.
Pc = sp.conjugate(P).rewrite(sp.conjugate).subs(sp.conjugate(r), r).subs(sp.conjugate(s), s).subs(sp.conjugate(q), q)
lam = sp.symbols('lam', real=True)
Aval = sp.expand(lam * Pc)   # chi^{2d} = lam * conj(P)
print("\npinned chi^{2d} =", sp.sstr(Aval))
# lam from |chi^{2d}| = q^{2d... }: lam^2 * N(P) = q^(2d)
lam2 = sp.solve(sp.Eq(lam**2 * Nf, q**(2*abs(d))), lam**2)
print("lam^2 =", lam2)
# B by Cramer with A substituted (A = chi^4: if d == 2, A = Aval)
(x1, y1, z1) = tri[i1]
(x2, y2, z2) = tri[i2]
det = sp.expand(x1*y2 - x2*y1)
nx = sp.expand(z2*y1 - z1*y2)
ny = sp.expand(x2*z1 - x1*z2)
AR = sp.re(Aval); AI = sp.im(Aval)
subsA = {XA: AR, YA: AI}
Bx = sp.simplify(nx.subs(subsA) / det.subs(subsA))
By = sp.simplify(ny.subs(subsA) / det.subs(subsA))
print("\nB = ", sp.sstr(sp.simplify(Bx))[:300])
print("  + i*", sp.sstr(sp.simplify(By))[:300])
NB = sp.simplify(Bx**2 + By**2)
print("\n|B|^2 =", sp.sstr(sp.factor(NB))[:400])
print("\nw^4 must equal |B|^2; factor of |B|^2/w^4:",
      sp.sstr(sp.factor(sp.simplify(NB / w**4)))[:400])
