/-
Level-8 coordinate facts for the Theorem F residue tier:
R₈ = Re π⁸ = R² − I², I₈ = Im π⁸ = 2RI, with all the level-4 facts
lifted.
-/
import Mathlib
import MsqLean.TheoremEInt

open Zsqrtd

lemma re8_eq (A B : ℤ) :
    ((⟨A, B⟩ : GaussianInt) ^ 8).re
      = (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 := by
  rw [show (⟨A, B⟩ : GaussianInt) ^ 8 = ((⟨A, B⟩ : GaussianInt) ^ 4) ^ 2 from by ring,
    sq_re]

lemma im8_eq (A B : ℤ) :
    ((⟨A, B⟩ : GaussianInt) ^ 8).im
      = 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨A, B⟩ : GaussianInt) ^ 4).im) := by
  rw [show (⟨A, B⟩ : GaussianInt) ^ 8 = ((⟨A, B⟩ : GaussianInt) ^ 4) ^ 2 from by ring,
    sq_im]

lemma im8_ne_zero (p : ℕ) [hp : Fact (Nat.Prime p)] (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) :
    ((⟨A, B⟩ : GaussianInt) ^ 8).im ≠ 0 := by
  rw [im8_eq]
  exact mul_ne_zero (mul_ne_zero (by norm_num)
    (odd_ne_zero (re4_odd' p hpodd A B hpAB))) (im4_ne_zero p hpodd A B hpAB)

lemma re8_odd (p : ℕ) [hp : Fact (Nat.Prime p)] (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) :
    Odd (((⟨A, B⟩ : GaussianInt) ^ 8).re) := by
  rw [re8_eq]
  obtain ⟨r, hr⟩ := re4_odd' p hpodd A B hpAB
  obtain ⟨i, hi⟩ := im4_even A B
  exact ⟨2 * r ^ 2 + 2 * r - 2 * i ^ 2, by rw [hr, hi]; ring⟩

lemma norm8_coord (p : ℕ) [hp : Fact (Nat.Prime p)]
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) :
    (((⟨A, B⟩ : GaussianInt) ^ 8).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ 8).im) ^ 2
      = (p : ℤ) ^ 8 := by
  have h4 := norm4_coord p A B hpAB
  rw [re8_eq, im8_eq]
  nlinarith [h4]

lemma p_not_dvd_re8_im8 (p : ℕ) [hp : Fact (Nat.Prime p)] (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) :
    ¬ (p : ℤ) ∣ (((⟨A, B⟩ : GaussianInt) ^ 8).re) ∧
    ¬ (p : ℤ) ∣ (((⟨A, B⟩ : GaussianInt) ^ 8).im) := by
  obtain ⟨hpR, hpI⟩ := p_not_dvd_re4_im4 p hpodd A B hpAB
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  have h4 := norm4_coord p A B hpAB
  have hp2 : ¬ (p : ℤ) ∣ 2 := by
    intro hd
    have hle := Int.le_of_dvd (by norm_num) hd
    have h3 : 3 ≤ p := by have := hp.out.two_le; omega
    have : (3 : ℤ) ≤ (p : ℤ) := by exact_mod_cast h3
    omega
  constructor
  · rw [re8_eq]
    intro hd
    -- p ∣ R² − I² together with R² + I² = p⁴ gives p ∣ 2R²
    have h2 : (p : ℤ) ∣ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 := by
      have : 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2
          = ((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2)
            + (p : ℤ) ^ 4 := by linarith [h4]
      rw [this]
      exact dvd_add hd (dvd_pow_self _ (by norm_num))
    rcases hpP.dvd_mul.mp h2 with h | h
    · exact hp2 h
    · exact hpR (hpP.dvd_of_dvd_pow h)
  · rw [im8_eq]
    intro hd
    rcases hpP.dvd_mul.mp hd with h | h
    · rcases hpP.dvd_mul.mp h with h' | h'
      · exact hp2 h'
      · exact hpR h'
    · exact hpI h

lemma coprime_re8_im8 (p : ℕ) [hp : Fact (Nat.Prime p)] (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) :
    IsCoprime (((⟨A, B⟩ : GaussianInt) ^ 8).re) (((⟨A, B⟩ : GaussianInt) ^ 8).im) := by
  obtain ⟨hpR, hpI⟩ := p_not_dvd_re8_im8 p hpodd A B hpAB
  have hsum := norm8_coord p A B hpAB
  rw [Int.isCoprime_iff_gcd_eq_one]
  by_contra hg
  obtain ⟨r, hrprime, hrdvd⟩ := Nat.exists_prime_and_dvd hg
  have hgR : ((Int.gcd (((⟨A, B⟩ : GaussianInt) ^ 8).re) (((⟨A, B⟩ : GaussianInt) ^ 8).im) : ℕ) : ℤ)
      ∣ (((⟨A, B⟩ : GaussianInt) ^ 8).re) :=
    Int.gcd_dvd_left _ _
  have hgI : ((Int.gcd (((⟨A, B⟩ : GaussianInt) ^ 8).re) (((⟨A, B⟩ : GaussianInt) ^ 8).im) : ℕ) : ℤ)
      ∣ (((⟨A, B⟩ : GaussianInt) ^ 8).im) :=
    Int.gcd_dvd_right _ _
  have hrR : (r : ℤ) ∣ (((⟨A, B⟩ : GaussianInt) ^ 8).re) :=
    (Int.natCast_dvd_natCast.mpr hrdvd).trans hgR
  have hrI : (r : ℤ) ∣ (((⟨A, B⟩ : GaussianInt) ^ 8).im) :=
    (Int.natCast_dvd_natCast.mpr hrdvd).trans hgI
  have hrP : Prime (r : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hrprime
  have hr8 : (r : ℤ) ∣ (p : ℤ) ^ 8 := by
    rw [← hsum]
    exact dvd_add (dvd_pow hrR (by norm_num)) (dvd_pow hrI (by norm_num))
  have hrp : (r : ℤ) ∣ (p : ℤ) := hrP.dvd_of_dvd_pow hr8
  have hrpn : r = p := by
    have : r ∣ p := by exact_mod_cast hrp
    exact (Nat.prime_dvd_prime_iff_eq hrprime hp.out).mp this
  rw [hrpn] at hrR
  exact hpR hrR
