/-
**Theorem C, machine-checked, full generality.**
No 3×3 fully magic square of nine distinct perfect squares has center entry
(s·pᵃ)² where p ≡ 1 (mod 4) is prime and s has no prime factor ≡ 1 (mod 4)
— i.e. no center whose root has exactly ONE prime ≡ 1 (mod 4).
-/
import Mathlib
import MsqLean.Reduction
import MsqLean.RepStructure
import MsqLean.Rigid
import MsqLean.CollisionCore

open Zsqrtd

/-- Classification at general rigid part: a Gaussian integer of norm s²·pⁿ
(with s free of primes ≡ 1 mod 4) is u·s·πʲ·(star π)ⁿ⁻ʲ. -/
theorem norm_spow_classify (p : ℕ) [hp : Fact (Nat.Prime p)]
    (π : GaussianInt) (hπ : π.norm = (p : ℤ))
    (s : ℕ) (hs : ∀ q : ℕ, q.Prime → q ∣ s → q % 4 ≠ 1) :
    ∀ n : ℕ, ∀ z : GaussianInt, z.norm = ((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ n →
      ∃ (u : GaussianInt) (j : ℕ), IsUnit u ∧ j ≤ n ∧
        z = u * (s : GaussianInt) * π ^ j * (star π) ^ (n - j) := by
  have hπprime : Prime π := prime_of_norm_prime π (by
    rw [hπ, Int.prime_iff_natAbs_prime]; simpa using hp.out)
  have hsplit : (p : GaussianInt) = π * star π := by
    have := Zsqrtd.norm_eq_mul_conj π
    rw [hπ] at this
    exact_mod_cast this
  intro n
  induction n with
  | zero =>
    intro z hz
    obtain ⟨u, hu, hzeq⟩ := rigid_classify s hs z (by rw [hz]; ring)
    exact ⟨u, 0, hu, le_refl 0, by rw [hzeq]; ring⟩
  | succ n ih =>
    intro z hz
    have hpz : (p : GaussianInt) ∣ z * star z := by
      have h1 : ((z.norm : ℤ) : GaussianInt) = z * star z := by
        exact_mod_cast Zsqrtd.norm_eq_mul_conj z
      rw [hz] at h1
      refine ⟨(((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ n : ℤ), ?_⟩
      rw [← h1]; push_cast; ring
    have hπz : π ∣ z ∨ π ∣ star z := by
      have hπp : π ∣ (p : GaussianInt) := ⟨star π, hsplit⟩
      rcases hπprime.2.2 z (star z) (dvd_trans hπp hpz) with h | h
      · exact Or.inl h
      · exact Or.inr h
    have hpne : (p : ℤ) ≠ 0 := by exact_mod_cast hp.out.ne_zero
    rcases hπz with hcase | hcase
    · obtain ⟨w, rfl⟩ := hcase
      have hw : w.norm = ((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ n := by
        have h1 : π.norm * w.norm = ((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (n + 1) := by
          rw [← Zsqrtd.norm_mul]; exact hz
        rw [hπ] at h1
        have h2 : ((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (n + 1)
            = (p : ℤ) * (((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ n) := by ring
        rw [h2] at h1
        exact mul_left_cancel₀ hpne h1
      obtain ⟨u, j, hu, hj, hzeq⟩ := ih w hw
      exact ⟨u, j + 1, hu, by omega, by
        rw [hzeq]
        have : n + 1 - (j + 1) = n - j := by omega
        rw [this]; ring⟩
    · have hstar : star π ∣ z := by
        have := star_dvd_star hcase
        simpa using this
      obtain ⟨w, rfl⟩ := hstar
      have hw : w.norm = ((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ n := by
        have hstarnorm : (star π).norm = (p : ℤ) := by
          have h : (star π).norm = π.norm := by simp [Zsqrtd.norm]
          rw [h, hπ]
        have h1 : (star π).norm * w.norm = ((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (n + 1) := by
          rw [← Zsqrtd.norm_mul]; exact hz
        rw [hstarnorm] at h1
        have h2 : ((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (n + 1)
            = (p : ℤ) * (((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ n) := by ring
        rw [h2] at h1
        exact mul_left_cancel₀ hpne h1
      obtain ⟨u, j, hu, hj, hzeq⟩ := ih w hw
      by_cases hjn : j = n
      · refine ⟨u, n, hu, by omega, ?_⟩
        rw [hzeq, hjn]
        have h1 : n + 1 - n = 1 := by omega
        have h0 : n - n = 0 := by omega
        rw [h1, h0]; ring
      · refine ⟨u, j, hu, by omega, ?_⟩
        rw [hzeq]
        have h1 : n + 1 - j = (n - j) + 1 := by omega
        rw [h1]; ring

/-- General representation structure: at center root s·pᵃ every nonzero
product 2xy is ± p^(2(a−t)) · (s²·Im π^(4t)) with p dividing neither factor
of the constant. -/
theorem rep_structure_general (p : ℕ) [hp : Fact (Nat.Prime p)] (hp4 : p % 4 = 1)
    (π : GaussianInt) (hπnorm : π.norm = (p : ℤ))
    (s : ℕ) (hs : ∀ q : ℕ, q.Prime → q ∣ s → q % 4 ≠ 1)
    (a : ℕ) (x y : ℤ)
    (hxy : x ^ 2 + y ^ 2 = ((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (2 * a))
    (hne : 2 * x * y ≠ 0) :
    ∃ (t : ℕ) (ε : ℤ), 1 ≤ t ∧ t ≤ a ∧ (ε = 1 ∨ ε = -1) ∧
      ¬ ((p : ℤ) ∣ ((s : ℕ) : ℤ) ^ 2 * (π ^ (4 * t)).im) ∧
      2 * x * y = ε * (p : ℤ) ^ (2 * (a - t)) * (((s : ℕ) : ℤ) ^ 2 * (π ^ (4 * t)).im) := by
  set z : GaussianInt := ⟨x, y⟩ with hzdef
  have hznorm : z.norm = ((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (2 * a) := by
    have h : z.norm = x * x + y * y := by simp [hzdef, Zsqrtd.norm]
    rw [h]; nlinarith [hxy]
  obtain ⟨u, j, hu, hj, hzeq⟩ := norm_spow_classify p π hπnorm s hs (2 * a) z hznorm
  have hsplit : π * star π = ((p : ℤ) : GaussianInt) := by
    have := Zsqrtd.norm_eq_mul_conj π
    rw [hπnorm] at this
    exact this.symm
  have hscast : ((s : GaussianInt)) ^ 2 = ((((s : ℕ) : ℤ) ^ 2 : ℤ) : GaussianInt) := by
    push_cast; ring
  have hz2 : z ^ 2 = u ^ 2 * (((((s : ℕ) : ℤ) ^ 2 : ℤ) : GaussianInt)
      * (π ^ (2 * j) * (star π) ^ (2 * (2 * a - j)))) := by
    rw [hzeq, ← hscast]
    have h1 : 2 * (2 * a - j) = (2 * a - j) + (2 * a - j) := by omega
    rw [h1, pow_add]
    have h2 : 2 * j = j + j := by omega
    rw [h2, pow_add]
    ring
  have h2xy : 2 * x * y = (z ^ 2).im := by
    rw [sq_im, hzdef]
  have hps2 : ¬ ((p : ℤ) ∣ ((s : ℕ) : ℤ) ^ 2) := by
    intro h
    have hpP : Prime (p : ℤ) := by
      rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
    have hpdvd : (p : ℤ) ∣ ((s : ℕ) : ℤ) := hpP.dvd_of_dvd_pow h
    have hnat : p ∣ s := by exact_mod_cast hpdvd
    exact (hs p hp.out hnat) hp4
  have hbr : ∀ t : ℕ, 1 ≤ t → ¬ ((p : ℤ) ∣ ((s : ℕ) : ℤ) ^ 2 * (π ^ (4 * t)).im) := by
    intro t ht hdvd
    have hpP : Prime (p : ℤ) := by
      rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
    rcases hpP.2.2 _ _ hdvd with h | h
    · exact hps2 h
    · have hπeta : π = (⟨π.re, π.im⟩ : GaussianInt) := by ext <;> rfl
      have hsq : π.re ^ 2 + π.im ^ 2 = (p : ℤ) := by
        have hh := hπnorm
        simp [Zsqrtd.norm] at hh
        nlinarith [hh]
      have := im_pow_not_dvd p hp4 π.re π.im hsq (4 * t) (by omega)
      rw [← hπeta] at this
      exact this h
  obtain hu2 | hu2 := gaussian_unit_sq u hu <;>
    rcases Nat.lt_trichotomy j a with hja | hja | hja
  · -- σ = +1, j < a
    refine ⟨a - j, -1, by omega, by omega, Or.inr rfl, hbr _ (by omega), ?_⟩
    have hexp : 2 * (2 * a - j) = 2 * j + 4 * (a - j) := by omega
    have hfold : π ^ (2 * j) * (star π) ^ (2 * (2 * a - j))
        = (((p : ℤ) ^ (2 * (a - (a - j))) : ℤ) : GaussianInt) * star (π ^ (4 * (a - j))) := by
      rw [hexp, pow_add, ← mul_assoc, ← mul_pow, hsplit, ← star_pow]
      have hjj : 2 * (a - (a - j)) = 2 * j := by omega
      rw [hjj]; push_cast; ring
    rw [h2xy, hz2, hfold, hu2]
    have hjj2 : a - (a - j) = j := by omega
    rw [hjj2]
    simp only [one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast,
      Zsqrtd.im_star, Zsqrtd.re_star]
    ring
  · -- σ = +1, j = a
    exfalso
    apply hne
    rw [h2xy, hz2, hu2, hja]
    have hreal : π ^ (2 * a) * (star π) ^ (2 * (2 * a - a))
        = (((p : ℤ) ^ (2 * a) : ℤ) : GaussianInt) := by
      have h1 : 2 * (2 * a - a) = 2 * a := by omega
      rw [h1, ← mul_pow, hsplit]; push_cast; ring
    rw [hreal]
    simp only [one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast]
    ring
  · -- σ = +1, j > a
    refine ⟨j - a, 1, by omega, by omega, Or.inl rfl, hbr _ (by omega), ?_⟩
    have hexp : 2 * j = 2 * (2 * a - j) + 4 * (j - a) := by omega
    have hfold : π ^ (2 * j) * (star π) ^ (2 * (2 * a - j))
        = (((p : ℤ) ^ (2 * (a - (j - a))) : ℤ) : GaussianInt) * π ^ (4 * (j - a)) := by
      rw [hexp, pow_add]
      have hjj : 2 * (a - (j - a)) = 2 * (2 * a - j) := by omega
      rw [hjj, mul_comm (π ^ (2 * (2 * a - j))) (π ^ (4 * (j - a))), mul_assoc,
        ← mul_pow, hsplit]
      push_cast; ring
    rw [h2xy, hz2, hfold, hu2]
    simp only [one_mul, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast, Zsqrtd.im_intCast]
    ring
  · -- σ = −1, j < a
    refine ⟨a - j, 1, by omega, by omega, Or.inl rfl, hbr _ (by omega), ?_⟩
    have hexp : 2 * (2 * a - j) = 2 * j + 4 * (a - j) := by omega
    have hfold : π ^ (2 * j) * (star π) ^ (2 * (2 * a - j))
        = (((p : ℤ) ^ (2 * (a - (a - j))) : ℤ) : GaussianInt) * star (π ^ (4 * (a - j))) := by
      rw [hexp, pow_add, ← mul_assoc, ← mul_pow, hsplit, ← star_pow]
      have hjj : 2 * (a - (a - j)) = 2 * j := by omega
      rw [hjj]; push_cast; ring
    rw [h2xy, hz2, hfold, hu2]
    have hjj2 : a - (a - j) = j := by omega
    rw [hjj2]
    simp only [neg_mul, one_mul, Zsqrtd.im_neg, Zsqrtd.im_mul, Zsqrtd.re_mul,
      Zsqrtd.re_intCast, Zsqrtd.im_intCast, Zsqrtd.im_star, Zsqrtd.re_star]
    ring
  · -- σ = −1, j = a
    exfalso
    apply hne
    rw [h2xy, hz2, hu2, hja]
    have hreal : π ^ (2 * a) * (star π) ^ (2 * (2 * a - a))
        = (((p : ℤ) ^ (2 * a) : ℤ) : GaussianInt) := by
      have h1 : 2 * (2 * a - a) = 2 * a := by omega
      rw [h1, ← mul_pow, hsplit]; push_cast; ring
    rw [hreal]
    simp only [neg_mul, one_mul, Zsqrtd.im_neg, Zsqrtd.im_mul, Zsqrtd.re_mul,
      Zsqrtd.re_intCast, Zsqrtd.im_intCast]
    ring
  · -- σ = −1, j > a
    refine ⟨j - a, -1, by omega, by omega, Or.inr rfl, hbr _ (by omega), ?_⟩
    have hexp : 2 * j = 2 * (2 * a - j) + 4 * (j - a) := by omega
    have hfold : π ^ (2 * j) * (star π) ^ (2 * (2 * a - j))
        = (((p : ℤ) ^ (2 * (a - (j - a))) : ℤ) : GaussianInt) * π ^ (4 * (j - a)) := by
      rw [hexp, pow_add]
      have hjj : 2 * (a - (j - a)) = 2 * (2 * a - j) := by omega
      rw [hjj, mul_comm (π ^ (2 * (2 * a - j))) (π ^ (4 * (j - a))), mul_assoc,
        ← mul_pow, hsplit]
      push_cast; ring
    rw [h2xy, hz2, hfold, hu2]
    simp only [neg_mul, one_mul, Zsqrtd.im_neg, Zsqrtd.im_mul, Zsqrtd.re_mul,
      Zsqrtd.re_intCast, Zsqrtd.im_intCast]
    ring

/-- **Theorem C, machine-checked, full generality.**  No 3×3 fully magic
square of nine perfect squares (distinctness used through the four stated
inequalities) has center entry (s·pᵃ)² where p ≡ 1 (mod 4) is prime and s
has no prime factor ≡ 1 (mod 4) — i.e. no center whose root has exactly one
prime ≡ 1 (mod 4), to any power, times any rigid part. -/
theorem no_magic_square_of_squares_single_prime_center
    (p : ℕ) [Fact (Nat.Prime p)] (hp4 : p % 4 = 1) (a s : ℕ)
    (hs : ∀ q : ℕ, q.Prime → q ∣ s → q % 4 ≠ 1)
    (A B C D E F G H I S : ℤ)
    (sqA : IsSq A) (sqB : IsSq B) (sqC : IsSq C) (sqD : IsSq D) (sqE : IsSq E)
    (sqF : IsSq F) (sqG : IsSq G) (sqH : IsSq H) (sqI : IsSq I)
    (r1 : A + B + C = S) (r2 : D + E + F = S) (r3 : G + H + I = S)
    (c1 : A + D + G = S) (c2 : B + E + H = S) (c3 : C + F + I = S)
    (d1 : A + E + I = S) (d2 : C + E + G = S)
    (hE : E = ((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (2 * a))
    (hAE : A ≠ E) (hCE : C ≠ E) (hAC : A ≠ C) (hHE : H ≠ E) : False := by
  obtain ⟨e, u, v, x1, y1, x2, y2, x3, y3, x4, y4, hEe, hAu, hCv,
    hxy1, hq1, hxy2, hq2, hxy3, hq3, hxy4, hq4⟩ :=
    converse_reduction A B C D E F G H I S sqA sqB sqC sqD sqE sqF sqG sqH sqI
      r1 r2 r3 c1 c2 c3 d1 d2
  have he2 : e ^ 2 = ((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (2 * a) := by omega
  rw [he2] at hxy1 hxy2 hxy3 hxy4
  -- a Gaussian prime over p
  obtain ⟨PA, PB, hAB⟩ := Nat.Prime.sq_add_sq (p := p) (by omega)
  set π : GaussianInt := ⟨(PA : ℤ), (PB : ℤ)⟩ with hπdef
  have hπnorm : π.norm = (p : ℤ) := by
    have h : π.norm = (PA : ℤ) * PA + (PB : ℤ) * PB := by simp [hπdef, Zsqrtd.norm]
    rw [h]; push_cast; nlinarith [hAB]
  have hu0 : u ≠ 0 := by omega
  have hv0 : v ≠ 0 := by omega
  have huv : u ≠ v := by omega
  have huv' : u ≠ -v := by omega
  obtain ⟨t1, ε1, ht1a, ht1b, hε1, hc1', hval1⟩ :=
    rep_structure_general p hp4 π hπnorm s hs a x1 y1 hxy1 (by rw [hq1]; exact hu0)
  obtain ⟨t2, ε2, ht2a, ht2b, hε2, hc2', hval2⟩ :=
    rep_structure_general p hp4 π hπnorm s hs a x2 y2 hxy2 (by rw [hq2]; exact hv0)
  obtain ⟨t3, ε3, ht3a, ht3b, hε3, hc3', hval3⟩ :=
    rep_structure_general p hp4 π hπnorm s hs a x3 y3 hxy3
      (by rw [hq3]; intro h; exact huv' (by linarith))
  obtain ⟨t4, ε4, ht4a, ht4b, hε4, hc4', hval4⟩ :=
    rep_structure_general p hp4 π hπnorm s hs a x4 y4 hxy4
      (by rw [hq4]; intro h; exact huv (by linarith))
  rw [hq1] at hval1; rw [hq2] at hval2; rw [hq3] at hval3; rw [hq4] at hval4
  exact collision_core p a (fun t => ((s : ℕ) : ℤ) ^ 2 * (π ^ (4 * t)).im)
    u v hu0 hv0 huv huv' t1 t2 t3 t4 ε1 ε2 ε3 ε4
    ht1b ht2b ht3b ht4b hε1 hε2 hε3 hε4 hc1' hc2' hc3' hc4'
    hval1 hval2 hval3 hval4

/-- Completeness: centers whose root has NO prime ≡ 1 (mod 4) are impossible
too (the center admits no nontrivial representation at all). -/
theorem no_magic_square_of_squares_rigid_center
    (s : ℕ) (hs : ∀ q : ℕ, q.Prime → q ∣ s → q % 4 ≠ 1)
    (A B C D E F G H I S : ℤ)
    (sqA : IsSq A) (sqB : IsSq B) (sqC : IsSq C) (sqD : IsSq D) (sqE : IsSq E)
    (sqF : IsSq F) (sqG : IsSq G) (sqH : IsSq H) (sqI : IsSq I)
    (r1 : A + B + C = S) (r2 : D + E + F = S) (r3 : G + H + I = S)
    (c1 : A + D + G = S) (c2 : B + E + H = S) (c3 : C + F + I = S)
    (d1 : A + E + I = S) (d2 : C + E + G = S)
    (hE : E = ((s : ℕ) : ℤ) ^ 2) (hAE : A ≠ E) : False := by
  obtain ⟨e, u, v, x1, y1, x2, y2, x3, y3, x4, y4, hEe, hAu, hCv,
    hxy1, hq1, hxy2, hq2, hxy3, hq3, hxy4, hq4⟩ :=
    converse_reduction A B C D E F G H I S sqA sqB sqC sqD sqE sqF sqG sqH sqI
      r1 r2 r3 c1 c2 c3 d1 d2
  have hu0 : u ≠ 0 := by omega
  set z : GaussianInt := ⟨x1, y1⟩ with hzdef
  have hznorm : z.norm = ((s : ℕ) : ℤ) ^ 2 := by
    have h : z.norm = x1 * x1 + y1 * y1 := by simp [hzdef, Zsqrtd.norm]
    rw [h]; nlinarith [hxy1, hEe, hE]
  obtain ⟨w, hw, hzeq⟩ := rigid_classify s hs z hznorm
  apply hu0
  rw [← hq1]
  have h2xy : 2 * x1 * y1 = (z ^ 2).im := by rw [sq_im, hzdef]
  rw [h2xy, hzeq]
  have hcast : ((s : GaussianInt)) ^ 2 = ((((s : ℕ) : ℤ) ^ 2 : ℤ) : GaussianInt) := by
    push_cast; ring
  have hexpand : (w * (s : GaussianInt)) ^ 2
      = w ^ 2 * ((((s : ℕ) : ℤ) ^ 2 : ℤ) : GaussianInt) := by
    rw [← hcast]; ring
  rw [hexpand]
  rcases gaussian_unit_sq w hw with hw2 | hw2 <;> rw [hw2] <;>
    simp only [one_mul, neg_mul, Zsqrtd.im_neg, Zsqrtd.im_intCast, neg_zero]
