/-
Classification of Gaussian integers of prime-power norm:
if N(π) = p (so π is a Gaussian prime over the split prime p) and
N(z) = pⁿ, then z = u · πʲ · (star π)ⁿ⁻ʲ for a unit u.

This is the last structural ingredient of Theorem C for prime-power
centers e = pᵃ: the representations x² + y² = e² are exactly the
coordinate pairs of these z, so their products 2xy have pairwise distinct
p-adic valuations, and the valuation engine forbids u, v, u+v, u−v ∈ D(e).
-/
import Mathlib

open Zsqrtd

/-- An element of prime norm is prime (ℤ[i] is a PID). -/
theorem prime_of_norm_prime (z : GaussianInt) (h : Prime z.norm) : Prime z := by
  have hirr : Irreducible z := by
    constructor
    · intro hu
      exact h.not_unit (by
        have : z.norm.natAbs = 1 := Zsqrtd.norm_eq_one_iff.mpr hu
        have habs : z.norm = 1 ∨ z.norm = -1 := by omega
        rcases habs with h1 | h1 <;> rw [h1] <;> first
          | exact isUnit_one
          | exact ⟨⟨-1, -1, by norm_num, by norm_num⟩, rfl⟩)
    · intro x y hxy
      have hnorm : x.norm * y.norm = z.norm := by rw [← Zsqrtd.norm_mul, ← hxy]
      rcases (h.irreducible.isUnit_or_isUnit hnorm.symm) with hx | hy
      · left
        exact Zsqrtd.norm_eq_one_iff.mp (by
          rcases Int.isUnit_iff.mp hx with h1 | h1 <;> simp [h1])
      · right
        exact Zsqrtd.norm_eq_one_iff.mp (by
          rcases Int.isUnit_iff.mp hy with h1 | h1 <;> simp [h1])
  exact hirr.prime

/-- star preserves divisibility. -/
theorem star_dvd_star {z w : GaussianInt} (h : z ∣ w) : star z ∣ star w := by
  obtain ⟨c, rfl⟩ := h
  exact ⟨star c, by rw [star_mul, mul_comm]⟩

/-- **Classification.**  Every Gaussian integer of norm pⁿ (with π a Gaussian
prime of norm p) is a unit times πʲ (star π)ⁿ⁻ʲ. -/
theorem norm_pow_classify (p : ℕ) [hp : Fact (Nat.Prime p)]
    (π : GaussianInt) (hπ : π.norm = p) :
    ∀ n : ℕ, ∀ z : GaussianInt, z.norm = (p : ℤ) ^ n →
      ∃ (u : GaussianInt) (j : ℕ), IsUnit u ∧ j ≤ n ∧
        z = u * π ^ j * (star π) ^ (n - j) := by
  have hπprime : Prime π := prime_of_norm_prime π (by
    rw [hπ, Int.prime_iff_natAbs_prime]; simpa using hp.out)
  have hsplit : (p : GaussianInt) = π * star π := by
    have := Zsqrtd.norm_eq_mul_conj π
    rw [hπ] at this
    exact_mod_cast this
  intro n
  induction n with
  | zero =>
    intro z hz
    refine ⟨z, 0, ?_, le_refl 0, by ring⟩
    have h1 : z.norm.natAbs = 1 := by rw [hz]; simp
    exact Zsqrtd.norm_eq_one_iff.mp h1
  | succ n ih =>
    intro z hz
    have hpz : (p : GaussianInt) ∣ z * star z := by
      have h1 : ((z.norm : ℤ) : GaussianInt) = z * star z := by
        exact_mod_cast Zsqrtd.norm_eq_mul_conj z
      rw [hz] at h1
      refine ⟨(p : GaussianInt) ^ n, ?_⟩
      rw [← h1]; push_cast; ring
    have hπz : π ∣ z ∨ π ∣ star z := by
      have hπp : π ∣ (p : GaussianInt) := ⟨star π, hsplit⟩
      rcases hπprime.2.2 z (star z) (dvd_trans hπp hpz) with h | h
      · exact Or.inl h
      · exact Or.inr h
    have hpne : (p : ℤ) ≠ 0 := by exact_mod_cast hp.out.ne_zero
    rcases hπz with hcase | hcase
    · obtain ⟨w, rfl⟩ := hcase
      have hw : w.norm = (p : ℤ) ^ n := by
        have h1 : π.norm * w.norm = (p : ℤ) ^ (n + 1) := by
          rw [← Zsqrtd.norm_mul]; exact hz
        rw [hπ] at h1
        have h2 : (p : ℤ) ^ (n + 1) = (p : ℤ) * (p : ℤ) ^ n := by ring
        rw [h2] at h1
        exact mul_left_cancel₀ hpne h1
      obtain ⟨u, j, hu, hj, hzeq⟩ := ih w hw
      exact ⟨u, j + 1, hu, by omega, by
        rw [hzeq]
        have : n + 1 - (j + 1) = n - j := by omega
        rw [this]; ring⟩
    · have hstar : star π ∣ z := by
        have := star_dvd_star hcase
        simpa using this
      obtain ⟨w, rfl⟩ := hstar
      have hw : w.norm = (p : ℤ) ^ n := by
        have hstarnorm : (star π).norm = (p : ℤ) := by
          have : (star π).norm = π.norm := by
            simp [Zsqrtd.norm]
          rw [this, hπ]
        have h1 : (star π).norm * w.norm = (p : ℤ) ^ (n + 1) := by
          rw [← Zsqrtd.norm_mul]; exact hz
        rw [hstarnorm] at h1
        have h2 : (p : ℤ) ^ (n + 1) = (p : ℤ) * (p : ℤ) ^ n := by ring
        rw [h2] at h1
        exact mul_left_cancel₀ hpne h1
      obtain ⟨u, j, hu, hj, hzeq⟩ := ih w hw
      by_cases hjn : j = n
      · -- w = u πⁿ, so z = u πⁿ (star π); fold as j' = n, n+1−n = 1
        refine ⟨u, n, hu, by omega, ?_⟩
        rw [hzeq, hjn]
        have : n + 1 - n = 1 := by omega
        rw [this]
        have h0 : n - n = 0 := by omega
        rw [h0]; ring
      · refine ⟨u, j, hu, by omega, ?_⟩
        rw [hzeq]
        have h1 : n + 1 - j = (n - j) + 1 := by omega
        rw [h1]; ring
