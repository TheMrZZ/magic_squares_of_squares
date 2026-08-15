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
lemma strict_pinch (p n : ℤ) (hp : 0 < p) (h : p ∣ n) (h0 : n ≠ 0)
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
