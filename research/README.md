# Research campaign: structure theorems for the magic square of squares

Results from the August 2026 investigation:

- **`paper/theorem-c.tex`** — draft paper: the D(e) reduction, the valuation
  obstruction (any magic square of squares needs a center root with ≥ 2
  distinct primes ≡ 1 mod 4), the e < 10^10 exhaustive exclusion, Bremner
  uniqueness below 10^9, and the two-prime rigidity program.
- **`lean/`** — Lean 4 + mathlib formalization (zero sorries). Build with
  `lake exe cache get && lake build`. Capstones:
  `no_magic_square_of_squares_single_prime_center`,
  `no_magic_square_of_squares_rigid_center` (GeneralTheoremC.lean),
  plus the reduction (Reduction.lean), Fermat's 24-divisibility
  (Fermat24.lean) and the Theorem D engine (TheoremDIdentity.lean).
- **`rust/`** — the center-root searcher: segmented sieve + Cornacchia +
  rayon. `cargo run --release 65 10_000_000_000` verifies no perfect square
  with center root below 10^10. `src/bin/nearmiss.rs` hunts 7-of-9
  (Bremner-type) configurations.

Status of the open problem: unsolved. The two-prime case is pinned to
explicit divisibility coincidences (see paper §5); the general case runs
through simultaneous congruent-number curves.
