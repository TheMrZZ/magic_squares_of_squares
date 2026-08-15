/-
Helper lemmas for the double-pinch certificates:
 * an ordinary integer divisible by π (a Gaussian prime above p) is
   divisible by p;
 * strict pinch: p ∣ n, 0 < |n| < p is absurd;
 * Re(χ²) = C² − D² is nonzero when C² + D² is an odd prime.
-/
import Mathlib

/-- If π = ⟨a,b⟩ has norm p (prime) and π divides an ordinary integer n
(as a Gaussian integer), then p divides n. -/
lemma int_dvd_of_gaussian_dvd (p : ℕ) [hp : Fact (Nat.Prime p)]
    (a b : ℤ) (hab : a ^ 2 + b ^ 2 = p) (n : ℤ)
    (h : (⟨a, b⟩ : GaussianInt) ∣ (n : GaussianInt)) : (p : ℤ) ∣ n := by
  have hnorm : (⟨a, b⟩ : GaussianInt).norm = (p : ℤ) := by
    have : (⟨a, b⟩ : GaussianInt).norm = a * a + b * b := by simp [Zsqrtd.norm]
    rw [this]; nlinarith [hab]
  have hdvd : (⟨a, b⟩ : GaussianInt).norm ∣ ((n : GaussianInt)).norm := by
    obtain ⟨c, hc⟩ := h
    exact ⟨c.norm, by rw [hc, Zsqrtd.norm_mul]⟩
  have hnn : ((n : GaussianInt)).norm = n ^ 2 := by
    simp [Zsqrtd.norm]; ring
  rw [hnorm, hnn] at hdvd
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  exact hpP.dvd_of_dvd_pow hdvd

/-- Strict pinch: a nonzero integer of absolute value below p cannot be
divisible by p. -/
lemma strict_pinch_int (p n : ℤ) (hp : 0 < p) (h : p ∣ n) (h0 : n ≠ 0)
    (hlt : |n| < p) : False := by
  have habs : p ∣ |n| := (dvd_abs p n).mpr h
  have := Int.le_of_dvd (abs_pos.mpr h0) habs
  omega

/-- If C² + D² is an odd prime then C² ≠ D². -/
lemma sq_ne_sq_of_odd_prime (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hodd : q % 2 = 1) (C D : ℤ) (hcd : C ^ 2 + D ^ 2 = q) :
    C ^ 2 - D ^ 2 ≠ 0 := by
  intro h
  have hC2 : C ^ 2 = D ^ 2 := by linarith
  have h2q : (q : ℤ) = 2 * D ^ 2 := by rw [← hcd, hC2]; ring
  have : (2 : ℤ) ∣ (q : ℤ) := ⟨D ^ 2, h2q⟩
  have h2 : (2 : ℤ) ∣ (q : ℤ) → (2 : ℕ) ∣ q := by
    intro hh; exact_mod_cast Int.natCast_dvd_natCast.mp (by exact_mod_cast hh)
  have := h2 this
  omega

/-- Im-core variant: the difference of conjugate squares is the purely
imaginary 4CD·i; π dividing it forces p ∣ 4CD. -/
lemma im_core_eq (C D : ℤ) :
    (⟨C, D⟩ : GaussianInt) ^ 2 - (star ⟨C, D⟩) ^ 2 = ⟨0, 4 * C * D⟩ := by
  ext
  · simp [sq]
  · simp [sq]; ring

/-- π ∣ ⟨0, n⟩ implies p ∣ n (multiply by −i to make it the integer n). -/
lemma int_dvd_of_gaussian_dvd_imag (p : ℕ) [hp : Fact (Nat.Prime p)]
    (a b : ℤ) (hab : a ^ 2 + b ^ 2 = p) (n : ℤ)
    (h : (⟨a, b⟩ : GaussianInt) ∣ (⟨0, n⟩ : GaussianInt)) : (p : ℤ) ∣ n := by
  have hn : ((n : ℤ) : GaussianInt) = ⟨0, -1⟩ * ⟨0, n⟩ := by
    ext
    · simp
    · simp
  have : (⟨a, b⟩ : GaussianInt) ∣ ((n : ℤ) : GaussianInt) := by
    rw [hn]; exact h.mul_left _
  exact int_dvd_of_gaussian_dvd p a b hab n this

/-- Coordinates of a prime representation are strictly below the prime. -/
lemma coord_sq_lt (p : ℕ) [hp : Fact (Nat.Prime p)]
    (A B : ℤ) (hab : A ^ 2 + B ^ 2 = p) : A ^ 2 < p ∧ B ^ 2 < p := by
  have h1 : A ≠ 0 ∧ B ≠ 0 := by
    constructor
    · rintro rfl
      have hB : B ^ 2 = p := by linarith
      have h2 : B.natAbs * B.natAbs = p := by
        have := congrArg Int.natAbs hB
        rwa [show (B^2).natAbs = B.natAbs * B.natAbs by
          rw [sq]; exact Int.natAbs_mul B B, Int.natAbs_natCast] at this
      rcases (Nat.Prime.eq_one_or_self_of_dvd hp.out B.natAbs ⟨B.natAbs, h2.symm⟩) with h | h
      · rw [h] at h2; simp at h2; have := hp.out.two_le; omega
      · rw [h] at h2; have := hp.out.one_lt; nlinarith
    · rintro rfl
      have hA : A ^ 2 = p := by linarith
      have h2 : A.natAbs * A.natAbs = p := by
        have := congrArg Int.natAbs hA
        rwa [show (A^2).natAbs = A.natAbs * A.natAbs by
          rw [sq]; exact Int.natAbs_mul A A, Int.natAbs_natCast] at this
      rcases (Nat.Prime.eq_one_or_self_of_dvd hp.out A.natAbs ⟨A.natAbs, h2.symm⟩) with h | h
      · rw [h] at h2; simp at h2; have := hp.out.two_le; omega
      · rw [h] at h2; have := hp.out.one_lt; nlinarith
  have hA1 : 1 ≤ A ^ 2 := by
    have := pow_ne_zero 2 h1.1; have := sq_nonneg A; omega
  have hB1 : 1 ≤ B ^ 2 := by
    have := pow_ne_zero 2 h1.2; have := sq_nonneg B; omega
  constructor <;> omega
