# Sigma/Omega linearization and w-tilde support for the stable
# three-prime P-catalog (Round 217). For each catalog form P(u, v),
# substitute u = (r + i s)^2 ... no: u IS pi^2, so u = r + i s and
# v = r - i s with (r, s) = (Re pi^2, Im pi^2). Compute
# Sigma = 2 Re P, Omega = Im P, factor both, and bound the w-tilde
# support by the contents of Res_r(Sigma, Omega) and
# Res_s(Sigma, Omega) (the M2 method).
import sympy as sp

FORMS = """-1,0,1;1,1,0
-1,0,1;2,1,0
-1,0,2;-2,1,1;1,2,0
-1,0,2;1,2,0
-1,0,2;2,1,1;1,2,0
-1,0,2;2,2,0
-2,0,1;1,1,0
-2,0,2;1,2,0
-2,0,2;2,2,0
1,0,0
1,0,1;1,1,0
1,0,1;2,1,0
1,0,2;-1,1,1;2,2,0
1,0,2;-2,1,1;1,2,0
1,0,2;1,1,1;2,2,0
1,0,2;1,2,0
1,0,2;2,1,1;1,2,0
1,0,2;2,2,0
2,0,0
2,0,1;1,1,0
2,0,2;-1,1,1;1,2,0
2,0,2;1,1,1;1,2,0
2,0,2;1,2,0""".strip().split("\n")

r, s = sp.symbols("r s", integer=True)
u = r + sp.I * s
v = r - sp.I * s

rows = []
for line in FORMS:
    terms = line.strip().split(";")
    P = sp.Integer(0)
    disp = []
    for t in terms:
        c, ue, ve = (int(x) for x in t.split(","))
        P += c * u**ue * v**ve
        disp.append(f"{c}·u^{ue}v^{ve}")
    P = sp.expand(P)
    Sig = sp.expand(2 * sp.re(P.rewrite(sp.re).as_real_imag()[0]))
    # cleaner: split directly
    Pre, Pim = P.as_real_imag()
    Sig = sp.factor(sp.expand(2 * Pre))
    Om = sp.factor(sp.expand(Pim))
    if Om == 0 or Sig == 0:
        rows.append((line, Sig, Om, "degenerate (one side zero)", ""))
        continue
    Rr = sp.factor(sp.resultant(sp.expand(2 * Pre), sp.expand(Pim), r))
    Rs = sp.factor(sp.resultant(sp.expand(2 * Pre), sp.expand(Pim), s))
    def content(e):
        e = sp.expand(e)
        if e == 0:
            return 0
        cs = [sp.Rational(t.as_coeff_Mul()[0]) for t in sp.Add.make_args(e)]
        from functools import reduce
        import math
        return reduce(math.gcd, [abs(int(c)) for c in cs])
    rows.append((line, Sig, Om, sp.factor(Rr), sp.factor(Rs)))

out = ["# The three-prime Sigma/Omega table (stable catalog, 23 forms)",
       "",
       "Condition shape: a positive cell (d, e) pins",
       "2·w̃·Re(χ^{2d}ρ^{2e}) = t·Σ and w̃·Im(χ^{2d}ρ^{2e}) = t·Ω, with the",
       "master identity 4·w̃²·q^{2d}·r₃^{2e} = t²·(Σ² + 4Ω²)... normalized",
       "as in the M2 layer. The w̃-support divides the contents of the two",
       "resultants below (a prime of w̃ divides both Σ and Ω at the data",
       "point, and (r, s) = (Re π², Im π²) are coprime).",
       "",
       "| P | Σ = 2·Re P | Ω = Im P | Res_r(Σ, Ω) | Res_s(Σ, Ω) |",
       "|---|-----------|----------|-------------|-------------|"]
for line, Sig, Om, Rr, Rs in rows:
    out.append(f"| `{line}` | {sp.sstr(Sig)} | {sp.sstr(Om)} | {sp.sstr(Rr)} | {sp.sstr(Rs)} |")
print("\n".join(out))
