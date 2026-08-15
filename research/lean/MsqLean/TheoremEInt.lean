/-
Integer-certificate kernel for the Theorem E assignment analysis.
Facts about R = Re π⁴, I = Im π⁴, X = Re χ⁴, Y = Im χ⁴ used by the
leaf kills: prime-coprimality, pinches, parity finishers.
-/
import Mathlib
import MsqLean.UniformTwin3

open Zsqrtd

/-- p divides neither coordinate of π⁴ (both would make π̄ ∣ π³). -/
lemma p_not_dvd_re4_im4 (p : ℕ) [hp : Fact (Nat.Prime p)] (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) :
    ¬ (p : ℤ) ∣ (((⟨A, B⟩ : GaussianInt) ^ 4).re) ∧
    ¬ (p : ℤ) ∣ (((⟨A, B⟩ : GaussianInt) ^ 4).im) := by
  set π : GaussianInt := ⟨A, B⟩ with hπdef
  have hπprime : Prime π := prime_pi p A B hpAB
  have hπnb : ¬ π ∣ star π := pi_not_dvd_star p hpodd A B hpAB
  have hsplit : π * star π = ((p : ℤ) : GaussianInt) := by
    rw [hπdef, pi_mul_star, hpAB]
  -- if p ∣ both coordinates then (p : ℤ[i]) ∣ π⁴, i.e. π π̄ ∣ π⁴, so π̄ ∣ π³
  have hboth : ¬ ((p : ℤ) ∣ ((π ^ 4).re) ∧ (p : ℤ) ∣ ((π ^ 4).im)) := by
    rintro ⟨⟨r, hr⟩, ⟨i, hi⟩⟩
    have hdvd : ((p : ℤ) : GaussianInt) ∣ π ^ 4 := by
      refine ⟨⟨r, i⟩, ?_⟩
      ext
      · simp [hr]
      · simp [hi]
    rw [← hsplit] at hdvd
    have hstar : star π ∣ π ^ 4 := (dvd_mul_left _ _).trans hdvd
    have hsπprime : Prime (star π) := by
      have hst : star π = (⟨A, -B⟩ : GaussianInt) := by rw [hπdef]; ext <;> simp
      rw [hst]
      exact prime_pi p A (-B) (by rw [neg_pow]; ring_nf; linarith [hpAB])
    have := hsπprime.dvd_of_dvd_pow hstar
    exact hπnb (by
      have h2 := star_dvd_star this
      rwa [star_star] at h2)
  -- p ∣ one coordinate forces p ∣ the other via R² + I² = p⁴
  have hsum : ((π ^ 4).re) ^ 2 + ((π ^ 4).im) ^ 2 = (p : ℤ) ^ 4 := by
    have hn : (π ^ 4).norm = (p : ℤ) ^ 4 := by
      have h4 : (π ^ 4).norm = π.norm ^ 4 := by
        rw [show π ^ 4 = π * π * (π * π) from by ring]
        simp only [Zsqrtd.norm_mul]
        ring
      rw [h4]
      have : π.norm = (p : ℤ) := by
        have h : π.norm = A * A + B * B := by simp [hπdef, Zsqrtd.norm]
        rw [h]; nlinarith [hpAB]
      rw [this]
    have h : (π ^ 4).norm = (π ^ 4).re * (π ^ 4).re + (π ^ 4).im * (π ^ 4).im := by
      simp [Zsqrtd.norm]
    nlinarith [hn, h]
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  constructor
  · intro hR
    apply hboth
    refine ⟨hR, ?_⟩
    have h2 : (p : ℤ) ∣ ((π ^ 4).im) ^ 2 := by
      have : ((π ^ 4).im) ^ 2 = (p : ℤ) ^ 4 - ((π ^ 4).re) ^ 2 := by linarith [hsum]
      rw [this]
      exact dvd_sub (dvd_pow_self _ (by norm_num)) (hR.pow (n := 2) (by norm_num))
    exact hpP.dvd_of_dvd_pow h2
  · intro hI
    apply hboth
    refine ⟨?_, hI⟩
    have h2 : (p : ℤ) ∣ ((π ^ 4).re) ^ 2 := by
      have : ((π ^ 4).re) ^ 2 = (p : ℤ) ^ 4 - ((π ^ 4).im) ^ 2 := by linarith [hsum]
      rw [this]
      exact dvd_sub (dvd_pow_self _ (by norm_num)) (hI.pow (n := 2) (by norm_num))
    exact hpP.dvd_of_dvd_pow h2

/-- Pinch: X = ±q² forces Y = 0. -/
lemma pinch_sq (q : ℕ) (X Y : ℤ) (hsum : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 4)
    (hY : Y ≠ 0) : X ≠ (q : ℤ) ^ 2 ∧ X ≠ -(q : ℤ) ^ 2 := by
  constructor <;> rintro rfl <;>
    nlinarith [sq_nonneg Y, (by positivity : (0 : ℤ) < Y ^ 2)]

/-- mod-4 finisher: 4W + 2 is never zero. -/
lemma four_w_two_ne (W : ℤ) : 4 * W + 2 ≠ 0 := by omega

/-- Coprimality of the coordinates of π⁴. -/
lemma coprime_re4_im4 (p : ℕ) [hp : Fact (Nat.Prime p)] (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) :
    IsCoprime (((⟨A, B⟩ : GaussianInt) ^ 4).re) (((⟨A, B⟩ : GaussianInt) ^ 4).im) := by
  set R := ((⟨A, B⟩ : GaussianInt) ^ 4).re
  set I := ((⟨A, B⟩ : GaussianInt) ^ 4).im
  obtain ⟨hpR, hpI⟩ := p_not_dvd_re4_im4 p hpodd A B hpAB
  have hsum : R ^ 2 + I ^ 2 = (p : ℤ) ^ 4 := by
    have hn : ((⟨A, B⟩ : GaussianInt) ^ 4).norm = (p : ℤ) ^ 4 := by
      have h4 : ((⟨A, B⟩ : GaussianInt) ^ 4).norm = (⟨A, B⟩ : GaussianInt).norm ^ 4 := by
        rw [show (⟨A, B⟩ : GaussianInt) ^ 4
          = (⟨A, B⟩ : GaussianInt) * (⟨A, B⟩ : GaussianInt)
            * ((⟨A, B⟩ : GaussianInt) * (⟨A, B⟩ : GaussianInt)) from by ring]
        simp only [Zsqrtd.norm_mul]
        ring
      rw [h4]
      have : (⟨A, B⟩ : GaussianInt).norm = (p : ℤ) := by
        have h : (⟨A, B⟩ : GaussianInt).norm = A * A + B * B := by simp [Zsqrtd.norm]
        rw [h]; nlinarith [hpAB]
      rw [this]
    have h : ((⟨A, B⟩ : GaussianInt) ^ 4).norm = R * R + I * I := by
      simp [Zsqrtd.norm, R, I]
    nlinarith [hn, h]
  rw [Int.isCoprime_iff_gcd_eq_one]
  by_contra hg
  obtain ⟨r, hrprime, hrdvd⟩ := Nat.exists_prime_and_dvd hg
  have hgR : ((Int.gcd R I : ℕ) : ℤ) ∣ R := Int.gcd_dvd_left R I
  have hgI : ((Int.gcd R I : ℕ) : ℤ) ∣ I := Int.gcd_dvd_right R I
  have hrR : (r : ℤ) ∣ R := (Int.natCast_dvd_natCast.mpr hrdvd).trans hgR
  have hrI : (r : ℤ) ∣ I := (Int.natCast_dvd_natCast.mpr hrdvd).trans hgI
  have hrP : Prime (r : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hrprime
  have hr4 : (r : ℤ) ∣ (p : ℤ) ^ 4 := by
    rw [← hsum]
    exact dvd_add (dvd_pow hrR (by norm_num)) (dvd_pow hrI (by norm_num))
  have hrp : (r : ℤ) ∣ (p : ℤ) := hrP.dvd_of_dvd_pow hr4
  have hrpn : r = p := by
    have : r ∣ p := by exact_mod_cast hrp
    exact (Nat.prime_dvd_prime_iff_eq hrprime hp.out).mp this
  rw [hrpn] at hrR
  exact hpR hrR
