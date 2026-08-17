/-
The representation structure for two free exponents: every element of
D(e) at the center s²·p^(2a)·q^(2b) is, up to sign, s² times the
imaginary part of a half-level Gaussian monomial
π^(2j)·π̄^(2(2a−j))·χ^(2k)·χ̄^(2(2b−k)). This is the top of the value
bridge for the two-exponent theorem: it produces the class values whose
relations the certified elimination chains consume.
-/
import Mathlib
import MsqLean.GaussData
import MsqLean.TwoPrimeClassify
import MsqLean.Classification
import MsqLean.RepStructure
import MsqLean.TwinCollapse

open Zsqrtd

namespace RepStructure2

lemma im_int_mul (n : ℤ) (w : GaussianInt) : (((n : GaussianInt)) * w).im = n * w.im := by
  simp [Zsqrtd.im_mul]

theorem rep_structure_two (p q : ℕ)
    [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)] (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (s : ℕ) (hs : ∀ r : ℕ, r.Prime → r ∣ s → r % 4 ≠ 1)
    (a b : ℕ)
    (x y : ℤ)
    (hxy : x ^ 2 + y ^ 2 = ((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (2 * a) * (q : ℤ) ^ (2 * b)) :
    ∃ (ε : ℤ) (j k : ℕ), (ε = 1 ∨ ε = -1) ∧ j ≤ 2 * a ∧ k ≤ 2 * b ∧
      2 * x * y = ε * ((s : ℕ) : ℤ) ^ 2 *
        ((⟨A, B⟩ : GaussianInt) ^ (2 * j)
          * (star (⟨A, B⟩ : GaussianInt)) ^ (2 * (2 * a - j))
          * (⟨C, D⟩ : GaussianInt) ^ (2 * k)
          * (star (⟨C, D⟩ : GaussianInt)) ^ (2 * (2 * b - k))).im := by
  set π : GaussianInt := ⟨A, B⟩ with hπdef
  set χ : GaussianInt := ⟨C, D⟩ with hχdef
  set z : GaussianInt := ⟨x, y⟩ with hzdef
  have hπnorm : π.norm = (p : ℤ) := by
    have h : π.norm = A * A + B * B := by simp [hπdef, Zsqrtd.norm]
    rw [h]; nlinarith [hpAB]
  have hχnorm : χ.norm = (q : ℤ) := by
    have h : χ.norm = C * C + D * D := by simp [hχdef, Zsqrtd.norm]
    rw [h]; nlinarith [hqCD]
  have hznorm : z.norm = ((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (2 * a) * (q : ℤ) ^ (2 * b) := by
    have h : z.norm = x * x + y * y := by simp [hzdef, Zsqrtd.norm]
    rw [h]; nlinarith [hxy]
  obtain ⟨u, j, k, hu, hj, hk, hzeq⟩ :=
    norm_two_prime_classify p q hpq π χ hπnorm hχnorm s hs (2 * b) (2 * a) z hznorm
  have hz2 : z ^ 2 = u ^ 2 * (((((s : ℕ) : ℤ) ^ 2 : ℤ) : GaussianInt)
      * (π ^ (2 * j) * (star π) ^ (2 * (2 * a - j))
        * χ ^ (2 * k) * (star χ) ^ (2 * (2 * b - k)))) := by
    rw [hzeq]
    have hscast : ((s : GaussianInt)) ^ 2 = ((((s : ℕ) : ℤ) ^ 2 : ℤ) : GaussianInt) := by
      push_cast; ring
    rw [← hscast]
    have h1 : 2 * (2 * a - j) = (2 * a - j) + (2 * a - j) := by omega
    have h2 : 2 * j = j + j := by omega
    have h3 : 2 * (2 * b - k) = (2 * b - k) + (2 * b - k) := by omega
    have h4 : 2 * k = k + k := by omega
    rw [h1, h2, h3, h4]
    simp only [pow_add]
    ring
  have h2xy : 2 * x * y = (z ^ 2).im := by
    rw [sq_im, hzdef]
  obtain hu2 | hu2 := gaussian_unit_sq u hu
  · refine ⟨1, j, k, Or.inl rfl, hj, hk, ?_⟩
    rw [h2xy, hz2, hu2, one_mul, im_int_mul]
    ring
  · refine ⟨-1, j, k, Or.inr rfl, hj, hk, ?_⟩
    rw [h2xy, hz2, hu2]
    have : (-1 : GaussianInt) * (((((s : ℕ) : ℤ) ^ 2 : ℤ) : GaussianInt)
        * (π ^ (2 * j) * (star π) ^ (2 * (2 * a - j))
          * χ ^ (2 * k) * (star χ) ^ (2 * (2 * b - k))))
        = ((((-((s : ℕ) : ℤ) ^ 2) : ℤ) : GaussianInt)
        * (π ^ (2 * j) * (star π) ^ (2 * (2 * a - j))
          * χ ^ (2 * k) * (star χ) ^ (2 * (2 * b - k)))) := by
      push_cast; ring
    rw [this, im_int_mul]
    ring

/-- The top-to-data composition: every D(e) element at the center is,
up to sign, s² times a class-monomial data polynomial evaluated at the
half-level coordinates (Re π², Im π², q, Re χ², Im χ²). -/
theorem class_value_data (p q : ℕ)
    [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)] (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (s : ℕ) (hs : ∀ r : ℕ, r.Prime → r ∣ s → r % 4 ≠ 1)
    (a b : ℕ)
    (x y : ℤ)
    (hxy : x ^ 2 + y ^ 2 = ((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (2 * a) * (q : ℤ) ^ (2 * b)) :
    ∃ (ε : ℤ) (j k : ℕ), (ε = 1 ∨ ε = -1) ∧ j ≤ 2 * a ∧ k ≤ 2 * b ∧
      2 * x * y = ε * ((s : ℕ) : ℤ) ^ 2 *
        PolyRefl.eval (GaussData.classPair j (2 * a - j) k (2 * b - k)).2
          (A ^ 2 - B ^ 2) (2 * A * B) (q : ℤ) (C ^ 2 - D ^ 2) (2 * C * D) := by
  obtain ⟨ε, j, k, hε, hj, hk, hval⟩ :=
    rep_structure_two p q hpq A B C D hpAB hqCD s hs a b x y hxy
  refine ⟨ε, j, k, hε, hj, hk, ?_⟩
  rw [hval]
  have hsq : (⟨A, B⟩ : GaussianInt) ^ 2 = ⟨A ^ 2 - B ^ 2, 2 * A * B⟩ := by
    ext
    · simp [pow_two, Zsqrtd.re_mul]; ring
    · simp [pow_two, Zsqrtd.im_mul]; ring
  have hsqs : (star (⟨A, B⟩ : GaussianInt)) ^ 2 = ⟨A ^ 2 - B ^ 2, -(2 * A * B)⟩ := by
    ext
    · simp [pow_two, Zsqrtd.re_mul]; ring
    · simp [pow_two, Zsqrtd.im_mul]; ring
  have hsqX : (⟨C, D⟩ : GaussianInt) ^ 2 = ⟨C ^ 2 - D ^ 2, 2 * C * D⟩ := by
    ext
    · simp [pow_two, Zsqrtd.re_mul]; ring
    · simp [pow_two, Zsqrtd.im_mul]; ring
  have hsqXs : (star (⟨C, D⟩ : GaussianInt)) ^ 2 = ⟨C ^ 2 - D ^ 2, -(2 * C * D)⟩ := by
    ext
    · simp [pow_two, Zsqrtd.re_mul]; ring
    · simp [pow_two, Zsqrtd.im_mul]; ring
  have hmono : (⟨A, B⟩ : GaussianInt) ^ (2 * j)
      * (star (⟨A, B⟩ : GaussianInt)) ^ (2 * (2 * a - j))
      * (⟨C, D⟩ : GaussianInt) ^ (2 * k)
      * (star (⟨C, D⟩ : GaussianInt)) ^ (2 * (2 * b - k))
      = (⟨A ^ 2 - B ^ 2, 2 * A * B⟩ : GaussianInt) ^ j
        * (⟨A ^ 2 - B ^ 2, -(2 * A * B)⟩ : GaussianInt) ^ (2 * a - j)
        * (⟨C ^ 2 - D ^ 2, 2 * C * D⟩ : GaussianInt) ^ k
        * (⟨C ^ 2 - D ^ 2, -(2 * C * D)⟩ : GaussianInt) ^ (2 * b - k) := by
    rw [← hsq, ← hsqs, ← hsqX, ← hsqXs]
    rw [← pow_mul, ← pow_mul, ← pow_mul, ← pow_mul]
    ring_nf
  rw [hmono]
  congr 1
  exact (GaussData.class_value_bridge j (2 * a - j) k (2 * b - k)
    (A ^ 2 - B ^ 2) (2 * A * B) (q : ℤ) (C ^ 2 - D ^ 2) (2 * C * D)).2

end RepStructure2
