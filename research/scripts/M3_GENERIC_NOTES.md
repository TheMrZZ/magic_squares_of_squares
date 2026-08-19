# Milestone 3, the generic layer: design notes

Goal: the all-exponents theorem at three primes — no center root
s·pᵃ·qᵇ·rᶜ for any a, b, c ≥ 1. The fifteen swept grids are the
bases; this layer makes the kills generic in the exponents and
telescopes them.

## The balance schema (Round 216, machine-verified)

Group each live core's monomials by the shift cell
(d, e) = (exp x − exp y, exp z − exp w). The cell coefficient
P_{d,e} is a polynomial in (u, v) = (π², π̄²).

- **Conjugate pairing** (verified at seven grids, 73,000 cores,
  zero exceptions): P_{−d,−e} = ± conj(P_{d,e}). So each live
  condition is one real statement:
  Im or Re of [ Σ_{(d,e) > 0} conj(P_{d,e})·χ^{2d}·ρ^{2e} ] (+ a
  real (0,0) cell) = 0.
- **Catalog stability on the ρ-axis**: the distinct P-form catalog
  along (1,1,c) is 21 → 23 → 23 for c = 1, 2, 3. Only the shift
  cells multiply with c. The same holds on the χ-axis by symmetry.
- **Exact χ↔ρ symmetry**: (2,1,2) and (2,2,1) agree statistic for
  statistic. One generic argument covers both non-anchor axes.
- The P-forms are tiny (degree ≤ 2 in (u,v)) and library-shaped:
  u² + v², v² ± uv + u², v² + 2u², single monomials.

## The profile landscape at (1,1,1)

20 distinct profiles (sets of positive shift cells), 67 pair
combinations. Three families:

1. **Single-cell profiles** ([(2,0)], [(0,2)], [(2,2)], [(2,−2)],
   each with or without a real (0,0) cell) — exact pinnings: the
   condition forces χ^{2d}ρ^{2e}·P̄ real or imaginary, so
   χ^{2d}ρ^{2e} = z/w̃ with w̃ from the finite smooth support, and
   the master identity 4w̃²·q^{2d}·r^{2e} = Σ² + 4Ω² follows.
   This is M2's clean sector with the bi-shift pinning.
2. **Multi-cell profiles** (2–3 cells from the triangle
   {(2,−2), (2,0), (2,2), (0,2)}) — the layered sector: chains and
   inhomogeneous masters, per profile pair.
3. **Odd-shift profiles** ([(1,−2),(1,2)] and [(2,−1),(2,1)], 8
   cores each) — odd powers of one factor; need their own small
   analysis (the M2 analog died by parity).

## The plan

1. Σ/Ω linearization + w̃-support tables for the stable catalog
   (per positive cell: 2w̃·Re(χ^{2d}ρ^{2e}) = Σ, w̃·Im = Ω with
   Σ, Ω in (r, s); support of w̃ from resultant contents).
2. Terminal/liveness classification per profile pair (the M2
   liveness filter: a condition with exactly one of Σ, Ω zero is
   dead outright).
3. The (δ,ε)-free passage: coprime masters (the gcd tables get one
   more prime to absorb), crosses, the aligned magnitude identity,
   and the √−5-type proportional cells.
4. Telescoping: r²-steps on c with the swept bases (c ≤ 3), then
   the χ-axis by symmetry, then the anchor axis with the M2
   two-exponent theorem as the floor.

## Validation discipline

Every generic claim is checked against the fifteen swept grids: the
claimed kill must reproduce the cached verdict for every live pair
it covers. The REDUCE3 env-gated pass in certifier3.rs carries the
schema/profile extraction; further passes extend it.

## Dead end recorded

The naive c = 1 reduction (conditions linear in (U,V), Cramer plus
the circle) is wrong: class elements carry ρ^{2l}, so conditions
are quadratic in (U,V). The sector map killed the idea in one run.
