/-
Fermat's theorem on arithmetic progressions of squares:
if a², b², c² are in AP (a² + c² = 2b²), the common difference b² − a²
is divisible by 24.  Hence both structure parameters u, v of any magic
square of squares are ≡ 0 (mod 24) and all nine entries agree mod 24.
-/
import Mathlib

private lemma int_dvd_of_zmod16 (x : ℤ)
    (h : (x : ZMod 16) = 0 ∨ (x : ZMod 16) = 8) : (8 : ℤ) ∣ x := by
  rcases h with h | h
  · have h16 : (16 : ℤ) ∣ x := (ZMod.intCast_zmod_eq_zero_iff_dvd _ _).mp h
    omega
  · have h16 : (16 : ℤ) ∣ (x - 8) := by
      apply (ZMod.intCast_zmod_eq_zero_iff_dvd _ _).mp
      push_cast
      rw [h]
      decide
    omega

/-- **Fermat.**  The common difference of three squares in arithmetic
progression is divisible by 24. -/
theorem fermat_ap_squares (a b c : ℤ) (h : a ^ 2 + c ^ 2 = 2 * b ^ 2) :
    (24 : ℤ) ∣ b ^ 2 - a ^ 2 := by
  have hz16 : ∀ x y z : ZMod 16,
      x ^ 2 + z ^ 2 = 2 * y ^ 2 → y ^ 2 - x ^ 2 = 0 ∨ y ^ 2 - x ^ 2 = 8 := by
    decide
  have hz3 : ∀ x y z : ZMod 3,
      x ^ 2 + z ^ 2 = 2 * y ^ 2 → y ^ 2 - x ^ 2 = 0 := by
    decide
  have hcast16 : ((a : ZMod 16)) ^ 2 + ((c : ZMod 16)) ^ 2 = 2 * ((b : ZMod 16)) ^ 2 := by
    have := congrArg (fun z : ℤ => (z : ZMod 16)) h
    push_cast at this
    simpa using this
  have hcast3 : ((a : ZMod 3)) ^ 2 + ((c : ZMod 3)) ^ 2 = 2 * ((b : ZMod 3)) ^ 2 := by
    have := congrArg (fun z : ℤ => (z : ZMod 3)) h
    push_cast at this
    simpa using this
  have h8 : (8 : ℤ) ∣ b ^ 2 - a ^ 2 := by
    apply int_dvd_of_zmod16
    have := hz16 (a : ZMod 16) (b : ZMod 16) (c : ZMod 16) hcast16
    rcases this with h0 | h8
    · left;  push_cast; simpa using h0
    · right; push_cast; simpa using h8
  have h3 : (3 : ℤ) ∣ b ^ 2 - a ^ 2 := by
    have := hz3 (a : ZMod 3) (b : ZMod 3) (c : ZMod 3) hcast3
    have h0 : ((b ^ 2 - a ^ 2 : ℤ) : ZMod 3) = 0 := by push_cast; simpa using this
    exact (ZMod.intCast_zmod_eq_zero_iff_dvd _ _).mp h0
  omega

/-- Consequence for magic squares of squares: with center `e²` and diagonal
cells `tA², tI²` (so `tA² + tI² = 2e²`), the structure parameter
`u = tA² − e²` is divisible by 24.  Applied to all four center lines this
gives `24 ∣ u, v, u+v, u−v`, i.e. all nine entries agree modulo 24. -/
theorem magic_param_dvd_24 (tA tE tI : ℤ) (h : tA ^ 2 + tI ^ 2 = 2 * tE ^ 2) :
    (24 : ℤ) ∣ tA ^ 2 - tE ^ 2 := by
  have := fermat_ap_squares tI tE tA (by linarith)
  omega
