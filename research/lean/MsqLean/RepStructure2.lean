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
    try ring_nf
  rw [hmono]
  congr 1
  exact (GaussData.class_value_bridge j (2 * a - j) k (2 * b - k)
    (A ^ 2 - B ^ 2) (2 * A * B) (q : ℤ) (C ^ 2 - D ^ 2) (2 * C * D)).2

/-- The model equations: if the four differences u, v, u+v, u−v all lie
in D(e) at the center s²·p^(2a)·q^(2b), then some assignment of four
class data values satisfies the two E-relations. This is the statement
the certified leaf enumeration refutes case by case. -/
theorem four_diffs_model (p q : ℕ)
    [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)] (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (s : ℕ) (hs : ∀ r : ℕ, r.Prime → r ∣ s → r % 4 ≠ 1) (hs0 : 0 < s)
    (a b : ℕ)
    (u v : ℤ)
    (x1 y1 x2 y2 x3 y3 x4 y4 : ℤ)
    (h1 : x1 ^ 2 + y1 ^ 2 = ((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (2 * a) * (q : ℤ) ^ (2 * b))
    (e1 : 2 * x1 * y1 = u)
    (h2 : x2 ^ 2 + y2 ^ 2 = ((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (2 * a) * (q : ℤ) ^ (2 * b))
    (e2 : 2 * x2 * y2 = v)
    (h3 : x3 ^ 2 + y3 ^ 2 = ((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (2 * a) * (q : ℤ) ^ (2 * b))
    (e3 : 2 * x3 * y3 = u + v)
    (h4 : x4 ^ 2 + y4 ^ 2 = ((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (2 * a) * (q : ℤ) ^ (2 * b))
    (e4 : 2 * x4 * y4 = u - v) :
    ∃ (ε1 ε2 ε3 ε4 : ℤ) (j1 k1 j2 k2 j3 k3 j4 k4 : ℕ),
      (ε1 = 1 ∨ ε1 = -1) ∧ (ε2 = 1 ∨ ε2 = -1)
      ∧ (ε3 = 1 ∨ ε3 = -1) ∧ (ε4 = 1 ∨ ε4 = -1)
      ∧ j1 ≤ 2 * a ∧ k1 ≤ 2 * b ∧ j2 ≤ 2 * a ∧ k2 ≤ 2 * b
      ∧ j3 ≤ 2 * a ∧ k3 ≤ 2 * b ∧ j4 ≤ 2 * a ∧ k4 ≤ 2 * b
      ∧ (ε3 * PolyRefl.eval (GaussData.classPair j3 (2 * a - j3) k3 (2 * b - k3)).2
            (A ^ 2 - B ^ 2) (2 * A * B) (q : ℤ) (C ^ 2 - D ^ 2) (2 * C * D)
          + ε4 * PolyRefl.eval (GaussData.classPair j4 (2 * a - j4) k4 (2 * b - k4)).2
            (A ^ 2 - B ^ 2) (2 * A * B) (q : ℤ) (C ^ 2 - D ^ 2) (2 * C * D)
          = 2 * ε1 * PolyRefl.eval (GaussData.classPair j1 (2 * a - j1) k1 (2 * b - k1)).2
            (A ^ 2 - B ^ 2) (2 * A * B) (q : ℤ) (C ^ 2 - D ^ 2) (2 * C * D))
      ∧ (ε3 * PolyRefl.eval (GaussData.classPair j3 (2 * a - j3) k3 (2 * b - k3)).2
            (A ^ 2 - B ^ 2) (2 * A * B) (q : ℤ) (C ^ 2 - D ^ 2) (2 * C * D)
          - ε4 * PolyRefl.eval (GaussData.classPair j4 (2 * a - j4) k4 (2 * b - k4)).2
            (A ^ 2 - B ^ 2) (2 * A * B) (q : ℤ) (C ^ 2 - D ^ 2) (2 * C * D)
          = 2 * ε2 * PolyRefl.eval (GaussData.classPair j2 (2 * a - j2) k2 (2 * b - k2)).2
            (A ^ 2 - B ^ 2) (2 * A * B) (q : ℤ) (C ^ 2 - D ^ 2) (2 * C * D)) := by
  obtain ⟨ε1, j1, k1, hε1, hj1, hk1, hv1⟩ :=
    class_value_data p q hpq A B C D hpAB hqCD s hs a b x1 y1 h1
  obtain ⟨ε2, j2, k2, hε2, hj2, hk2, hv2⟩ :=
    class_value_data p q hpq A B C D hpAB hqCD s hs a b x2 y2 h2
  obtain ⟨ε3, j3, k3, hε3, hj3, hk3, hv3⟩ :=
    class_value_data p q hpq A B C D hpAB hqCD s hs a b x3 y3 h3
  obtain ⟨ε4, j4, k4, hε4, hj4, hk4, hv4⟩ :=
    class_value_data p q hpq A B C D hpAB hqCD s hs a b x4 y4 h4
  set K1 := PolyRefl.eval (GaussData.classPair j1 (2 * a - j1) k1 (2 * b - k1)).2
    (A ^ 2 - B ^ 2) (2 * A * B) (q : ℤ) (C ^ 2 - D ^ 2) (2 * C * D) with hK1
  set K2 := PolyRefl.eval (GaussData.classPair j2 (2 * a - j2) k2 (2 * b - k2)).2
    (A ^ 2 - B ^ 2) (2 * A * B) (q : ℤ) (C ^ 2 - D ^ 2) (2 * C * D) with hK2
  set K3 := PolyRefl.eval (GaussData.classPair j3 (2 * a - j3) k3 (2 * b - k3)).2
    (A ^ 2 - B ^ 2) (2 * A * B) (q : ℤ) (C ^ 2 - D ^ 2) (2 * C * D) with hK3
  set K4 := PolyRefl.eval (GaussData.classPair j4 (2 * a - j4) k4 (2 * b - k4)).2
    (A ^ 2 - B ^ 2) (2 * A * B) (q : ℤ) (C ^ 2 - D ^ 2) (2 * C * D) with hK4
  have hs2 : ((s : ℕ) : ℤ) ^ 2 ≠ 0 := by positivity
  refine ⟨ε1, ε2, ε3, ε4, j1, k1, j2, k2, j3, k3, j4, k4,
    hε1, hε2, hε3, hε4, hj1, hk1, hj2, hk2, hj3, hk3, hj4, hk4, ?_, ?_⟩
  · -- (u+v) + (u−v) = 2u, and s² cancels
    have hlin : ((s : ℕ) : ℤ) ^ 2 * (ε3 * K3 + ε4 * K4 - 2 * (ε1 * K1)) = 0 := by
      have a1 : ε1 * (((s : ℕ) : ℤ) ^ 2 * K1) = u := by rw [← e1, hv1]; ring
      have a3 : ε3 * (((s : ℕ) : ℤ) ^ 2 * K3) = u + v := by rw [← e3, hv3]; ring
      have a4 : ε4 * (((s : ℕ) : ℤ) ^ 2 * K4) = u - v := by rw [← e4, hv4]; ring
      linear_combination a3 + a4 - 2 * a1
    have := mul_eq_zero.mp hlin
    rcases this with h | h
    · exact absurd h hs2
    · linarith
  · -- (u+v) − (u−v) = 2v, and s² cancels
    have hlin : ((s : ℕ) : ℤ) ^ 2 * (ε3 * K3 - ε4 * K4 - 2 * (ε2 * K2)) = 0 := by
      have a2 : ε2 * (((s : ℕ) : ℤ) ^ 2 * K2) = v := by rw [← e2, hv2]; ring
      have a3 : ε3 * (((s : ℕ) : ℤ) ^ 2 * K3) = u + v := by rw [← e3, hv3]; ring
      have a4 : ε4 * (((s : ℕ) : ℤ) ^ 2 * K4) = u - v := by rw [← e4, hv4]; ring
      linear_combination a3 - a4 - 2 * a2
    have := mul_eq_zero.mp hlin
    rcases this with h | h
    · exact absurd h hs2
    · linarith

/-- Fold: a mixed conjugate power with m ≥ n collapses to a norm power
times a pure power. -/
lemma pow_fold_ge (z : GaussianInt) (P : ℤ)
    (hz : z * star z = (P : GaussianInt)) (m n : ℕ) (h : n ≤ m) :
    z ^ m * (star z) ^ n = ((P : GaussianInt)) ^ n * z ^ (m - n) := by
  have hm : m = n + (m - n) := by omega
  calc z ^ m * (star z) ^ n
      = z ^ (n + (m - n)) * (star z) ^ n := by rw [← hm]
    _ = (z * star z) ^ n * z ^ (m - n) := by rw [pow_add, mul_pow]; ring
    _ = ((P : GaussianInt)) ^ n * z ^ (m - n) := by rw [hz]

/-- Fold: the n ≥ m side collapses to a norm power times a conjugate
power. -/
lemma pow_fold_le (z : GaussianInt) (P : ℤ)
    (hz : z * star z = (P : GaussianInt)) (m n : ℕ) (h : m ≤ n) :
    z ^ m * (star z) ^ n = ((P : GaussianInt)) ^ m * (star z) ^ (n - m) := by
  have h2 : star z * star (star z) = (P : GaussianInt) := by
    rw [star_star]; rw [mul_comm] at hz; exact hz
  calc z ^ m * (star z) ^ n
      = (star z) ^ n * z ^ m := by ring
    _ = (star z) ^ n * (star (star z)) ^ m := by rw [star_star]
    _ = ((P : GaussianInt)) ^ m * (star z) ^ (n - m) := pow_fold_ge (star z) P h2 n m h

end RepStructure2
