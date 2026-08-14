/-
Theorem A of the magic-squares-of-squares investigation.

A 3×3 fully magic square forces its magic sum S to equal three times the
center entry.  Consequently a fully magic square whose center is a nonzero
perfect square can never have a perfect-square magic sum (3n² = m² is
impossible), which is why no quasi square in the Lucas family — square
magic sum — can ever be completed to 8/8.
-/
import Mathlib

/-- In any 3×3 magic square, the magic sum is three times the center. -/
theorem magic_sum_eq_three_center
    (a b c d e f g h i S : ℕ)
    (r1 : a + b + c = S) (r2 : d + e + f = S) (r3 : g + h + i = S)
    (c1 : a + d + g = S) (c2 : b + e + h = S) (c3 : c + f + i = S)
    (d1 : a + e + i = S) (d2 : c + e + g = S) :
    S = 3 * e := by
  omega

/-- `3 n² = m²` has no solution with `n ≠ 0` (√3 is irrational, ℕ form). -/
theorem three_mul_sq_ne_sq (m n : ℕ) (hn : n ≠ 0) : 3 * n ^ 2 ≠ m ^ 2 := by
  intro hEq
  have hm : m ≠ 0 := by
    rintro rfl
    rw [zero_pow (by norm_num : 2 ≠ 0)] at hEq
    rcases Nat.mul_eq_zero.mp hEq with h | h
    · omega
    · exact hn (by simpa [pow_eq_zero_iff] using h)
  have h3 : Nat.Prime 3 := by norm_num
  have key := congrArg (fun k : ℕ => k.factorization 3) hEq
  simp only [Nat.factorization_mul (by norm_num : (3 : ℕ) ≠ 0) (pow_ne_zero 2 hn),
    Nat.factorization_pow, Finsupp.add_apply, Finsupp.smul_apply,
    Nat.Prime.factorization_self h3, smul_eq_mul] at key
  -- key : 1 + 2 * n.factorization 3 = 2 * m.factorization 3
  omega

/-- **Theorem A.**  No 3×3 fully magic square with nonzero perfect-square
center has a perfect-square magic sum.  Every entry of a magic square of
squares is a perfect square, so this covers the entire Lucas family. -/
theorem no_magic_square_of_squares_with_square_sum
    (a b c d e f g h i S : ℕ)
    (r1 : a + b + c = S) (r2 : d + e + f = S) (r3 : g + h + i = S)
    (c1 : a + d + g = S) (c2 : b + e + h = S) (c3 : c + f + i = S)
    (d1 : a + e + i = S) (d2 : c + e + g = S)
    (he : ∃ n, n ≠ 0 ∧ e = n ^ 2)
    (hS : ∃ m, S = m ^ 2) : False := by
  obtain ⟨n, hn, rfl⟩ := he
  obtain ⟨m, hm⟩ := hS
  have h3e : S = 3 * n ^ 2 :=
    magic_sum_eq_three_center a b c d (n ^ 2) f g h i S r1 r2 r3 c1 c2 c3 d1 d2
  exact three_mul_sq_ne_sq m n hn (by omega)
