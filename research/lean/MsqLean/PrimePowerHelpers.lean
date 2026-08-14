/-
Helper lemmas for the fully-formal Theorem C at prime-power centers.
-/
import Mathlib
import MsqLean.Classification
import MsqLean.GaussianBridge

open Zsqrtd

/-- Units of ℤ[i] square to ±1. -/
theorem gaussian_unit_sq (u : GaussianInt) (hu : IsUnit u) :
    u ^ 2 = 1 ∨ u ^ 2 = -1 := by
  have h1 : u.norm.natAbs = 1 := Zsqrtd.norm_eq_one_iff.mpr hu
  have h2 : u.re * u.re + u.im * u.im = u.norm := by simp [Zsqrtd.norm]
  have hnn : 0 ≤ u.norm := by rw [← h2]; nlinarith [mul_self_nonneg u.re, mul_self_nonneg u.im]
  have hn1 : u.norm = 1 := by omega
  have h3 : u.re * u.re + u.im * u.im = 1 := by rw [h2, hn1]
  have h4 : u = ⟨1,0⟩ ∨ u = ⟨-1,0⟩ ∨ u = ⟨0,1⟩ ∨ u = ⟨0,-1⟩ := by
    rcases eq_or_ne u.re 0 with hre | hre
    · have him : u.im * u.im = 1 := by nlinarith [h3]
      rcases Int.isUnit_iff.mp (IsUnit.of_mul_eq_one _ him) with h | h
      · right; right; left; ext <;> simp_all
      · right; right; right; ext <;> simp_all
    · have hre2 : 1 ≤ u.re * u.re := by
        rcases lt_or_gt_of_ne hre with h | h <;> nlinarith
      have him2 : u.im * u.im = 0 := by nlinarith [mul_self_nonneg u.im]
      have him0 : u.im = 0 := mul_self_eq_zero.mp him2
      have hrr : u.re * u.re = 1 := by rw [him0] at h3; linarith
      rcases Int.isUnit_iff.mp (IsUnit.of_mul_eq_one _ hrr) with h | h
      · left; ext <;> simp_all
      · right; left; ext <;> simp_all
  rcases h4 with h | h | h | h <;> rw [h]
  · left; decide
  · left; decide
  · right; decide
  · right; decide

/-- Exact p-power extraction is unique: pˢ·x = pᵗ·y with p ∤ x, p ∤ y forces s = t. -/
theorem pow_eq_pow_of_coprime (p : ℕ) (hp : Nat.Prime p) (s t : ℕ) (x y : ℤ)
    (hx : ¬ (p : ℤ) ∣ x) (hy : ¬ (p : ℤ) ∣ y)
    (h : (p : ℤ) ^ s * x = (p : ℤ) ^ t * y) : s = t := by
  by_contra hne
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp
  rcases Nat.lt_or_ge s t with hlt | hge
  · have hxy : x = (p : ℤ) ^ (t - s) * y := by
      have hps : (p : ℤ) ^ s ≠ 0 := pow_ne_zero _ (by exact_mod_cast hp.ne_zero)
      have h2 : (p : ℤ) ^ s * x = (p : ℤ) ^ s * ((p : ℤ) ^ (t - s) * y) := by
        rw [h, ← mul_assoc, ← pow_add]
        congr 2
        omega
      exact mul_left_cancel₀ hps h2
    exact hx (hxy ▸ Dvd.dvd.mul_right (dvd_pow_self _ (by omega)) y)
  · have hgt : t < s := by omega
    have hxy : y = (p : ℤ) ^ (s - t) * x := by
      have hpt : (p : ℤ) ^ t ≠ 0 := pow_ne_zero _ (by exact_mod_cast hp.ne_zero)
      have h2 : (p : ℤ) ^ t * y = (p : ℤ) ^ t * ((p : ℤ) ^ (s - t) * x) := by
        rw [← h, ← mul_assoc, ← pow_add]
        congr 2
        omega
      exact mul_left_cancel₀ hpt h2
    exact hy (hxy ▸ Dvd.dvd.mul_right (dvd_pow_self _ (by omega)) x)

/-- Squaring doubles coordinates' product into the imaginary part. -/
theorem sq_im (z : GaussianInt) : (z ^ 2).im = 2 * z.re * z.im := by
  rw [pow_two]
  simp [Zsqrtd.im_mul]
  ring
