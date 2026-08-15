/-
The 24 parity+unit-side relations at exponent (2,2): every one has a
lone slot plus a twin slot in both conjugations. The twin pair
collapses (Im(zw ± zw̄) = 2·Im/Re(z)·Re/Im(w)), so the relation value
factors over ℤ as (unit factor)·(odd cofactor): the unit factor is a
nonzero Im(π⁴)/Im(χ⁴)-type product, and the cofactor is odd because
2·(anything) − odd prime power is odd.
-/
import MsqLean.CoreDisj
import MsqLean.ParityFacts

open Zsqrtd

lemma pow4_re_eq (A B : ℤ) :
    ((⟨A, B⟩ : GaussianInt) ^ 4).re = A ^ 4 - 6 * A ^ 2 * B ^ 2 + B ^ 4 := by
  simp [pow_succ, Zsqrtd.re_mul, Zsqrtd.im_mul]; ring

lemma pow4_im_eq (A B : ℤ) :
    ((⟨A, B⟩ : GaussianInt) ^ 4).im = 4 * A ^ 3 * B - 4 * A * B ^ 3 := by
  simp [pow_succ, Zsqrtd.re_mul, Zsqrtd.im_mul]; ring

lemma sq_re (z : GaussianInt) : (z ^ 2).re = z.re ^ 2 - z.im ^ 2 := by
  rw [sq]; simp [Zsqrtd.re_mul]; ring

lemma sq_im (z : GaussianInt) : (z ^ 2).im = 2 * z.re * z.im := by
  rw [sq]; simp [Zsqrtd.im_mul]; ring

/-- Re(π⁴) is odd when A² + B² is an odd prime. -/
lemma re4_odd' (p : ℕ) (hpodd : p % 2 = 1) (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) :
    Odd (((⟨A, B⟩ : GaussianInt) ^ 4).re) := by
  rw [pow4_re_eq]
  apply re4_odd
  rw [hpAB]
  rcases Nat.odd_iff.mpr hpodd with ⟨k, hk⟩
  exact ⟨(k : ℤ), by exact_mod_cast hk⟩

/-- Im(π⁴) ≠ 0 when A² + B² is an odd prime. -/
lemma im4_ne_zero (p : ℕ) [hp : Fact (Nat.Prime p)] (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) :
    ((⟨A, B⟩ : GaussianInt) ^ 4).im ≠ 0 := by
  rw [pow4_im_eq]
  obtain ⟨hA, hB⟩ := coord_ne_zero p A B hpAB
  have hd : A ^ 2 - B ^ 2 ≠ 0 := sq_ne_sq_of_odd_prime p hpodd A B hpAB
  have hkey : 4 * A ^ 3 * B - 4 * A * B ^ 3 = 4 * A * B * (A ^ 2 - B ^ 2) := by ring
  rw [hkey]
  exact mul_ne_zero (mul_ne_zero (mul_ne_zero (by norm_num) hA) hB) hd

/-- An odd integer is nonzero. -/
lemma odd_ne_zero {n : ℤ} (h : Odd n) : n ≠ 0 := by
  obtain ⟨k, hk⟩ := h; omega

/-- even − odd is odd. -/
lemma even_sub_odd {n t : ℤ} (hn : Even n) (ht : Odd t) : Odd (n - t) := by
  obtain ⟨a, ha⟩ := hn; obtain ⟨k, hk⟩ := ht; exact ⟨a - k - 1, by omega⟩

lemma odd_p2 (p : ℕ) (hpodd : p % 2 = 1) : Odd ((p : ℤ) ^ 2) := by
  have : Odd (p : ℤ) := by
    rcases Nat.odd_iff.mpr hpodd with ⟨k, hk⟩
    exact ⟨(k : ℤ), by exact_mod_cast hk⟩
  exact this.pow

lemma odd_p2q2 (p q : ℕ) (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) :
    Odd ((p : ℤ) ^ 2 * (q : ℤ) ^ 2) := (odd_p2 p hpodd).mul (odd_p2 q hqodd)

/-- Twin family, lone (0,1), twin (1,1):
Im(−p²χ⁴ + e·π⁴χ⁴ − e·π⁴χ̄⁴) ≠ 0. -/
theorem twin_L01_T11
    (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (e : ℤ) (he : e = 1 ∨ e = -1) :
    ((-((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (⟨C, D⟩ : GaussianInt) ^ 4
      + ((e : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 4 * (⟨C, D⟩ : GaussianInt) ^ 4
      + ((-e : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 4
        * (star (⟨C, D⟩ : GaussianInt)) ^ 4).im ≠ 0 := by
  intro h0
  rw [← star_pow] at h0
  simp only [Zsqrtd.im_add, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_star, Zsqrtd.im_star,
    Zsqrtd.re_neg, Zsqrtd.im_neg, Zsqrtd.re_intCast, Zsqrtd.im_intCast] at h0
  have key : ((⟨C, D⟩ : GaussianInt) ^ 4).im
      * (2 * e * ((⟨A, B⟩ : GaussianInt) ^ 4).re - (p : ℤ) ^ 2) = 0 := by
    linear_combination h0
  rcases mul_eq_zero.mp key with h | h
  · exact im4_ne_zero q hqodd C D hqCD h
  · exact odd_ne_zero (even_sub_odd ⟨e * ((⟨A, B⟩ : GaussianInt) ^ 4).re, by ring⟩
      (odd_p2 p hpodd)) h

lemma odd_cast (p : ℕ) (hpodd : p % 2 = 1) : Odd ((p : ℤ)) := by
  rcases Nat.odd_iff.mpr hpodd with ⟨k, hk⟩
  exact ⟨(k : ℤ), by exact_mod_cast hk⟩


theorem twin_L01_T12
    (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (e : ℤ) (he : e = 1 ∨ e = -1) :
    ((-((p : ℤ) ^ 2 * (q : ℤ) ^ 2 : ℤ) : GaussianInt) * (⟨C, D⟩ : GaussianInt) ^ 4
      + ((e : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 4 * (⟨C, D⟩ : GaussianInt) ^ 8
      + ((-e : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 4 * (star (⟨C, D⟩ : GaussianInt)) ^ 8).im ≠ 0 := by
  intro h0
  rw [← star_pow] at h0
  rw [show (⟨C, D⟩ : GaussianInt) ^ 8 = ((⟨C, D⟩ : GaussianInt) ^ 4) ^ 2 from by ring] at h0
  simp only [Zsqrtd.im_add, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_star, Zsqrtd.im_star,
    Zsqrtd.re_neg, Zsqrtd.im_neg, Zsqrtd.re_intCast, Zsqrtd.im_intCast, sq_re, sq_im] at h0
  have key : (((⟨C, D⟩ : GaussianInt) ^ 4).im)
      * (4 * e * (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (p : ℤ) ^ 2 * (q : ℤ) ^ 2) = 0 := by
    linear_combination h0
  rcases mul_eq_zero.mp key with h | h
  · exact im4_ne_zero q hqodd C D hqCD h
  · exact odd_ne_zero (even_sub_odd ⟨2 * e * (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).re), by ring⟩ ((odd_cast p hpodd).pow.mul (odd_cast q hqodd).pow)) h


theorem twin_L01_T21
    (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (e : ℤ) (he : e = 1 ∨ e = -1) :
    ((-((p : ℤ) ^ 4 : ℤ) : GaussianInt) * (⟨C, D⟩ : GaussianInt) ^ 4
      + ((e : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 8 * (⟨C, D⟩ : GaussianInt) ^ 4
      + ((-e : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 8 * (star (⟨C, D⟩ : GaussianInt)) ^ 4).im ≠ 0 := by
  intro h0
  rw [← star_pow] at h0
  rw [show (⟨A, B⟩ : GaussianInt) ^ 8 = ((⟨A, B⟩ : GaussianInt) ^ 4) ^ 2 from by ring] at h0
  simp only [Zsqrtd.im_add, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_star, Zsqrtd.im_star,
    Zsqrtd.re_neg, Zsqrtd.im_neg, Zsqrtd.re_intCast, Zsqrtd.im_intCast, sq_re, sq_im] at h0
  have key : (((⟨C, D⟩ : GaussianInt) ^ 4).im)
      * (2 * e * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) - (p : ℤ) ^ 4) = 0 := by
    linear_combination h0
  rcases mul_eq_zero.mp key with h | h
  · exact im4_ne_zero q hqodd C D hqCD h
  · exact odd_ne_zero (even_sub_odd ⟨e * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2), by ring⟩ ((odd_cast p hpodd).pow)) h


theorem twin_L01_T22
    (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (e : ℤ) (he : e = 1 ∨ e = -1) :
    ((-((p : ℤ) ^ 4 * (q : ℤ) ^ 2 : ℤ) : GaussianInt) * (⟨C, D⟩ : GaussianInt) ^ 4
      + ((e : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 8 * (⟨C, D⟩ : GaussianInt) ^ 8
      + ((-e : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 8 * (star (⟨C, D⟩ : GaussianInt)) ^ 8).im ≠ 0 := by
  intro h0
  rw [← star_pow] at h0
  rw [show (⟨A, B⟩ : GaussianInt) ^ 8 = ((⟨A, B⟩ : GaussianInt) ^ 4) ^ 2 from by ring] at h0
  rw [show (⟨C, D⟩ : GaussianInt) ^ 8 = ((⟨C, D⟩ : GaussianInt) ^ 4) ^ 2 from by ring] at h0
  simp only [Zsqrtd.im_add, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_star, Zsqrtd.im_star,
    Zsqrtd.re_neg, Zsqrtd.im_neg, Zsqrtd.re_intCast, Zsqrtd.im_intCast, sq_re, sq_im] at h0
  have key : (((⟨C, D⟩ : GaussianInt) ^ 4).im)
      * (4 * e * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (p : ℤ) ^ 4 * (q : ℤ) ^ 2) = 0 := by
    linear_combination h0
  rcases mul_eq_zero.mp key with h | h
  · exact im4_ne_zero q hqodd C D hqCD h
  · exact odd_ne_zero (even_sub_odd ⟨2 * e * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) * (((⟨C, D⟩ : GaussianInt) ^ 4).re), by ring⟩ ((odd_cast p hpodd).pow.mul (odd_cast q hqodd).pow)) h


theorem twin_L02_T12
    (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (e : ℤ) (he : e = 1 ∨ e = -1) :
    ((-((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (⟨C, D⟩ : GaussianInt) ^ 8
      + ((e : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 4 * (⟨C, D⟩ : GaussianInt) ^ 8
      + ((-e : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 4 * (star (⟨C, D⟩ : GaussianInt)) ^ 8).im ≠ 0 := by
  intro h0
  rw [← star_pow] at h0
  rw [show (⟨C, D⟩ : GaussianInt) ^ 8 = ((⟨C, D⟩ : GaussianInt) ^ 4) ^ 2 from by ring] at h0
  simp only [Zsqrtd.im_add, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_star, Zsqrtd.im_star,
    Zsqrtd.re_neg, Zsqrtd.im_neg, Zsqrtd.re_intCast, Zsqrtd.im_intCast, sq_re, sq_im] at h0
  have key : (2 * (((⟨C, D⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))
      * (2 * e * (((⟨A, B⟩ : GaussianInt) ^ 4).re) - (p : ℤ) ^ 2) = 0 := by
    linear_combination h0
  rcases mul_eq_zero.mp key with h | h
  · rcases mul_eq_zero.mp h with h2 | h2
    · have hx0 : (((⟨C, D⟩ : GaussianInt) ^ 4).re) = 0 := by omega
      exact odd_ne_zero (re4_odd' q hqodd C D hqCD) hx0
    · exact im4_ne_zero q hqodd C D hqCD h2
  · exact odd_ne_zero (even_sub_odd ⟨e * (((⟨A, B⟩ : GaussianInt) ^ 4).re), by ring⟩ ((odd_cast p hpodd).pow)) h


theorem twin_L02_T22
    (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (e : ℤ) (he : e = 1 ∨ e = -1) :
    ((-((p : ℤ) ^ 4 : ℤ) : GaussianInt) * (⟨C, D⟩ : GaussianInt) ^ 8
      + ((e : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 8 * (⟨C, D⟩ : GaussianInt) ^ 8
      + ((-e : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 8 * (star (⟨C, D⟩ : GaussianInt)) ^ 8).im ≠ 0 := by
  intro h0
  rw [← star_pow] at h0
  rw [show (⟨A, B⟩ : GaussianInt) ^ 8 = ((⟨A, B⟩ : GaussianInt) ^ 4) ^ 2 from by ring] at h0
  rw [show (⟨C, D⟩ : GaussianInt) ^ 8 = ((⟨C, D⟩ : GaussianInt) ^ 4) ^ 2 from by ring] at h0
  simp only [Zsqrtd.im_add, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_star, Zsqrtd.im_star,
    Zsqrtd.re_neg, Zsqrtd.im_neg, Zsqrtd.re_intCast, Zsqrtd.im_intCast, sq_re, sq_im] at h0
  have key : (2 * (((⟨C, D⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))
      * (2 * e * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) - (p : ℤ) ^ 4) = 0 := by
    linear_combination h0
  rcases mul_eq_zero.mp key with h | h
  · rcases mul_eq_zero.mp h with h2 | h2
    · have hx0 : (((⟨C, D⟩ : GaussianInt) ^ 4).re) = 0 := by omega
      exact odd_ne_zero (re4_odd' q hqodd C D hqCD) hx0
    · exact im4_ne_zero q hqodd C D hqCD h2
  · exact odd_ne_zero (even_sub_odd ⟨e * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2), by ring⟩ ((odd_cast p hpodd).pow)) h


theorem twin_L10_T11
    (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (e : ℤ) (he : e = 1 ∨ e = -1) :
    ((-((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 4
      + ((e : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 4 * (⟨C, D⟩ : GaussianInt) ^ 4
      + ((e : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 4 * (star (⟨C, D⟩ : GaussianInt)) ^ 4).im ≠ 0 := by
  intro h0
  rw [← star_pow] at h0

  simp only [Zsqrtd.im_add, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_star, Zsqrtd.im_star,
    Zsqrtd.re_neg, Zsqrtd.im_neg, Zsqrtd.re_intCast, Zsqrtd.im_intCast, sq_re, sq_im] at h0
  have key : (((⟨A, B⟩ : GaussianInt) ^ 4).im)
      * (2 * e * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (q : ℤ) ^ 2) = 0 := by
    linear_combination h0
  rcases mul_eq_zero.mp key with h | h
  · exact im4_ne_zero p hpodd A B hpAB h
  · exact odd_ne_zero (even_sub_odd ⟨e * (((⟨C, D⟩ : GaussianInt) ^ 4).re), by ring⟩ ((odd_cast q hqodd).pow)) h


theorem twin_L10_T12
    (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (e : ℤ) (he : e = 1 ∨ e = -1) :
    ((-((q : ℤ) ^ 4 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 4
      + ((e : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 4 * (⟨C, D⟩ : GaussianInt) ^ 8
      + ((e : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 4 * (star (⟨C, D⟩ : GaussianInt)) ^ 8).im ≠ 0 := by
  intro h0
  rw [← star_pow] at h0
  rw [show (⟨C, D⟩ : GaussianInt) ^ 8 = ((⟨C, D⟩ : GaussianInt) ^ 4) ^ 2 from by ring] at h0
  simp only [Zsqrtd.im_add, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_star, Zsqrtd.im_star,
    Zsqrtd.re_neg, Zsqrtd.im_neg, Zsqrtd.re_intCast, Zsqrtd.im_intCast, sq_re, sq_im] at h0
  have key : (((⟨A, B⟩ : GaussianInt) ^ 4).im)
      * (2 * e * ((((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨C, D⟩ : GaussianInt) ^ 4).im) ^ 2) - (q : ℤ) ^ 4) = 0 := by
    linear_combination h0
  rcases mul_eq_zero.mp key with h | h
  · exact im4_ne_zero p hpodd A B hpAB h
  · exact odd_ne_zero (even_sub_odd ⟨e * ((((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨C, D⟩ : GaussianInt) ^ 4).im) ^ 2), by ring⟩ ((odd_cast q hqodd).pow)) h


theorem twin_L10_T21
    (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (e : ℤ) (he : e = 1 ∨ e = -1) :
    ((-((p : ℤ) ^ 2 * (q : ℤ) ^ 2 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 4
      + ((e : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 8 * (⟨C, D⟩ : GaussianInt) ^ 4
      + ((e : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 8 * (star (⟨C, D⟩ : GaussianInt)) ^ 4).im ≠ 0 := by
  intro h0
  rw [← star_pow] at h0
  rw [show (⟨A, B⟩ : GaussianInt) ^ 8 = ((⟨A, B⟩ : GaussianInt) ^ 4) ^ 2 from by ring] at h0
  simp only [Zsqrtd.im_add, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_star, Zsqrtd.im_star,
    Zsqrtd.re_neg, Zsqrtd.im_neg, Zsqrtd.re_intCast, Zsqrtd.im_intCast, sq_re, sq_im] at h0
  have key : (((⟨A, B⟩ : GaussianInt) ^ 4).im)
      * (4 * e * (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (p : ℤ) ^ 2 * (q : ℤ) ^ 2) = 0 := by
    linear_combination h0
  rcases mul_eq_zero.mp key with h | h
  · exact im4_ne_zero p hpodd A B hpAB h
  · exact odd_ne_zero (even_sub_odd ⟨2 * e * (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).re), by ring⟩ ((odd_cast p hpodd).pow.mul (odd_cast q hqodd).pow)) h


theorem twin_L10_T22
    (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (e : ℤ) (he : e = 1 ∨ e = -1) :
    ((-((p : ℤ) ^ 2 * (q : ℤ) ^ 4 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 4
      + ((e : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 8 * (⟨C, D⟩ : GaussianInt) ^ 8
      + ((e : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 8 * (star (⟨C, D⟩ : GaussianInt)) ^ 8).im ≠ 0 := by
  intro h0
  rw [← star_pow] at h0
  rw [show (⟨A, B⟩ : GaussianInt) ^ 8 = ((⟨A, B⟩ : GaussianInt) ^ 4) ^ 2 from by ring] at h0
  rw [show (⟨C, D⟩ : GaussianInt) ^ 8 = ((⟨C, D⟩ : GaussianInt) ^ 4) ^ 2 from by ring] at h0
  simp only [Zsqrtd.im_add, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_star, Zsqrtd.im_star,
    Zsqrtd.re_neg, Zsqrtd.im_neg, Zsqrtd.re_intCast, Zsqrtd.im_intCast, sq_re, sq_im] at h0
  have key : (((⟨A, B⟩ : GaussianInt) ^ 4).im)
      * (4 * e * (((⟨A, B⟩ : GaussianInt) ^ 4).re) * ((((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨C, D⟩ : GaussianInt) ^ 4).im) ^ 2) - (p : ℤ) ^ 2 * (q : ℤ) ^ 4) = 0 := by
    linear_combination h0
  rcases mul_eq_zero.mp key with h | h
  · exact im4_ne_zero p hpodd A B hpAB h
  · exact odd_ne_zero (even_sub_odd ⟨2 * e * (((⟨A, B⟩ : GaussianInt) ^ 4).re) * ((((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨C, D⟩ : GaussianInt) ^ 4).im) ^ 2), by ring⟩ ((odd_cast p hpodd).pow.mul (odd_cast q hqodd).pow)) h


theorem twin_L20_T21
    (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (e : ℤ) (he : e = 1 ∨ e = -1) :
    ((-((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 8
      + ((e : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 8 * (⟨C, D⟩ : GaussianInt) ^ 4
      + ((e : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 8 * (star (⟨C, D⟩ : GaussianInt)) ^ 4).im ≠ 0 := by
  intro h0
  rw [← star_pow] at h0
  rw [show (⟨A, B⟩ : GaussianInt) ^ 8 = ((⟨A, B⟩ : GaussianInt) ^ 4) ^ 2 from by ring] at h0
  simp only [Zsqrtd.im_add, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_star, Zsqrtd.im_star,
    Zsqrtd.re_neg, Zsqrtd.im_neg, Zsqrtd.re_intCast, Zsqrtd.im_intCast, sq_re, sq_im] at h0
  have key : (2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨A, B⟩ : GaussianInt) ^ 4).im))
      * (2 * e * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (q : ℤ) ^ 2) = 0 := by
    linear_combination h0
  rcases mul_eq_zero.mp key with h | h
  · rcases mul_eq_zero.mp h with h2 | h2
    · have hx0 : (((⟨A, B⟩ : GaussianInt) ^ 4).re) = 0 := by omega
      exact odd_ne_zero (re4_odd' p hpodd A B hpAB) hx0
    · exact im4_ne_zero p hpodd A B hpAB h2
  · exact odd_ne_zero (even_sub_odd ⟨e * (((⟨C, D⟩ : GaussianInt) ^ 4).re), by ring⟩ ((odd_cast q hqodd).pow)) h


theorem twin_L20_T22
    (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (e : ℤ) (he : e = 1 ∨ e = -1) :
    ((-((q : ℤ) ^ 4 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 8
      + ((e : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 8 * (⟨C, D⟩ : GaussianInt) ^ 8
      + ((e : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 8 * (star (⟨C, D⟩ : GaussianInt)) ^ 8).im ≠ 0 := by
  intro h0
  rw [← star_pow] at h0
  rw [show (⟨A, B⟩ : GaussianInt) ^ 8 = ((⟨A, B⟩ : GaussianInt) ^ 4) ^ 2 from by ring] at h0
  rw [show (⟨C, D⟩ : GaussianInt) ^ 8 = ((⟨C, D⟩ : GaussianInt) ^ 4) ^ 2 from by ring] at h0
  simp only [Zsqrtd.im_add, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_star, Zsqrtd.im_star,
    Zsqrtd.re_neg, Zsqrtd.im_neg, Zsqrtd.re_intCast, Zsqrtd.im_intCast, sq_re, sq_im] at h0
  have key : (2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨A, B⟩ : GaussianInt) ^ 4).im))
      * (2 * e * ((((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨C, D⟩ : GaussianInt) ^ 4).im) ^ 2) - (q : ℤ) ^ 4) = 0 := by
    linear_combination h0
  rcases mul_eq_zero.mp key with h | h
  · rcases mul_eq_zero.mp h with h2 | h2
    · have hx0 : (((⟨A, B⟩ : GaussianInt) ^ 4).re) = 0 := by omega
      exact odd_ne_zero (re4_odd' p hpodd A B hpAB) hx0
    · exact im4_ne_zero p hpodd A B hpAB h2
  · exact odd_ne_zero (even_sub_odd ⟨e * ((((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨C, D⟩ : GaussianInt) ^ 4).im) ^ 2), by ring⟩ ((odd_cast q hqodd).pow)) h
