/-
rep_structure for e = s·p³·q: the ten D-class magnitudes.
Foundation for the formal Theorem G.
-/
import Mathlib
import MsqLean.TwoPrimeClassify
import MsqLean.TwinCollapse

open Zsqrtd

set_option maxHeartbeats 3200000 in
theorem rep_structure_sp3q (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (s : ℕ) (hs : ∀ r : ℕ, r.Prime → r ∣ s → r % 4 ≠ 1)
    (x y : ℤ)
    (hxy : x ^ 2 + y ^ 2 = (s : ℤ) ^ 2 * (p : ℤ) ^ 6 * (q : ℤ) ^ 2)
    (hne : 2 * x * y ≠ 0) :
    ∃ ε : ℤ, (ε = 1 ∨ ε = -1) ∧
      (2 * x * y = ε * ((s : ℤ) ^ 2 * ((p : ℤ) ^ 6 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)))
       ∨ 2 * x * y = ε * ((s : ℤ) ^ 2 * ((p : ℤ) ^ 4 * (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im)))
       ∨ 2 * x * y = ε * ((s : ℤ) ^ 2 * ((p : ℤ) ^ 4 * (((⟨A, B⟩ : GaussianInt) ^ 4 * (⟨C, D⟩ : GaussianInt) ^ 4).im)))
       ∨ 2 * x * y = ε * ((s : ℤ) ^ 2 * ((p : ℤ) ^ 4 * (((⟨A, B⟩ : GaussianInt) ^ 4 * (star (⟨C, D⟩ : GaussianInt)) ^ 4).im)))
       ∨ 2 * x * y = ε * ((s : ℤ) ^ 2 * ((p : ℤ) ^ 2 * (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)))
       ∨ 2 * x * y = ε * ((s : ℤ) ^ 2 * ((p : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8 * (⟨C, D⟩ : GaussianInt) ^ 4).im)))
       ∨ 2 * x * y = ε * ((s : ℤ) ^ 2 * ((p : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8 * (star (⟨C, D⟩ : GaussianInt)) ^ 4).im)))
       ∨ 2 * x * y = ε * ((s : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 12).im)))
       ∨ 2 * x * y = ε * ((s : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 12 * (⟨C, D⟩ : GaussianInt) ^ 4).im)))
       ∨ 2 * x * y = ε * ((s : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 12 * (star (⟨C, D⟩ : GaussianInt)) ^ 4).im)))) := by
  set π : GaussianInt := ⟨A, B⟩ with hπdef
  set χ : GaussianInt := ⟨C, D⟩ with hχdef
  have hπnorm : π.norm = (p : ℤ) := by
    have h : π.norm = A * A + B * B := by simp [hπdef, Zsqrtd.norm]
    rw [h]; nlinarith [hpAB]
  have hχnorm : χ.norm = (q : ℤ) := by
    have h : χ.norm = C * C + D * D := by simp [hχdef, Zsqrtd.norm]
    rw [h]; nlinarith [hqCD]
  have hsplitπ : π * star π = ((p : ℤ) : GaussianInt) := by
    have := Zsqrtd.norm_eq_mul_conj π
    rw [hπnorm] at this
    exact this.symm
  have hsplitχ : χ * star χ = ((q : ℤ) : GaussianInt) := by
    have := Zsqrtd.norm_eq_mul_conj χ
    rw [hχnorm] at this
    exact this.symm
  set z : GaussianInt := ⟨x, y⟩ with hzdef
  have hznorm : z.norm = ((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ 6 * (q : ℤ) ^ 2 := by
    have h : z.norm = x * x + y * y := by simp [hzdef, Zsqrtd.norm]
    rw [h]; nlinarith [hxy]
  obtain ⟨u, j, k, hu, hj, hk, hzeq⟩ := norm_two_prime_classify p q hpq π χ hπnorm hχnorm
    s hs 2 6 z (by rw [hznorm])
  have hz2 : z ^ 2 = u ^ 2 * (((((s : ℕ) : ℤ) ^ 2 : ℤ) : GaussianInt)
      * (π ^ (2 * j) * (star π) ^ (2 * (6 - j)) * χ ^ (2 * k) * (star χ) ^ (2 * (2 - k)))) := by
    rw [hzeq]
    have hscast : ((s : GaussianInt)) ^ 2 = ((((s : ℕ) : ℤ) ^ 2 : ℤ) : GaussianInt) := by
      push_cast; ring
    rw [← hscast]
    have h1 : 2 * (6 - j) = (6 - j) + (6 - j) := by omega
    have h2 : 2 * j = j + j := by omega
    have h3 : 2 * (2 - k) = (2 - k) + (2 - k) := by omega
    have h4 : 2 * k = k + k := by omega
    rw [h1, h2, h3, h4]
    simp only [pow_add]
    ring
  have h2xy : 2 * x * y = (z ^ 2).im := by
    rw [sq_im, hzdef]
  obtain hu2 | hu2 := gaussian_unit_sq u hu <;> interval_cases j <;> interval_cases k
  · -- u² = 1, (j,k) = (0,0): class 8, ε = -1
    refine ⟨-1, by norm_num, Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl ?_))))))))⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 0) * (star π) ^ (2 * (6 - 0)) * χ ^ (2 * 0) * (star χ) ^ (2 * (2 - 0))
        = star ((⟨A, B⟩ : GaussianInt) ^ 12 * (⟨C, D⟩ : GaussianInt) ^ 4) := by
      have h1 : π ^ (2 * 0) * (star π) ^ (2 * (6 - 0)) * χ ^ (2 * 0) * (star χ) ^ (2 * (2 - 0))
          = (star π) ^ 12 * (star χ) ^ 4 := by ring
      rw [h1]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = 1, (j,k) = (0,1): class 7, ε = -1
    refine ⟨-1, by norm_num, Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl ?_)))))))⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 0) * (star π) ^ (2 * (6 - 0)) * χ ^ (2 * 1) * (star χ) ^ (2 * (2 - 1))
        = ((((q : ℤ) ^ 2 : ℤ)) : GaussianInt) * star ((⟨A, B⟩ : GaussianInt) ^ 12) := by
      have h1 : π ^ (2 * 0) * (star π) ^ (2 * (6 - 0)) * χ ^ (2 * 1) * (star χ) ^ (2 * (2 - 1))
          = (star π) ^ 12 * (χ * star χ) ^ 2 := by ring
      rw [h1]
      rw [show (χ * star χ) ^ 2 = (((q : ℤ) : GaussianInt)) ^ 2 from by rw [hsplitχ]]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = 1, (j,k) = (0,2): class 9, ε = -1
    refine ⟨-1, by norm_num, Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr ?_))))))))⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 0) * (star π) ^ (2 * (6 - 0)) * χ ^ (2 * 2) * (star χ) ^ (2 * (2 - 2))
        = star ((⟨A, B⟩ : GaussianInt) ^ 12 * (star (⟨C, D⟩ : GaussianInt)) ^ 4) := by
      have h1 : π ^ (2 * 0) * (star π) ^ (2 * (6 - 0)) * χ ^ (2 * 2) * (star χ) ^ (2 * (2 - 2))
          = (star π) ^ 12 * χ ^ 4 := by ring
      rw [h1]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = 1, (j,k) = (1,0): class 5, ε = -1
    refine ⟨-1, by norm_num, Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl ?_)))))⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 1) * (star π) ^ (2 * (6 - 1)) * χ ^ (2 * 0) * (star χ) ^ (2 * (2 - 0))
        = ((((p : ℤ) ^ 2 : ℤ)) : GaussianInt) * star ((⟨A, B⟩ : GaussianInt) ^ 8 * (⟨C, D⟩ : GaussianInt) ^ 4) := by
      have h1 : π ^ (2 * 1) * (star π) ^ (2 * (6 - 1)) * χ ^ (2 * 0) * (star χ) ^ (2 * (2 - 0))
          = (π * star π) ^ 2 * (star π) ^ 8 * (star χ) ^ 4 := by ring
      rw [h1]
      rw [show (π * star π) ^ 2 = (((p : ℤ) : GaussianInt)) ^ 2 from by rw [hsplitπ]]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = 1, (j,k) = (1,1): class 4, ε = -1
    refine ⟨-1, by norm_num, Or.inr (Or.inr (Or.inr (Or.inr (Or.inl ?_))))⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 1) * (star π) ^ (2 * (6 - 1)) * χ ^ (2 * 1) * (star χ) ^ (2 * (2 - 1))
        = ((((p : ℤ) ^ 2 * (q : ℤ) ^ 2 : ℤ)) : GaussianInt) * star ((⟨A, B⟩ : GaussianInt) ^ 8) := by
      have h1 : π ^ (2 * 1) * (star π) ^ (2 * (6 - 1)) * χ ^ (2 * 1) * (star χ) ^ (2 * (2 - 1))
          = (π * star π) ^ 2 * (star π) ^ 8 * (χ * star χ) ^ 2 := by ring
      rw [h1]
      rw [show (π * star π) ^ 2 = (((p : ℤ) : GaussianInt)) ^ 2 from by rw [hsplitπ]]
      rw [show (χ * star χ) ^ 2 = (((q : ℤ) : GaussianInt)) ^ 2 from by rw [hsplitχ]]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = 1, (j,k) = (1,2): class 6, ε = -1
    refine ⟨-1, by norm_num, Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl ?_))))))⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 1) * (star π) ^ (2 * (6 - 1)) * χ ^ (2 * 2) * (star χ) ^ (2 * (2 - 2))
        = ((((p : ℤ) ^ 2 : ℤ)) : GaussianInt) * star ((⟨A, B⟩ : GaussianInt) ^ 8 * (star (⟨C, D⟩ : GaussianInt)) ^ 4) := by
      have h1 : π ^ (2 * 1) * (star π) ^ (2 * (6 - 1)) * χ ^ (2 * 2) * (star χ) ^ (2 * (2 - 2))
          = (π * star π) ^ 2 * (star π) ^ 8 * χ ^ 4 := by ring
      rw [h1]
      rw [show (π * star π) ^ 2 = (((p : ℤ) : GaussianInt)) ^ 2 from by rw [hsplitπ]]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = 1, (j,k) = (2,0): class 2, ε = -1
    refine ⟨-1, by norm_num, Or.inr (Or.inr (Or.inl ?_))⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 2) * (star π) ^ (2 * (6 - 2)) * χ ^ (2 * 0) * (star χ) ^ (2 * (2 - 0))
        = ((((p : ℤ) ^ 4 : ℤ)) : GaussianInt) * star ((⟨A, B⟩ : GaussianInt) ^ 4 * (⟨C, D⟩ : GaussianInt) ^ 4) := by
      have h1 : π ^ (2 * 2) * (star π) ^ (2 * (6 - 2)) * χ ^ (2 * 0) * (star χ) ^ (2 * (2 - 0))
          = (π * star π) ^ 4 * (star π) ^ 4 * (star χ) ^ 4 := by ring
      rw [h1]
      rw [show (π * star π) ^ 4 = (((p : ℤ) : GaussianInt)) ^ 4 from by rw [hsplitπ]]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = 1, (j,k) = (2,1): class 1, ε = -1
    refine ⟨-1, by norm_num, Or.inr (Or.inl ?_)⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 2) * (star π) ^ (2 * (6 - 2)) * χ ^ (2 * 1) * (star χ) ^ (2 * (2 - 1))
        = ((((p : ℤ) ^ 4 * (q : ℤ) ^ 2 : ℤ)) : GaussianInt) * star ((⟨A, B⟩ : GaussianInt) ^ 4) := by
      have h1 : π ^ (2 * 2) * (star π) ^ (2 * (6 - 2)) * χ ^ (2 * 1) * (star χ) ^ (2 * (2 - 1))
          = (π * star π) ^ 4 * (star π) ^ 4 * (χ * star χ) ^ 2 := by ring
      rw [h1]
      rw [show (π * star π) ^ 4 = (((p : ℤ) : GaussianInt)) ^ 4 from by rw [hsplitπ]]
      rw [show (χ * star χ) ^ 2 = (((q : ℤ) : GaussianInt)) ^ 2 from by rw [hsplitχ]]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = 1, (j,k) = (2,2): class 3, ε = -1
    refine ⟨-1, by norm_num, Or.inr (Or.inr (Or.inr (Or.inl ?_)))⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 2) * (star π) ^ (2 * (6 - 2)) * χ ^ (2 * 2) * (star χ) ^ (2 * (2 - 2))
        = ((((p : ℤ) ^ 4 : ℤ)) : GaussianInt) * star ((⟨A, B⟩ : GaussianInt) ^ 4 * (star (⟨C, D⟩ : GaussianInt)) ^ 4) := by
      have h1 : π ^ (2 * 2) * (star π) ^ (2 * (6 - 2)) * χ ^ (2 * 2) * (star χ) ^ (2 * (2 - 2))
          = (π * star π) ^ 4 * (star π) ^ 4 * χ ^ 4 := by ring
      rw [h1]
      rw [show (π * star π) ^ 4 = (((p : ℤ) : GaussianInt)) ^ 4 from by rw [hsplitπ]]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = 1, (j,k) = (3,0): class 0, ε = -1
    refine ⟨-1, by norm_num, (Or.inl ?_)⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 3) * (star π) ^ (2 * (6 - 3)) * χ ^ (2 * 0) * (star χ) ^ (2 * (2 - 0))
        = ((((p : ℤ) ^ 6 : ℤ)) : GaussianInt) * star ((⟨C, D⟩ : GaussianInt) ^ 4) := by
      have h1 : π ^ (2 * 3) * (star π) ^ (2 * (6 - 3)) * χ ^ (2 * 0) * (star χ) ^ (2 * (2 - 0))
          = (π * star π) ^ 6 * (star χ) ^ 4 := by ring
      rw [h1]
      rw [show (π * star π) ^ 6 = (((p : ℤ) : GaussianInt)) ^ 6 from by rw [hsplitπ]]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = 1, (j,k) = (3,1): real, impossible
    exfalso
    apply hne
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 3) * (star π) ^ (2 * (6 - 3)) * χ ^ (2 * 1) * (star χ) ^ (2 * (2 - 1))
        = ((((p : ℤ) ^ 6 * (q : ℤ) ^ 2 : ℤ)) : GaussianInt) := by
      have h1 : π ^ (2 * 3) * (star π) ^ (2 * (6 - 3)) * χ ^ (2 * 1) * (star χ) ^ (2 * (2 - 1))
          = (π * star π) ^ 6 * (χ * star χ) ^ 2 := by ring
      rw [h1]
      rw [show (π * star π) ^ 6 = (((p : ℤ) : GaussianInt)) ^ 6 from by rw [hsplitπ]]
      rw [show (χ * star χ) ^ 2 = (((q : ℤ) : GaussianInt)) ^ 2 from by rw [hsplitχ]]
      push_cast
      ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_neg]
    push_cast
    ring
  · -- u² = 1, (j,k) = (3,2): class 0, ε = 1
    refine ⟨1, by norm_num, (Or.inl ?_)⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 3) * (star π) ^ (2 * (6 - 3)) * χ ^ (2 * 2) * (star χ) ^ (2 * (2 - 2))
        = ((((p : ℤ) ^ 6 : ℤ)) : GaussianInt) * ((⟨C, D⟩ : GaussianInt) ^ 4) := by
      have h1 : π ^ (2 * 3) * (star π) ^ (2 * (6 - 3)) * χ ^ (2 * 2) * (star χ) ^ (2 * (2 - 2))
          = (π * star π) ^ 6 * χ ^ 4 := by ring
      rw [h1]
      rw [show (π * star π) ^ 6 = (((p : ℤ) : GaussianInt)) ^ 6 from by rw [hsplitπ]]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = 1, (j,k) = (4,0): class 3, ε = 1
    refine ⟨1, by norm_num, Or.inr (Or.inr (Or.inr (Or.inl ?_)))⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 4) * (star π) ^ (2 * (6 - 4)) * χ ^ (2 * 0) * (star χ) ^ (2 * (2 - 0))
        = ((((p : ℤ) ^ 4 : ℤ)) : GaussianInt) * ((⟨A, B⟩ : GaussianInt) ^ 4 * (star (⟨C, D⟩ : GaussianInt)) ^ 4) := by
      have h1 : π ^ (2 * 4) * (star π) ^ (2 * (6 - 4)) * χ ^ (2 * 0) * (star χ) ^ (2 * (2 - 0))
          = (π * star π) ^ 4 * π ^ 4 * (star χ) ^ 4 := by ring
      rw [h1]
      rw [show (π * star π) ^ 4 = (((p : ℤ) : GaussianInt)) ^ 4 from by rw [hsplitπ]]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = 1, (j,k) = (4,1): class 1, ε = 1
    refine ⟨1, by norm_num, Or.inr (Or.inl ?_)⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 4) * (star π) ^ (2 * (6 - 4)) * χ ^ (2 * 1) * (star χ) ^ (2 * (2 - 1))
        = ((((p : ℤ) ^ 4 * (q : ℤ) ^ 2 : ℤ)) : GaussianInt) * ((⟨A, B⟩ : GaussianInt) ^ 4) := by
      have h1 : π ^ (2 * 4) * (star π) ^ (2 * (6 - 4)) * χ ^ (2 * 1) * (star χ) ^ (2 * (2 - 1))
          = (π * star π) ^ 4 * π ^ 4 * (χ * star χ) ^ 2 := by ring
      rw [h1]
      rw [show (π * star π) ^ 4 = (((p : ℤ) : GaussianInt)) ^ 4 from by rw [hsplitπ]]
      rw [show (χ * star χ) ^ 2 = (((q : ℤ) : GaussianInt)) ^ 2 from by rw [hsplitχ]]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = 1, (j,k) = (4,2): class 2, ε = 1
    refine ⟨1, by norm_num, Or.inr (Or.inr (Or.inl ?_))⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 4) * (star π) ^ (2 * (6 - 4)) * χ ^ (2 * 2) * (star χ) ^ (2 * (2 - 2))
        = ((((p : ℤ) ^ 4 : ℤ)) : GaussianInt) * ((⟨A, B⟩ : GaussianInt) ^ 4 * (⟨C, D⟩ : GaussianInt) ^ 4) := by
      have h1 : π ^ (2 * 4) * (star π) ^ (2 * (6 - 4)) * χ ^ (2 * 2) * (star χ) ^ (2 * (2 - 2))
          = (π * star π) ^ 4 * π ^ 4 * χ ^ 4 := by ring
      rw [h1]
      rw [show (π * star π) ^ 4 = (((p : ℤ) : GaussianInt)) ^ 4 from by rw [hsplitπ]]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = 1, (j,k) = (5,0): class 6, ε = 1
    refine ⟨1, by norm_num, Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl ?_))))))⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 5) * (star π) ^ (2 * (6 - 5)) * χ ^ (2 * 0) * (star χ) ^ (2 * (2 - 0))
        = ((((p : ℤ) ^ 2 : ℤ)) : GaussianInt) * ((⟨A, B⟩ : GaussianInt) ^ 8 * (star (⟨C, D⟩ : GaussianInt)) ^ 4) := by
      have h1 : π ^ (2 * 5) * (star π) ^ (2 * (6 - 5)) * χ ^ (2 * 0) * (star χ) ^ (2 * (2 - 0))
          = (π * star π) ^ 2 * π ^ 8 * (star χ) ^ 4 := by ring
      rw [h1]
      rw [show (π * star π) ^ 2 = (((p : ℤ) : GaussianInt)) ^ 2 from by rw [hsplitπ]]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = 1, (j,k) = (5,1): class 4, ε = 1
    refine ⟨1, by norm_num, Or.inr (Or.inr (Or.inr (Or.inr (Or.inl ?_))))⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 5) * (star π) ^ (2 * (6 - 5)) * χ ^ (2 * 1) * (star χ) ^ (2 * (2 - 1))
        = ((((p : ℤ) ^ 2 * (q : ℤ) ^ 2 : ℤ)) : GaussianInt) * ((⟨A, B⟩ : GaussianInt) ^ 8) := by
      have h1 : π ^ (2 * 5) * (star π) ^ (2 * (6 - 5)) * χ ^ (2 * 1) * (star χ) ^ (2 * (2 - 1))
          = (π * star π) ^ 2 * π ^ 8 * (χ * star χ) ^ 2 := by ring
      rw [h1]
      rw [show (π * star π) ^ 2 = (((p : ℤ) : GaussianInt)) ^ 2 from by rw [hsplitπ]]
      rw [show (χ * star χ) ^ 2 = (((q : ℤ) : GaussianInt)) ^ 2 from by rw [hsplitχ]]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = 1, (j,k) = (5,2): class 5, ε = 1
    refine ⟨1, by norm_num, Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl ?_)))))⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 5) * (star π) ^ (2 * (6 - 5)) * χ ^ (2 * 2) * (star χ) ^ (2 * (2 - 2))
        = ((((p : ℤ) ^ 2 : ℤ)) : GaussianInt) * ((⟨A, B⟩ : GaussianInt) ^ 8 * (⟨C, D⟩ : GaussianInt) ^ 4) := by
      have h1 : π ^ (2 * 5) * (star π) ^ (2 * (6 - 5)) * χ ^ (2 * 2) * (star χ) ^ (2 * (2 - 2))
          = (π * star π) ^ 2 * π ^ 8 * χ ^ 4 := by ring
      rw [h1]
      rw [show (π * star π) ^ 2 = (((p : ℤ) : GaussianInt)) ^ 2 from by rw [hsplitπ]]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = 1, (j,k) = (6,0): class 9, ε = 1
    refine ⟨1, by norm_num, Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr ?_))))))))⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 6) * (star π) ^ (2 * (6 - 6)) * χ ^ (2 * 0) * (star χ) ^ (2 * (2 - 0))
        = ((⟨A, B⟩ : GaussianInt) ^ 12 * (star (⟨C, D⟩ : GaussianInt)) ^ 4) := by
      have h1 : π ^ (2 * 6) * (star π) ^ (2 * (6 - 6)) * χ ^ (2 * 0) * (star χ) ^ (2 * (2 - 0))
          = π ^ 12 * (star χ) ^ 4 := by ring
      rw [h1]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = 1, (j,k) = (6,1): class 7, ε = 1
    refine ⟨1, by norm_num, Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl ?_)))))))⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 6) * (star π) ^ (2 * (6 - 6)) * χ ^ (2 * 1) * (star χ) ^ (2 * (2 - 1))
        = ((((q : ℤ) ^ 2 : ℤ)) : GaussianInt) * ((⟨A, B⟩ : GaussianInt) ^ 12) := by
      have h1 : π ^ (2 * 6) * (star π) ^ (2 * (6 - 6)) * χ ^ (2 * 1) * (star χ) ^ (2 * (2 - 1))
          = π ^ 12 * (χ * star χ) ^ 2 := by ring
      rw [h1]
      rw [show (χ * star χ) ^ 2 = (((q : ℤ) : GaussianInt)) ^ 2 from by rw [hsplitχ]]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = 1, (j,k) = (6,2): class 8, ε = 1
    refine ⟨1, by norm_num, Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl ?_))))))))⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 6) * (star π) ^ (2 * (6 - 6)) * χ ^ (2 * 2) * (star χ) ^ (2 * (2 - 2))
        = ((⟨A, B⟩ : GaussianInt) ^ 12 * (⟨C, D⟩ : GaussianInt) ^ 4) := by
      have h1 : π ^ (2 * 6) * (star π) ^ (2 * (6 - 6)) * χ ^ (2 * 2) * (star χ) ^ (2 * (2 - 2))
          = π ^ 12 * χ ^ 4 := by ring
      rw [h1]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = -1, (j,k) = (0,0): class 8, ε = 1
    refine ⟨1, by norm_num, Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl ?_))))))))⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 0) * (star π) ^ (2 * (6 - 0)) * χ ^ (2 * 0) * (star χ) ^ (2 * (2 - 0))
        = star ((⟨A, B⟩ : GaussianInt) ^ 12 * (⟨C, D⟩ : GaussianInt) ^ 4) := by
      have h1 : π ^ (2 * 0) * (star π) ^ (2 * (6 - 0)) * χ ^ (2 * 0) * (star χ) ^ (2 * (2 - 0))
          = (star π) ^ 12 * (star χ) ^ 4 := by ring
      rw [h1]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = -1, (j,k) = (0,1): class 7, ε = 1
    refine ⟨1, by norm_num, Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl ?_)))))))⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 0) * (star π) ^ (2 * (6 - 0)) * χ ^ (2 * 1) * (star χ) ^ (2 * (2 - 1))
        = ((((q : ℤ) ^ 2 : ℤ)) : GaussianInt) * star ((⟨A, B⟩ : GaussianInt) ^ 12) := by
      have h1 : π ^ (2 * 0) * (star π) ^ (2 * (6 - 0)) * χ ^ (2 * 1) * (star χ) ^ (2 * (2 - 1))
          = (star π) ^ 12 * (χ * star χ) ^ 2 := by ring
      rw [h1]
      rw [show (χ * star χ) ^ 2 = (((q : ℤ) : GaussianInt)) ^ 2 from by rw [hsplitχ]]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = -1, (j,k) = (0,2): class 9, ε = 1
    refine ⟨1, by norm_num, Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr ?_))))))))⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 0) * (star π) ^ (2 * (6 - 0)) * χ ^ (2 * 2) * (star χ) ^ (2 * (2 - 2))
        = star ((⟨A, B⟩ : GaussianInt) ^ 12 * (star (⟨C, D⟩ : GaussianInt)) ^ 4) := by
      have h1 : π ^ (2 * 0) * (star π) ^ (2 * (6 - 0)) * χ ^ (2 * 2) * (star χ) ^ (2 * (2 - 2))
          = (star π) ^ 12 * χ ^ 4 := by ring
      rw [h1]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = -1, (j,k) = (1,0): class 5, ε = 1
    refine ⟨1, by norm_num, Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl ?_)))))⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 1) * (star π) ^ (2 * (6 - 1)) * χ ^ (2 * 0) * (star χ) ^ (2 * (2 - 0))
        = ((((p : ℤ) ^ 2 : ℤ)) : GaussianInt) * star ((⟨A, B⟩ : GaussianInt) ^ 8 * (⟨C, D⟩ : GaussianInt) ^ 4) := by
      have h1 : π ^ (2 * 1) * (star π) ^ (2 * (6 - 1)) * χ ^ (2 * 0) * (star χ) ^ (2 * (2 - 0))
          = (π * star π) ^ 2 * (star π) ^ 8 * (star χ) ^ 4 := by ring
      rw [h1]
      rw [show (π * star π) ^ 2 = (((p : ℤ) : GaussianInt)) ^ 2 from by rw [hsplitπ]]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = -1, (j,k) = (1,1): class 4, ε = 1
    refine ⟨1, by norm_num, Or.inr (Or.inr (Or.inr (Or.inr (Or.inl ?_))))⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 1) * (star π) ^ (2 * (6 - 1)) * χ ^ (2 * 1) * (star χ) ^ (2 * (2 - 1))
        = ((((p : ℤ) ^ 2 * (q : ℤ) ^ 2 : ℤ)) : GaussianInt) * star ((⟨A, B⟩ : GaussianInt) ^ 8) := by
      have h1 : π ^ (2 * 1) * (star π) ^ (2 * (6 - 1)) * χ ^ (2 * 1) * (star χ) ^ (2 * (2 - 1))
          = (π * star π) ^ 2 * (star π) ^ 8 * (χ * star χ) ^ 2 := by ring
      rw [h1]
      rw [show (π * star π) ^ 2 = (((p : ℤ) : GaussianInt)) ^ 2 from by rw [hsplitπ]]
      rw [show (χ * star χ) ^ 2 = (((q : ℤ) : GaussianInt)) ^ 2 from by rw [hsplitχ]]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = -1, (j,k) = (1,2): class 6, ε = 1
    refine ⟨1, by norm_num, Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl ?_))))))⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 1) * (star π) ^ (2 * (6 - 1)) * χ ^ (2 * 2) * (star χ) ^ (2 * (2 - 2))
        = ((((p : ℤ) ^ 2 : ℤ)) : GaussianInt) * star ((⟨A, B⟩ : GaussianInt) ^ 8 * (star (⟨C, D⟩ : GaussianInt)) ^ 4) := by
      have h1 : π ^ (2 * 1) * (star π) ^ (2 * (6 - 1)) * χ ^ (2 * 2) * (star χ) ^ (2 * (2 - 2))
          = (π * star π) ^ 2 * (star π) ^ 8 * χ ^ 4 := by ring
      rw [h1]
      rw [show (π * star π) ^ 2 = (((p : ℤ) : GaussianInt)) ^ 2 from by rw [hsplitπ]]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = -1, (j,k) = (2,0): class 2, ε = 1
    refine ⟨1, by norm_num, Or.inr (Or.inr (Or.inl ?_))⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 2) * (star π) ^ (2 * (6 - 2)) * χ ^ (2 * 0) * (star χ) ^ (2 * (2 - 0))
        = ((((p : ℤ) ^ 4 : ℤ)) : GaussianInt) * star ((⟨A, B⟩ : GaussianInt) ^ 4 * (⟨C, D⟩ : GaussianInt) ^ 4) := by
      have h1 : π ^ (2 * 2) * (star π) ^ (2 * (6 - 2)) * χ ^ (2 * 0) * (star χ) ^ (2 * (2 - 0))
          = (π * star π) ^ 4 * (star π) ^ 4 * (star χ) ^ 4 := by ring
      rw [h1]
      rw [show (π * star π) ^ 4 = (((p : ℤ) : GaussianInt)) ^ 4 from by rw [hsplitπ]]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = -1, (j,k) = (2,1): class 1, ε = 1
    refine ⟨1, by norm_num, Or.inr (Or.inl ?_)⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 2) * (star π) ^ (2 * (6 - 2)) * χ ^ (2 * 1) * (star χ) ^ (2 * (2 - 1))
        = ((((p : ℤ) ^ 4 * (q : ℤ) ^ 2 : ℤ)) : GaussianInt) * star ((⟨A, B⟩ : GaussianInt) ^ 4) := by
      have h1 : π ^ (2 * 2) * (star π) ^ (2 * (6 - 2)) * χ ^ (2 * 1) * (star χ) ^ (2 * (2 - 1))
          = (π * star π) ^ 4 * (star π) ^ 4 * (χ * star χ) ^ 2 := by ring
      rw [h1]
      rw [show (π * star π) ^ 4 = (((p : ℤ) : GaussianInt)) ^ 4 from by rw [hsplitπ]]
      rw [show (χ * star χ) ^ 2 = (((q : ℤ) : GaussianInt)) ^ 2 from by rw [hsplitχ]]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = -1, (j,k) = (2,2): class 3, ε = 1
    refine ⟨1, by norm_num, Or.inr (Or.inr (Or.inr (Or.inl ?_)))⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 2) * (star π) ^ (2 * (6 - 2)) * χ ^ (2 * 2) * (star χ) ^ (2 * (2 - 2))
        = ((((p : ℤ) ^ 4 : ℤ)) : GaussianInt) * star ((⟨A, B⟩ : GaussianInt) ^ 4 * (star (⟨C, D⟩ : GaussianInt)) ^ 4) := by
      have h1 : π ^ (2 * 2) * (star π) ^ (2 * (6 - 2)) * χ ^ (2 * 2) * (star χ) ^ (2 * (2 - 2))
          = (π * star π) ^ 4 * (star π) ^ 4 * χ ^ 4 := by ring
      rw [h1]
      rw [show (π * star π) ^ 4 = (((p : ℤ) : GaussianInt)) ^ 4 from by rw [hsplitπ]]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = -1, (j,k) = (3,0): class 0, ε = 1
    refine ⟨1, by norm_num, (Or.inl ?_)⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 3) * (star π) ^ (2 * (6 - 3)) * χ ^ (2 * 0) * (star χ) ^ (2 * (2 - 0))
        = ((((p : ℤ) ^ 6 : ℤ)) : GaussianInt) * star ((⟨C, D⟩ : GaussianInt) ^ 4) := by
      have h1 : π ^ (2 * 3) * (star π) ^ (2 * (6 - 3)) * χ ^ (2 * 0) * (star χ) ^ (2 * (2 - 0))
          = (π * star π) ^ 6 * (star χ) ^ 4 := by ring
      rw [h1]
      rw [show (π * star π) ^ 6 = (((p : ℤ) : GaussianInt)) ^ 6 from by rw [hsplitπ]]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = -1, (j,k) = (3,1): real, impossible
    exfalso
    apply hne
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 3) * (star π) ^ (2 * (6 - 3)) * χ ^ (2 * 1) * (star χ) ^ (2 * (2 - 1))
        = ((((p : ℤ) ^ 6 * (q : ℤ) ^ 2 : ℤ)) : GaussianInt) := by
      have h1 : π ^ (2 * 3) * (star π) ^ (2 * (6 - 3)) * χ ^ (2 * 1) * (star χ) ^ (2 * (2 - 1))
          = (π * star π) ^ 6 * (χ * star χ) ^ 2 := by ring
      rw [h1]
      rw [show (π * star π) ^ 6 = (((p : ℤ) : GaussianInt)) ^ 6 from by rw [hsplitπ]]
      rw [show (χ * star χ) ^ 2 = (((q : ℤ) : GaussianInt)) ^ 2 from by rw [hsplitχ]]
      push_cast
      ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_neg]
    push_cast
    ring
  · -- u² = -1, (j,k) = (3,2): class 0, ε = -1
    refine ⟨-1, by norm_num, (Or.inl ?_)⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 3) * (star π) ^ (2 * (6 - 3)) * χ ^ (2 * 2) * (star χ) ^ (2 * (2 - 2))
        = ((((p : ℤ) ^ 6 : ℤ)) : GaussianInt) * ((⟨C, D⟩ : GaussianInt) ^ 4) := by
      have h1 : π ^ (2 * 3) * (star π) ^ (2 * (6 - 3)) * χ ^ (2 * 2) * (star χ) ^ (2 * (2 - 2))
          = (π * star π) ^ 6 * χ ^ 4 := by ring
      rw [h1]
      rw [show (π * star π) ^ 6 = (((p : ℤ) : GaussianInt)) ^ 6 from by rw [hsplitπ]]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = -1, (j,k) = (4,0): class 3, ε = -1
    refine ⟨-1, by norm_num, Or.inr (Or.inr (Or.inr (Or.inl ?_)))⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 4) * (star π) ^ (2 * (6 - 4)) * χ ^ (2 * 0) * (star χ) ^ (2 * (2 - 0))
        = ((((p : ℤ) ^ 4 : ℤ)) : GaussianInt) * ((⟨A, B⟩ : GaussianInt) ^ 4 * (star (⟨C, D⟩ : GaussianInt)) ^ 4) := by
      have h1 : π ^ (2 * 4) * (star π) ^ (2 * (6 - 4)) * χ ^ (2 * 0) * (star χ) ^ (2 * (2 - 0))
          = (π * star π) ^ 4 * π ^ 4 * (star χ) ^ 4 := by ring
      rw [h1]
      rw [show (π * star π) ^ 4 = (((p : ℤ) : GaussianInt)) ^ 4 from by rw [hsplitπ]]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = -1, (j,k) = (4,1): class 1, ε = -1
    refine ⟨-1, by norm_num, Or.inr (Or.inl ?_)⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 4) * (star π) ^ (2 * (6 - 4)) * χ ^ (2 * 1) * (star χ) ^ (2 * (2 - 1))
        = ((((p : ℤ) ^ 4 * (q : ℤ) ^ 2 : ℤ)) : GaussianInt) * ((⟨A, B⟩ : GaussianInt) ^ 4) := by
      have h1 : π ^ (2 * 4) * (star π) ^ (2 * (6 - 4)) * χ ^ (2 * 1) * (star χ) ^ (2 * (2 - 1))
          = (π * star π) ^ 4 * π ^ 4 * (χ * star χ) ^ 2 := by ring
      rw [h1]
      rw [show (π * star π) ^ 4 = (((p : ℤ) : GaussianInt)) ^ 4 from by rw [hsplitπ]]
      rw [show (χ * star χ) ^ 2 = (((q : ℤ) : GaussianInt)) ^ 2 from by rw [hsplitχ]]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = -1, (j,k) = (4,2): class 2, ε = -1
    refine ⟨-1, by norm_num, Or.inr (Or.inr (Or.inl ?_))⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 4) * (star π) ^ (2 * (6 - 4)) * χ ^ (2 * 2) * (star χ) ^ (2 * (2 - 2))
        = ((((p : ℤ) ^ 4 : ℤ)) : GaussianInt) * ((⟨A, B⟩ : GaussianInt) ^ 4 * (⟨C, D⟩ : GaussianInt) ^ 4) := by
      have h1 : π ^ (2 * 4) * (star π) ^ (2 * (6 - 4)) * χ ^ (2 * 2) * (star χ) ^ (2 * (2 - 2))
          = (π * star π) ^ 4 * π ^ 4 * χ ^ 4 := by ring
      rw [h1]
      rw [show (π * star π) ^ 4 = (((p : ℤ) : GaussianInt)) ^ 4 from by rw [hsplitπ]]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = -1, (j,k) = (5,0): class 6, ε = -1
    refine ⟨-1, by norm_num, Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl ?_))))))⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 5) * (star π) ^ (2 * (6 - 5)) * χ ^ (2 * 0) * (star χ) ^ (2 * (2 - 0))
        = ((((p : ℤ) ^ 2 : ℤ)) : GaussianInt) * ((⟨A, B⟩ : GaussianInt) ^ 8 * (star (⟨C, D⟩ : GaussianInt)) ^ 4) := by
      have h1 : π ^ (2 * 5) * (star π) ^ (2 * (6 - 5)) * χ ^ (2 * 0) * (star χ) ^ (2 * (2 - 0))
          = (π * star π) ^ 2 * π ^ 8 * (star χ) ^ 4 := by ring
      rw [h1]
      rw [show (π * star π) ^ 2 = (((p : ℤ) : GaussianInt)) ^ 2 from by rw [hsplitπ]]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = -1, (j,k) = (5,1): class 4, ε = -1
    refine ⟨-1, by norm_num, Or.inr (Or.inr (Or.inr (Or.inr (Or.inl ?_))))⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 5) * (star π) ^ (2 * (6 - 5)) * χ ^ (2 * 1) * (star χ) ^ (2 * (2 - 1))
        = ((((p : ℤ) ^ 2 * (q : ℤ) ^ 2 : ℤ)) : GaussianInt) * ((⟨A, B⟩ : GaussianInt) ^ 8) := by
      have h1 : π ^ (2 * 5) * (star π) ^ (2 * (6 - 5)) * χ ^ (2 * 1) * (star χ) ^ (2 * (2 - 1))
          = (π * star π) ^ 2 * π ^ 8 * (χ * star χ) ^ 2 := by ring
      rw [h1]
      rw [show (π * star π) ^ 2 = (((p : ℤ) : GaussianInt)) ^ 2 from by rw [hsplitπ]]
      rw [show (χ * star χ) ^ 2 = (((q : ℤ) : GaussianInt)) ^ 2 from by rw [hsplitχ]]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = -1, (j,k) = (5,2): class 5, ε = -1
    refine ⟨-1, by norm_num, Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl ?_)))))⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 5) * (star π) ^ (2 * (6 - 5)) * χ ^ (2 * 2) * (star χ) ^ (2 * (2 - 2))
        = ((((p : ℤ) ^ 2 : ℤ)) : GaussianInt) * ((⟨A, B⟩ : GaussianInt) ^ 8 * (⟨C, D⟩ : GaussianInt) ^ 4) := by
      have h1 : π ^ (2 * 5) * (star π) ^ (2 * (6 - 5)) * χ ^ (2 * 2) * (star χ) ^ (2 * (2 - 2))
          = (π * star π) ^ 2 * π ^ 8 * χ ^ 4 := by ring
      rw [h1]
      rw [show (π * star π) ^ 2 = (((p : ℤ) : GaussianInt)) ^ 2 from by rw [hsplitπ]]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = -1, (j,k) = (6,0): class 9, ε = -1
    refine ⟨-1, by norm_num, Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr ?_))))))))⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 6) * (star π) ^ (2 * (6 - 6)) * χ ^ (2 * 0) * (star χ) ^ (2 * (2 - 0))
        = ((⟨A, B⟩ : GaussianInt) ^ 12 * (star (⟨C, D⟩ : GaussianInt)) ^ 4) := by
      have h1 : π ^ (2 * 6) * (star π) ^ (2 * (6 - 6)) * χ ^ (2 * 0) * (star χ) ^ (2 * (2 - 0))
          = π ^ 12 * (star χ) ^ 4 := by ring
      rw [h1]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = -1, (j,k) = (6,1): class 7, ε = -1
    refine ⟨-1, by norm_num, Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl ?_)))))))⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 6) * (star π) ^ (2 * (6 - 6)) * χ ^ (2 * 1) * (star χ) ^ (2 * (2 - 1))
        = ((((q : ℤ) ^ 2 : ℤ)) : GaussianInt) * ((⟨A, B⟩ : GaussianInt) ^ 12) := by
      have h1 : π ^ (2 * 6) * (star π) ^ (2 * (6 - 6)) * χ ^ (2 * 1) * (star χ) ^ (2 * (2 - 1))
          = π ^ 12 * (χ * star χ) ^ 2 := by ring
      rw [h1]
      rw [show (χ * star χ) ^ 2 = (((q : ℤ) : GaussianInt)) ^ 2 from by rw [hsplitχ]]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
  · -- u² = -1, (j,k) = (6,2): class 8, ε = -1
    refine ⟨-1, by norm_num, Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl ?_))))))))⟩
    rw [h2xy, hz2, hu2]
    have hfold : π ^ (2 * 6) * (star π) ^ (2 * (6 - 6)) * χ ^ (2 * 2) * (star χ) ^ (2 * (2 - 2))
        = ((⟨A, B⟩ : GaussianInt) ^ 12 * (⟨C, D⟩ : GaussianInt) ^ 4) := by
      have h1 : π ^ (2 * 6) * (star π) ^ (2 * (6 - 6)) * χ ^ (2 * 2) * (star χ) ^ (2 * (2 - 2))
          = π ^ 12 * χ ^ 4 := by ring
      rw [h1]
      try push_cast
      try simp only [star_mul, star_pow, star_star]
      try ring
    rw [hfold]
    simp only [one_mul, neg_one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star, Zsqrtd.im_neg, Zsqrtd.re_neg]
    push_cast
    ring
