/-
The level-8 mixed core for Theorem F: the twin-split system
I₈·X = f·K₁ ∧ R₈·Y = g·K₂ over the five level-≤4 classes.
-/
import Mathlib
import MsqLean.TheoremFInt
import MsqLean.TheoremEGauss

open Zsqrtd

section FCore

variable (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]

private def L0 (p : ℕ) (C D : ℤ) : ℤ := (p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)
private def L1 (p q : ℕ) (A B : ℤ) : ℤ :=
  (p : ℤ) ^ 2 * (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im)
private def L2 (q : ℕ) (A B : ℤ) : ℤ := (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)
private def L3 (p : ℕ) (A B C D : ℤ) : ℤ :=
  (p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)
    + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
private def L4 (p : ℕ) (A B C D : ℤ) : ℤ :=
  (p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)
    - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))

set_option maxHeartbeats 3200000 in
/-- The level-8 mixed core. -/
lemma mixed_pair_core_8
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Kc1 Kc2 f g : ℤ) (hf : f = 1 ∨ f = -1) (hg : g = 1 ∨ g = -1)
    (hc1 : Kc1 = L0 p C D ∨ Kc1 = L1 p q A B ∨ Kc1 = L2 q A B
      ∨ Kc1 = L3 p A B C D ∨ Kc1 = L4 p A B C D)
    (hc2 : Kc2 = L0 p C D ∨ Kc2 = L1 p q A B ∨ Kc2 = L2 q A B
      ∨ Kc2 = L3 p A B C D ∨ Kc2 = L4 p A B C D)
    (hIX : (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) = f * Kc1)
    (hRY : (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) = g * Kc2) :
    False := by
  have hI0 : (((⟨A, B⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero p hpodd A B hpAB
  have hY0 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero q hqodd C D hqCD
  have hR0 : (((⟨A, B⟩ : GaussianInt) ^ 4).re) ≠ 0 := odd_ne_zero (re4_odd' p hpodd A B hpAB)
  have hX0 : (((⟨C, D⟩ : GaussianInt) ^ 4).re) ≠ 0 := odd_ne_zero (re4_odd' q hqodd C D hqCD)
  have hI80 : (((⟨A, B⟩ : GaussianInt) ^ 8).im) ≠ 0 := im8_ne_zero p hpodd A B hpAB
  have hI8c : (((⟨A, B⟩ : GaussianInt) ^ 8).im)
      = 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨A, B⟩ : GaussianInt) ^ 4).im) :=
    im8_eq A B
  have hR8c : (((⟨A, B⟩ : GaussianInt) ^ 8).re)
      = (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 :=
    re8_eq A B
  have hn8 := norm8_coord p A B hpAB
  have hn4q : (((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 + (((⟨C, D⟩ : GaussianInt) ^ 4).im) ^ 2
      = (q : ℤ) ^ 4 := norm4_coord q C D hqCD
  obtain ⟨hpR8, hpI8⟩ := p_not_dvd_re8_im8 p hpodd A B hpAB
  obtain ⟨hpR, hpI⟩ := p_not_dvd_re4_im4 p hpodd A B hpAB
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  have hcancelI8 : ∀ t : ℤ, (((⟨A, B⟩ : GaussianInt) ^ 8).im) * t = 0 → t = 0 :=
    fun t ht => by
      rcases mul_eq_zero.mp ht with h | h
      · exact absurd h hI80
      · exact h
  have hcancelY : ∀ t : ℤ, (((⟨C, D⟩ : GaussianInt) ^ 4).im) * t = 0 → t = 0 :=
    fun t ht => by
      rcases mul_eq_zero.mp ht with h | h
      · exact absurd h hY0
      · exact h
  -- global c2 = L0 kill: R₈ = ±p⁴ forces I₈ = 0
  have hkillc2L0 : Kc2 = L0 p C D → False := by
    intro hcc
    rw [hcc] at hRY
    unfold L0 at hRY
    have hR8 : (((⟨A, B⟩ : GaussianInt) ^ 8).re) = g * (p : ℤ) ^ 4 := by
      have h0 := hcancelY ((((⟨A, B⟩ : GaussianInt) ^ 8).re) - g * (p : ℤ) ^ 4)
        (by linear_combination hRY)
      linarith
    have hgsq : g * g = 1 := by rcases hg with rfl | rfl <;> norm_num
    have hR8sq : (((⟨A, B⟩ : GaussianInt) ^ 8).re) ^ 2 = (p : ℤ) ^ 8 := by
      rw [hR8]; nlinarith [hgsq]
    have : (((⟨A, B⟩ : GaussianInt) ^ 8).im) ^ 2 = 0 := by nlinarith [hn8, hR8sq]
    exact hI80 (by nlinarith [this])
  -- global c1 = L1 kill: 2RX = ±p²q²
  have hkillc1L1 : Kc1 = L1 p q A B → False := by
    intro hcc
    rw [hcc] at hIX
    unfold L1 at hIX
    rw [hI8c] at hIX
    have h0 : (((⟨A, B⟩ : GaussianInt) ^ 4).im)
        * (2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)
          - f * (p : ℤ) ^ 2 * (q : ℤ) ^ 2) = 0 := by
      linear_combination hIX
    rcases mul_eq_zero.mp h0 with h | h
    · exact hI0 h
    · have hoddpq : Odd ((p : ℤ) ^ 2 * (q : ℤ) ^ 2) :=
        ((odd_cast p hpodd).pow).mul ((odd_cast q hqodd).pow)
      obtain ⟨k, hk⟩ := hoddpq
      have hM : 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
          = f * ((p : ℤ) ^ 2 * (q : ℤ) ^ 2) := by linear_combination h
      generalize hMM : (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) = M at hM
      rcases hf with rfl | rfl <;> omega
  -- global c1 = L2 kill: X = ±q², pinch
  have hkillc1L2 : Kc1 = L2 q A B → False := by
    intro hcc
    rw [hcc] at hIX
    unfold L2 at hIX
    have hX : (((⟨C, D⟩ : GaussianInt) ^ 4).re) = f * (q : ℤ) ^ 2 := by
      have h0 := hcancelI8 ((((⟨C, D⟩ : GaussianInt) ^ 4).re) - f * (q : ℤ) ^ 2)
        (by linear_combination hIX)
      linarith
    have hfsq : f * f = 1 := by rcases hf with rfl | rfl <;> norm_num
    have hXsq : (((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 = (q : ℤ) ^ 4 := by
      rw [hX]; nlinarith [hfsq]
    have : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ^ 2 = 0 := by nlinarith [hn4q, hXsq]
    exact hY0 (by nlinarith [this])
  -- main case split
  rcases hc2 with hcc2 | hcc2 | hcc2 | hcc2 | hcc2
  · exact hkillc2L0 hcc2
  all_goals rcases hc1 with hcc1 | hcc1 | hcc1 | hcc1 | hcc1
  all_goals try exact hkillc1L1 hcc1
  all_goals try exact hkillc1L2 hcc1
  all_goals subst hcc1
  all_goals subst hcc2
  · -- c2 = L1, c1 = L0
      unfold L0 at hIX
      unfold L1 at hRY
      rw [hR8c] at hRY hpR8
      rw [hI8c] at hIX
      have hcancelI : ∀ t : ℤ, (((⟨A, B⟩ : GaussianInt) ^ 4).im) * t = 0 → t = 0 := fun t ht => by
        rcases mul_eq_zero.mp ht with h | h
        · exact absurd h hI0
        · exact h
      have hIR8 : IsCoprime (((⟨A, B⟩ : GaussianInt) ^ 4).im) ((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) := by
        have h1' : IsCoprime (((⟨A, B⟩ : GaussianInt) ^ 4).im) (((⟨A, B⟩ : GaussianInt) ^ 4).re) := (coprime_re4_im4 p hpodd A B hpAB).symm
        have h2' : IsCoprime (((⟨A, B⟩ : GaussianInt) ^ 4).im) ((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2) := h1'.pow_right
        have heq : (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 = (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (-(((⟨A, B⟩ : GaussianInt) ^ 4).im)) := by ring
        rw [heq]
        exact h2'.add_mul_left_right (-(((⟨A, B⟩ : GaussianInt) ^ 4).im))
      have hIY : (((⟨A, B⟩ : GaussianInt) ^ 4).im) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) := by
        have hd : (((⟨A, B⟩ : GaussianInt) ^ 4).im) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) :=
          ⟨g * ((p : ℤ) ^ 2 * (q : ℤ) ^ 2), by linear_combination hRY⟩
        exact hIR8.dvd_of_dvd_mul_right hd
      obtain ⟨m, hm⟩ := hIY
      have hii : ((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) * m = g * (p : ℤ) ^ 2 * (q : ℤ) ^ 2 := by
        have h0 := hcancelI (((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) * m - g * (p : ℤ) ^ 2 * (q : ℤ) ^ 2)
          (by rw [hm] at hRY; linear_combination hRY)
        linarith
      have hi : (((⟨C, D⟩ : GaussianInt) ^ 4).re) * (2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) - 0) = f * (p : ℤ) ^ 4 * m := by
        have h0 := hcancelI ((((⟨C, D⟩ : GaussianInt) ^ 4).re) * (2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re)) - f * (p : ℤ) ^ 4 * m)
          (by rw [hm] at hIX; linear_combination hIX)
        linarith
      have hcopP : IsCoprime ((p : ℤ) ^ 2) ((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) :=
        ((hpP.coprime_iff_not_dvd).mpr hpR8).pow_left
      have hp2m : (p : ℤ) ^ 2 ∣ m := by
        have hd : (p : ℤ) ^ 2 ∣ ((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) * m :=
          ⟨g * (q : ℤ) ^ 2, by linear_combination hii⟩
        exact hcopP.dvd_of_dvd_mul_left hd
      have hpY : (p : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) := by
        rw [hm]
        exact Dvd.dvd.mul_left ((dvd_pow_self _ two_ne_zero).trans hp2m) _
      have hpX : (p : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).re) :=
        resid_pX_extract p hpodd (((⟨A, B⟩ : GaussianInt) ^ 4).re) (((⟨C, D⟩ : GaussianInt) ^ 4).re) 0
          (f * (p : ℤ) ^ 4 * m) (dvd_zero _)
          ⟨f * (p : ℤ) ^ 3 * m, by ring⟩
          hpR hi
      have hq4d : (p : ℤ) ^ 2 ∣ (q : ℤ) ^ 4 := by
        rw [← hn4q]
        obtain ⟨x', hx'⟩ := hpX
        obtain ⟨y', hy'⟩ := hpY
        exact ⟨x' ^ 2 + y' ^ 2, by rw [hx', hy']; ring⟩
      have hdq : (p : ℤ) ∣ (q : ℤ) ^ 4 := (dvd_pow_self _ two_ne_zero).trans hq4d
      have hq' : (p : ℤ) ∣ (q : ℤ) := hpP.dvd_of_dvd_pow hdq
      have hnat : p ∣ q := by exact_mod_cast hq'
      exact hpq ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp hnat)
  · -- c2 = L1, c1 = cross
      unfold L3 at hIX
      unfold L1 at hRY
      rw [hI8c] at hIX
      refine resid_cross_p2q2 p q hpodd hqodd hpq A B C D hpAB hqCD
        f g (1) ?_ ?_
      · linear_combination hIX
      · linear_combination hRY
  · -- c2 = L1, c1 = cross
      unfold L4 at hIX
      unfold L1 at hRY
      rw [hI8c] at hIX
      refine resid_cross_p2q2 p q hpodd hqodd hpq A B C D hpAB hqCD
        (-f) g (-1) ?_ ?_
      · linear_combination hIX
      · linear_combination hRY
  · -- c2 = L2, c1 = L0
      obtain ⟨σ, hσ, hYs, hR8s, hX2⟩ := resid_r8_derive p q hpodd hqodd
        A B C D hpAB hqCD g hg (by unfold L2 at hRY; linear_combination hRY)
      unfold L0 at hIX
      rw [hYs] at hIX
      have hX : (((⟨C, D⟩ : GaussianInt) ^ 4).re) = f * σ * (p : ℤ) ^ 4 := by
        have h0 := hcancelI8 ((((⟨C, D⟩ : GaussianInt) ^ 4).re) - f * σ * (p : ℤ) ^ 4)
          (by linear_combination hIX)
        linarith
      have hfsq : f * f = 1 := by rcases hf with rfl | rfl <;> norm_num
      have hσsq : σ * σ = 1 := by rcases hσ with rfl | rfl <;> norm_num
      have hXsq : (((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 = (p : ℤ) ^ 8 := by
        rw [hX]
        linear_combination ((p : ℤ) ^ 8 * σ * σ) * hfsq + (p : ℤ) ^ 8 * hσsq
      exact resid_q4_p8 p q hpq (by linarith [hX2, hXsq])
  · -- c2 = L2, c1 = cross
      obtain ⟨σ, hσ, hYs, hR8s, hX2⟩ := resid_r8_derive p q hpodd hqodd
        A B C D hpAB hqCD g hg (by unfold L2 at hRY; linear_combination hRY)
      unfold L3 at hIX
      rw [hI8c] at hIX
      rw [hI8c] at hYs
      have hcancelI : ∀ t : ℤ, (((⟨A, B⟩ : GaussianInt) ^ 4).im) * t = 0 → t = 0 := fun t ht => by
        rcases mul_eq_zero.mp ht with h | h
        · exact absurd h hI0
        · exact h
      have hi : (((⟨C, D⟩ : GaussianInt) ^ 4).re) * (2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) - (1) * f * (p : ℤ) ^ 2)
          = 2 * f * σ * (p : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 := by
        have h0 := hcancelI ((((⟨C, D⟩ : GaussianInt) ^ 4).re) * (2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) - (1) * f * (p : ℤ) ^ 2)
            - 2 * f * σ * (p : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2)
          (by rw [hYs] at hIX; linear_combination hIX)
        linarith
      have hpX : (p : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).re) :=
        resid_pX_extract p hpodd (((⟨A, B⟩ : GaussianInt) ^ 4).re) (((⟨C, D⟩ : GaussianInt) ^ 4).re) ((1) * f * (p : ℤ) ^ 2)
          (2 * f * σ * (p : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2)
          ⟨(1 : ℤ) * f * (p : ℤ), by ring⟩
          ⟨2 * f * σ * (p : ℤ) * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2, by ring⟩
          hpR hi
      refine resid_p2_2q4 p q hpodd hpq ?_
      obtain ⟨x', hx'⟩ := hpX
      have : (p : ℤ) ^ 2 ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 := ⟨x' ^ 2, by rw [hx']; ring⟩
      have h28 : (p : ℤ) ^ 2 ∣ (p : ℤ) ^ 8 := pow_dvd_pow _ (by norm_num)
      have := dvd_add this h28
      rwa [show (((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 + (p : ℤ) ^ 8 = 2 * (q : ℤ) ^ 4 from by linarith [hX2]] at this
  · -- c2 = L2, c1 = cross
      obtain ⟨σ, hσ, hYs, hR8s, hX2⟩ := resid_r8_derive p q hpodd hqodd
        A B C D hpAB hqCD g hg (by unfold L2 at hRY; linear_combination hRY)
      unfold L4 at hIX
      rw [hI8c] at hIX
      rw [hI8c] at hYs
      have hcancelI : ∀ t : ℤ, (((⟨A, B⟩ : GaussianInt) ^ 4).im) * t = 0 → t = 0 := fun t ht => by
        rcases mul_eq_zero.mp ht with h | h
        · exact absurd h hI0
        · exact h
      have hi : (((⟨C, D⟩ : GaussianInt) ^ 4).re) * (2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) - f * (p : ℤ) ^ 2)
          = -(2 * f * σ * (p : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2) := by
        have h0 := hcancelI ((((⟨C, D⟩ : GaussianInt) ^ 4).re) * (2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) - f * (p : ℤ) ^ 2)
            + 2 * f * σ * (p : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2)
          (by rw [hYs] at hIX; linear_combination hIX)
        linarith
      have hpX : (p : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).re) :=
        resid_pX_extract p hpodd (((⟨A, B⟩ : GaussianInt) ^ 4).re) (((⟨C, D⟩ : GaussianInt) ^ 4).re) (f * (p : ℤ) ^ 2)
          (-(2 * f * σ * (p : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2))
          ⟨f * (p : ℤ), by ring⟩
          ⟨-(2 * f * σ * (p : ℤ) * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2), by ring⟩
          hpR hi
      refine resid_p2_2q4 p q hpodd hpq ?_
      obtain ⟨x', hx'⟩ := hpX
      have : (p : ℤ) ^ 2 ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 := ⟨x' ^ 2, by rw [hx']; ring⟩
      have h28 : (p : ℤ) ^ 2 ∣ (p : ℤ) ^ 8 := pow_dvd_pow _ (by norm_num)
      have := dvd_add this h28
      rwa [show (((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 + (p : ℤ) ^ 8 = 2 * (q : ℤ) ^ 4 from by linarith [hX2]] at this
  · -- c2 = cross, c1 = L0
      unfold L0 at hIX
      unfold L3 at hRY
      rw [hR8c] at hRY hpR8
      rw [hI8c] at hIX
      have hpY : (p : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) := by
        have hd : (p : ℤ) ∣ ((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) :=
          ⟨g * ((p : ℤ) * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (1) * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)))), by
            linear_combination hRY⟩
        rcases hpP.dvd_mul.mp hd with h | h
        · exact absurd h hpR8
        · exact h
      have hpX : (p : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).re) := by
        have hd : (p : ℤ) ∣ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) :=
          ⟨f * ((p : ℤ) ^ 3 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)), by linear_combination hIX⟩
        rcases hpP.dvd_mul.mp hd with h | h
        · rcases hpP.dvd_mul.mp h with h' | h'
          · rcases hpP.dvd_mul.mp h' with h'' | h''
            · exact absurd h'' (by
                intro hd2
                have hle := Int.le_of_dvd (by norm_num) hd2
                have h3 : 3 ≤ p := by have := hp.out.two_le; omega
                have h4 : (3 : ℤ) ≤ (p : ℤ) := by exact_mod_cast h3
                omega)
            · exact absurd h'' hpR
          · exact absurd h' hpI
        · exact h
      have hq4d : (p : ℤ) ^ 2 ∣ (q : ℤ) ^ 4 := by
        rw [← hn4q]
        obtain ⟨x', hx'⟩ := hpX
        obtain ⟨y', hy'⟩ := hpY
        exact ⟨x' ^ 2 + y' ^ 2, by rw [hx', hy']; ring⟩
      have hdq : (p : ℤ) ∣ (q : ℤ) ^ 4 := (dvd_pow_self _ two_ne_zero).trans hq4d
      have hq' : (p : ℤ) ∣ (q : ℤ) := hpP.dvd_of_dvd_pow hdq
      have hnat : p ∣ q := by exact_mod_cast hq'
      exact hpq ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp hnat)
  · -- c2 = cross, c1 = cross
      unfold L3 at hIX hRY
      rw [hI8c] at hIX
      rw [hR8c] at hRY hpR8
      exact resid_cross_product p hpodd (((⟨A, B⟩ : GaussianInt) ^ 4).re) (((⟨A, B⟩ : GaussianInt) ^ 4).im) (((⟨C, D⟩ : GaussianInt) ^ 4).re) (((⟨C, D⟩ : GaussianInt) ^ 4).im)
        hI0 hX0 hY0 hpR hpR8 f g (1) (1)
        (by linear_combination hIX) (by linear_combination hRY)
  · -- c2 = cross, c1 = cross
      unfold L4 at hIX
      unfold L3 at hRY
      rw [hI8c] at hIX
      rw [hR8c] at hRY hpR8
      exact resid_cross_product p hpodd (((⟨A, B⟩ : GaussianInt) ^ 4).re) (((⟨A, B⟩ : GaussianInt) ^ 4).im) (((⟨C, D⟩ : GaussianInt) ^ 4).re) (((⟨C, D⟩ : GaussianInt) ^ 4).im)
        hI0 hX0 hY0 hpR hpR8 (-f) g (-1) (1)
        (by linear_combination hIX) (by linear_combination hRY)
  · -- c2 = cross, c1 = L0
      unfold L0 at hIX
      unfold L4 at hRY
      rw [hR8c] at hRY hpR8
      rw [hI8c] at hIX
      have hpY : (p : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) := by
        have hd : (p : ℤ) ∣ ((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) :=
          ⟨g * ((p : ℤ) * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))), by
            linear_combination hRY⟩
        rcases hpP.dvd_mul.mp hd with h | h
        · exact absurd h hpR8
        · exact h
      have hpX : (p : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).re) := by
        have hd : (p : ℤ) ∣ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) :=
          ⟨f * ((p : ℤ) ^ 3 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)), by linear_combination hIX⟩
        rcases hpP.dvd_mul.mp hd with h | h
        · rcases hpP.dvd_mul.mp h with h' | h'
          · rcases hpP.dvd_mul.mp h' with h'' | h''
            · exact absurd h'' (by
                intro hd2
                have hle := Int.le_of_dvd (by norm_num) hd2
                have h3 : 3 ≤ p := by have := hp.out.two_le; omega
                have h4 : (3 : ℤ) ≤ (p : ℤ) := by exact_mod_cast h3
                omega)
            · exact absurd h'' hpR
          · exact absurd h' hpI
        · exact h
      have hq4d : (p : ℤ) ^ 2 ∣ (q : ℤ) ^ 4 := by
        rw [← hn4q]
        obtain ⟨x', hx'⟩ := hpX
        obtain ⟨y', hy'⟩ := hpY
        exact ⟨x' ^ 2 + y' ^ 2, by rw [hx', hy']; ring⟩
      have hdq : (p : ℤ) ∣ (q : ℤ) ^ 4 := (dvd_pow_self _ two_ne_zero).trans hq4d
      have hq' : (p : ℤ) ∣ (q : ℤ) := hpP.dvd_of_dvd_pow hdq
      have hnat : p ∣ q := by exact_mod_cast hq'
      exact hpq ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp hnat)
  · -- c2 = cross, c1 = cross
      unfold L3 at hIX
      unfold L4 at hRY
      rw [hI8c] at hIX
      rw [hR8c] at hRY hpR8
      exact resid_cross_product p hpodd (((⟨A, B⟩ : GaussianInt) ^ 4).re) (((⟨A, B⟩ : GaussianInt) ^ 4).im) (((⟨C, D⟩ : GaussianInt) ^ 4).re) (((⟨C, D⟩ : GaussianInt) ^ 4).im)
        hI0 hX0 hY0 hpR hpR8 f (-g) (1) (-1)
        (by linear_combination hIX) (by linear_combination hRY)
  · -- c2 = cross, c1 = cross
      unfold L4 at hIX hRY
      rw [hI8c] at hIX
      rw [hR8c] at hRY hpR8
      exact resid_cross_product p hpodd (((⟨A, B⟩ : GaussianInt) ^ 4).re) (((⟨A, B⟩ : GaussianInt) ^ 4).im) (((⟨C, D⟩ : GaussianInt) ^ 4).re) (((⟨C, D⟩ : GaussianInt) ^ 4).im)
        hI0 hX0 hY0 hpR hpR8 (-f) (-g) (-1) (-1)
        (by linear_combination hIX) (by linear_combination hRY)

private def L5 (A B C D : ℤ) : ℤ :=
  (((⟨A, B⟩ : GaussianInt) ^ 8) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im
private def L6 (A B C D : ℤ) : ℤ :=
  (((⟨A, B⟩ : GaussianInt) ^ 8) * (star (⟨C, D⟩ : GaussianInt)) ^ 4).im

private lemma L5_coord (A B C D : ℤ) :
    L5 A B C D = (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)
      + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) := by
  unfold L5
  simp [Zsqrtd.im_mul]
private lemma L6_coord (A B C D : ℤ) :
    L6 A B C D = (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)
      - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) := by
  unfold L6
  simp only [Zsqrtd.im_mul, ← star_pow, Zsqrtd.re_star, Zsqrtd.im_star]
  ring

set_option maxHeartbeats 800000 in
/-- The {L5, L6} pair dispatcher: twin-split into the level-8 core. -/
lemma dispatch_56F
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Ka Kb e1 e2 e3 e4 : ℤ)
    (he1 : e1 = 1 ∨ e1 = -1) (he2 : e2 = 1 ∨ e2 = -1)
    (he3 : e3 = 1 ∨ e3 = -1) (he4 : e4 = 1 ∨ e4 = -1)
    (ha : Ka = L0 p C D ∨ Ka = L1 p q A B ∨ Ka = L2 q A B
      ∨ Ka = L3 p A B C D ∨ Ka = L4 p A B C D)
    (hb : Kb = L0 p C D ∨ Kb = L1 p q A B ∨ Kb = L2 q A B
      ∨ Kb = L3 p A B C D ∨ Kb = L4 p A B C D)
    (hE1 : e3 * L5 A B C D + e4 * L6 A B C D = 2 * e1 * Ka)
    (hE2 : e3 * L5 A B C D - e4 * L6 A B C D = 2 * e2 * Kb) : False := by
  rw [L5_coord, L6_coord] at hE1 hE2
  rcases he3 with rfl | rfl <;> rcases he4 with rfl | rfl
  · -- e3 = e4 = 1: I₈X = e1·Ka, R₈Y = e2·Kb
    exact mixed_pair_core_8 p q hpodd hqodd hpq A B C D hpAB hqCD Ka Kb e1 e2 he1 he2 ha hb
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · -- e3 = 1, e4 = -1: R₈Y = e1·Ka, I₈X = e2·Kb
    exact mixed_pair_core_8 p q hpodd hqodd hpq A B C D hpAB hqCD Kb Ka e2 e1 he2 he1 hb ha
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · -- e3 = -1, e4 = 1: R₈Y = −e1·Ka, I₈X = −e2·Kb
    exact mixed_pair_core_8 p q hpodd hqodd hpq A B C D hpAB hqCD Kb Ka (-e2) (-e1)
      (by rcases he2 with rfl | rfl <;> norm_num)
      (by rcases he1 with rfl | rfl <;> norm_num) hb ha
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · -- e3 = e4 = -1
    exact mixed_pair_core_8 p q hpodd hqodd hpq A B C D hpAB hqCD Ka Kb (-e1) (-e2)
      (by rcases he1 with rfl | rfl <;> norm_num)
      (by rcases he2 with rfl | rfl <;> norm_num) ha hb
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])

end FCore
