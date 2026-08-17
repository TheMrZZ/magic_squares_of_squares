/-
The exactness lemma of the two-exponent programme (paper, lem:exact).
If M = χ^(2e)·χ̄^(2f)·P is real with Δ = f − e > 0, then unique
factorization in ℤ[i] forces P = w·χ^(2Δ) with w an integer; if M is
purely imaginary, the same holds with w in i·ℤ. This is the source of
the pinnings 2w·Re χ^(2Δ) = Σ and w·Im χ^(2Δ) = Ω that drive the
balance-condition kills.
-/
import Mathlib
import MsqLean.SimplestRelation

open Zsqrtd

namespace Exactness

/-- χ^k never divides a power of the conjugate times a χ-free value:
the core cancellation. If χ is prime, χ ∤ χ̄, and χ^n ∣ χ̄^m · P, then
χ^n ∣ P. -/
lemma pow_dvd_cancel_star (χ P : GaussianInt) (hχ : Prime χ)
    (hns : ¬ χ ∣ star χ) (n m : ℕ)
    (h : χ ^ n ∣ (star χ) ^ m * P) : χ ^ n ∣ P := by
  have hnd : ¬ χ ∣ (star χ) ^ m := fun hd => hns (hχ.dvd_of_dvd_pow hd)
  exact (Prime.pow_dvd_of_dvd_mul_left hχ n hnd h)

/-- The exactness lemma, real case. -/
theorem exact_real (q : ℕ) [hq : Fact (Nat.Prime q)] (hqodd : q % 2 = 1)
    (C D : ℤ) (hqCD : C ^ 2 + D ^ 2 = q)
    (e Δ : ℕ) (hΔ : 1 ≤ Δ) (P : GaussianInt)
    (hreal : ((⟨C, D⟩ : GaussianInt) ^ (2 * e)
        * (star (⟨C, D⟩ : GaussianInt)) ^ (2 * (e + Δ)) * P)
      = star ((⟨C, D⟩ : GaussianInt) ^ (2 * e)
        * (star (⟨C, D⟩ : GaussianInt)) ^ (2 * (e + Δ)) * P)) :
    ∃ w : ℤ, P = (w : GaussianInt) * (⟨C, D⟩ : GaussianInt) ^ (2 * Δ) := by
  set χ : GaussianInt := ⟨C, D⟩ with hχdef
  have hχprime : Prime χ := prime_pi q C D hqCD
  have hχne : χ ≠ 0 := hχprime.ne_zero
  have hsne : star χ ≠ 0 := fun h => hχne (by simpa using congrArg star h)
  have hns : ¬ χ ∣ star χ := pi_not_dvd_star q hqodd C D hqCD
  -- expand the conjugate and cancel the symmetric prefix χ^(2e)·χ̄^(2e)
  have hkey : (star χ) ^ (2 * Δ) * P = χ ^ (2 * Δ) * star P := by
    have h1 : χ ^ (2 * e) * (star χ) ^ (2 * (e + Δ)) * P
        = (star χ) ^ (2 * e) * χ ^ (2 * (e + Δ)) * star P := by
      have h2 := hreal
      simp only [star_mul, star_pow, star_star] at h2
      linear_combination h2
    have h3 : (χ ^ (2 * e) * (star χ) ^ (2 * e))
          * ((star χ) ^ (2 * Δ) * P)
        = (χ ^ (2 * e) * (star χ) ^ (2 * e))
          * (χ ^ (2 * Δ) * star P) := by
      have he : 2 * (e + Δ) = 2 * e + 2 * Δ := by ring
      rw [he, pow_add] at h1
      linear_combination h1
    exact mul_left_cancel₀
      (mul_ne_zero (pow_ne_zero _ hχne) (pow_ne_zero _ hsne)) h3
  -- χ^(2Δ) divides χ̄^(2Δ)·P, hence P
  have hdvd : χ ^ (2 * Δ) ∣ P := by
    refine pow_dvd_cancel_star χ P hχprime hns (2 * Δ) (2 * Δ) ?_
    exact ⟨star P, hkey⟩
  obtain ⟨κ, hκ⟩ := hdvd
  -- substitute back: κ is self-conjugate, hence an integer
  have hκconj : κ = star κ := by
    have h4 : (star χ) ^ (2 * Δ) * (χ ^ (2 * Δ) * κ)
        = χ ^ (2 * Δ) * ((star χ) ^ (2 * Δ) * star κ) := by
      rw [← hκ, hkey, hκ, star_mul, star_pow]
      ring
    have h5 : (χ ^ (2 * Δ) * (star χ) ^ (2 * Δ)) * κ
        = (χ ^ (2 * Δ) * (star χ) ^ (2 * Δ)) * star κ := by
      calc (χ ^ (2 * Δ) * (star χ) ^ (2 * Δ)) * κ
          = (star χ) ^ (2 * Δ) * (χ ^ (2 * Δ) * κ) := by ring
        _ = χ ^ (2 * Δ) * ((star χ) ^ (2 * Δ) * star κ) := h4
        _ = (χ ^ (2 * Δ) * (star χ) ^ (2 * Δ)) * star κ := by ring
    exact mul_left_cancel₀
      (mul_ne_zero (pow_ne_zero _ hχne) (pow_ne_zero _ hsne)) h5
  refine ⟨κ.re, ?_⟩
  have him : κ.im = 0 := by
    have := congrArg Zsqrtd.im hκconj
    simp only [Zsqrtd.im_star] at this
    omega
  rw [hκ]
  have hκint : ((κ.re : ℤ) : GaussianInt) = κ := by
    ext <;> simp [him]
  rw [hκint]
  ring

/-- The exactness lemma, imaginary case: w lands in i·ℤ. -/
theorem exact_imaginary (q : ℕ) [hq : Fact (Nat.Prime q)] (hqodd : q % 2 = 1)
    (C D : ℤ) (hqCD : C ^ 2 + D ^ 2 = q)
    (e Δ : ℕ) (hΔ : 1 ≤ Δ) (P : GaussianInt)
    (himag : ((⟨C, D⟩ : GaussianInt) ^ (2 * e)
        * (star (⟨C, D⟩ : GaussianInt)) ^ (2 * (e + Δ)) * P)
      = - star ((⟨C, D⟩ : GaussianInt) ^ (2 * e)
        * (star (⟨C, D⟩ : GaussianInt)) ^ (2 * (e + Δ)) * P)) :
    ∃ w : ℤ, P = (⟨0, w⟩ : GaussianInt) * (⟨C, D⟩ : GaussianInt) ^ (2 * Δ) := by
  -- reduce to the real case for i·... : (⟨0,1⟩)·M is real when M is
  -- purely imaginary; equivalently apply exact_real to P' = ⟨0,-1⟩·P
  -- and transport.
  set χ : GaussianInt := ⟨C, D⟩ with hχdef
  set i : GaussianInt := ⟨0, 1⟩ with hidef
  have histar : star i = -i := by ext <;> simp [hidef]
  have hreal' : (χ ^ (2 * e) * (star χ) ^ (2 * (e + Δ)) * (i * P))
      = star (χ ^ (2 * e) * (star χ) ^ (2 * (e + Δ)) * (i * P)) := by
    have h2 := himag
    simp only [star_mul, star_pow, star_star, histar] at h2 ⊢
    linear_combination i * h2
  obtain ⟨w, hw⟩ := exact_real q hqodd C D hqCD e Δ hΔ (i * P) hreal'
  refine ⟨-w, ?_⟩
  have hiP : i * P = (w : GaussianInt) * χ ^ (2 * Δ) := hw
  have hii : i * i = -1 := by ext <;> simp [hidef]
  have : P = (-(i * (w : GaussianInt))) * χ ^ (2 * Δ) := by
    have h6 : i * (i * P) = i * ((w : GaussianInt) * χ ^ (2 * Δ)) := by rw [hiP]
    calc P = -(-1 : GaussianInt) * P := by ring
      _ = -(i * i) * P := by rw [hii]
      _ = -(i * (i * P)) := by ring
      _ = -(i * ((w : GaussianInt) * χ ^ (2 * Δ))) := by rw [h6]
      _ = (-(i * (w : GaussianInt))) * χ ^ (2 * Δ) := by ring
  rw [this]
  congr 1
  ext <;> simp [hidef]

/-- The pinning corollary: exactness pins the coordinates of P to
integer multiples of the coordinates of χ^(2Δ), and the master identity
P.re² + P.im² = w²·q^(2Δ) follows from the norm. -/
theorem pinning (q : ℕ) [hq : Fact (Nat.Prime q)] (hqodd : q % 2 = 1)
    (C D : ℤ) (hqCD : C ^ 2 + D ^ 2 = q)
    (e Δ : ℕ) (hΔ : 1 ≤ Δ) (P : GaussianInt)
    (hreal : ((⟨C, D⟩ : GaussianInt) ^ (2 * e)
        * (star (⟨C, D⟩ : GaussianInt)) ^ (2 * (e + Δ)) * P)
      = star ((⟨C, D⟩ : GaussianInt) ^ (2 * e)
        * (star (⟨C, D⟩ : GaussianInt)) ^ (2 * (e + Δ)) * P)) :
    ∃ w : ℤ,
      P.re = w * ((⟨C, D⟩ : GaussianInt) ^ (2 * Δ)).re
      ∧ P.im = w * ((⟨C, D⟩ : GaussianInt) ^ (2 * Δ)).im
      ∧ P.re ^ 2 + P.im ^ 2 = w ^ 2 * (q : ℤ) ^ (2 * Δ) := by
  obtain ⟨w, hw⟩ := exact_real q hqodd C D hqCD e Δ hΔ P hreal
  set χ : GaussianInt := ⟨C, D⟩ with hχdef
  have hre : P.re = w * (χ ^ (2 * Δ)).re := by
    rw [hw]
    simp [Zsqrtd.re_mul]
  have him : P.im = w * (χ ^ (2 * Δ)).im := by
    rw [hw]
    simp [Zsqrtd.im_mul]
  refine ⟨w, hre, him, ?_⟩
  have hnorm : (χ ^ (2 * Δ)).re ^ 2 + (χ ^ (2 * Δ)).im ^ 2 = (q : ℤ) ^ (2 * Δ) := by
    have h1 : (χ ^ (2 * Δ)).norm = (χ.norm) ^ (2 * Δ) := by
      exact map_pow (Zsqrtd.normMonoidHom) χ (2 * Δ)
    have h2 : χ.norm = (q : ℤ) := by
      have : χ.norm = C * C + D * D := by simp [hχdef, Zsqrtd.norm]
      rw [this]; nlinarith [hqCD]
    have h3 : (χ ^ (2 * Δ)).norm
        = (χ ^ (2 * Δ)).re ^ 2 + (χ ^ (2 * Δ)).im ^ 2 := by
      have : (χ ^ (2 * Δ)).norm
          = (χ ^ (2 * Δ)).re * (χ ^ (2 * Δ)).re
            + (χ ^ (2 * Δ)).im * (χ ^ (2 * Δ)).im := by
        simp [Zsqrtd.norm]
        try ring
      rw [this]; ring
    rw [← h3, h1, h2]
  rw [hre, him]
  nlinarith [hnorm]

end Exactness
