/-
Level-12 integer facts for Theorem G (center roots s·p³·q):
coordinates, parity, nondivisibility, coprimality of Re/Im(π¹²).
-/
import Mathlib
import MsqLean.TheoremFInt
import MsqLean.TheoremFCore

open Zsqrtd

lemma re12_eq (A B : ℤ) :
    ((⟨A, B⟩ : GaussianInt) ^ 12).re
      = (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 3
        - 3 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 := by
  rw [show (⟨A, B⟩ : GaussianInt) ^ 12
      = ((⟨A, B⟩ : GaussianInt) ^ 8) * ((⟨A, B⟩ : GaussianInt) ^ 4) from by ring]
  rw [Zsqrtd.re_mul, re8_eq, im8_eq]
  ring

lemma im12_eq (A B : ℤ) :
    ((⟨A, B⟩ : GaussianInt) ^ 12).im
      = 3 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im)
        - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 3 := by
  rw [show (⟨A, B⟩ : GaussianInt) ^ 12
      = ((⟨A, B⟩ : GaussianInt) ^ 8) * ((⟨A, B⟩ : GaussianInt) ^ 4) from by ring]
  rw [Zsqrtd.im_mul, re8_eq, im8_eq]
  ring

lemma norm12_coord (p : ℕ) [hp : Fact (Nat.Prime p)]
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) :
    (((⟨A, B⟩ : GaussianInt) ^ 12).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ 12).im) ^ 2
      = (p : ℤ) ^ 12 := by
  have h4 := norm4_coord p A B hpAB
  rw [re12_eq, im12_eq]
  linear_combination ((((⟨A, B⟩ : GaussianInt) ^ 4).re ^ 2 + ((⟨A, B⟩ : GaussianInt) ^ 4).im ^ 2) ^ 2
    + (((⟨A, B⟩ : GaussianInt) ^ 4).re ^ 2 + ((⟨A, B⟩ : GaussianInt) ^ 4).im ^ 2) * (p : ℤ) ^ 4
    + (p : ℤ) ^ 8) * h4

lemma re12_odd (p : ℕ) [hp : Fact (Nat.Prime p)] (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) :
    Odd (((⟨A, B⟩ : GaussianInt) ^ 12).re) := by
  rw [re12_eq]
  obtain ⟨r, hr⟩ := re4_odd' p hpodd A B hpAB
  obtain ⟨i, hi⟩ := im4_even A B
  exact ⟨4 * r ^ 3 + 6 * r ^ 2 + 3 * r - 12 * r * i ^ 2 - 6 * i ^ 2,
    by rw [hr, hi]; ring⟩

lemma p_not_dvd_re12_im12 (p : ℕ) [hp : Fact (Nat.Prime p)] (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) :
    ¬ (p : ℤ) ∣ (((⟨A, B⟩ : GaussianInt) ^ 12).re) ∧
    ¬ (p : ℤ) ∣ (((⟨A, B⟩ : GaussianInt) ^ 12).im) := by
  obtain ⟨hpR, hpI⟩ := p_not_dvd_re4_im4 p hpodd A B hpAB
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  have h4 := norm4_coord p A B hpAB
  have hp4d : ¬ (p : ℤ) ∣ 4 := by
    intro hd
    have hle := Int.le_of_dvd (by norm_num) hd
    have h2 : (p : ℤ) ∣ 2 ^ 2 := by simpa using hd
    have hpp : (p : ℤ) ∣ 2 := hpP.dvd_of_dvd_pow h2
    have := Int.le_of_dvd (by norm_num) hpp
    have h3 : 3 ≤ p := by
      have h2' := hp.out.two_le
      rcases Nat.lt_or_ge p 3 with h | h
      · interval_cases p <;> simp_all
      · exact h
    have : (3 : ℤ) ≤ (p : ℤ) := by exact_mod_cast h3
    omega
  have hsum4 : (p : ℤ) ∣ (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2
      + (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 := by
    rw [h4]; exact ⟨(p : ℤ) ^ 3, by ring⟩
  constructor
  · rw [re12_eq]
    intro hd
    have h4R : (p : ℤ) ∣ 4 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 3 := by
      have hcomb := dvd_add hd
        (hsum4.mul_left (3 * (((⟨A, B⟩ : GaussianInt) ^ 4).re)))
      have heq : (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 3
          - 3 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2
          + 3 * (((⟨A, B⟩ : GaussianInt) ^ 4).re)
            * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2)
          = 4 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 3 := by ring
      rwa [heq] at hcomb
    rcases hpP.dvd_mul.mp h4R with h' | h'
    · exact hp4d h'
    · exact hpR (hpP.dvd_of_dvd_pow h')
  · rw [im12_eq]
    intro hd
    have h4I : (p : ℤ) ∣ 4 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2
        * (((⟨A, B⟩ : GaussianInt) ^ 4).im) := by
      have hcomb := dvd_add hd
        (hsum4.mul_left (((⟨A, B⟩ : GaussianInt) ^ 4).im))
      have heq : 3 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im)
          - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 3
          + (((⟨A, B⟩ : GaussianInt) ^ 4).im)
            * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2)
          = 4 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im) := by
        ring
      rwa [heq] at hcomb
    rcases hpP.dvd_mul.mp h4I with h' | h'
    · rcases hpP.dvd_mul.mp h' with h'' | h''
      · exact hp4d h''
      · exact hpR (hpP.dvd_of_dvd_pow h'')
    · exact hpI h'

lemma im12_ne_zero (p : ℕ) [hp : Fact (Nat.Prime p)] (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) :
    ((⟨A, B⟩ : GaussianInt) ^ 12).im ≠ 0 := by
  rw [im12_eq]
  intro h0
  obtain ⟨r, hr⟩ := re4_odd' p hpodd A B hpAB
  have ht := im4_four A B
  have hI0 : (((⟨A, B⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero p hpodd A B hpAB
  have hfac : (((⟨A, B⟩ : GaussianInt) ^ 4).im)
      * (3 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2
        - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) = 0 := by
    linear_combination h0
  rcases mul_eq_zero.mp hfac with h' | h'
  · exact hI0 h'
  · -- 3R² = I² with R odd, 4 ∣ I: parity
    have h3R : 3 * (2 * r + 1) ^ 2 = (4 * (A * B * (A ^ 2 - B ^ 2))) ^ 2 := by
      rw [← hr, ← ht]
      linarith [h']
    have hexp : 12 * r ^ 2 + 12 * r + 3 = 16 * (A * B * (A ^ 2 - B ^ 2)) ^ 2 := by
      linear_combination h3R
    generalize (A * B * (A ^ 2 - B ^ 2)) ^ 2 = M at hexp
    generalize r ^ 2 = r2 at hexp
    omega

lemma im12_four (A B : ℤ) :
    (4 : ℤ) ∣ ((⟨A, B⟩ : GaussianInt) ^ 12).im := by
  have ht := im4_four A B
  rw [im12_eq]
  exact ⟨(3 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2
    - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) * (A * B * (A ^ 2 - B ^ 2)),
    by rw [ht]; ring⟩

lemma coprime_re12_im12 (p : ℕ) [hp : Fact (Nat.Prime p)] (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) :
    IsCoprime (((⟨A, B⟩ : GaussianInt) ^ 12).re) (((⟨A, B⟩ : GaussianInt) ^ 12).im) := by
  obtain ⟨hpR, hpI⟩ := p_not_dvd_re12_im12 p hpodd A B hpAB
  have hsum := norm12_coord p A B hpAB
  rw [Int.isCoprime_iff_gcd_eq_one]
  by_contra hg
  obtain ⟨r, hrprime, hrdvd⟩ := Nat.exists_prime_and_dvd hg
  have hrR : (r : ℤ) ∣ (((⟨A, B⟩ : GaussianInt) ^ 12).re) :=
    (Int.natCast_dvd_natCast.mpr hrdvd).trans (Int.gcd_dvd_left _ _)
  have hrI : (r : ℤ) ∣ (((⟨A, B⟩ : GaussianInt) ^ 12).im) :=
    (Int.natCast_dvd_natCast.mpr hrdvd).trans (Int.gcd_dvd_right _ _)
  have hrP : Prime (r : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hrprime
  have hr12 : (r : ℤ) ∣ (p : ℤ) ^ 12 := by
    rw [← hsum]
    exact dvd_add (dvd_pow hrR (by norm_num)) (dvd_pow hrI (by norm_num))
  have hrp : (r : ℤ) ∣ (p : ℤ) := hrP.dvd_of_dvd_pow hr12
  have hrpn : r = p := by
    have : r ∣ p := by exact_mod_cast hrp
    exact (Nat.prime_dvd_prime_iff_eq hrprime hp.out).mp this
  rw [hrpn] at hrR
  exact hpR hrR
