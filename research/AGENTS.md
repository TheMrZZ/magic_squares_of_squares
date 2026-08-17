# Orientation for AI workers

This branch (`research-campaign`) carries the impossibility campaign for the
3×3 magic square of squares. Read this file before you start.

## The problem and the reduction

A magic square of squares with center e² exists iff there are u, v with
u, v, u+v, u−v all in D(e) = {2xy : x²+y²=e²}. Only primes ≡ 1 (mod 4)
("useful primes") in e feed D(e). Everything else in e is the rigid
cofactor s.

## The theorem map (all machine-checked, zero sorries)

- Theorem C: a center root with ≤ 1 useful prime is impossible.
  `research/lean/MsqLean/TheoremCFinal.lean`, `GeneralTheoremC.lean`.
- Theorems E, F, G: center roots s·p·q, s·p²·q, s·p³·q are impossible.
- The uniform theorem: s·pᵃ·q is impossible for every a ≥ 1.
  `research/lean/MsqLean/UniformAInt.lean`, capstone
  `no_magic_square_of_squares_spaq_center` and the swap corollary
  `no_magic_square_of_squares_two_useful_min_exp_one`.

## The current milestone

Milestone 1: Theorem H — no center root s·p²·q². Paper proof first, Lean
after. The survivor data comes from `research/scripts/u22_probe.py` and
`u22_bands.py` (600 residual relations: 296 zero-side, 34 band-type,
270 higher-core). The active front is 1a: kill the 34 band relations
through norm-form arguments in the rings of the disc-8/disc-12 forms.
The full roadmap (milestones 1–4) sits in the plan ledger at the end of
`research/scripts/UNIFORM_NOTES.md`.

## Rules

- Write all prose in ASD-STE100 Simplified Technical English: short
  sentences, active voice, simple tenses. Technical names stay.
- Commit messages carry no AI attribution of any kind.
- Push only to `research-campaign`. NEVER merge anything without
  Florian's explicit approval.
- Every claimed kill must be tested against the exact numeric sweeps.
- Log every result in `research/scripts/UNIFORM_NOTES.md` (one round
  entry per work session).
- Use `uv run --with sympy python3 ...` for the scripts.
