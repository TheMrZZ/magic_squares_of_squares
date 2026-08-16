# MsqLean — formal library for the magic square of squares campaign

Lean 4 + mathlib library (zero sorries, full `lake build` green)
formalizing the structural results of the impossibility campaign.
Everything is stated over arbitrary odd primes `p ≡ 1 (mod 4)` with
Gaussian representations `π = ⟨A, B⟩`, `χ = ⟨C, D⟩` in
`GaussianInt = ℤ√(−1)`.

## Headline theorems

| File | Result |
|---|---|
| `Reduction.lean` | The center reduction: a magic square of squares with center e² exists iff u, v, u+v, u−v ∈ D(e) (both directions). |
| `TheoremCFinal.lean` | `no_magic_square_of_squares_single_prime_center` — the center root needs ≥ 2 distinct primes ≡ 1 (mod 4). |
| `TheoremEDispatch.lean` | `no_magic_square_of_squares_spq_center` — **Theorem E**: no center root s·p·q (distinct useful primes, rigid s). Full chain: `rep_structure_spq` → `no_assignment_spq` → six pair-dispatchers → certificate tiers (`TheoremEInt/Gauss/Residue.lean`). |
| `TheoremFCore.lean` | `no_magic_square_of_squares_sp2q_center` — **Theorem F**: no center root s·p²·q. Seven D-classes (`rep_structure_sp2q`), a 16-bucket router (`no_assignment_sp2q`), two 25-cell cross-pair cores (T/S forms), the Theorem-E-reuse dispatcher (p²-cancellation), and a 49-cell ratio layer whose deep cells reduce to the Fermat descent u⁴ − 4v⁴ = w² — resolved by mathlib's `not_fermat_42` (Fermat's right triangle theorem). |
| `TheoremGCore.lean` (+ `TheoremG.lean`, `TheoremGInt.lean`) | `no_magic_square_of_squares_sp3q_center` — **Theorem G**: no center root s·p³·q. Ten D-classes (`rep_structure_sp3q` — the seven Theorem-F classes scaled by p² plus q²I₁₂ and the two Im(π¹²χ^±4) twists), a 16-bucket router (`no_assignment_sp3q`) whose low bucket telescopes to Theorem F by p²-cancellation, a three-way mixed core (every low class is p²-divisible, so p⁴ ∣ q⁴ kills the whole grid), a deep p = 5 descent cell (p⁴ ∣ 20t²J²), and a 10×10 ratio layer whose M8↔M9 cell runs Theorem F's descent through π¹² = (π⁶)² with base (q, p³). |
| `GradingLemma.lean` | `im_pipow_mul_not_dvd` — the two-prime grading/valuation-clash lemma. |

## The uniform kill layer (exponent-independent)

These theorems kill entire relation *shapes* at every exponent grid
(a,b) — and, through their opaque slots, at any number of primes:

| File | Theorems | Kills |
|---|---|---|
| `UniformPinch.lean` | `uniform_corner_aligned`, `uniform_corner_mixed` | Corner triples {(α−1,β),(α,β−1),(α,β)}, free anchors (mixed class exists only at α = 1). |
| `UniformTwin.lean` | `uniform_twin_master_pi`, `uniform_twin_master_chi` | Lone+twin shapes: lone power 2^s(2m+1), twin power 2^{s'}(2m'+1), killed iff s ≠ s' + 1 (the 2-adic master rule). Plus 8 convenience instances. |
| `UniformTwin3.lean` | `uniform_twin_composite_chi(_pow)`, `uniform_twin_composite_lone(_pow)` | Multi-prime composite twins: collapse over W = χ̄^{4k}ψ^{4l}, or composite lone Z = π^{4k}χ^{4l} with twin Z^t. |

Census coverage (scripts `research/scripts/symab_census.py`,
`sym3ab_census.py`, `symN_census.py`): 100% of unconditionally-killed
relations at every grid tested — (2,2), (3,2), (3,3), (4,2), (4,3),
(5,2), (4,4) two-prime; (1,1,1), (2,1,1), (2,2,1), (3,1,1) three-prime.

## (2,2)-specific instances (historical layer)

`CoreDisj.lean` (core extraction + `double_pinch_finish`),
`RelationFamily*.lean` (the four double-pinch families),
`TwinCollapse.lean` (the twelve twin families) — now corollaries of
the uniform layer, kept as concrete instances.

## Support

`ParityFacts.lean`, `PinchHelpers.lean`, `SimplestRelation.lean`
(shared arithmetic: `prime_pi`, `pi_not_dvd_star`, `not_dvd_other`,
strict pinches, parity of Re/Im of π⁴ powers).
