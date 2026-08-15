/-
Three-prime twin collapses. At exponent (1,1,1) every one of the 36
unconditionally-killed relations is a lone+twin shape whose twin pair
flips the conjugation of one or two primes' factors. Single flips are
literal instances of the two-prime master theorems (the third prime's
factor rides in the opaque slot — `mul_parity` discharges the parity
hypothesis). Double flips collapse over the composite W = χ̄⁴ψ⁴; the
lone slot is star W, giving the composite theorem below.
-/
import MsqLean.UniformTwin

open Zsqrtd

/-- Odd-Re/even-Im is closed under multiplication. -/
lemma mul_parity (x y : GaussianInt)
    (hxR : Odd x.re) (hxI : Even x.im) (hyR : Odd y.re) (hyI : Even y.im) :
    Odd ((x * y).re) ∧ Even ((x * y).im) := by
  obtain ⟨a, ha⟩ := hxR
  obtain ⟨i, hi⟩ := hxI
  obtain ⟨b, hb⟩ := hyR
  obtain ⟨j, hj⟩ := hyI
  constructor
  · rw [Zsqrtd.re_mul]
    exact ⟨2 * a * b + a + b - 2 * i * j, by rw [ha, hi, hb, hj]; ring⟩
  · rw [Zsqrtd.im_mul]
    exact ⟨(2 * a + 1) * j + (2 * b + 1) * i, by rw [ha, hi, hb, hj]; ring⟩

/-- star respects divisibility. -/
lemma star_dvd_star {x y : GaussianInt} (h : x ∣ y) : star x ∣ star y := by
  obtain ⟨k, hk⟩ := h
  exact ⟨star k, by rw [hk, star_mul, mul_comm]⟩

/-- The composite W = χ̄⁴ψ⁴ of two distinct split primes is never real. -/
lemma im_composite_ne_zero
    (q r : ℕ) [hq : Fact (Nat.Prime q)] [hr : Fact (Nat.Prime r)]
    (hqodd : q % 2 = 1) (hrodd : r % 2 = 1) (hqr : q ≠ r)
    (C D E F : ℤ) (hqCD : C ^ 2 + D ^ 2 = q) (hrEF : E ^ 2 + F ^ 2 = r) :
    ((star ((⟨C, D⟩ : GaussianInt) ^ 4)) * (⟨E, F⟩ : GaussianInt) ^ 4).im ≠ 0 := by
  intro h
  set χ : GaussianInt := ⟨C, D⟩ with hχdef
  set ψ : GaussianInt := ⟨E, F⟩ with hψdef
  set W : GaussianInt := (star (χ ^ 4)) * ψ ^ 4 with hWdef
  have hχprime : Prime χ := prime_pi q C D hqCD
  have hsχprime : Prime (star χ) := by
    have : star χ = (⟨C, -D⟩ : GaussianInt) := by rw [hχdef]; ext <;> simp
    rw [this]
    exact prime_pi q C (-D) (by rw [neg_pow]; ring_nf; linarith [hqCD])
  have hχnb : ¬ χ ∣ star χ := pi_not_dvd_star q hqodd C D hqCD
  have hsχχ : ¬ star χ ∣ χ := by
    intro hd
    have := star_dvd_star hd
    rw [star_star] at this
    exact hχnb this
  have hsχsψ : ¬ star χ ∣ star ψ := by
    intro hd
    have := star_dvd_star hd
    rw [star_star, star_star] at this
    exact not_dvd_other q r hqr C D E F hqCD hrEF this
  -- Im W = 0 ⇒ star W = W ⇒ star χ ∣ χ⁴ · ψ̄⁴.
  have hy : W = (((W.re : ℤ)) : GaussianInt) := by
    ext
    · simp
    · simp [← hWdef, h]
  have hself : star W = W := by rw [hy, star_intCast]
  have hstarW : star W = χ ^ 4 * (star ψ) ^ 4 := by
    rw [hWdef]
    simp only [star_mul, star_pow, star_star]
    ring
  have hW : star χ ∣ W := ⟨(star χ) ^ 3 * ψ ^ 4, by rw [hWdef, star_pow]; ring⟩
  have hdvd : star χ ∣ χ ^ 4 * (star ψ) ^ 4 := by
    rw [← hstarW, hself]
    exact hW
  exact absurd hdvd (by
    intro hd
    rcases hsχprime.dvd_mul.mp hd with h1 | h1
    · exact hsχχ (hsχprime.dvd_of_dvd_pow h1)
    · exact hsχsψ (hsχprime.dvd_of_dvd_pow h1))

/-- Composite twin kill: lone slot = star W with W = χ̄⁴ψ⁴, twin pair
z·W / z·star W with difference signs, any Gaussian z, any odd c. -/
theorem uniform_twin_composite_chi
    (q r : ℕ) [hq : Fact (Nat.Prime q)] [hr : Fact (Nat.Prime r)]
    (hqodd : q % 2 = 1) (hrodd : r % 2 = 1) (hqr : q ≠ r)
    (C D E F : ℤ) (hqCD : C ^ 2 + D ^ 2 = q) (hrEF : E ^ 2 + F ^ 2 = r)
    (z : GaussianInt) (c e : ℤ) (hc : Odd c) :
    (((-c : ℤ) : GaussianInt)
        * star ((star ((⟨C, D⟩ : GaussianInt) ^ 4)) * (⟨E, F⟩ : GaussianInt) ^ 4)
      + ((e : ℤ) : GaussianInt) * z
        * ((star ((⟨C, D⟩ : GaussianInt) ^ 4)) * (⟨E, F⟩ : GaussianInt) ^ 4)
      + ((-e : ℤ) : GaussianInt) * z
        * star ((star ((⟨C, D⟩ : GaussianInt) ^ 4))
            * (⟨E, F⟩ : GaussianInt) ^ 4)).im ≠ 0 := by
  intro h0
  simp only [Zsqrtd.im_add, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_star, Zsqrtd.im_star,
    Zsqrtd.re_neg, Zsqrtd.im_neg, Zsqrtd.re_intCast, Zsqrtd.im_intCast] at h0
  have key : ((star ((⟨C, D⟩ : GaussianInt) ^ 4)) * (⟨E, F⟩ : GaussianInt) ^ 4).im
      * (c + 2 * e * z.re) = 0 := by
    simp only [Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_star, Zsqrtd.im_star]
    linear_combination h0
  rcases mul_eq_zero.mp key with h | h
  · exact im_composite_ne_zero q r hqodd hrodd hqr C D E F hqCD hrEF h
  · obtain ⟨k, hk⟩ := hc
    exact odd_ne_zero ⟨k + e * z.re, by rw [hk]; ring⟩ h
