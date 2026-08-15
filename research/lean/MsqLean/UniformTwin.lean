/-
Exponent-UNIFORM twin-collapse kills. The (2,2) twin families never use
the structure of the π-side factor: it stays opaque in the collapse.
Promoting it to an arbitrary Gaussian integer z (and the coefficient to
an arbitrary odd integer c) turns each family into a single theorem
that kills the corresponding relation shape at EVERY exponent (a,b):
lone slot (0,1) or (1,0) with any twin slot, and lone (0,2)/(2,0) with
any even-χ/π-power twin.
-/
import MsqLean.TwinCollapse

open Zsqrtd

/-- Im(w^(k+1)) always carries Im(w) as a factor. -/
lemma im_pow_fac (w : GaussianInt) (k : ℕ) :
    ∃ v : ℤ, (w ^ (k + 1)).im = w.im * v := by
  induction k with
  | zero => exact ⟨1, by rw [pow_one, mul_one]⟩
  | succ n ih =>
    obtain ⟨v, hv⟩ := ih
    exact ⟨(w ^ (n + 1)).re + v * w.re, by rw [pow_succ, Zsqrtd.im_mul, hv]; ring⟩

/-- Uniform kill, lone slot (0,1), difference twins: for ANY Gaussian z,
any twin χ-power k+1, any odd coefficient c, any sign e,
Im(−c·χ⁴ + e·z·(χ⁴)^(k+1) − e·z·(χ̄⁴)^(k+1)) ≠ 0. -/
theorem uniform_twin_L01
    (q : ℕ) [hq : Fact (Nat.Prime q)] (hqodd : q % 2 = 1)
    (C D : ℤ) (hqCD : C ^ 2 + D ^ 2 = q)
    (z : GaussianInt) (k : ℕ) (c e : ℤ) (hc : Odd c) :
    (((-c : ℤ) : GaussianInt) * (⟨C, D⟩ : GaussianInt) ^ 4
      + ((e : ℤ) : GaussianInt) * z * ((⟨C, D⟩ : GaussianInt) ^ 4) ^ (k + 1)
      + ((-e : ℤ) : GaussianInt) * z
        * (star ((⟨C, D⟩ : GaussianInt) ^ 4)) ^ (k + 1)).im ≠ 0 := by
  intro h0
  obtain ⟨v, hv⟩ := im_pow_fac ((⟨C, D⟩ : GaussianInt) ^ 4) k
  rw [← star_pow] at h0
  simp only [Zsqrtd.im_add, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_star, Zsqrtd.im_star,
    Zsqrtd.re_neg, Zsqrtd.im_neg, Zsqrtd.re_intCast, Zsqrtd.im_intCast] at h0
  rw [hv] at h0
  have key : ((⟨C, D⟩ : GaussianInt) ^ 4).im * (2 * e * z.re * v - c) = 0 := by
    linear_combination h0
  rcases mul_eq_zero.mp key with h | h
  · exact im4_ne_zero q hqodd C D hqCD h
  · exact odd_ne_zero (even_sub_odd ⟨e * z.re * v, by ring⟩ hc) h

/-- Uniform kill, lone slot (1,0), sum twins: for ANY Gaussian w,
any twin π-power m+1, any odd coefficient c, any sign e,
Im(−c·π⁴ + e·(π⁴)^(m+1)·w + e·(π⁴)^(m+1)·w̄) ≠ 0. -/
theorem uniform_twin_L10
    (p : ℕ) [hp : Fact (Nat.Prime p)] (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p)
    (w : GaussianInt) (m : ℕ) (c e : ℤ) (hc : Odd c) :
    (((-c : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 4
      + ((e : ℤ) : GaussianInt) * ((⟨A, B⟩ : GaussianInt) ^ 4) ^ (m + 1) * w
      + ((e : ℤ) : GaussianInt) * ((⟨A, B⟩ : GaussianInt) ^ 4) ^ (m + 1)
        * star w).im ≠ 0 := by
  intro h0
  obtain ⟨u, hu⟩ := im_pow_fac ((⟨A, B⟩ : GaussianInt) ^ 4) m
  simp only [Zsqrtd.im_add, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_star, Zsqrtd.im_star,
    Zsqrtd.re_neg, Zsqrtd.im_neg, Zsqrtd.re_intCast, Zsqrtd.im_intCast] at h0
  rw [hu] at h0
  have key : ((⟨A, B⟩ : GaussianInt) ^ 4).im * (2 * e * u * w.re - c) = 0 := by
    linear_combination h0
  rcases mul_eq_zero.mp key with h | h
  · exact im4_ne_zero p hpodd A B hpAB h
  · exact odd_ne_zero (even_sub_odd ⟨e * u * w.re, by ring⟩ hc) h

/-- Uniform kill, lone slot (0,2), difference twins with even χ-power:
for ANY z, any j, any odd c, any e,
Im(−c·χ⁸ + e·z·(χ⁴)^(2j+2) − e·z·(χ̄⁴)^(2j+2)) ≠ 0. -/
theorem uniform_twin_L02
    (q : ℕ) [hq : Fact (Nat.Prime q)] (hqodd : q % 2 = 1)
    (C D : ℤ) (hqCD : C ^ 2 + D ^ 2 = q)
    (z : GaussianInt) (j : ℕ) (c e : ℤ) (hc : Odd c) :
    (((-c : ℤ) : GaussianInt) * ((⟨C, D⟩ : GaussianInt) ^ 4) ^ 2
      + ((e : ℤ) : GaussianInt) * z * (((⟨C, D⟩ : GaussianInt) ^ 4) ^ (j + 1)) ^ 2
      + ((-e : ℤ) : GaussianInt) * z
        * (star (((⟨C, D⟩ : GaussianInt) ^ 4) ^ (j + 1))) ^ 2).im ≠ 0 := by
  intro h0
  obtain ⟨v, hv⟩ := im_pow_fac ((⟨C, D⟩ : GaussianInt) ^ 4) j
  rw [← star_pow] at h0
  simp only [Zsqrtd.im_add, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_star, Zsqrtd.im_star,
    Zsqrtd.re_neg, Zsqrtd.im_neg, Zsqrtd.re_intCast, Zsqrtd.im_intCast, sq_re, sq_im] at h0
  rw [hv] at h0
  have key : (2 * ((⟨C, D⟩ : GaussianInt) ^ 4).im)
      * (2 * e * z.re * (((⟨C, D⟩ : GaussianInt) ^ 4) ^ (j + 1)).re * v
        - c * ((⟨C, D⟩ : GaussianInt) ^ 4).re) = 0 := by
    linear_combination h0
  rcases mul_eq_zero.mp key with h | h
  · have h2 : ((⟨C, D⟩ : GaussianInt) ^ 4).im = 0 := by omega
    exact im4_ne_zero q hqodd C D hqCD h2
  · exact odd_ne_zero (even_sub_odd
      ⟨e * z.re * (((⟨C, D⟩ : GaussianInt) ^ 4) ^ (j + 1)).re * v, by ring⟩
      (hc.mul (re4_odd' q hqodd C D hqCD))) h

/-- Uniform kill, lone slot (2,0), sum twins with even π-power:
for ANY w, any m, any odd c, any e,
Im(−c·π⁸ + e·(π⁴)^(2m+2)·w + e·(π⁴)^(2m+2)·w̄) ≠ 0. -/
theorem uniform_twin_L20
    (p : ℕ) [hp : Fact (Nat.Prime p)] (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p)
    (w : GaussianInt) (m : ℕ) (c e : ℤ) (hc : Odd c) :
    (((-c : ℤ) : GaussianInt) * ((⟨A, B⟩ : GaussianInt) ^ 4) ^ 2
      + ((e : ℤ) : GaussianInt) * (((⟨A, B⟩ : GaussianInt) ^ 4) ^ (m + 1)) ^ 2 * w
      + ((e : ℤ) : GaussianInt) * (((⟨A, B⟩ : GaussianInt) ^ 4) ^ (m + 1)) ^ 2
        * star w).im ≠ 0 := by
  intro h0
  obtain ⟨u, hu⟩ := im_pow_fac ((⟨A, B⟩ : GaussianInt) ^ 4) m
  simp only [Zsqrtd.im_add, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_star, Zsqrtd.im_star,
    Zsqrtd.re_neg, Zsqrtd.im_neg, Zsqrtd.re_intCast, Zsqrtd.im_intCast, sq_re, sq_im] at h0
  rw [hu] at h0
  have key : (2 * ((⟨A, B⟩ : GaussianInt) ^ 4).im)
      * (2 * e * (((⟨A, B⟩ : GaussianInt) ^ 4) ^ (m + 1)).re * u * w.re
        - c * ((⟨A, B⟩ : GaussianInt) ^ 4).re) = 0 := by
    linear_combination h0
  rcases mul_eq_zero.mp key with h | h
  · have h2 : ((⟨A, B⟩ : GaussianInt) ^ 4).im = 0 := by omega
    exact im4_ne_zero p hpodd A B hpAB h2
  · exact odd_ne_zero (even_sub_odd
      ⟨e * (((⟨A, B⟩ : GaussianInt) ^ 4) ^ (m + 1)).re * u * w.re, by ring⟩
      (hc.mul (re4_odd' p hpodd A B hpAB))) h

/-- Im((π⁴)^(k+1)) is never zero: vanishing would give
π̄^(4k+4) = π^(4k+4), forcing π ∣ π̄. -/
lemma im_pow4_ne_zero (p : ℕ) [hp : Fact (Nat.Prime p)] (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (k : ℕ) :
    (((⟨A, B⟩ : GaussianInt) ^ 4) ^ (k + 1)).im ≠ 0 := by
  intro h
  set π : GaussianInt := ⟨A, B⟩ with hπdef
  have hπprime : Prime π := prime_pi p A B hpAB
  have hπnb : ¬ π ∣ star π := pi_not_dvd_star p hpodd A B hpAB
  have hy : ((π ^ 4) ^ (k + 1))
      = ((((π ^ 4) ^ (k + 1)).re : ℤ) : GaussianInt) := by
    ext
    · simp
    · simp [h]
  have hself : star ((π ^ 4) ^ (k + 1)) = (π ^ 4) ^ (k + 1) := by
    rw [hy, star_intCast]
  have hd : π ∣ (star π) ^ (4 * (k + 1)) := by
    have h1 : π ∣ (π ^ 4) ^ (k + 1) :=
      dvd_pow (dvd_pow_self π (by norm_num)) (by omega)
    rw [← hself] at h1
    simpa [← pow_mul, star_pow] using h1
  exact absurd (hπprime.dvd_of_dvd_pow hd) hπnb

/-- FULLY general lone+twin kill, χ-side: lone slot (0, j+1) with ANY
twin whose χ-power is a multiple (t+1)(j+1), any Gaussian π-part z,
any odd coefficient c. Subsumes uniform_twin_L01/L02. -/
theorem uniform_twin_chi
    (q : ℕ) [hq : Fact (Nat.Prime q)] (hqodd : q % 2 = 1)
    (C D : ℤ) (hqCD : C ^ 2 + D ^ 2 = q)
    (z : GaussianInt) (j t : ℕ) (c e : ℤ) (hc : Odd c) :
    (((-c : ℤ) : GaussianInt) * ((⟨C, D⟩ : GaussianInt) ^ 4) ^ (j + 1)
      + ((e : ℤ) : GaussianInt) * z * (((⟨C, D⟩ : GaussianInt) ^ 4) ^ (j + 1)) ^ (t + 1)
      + ((-e : ℤ) : GaussianInt) * z
        * (star (((⟨C, D⟩ : GaussianInt) ^ 4) ^ (j + 1))) ^ (t + 1)).im ≠ 0 := by
  intro h0
  obtain ⟨v, hv⟩ := im_pow_fac (((⟨C, D⟩ : GaussianInt) ^ 4) ^ (j + 1)) t
  rw [← star_pow] at h0
  simp only [Zsqrtd.im_add, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_star, Zsqrtd.im_star,
    Zsqrtd.re_neg, Zsqrtd.im_neg, Zsqrtd.re_intCast, Zsqrtd.im_intCast] at h0
  rw [hv] at h0
  have key : (((⟨C, D⟩ : GaussianInt) ^ 4) ^ (j + 1)).im * (2 * e * z.re * v - c) = 0 := by
    linear_combination h0
  rcases mul_eq_zero.mp key with h | h
  · exact im_pow4_ne_zero q hqodd C D hqCD j h
  · exact odd_ne_zero (even_sub_odd ⟨e * z.re * v, by ring⟩ hc) h

/-- FULLY general lone+twin kill, π-side: lone slot (j+1, 0) with ANY
twin whose π-power is a multiple (t+1)(j+1), any Gaussian χ-part w,
any odd coefficient c. Subsumes uniform_twin_L10/L20 and covers the
lone-(3,0) shape seen at exponent (3,2). -/
theorem uniform_twin_pi
    (p : ℕ) [hp : Fact (Nat.Prime p)] (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p)
    (w : GaussianInt) (j t : ℕ) (c e : ℤ) (hc : Odd c) :
    (((-c : ℤ) : GaussianInt) * ((⟨A, B⟩ : GaussianInt) ^ 4) ^ (j + 1)
      + ((e : ℤ) : GaussianInt) * (((⟨A, B⟩ : GaussianInt) ^ 4) ^ (j + 1)) ^ (t + 1) * w
      + ((e : ℤ) : GaussianInt) * (((⟨A, B⟩ : GaussianInt) ^ 4) ^ (j + 1)) ^ (t + 1)
        * star w).im ≠ 0 := by
  intro h0
  obtain ⟨u, hu⟩ := im_pow_fac (((⟨A, B⟩ : GaussianInt) ^ 4) ^ (j + 1)) t
  simp only [Zsqrtd.im_add, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_star, Zsqrtd.im_star,
    Zsqrtd.re_neg, Zsqrtd.im_neg, Zsqrtd.re_intCast, Zsqrtd.im_intCast] at h0
  rw [hu] at h0
  have key : (((⟨A, B⟩ : GaussianInt) ^ 4) ^ (j + 1)).im * (2 * e * u * w.re - c) = 0 := by
    linear_combination h0
  rcases mul_eq_zero.mp key with h | h
  · exact im_pow4_ne_zero p hpodd A B hpAB j h
  · exact odd_ne_zero (even_sub_odd ⟨e * u * w.re, by ring⟩ hc) h

/-- For z with odd real and even imaginary part, Im(z^(2j+1)) = Im(z)·u
with u odd. -/
lemma im_pow_odd (z : GaussianInt) (hR : Odd z.re) (hI : Even z.im) (j : ℕ) :
    ∃ u : ℤ, (z ^ (2 * j + 1)).im = z.im * u ∧ Odd u := by
  induction j with
  | zero => exact ⟨1, by rw [pow_one, mul_one], odd_one⟩
  | succ n ih =>
    obtain ⟨u, hu, hodd⟩ := ih
    refine ⟨2 * z.re * (z ^ (2 * n + 1)).re + u * (z.re ^ 2 - z.im ^ 2), ?_, ?_⟩
    · have hpow : z ^ (2 * (n + 1) + 1) = z ^ (2 * n + 1) * (z * z) := by ring
      rw [hpow, Zsqrtd.im_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, hu]
      ring
    · obtain ⟨r, hr⟩ := hR
      obtain ⟨i, hi⟩ := hI
      obtain ⟨k, hk⟩ := hodd
      exact ⟨z.re * (z ^ (2 * n + 1)).re
        + (2 * k + 1) * 2 * (r ^ 2 + r - i ^ 2) + k, by
        rw [hk, hr, hi]; ring⟩

/-- Im(π⁴) is even. -/
lemma im4_even (A B : ℤ) : Even (((⟨A, B⟩ : GaussianInt) ^ 4).im) := by
  rw [pow4_im_eq]
  exact ⟨2 * A ^ 3 * B - 2 * A * B ^ 3, by ring⟩

/-- Odd-lone twin kill, π-side: lone slot (2j+1, 0) with ANY twin
π-power t+1 (no divisibility required), any χ-part w, any odd c. -/
theorem uniform_twin_pi_oddlone
    (p : ℕ) [hp : Fact (Nat.Prime p)] (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p)
    (w : GaussianInt) (j t : ℕ) (c e : ℤ) (hc : Odd c) :
    (((-c : ℤ) : GaussianInt) * ((⟨A, B⟩ : GaussianInt) ^ 4) ^ (2 * j + 1)
      + ((e : ℤ) : GaussianInt) * ((⟨A, B⟩ : GaussianInt) ^ 4) ^ (t + 1) * w
      + ((e : ℤ) : GaussianInt) * ((⟨A, B⟩ : GaussianInt) ^ 4) ^ (t + 1)
        * star w).im ≠ 0 := by
  intro h0
  obtain ⟨u, hu, huodd⟩ := im_pow_odd ((⟨A, B⟩ : GaussianInt) ^ 4)
    (re4_odd' p hpodd A B hpAB) (im4_even A B) j
  obtain ⟨v, hv⟩ := im_pow_fac ((⟨A, B⟩ : GaussianInt) ^ 4) t
  simp only [Zsqrtd.im_add, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_star, Zsqrtd.im_star,
    Zsqrtd.re_neg, Zsqrtd.im_neg, Zsqrtd.re_intCast, Zsqrtd.im_intCast] at h0
  rw [hu, hv] at h0
  have key : ((⟨A, B⟩ : GaussianInt) ^ 4).im * (2 * e * v * w.re - c * u) = 0 := by
    linear_combination h0
  rcases mul_eq_zero.mp key with h | h
  · exact im4_ne_zero p hpodd A B hpAB h
  · exact odd_ne_zero (even_sub_odd ⟨e * v * w.re, by ring⟩ (hc.mul huodd)) h

/-- Odd-lone twin kill, χ-side: lone slot (0, 2j+1) with ANY twin
χ-power t+1, any π-part z, any odd c. -/
theorem uniform_twin_chi_oddlone
    (q : ℕ) [hq : Fact (Nat.Prime q)] (hqodd : q % 2 = 1)
    (C D : ℤ) (hqCD : C ^ 2 + D ^ 2 = q)
    (z : GaussianInt) (j t : ℕ) (c e : ℤ) (hc : Odd c) :
    (((-c : ℤ) : GaussianInt) * ((⟨C, D⟩ : GaussianInt) ^ 4) ^ (2 * j + 1)
      + ((e : ℤ) : GaussianInt) * z * ((⟨C, D⟩ : GaussianInt) ^ 4) ^ (t + 1)
      + ((-e : ℤ) : GaussianInt) * z
        * (star ((⟨C, D⟩ : GaussianInt) ^ 4)) ^ (t + 1)).im ≠ 0 := by
  intro h0
  obtain ⟨u, hu, huodd⟩ := im_pow_odd ((⟨C, D⟩ : GaussianInt) ^ 4)
    (re4_odd' q hqodd C D hqCD) (im4_even C D) j
  obtain ⟨v, hv⟩ := im_pow_fac ((⟨C, D⟩ : GaussianInt) ^ 4) t
  rw [← star_pow] at h0
  simp only [Zsqrtd.im_add, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_star, Zsqrtd.im_star,
    Zsqrtd.re_neg, Zsqrtd.im_neg, Zsqrtd.re_intCast, Zsqrtd.im_intCast] at h0
  rw [hu, hv] at h0
  have key : ((⟨C, D⟩ : GaussianInt) ^ 4).im * (2 * e * z.re * v - c * u) = 0 := by
    linear_combination h0
  rcases mul_eq_zero.mp key with h | h
  · exact im4_ne_zero q hqodd C D hqCD h
  · exact odd_ne_zero (even_sub_odd ⟨e * z.re * v, by ring⟩ (hc.mul huodd)) h
