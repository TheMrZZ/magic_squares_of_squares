/-
Nonvanishing of the certifier's library factors at the Gaussian point.
The screen phase divides each relation by library factors before the
unit-kill verdict. Each factor is one of four shapes at (u, v) =
(π², π̄²) (and the same shapes on the χ side):

  u^j − v^j                                          (lib_diff_ne)
  u^j + v^j                                          (lib_sum_ne)
  u^(2j) + v^(2j) + c·(uv)^j, c = ±1                 (lib_pinch_odd_ne)
  u^(2j) + v^(2j) + c·(uv)^j, c = ±2                 (lib_pinch_two_ne)

The two core facts: the imaginary part of π^(2j) does not vanish
(π does not divide its conjugate), and Re² < P^(2j) (the norm circle
with a nonzero imaginary part). The section is generic in the prime,
so the χ-side instances come for free.
-/
import Mathlib
import MsqLean.SimplestRelation

open Zsqrtd

namespace LibraryNonzero

variable (P : ℕ) [hP : Fact (Nat.Prime P)] (A B : ℤ)

/-- The imaginary part of π^(2j) does not vanish: a real value would
make π divide its own conjugate. -/
lemma im_pow_ne_zero (hodd : P % 2 = 1) (hAB : A ^ 2 + B ^ 2 = P)
    (j : ℕ) (hj : 1 ≤ j) :
    ((⟨A, B⟩ : GaussianInt) ^ (2 * j)).im ≠ 0 := by
  intro h0
  set π : GaussianInt := ⟨A, B⟩ with hπ
  have hfix : star (π ^ (2 * j)) = π ^ (2 * j) := by
    ext
    · rw [Zsqrtd.re_star]
    · rw [Zsqrtd.im_star, h0, neg_zero]
  have heq : π ^ (2 * j) = (star π) ^ (2 * j) := by
    rw [← star_pow, hfix]
  have hdvd : π ∣ (star π) ^ (2 * j) := by
    rw [← heq]
    exact dvd_pow_self π (by omega)
  have hπprime : Prime π := prime_pi P A B hAB
  exact pi_not_dvd_star P hodd A B hAB (hπprime.dvd_of_dvd_pow hdvd)

/-- The norm circle at exponent 2j. -/
lemma norm_pow (hAB : A ^ 2 + B ^ 2 = P) (j : ℕ) :
    ((⟨A, B⟩ : GaussianInt) ^ (2 * j)).re ^ 2
      + ((⟨A, B⟩ : GaussianInt) ^ (2 * j)).im ^ 2 = (P : ℤ) ^ (2 * j) := by
  set π : GaussianInt := ⟨A, B⟩ with hπ
  have h1 : (π ^ (2 * j)).norm = (π.norm) ^ (2 * j) :=
    map_pow (Zsqrtd.normMonoidHom) π (2 * j)
  have h2 : π.norm = (P : ℤ) := by
    have h : π.norm = A * A + B * B := by simp [hπ, Zsqrtd.norm]
    rw [h]; nlinarith
  have h3 : (π ^ (2 * j)).norm
      = (π ^ (2 * j)).re ^ 2 + (π ^ (2 * j)).im ^ 2 := by
    have h : (π ^ (2 * j)).norm
        = (π ^ (2 * j)).re * (π ^ (2 * j)).re
          + (π ^ (2 * j)).im * (π ^ (2 * j)).im := by
      simp [Zsqrtd.norm]
      try ring
    rw [h]; ring
  rw [← h3, h1, h2]

/-- The real part stays strictly inside the norm circle. -/
lemma re_sq_lt (hodd : P % 2 = 1) (hAB : A ^ 2 + B ^ 2 = P)
    (j : ℕ) (hj : 1 ≤ j) :
    ((⟨A, B⟩ : GaussianInt) ^ (2 * j)).re ^ 2 < (P : ℤ) ^ (2 * j) := by
  have h1 := norm_pow P A B hAB j
  have h2 := im_pow_ne_zero P A B hodd hAB j hj
  have h3 : 0 < ((⟨A, B⟩ : GaussianInt) ^ (2 * j)).im ^ 2 := by positivity
  linarith

/-- The real part of π^(2j) does not vanish: a purely imaginary value
would make π^(4j) real. -/
lemma re_pow_ne_zero (hodd : P % 2 = 1) (hAB : A ^ 2 + B ^ 2 = P)
    (j : ℕ) (hj : 1 ≤ j) :
    ((⟨A, B⟩ : GaussianInt) ^ (2 * j)).re ≠ 0 := by
  intro h0
  set π : GaussianInt := ⟨A, B⟩ with hπ
  have hsq : π ^ (2 * (2 * j)) = π ^ (2 * j) * π ^ (2 * j) := by
    rw [← pow_add]
    congr 1
    ring
  have him : (π ^ (2 * (2 * j))).im = 0 := by
    rw [hsq, Zsqrtd.im_mul, h0]
    ring
  exact im_pow_ne_zero P A B hodd hAB (2 * j) (by omega) him

/-- Library factor u^j − v^j at the Gaussian point. -/
lemma lib_diff_ne (hodd : P % 2 = 1) (hAB : A ^ 2 + B ^ 2 = P)
    (j : ℕ) (hj : 1 ≤ j) :
    ((⟨A, B⟩ : GaussianInt) ^ 2) ^ j
      - ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ j ≠ 0 := by
  intro h0
  have h1 : ((⟨A, B⟩ : GaussianInt) ^ 2) ^ j
      = ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ j := sub_eq_zero.mp h0
  rw [← pow_mul, ← pow_mul, ← star_pow] at h1
  have him := congrArg Zsqrtd.im h1
  rw [Zsqrtd.im_star] at him
  exact im_pow_ne_zero P A B hodd hAB j hj (by omega)

/-- Library factor u^j + v^j at the Gaussian point. -/
lemma lib_sum_ne (hodd : P % 2 = 1) (hAB : A ^ 2 + B ^ 2 = P)
    (j : ℕ) (hj : 1 ≤ j) :
    ((⟨A, B⟩ : GaussianInt) ^ 2) ^ j
      + ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ j ≠ 0 := by
  intro h0
  rw [← pow_mul, ← pow_mul, ← star_pow] at h0
  have hre := congrArg Zsqrtd.re h0
  rw [Zsqrtd.re_add, Zsqrtd.re_star] at hre
  have hz : (0 : GaussianInt).re = 0 := rfl
  rw [hz] at hre
  exact re_pow_ne_zero P A B hodd hAB j hj (by omega)

/-- The product (π²)·(π̄²) is the integer P². -/
lemma prod_sq (hAB : A ^ 2 + B ^ 2 = P) :
    ((⟨A, B⟩ : GaussianInt) ^ 2) * ((star (⟨A, B⟩ : GaussianInt)) ^ 2)
      = (((P : ℤ) ^ 2 : ℤ) : GaussianInt) := by
  have h1 := pi_mul_star A B
  have h2 : ((⟨A, B⟩ : GaussianInt) ^ 2) * ((star (⟨A, B⟩ : GaussianInt)) ^ 2)
      = ((⟨A, B⟩ : GaussianInt) * star (⟨A, B⟩ : GaussianInt)) ^ 2 := by
    ring
  rw [h2, h1, hAB]
  push_cast
  ring

/-- The pinch factors with an odd coefficient die by parity. -/
lemma lib_pinch_odd_ne (hodd : P % 2 = 1) (hAB : A ^ 2 + B ^ 2 = P)
    (j : ℕ) (hj : 1 ≤ j) (c : ℤ) (hc : c = 1 ∨ c = -1) :
    ((⟨A, B⟩ : GaussianInt) ^ 2) ^ (2 * j)
      + ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ (2 * j)
      + (c : GaussianInt)
        * (((⟨A, B⟩ : GaussianInt) ^ 2) * ((star (⟨A, B⟩ : GaussianInt)) ^ 2)) ^ j
      ≠ 0 := by
  intro h0
  have hpsj : (((⟨A, B⟩ : GaussianInt) ^ 2) * ((star (⟨A, B⟩ : GaussianInt)) ^ 2)) ^ j
      = (((P : ℤ) ^ (2 * j) : ℤ) : GaussianInt) := by
    rw [prod_sq P A B hAB]
    push_cast
    ring
  rw [hpsj, ← pow_mul, ← pow_mul, ← star_pow] at h0
  have hre := congrArg Zsqrtd.re h0
  simp only [Zsqrtd.re_add, Zsqrtd.re_mul, Zsqrtd.re_star, Zsqrtd.re_intCast,
    Zsqrtd.im_intCast, mul_zero, zero_mul, add_zero, mul_one, one_mul] at hre
  have hz : (0 : GaussianInt).re = 0 := rfl
  rw [hz] at hre
  have hPodd : Odd ((P : ℤ) ^ (2 * j)) := by
    have hPo : Odd (P : ℤ) := by
      rcases Int.even_or_odd (P : ℤ) with he | ho
      · exfalso; obtain ⟨k, hk⟩ := he; omega
      · exact ho
    exact hPo.pow
  obtain ⟨m, hm⟩ := hPodd
  rcases hc with rfl | rfl <;> omega

/-- The pinch factors with coefficient ±2 die by the strict circle
bound: the real part never reaches ±P^(2j). -/
lemma lib_pinch_two_ne (hodd : P % 2 = 1) (hAB : A ^ 2 + B ^ 2 = P)
    (j : ℕ) (hj : 1 ≤ j) (c : ℤ) (hc : c = 2 ∨ c = -2) :
    ((⟨A, B⟩ : GaussianInt) ^ 2) ^ (2 * j)
      + ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ (2 * j)
      + (c : GaussianInt)
        * (((⟨A, B⟩ : GaussianInt) ^ 2) * ((star (⟨A, B⟩ : GaussianInt)) ^ 2)) ^ j
      ≠ 0 := by
  intro h0
  have hpsj : (((⟨A, B⟩ : GaussianInt) ^ 2) * ((star (⟨A, B⟩ : GaussianInt)) ^ 2)) ^ j
      = (((P : ℤ) ^ (2 * j) : ℤ) : GaussianInt) := by
    rw [prod_sq P A B hAB]
    push_cast
    ring
  rw [hpsj, ← pow_mul, ← pow_mul, ← star_pow] at h0
  have hre := congrArg Zsqrtd.re h0
  simp only [Zsqrtd.re_add, Zsqrtd.re_mul, Zsqrtd.re_star, Zsqrtd.re_intCast,
    Zsqrtd.im_intCast, mul_zero, zero_mul, add_zero, mul_one, one_mul] at hre
  have hz : (0 : GaussianInt).re = 0 := rfl
  rw [hz] at hre
  have hlt := re_sq_lt P A B hodd hAB (2 * j) (by omega)
  have hpow : (P : ℤ) ^ (2 * (2 * j)) = ((P : ℤ) ^ (2 * j)) ^ 2 := by
    rw [← pow_mul]
    congr 1
    ring
  rcases hc with rfl | rfl
  · have hre' : (((⟨A, B⟩ : GaussianInt)) ^ (2 * (2 * j))).re
        = -((P : ℤ) ^ (2 * j)) := by linarith
    rw [hre', neg_sq] at hlt
    linarith [hpow.ge, hpow.le]
  · have hre' : (((⟨A, B⟩ : GaussianInt)) ^ (2 * (2 * j))).re
        = (P : ℤ) ^ (2 * j) := by linarith
    rw [hre'] at hlt
    linarith [hpow.ge, hpow.le]

end LibraryNonzero
