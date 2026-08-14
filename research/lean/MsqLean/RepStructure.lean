/-
Structure of representations at prime-power centers:
if x² + y² = p^(2a) with 2xy ≠ 0, then 2xy = ± p^(2(a−t)) · Im(π^(4t))
for some 1 ≤ t ≤ a, where π is a fixed Gaussian prime over p and
p ∤ Im(π^(4t)).
-/
import Mathlib
import MsqLean.Classification
import MsqLean.GaussianBridge
import MsqLean.PrimePowerHelpers

open Zsqrtd

theorem rep_structure (p : ℕ) [hp : Fact p.Prime] (hp4 : p % 4 = 1)
    (π : GaussianInt) (hπnorm : π.norm = (p : ℤ))
    (a : ℕ) (x y : ℤ) (hxy : x ^ 2 + y ^ 2 = (p : ℤ) ^ (2 * a))
    (hne : 2 * x * y ≠ 0) :
    ∃ (t : ℕ) (ε : ℤ), 1 ≤ t ∧ t ≤ a ∧ (ε = 1 ∨ ε = -1) ∧
      ¬ ((p : ℤ) ∣ (π ^ (4 * t)).im) ∧
      2 * x * y = ε * (p : ℤ) ^ (2 * (a - t)) * (π ^ (4 * t)).im := by
  set z : GaussianInt := ⟨x, y⟩ with hzdef
  have hznorm : z.norm = (p : ℤ) ^ (2 * a) := by
    have h : z.norm = x * x + y * y := by simp [hzdef, Zsqrtd.norm]
    rw [h]; nlinarith [hxy]
  obtain ⟨u, j, hu, hj, hzeq⟩ := norm_pow_classify p π hπnorm (2 * a) z hznorm
  have hsplit : π * star π = ((p : ℤ) : GaussianInt) := by
    have := Zsqrtd.norm_eq_mul_conj π
    rw [hπnorm] at this
    exact this.symm
  have hz2 : z ^ 2 = u ^ 2 * (π ^ (2 * j) * (star π) ^ (2 * (2 * a - j))) := by
    rw [hzeq]
    have h1 : 2 * (2 * a - j) = (2 * a - j) + (2 * a - j) := by omega
    rw [h1, pow_add]
    have h2 : 2 * j = j + j := by omega
    rw [h2, pow_add]
    ring
  have h2xy : 2 * x * y = (z ^ 2).im := by
    rw [sq_im, hzdef]
  -- bridge: p never divides Im(π^(4t)) for t ≥ 1
  have hbr : ∀ t : ℕ, 1 ≤ t → ¬ ((p : ℤ) ∣ (π ^ (4 * t)).im) := by
    intro t ht
    have hπeta : π = (⟨π.re, π.im⟩ : GaussianInt) := by ext <;> rfl
    have hsq : π.re ^ 2 + π.im ^ 2 = (p : ℤ) := by
      have h := hπnorm
      simp [Zsqrtd.norm] at h
      nlinarith [h]
    have := im_pow_not_dvd p hp4 π.re π.im hsq (4 * t) (by omega)
    rw [← hπeta] at this
    exact this
  have hcast : ∀ e : ℕ, ((p : GaussianInt) ^ e) = (((p : ℤ) ^ e : ℤ) : GaussianInt) := by
    intro e; push_cast; ring
  have hre : ∀ e : ℕ, ((p : GaussianInt) ^ e).re = (p : ℤ) ^ e := by
    intro e; rw [hcast, Zsqrtd.re_intCast]
  have him : ∀ e : ℕ, ((p : GaussianInt) ^ e).im = 0 := by
    intro e; rw [hcast, Zsqrtd.im_intCast]
  -- unit sign
  obtain hu2 | hu2 := gaussian_unit_sq u hu <;>
    rcases Nat.lt_trichotomy j a with hja | hja | hja
  -- σ = +1, j < a
  · refine ⟨a - j, -1, by omega, by omega, Or.inr rfl, hbr _ (by omega), ?_⟩
    have hexp : 2 * (2 * a - j) = 2 * j + 4 * (a - j) := by omega
    have hfold : π ^ (2 * j) * (star π) ^ (2 * (2 * a - j))
        = (((p : ℤ) ^ (2 * (a - (a - j))) : ℤ) : GaussianInt) * star (π ^ (4 * (a - j))) := by
      rw [hexp, pow_add, ← mul_assoc, ← mul_pow, hsplit, ← star_pow]
      have hjj : 2 * (a - (a - j)) = 2 * j := by omega
      rw [hjj]; push_cast; ring
    rw [h2xy, hz2, hfold, hu2]
    have hjj2 : a - (a - j) = j := by omega
    rw [hjj2]
    simp [← star_pow, Zsqrtd.im_star, hre, him, -Int.cast_pow, -Nat.cast_pow]
    try ring
  -- σ = +1, j = a
  · exfalso
    apply hne
    rw [h2xy, hz2, hu2, hja]
    have : π ^ (2 * a) * (star π) ^ (2 * (2 * a - a)) = (((p : ℤ) ^ (2 * a) : ℤ) : GaussianInt) := by
      have h1 : 2 * (2 * a - a) = 2 * a := by omega
      rw [h1, ← mul_pow, hsplit]; push_cast; ring
    rw [this]
    simp [hre, him, -Int.cast_pow, -Nat.cast_pow]
  -- σ = +1, j > a
  · refine ⟨j - a, 1, by omega, by omega, Or.inl rfl, hbr _ (by omega), ?_⟩
    have hexp : 2 * j = 2 * (2 * a - j) + 4 * (j - a) := by omega
    have hfold : π ^ (2 * j) * (star π) ^ (2 * (2 * a - j))
        = (((p : ℤ) ^ (2 * (a - (j - a))) : ℤ) : GaussianInt) * π ^ (4 * (j - a)) := by
      rw [hexp, pow_add]
      have hjj : 2 * (a - (j - a)) = 2 * (2 * a - j) := by omega
      rw [hjj, mul_comm (π ^ (2 * (2 * a - j))) (π ^ (4 * (j - a))), mul_assoc,
        ← mul_pow, hsplit]
      push_cast; ring
    rw [h2xy, hz2, hfold, hu2]
    simp [← star_pow, Zsqrtd.im_star, hre, him, -Int.cast_pow, -Nat.cast_pow]
    try ring
  -- σ = −1, j < a
  · refine ⟨a - j, 1, by omega, by omega, Or.inl rfl, hbr _ (by omega), ?_⟩
    have hexp : 2 * (2 * a - j) = 2 * j + 4 * (a - j) := by omega
    have hfold : π ^ (2 * j) * (star π) ^ (2 * (2 * a - j))
        = (((p : ℤ) ^ (2 * (a - (a - j))) : ℤ) : GaussianInt) * star (π ^ (4 * (a - j))) := by
      rw [hexp, pow_add, ← mul_assoc, ← mul_pow, hsplit, ← star_pow]
      have hjj : 2 * (a - (a - j)) = 2 * j := by omega
      rw [hjj]; push_cast; ring
    rw [h2xy, hz2, hfold, hu2]
    have hjj2 : a - (a - j) = j := by omega
    rw [hjj2]
    simp [← star_pow, Zsqrtd.im_star, hre, him, -Int.cast_pow, -Nat.cast_pow]
    try ring
  -- σ = −1, j = a
  · exfalso
    apply hne
    rw [h2xy, hz2, hu2, hja]
    have : π ^ (2 * a) * (star π) ^ (2 * (2 * a - a)) = (((p : ℤ) ^ (2 * a) : ℤ) : GaussianInt) := by
      have h1 : 2 * (2 * a - a) = 2 * a := by omega
      rw [h1, ← mul_pow, hsplit]; push_cast; ring
    rw [this]
    simp [hre, him, -Int.cast_pow, -Nat.cast_pow]
  -- σ = −1, j > a
  · refine ⟨j - a, -1, by omega, by omega, Or.inr rfl, hbr _ (by omega), ?_⟩
    have hexp : 2 * j = 2 * (2 * a - j) + 4 * (j - a) := by omega
    have hfold : π ^ (2 * j) * (star π) ^ (2 * (2 * a - j))
        = (((p : ℤ) ^ (2 * (a - (j - a))) : ℤ) : GaussianInt) * π ^ (4 * (j - a)) := by
      rw [hexp, pow_add]
      have hjj : 2 * (a - (j - a)) = 2 * (2 * a - j) := by omega
      rw [hjj, mul_comm (π ^ (2 * (2 * a - j))) (π ^ (4 * (j - a))), mul_assoc,
        ← mul_pow, hsplit]
      push_cast; ring
    rw [h2xy, hz2, hfold, hu2]
    simp [← star_pow, Zsqrtd.im_star, hre, him, -Int.cast_pow, -Nat.cast_pow]
    try ring
