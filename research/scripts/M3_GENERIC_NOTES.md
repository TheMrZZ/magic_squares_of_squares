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

## The layered-sector reduction (design, Round 222)

Every stable-catalog cell has ρ-shift e ∈ {−2, 0, 2}, so each
condition is AFFINE in B = ρ^{2ε} once the χ-side value
A = χ^{2δ} is kept symbolic:

  Im(γᵢ·B) + tᵢ = 0, with γᵢ = T₁ᵢ − conj(T₋₁ᵢ),
  T±1ᵢ = Σ_d conj(P_{d,±2})·A^{d/2}, tᵢ = Im(T₀ᵢ).

The pair eliminates B by Cramer (the determinant is the B-cross);
the circle |B|² = w^{2ε'} closes into ONE consistency band in
(A, Ā, r, s, q, w). Substituting A = (X + iY)² gives a band
polynomial in (r, s, q, X, Y, w) per pair — the layered analog of
the Round-221 bands, one level deeper.

Plan: build the bands for all 9,612 live pairs at (1,1,1) in the
P8 engine (slots (r, s, q, X_A, Y_A, w)), dedupe and strip, dump
the distinct catalog, then classify the factors (definite forms,
irrational ratios, parity-nonzero, composite-reality) as in the
clean sector. Degenerate branches (B-cross ≡ 0, band ≡ 0) get the
aligned treatment: proportionality plus integrality.

## The pinning-cell master reduction (Round 224)

A pinning-cell factor is F = Im(z_π·χ^{2δ'}) with z_π an explicit
π-side Gaussian form. If F = 0 at data:

  χ^{2δ'}·z_π = t ∈ ℝ. Conjugating and comparing χ-valuations:
  v_χ(t) = 2δ' + v_χ(z_π) and v_χ(t) = v_χ̄(z_π), so
  v_χ̄(z_π) ≥ 2δ' — that is, χ̄^{2δ'} divides z_π. Writing
  z_π = χ̄^{2δ'}·z' gives t = q^{2δ'}·z', so z' is REAL:

  **z_π is a real multiple of χ̄^{2δ'}.**

Consequences, per cell:
1. q^{2δ'} | N(z_π)(r, s). The free binary factor F₀ of N(z_π)
   (9r² + s², r⁴ + 34r²s² + s⁴, …) must absorb q^{2δ'} — the
   power-law curve q^{2δ'} ≤ F₀ ~ p^{deg}. Cells whose N(z_π) has
   NO free factor (pure p-powers, q-powers, (q⁴+1)-powers — a
   large fraction of the 89) die immediately: nothing can carry
   the χ̄-valuation.
2. On the surviving curve loci the pinning is exact and rigid:
   χ^{2δ'} = ±q^{δ'}·conj(z_π)/|z_π| is an explicit Gaussian
   integer, so χ² must be an exact Gaussian ROOT of an explicit
   π-side number — the Theorem-H master-kill shape (the
   Pythagorean/coprime-splitting descent). Each of the free-form
   families gets one such descent.
3. The χ↔ρ symmetric run (eliminate A instead of B) produces the
   same structure on the w-side; a pair on a curve locus must
   satisfy both — the stacked coincidence that the descents kill.

Next: sort the 89 cells into no-free-factor (instant) versus
free-form families; write the descent per family (they cluster by
the ~10 distinct free forms).
