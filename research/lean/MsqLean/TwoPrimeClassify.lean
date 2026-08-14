/-
Classification of Gaussian integers of norm s²·pᵐ·qⁿ for two split primes:
z = u · s · πʲ π̄^{m-j} · χᵏ χ̄^{n-k}.  Foundation for formalizing the
two-prime impossibility theorems (E and F).
-/
import Mathlib
import MsqLean.Classification
import MsqLean.Rigid
import MsqLean.GeneralTheoremC

open Zsqrtd

theorem norm_two_prime_classify (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hne : p ≠ q)
    (π χ : GaussianInt) (hπ : π.norm = (p : ℤ)) (hχ : χ.norm = (q : ℤ))
    (s : ℕ) (hs : ∀ r : ℕ, r.Prime → r ∣ s → r % 4 ≠ 1) :
    ∀ n : ℕ, ∀ m : ℕ, ∀ z : GaussianInt,
      z.norm = ((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ m * (q : ℤ) ^ n →
      ∃ (u : GaussianInt) (j k : ℕ), IsUnit u ∧ j ≤ m ∧ k ≤ n ∧
        z = u * (s : GaussianInt) * π ^ j * (star π) ^ (m - j)
              * χ ^ k * (star χ) ^ (n - k) := by
  have hχprime : Prime χ := prime_of_norm_prime χ (by
    rw [hχ, Int.prime_iff_natAbs_prime]; simpa using hq.out)
  have hχsplit : (q : GaussianInt) = χ * star χ := by
    have := Zsqrtd.norm_eq_mul_conj χ
    rw [hχ] at this
    exact_mod_cast this
  intro n
  induction n with
  | zero =>
    intro m z hz
    obtain ⟨u, j, hu, hj, hzeq⟩ := norm_spow_classify p π hπ s hs m z (by
      rw [hz]; ring)
    exact ⟨u, j, 0, hu, hj, le_refl 0, by rw [hzeq]; ring⟩
  | succ n ih =>
    intro m z hz
    have hqz : (q : GaussianInt) ∣ z * star z := by
      have h1 : ((z.norm : ℤ) : GaussianInt) = z * star z := by
        exact_mod_cast Zsqrtd.norm_eq_mul_conj z
      rw [hz] at h1
      refine ⟨(((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ m * (q : ℤ) ^ n : ℤ), ?_⟩
      rw [← h1]; push_cast; ring
    have hχz : χ ∣ z ∨ χ ∣ star z := by
      have hχq : χ ∣ (q : GaussianInt) := ⟨star χ, hχsplit⟩
      rcases hχprime.2.2 z (star z) (dvd_trans hχq hqz) with h | h
      · exact Or.inl h
      · exact Or.inr h
    have hqne : (q : ℤ) ≠ 0 := by exact_mod_cast hq.out.ne_zero
    rcases hχz with hcase | hcase
    · obtain ⟨w, rfl⟩ := hcase
      have hw : w.norm = ((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ m * (q : ℤ) ^ n := by
        have h1 : χ.norm * w.norm = ((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ m * (q : ℤ) ^ (n + 1) := by
          rw [← Zsqrtd.norm_mul]; exact hz
        rw [hχ] at h1
        have h2 : ((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ m * (q : ℤ) ^ (n + 1)
            = (q : ℤ) * (((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ m * (q : ℤ) ^ n) := by ring
        rw [h2] at h1
        exact mul_left_cancel₀ hqne h1
      obtain ⟨u, j, k, hu, hj, hk, hzeq⟩ := ih m w hw
      exact ⟨u, j, k + 1, hu, hj, by omega, by
        rw [hzeq]
        have : n + 1 - (k + 1) = n - k := by omega
        rw [this]; ring⟩
    · have hstar : star χ ∣ z := by
        have := star_dvd_star hcase
        simpa using this
      obtain ⟨w, rfl⟩ := hstar
      have hw : w.norm = ((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ m * (q : ℤ) ^ n := by
        have hsn : (star χ).norm = (q : ℤ) := by
          have h : (star χ).norm = χ.norm := by simp [Zsqrtd.norm]
          rw [h, hχ]
        have h1 : (star χ).norm * w.norm
            = ((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ m * (q : ℤ) ^ (n + 1) := by
          rw [← Zsqrtd.norm_mul]; exact hz
        rw [hsn] at h1
        have h2 : ((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ m * (q : ℤ) ^ (n + 1)
            = (q : ℤ) * (((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ m * (q : ℤ) ^ n) := by ring
        rw [h2] at h1
        exact mul_left_cancel₀ hqne h1
      obtain ⟨u, j, k, hu, hj, hk, hzeq⟩ := ih m w hw
      by_cases hkn : k = n
      · refine ⟨u, j, n, hu, hj, by omega, ?_⟩
        rw [hzeq, hkn]
        have h1 : n + 1 - n = 1 := by omega
        have h0 : n - n = 0 := by omega
        rw [h1, h0]; ring
      · refine ⟨u, j, k, hu, hj, by omega, ?_⟩
        rw [hzeq]
        have h1 : n + 1 - k = (n - k) + 1 := by omega
        rw [h1]; ring
