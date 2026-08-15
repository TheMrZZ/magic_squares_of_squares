/-
The level-8 mixed core for Theorem F: the twin-split system
I₈·X = f·K₁ ∧ R₈·Y = g·K₂ over the five level-≤4 classes.
-/
import Mathlib
import MsqLean.TheoremFInt
import MsqLean.TheoremEGauss
import MsqLean.TheoremEDispatch

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

set_option maxHeartbeats 1600000 in
/-- The valuation cell: Y = σRI with 2R₈ = 2gσq² and the cross
equation force p² ∥ X and then p⁴ ∣ 5R⁴ — impossible (including
p = 5). -/
lemma deep_val_cell
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (f g e σ : ℤ) (hf : f = 1 ∨ f = -1) (hg : g = 1 ∨ g = -1)
    (he : e = 1 ∨ e = -1) (hσ : σ = 1 ∨ σ = -1)
    (hY : (((⟨C, D⟩ : GaussianInt) ^ 4).im) = σ * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨A, B⟩ : GaussianInt) ^ 4).im)))
    (hIX : 2 * ((2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨A, B⟩ : GaussianInt) ^ 4).im)) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
      = f * ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + e * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)))))
    (hR8 : 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).re) = g * (q : ℤ) ^ 2 * (2 * σ)) : False := by
  have hI0 : (((⟨A, B⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero p hpodd A B hpAB
  have hR0 : (((⟨A, B⟩ : GaussianInt) ^ 4).re) ≠ 0 := odd_ne_zero (re4_odd' p hpodd A B hpAB)
  obtain ⟨hpR, hpI⟩ := p_not_dvd_re4_im4 p hpodd A B hpAB
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  have hpn4 : (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 = (p : ℤ) ^ 4 := norm4_coord p A B hpAB
  have hqn4 : (((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 + (((⟨C, D⟩ : GaussianInt) ^ 4).im) ^ 2 = (q : ℤ) ^ 4 := norm4_coord q C D hqCD
  have hσsq : σ * σ = 1 := by rcases hσ with rfl | rfl <;> norm_num
  have hgsq : g * g = 1 := by rcases hg with rfl | rfl <;> norm_num
  -- (α): X(4R − efp²) = σfp²R²
  have hα : (((⟨C, D⟩ : GaussianInt) ^ 4).re) * (4 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) - e * f * (p : ℤ) ^ 2)
      = σ * f * (p : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 := by
    have h0 : (((⟨A, B⟩ : GaussianInt) ^ 4).im) * ((((⟨C, D⟩ : GaussianInt) ^ 4).re) * (4 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) - e * f * (p : ℤ) ^ 2)
        - σ * f * (p : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2) = 0 := by
      rw [hY] at hIX
      linear_combination hIX
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hI0
    · linarith
  have hp2ndvd : ¬ (p : ℤ) ∣ 4 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) := by
    intro hd
    rcases hpP.dvd_mul.mp hd with h | h
    · have h2 : (p : ℤ) ∣ 2 := hpP.dvd_of_dvd_pow (show (p : ℤ) ∣ 2 ^ 2 by norm_num; exact h)
      have hle := Int.le_of_dvd (by norm_num) h2
      have h3 : 3 ≤ p := by have := hp.out.two_le; omega
      have h4 : (3 : ℤ) ≤ (p : ℤ) := by exact_mod_cast h3
      omega
    · exact hpR h
  have hpX : (p : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).re) := by
    have hd : (p : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).re) * (4 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) - e * f * (p : ℤ) ^ 2) := by
      rw [hα]
      exact ⟨σ * f * (p : ℤ) * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2, by ring⟩
    have hd2 : (p : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).re) * (4 * (((⟨A, B⟩ : GaussianInt) ^ 4).re)) := by
      have : (((⟨C, D⟩ : GaussianInt) ^ 4).re) * (4 * (((⟨A, B⟩ : GaussianInt) ^ 4).re))
          = (((⟨C, D⟩ : GaussianInt) ^ 4).re) * (4 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) - e * f * (p : ℤ) ^ 2)
            + (p : ℤ) * (e * f * (p : ℤ) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) := by ring
      rw [this]
      exact dvd_add hd ⟨e * f * (p : ℤ) * (((⟨C, D⟩ : GaussianInt) ^ 4).re), by ring⟩
    rcases hpP.dvd_mul.mp hd2 with h | h
    · exact h
    · exact absurd h hp2ndvd
  obtain ⟨X1, hX1⟩ := hpX
  have hβ : X1 * (4 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) - e * f * (p : ℤ) ^ 2)
      = σ * f * (p : ℤ) * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 := by
    have hpne : (p : ℤ) ≠ 0 := Int.natCast_ne_zero.mpr hp.out.pos.ne'
    have h0 : (p : ℤ) * (X1 * (4 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) - e * f * (p : ℤ) ^ 2)
        - σ * f * (p : ℤ) * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2) = 0 := by
      rw [hX1] at hα
      linear_combination hα
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hpne
    · linarith
  have hpX1 : (p : ℤ) ∣ X1 := by
    have hd2 : (p : ℤ) ∣ X1 * (4 * (((⟨A, B⟩ : GaussianInt) ^ 4).re)) := by
      have : X1 * (4 * (((⟨A, B⟩ : GaussianInt) ^ 4).re))
          = X1 * (4 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) - e * f * (p : ℤ) ^ 2)
            + (p : ℤ) * (e * f * (p : ℤ) * X1) := by ring
      rw [this]
      refine dvd_add ?_ ⟨e * f * (p : ℤ) * X1, by ring⟩
      rw [hβ]
      exact ⟨σ * f * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2, by ring⟩
    rcases hpP.dvd_mul.mp hd2 with h | h
    · exact h
    · exact absurd h hp2ndvd
  obtain ⟨X2, hX2⟩ := hpX1
  -- (R² − I²)² = q⁴ and the norm relation
  have hR8sq : ((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) ^ 2 = (q : ℤ) ^ 4 := by
    have h1 : (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 = g * σ * (q : ℤ) ^ 2 := by
      have := hR8
      rw [re8_eq] at this
      linarith
    rw [h1]
    linear_combination ((q : ℤ) ^ 4 * σ * σ) * hgsq + (q : ℤ) ^ 4 * hσsq
  have hkey : 5 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 4
      = (p : ℤ) ^ 4 * (X2 ^ 2 + 5 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (p : ℤ) ^ 4) := by
    have hXfull : (((⟨C, D⟩ : GaussianInt) ^ 4).re) = (p : ℤ) ^ 2 * X2 := by rw [hX1, hX2]; ring
    have hYsq : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ^ 2 = (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 := by
      rw [hY]
      linear_combination ((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) * hσsq
    have hXsq : (((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 = (p : ℤ) ^ 4 * X2 ^ 2 := by rw [hXfull]; ring
    have h2 : (p : ℤ) ^ 4 * X2 ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 = (q : ℤ) ^ 4 := by
      linarith [hqn4, hXsq, hYsq]
    have h3 : ((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) ^ 2
        = (p : ℤ) ^ 4 * X2 ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 := by
      linarith [hR8sq, h2]
    linear_combination h3 - ((-4) * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 + (p : ℤ) ^ 4) * hpn4
  have hd5 : (p : ℤ) ∣ 5 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 4 := by
    rw [hkey]
    exact ⟨(p : ℤ) ^ 3 * (X2 ^ 2 + 5 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (p : ℤ) ^ 4), by ring⟩
  rcases hpP.dvd_mul.mp hd5 with h5 | h5
  · -- p ∣ 5 ⇒ p = 5, then 5³ ∣ R⁴ forces 5 ∣ R
    have hple : (p : ℤ) ≤ 5 := Int.le_of_dvd (by norm_num) h5
    have h3 : 3 ≤ p := by have := hp.out.two_le; omega
    have hp5 : p = 5 := by
      have hple' : p ≤ 5 := by exact_mod_cast hple
      have hpn : p ∣ 5 := by
        have : (p : ℤ) ∣ (5 : ℤ) := h5
        exact_mod_cast this
      exact (Nat.prime_dvd_prime_iff_eq hp.out (by norm_num)).mp hpn
    subst hp5
    have h125 : (5 : ℤ) ∣ (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 4 := by
      have heq : (5 : ℤ) * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 4
          = 5 * (5 ^ 3 * (X2 ^ 2 + 5 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - 5 ^ 4)) := by
        push_cast at hkey
        linarith [hkey]
      have : (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 4 = 5 ^ 3 * (X2 ^ 2 + 5 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - 5 ^ 4) := by linarith [heq]
      rw [this]
      exact ⟨5 ^ 2 * (X2 ^ 2 + 5 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - 5 ^ 4), by ring⟩
    have := hpP.dvd_of_dvd_pow h125
    exact hpR (by exact_mod_cast this)
  · exact hpR (hpP.dvd_of_dvd_pow h5)

set_option maxHeartbeats 3200000 in
/-- The coefficient-2 level-8 core: 2·I₈X = f·K₁ ∧ 2·R₈Y = g·K₂. -/
lemma mixed_pair_core_8_two
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Kc1 Kc2 f g : ℤ) (hf : f = 1 ∨ f = -1) (hg : g = 1 ∨ g = -1)
    (hc1 : Kc1 = L0 p C D ∨ Kc1 = L1 p q A B ∨ Kc1 = L2 q A B
      ∨ Kc1 = L3 p A B C D ∨ Kc1 = L4 p A B C D)
    (hc2 : Kc2 = L0 p C D ∨ Kc2 = L1 p q A B ∨ Kc2 = L2 q A B
      ∨ Kc2 = L3 p A B C D ∨ Kc2 = L4 p A B C D)
    (hIX : 2 * ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) = f * Kc1)
    (hRY : 2 * ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) = g * Kc2) :
    False := by
  have hI0 : (((⟨A, B⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero p hpodd A B hpAB
  have hY0 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero q hqodd C D hqCD
  have hI80 : (((⟨A, B⟩ : GaussianInt) ^ 8).im) ≠ 0 := im8_ne_zero p hpodd A B hpAB
  have hI8c := im8_eq A B
  have hR8c := re8_eq A B
  have hn8 := norm8_coord p A B hpAB
  have hn4q : (((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 + (((⟨C, D⟩ : GaussianInt) ^ 4).im) ^ 2 = (q : ℤ) ^ 4 := norm4_coord q C D hqCD
  obtain ⟨hpR8, hpI8⟩ := p_not_dvd_re8_im8 p hpodd A B hpAB
  obtain ⟨hpR, hpI⟩ := p_not_dvd_re4_im4 p hpodd A B hpAB
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  -- c2 = L0 kill: 2R₈ = ±p⁴ (even = odd)
  have hkc2L0 : Kc2 = L0 p C D → False := by
    intro hcc
    rw [hcc] at hRY
    unfold L0 at hRY
    have h0 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) * (2 * (((⟨A, B⟩ : GaussianInt) ^ 8).re) - g * (p : ℤ) ^ 4) = 0 := by linear_combination hRY
    rcases mul_eq_zero.mp h0 with h | h
    · exact hY0 h
    · obtain ⟨k, hk⟩ := (odd_cast p hpodd).pow (n := 4)
      generalize hM : (((⟨A, B⟩ : GaussianInt) ^ 8).re) = M at h
      rcases hg with rfl | rfl <;> omega
  -- c1 = L2 kill: 2X = ±q²
  have hkc1L2 : Kc1 = L2 q A B → False := by
    intro hcc
    rw [hcc] at hIX
    unfold L2 at hIX
    have h0 : (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (2 * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - f * (q : ℤ) ^ 2) = 0 := by linear_combination hIX
    rcases mul_eq_zero.mp h0 with h | h
    · exact hI80 h
    · obtain ⟨k, hk⟩ := (odd_cast q hqodd).pow (n := 2)
      generalize hM : (((⟨C, D⟩ : GaussianInt) ^ 4).re) = M at h
      rcases hf with rfl | rfl <;> omega
  -- c1 = L1 kill: 4RX = ±p²q²
  have hkc1L1 : Kc1 = L1 p q A B → False := by
    intro hcc
    rw [hcc] at hIX
    unfold L1 at hIX
    rw [hI8c] at hIX
    have h0 : (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (4 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) - f * ((p : ℤ) ^ 2 * (q : ℤ) ^ 2)) = 0 := by
      linear_combination hIX
    rcases mul_eq_zero.mp h0 with h | h
    · exact hI0 h
    · have hoddpq : Odd ((p : ℤ) ^ 2 * (q : ℤ) ^ 2) :=
        ((odd_cast p hpodd).pow).mul ((odd_cast q hqodd).pow)
      obtain ⟨k, hk⟩ := hoddpq
      generalize hM : (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) = M at h
      rcases hf with rfl | rfl <;> omega
  -- main case split
  rcases hc2 with hcc2 | hcc2 | hcc2 | hcc2 | hcc2
  · exact hkc2L0 hcc2
  all_goals rcases hc1 with hcc1 | hcc1 | hcc1 | hcc1 | hcc1
  all_goals try exact hkc1L1 hcc1
  all_goals try exact hkc1L2 hcc1
  all_goals subst hcc1
  all_goals subst hcc2
  · -- (L0, L1) mod-p double
      unfold L0 at hIX
      unfold L1 at hRY
      have hpX : (p : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).re) := by
        have hd : (p : ℤ) ∣ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) := ⟨f * ((p : ℤ) ^ 3 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)), by linear_combination hIX⟩
        rcases hpP.dvd_mul.mp hd with h | h
        · exact absurd h (by
            intro hd2
            have hle := Int.le_of_dvd (by norm_num) hd2
            have h3 : 3 ≤ p := by have := hp.out.two_le; omega
            have h4 : (3 : ℤ) ≤ (p : ℤ) := by exact_mod_cast h3
            omega)
        · rcases hpP.dvd_mul.mp h with h' | h'
          · exact absurd h' hpI8
          · exact h'
      have hpY : (p : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) := by
        have hd : (p : ℤ) ∣ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) := ⟨g * ((p : ℤ) * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))), by linear_combination hRY⟩
        rcases hpP.dvd_mul.mp hd with h | h
        · exact absurd h (by
            intro hd2
            have hle := Int.le_of_dvd (by norm_num) hd2
            have h3 : 3 ≤ p := by have := hp.out.two_le; omega
            have h4 : (3 : ℤ) ≤ (p : ℤ) := by exact_mod_cast h3
            omega)
        · rcases hpP.dvd_mul.mp h with h' | h'
          · exact absurd h' hpR8
          · exact h'
      have hq4d : (p : ℤ) ^ 2 ∣ (q : ℤ) ^ 4 := by
        rw [← hn4q]
        obtain ⟨x', hx'⟩ := hpX
        obtain ⟨y', hy'⟩ := hpY
        exact ⟨x' ^ 2 + y' ^ 2, by rw [hx', hy']; ring⟩
      have hdq : (p : ℤ) ∣ (q : ℤ) ^ 4 := (dvd_pow_self _ two_ne_zero).trans hq4d
      have hq' : (p : ℤ) ∣ (q : ℤ) := hpP.dvd_of_dvd_pow hdq
      have hnat : p ∣ q := by exact_mod_cast hq'
      exact hpq ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp hnat)
  · -- (L3, L1) mod-p double
      unfold L3 at hIX
      unfold L1 at hRY
      have hpX : (p : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).re) := by
        have hd : (p : ℤ) ∣ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) := ⟨f * ((p : ℤ) * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))), by linear_combination hIX⟩
        rcases hpP.dvd_mul.mp hd with h | h
        · exact absurd h (by
            intro hd2
            have hle := Int.le_of_dvd (by norm_num) hd2
            have h3 : 3 ≤ p := by have := hp.out.two_le; omega
            have h4 : (3 : ℤ) ≤ (p : ℤ) := by exact_mod_cast h3
            omega)
        · rcases hpP.dvd_mul.mp h with h' | h'
          · exact absurd h' hpI8
          · exact h'
      have hpY : (p : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) := by
        have hd : (p : ℤ) ∣ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) := ⟨g * ((p : ℤ) * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))), by linear_combination hRY⟩
        rcases hpP.dvd_mul.mp hd with h | h
        · exact absurd h (by
            intro hd2
            have hle := Int.le_of_dvd (by norm_num) hd2
            have h3 : 3 ≤ p := by have := hp.out.two_le; omega
            have h4 : (3 : ℤ) ≤ (p : ℤ) := by exact_mod_cast h3
            omega)
        · rcases hpP.dvd_mul.mp h with h' | h'
          · exact absurd h' hpR8
          · exact h'
      have hq4d : (p : ℤ) ^ 2 ∣ (q : ℤ) ^ 4 := by
        rw [← hn4q]
        obtain ⟨x', hx'⟩ := hpX
        obtain ⟨y', hy'⟩ := hpY
        exact ⟨x' ^ 2 + y' ^ 2, by rw [hx', hy']; ring⟩
      have hdq : (p : ℤ) ∣ (q : ℤ) ^ 4 := (dvd_pow_self _ two_ne_zero).trans hq4d
      have hq' : (p : ℤ) ∣ (q : ℤ) := hpP.dvd_of_dvd_pow hdq
      have hnat : p ∣ q := by exact_mod_cast hq'
      exact hpq ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp hnat)
  · -- (L4, L1) mod-p double
      unfold L4 at hIX
      unfold L1 at hRY
      have hpX : (p : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).re) := by
        have hd : (p : ℤ) ∣ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) := ⟨f * ((p : ℤ) * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))), by linear_combination hIX⟩
        rcases hpP.dvd_mul.mp hd with h | h
        · exact absurd h (by
            intro hd2
            have hle := Int.le_of_dvd (by norm_num) hd2
            have h3 : 3 ≤ p := by have := hp.out.two_le; omega
            have h4 : (3 : ℤ) ≤ (p : ℤ) := by exact_mod_cast h3
            omega)
        · rcases hpP.dvd_mul.mp h with h' | h'
          · exact absurd h' hpI8
          · exact h'
      have hpY : (p : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) := by
        have hd : (p : ℤ) ∣ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) := ⟨g * ((p : ℤ) * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))), by linear_combination hRY⟩
        rcases hpP.dvd_mul.mp hd with h | h
        · exact absurd h (by
            intro hd2
            have hle := Int.le_of_dvd (by norm_num) hd2
            have h3 : 3 ≤ p := by have := hp.out.two_le; omega
            have h4 : (3 : ℤ) ≤ (p : ℤ) := by exact_mod_cast h3
            omega)
        · rcases hpP.dvd_mul.mp h with h' | h'
          · exact absurd h' hpR8
          · exact h'
      have hq4d : (p : ℤ) ^ 2 ∣ (q : ℤ) ^ 4 := by
        rw [← hn4q]
        obtain ⟨x', hx'⟩ := hpX
        obtain ⟨y', hy'⟩ := hpY
        exact ⟨x' ^ 2 + y' ^ 2, by rw [hx', hy']; ring⟩
      have hdq : (p : ℤ) ∣ (q : ℤ) ^ 4 := (dvd_pow_self _ two_ne_zero).trans hq4d
      have hq' : (p : ℤ) ∣ (q : ℤ) := hpP.dvd_of_dvd_pow hdq
      have hnat : p ∣ q := by exact_mod_cast hq'
      exact hpq ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp hnat)
  · -- (L0, L2): k-enumeration, easy finish
      unfold L0 at hIX
      unfold L2 at hRY
      have hYI8 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ∣ (((⟨A, B⟩ : GaussianInt) ^ 8).im) := by
        have hqP : Prime (q : ℤ) := by
          rw [Int.prime_iff_natAbs_prime]; simpa using hq.out
        have hqY : ¬ (q : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) := (p_not_dvd_re4_im4 q hqodd C D hqCD).2
        have hd : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ∣ (q : ℤ) ^ 2 * (g * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) := ⟨2 * (((⟨A, B⟩ : GaussianInt) ^ 8).re), by linear_combination -hRY⟩
        have hcq : IsCoprime ((q : ℤ) ^ 2) (((⟨C, D⟩ : GaussianInt) ^ 4).im) := ((hqP.coprime_iff_not_dvd).mpr hqY).pow_left
        have h2 := (hcq.symm).dvd_of_dvd_mul_left hd
        rcases hg with rfl | rfl
        · simpa using h2
        · have h' := h2
          rw [show (-1 : ℤ) * (((⟨A, B⟩ : GaussianInt) ^ 8).im) = -((((⟨A, B⟩ : GaussianInt) ^ 8).im)) from by ring] at h'
          exact (dvd_neg).mp h'
      obtain ⟨k, hk⟩ := hYI8
      have hkr : 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).re) = g * (q : ℤ) ^ 2 * k := by
        have h0 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) * (2 * (((⟨A, B⟩ : GaussianInt) ^ 8).re) - g * (q : ℤ) ^ 2 * k) = 0 := by
          rw [hk] at hRY
          linear_combination hRY
        rcases mul_eq_zero.mp h0 with h | h
        · exact absurd h hY0
        · linarith
      -- from hIX with I₈ = Y·k: Y(2kX − fp⁴) = 0
      have hkX : 2 * (k * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) = f * (p : ℤ) ^ 4 := by
        have h0 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) * (2 * (k * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) - f * (p : ℤ) ^ 4) = 0 := by
          rw [hk] at hIX
          linear_combination hIX
        rcases mul_eq_zero.mp h0 with h | h
        · exact absurd h hY0
        · linarith
      obtain ⟨w, hw⟩ := (odd_cast p hpodd).pow (n := 4)
      generalize hM : k * (((⟨C, D⟩ : GaussianInt) ^ 4).re) = M at hkX
      rcases hf with rfl | rfl <;>
        (simp only [one_mul, neg_one_mul] at hkX; omega)
  · -- (L3, L2): the valuation cell
      unfold L3 at hIX
      unfold L2 at hRY
      rw [hI8c] at hIX
      have hqP : Prime (q : ℤ) := by
        rw [Int.prime_iff_natAbs_prime]; simpa using hq.out
      have hqY : ¬ (q : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) := (p_not_dvd_re4_im4 q hqodd C D hqCD).2
      have hYI8 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ∣ (((⟨A, B⟩ : GaussianInt) ^ 8).im) := by
        have hd : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ∣ (q : ℤ) ^ 2 * (g * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) := ⟨2 * (((⟨A, B⟩ : GaussianInt) ^ 8).re), by linear_combination -hRY⟩
        have hcq : IsCoprime ((q : ℤ) ^ 2) (((⟨C, D⟩ : GaussianInt) ^ 4).im) := ((hqP.coprime_iff_not_dvd).mpr hqY).pow_left
        have h2 := (hcq.symm).dvd_of_dvd_mul_left hd
        rcases hg with rfl | rfl
        · simpa using h2
        · have h' := h2
          rw [show (-1 : ℤ) * (((⟨A, B⟩ : GaussianInt) ^ 8).im) = -((((⟨A, B⟩ : GaussianInt) ^ 8).im)) from by ring] at h'
          exact (dvd_neg).mp h'
      have hI82Y : (((⟨A, B⟩ : GaussianInt) ^ 8).im) ∣ 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).im) := by
        have hcop := coprime_re8_im8 p hpodd A B hpAB
        have hd : (((⟨A, B⟩ : GaussianInt) ^ 8).im) ∣ (2 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) * (((⟨A, B⟩ : GaussianInt) ^ 8).re) := ⟨g * (q : ℤ) ^ 2, by linear_combination hRY⟩
        exact (hcop.symm).dvd_of_dvd_mul_right hd
      obtain ⟨k, hk⟩ := hYI8
      obtain ⟨m, hm⟩ := hI82Y
      have hkm : k * m = 2 := by
        have h0 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) * (k * m - 2) = 0 := by
          have h1 : 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).im) = (((⟨C, D⟩ : GaussianInt) ^ 4).im) * k * m := by rw [← hk]; linarith [hm]
          linarith [h1]
        rcases mul_eq_zero.mp h0 with h | h
        · exact absurd h hY0
        · linarith
      have hk0 : k ≠ 0 := by
        rintro rfl
        rw [mul_zero] at hk
        exact hI80 hk
      have hk2 : k ∣ 2 := ⟨m, hkm.symm⟩
      have hkabs : k.natAbs ∣ 2 := by
        have h2 : k.natAbs ∣ (2 : ℤ).natAbs := Int.natAbs_dvd_natAbs.mpr hk2
        simpa using h2
      have hkb : k.natAbs ≤ 2 := Nat.le_of_dvd (by norm_num) hkabs
      have hkr4 : k = 1 ∨ k = -1 ∨ k = 2 ∨ k = -2 := by omega
      have hR8eq : 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).re) = g * (q : ℤ) ^ 2 * k := by
        have h0 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) * (2 * (((⟨A, B⟩ : GaussianInt) ^ 8).re) - g * (q : ℤ) ^ 2 * k) = 0 := by
          rw [hk] at hRY
          linear_combination hRY
        rcases mul_eq_zero.mp h0 with h | h
        · exact absurd h hY0
        · linarith
      rcases hkr4 with rfl | rfl | rfl | rfl
      · -- k = 1: 2R₈ = ±q², even = odd
        obtain ⟨w, hw⟩ := (odd_cast q hqodd).pow (n := 2)
        generalize hM : (((⟨A, B⟩ : GaussianInt) ^ 8).re) = M at hR8eq
        rcases hg with rfl | rfl <;> omega
      · obtain ⟨w, hw⟩ := (odd_cast q hqodd).pow (n := 2)
        generalize hM : (((⟨A, B⟩ : GaussianInt) ^ 8).re) = M at hR8eq
        rcases hg with rfl | rfl <;> omega
      · -- k = 2: I₈ = 2Y i.e. Y = RI; deep valuation route
        have hYRI : (((⟨C, D⟩ : GaussianInt) ^ 4).im) = (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨A, B⟩ : GaussianInt) ^ 4).im) := by
          have h1 : 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).im) * 1 = 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨A, B⟩ : GaussianInt) ^ 4).im)) := by
            have := hk
            rw [hI8c] at this
            linarith [this]
          linarith
        exact deep_val_cell p q hpodd hqodd hpq A B C D hpAB hqCD f g (1) (1) hf hg
          (Or.inl rfl) (Or.inl rfl) (by linarith [hYRI]) (by linarith [hIX]) (by linarith [hR8eq])
      · -- k = -2: Y = −RI
        have hYRI : (((⟨C, D⟩ : GaussianInt) ^ 4).im) = -((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨A, B⟩ : GaussianInt) ^ 4).im)) := by
          have h1 : 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).im) * (-1) = 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨A, B⟩ : GaussianInt) ^ 4).im)) := by
            have := hk
            rw [hI8c] at this
            linarith [this]
          linarith
        exact deep_val_cell p q hpodd hqodd hpq A B C D hpAB hqCD f g (1) (-1) hf hg
          (Or.inl rfl) (Or.inr rfl) (by linarith [hYRI]) (by linarith [hIX]) (by linarith [hR8eq])
  · -- (L4, L2): the valuation cell
      unfold L4 at hIX
      unfold L2 at hRY
      rw [hI8c] at hIX
      have hqP : Prime (q : ℤ) := by
        rw [Int.prime_iff_natAbs_prime]; simpa using hq.out
      have hqY : ¬ (q : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) := (p_not_dvd_re4_im4 q hqodd C D hqCD).2
      have hYI8 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ∣ (((⟨A, B⟩ : GaussianInt) ^ 8).im) := by
        have hd : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ∣ (q : ℤ) ^ 2 * (g * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) := ⟨2 * (((⟨A, B⟩ : GaussianInt) ^ 8).re), by linear_combination -hRY⟩
        have hcq : IsCoprime ((q : ℤ) ^ 2) (((⟨C, D⟩ : GaussianInt) ^ 4).im) := ((hqP.coprime_iff_not_dvd).mpr hqY).pow_left
        have h2 := (hcq.symm).dvd_of_dvd_mul_left hd
        rcases hg with rfl | rfl
        · simpa using h2
        · have h' := h2
          rw [show (-1 : ℤ) * (((⟨A, B⟩ : GaussianInt) ^ 8).im) = -((((⟨A, B⟩ : GaussianInt) ^ 8).im)) from by ring] at h'
          exact (dvd_neg).mp h'
      have hI82Y : (((⟨A, B⟩ : GaussianInt) ^ 8).im) ∣ 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).im) := by
        have hcop := coprime_re8_im8 p hpodd A B hpAB
        have hd : (((⟨A, B⟩ : GaussianInt) ^ 8).im) ∣ (2 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) * (((⟨A, B⟩ : GaussianInt) ^ 8).re) := ⟨g * (q : ℤ) ^ 2, by linear_combination hRY⟩
        exact (hcop.symm).dvd_of_dvd_mul_right hd
      obtain ⟨k, hk⟩ := hYI8
      obtain ⟨m, hm⟩ := hI82Y
      have hkm : k * m = 2 := by
        have h0 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) * (k * m - 2) = 0 := by
          have h1 : 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).im) = (((⟨C, D⟩ : GaussianInt) ^ 4).im) * k * m := by rw [← hk]; linarith [hm]
          linarith [h1]
        rcases mul_eq_zero.mp h0 with h | h
        · exact absurd h hY0
        · linarith
      have hk0 : k ≠ 0 := by
        rintro rfl
        rw [mul_zero] at hk
        exact hI80 hk
      have hk2 : k ∣ 2 := ⟨m, hkm.symm⟩
      have hkabs : k.natAbs ∣ 2 := by
        have h2 : k.natAbs ∣ (2 : ℤ).natAbs := Int.natAbs_dvd_natAbs.mpr hk2
        simpa using h2
      have hkb : k.natAbs ≤ 2 := Nat.le_of_dvd (by norm_num) hkabs
      have hkr4 : k = 1 ∨ k = -1 ∨ k = 2 ∨ k = -2 := by omega
      have hR8eq : 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).re) = g * (q : ℤ) ^ 2 * k := by
        have h0 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) * (2 * (((⟨A, B⟩ : GaussianInt) ^ 8).re) - g * (q : ℤ) ^ 2 * k) = 0 := by
          rw [hk] at hRY
          linear_combination hRY
        rcases mul_eq_zero.mp h0 with h | h
        · exact absurd h hY0
        · linarith
      rcases hkr4 with rfl | rfl | rfl | rfl
      · -- k = 1: 2R₈ = ±q², even = odd
        obtain ⟨w, hw⟩ := (odd_cast q hqodd).pow (n := 2)
        generalize hM : (((⟨A, B⟩ : GaussianInt) ^ 8).re) = M at hR8eq
        rcases hg with rfl | rfl <;> omega
      · obtain ⟨w, hw⟩ := (odd_cast q hqodd).pow (n := 2)
        generalize hM : (((⟨A, B⟩ : GaussianInt) ^ 8).re) = M at hR8eq
        rcases hg with rfl | rfl <;> omega
      · -- k = 2: I₈ = 2Y i.e. Y = RI; deep valuation route
        have hYRI : (((⟨C, D⟩ : GaussianInt) ^ 4).im) = (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨A, B⟩ : GaussianInt) ^ 4).im) := by
          have h1 : 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).im) * 1 = 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨A, B⟩ : GaussianInt) ^ 4).im)) := by
            have := hk
            rw [hI8c] at this
            linarith [this]
          linarith
        exact deep_val_cell p q hpodd hqodd hpq A B C D hpAB hqCD (-f) g (-1) (1)
          (by rcases hf with rfl | rfl <;> norm_num) hg
          (Or.inr rfl) (Or.inl rfl) (by linarith [hYRI]) (by linarith [hIX]) (by linarith [hR8eq])
      · -- k = -2: Y = −RI
        have hYRI : (((⟨C, D⟩ : GaussianInt) ^ 4).im) = -((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨A, B⟩ : GaussianInt) ^ 4).im)) := by
          have h1 : 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).im) * (-1) = 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨A, B⟩ : GaussianInt) ^ 4).im)) := by
            have := hk
            rw [hI8c] at this
            linarith [this]
          linarith
        exact deep_val_cell p q hpodd hqodd hpq A B C D hpAB hqCD (-f) g (-1) (-1)
          (by rcases hf with rfl | rfl <;> norm_num) hg
          (Or.inr rfl) (Or.inr rfl) (by linarith [hYRI]) (by linarith [hIX]) (by linarith [hR8eq])
  
  · -- (L0, L1) mod-p double
      unfold L0 at hIX
      unfold L3 at hRY
      have hpX : (p : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).re) := by
        have hd : (p : ℤ) ∣ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) := ⟨f * ((p : ℤ) ^ 3 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)), by linear_combination hIX⟩
        rcases hpP.dvd_mul.mp hd with h | h
        · exact absurd h (by
            intro hd2
            have hle := Int.le_of_dvd (by norm_num) hd2
            have h3 : 3 ≤ p := by have := hp.out.two_le; omega
            have h4 : (3 : ℤ) ≤ (p : ℤ) := by exact_mod_cast h3
            omega)
        · rcases hpP.dvd_mul.mp h with h' | h'
          · exact absurd h' hpI8
          · exact h'
      have hpY : (p : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) := by
        have hd : (p : ℤ) ∣ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) := ⟨g * ((p : ℤ) * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))), by linear_combination hRY⟩
        rcases hpP.dvd_mul.mp hd with h | h
        · exact absurd h (by
            intro hd2
            have hle := Int.le_of_dvd (by norm_num) hd2
            have h3 : 3 ≤ p := by have := hp.out.two_le; omega
            have h4 : (3 : ℤ) ≤ (p : ℤ) := by exact_mod_cast h3
            omega)
        · rcases hpP.dvd_mul.mp h with h' | h'
          · exact absurd h' hpR8
          · exact h'
      have hq4d : (p : ℤ) ^ 2 ∣ (q : ℤ) ^ 4 := by
        rw [← hn4q]
        obtain ⟨x', hx'⟩ := hpX
        obtain ⟨y', hy'⟩ := hpY
        exact ⟨x' ^ 2 + y' ^ 2, by rw [hx', hy']; ring⟩
      have hdq : (p : ℤ) ∣ (q : ℤ) ^ 4 := (dvd_pow_self _ two_ne_zero).trans hq4d
      have hq' : (p : ℤ) ∣ (q : ℤ) := hpP.dvd_of_dvd_pow hdq
      have hnat : p ∣ q := by exact_mod_cast hq'
      exact hpq ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp hnat)
  · -- (L0, L1) mod-p double
      unfold L3 at hIX
      unfold L3 at hRY
      have hpX : (p : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).re) := by
        have hd : (p : ℤ) ∣ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) := ⟨f * ((p : ℤ) * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))), by linear_combination hIX⟩
        rcases hpP.dvd_mul.mp hd with h | h
        · exact absurd h (by
            intro hd2
            have hle := Int.le_of_dvd (by norm_num) hd2
            have h3 : 3 ≤ p := by have := hp.out.two_le; omega
            have h4 : (3 : ℤ) ≤ (p : ℤ) := by exact_mod_cast h3
            omega)
        · rcases hpP.dvd_mul.mp h with h' | h'
          · exact absurd h' hpI8
          · exact h'
      have hpY : (p : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) := by
        have hd : (p : ℤ) ∣ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) := ⟨g * ((p : ℤ) * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))), by linear_combination hRY⟩
        rcases hpP.dvd_mul.mp hd with h | h
        · exact absurd h (by
            intro hd2
            have hle := Int.le_of_dvd (by norm_num) hd2
            have h3 : 3 ≤ p := by have := hp.out.two_le; omega
            have h4 : (3 : ℤ) ≤ (p : ℤ) := by exact_mod_cast h3
            omega)
        · rcases hpP.dvd_mul.mp h with h' | h'
          · exact absurd h' hpR8
          · exact h'
      have hq4d : (p : ℤ) ^ 2 ∣ (q : ℤ) ^ 4 := by
        rw [← hn4q]
        obtain ⟨x', hx'⟩ := hpX
        obtain ⟨y', hy'⟩ := hpY
        exact ⟨x' ^ 2 + y' ^ 2, by rw [hx', hy']; ring⟩
      have hdq : (p : ℤ) ∣ (q : ℤ) ^ 4 := (dvd_pow_self _ two_ne_zero).trans hq4d
      have hq' : (p : ℤ) ∣ (q : ℤ) := hpP.dvd_of_dvd_pow hdq
      have hnat : p ∣ q := by exact_mod_cast hq'
      exact hpq ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp hnat)
  · -- (L0, L1) mod-p double
      unfold L4 at hIX
      unfold L3 at hRY
      have hpX : (p : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).re) := by
        have hd : (p : ℤ) ∣ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) := ⟨f * ((p : ℤ) * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))), by linear_combination hIX⟩
        rcases hpP.dvd_mul.mp hd with h | h
        · exact absurd h (by
            intro hd2
            have hle := Int.le_of_dvd (by norm_num) hd2
            have h3 : 3 ≤ p := by have := hp.out.two_le; omega
            have h4 : (3 : ℤ) ≤ (p : ℤ) := by exact_mod_cast h3
            omega)
        · rcases hpP.dvd_mul.mp h with h' | h'
          · exact absurd h' hpI8
          · exact h'
      have hpY : (p : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) := by
        have hd : (p : ℤ) ∣ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) := ⟨g * ((p : ℤ) * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))), by linear_combination hRY⟩
        rcases hpP.dvd_mul.mp hd with h | h
        · exact absurd h (by
            intro hd2
            have hle := Int.le_of_dvd (by norm_num) hd2
            have h3 : 3 ≤ p := by have := hp.out.two_le; omega
            have h4 : (3 : ℤ) ≤ (p : ℤ) := by exact_mod_cast h3
            omega)
        · rcases hpP.dvd_mul.mp h with h' | h'
          · exact absurd h' hpR8
          · exact h'
      have hq4d : (p : ℤ) ^ 2 ∣ (q : ℤ) ^ 4 := by
        rw [← hn4q]
        obtain ⟨x', hx'⟩ := hpX
        obtain ⟨y', hy'⟩ := hpY
        exact ⟨x' ^ 2 + y' ^ 2, by rw [hx', hy']; ring⟩
      have hdq : (p : ℤ) ∣ (q : ℤ) ^ 4 := (dvd_pow_self _ two_ne_zero).trans hq4d
      have hq' : (p : ℤ) ∣ (q : ℤ) := hpP.dvd_of_dvd_pow hdq
      have hnat : p ∣ q := by exact_mod_cast hq'
      exact hpq ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp hnat)
  · -- (L0, L1) mod-p double
      unfold L0 at hIX
      unfold L4 at hRY
      have hpX : (p : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).re) := by
        have hd : (p : ℤ) ∣ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) := ⟨f * ((p : ℤ) ^ 3 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)), by linear_combination hIX⟩
        rcases hpP.dvd_mul.mp hd with h | h
        · exact absurd h (by
            intro hd2
            have hle := Int.le_of_dvd (by norm_num) hd2
            have h3 : 3 ≤ p := by have := hp.out.two_le; omega
            have h4 : (3 : ℤ) ≤ (p : ℤ) := by exact_mod_cast h3
            omega)
        · rcases hpP.dvd_mul.mp h with h' | h'
          · exact absurd h' hpI8
          · exact h'
      have hpY : (p : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) := by
        have hd : (p : ℤ) ∣ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) := ⟨g * ((p : ℤ) * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))), by linear_combination hRY⟩
        rcases hpP.dvd_mul.mp hd with h | h
        · exact absurd h (by
            intro hd2
            have hle := Int.le_of_dvd (by norm_num) hd2
            have h3 : 3 ≤ p := by have := hp.out.two_le; omega
            have h4 : (3 : ℤ) ≤ (p : ℤ) := by exact_mod_cast h3
            omega)
        · rcases hpP.dvd_mul.mp h with h' | h'
          · exact absurd h' hpR8
          · exact h'
      have hq4d : (p : ℤ) ^ 2 ∣ (q : ℤ) ^ 4 := by
        rw [← hn4q]
        obtain ⟨x', hx'⟩ := hpX
        obtain ⟨y', hy'⟩ := hpY
        exact ⟨x' ^ 2 + y' ^ 2, by rw [hx', hy']; ring⟩
      have hdq : (p : ℤ) ∣ (q : ℤ) ^ 4 := (dvd_pow_self _ two_ne_zero).trans hq4d
      have hq' : (p : ℤ) ∣ (q : ℤ) := hpP.dvd_of_dvd_pow hdq
      have hnat : p ∣ q := by exact_mod_cast hq'
      exact hpq ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp hnat)
  · -- (L0, L1) mod-p double
      unfold L3 at hIX
      unfold L4 at hRY
      have hpX : (p : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).re) := by
        have hd : (p : ℤ) ∣ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) := ⟨f * ((p : ℤ) * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))), by linear_combination hIX⟩
        rcases hpP.dvd_mul.mp hd with h | h
        · exact absurd h (by
            intro hd2
            have hle := Int.le_of_dvd (by norm_num) hd2
            have h3 : 3 ≤ p := by have := hp.out.two_le; omega
            have h4 : (3 : ℤ) ≤ (p : ℤ) := by exact_mod_cast h3
            omega)
        · rcases hpP.dvd_mul.mp h with h' | h'
          · exact absurd h' hpI8
          · exact h'
      have hpY : (p : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) := by
        have hd : (p : ℤ) ∣ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) := ⟨g * ((p : ℤ) * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))), by linear_combination hRY⟩
        rcases hpP.dvd_mul.mp hd with h | h
        · exact absurd h (by
            intro hd2
            have hle := Int.le_of_dvd (by norm_num) hd2
            have h3 : 3 ≤ p := by have := hp.out.two_le; omega
            have h4 : (3 : ℤ) ≤ (p : ℤ) := by exact_mod_cast h3
            omega)
        · rcases hpP.dvd_mul.mp h with h' | h'
          · exact absurd h' hpR8
          · exact h'
      have hq4d : (p : ℤ) ^ 2 ∣ (q : ℤ) ^ 4 := by
        rw [← hn4q]
        obtain ⟨x', hx'⟩ := hpX
        obtain ⟨y', hy'⟩ := hpY
        exact ⟨x' ^ 2 + y' ^ 2, by rw [hx', hy']; ring⟩
      have hdq : (p : ℤ) ∣ (q : ℤ) ^ 4 := (dvd_pow_self _ two_ne_zero).trans hq4d
      have hq' : (p : ℤ) ∣ (q : ℤ) := hpP.dvd_of_dvd_pow hdq
      have hnat : p ∣ q := by exact_mod_cast hq'
      exact hpq ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp hnat)
  · -- (L0, L1) mod-p double
      unfold L4 at hIX
      unfold L4 at hRY
      have hpX : (p : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).re) := by
        have hd : (p : ℤ) ∣ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) := ⟨f * ((p : ℤ) * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))), by linear_combination hIX⟩
        rcases hpP.dvd_mul.mp hd with h | h
        · exact absurd h (by
            intro hd2
            have hle := Int.le_of_dvd (by norm_num) hd2
            have h3 : 3 ≤ p := by have := hp.out.two_le; omega
            have h4 : (3 : ℤ) ≤ (p : ℤ) := by exact_mod_cast h3
            omega)
        · rcases hpP.dvd_mul.mp h with h' | h'
          · exact absurd h' hpI8
          · exact h'
      have hpY : (p : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) := by
        have hd : (p : ℤ) ∣ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) := ⟨g * ((p : ℤ) * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))), by linear_combination hRY⟩
        rcases hpP.dvd_mul.mp hd with h | h
        · exact absurd h (by
            intro hd2
            have hle := Int.le_of_dvd (by norm_num) hd2
            have h3 : 3 ≤ p := by have := hp.out.two_le; omega
            have h4 : (3 : ℤ) ≤ (p : ℤ) := by exact_mod_cast h3
            omega)
        · rcases hpP.dvd_mul.mp h with h' | h'
          · exact absurd h' hpR8
          · exact h'
      have hq4d : (p : ℤ) ^ 2 ∣ (q : ℤ) ^ 4 := by
        rw [← hn4q]
        obtain ⟨x', hx'⟩ := hpX
        obtain ⟨y', hy'⟩ := hpY
        exact ⟨x' ^ 2 + y' ^ 2, by rw [hx', hy']; ring⟩
      have hdq : (p : ℤ) ∣ (q : ℤ) ^ 4 := (dvd_pow_self _ two_ne_zero).trans hq4d
      have hq' : (p : ℤ) ∣ (q : ℤ) := hpP.dvd_of_dvd_pow hdq
      have hnat : p ∣ q := by exact_mod_cast hq'
      exact hpq ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp hnat)

set_option maxHeartbeats 800000 in
/-- The {L5, L6} pair on the (a, b) side: sum/difference turns the
system into the coefficient-2 level-8 core. -/
lemma dispatch_ab56F
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Ka Kb Kc Kd e1 e2 e3 e4 : ℤ)
    (he1 : e1 = 1 ∨ e1 = -1) (he2 : e2 = 1 ∨ e2 = -1)
    (he3 : e3 = 1 ∨ e3 = -1) (he4 : e4 = 1 ∨ e4 = -1)
    (hab : (Ka = L5 A B C D ∧ Kb = L6 A B C D) ∨ (Ka = L6 A B C D ∧ Kb = L5 A B C D))
    (hc : Kc = L0 p C D ∨ Kc = L1 p q A B ∨ Kc = L2 q A B
      ∨ Kc = L3 p A B C D ∨ Kc = L4 p A B C D)
    (hd : Kd = L0 p C D ∨ Kd = L1 p q A B ∨ Kd = L2 q A B
      ∨ Kd = L3 p A B C D ∨ Kd = L4 p A B C D)
    (hE1 : e3 * Kc + e4 * Kd = 2 * e1 * Ka)
    (hE2 : e3 * Kc - e4 * Kd = 2 * e2 * Kb) : False := by
  -- sum: e3·Kc = e1·Ka + e2·Kb ; diff: e4·Kd = e1·Ka − e2·Kb
  rcases hab with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ <;>
    simp only [L5_coord, L6_coord] at hE1 hE2 <;>
    rcases he1 with rfl | rfl <;> rcases he2 with rfl | rfl
  -- (a,b) = (L5,L6):
  -- e1=e2: Ka+Kb collapses to 2·I₈X, Ka−Kb to 2·R₈Y (up to sign)
  · exact mixed_pair_core_8_two p q hpodd hqodd hpq A B C D hpAB hqCD Kc Kd e3 e4 he3 he4 hc hd
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · exact mixed_pair_core_8_two p q hpodd hqodd hpq A B C D hpAB hqCD Kd Kc e4 e3 he4 he3 hd hc
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · exact mixed_pair_core_8_two p q hpodd hqodd hpq A B C D hpAB hqCD Kd Kc (-e4) (-e3)
      (by rcases he4 with rfl | rfl <;> norm_num)
      (by rcases he3 with rfl | rfl <;> norm_num) hd hc
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · exact mixed_pair_core_8_two p q hpodd hqodd hpq A B C D hpAB hqCD Kc Kd (-e3) (-e4)
      (by rcases he3 with rfl | rfl <;> norm_num)
      (by rcases he4 with rfl | rfl <;> norm_num) hc hd
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  -- (a,b) = (L6,L5): mirrored
  · exact mixed_pair_core_8_two p q hpodd hqodd hpq A B C D hpAB hqCD Kc Kd e3 (-e4) he3
      (by rcases he4 with rfl | rfl <;> norm_num) hc hd
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · exact mixed_pair_core_8_two p q hpodd hqodd hpq A B C D hpAB hqCD Kd Kc e4 (-e3) he4
      (by rcases he3 with rfl | rfl <;> norm_num) hd hc
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · exact mixed_pair_core_8_two p q hpodd hqodd hpq A B C D hpAB hqCD Kd Kc (-e4) e3
      (by rcases he4 with rfl | rfl <;> norm_num) he3 hd hc
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · exact mixed_pair_core_8_two p q hpodd hqodd hpq A B C D hpAB hqCD Kc Kd (-e3) e4
      (by rcases he3 with rfl | rfl <;> norm_num) he4 hc hd
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])


/-- E-reuse: when all four classes avoid L2 they share a factor p²;
cancelling it reproduces exactly the s·p·q assignment system, which
Theorem E's router kills. -/
lemma dispatch_lowE
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Ka Kb Kc Kd e1 e2 e3 e4 : ℤ)
    (he1 : e1 = 1 ∨ e1 = -1) (he2 : e2 = 1 ∨ e2 = -1)
    (he3 : e3 = 1 ∨ e3 = -1) (he4 : e4 = 1 ∨ e4 = -1)
    (ha : Ka = L0 p C D ∨ Ka = L1 p q A B ∨ Ka = L3 p A B C D ∨ Ka = L4 p A B C D)
    (hb : Kb = L0 p C D ∨ Kb = L1 p q A B ∨ Kb = L3 p A B C D ∨ Kb = L4 p A B C D)
    (hc : Kc = L0 p C D ∨ Kc = L1 p q A B ∨ Kc = L3 p A B C D ∨ Kc = L4 p A B C D)
    (hd : Kd = L0 p C D ∨ Kd = L1 p q A B ∨ Kd = L3 p A B C D ∨ Kd = L4 p A B C D)
    (hE1 : e3 * Kc + e4 * Kd = 2 * e1 * Ka)
    (hE2 : e3 * Kc - e4 * Kd = 2 * e2 * Kb) : False := by
  have hp2 : ((p : ℤ) ^ 2) ≠ 0 :=
    pow_ne_zero _ (Int.natCast_ne_zero.mpr hp.out.pos.ne')
  -- peel the common p² off every class
  have peel : ∀ K : ℤ,
      (K = L0 p C D ∨ K = L1 p q A B ∨ K = L3 p A B C D ∨ K = L4 p A B C D) →
      ∃ K' : ℤ, K = (p : ℤ) ^ 2 * K' ∧
        (K' = (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im)
          ∨ K' = (p : ℤ) ^ 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)
          ∨ K' = (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)
            + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)
          ∨ K' = (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)
            - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) := by
    rintro K (rfl | rfl | rfl | rfl)
    · exact ⟨(p : ℤ) ^ 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).im),
        by unfold L0; ring, Or.inr (Or.inl rfl)⟩
    · exact ⟨(q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im),
        by unfold L1; ring, Or.inl rfl⟩
    · exact ⟨_, by unfold L3; ring, Or.inr (Or.inr (Or.inl rfl))⟩
    · exact ⟨_, by unfold L4; ring, Or.inr (Or.inr (Or.inr rfl))⟩
  obtain ⟨Ka', hKa, ha'⟩ := peel Ka ha
  obtain ⟨Kb', hKb, hb'⟩ := peel Kb hb
  obtain ⟨Kc', hKc, hc'⟩ := peel Kc hc
  obtain ⟨Kd', hKd, hd'⟩ := peel Kd hd
  subst hKa hKb hKc hKd
  refine no_assignment_spq_coord p q hpodd hqodd hpq A B C D hpAB hqCD
    Ka' Kb' Kc' Kd' e1 e2 e3 e4 he1 he2 he3 he4 ha' hb' hc' hd' ?_ ?_
  · exact mul_left_cancel₀ hp2 (by linear_combination hE1)
  · exact mul_left_cancel₀ hp2 (by linear_combination hE2)


/-- Extraction-tier corollary: c·Im z cannot carry a full p² when
π ∣ z but π ∤ z̄ and p ∤ c. -/
lemma p2_extract_kill
    (hpodd : p % 2 = 1) (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p)
    (z : GaussianInt) (c m : ℤ) (hc : ¬ (p : ℤ) ∣ c)
    (hz : (⟨A, B⟩ : GaussianInt) ∣ z)
    (hzs : ¬ (⟨A, B⟩ : GaussianInt) ∣ star z)
    (h : c * z.im = (p : ℤ) ^ 2 * m) : False := by
  refine twoterm_p_extract p hpodd A B hpAB (⟨0, m⟩ : GaussianInt) z 0 1 c hc hz hzs ?_
  show (1 : ℤ) * ((p : ℤ) ^ (2 * (0 + 1)) * (⟨0, m⟩ : GaussianInt).im) = c * z.im
  show (1 : ℤ) * ((p : ℤ) ^ (2 * (0 + 1)) * m) = c * z.im
  linear_combination -h

/-- π divides neither conjugate of π⁸·w⁴ for w ∈ {χ, χ̄}. -/
lemma pi_not_dvd_star_p8w4
    (hpodd : p % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :
    ¬ (⟨A, B⟩ : GaussianInt) ∣
      star (((⟨A, B⟩ : GaussianInt) ^ 8) * ((⟨C, D⟩ : GaussianInt) ^ 4)) := by
  intro h
  rw [star_mul, star_pow, star_pow, mul_comm] at h
  have hπprime : Prime (⟨A, B⟩ : GaussianInt) := prime_pi p A B hpAB
  rcases hπprime.dvd_mul.mp h with h1 | h1
  · exact pi_not_dvd_star p hpodd A B hpAB (hπprime.dvd_of_dvd_pow h1)
  · have h2 := hπprime.dvd_of_dvd_pow h1
    have hstar : star (⟨C, D⟩ : GaussianInt) = (⟨C, -D⟩ : GaussianInt) := by
      ext <;> simp
    rw [hstar] at h2
    have hqCD2 : C ^ 2 + (-D) ^ 2 = q := by rw [neg_pow]; ring_nf; linarith [hqCD]
    exact not_dvd_other p q hpq A B C (-D) hpAB hqCD2 h2

/-- p ∤ 2·Im(π⁸χ⁴) up to a factor prime to p: the p²-kill for a lone
level-8 slot against two p²-classes. -/
lemma p2_not_dvd_L5
    (hpodd : p % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (c m : ℤ) (hc : ¬ (p : ℤ) ∣ c)
    (h : c * L5 A B C D = (p : ℤ) ^ 2 * m) : False := by
  refine p2_extract_kill p hpodd A B hpAB
    (((⟨A, B⟩ : GaussianInt) ^ 8) * ((⟨C, D⟩ : GaussianInt) ^ 4)) c m hc
    (Dvd.dvd.mul_right (dvd_pow_self _ (by norm_num)) _)
    (pi_not_dvd_star_p8w4 p q hpodd hpq A B C D hpAB hqCD) ?_
  unfold L5 at h
  exact h

/-- Same for L6 = Im(π⁸χ̄⁴). -/
lemma p2_not_dvd_L6
    (hpodd : p % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (c m : ℤ) (hc : ¬ (p : ℤ) ∣ c)
    (h : c * L6 A B C D = (p : ℤ) ^ 2 * m) : False := by
  have hstar : (star (⟨C, D⟩ : GaussianInt)) = (⟨C, -D⟩ : GaussianInt) := by
    ext <;> simp
  have hqCD2 : C ^ 2 + (-D) ^ 2 = q := by rw [neg_pow]; ring_nf; linarith [hqCD]
  refine p2_extract_kill p hpodd A B hpAB
    (((⟨A, B⟩ : GaussianInt) ^ 8) * ((⟨C, -D⟩ : GaussianInt) ^ 4)) c m hc
    (Dvd.dvd.mul_right (dvd_pow_self _ (by norm_num)) _)
    (pi_not_dvd_star_p8w4 p q hpodd hpq A B C (-D) hpAB hqCD2) ?_
  unfold L6 at h
  rw [hstar] at h
  exact h

/-- p² never divides c·I₈ for p ∤ c: the L2-slot kill. -/
lemma p2_not_dvd_I8
    (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p)
    (c m : ℤ) (hc : ¬ (p : ℤ) ∣ c)
    (h : c * (((⟨A, B⟩ : GaussianInt) ^ 8).im) = (p : ℤ) ^ 2 * m) : False := by
  refine p2_extract_kill p hpodd A B hpAB ((⟨A, B⟩ : GaussianInt) ^ 8) c m hc
    (dvd_pow_self _ (by norm_num))
    (fun hd => pi_not_dvd_star p hpodd A B hpAB
      ((prime_pi p A B hpAB).dvd_of_dvd_pow (by rwa [star_pow] at hd))) h


set_option maxHeartbeats 1600000 in
/-- Cross cell (Kb = L2, Kd = L0), integer core: the system
2R₈Y = f·q²I₈ ∧ 3R₈Y + e·I₈X = g·p⁴Y forces R₈ = ±q² and lands on
the factored quadratic (p⁴ − q²)(p⁴ − 2q²) = 0. -/
lemma cross_L2_L0_int
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (R I X Y f g e : ℤ)
    (hf : f = 1 ∨ f = -1) (hg : g = 1 ∨ g = -1) (he : e = 1 ∨ e = -1)
    (hp4 : R ^ 2 + I ^ 2 = (p : ℤ) ^ 4)
    (hq4 : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 4)
    (hpR8 : ¬ (p : ℤ) ∣ (R ^ 2 - I ^ 2))
    (hqX : ¬ (q : ℤ) ∣ X)
    (hY0 : Y ≠ 0)
    (h1 : 2 * ((R ^ 2 - I ^ 2) * Y) = f * ((q : ℤ) ^ 2 * (2 * R * I)))
    (h2 : 3 * ((R ^ 2 - I ^ 2) * Y) + e * ((2 * R * I) * X) = g * ((p : ℤ) ^ 4 * Y)) :
    False := by
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  have hqP : Prime (q : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hq.out
  have hp0 : ((p : ℤ) ^ 4) ≠ 0 :=
    pow_ne_zero _ (Int.natCast_ne_zero.mpr hp.out.pos.ne')
  have hq20 : ((q : ℤ) ^ 2) ≠ 0 :=
    pow_ne_zero _ (Int.natCast_ne_zero.mpr hq.out.pos.ne')
  have hsub : (q : ℤ) ^ 2 * (2 * R * I) = 2 * f * ((R ^ 2 - I ^ 2) * Y) := by
    rcases hf with rfl | rfl <;> linarith [h1]
  have hkey : Y * ((R ^ 2 - I ^ 2) * (3 * (q : ℤ) ^ 2 + 2 * e * f * X)
      - g * (q : ℤ) ^ 2 * (p : ℤ) ^ 4) = 0 := by
    linear_combination (q : ℤ) ^ 2 * h2 - e * X * hsub
  have hR8k : (R ^ 2 - I ^ 2) * (3 * (q : ℤ) ^ 2 + 2 * e * f * X)
      = g * (q : ℤ) ^ 2 * (p : ℤ) ^ 4 := by
    rcases mul_eq_zero.mp hkey with h | h
    · exact absurd h hY0
    · linarith
  have hcop : IsCoprime ((p : ℤ) ^ 4) (R ^ 2 - I ^ 2) :=
    ((hpP.coprime_iff_not_dvd).mpr hpR8).pow_left
  have hp4k : (p : ℤ) ^ 4 ∣ (3 * (q : ℤ) ^ 2 + 2 * e * f * X) :=
    hcop.dvd_of_dvd_mul_left ⟨g * (q : ℤ) ^ 2, by linear_combination hR8k⟩
  obtain ⟨κ, hκ⟩ := hp4k
  have hcancel : (R ^ 2 - I ^ 2) * κ = g * (q : ℤ) ^ 2 := by
    have h0 : (p : ℤ) ^ 4 * ((R ^ 2 - I ^ 2) * κ - g * (q : ℤ) ^ 2) = 0 := by
      linear_combination hR8k - (R ^ 2 - I ^ 2) * hκ
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hp0
    · linarith
  have hqκ : ¬ (q : ℤ) ∣ κ := by
    intro hd
    have hk : (q : ℤ) ∣ 3 * (q : ℤ) ^ 2 + 2 * e * f * X := hκ ▸ (hd.mul_left _)
    have h2X : (q : ℤ) ∣ 2 * e * f * X := by
      have h3 : (q : ℤ) ∣ 3 * (q : ℤ) ^ 2 := ⟨3 * q, by ring⟩
      exact (Int.dvd_add_right h3).mp hk
    have h2X' : (q : ℤ) ∣ 2 * X := by
      rcases he with rfl | rfl <;> rcases hf with rfl | rfl <;>
        first
          | simpa using h2X
          | simpa using (dvd_neg.mp (by simpa using h2X))
    rcases hqP.dvd_mul.mp h2X' with h2 | hX
    · have hq2 : q ∣ 2 := by exact_mod_cast h2
      have h1' := Nat.le_of_dvd (by norm_num) hq2
      have h2' := hq.out.two_le
      omega
    · exact hqX hX
  have hκgq2 : κ ∣ g * (q : ℤ) ^ 2 := ⟨R ^ 2 - I ^ 2, by linear_combination -hcancel⟩
  have hκq2 : κ ∣ (q : ℤ) ^ 2 := by
    rcases hg with rfl | rfl
    · simpa using hκgq2
    · exact dvd_neg.mp (by simpa using hκgq2)
  have hε : κ = 1 ∨ κ = -1 := by
    obtain ⟨i, hi, hass⟩ := (dvd_prime_pow hqP 2).mp hκq2
    interval_cases i
    · rw [pow_zero] at hass
      exact Int.isUnit_iff.mp (associated_one_iff_isUnit.mp hass)
    · rw [pow_one] at hass
      exact absurd hass.symm.dvd hqκ
    · exact absurd ((dvd_pow_self (q : ℤ) two_ne_zero).trans hass.symm.dvd) hqκ
  have hR8v : R ^ 2 - I ^ 2 = g * κ * (q : ℤ) ^ 2 := by
    rcases hε with rfl | rfl <;> linarith [hcancel]
  have hYRI : Y = g * κ * f * (R * I) := by
    have h0 : (q : ℤ) ^ 2 * (2 * (g * κ) * Y - 2 * f * (R * I)) = 0 := by
      linear_combination h1 - 2 * Y * hR8v
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hq20
    · rcases hg with rfl | rfl <;> rcases hε with rfl | rfl <;>
        rcases hf with rfl | rfl <;> linarith
  have hXv : 2 * e * f * X = κ * (p : ℤ) ^ 4 - 3 * (q : ℤ) ^ 2 := by
    linarith [hκ]
  have hp8 : (R ^ 2 + I ^ 2) ^ 2 = (p : ℤ) ^ 8 := by rw [hp4]; ring
  have hR8sq : (R ^ 2 - I ^ 2) ^ 2 = (q : ℤ) ^ 4 := by
    rw [hR8v]
    rcases hg with rfl | rfl <;> rcases hε with rfl | rfl <;> ring
  have hRI : 4 * (R * I) ^ 2 = (p : ℤ) ^ 8 - (q : ℤ) ^ 4 := by
    linear_combination hp8 - hR8sq
  have hX2 : 4 * X ^ 2 = (κ * (p : ℤ) ^ 4 - 3 * (q : ℤ) ^ 2) ^ 2 := by
    have hsq : (2 * e * f * X) ^ 2 = (κ * (p : ℤ) ^ 4 - 3 * (q : ℤ) ^ 2) ^ 2 := by
      rw [hXv]
    rcases he with rfl | rfl <;> rcases hf with rfl | rfl <;> linear_combination hsq
  have hY2 : 4 * Y ^ 2 = (p : ℤ) ^ 8 - (q : ℤ) ^ 4 := by
    have hsq : Y ^ 2 = (g * κ * f * (R * I)) ^ 2 := by rw [hYRI]
    rcases hg with rfl | rfl <;> rcases hε with rfl | rfl <;>
      rcases hf with rfl | rfl <;> linear_combination 4 * hsq + hRI
  have hmain : (κ * (p : ℤ) ^ 4 - 3 * (q : ℤ) ^ 2) ^ 2 + (p : ℤ) ^ 8 - (q : ℤ) ^ 4
      = 4 * (q : ℤ) ^ 4 := by
    linear_combination 4 * hq4 - hX2 - hY2
  rcases hε with rfl | rfl
  · -- κ = 1: the factored quadratic
    have hprod : ((p : ℤ) ^ 4 - (q : ℤ) ^ 2) * ((p : ℤ) ^ 4 - 2 * (q : ℤ) ^ 2) = 0 := by
      have h2E : 2 * (((p : ℤ) ^ 4 - (q : ℤ) ^ 2) * ((p : ℤ) ^ 4 - 2 * (q : ℤ) ^ 2)) = 0 := by
        linear_combination hmain
      linarith
    rcases mul_eq_zero.mp hprod with h | h
    · -- p⁴ = q²: q = p², impossible for a prime
      have hZ : ((p : ℤ)) ^ 4 = ((q : ℤ)) ^ 2 := by linarith
      have hnat : p ^ 4 = q ^ 2 := by exact_mod_cast hZ
      have hq' : q = p ^ 2 := by
        have h22 : q ^ 2 = (p ^ 2) ^ 2 := by
          rw [show (p ^ 2) ^ 2 = p ^ 4 from by ring]; exact hnat.symm
        exact Nat.pow_left_injective (by norm_num) h22
      have hpd : p ∣ q := by rw [hq']; exact ⟨p, by ring⟩
      rcases (Nat.Prime.eq_one_or_self_of_dvd hq.out p hpd) with h1 | h1
      · exact absurd h1 hp.out.one_lt.ne'
      · subst h1
        have h2q := hq.out.two_le
        nlinarith [hq']
    · -- p⁴ = 2q²: parity
      obtain ⟨w, hw⟩ := (odd_cast p hpodd).pow (n := 4)
      have : (2 : ℤ) * w + 1 = 2 * (q : ℤ) ^ 2 := by linarith
      omega
  · -- κ = −1: everything positive
    have hppos : (0 : ℤ) < (p : ℤ) ^ 8 :=
      pow_pos (by exact_mod_cast hp.out.pos) 8
    have h6 : (0 : ℤ) ≤ 6 * (p : ℤ) ^ 4 * (q : ℤ) ^ 2 := by positivity
    have h4 : (0 : ℤ) ≤ 4 * (q : ℤ) ^ 4 := by positivity
    nlinarith [hmain]


set_option maxHeartbeats 1600000 in
/-- Cross cell (Kb = L2, Kd = L1), integer core: the coprime
cancellation chain Y = IRv, R₈v = fq² forces R = ±q² and q² ∣ v, so
Y² ≥ q⁸ — impossible against X² + Y² = q⁴. -/
lemma cross_L2_L1_int
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (R I X Y f g e : ℤ)
    (hf : f = 1 ∨ f = -1) (hg : g = 1 ∨ g = -1) (he : e = 1 ∨ e = -1)
    (hp4 : R ^ 2 + I ^ 2 = (p : ℤ) ^ 4)
    (hq4 : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 4)
    (hpR : ¬ (p : ℤ) ∣ R)
    (hqX : ¬ (q : ℤ) ∣ X)
    (hY0 : Y ≠ 0) (hI0 : I ≠ 0) (hR0 : R ≠ 0)
    (hcop : IsCoprime R I)
    (h1 : 2 * ((R ^ 2 - I ^ 2) * Y) = f * ((q : ℤ) ^ 2 * (2 * R * I)))
    (h2 : 3 * ((R ^ 2 - I ^ 2) * Y) + e * ((2 * R * I) * X)
      = g * ((p : ℤ) ^ 2 * (q : ℤ) ^ 2 * I)) : False := by
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  have hqP : Prime (q : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hq.out
  have hq20 : ((q : ℤ) ^ 2) ≠ 0 :=
    pow_ne_zero _ (Int.natCast_ne_zero.mpr hq.out.pos.ne')
  have hp20 : ((p : ℤ) ^ 2) ≠ 0 :=
    pow_ne_zero _ (Int.natCast_ne_zero.mpr hp.out.pos.ne')
  have h1' : (R ^ 2 - I ^ 2) * Y = f * (q : ℤ) ^ 2 * (R * I) := by linarith [h1]
  have hIR8 : IsCoprime I (R ^ 2 - I ^ 2) := by
    have h0 : IsCoprime I (R ^ 2) := hcop.symm.pow_right
    have h1'' := h0.add_mul_right_right (-I)
    have heq : R ^ 2 + -I * I = R ^ 2 - I ^ 2 := by ring
    rwa [heq] at h1''
  have hIY : I ∣ Y := by
    refine hIR8.dvd_of_dvd_mul_right ?_
    exact ⟨f * (q : ℤ) ^ 2 * R, by linear_combination h1'⟩
  obtain ⟨w, hw⟩ := hIY
  subst hw
  have hR8w : (R ^ 2 - I ^ 2) * w = f * (q : ℤ) ^ 2 * R := by
    have h0 : I * ((R ^ 2 - I ^ 2) * w - f * (q : ℤ) ^ 2 * R) = 0 := by
      linear_combination h1'
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hI0
    · linarith
  have hRR8 : IsCoprime R (R ^ 2 - I ^ 2) := by
    have h0 : IsCoprime R (I ^ 2) := hcop.pow_right
    have h1'' := (h0.neg_right).add_mul_right_right R
    have heq : -I ^ 2 + R * R = R ^ 2 - I ^ 2 := by ring
    rwa [heq] at h1''
  have hRw : R ∣ w := by
    refine hRR8.dvd_of_dvd_mul_right ?_
    exact ⟨f * (q : ℤ) ^ 2, by linear_combination hR8w⟩
  obtain ⟨v, hv⟩ := hRw
  subst hv
  have hR8v : (R ^ 2 - I ^ 2) * v = f * (q : ℤ) ^ 2 := by
    have h0 : R * ((R ^ 2 - I ^ 2) * v - f * (q : ℤ) ^ 2) = 0 := by
      linear_combination hR8w
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hR0
    · linarith
  have hRk : R * (3 * f * (q : ℤ) ^ 2 + 2 * e * X) = g * (p : ℤ) ^ 2 * (q : ℤ) ^ 2 := by
    have h0 : I * (R * (3 * f * (q : ℤ) ^ 2 + 2 * e * X)
        - g * (p : ℤ) ^ 2 * (q : ℤ) ^ 2) = 0 := by
      linear_combination h2 - 3 * I * R * hR8v
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hI0
    · linarith
  have hqk : ¬ (q : ℤ) ∣ (3 * f * (q : ℤ) ^ 2 + 2 * e * X) := by
    intro hd
    have h2X : (q : ℤ) ∣ 2 * e * X := by
      have h3 : (q : ℤ) ∣ 3 * f * (q : ℤ) ^ 2 := ⟨3 * f * q, by ring⟩
      exact (Int.dvd_add_right h3).mp hd
    have h2X' : (q : ℤ) ∣ 2 * X := by
      rcases he with rfl | rfl
      · simpa using h2X
      · exact dvd_neg.mp (by simpa using h2X)
    rcases hqP.dvd_mul.mp h2X' with hq2 | hX
    · have hq2' : q ∣ 2 := by exact_mod_cast hq2
      have := Nat.le_of_dvd (by norm_num) hq2'
      have := hq.out.two_le
      omega
    · exact hqX hX
  have hq2R : (q : ℤ) ^ 2 ∣ R := by
    have hc : IsCoprime ((q : ℤ) ^ 2) (3 * f * (q : ℤ) ^ 2 + 2 * e * X) :=
      ((hqP.coprime_iff_not_dvd).mpr hqk).pow_left
    exact hc.dvd_of_dvd_mul_right ⟨g * (p : ℤ) ^ 2, by linear_combination hRk⟩
  obtain ⟨ρ, hρdef⟩ := hq2R
  subst hρdef
  have hρk : ρ * (3 * f * (q : ℤ) ^ 2 + 2 * e * X) = g * (p : ℤ) ^ 2 := by
    have h0 : (q : ℤ) ^ 2 * (ρ * (3 * f * (q : ℤ) ^ 2 + 2 * e * X)
        - g * (p : ℤ) ^ 2) = 0 := by
      linear_combination hRk
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hq20
    · linarith
  have hpρ : ¬ (p : ℤ) ∣ ρ := fun hd => hpR (hd.mul_left _)
  have hp2k : (p : ℤ) ^ 2 ∣ (3 * f * (q : ℤ) ^ 2 + 2 * e * X) := by
    have hc : IsCoprime ((p : ℤ) ^ 2) ρ :=
      ((hpP.coprime_iff_not_dvd).mpr hpρ).pow_left
    exact hc.dvd_of_dvd_mul_right ⟨g, by linear_combination hρk⟩
  obtain ⟨κ, hκ⟩ := hp2k
  have hρκ : ρ * κ = g := by
    have h0 : (p : ℤ) ^ 2 * (ρ * κ - g) = 0 := by
      linear_combination hρk - ρ * hκ
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hp20
    · linarith
  have hρunit : ρ = 1 ∨ ρ = -1 := by
    rcases hg with rfl | rfl
    · rcases Int.eq_one_or_neg_one_of_mul_eq_one' hρκ with ⟨h, _⟩ | ⟨h, _⟩
      · exact Or.inl h
      · exact Or.inr h
    · have h' : ρ * (-κ) = 1 := by linear_combination -hρκ
      rcases Int.eq_one_or_neg_one_of_mul_eq_one' h' with ⟨h, _⟩ | ⟨h, _⟩
      · exact Or.inl h
      · exact Or.inr h
  have hqI : ¬ (q : ℤ) ∣ I := by
    intro hd
    have h1'' : (q : ℤ) ∣ ((q : ℤ) ^ 2 * ρ) ^ 2 + I ^ 2 := by
      obtain ⟨i, hi⟩ := hd
      exact ⟨q ^ 3 * ρ ^ 2 + q * i ^ 2, by rw [hi]; ring⟩
    rw [hp4] at h1''
    have hqp : (q : ℤ) ∣ (p : ℤ) := hqP.dvd_of_dvd_pow h1''
    have hqp' : q ∣ p := by exact_mod_cast hqp
    exact hpq ((Nat.prime_dvd_prime_iff_eq hq.out hp.out).mp hqp').symm
  have hq2v : (q : ℤ) ^ 2 ∣ v := by
    have hc : IsCoprime ((q : ℤ) ^ 2) (I ^ 2) :=
      (((hqP.coprime_iff_not_dvd).mpr hqI).pow_left).pow_right
    refine hc.dvd_of_dvd_mul_right ?_
    exact ⟨(q : ℤ) ^ 2 * ρ ^ 2 * v - f, by linear_combination -hR8v⟩
  obtain ⟨u, hu⟩ := hq2v
  subst hu
  have hu0 : u ≠ 0 := by
    rintro rfl
    have h00 : (0 : ℤ) = f * (q : ℤ) ^ 2 := by linear_combination hR8v
    rcases hf with rfl | rfl
    · exact hq20 (by linarith)
    · exact hq20 (by linarith)
  have hρ2 : ρ ^ 2 = 1 := by rcases hρunit with rfl | rfl <;> norm_num
  have hI2 : 1 ≤ I ^ 2 := by rcases lt_or_gt_of_ne hI0 with h | h <;> nlinarith
  have hu2 : 1 ≤ u ^ 2 := by rcases lt_or_gt_of_ne hu0 with h | h <;> nlinarith
  have hq2ge : (2 : ℤ) ≤ (q : ℤ) := by exact_mod_cast hq.out.two_le
  have hkey2 : X ^ 2 + (q : ℤ) ^ 8 * (I ^ 2 * u ^ 2) = (q : ℤ) ^ 4 := by
    linear_combination hq4 - (q : ℤ) ^ 8 * (I ^ 2 * u ^ 2) * hρ2
  have hIu : 1 ≤ I ^ 2 * u ^ 2 := by nlinarith [hI2, hu2]
  have hq4ge : (16 : ℤ) ≤ (q : ℤ) ^ 4 := by nlinarith [hq2ge, sq_nonneg ((q : ℤ) - 2), sq_nonneg ((q : ℤ) ^ 2 - 4)]
  have hq4pos : (0 : ℤ) < (q : ℤ) ^ 4 := by positivity
  have hq8ge : (q : ℤ) ^ 4 * 16 ≤ (q : ℤ) ^ 8 := by nlinarith [hq4ge, hq4pos]
  have hq8pos : (0 : ℤ) < (q : ℤ) ^ 8 := by positivity
  have hq8Iu : (q : ℤ) ^ 8 ≤ (q : ℤ) ^ 8 * (I ^ 2 * u ^ 2) := by nlinarith [hIu, hq8pos]
  nlinarith [hkey2, sq_nonneg X, hq8ge, hq8Iu, hq4ge]


set_option maxHeartbeats 1600000 in
/-- Cross cells (Kb = L2, Kd = L3 or L4), integer core (σ = ±1 picks
the class). After the chain Y = IRv, R₈v = fq², the second equation
forces R ∣ X, the norm forces R ∣ q², and each associated power of q
dies: q² by size, q by a negative discriminant, 1 between consecutive
squares. -/
lemma cross_L2_L34_int
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (R I X Y f g e σ : ℤ)
    (hf : f = 1 ∨ f = -1) (hg : g = 1 ∨ g = -1) (he : e = 1 ∨ e = -1)
    (hσ : σ = 1 ∨ σ = -1)
    (hp4 : R ^ 2 + I ^ 2 = (p : ℤ) ^ 4)
    (hq4 : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 4)
    (hpR : ¬ (p : ℤ) ∣ R)
    (hqX : ¬ (q : ℤ) ∣ X)
    (hY0 : Y ≠ 0) (hI0 : I ≠ 0) (hR0 : R ≠ 0)
    (hI4 : (4 : ℤ) ∣ I)
    (hcop : IsCoprime R I)
    (h1 : 2 * ((R ^ 2 - I ^ 2) * Y) = f * ((q : ℤ) ^ 2 * (2 * R * I)))
    (h2 : 3 * ((R ^ 2 - I ^ 2) * Y) + e * ((2 * R * I) * X)
      = g * ((p : ℤ) ^ 2 * (σ * (R * Y) + I * X))) : False := by
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  have hqP : Prime (q : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hq.out
  have hq20 : ((q : ℤ) ^ 2) ≠ 0 :=
    pow_ne_zero _ (Int.natCast_ne_zero.mpr hq.out.pos.ne')
  have hp2ge : (2 : ℤ) ≤ (p : ℤ) := by exact_mod_cast hp.out.two_le
  have h1' : (R ^ 2 - I ^ 2) * Y = f * (q : ℤ) ^ 2 * (R * I) := by linarith [h1]
  have hIR8 : IsCoprime I (R ^ 2 - I ^ 2) := by
    have h0 : IsCoprime I (R ^ 2) := hcop.symm.pow_right
    have h1'' := h0.add_mul_right_right (-I)
    have heq : R ^ 2 + -I * I = R ^ 2 - I ^ 2 := by ring
    rwa [heq] at h1''
  have hIY : I ∣ Y := by
    refine hIR8.dvd_of_dvd_mul_right ?_
    exact ⟨f * (q : ℤ) ^ 2 * R, by linear_combination h1'⟩
  obtain ⟨w, hw⟩ := hIY
  subst hw
  have hR8w : (R ^ 2 - I ^ 2) * w = f * (q : ℤ) ^ 2 * R := by
    have h0 : I * ((R ^ 2 - I ^ 2) * w - f * (q : ℤ) ^ 2 * R) = 0 := by
      linear_combination h1'
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hI0
    · linarith
  have hRR8 : IsCoprime R (R ^ 2 - I ^ 2) := by
    have h0 : IsCoprime R (I ^ 2) := hcop.pow_right
    have h1'' := (h0.neg_right).add_mul_right_right R
    have heq : -I ^ 2 + R * R = R ^ 2 - I ^ 2 := by ring
    rwa [heq] at h1''
  have hRw : R ∣ w := by
    refine hRR8.dvd_of_dvd_mul_right ?_
    exact ⟨f * (q : ℤ) ^ 2, by linear_combination hR8w⟩
  obtain ⟨v, hv⟩ := hRw
  subst hv
  have hR8v : (R ^ 2 - I ^ 2) * v = f * (q : ℤ) ^ 2 := by
    have h0 : R * ((R ^ 2 - I ^ 2) * v - f * (q : ℤ) ^ 2) = 0 := by
      linear_combination hR8w
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hR0
    · linarith
  -- cancel I in h2, then extract R ∣ X
  have hin : 3 * (R ^ 2 - I ^ 2) * (R * v) + 2 * e * R * X
      = g * (p : ℤ) ^ 2 * (σ * (R ^ 2 * v) + X) := by
    have h0 : I * (3 * (R ^ 2 - I ^ 2) * (R * v) + 2 * e * R * X
        - g * (p : ℤ) ^ 2 * (σ * (R ^ 2 * v) + X)) = 0 := by
      linear_combination h2
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hI0
    · linarith
  have hRXp2 : R ∣ X * (p : ℤ) ^ 2 := by
    have hd1 : R ∣ X * (g * (p : ℤ) ^ 2 - 2 * e * R) :=
      ⟨v * (3 * (R ^ 2 - I ^ 2) - g * (p : ℤ) ^ 2 * σ * R), by linear_combination -hin⟩
    have hd2 : R ∣ X * (2 * e * R) := ⟨X * 2 * e, by ring⟩
    have hd3 : R ∣ X * (g * (p : ℤ) ^ 2) := by
      have := dvd_add hd1 hd2
      have heq : X * (g * (p : ℤ) ^ 2 - 2 * e * R) + X * (2 * e * R)
          = X * (g * (p : ℤ) ^ 2) := by ring
      rwa [heq] at this
    rcases hg with rfl | rfl
    · simpa using hd3
    · have := hd3.neg_right
      simpa using this
  have hRX : R ∣ X := by
    have hc : IsCoprime R ((p : ℤ) ^ 2) :=
      (((hpP.coprime_iff_not_dvd).mpr hpR).symm).pow_right
    exact hc.dvd_of_dvd_mul_left (by rwa [mul_comm] at hRXp2)
  obtain ⟨xh, hxh⟩ := hRX
  subst hxh
  -- norm relation and R ∣ q²
  have hnorm : R ^ 2 * (xh ^ 2 + I ^ 2 * v ^ 2) = (q : ℤ) ^ 4 := by
    linear_combination hq4
  have hRq2 : R ∣ (q : ℤ) ^ 2 := by
    have hsq : R ^ 2 ∣ ((q : ℤ) ^ 2) ^ 2 :=
      ⟨xh ^ 2 + I ^ 2 * v ^ 2, by linear_combination -hnorm⟩
    exact (Int.pow_dvd_pow_iff two_ne_zero).mp hsq
  have hI16 : (16 : ℤ) ≤ I ^ 2 := by
    obtain ⟨t, ht⟩ := hI4
    have ht0 : t ≠ 0 := by rintro rfl; simp at ht; exact hI0 ht
    have ht2 : 1 ≤ t ^ 2 := by rcases lt_or_gt_of_ne ht0 with h | h <;> nlinarith
    have hIt : I ^ 2 = 16 * t ^ 2 := by rw [ht]; ring
    linarith [ht2, hIt]
  have hv0 : v ≠ 0 := by
    rintro rfl
    exact hY0 (by ring)
  have hv2 : 1 ≤ v ^ 2 := by rcases lt_or_gt_of_ne hv0 with h | h <;> nlinarith
  obtain ⟨i, hi, hass⟩ := (dvd_prime_pow hqP 2).mp hRq2
  interval_cases i
  · -- R = ±1: I² = p⁴ − 1 sits between consecutive squares
    rw [pow_zero] at hass
    have hR1 : R = 1 ∨ R = -1 := Int.isUnit_iff.mp (associated_one_iff_isUnit.mp hass)
    have hR2 : R ^ 2 = 1 := by rcases hR1 with rfl | rfl <;> norm_num
    have hI2eq : I ^ 2 = (p : ℤ) ^ 4 - 1 := by linear_combination hp4 - hR2
    have hlow : ((p : ℤ) ^ 2 - 1) ^ 2 < I ^ 2 := by nlinarith [hp2ge]
    have habs : (p : ℤ) ^ 2 - 1 < |I| := by
      have h0 : (0 : ℤ) ≤ |I| := abs_nonneg I
      have hsq : ((p : ℤ) ^ 2 - 1) ^ 2 < |I| ^ 2 := by rw [sq_abs]; exact hlow
      nlinarith [hsq, h0, sq_nonneg ((p : ℤ) ^ 2 - 1 - |I|)]
    have hge : (p : ℤ) ^ 2 ≤ |I| := by omega
    have : (p : ℤ) ^ 4 ≤ I ^ 2 := by nlinarith [hge, abs_nonneg I, sq_abs I]
    linarith [hI2eq, this]
  · -- R = ±q: negative discriminant
    rw [pow_one] at hass
    rcases Int.associated_iff.mp hass with hR | hR
    all_goals (
      have hR2 : R ^ 2 = (q : ℤ) ^ 2 := by rw [hR]; try ring
      have hI2eq : I ^ 2 = (p : ℤ) ^ 4 - (q : ℤ) ^ 2 := by linear_combination hp4 - hR2
      have hvrel : (q : ℤ) ^ 2 * (2 * v - f) = (p : ℤ) ^ 4 * v := by
        linear_combination hR8v + v * hI2eq - v * hR2
      have hp2d : (p : ℤ) ^ 2 ∣ (2 * v - f) := by
        have hcpq : IsCoprime ((p : ℤ)) ((q : ℤ)) :=
          (hpP.coprime_iff_not_dvd).mpr (fun hd => hpq
            ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp (by exact_mod_cast hd)))
        have hc : IsCoprime ((p : ℤ) ^ 2) ((q : ℤ) ^ 2) := hcpq.pow
        refine hc.dvd_of_dvd_mul_right ?_
        exact ⟨(p : ℤ) ^ 2 * v, by linear_combination hvrel⟩
      have hne : 2 * v - f ≠ 0 := by
        rcases hf with rfl | rfl <;> omega
      have hbig : (p : ℤ) ^ 4 ≤ (2 * v - f) ^ 2 := by
        obtain ⟨c, hc⟩ := hp2d
        have hc0 : c ≠ 0 := by rintro rfl; simp at hc; exact hne hc
        have hc2 : 1 ≤ c ^ 2 := by rcases lt_or_gt_of_ne hc0 with h | h <;> nlinarith
        calc (p : ℤ) ^ 4 = ((p : ℤ) ^ 2) ^ 2 * 1 := by ring
        _ ≤ ((p : ℤ) ^ 2) ^ 2 * c ^ 2 := by
            have : (0 : ℤ) ≤ ((p : ℤ) ^ 2) ^ 2 := sq_nonneg _
            nlinarith [hc2]
        _ = (2 * v - f) ^ 2 := by rw [hc]; ring
      have hnorm2 : xh ^ 2 + I ^ 2 * v ^ 2 = (q : ℤ) ^ 2 := by
        have h0 : (q : ℤ) ^ 2 * ((xh ^ 2 + I ^ 2 * v ^ 2) - (q : ℤ) ^ 2) = 0 := by
          linear_combination hnorm - (xh ^ 2 + I ^ 2 * v ^ 2) * hR2 + 0
        rcases mul_eq_zero.mp h0 with h | h
        · exact absurd h hq20
        · linarith
      have hq2p4 : (q : ℤ) ^ 2 ≤ (p : ℤ) ^ 4 - 16 := by nlinarith [hI2eq, hI16]
      have h16v : 16 * v ^ 2 ≤ (q : ℤ) ^ 2 := by nlinarith [hnorm2, hI16, hv2, sq_nonneg xh]
      rcases hf with rfl | rfl <;>
        nlinarith [hbig, h16v, hq2p4, sq_nonneg (6 * v + 1), sq_nonneg (6 * v - 1)])
  · -- R = ±q²: xh² + I²v² = 1 impossible with I² ≥ 16
    rcases Int.associated_iff.mp hass with hR | hR
    all_goals (
      have hR2 : R ^ 2 = (q : ℤ) ^ 4 := by rw [hR]; try ring
      have hone : xh ^ 2 + I ^ 2 * v ^ 2 = 1 := by
        have h0 : (q : ℤ) ^ 4 * ((xh ^ 2 + I ^ 2 * v ^ 2) - 1) = 0 := by
          linear_combination hnorm - (xh ^ 2 + I ^ 2 * v ^ 2) * hR2 + 0
        rcases mul_eq_zero.mp h0 with h | h
        · exact absurd h (pow_ne_zero _ (Int.natCast_ne_zero.mpr hq.out.pos.ne'))
        · linarith
      nlinarith [hone, hI16, hv2, sq_nonneg xh])


/-- Mirror cell (Kb = L1, Kd = L2): eliminating R₈Y leaves
4R(eX − gq²) = −3f·p²q², even = odd. -/
lemma cross_L1_L2_int
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (R I X Y f g e : ℤ)
    (hf : f = 1 ∨ f = -1)
    (hI0 : I ≠ 0)
    (h1 : 2 * ((R ^ 2 - I ^ 2) * Y) = f * ((p : ℤ) ^ 2 * (q : ℤ) ^ 2 * I))
    (h2 : 3 * ((R ^ 2 - I ^ 2) * Y) + e * ((2 * R * I) * X)
      = g * ((q : ℤ) ^ 2 * (2 * R * I))) : False := by
  have h0 : I * (4 * (R * (e * X - g * (q : ℤ) ^ 2)) + 3 * f * ((p : ℤ) ^ 2 * (q : ℤ) ^ 2)) = 0 := by
    linear_combination 2 * h2 - 3 * h1
  have hin : 4 * (R * (e * X - g * (q : ℤ) ^ 2)) + 3 * f * ((p : ℤ) ^ 2 * (q : ℤ) ^ 2) = 0 := by
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hI0
    · exact h
  have hodd : Odd ((p : ℤ) ^ 2 * (q : ℤ) ^ 2) :=
    ((odd_cast p hpodd).pow).mul ((odd_cast q hqodd).pow)
  obtain ⟨c, hc⟩ := hodd
  rw [hc] at hin
  generalize hM : R * (e * X - g * (q : ℤ) ^ 2) = M at hin
  rcases hf with rfl | rfl <;> omega


set_option maxHeartbeats 3200000 in
/-- Mirror cells (Kb = L3 or L4, Kd = L2), integer core (σ = ±1 picks
the class). Round-115 chain: R (or R/3) divides Y, the 3Y₁ = Iw trick
avoids any case split on 3 ∣ I, p² ∣ w, R ∣ X, and the norm forces
R ∣ q² (or R₃ ∣ q²) with three associated-power kills. -/
lemma cross_L34_L2_int
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (R I X Y f g e σ : ℤ)
    (hf : f = 1 ∨ f = -1) (hg : g = 1 ∨ g = -1) (he : e = 1 ∨ e = -1)
    (hσ : σ = 1 ∨ σ = -1)
    (hp4 : R ^ 2 + I ^ 2 = (p : ℤ) ^ 4)
    (hq4 : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 4)
    (hpR : ¬ (p : ℤ) ∣ R)
    (hpR8 : ¬ (p : ℤ) ∣ (R ^ 2 - I ^ 2))
    (hY0 : Y ≠ 0) (hI0 : I ≠ 0) (hR0 : R ≠ 0)
    (hI4 : (4 : ℤ) ∣ I)
    (hcop : IsCoprime R I)
    (h1 : 2 * ((R ^ 2 - I ^ 2) * Y) = f * ((p : ℤ) ^ 2 * (σ * (R * Y) + I * X)))
    (h2 : 3 * ((R ^ 2 - I ^ 2) * Y) + e * ((2 * R * I) * X)
      = g * ((q : ℤ) ^ 2 * (2 * R * I))) : False := by
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  have hqP : Prime (q : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hq.out
  have h3P : Prime (3 : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; norm_num
  have hq20 : ((q : ℤ) ^ 2) ≠ 0 :=
    pow_ne_zero _ (Int.natCast_ne_zero.mpr hq.out.pos.ne')
  have hq40 : ((q : ℤ) ^ 4) ≠ 0 :=
    pow_ne_zero _ (Int.natCast_ne_zero.mpr hq.out.pos.ne')
  have hp20 : ((p : ℤ) ^ 2) ≠ 0 :=
    pow_ne_zero _ (Int.natCast_ne_zero.mpr hp.out.pos.ne')
  have hp3ge : (3 : ℤ) ≤ (p : ℤ) := by
    have h2' := hp.out.two_le
    have : p ≠ 2 := by rintro rfl; simp at hpodd
    have : 3 ≤ p := by omega
    exact_mod_cast this
  have hp4ge : (16 : ℤ) ≤ (p : ℤ) ^ 4 := by
    have hp2sq : (9 : ℤ) ≤ (p : ℤ) ^ 2 := by nlinarith [hp3ge]
    nlinarith [hp2sq]
  have hIR8 : IsCoprime I (R ^ 2 - I ^ 2) := by
    have h0 : IsCoprime I (R ^ 2) := hcop.symm.pow_right
    have h1'' := h0.add_mul_right_right (-I)
    have heq : R ^ 2 + -I * I = R ^ 2 - I ^ 2 := by ring
    rwa [heq] at h1''
  have hRR8 : IsCoprime R (R ^ 2 - I ^ 2) := by
    have h0 : IsCoprime R (I ^ 2) := hcop.pow_right
    have h1'' := (h0.neg_right).add_mul_right_right R
    have heq : -I ^ 2 + R * R = R ^ 2 - I ^ 2 := by ring
    rwa [heq] at h1''
  have hI16 : (16 : ℤ) ≤ I ^ 2 := by
    obtain ⟨t, ht⟩ := hI4
    have ht0 : t ≠ 0 := by rintro rfl; simp at ht; exact hI0 ht
    have ht2 : 1 ≤ t ^ 2 := by rcases lt_or_gt_of_ne ht0 with h | h <;> nlinarith
    have hIt : I ^ 2 = 16 * t ^ 2 := by rw [ht]; ring
    linarith [ht2, hIt]
  have hR3Y : R ∣ 3 * Y := by
    refine hRR8.dvd_of_dvd_mul_right ?_
    exact ⟨2 * I * (g * (q : ℤ) ^ 2 - e * X), by linear_combination h2⟩
  by_cases h3R : (3 : ℤ) ∣ R
  · -- Case B: 3 ∣ R, work with R₃ = R/3
    obtain ⟨R₃, hR3⟩ := h3R
    subst hR3
    have hR30 : R₃ ≠ 0 := by rintro rfl; simp at hR0
    have hRY : R₃ ∣ Y := by
      obtain ⟨c, hc⟩ := hR3Y
      exact ⟨c, by linarith⟩
    obtain ⟨Y₁, hYdef⟩ := hRY
    subst hYdef
    have hY1B : ((3 * R₃) ^ 2 - I ^ 2) * Y₁ = 2 * I * (g * (q : ℤ) ^ 2 - e * X) := by
      have h0 : (3 * R₃) * (((3 * R₃) ^ 2 - I ^ 2) * Y₁
          - 2 * I * (g * (q : ℤ) ^ 2 - e * X)) = 0 := by
        linear_combination h2
      rcases mul_eq_zero.mp h0 with h | h
      · exact absurd h hR0
      · linarith
    have hIY1 : I ∣ Y₁ := by
      refine hIR8.dvd_of_dvd_mul_right ?_
      exact ⟨2 * (g * (q : ℤ) ^ 2 - e * X), by linear_combination hY1B⟩
    obtain ⟨w, hwdef⟩ := hIY1
    subst hwdef
    have hR8wB : ((3 * R₃) ^ 2 - I ^ 2) * w = 2 * (g * (q : ℤ) ^ 2 - e * X) := by
      have h0 : I * (((3 * R₃) ^ 2 - I ^ 2) * w
          - 2 * (g * (q : ℤ) ^ 2 - e * X)) = 0 := by
        linear_combination hY1B
      rcases mul_eq_zero.mp h0 with h | h
      · exact absurd h hI0
      · linarith
    have hclubsB : 2 * (((3 * R₃) ^ 2 - I ^ 2) * R₃) * w
        = f * (p : ℤ) ^ 2 * (3 * σ * R₃ ^ 2 * w + X) := by
      have h0 : I * (2 * (((3 * R₃) ^ 2 - I ^ 2) * R₃) * w
          - f * (p : ℤ) ^ 2 * (3 * σ * R₃ ^ 2 * w + X)) = 0 := by
        linear_combination h1
      rcases mul_eq_zero.mp h0 with h | h
      · exact absurd h hI0
      · linarith
    have hpR3 : ¬ (p : ℤ) ∣ R₃ := fun hd => hpR (hd.mul_left 3)
    have hp2w : (p : ℤ) ^ 2 ∣ w := by
      have hc2 : IsCoprime ((p : ℤ)) 2 :=
        (hpP.coprime_iff_not_dvd).mpr (fun hd => by
          have h2' : p ∣ 2 := by exact_mod_cast hd
          have := Nat.le_of_dvd (by norm_num) h2'
          have := hp.out.two_le
          omega)
      have hcall : IsCoprime ((p : ℤ) ^ 2) (2 * (((3 * R₃) ^ 2 - I ^ 2) * R₃)) :=
        ((hc2.mul_right (((hpP.coprime_iff_not_dvd).mpr hpR8).mul_right
          ((hpP.coprime_iff_not_dvd).mpr hpR3)))).pow_left
      refine hcall.dvd_of_dvd_mul_right ?_
      exact ⟨f * (3 * σ * R₃ ^ 2 * w + X), by linear_combination hclubsB⟩
    obtain ⟨wh, hwh⟩ := hp2w
    have hXrelB : f * X = R₃ * wh * (2 * ((3 * R₃) ^ 2 - I ^ 2) - 3 * f * σ * R₃ * (p : ℤ) ^ 2) := by
      have h0 : (p : ℤ) ^ 2 * (f * X
          - R₃ * wh * (2 * ((3 * R₃) ^ 2 - I ^ 2) - 3 * f * σ * R₃ * (p : ℤ) ^ 2)) = 0 := by
        rcases hf with rfl | rfl
        · linear_combination -hclubsB + (R₃ * (18 * R₃ ^ 2 - 2 * I ^ 2 - 3 * σ * R₃ * (p : ℤ) ^ 2)) * hwh
        · linear_combination -hclubsB + (R₃ * (18 * R₃ ^ 2 - 2 * I ^ 2 + 3 * σ * R₃ * (p : ℤ) ^ 2)) * hwh
      rcases mul_eq_zero.mp h0 with h | h
      · exact absurd h hp20
      · linarith
    have hR3X : R₃ ∣ X := by
      have hd : R₃ ∣ f * X := ⟨wh * (2 * ((3 * R₃) ^ 2 - I ^ 2) - 3 * f * σ * R₃ * (p : ℤ) ^ 2),
        by linear_combination hXrelB⟩
      rcases hf with rfl | rfl
      · simpa using hd
      · exact dvd_neg.mp (by simpa using hd)
    obtain ⟨xh, hxh⟩ := hR3X
    subst hxh
    have hw2 : w ^ 2 = (p : ℤ) ^ 4 * wh ^ 2 := by rw [hwh]; ring
    have hnormB : R₃ ^ 2 * (xh ^ 2 + I ^ 2 * ((p : ℤ) ^ 4 * wh ^ 2)) = (q : ℤ) ^ 4 := by
      linear_combination hq4 - R₃ ^ 2 * I ^ 2 * hw2
    have hR3q2 : R₃ ∣ (q : ℤ) ^ 2 := by
      have hsq : R₃ ^ 2 ∣ ((q : ℤ) ^ 2) ^ 2 :=
        ⟨xh ^ 2 + I ^ 2 * ((p : ℤ) ^ 4 * wh ^ 2), by linear_combination -hnormB⟩
      exact (Int.pow_dvd_pow_iff two_ne_zero).mp hsq
    have hwh0 : wh ≠ 0 := by
      rintro rfl
      simp at hwh
      subst hwh
      exact hY0 (by ring)
    have hwh2 : 1 ≤ wh ^ 2 := by rcases lt_or_gt_of_ne hwh0 with h | h <;> nlinarith
    have hIwh : (16 : ℤ) ≤ I ^ 2 * wh ^ 2 := by nlinarith [hI16, hwh2]
    have hbig : 16 * (p : ℤ) ^ 4 ≤ I ^ 2 * ((p : ℤ) ^ 4 * wh ^ 2) := by
      have h0 : (0 : ℤ) ≤ (p : ℤ) ^ 4 := by positivity
      nlinarith [hIwh, h0]
    obtain ⟨i, hi, hass⟩ := (dvd_prime_pow hqP 2).mp hR3q2
    interval_cases i
    · -- R₃ = ±1: I² = p⁴ − 9 between consecutive squares
      rw [pow_zero] at hass
      have hR1 : R₃ = 1 ∨ R₃ = -1 := Int.isUnit_iff.mp (associated_one_iff_isUnit.mp hass)
      have hR2 : R₃ ^ 2 = 1 := by rcases hR1 with rfl | rfl <;> norm_num
      have hI2eq : I ^ 2 = (p : ℤ) ^ 4 - 9 := by linear_combination hp4 - 9 * hR2
      have hlow : ((p : ℤ) ^ 2 - 1) ^ 2 < I ^ 2 := by nlinarith [hp3ge]
      have habs : (p : ℤ) ^ 2 - 1 < |I| := by
        have h0 : (0 : ℤ) ≤ |I| := abs_nonneg I
        have hsq : ((p : ℤ) ^ 2 - 1) ^ 2 < |I| ^ 2 := by rw [sq_abs]; exact hlow
        nlinarith [hsq, h0, sq_nonneg ((p : ℤ) ^ 2 - 1 - |I|)]
      have hge : (p : ℤ) ^ 2 ≤ |I| := by omega
      have hup : (p : ℤ) ^ 4 ≤ I ^ 2 := by nlinarith [hge, abs_nonneg I, sq_abs I]
      linarith [hI2eq, hup]
    · -- R₃ = ±q: window kill
      rw [pow_one] at hass
      rcases Int.associated_iff.mp hass with hR | hR
      all_goals (
        have hR2 : R₃ ^ 2 = (q : ℤ) ^ 2 := by rw [hR]; try ring
        have hI2eq : I ^ 2 = (p : ℤ) ^ 4 - 9 * (q : ℤ) ^ 2 := by
          linear_combination hp4 - 9 * hR2
        have hinner : xh ^ 2 + I ^ 2 * ((p : ℤ) ^ 4 * wh ^ 2) = (q : ℤ) ^ 2 := by
          have h0 : (q : ℤ) ^ 2 * ((xh ^ 2 + I ^ 2 * ((p : ℤ) ^ 4 * wh ^ 2)) - (q : ℤ) ^ 2) = 0 := by
            linear_combination hnormB - (xh ^ 2 + I ^ 2 * ((p : ℤ) ^ 4 * wh ^ 2)) * hR2
          rcases mul_eq_zero.mp h0 with h | h
          · exact absurd h hq20
          · linarith
        nlinarith [hbig, hinner, hI2eq, hI16, sq_nonneg xh, hp4ge])
    · -- R₃ = ±q²: inner = 1
      rcases Int.associated_iff.mp hass with hR | hR
      all_goals (
        have hR2 : R₃ ^ 2 = (q : ℤ) ^ 4 := by rw [hR]; try ring
        have hinner : xh ^ 2 + I ^ 2 * ((p : ℤ) ^ 4 * wh ^ 2) = 1 := by
          have h0 : (q : ℤ) ^ 4 * ((xh ^ 2 + I ^ 2 * ((p : ℤ) ^ 4 * wh ^ 2)) - 1) = 0 := by
            linear_combination hnormB - (xh ^ 2 + I ^ 2 * ((p : ℤ) ^ 4 * wh ^ 2)) * hR2
          rcases mul_eq_zero.mp h0 with h | h
          · exact absurd h hq40
          · linarith
        nlinarith [hbig, hinner, sq_nonneg xh, hp4ge])
  · -- Case A: 3 ∤ R
    have hc3 : IsCoprime R 3 := ((h3P.coprime_iff_not_dvd).mpr h3R).symm
    have hRY : R ∣ Y := hc3.dvd_of_dvd_mul_left hR3Y
    obtain ⟨Y₁, hYdef⟩ := hRY
    subst hYdef
    have hY1 : 3 * ((R ^ 2 - I ^ 2) * Y₁) = 2 * I * (g * (q : ℤ) ^ 2 - e * X) := by
      have h0 : R * (3 * ((R ^ 2 - I ^ 2) * Y₁) - 2 * I * (g * (q : ℤ) ^ 2 - e * X)) = 0 := by
        linear_combination h2
      rcases mul_eq_zero.mp h0 with h | h
      · exact absurd h hR0
      · linarith
    have hI3Y1 : I ∣ 3 * Y₁ := by
      refine hIR8.dvd_of_dvd_mul_right ?_
      exact ⟨2 * (g * (q : ℤ) ^ 2 - e * X), by linear_combination hY1⟩
    obtain ⟨w, hw⟩ := hI3Y1
    have hclubs : 2 * ((R ^ 2 - I ^ 2) * R) * w = f * (p : ℤ) ^ 2 * (σ * R ^ 2 * w + 3 * X) := by
      have h0 : I * (2 * ((R ^ 2 - I ^ 2) * R) * w
          - f * (p : ℤ) ^ 2 * (σ * R ^ 2 * w + 3 * X)) = 0 := by
        linear_combination 3 * h1 - 2 * (R ^ 2 - I ^ 2) * R * hw
          + f * (p : ℤ) ^ 2 * σ * R ^ 2 * hw
      rcases mul_eq_zero.mp h0 with h | h
      · exact absurd h hI0
      · linarith
    have hp2w : (p : ℤ) ^ 2 ∣ w := by
      have hc2 : IsCoprime ((p : ℤ)) 2 :=
        (hpP.coprime_iff_not_dvd).mpr (fun hd => by
          have h2' : p ∣ 2 := by exact_mod_cast hd
          have := Nat.le_of_dvd (by norm_num) h2'
          have := hp.out.two_le
          omega)
      have hcall : IsCoprime ((p : ℤ) ^ 2) (2 * ((R ^ 2 - I ^ 2) * R)) :=
        ((hc2.mul_right (((hpP.coprime_iff_not_dvd).mpr hpR8).mul_right
          ((hpP.coprime_iff_not_dvd).mpr hpR)))).pow_left
      refine hcall.dvd_of_dvd_mul_right ?_
      exact ⟨f * (σ * R ^ 2 * w + 3 * X), by linear_combination hclubs⟩
    obtain ⟨wh, hwh⟩ := hp2w
    have hXrel : 3 * (f * X) = R * wh * (2 * (R ^ 2 - I ^ 2) - f * σ * R * (p : ℤ) ^ 2) := by
      have h0 : (p : ℤ) ^ 2 * (3 * (f * X)
          - R * wh * (2 * (R ^ 2 - I ^ 2) - f * σ * R * (p : ℤ) ^ 2)) = 0 := by
        rcases hf with rfl | rfl
        · linear_combination -hclubs + (R * (2 * R ^ 2 - 2 * I ^ 2 - σ * R * (p : ℤ) ^ 2)) * hwh
        · linear_combination -hclubs + (R * (2 * R ^ 2 - 2 * I ^ 2 + σ * R * (p : ℤ) ^ 2)) * hwh
      rcases mul_eq_zero.mp h0 with h | h
      · exact absurd h hp20
      · linarith
    have hR3X : R ∣ 3 * X := by
      have hd : R ∣ 3 * (f * X) := ⟨wh * (2 * (R ^ 2 - I ^ 2) - f * σ * R * (p : ℤ) ^ 2),
        by linear_combination hXrel⟩
      rcases hf with rfl | rfl
      · simpa using hd
      · exact dvd_neg.mp (by simpa [mul_comm, mul_left_comm] using hd)
    have hRX : R ∣ X := hc3.dvd_of_dvd_mul_left hR3X
    obtain ⟨xh, hxh⟩ := hRX
    subst hxh
    have hw9 : 9 * Y₁ ^ 2 = I ^ 2 * ((p : ℤ) ^ 4 * wh ^ 2) := by
      have hsq : (3 * Y₁) ^ 2 = (I * ((p : ℤ) ^ 2 * wh)) ^ 2 := by
        rw [show I * ((p : ℤ) ^ 2 * wh) = I * w from by rw [hwh], ← hw]
      linear_combination hsq
    have hnorm : R ^ 2 * (9 * xh ^ 2 + I ^ 2 * ((p : ℤ) ^ 4 * wh ^ 2)) = 9 * (q : ℤ) ^ 4 := by
      linear_combination 9 * hq4 - R ^ 2 * hw9
    have hR3q2 : R ∣ 3 * (q : ℤ) ^ 2 := by
      have hsq : R ^ 2 ∣ (3 * (q : ℤ) ^ 2) ^ 2 :=
        ⟨9 * xh ^ 2 + I ^ 2 * ((p : ℤ) ^ 4 * wh ^ 2), by linear_combination -hnorm⟩
      exact (Int.pow_dvd_pow_iff two_ne_zero).mp hsq
    have hRq2 : R ∣ (q : ℤ) ^ 2 := hc3.dvd_of_dvd_mul_left hR3q2
    have hwh0 : wh ≠ 0 := by
      rintro rfl
      simp at hwh
      subst hwh
      have hY10 : Y₁ = 0 := by linarith [hw]
      exact hY0 (by rw [hY10]; ring)
    have hwh2 : 1 ≤ wh ^ 2 := by rcases lt_or_gt_of_ne hwh0 with h | h <;> nlinarith
    have hIwh : (16 : ℤ) ≤ I ^ 2 * wh ^ 2 := by nlinarith [hI16, hwh2]
    have hbig : 16 * (p : ℤ) ^ 4 ≤ I ^ 2 * ((p : ℤ) ^ 4 * wh ^ 2) := by
      have h0 : (0 : ℤ) ≤ (p : ℤ) ^ 4 := by positivity
      nlinarith [hIwh, h0]
    obtain ⟨i, hi, hass⟩ := (dvd_prime_pow hqP 2).mp hRq2
    interval_cases i
    · -- R = ±1: I² = p⁴ − 1 between consecutive squares
      rw [pow_zero] at hass
      have hR1 : R = 1 ∨ R = -1 := Int.isUnit_iff.mp (associated_one_iff_isUnit.mp hass)
      have hR2 : R ^ 2 = 1 := by rcases hR1 with rfl | rfl <;> norm_num
      have hI2eq : I ^ 2 = (p : ℤ) ^ 4 - 1 := by linear_combination hp4 - hR2
      have hlow : ((p : ℤ) ^ 2 - 1) ^ 2 < I ^ 2 := by nlinarith [hp3ge]
      have habs : (p : ℤ) ^ 2 - 1 < |I| := by
        have h0 : (0 : ℤ) ≤ |I| := abs_nonneg I
        have hsq : ((p : ℤ) ^ 2 - 1) ^ 2 < |I| ^ 2 := by rw [sq_abs]; exact hlow
        nlinarith [hsq, h0, sq_nonneg ((p : ℤ) ^ 2 - 1 - |I|)]
      have hge : (p : ℤ) ^ 2 ≤ |I| := by omega
      have hup : (p : ℤ) ^ 4 ≤ I ^ 2 := by nlinarith [hge, abs_nonneg I, sq_abs I]
      linarith [hI2eq, hup]
    · -- R = ±q: window kill
      rw [pow_one] at hass
      rcases Int.associated_iff.mp hass with hR | hR
      all_goals (
        have hR2 : R ^ 2 = (q : ℤ) ^ 2 := by rw [hR]; try ring
        have hI2eq : I ^ 2 = (p : ℤ) ^ 4 - (q : ℤ) ^ 2 := by linear_combination hp4 - hR2
        have hinner : 9 * xh ^ 2 + I ^ 2 * ((p : ℤ) ^ 4 * wh ^ 2) = 9 * (q : ℤ) ^ 2 := by
          have h0 : (q : ℤ) ^ 2 * ((9 * xh ^ 2 + I ^ 2 * ((p : ℤ) ^ 4 * wh ^ 2)) - 9 * (q : ℤ) ^ 2) = 0 := by
            linear_combination hnorm - (9 * xh ^ 2 + I ^ 2 * ((p : ℤ) ^ 4 * wh ^ 2)) * hR2
          rcases mul_eq_zero.mp h0 with h | h
          · exact absurd h hq20
          · linarith
        nlinarith [hbig, hinner, hI2eq, hI16, sq_nonneg xh, hp4ge])
    · -- R = ±q²: inner = 9
      rcases Int.associated_iff.mp hass with hR | hR
      all_goals (
        have hR2 : R ^ 2 = (q : ℤ) ^ 4 := by rw [hR]; try ring
        have hinner : 9 * xh ^ 2 + I ^ 2 * ((p : ℤ) ^ 4 * wh ^ 2) = 9 := by
          have h0 : (q : ℤ) ^ 4 * ((9 * xh ^ 2 + I ^ 2 * ((p : ℤ) ^ 4 * wh ^ 2)) - 9) = 0 := by
            linear_combination hnorm - (9 * xh ^ 2 + I ^ 2 * ((p : ℤ) ^ 4 * wh ^ 2)) * hR2
          rcases mul_eq_zero.mp h0 with h | h
          · exact absurd h hq40
          · linarith
        nlinarith [hbig, hinner, sq_nonneg xh, hp4ge])


set_option maxHeartbeats 3200000 in
/-- The T-form cross-pair core, integer level: the system
2R₈Y = f·Kb ∧ 3R₈Y + e·I₈X = g·Kd over the five low classes
(coordinates: p⁴Y, p²q²I, q²·2RI, p²(RY+IX), p²(IX−RY)). -/
lemma cross_pair_core_T_int
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (R I X Y Kb Kd f g e : ℤ)
    (hf : f = 1 ∨ f = -1) (hg : g = 1 ∨ g = -1) (he : e = 1 ∨ e = -1)
    (hp4 : R ^ 2 + I ^ 2 = (p : ℤ) ^ 4)
    (hq4 : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 4)
    (hpR : ¬ (p : ℤ) ∣ R) (hpI : ¬ (p : ℤ) ∣ I)
    (hpR8 : ¬ (p : ℤ) ∣ (R ^ 2 - I ^ 2))
    (hqX : ¬ (q : ℤ) ∣ X) (hqY : ¬ (q : ℤ) ∣ Y)
    (hY0 : Y ≠ 0) (hI0 : I ≠ 0) (hR0 : R ≠ 0)
    (hI4 : (4 : ℤ) ∣ I)
    (hcop : IsCoprime R I)
    (hb : Kb = (p : ℤ) ^ 4 * Y ∨ Kb = (p : ℤ) ^ 2 * (q : ℤ) ^ 2 * I
      ∨ Kb = (q : ℤ) ^ 2 * (2 * R * I)
      ∨ Kb = (p : ℤ) ^ 2 * (R * Y + I * X) ∨ Kb = (p : ℤ) ^ 2 * (I * X - R * Y))
    (hd : Kd = (p : ℤ) ^ 4 * Y ∨ Kd = (p : ℤ) ^ 2 * (q : ℤ) ^ 2 * I
      ∨ Kd = (q : ℤ) ^ 2 * (2 * R * I)
      ∨ Kd = (p : ℤ) ^ 2 * (R * Y + I * X) ∨ Kd = (p : ℤ) ^ 2 * (I * X - R * Y))
    (h1 : 2 * ((R ^ 2 - I ^ 2) * Y) = f * Kb)
    (h2 : 3 * ((R ^ 2 - I ^ 2) * Y) + e * ((2 * R * I) * X) = g * Kd) : False := by
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  have hqP : Prime (q : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hq.out
  have hq20 : ((q : ℤ) ^ 2) ≠ 0 :=
    pow_ne_zero _ (Int.natCast_ne_zero.mpr hq.out.pos.ne')
  have hc2 : IsCoprime ((p : ℤ)) 2 :=
    (hpP.coprime_iff_not_dvd).mpr (fun hd' => by
      have h2' : p ∣ 2 := by exact_mod_cast hd'
      have := Nat.le_of_dvd (by norm_num) h2'
      have := hp.out.two_le
      omega)
  have hcR8 : IsCoprime ((p : ℤ)) (R ^ 2 - I ^ 2) := (hpP.coprime_iff_not_dvd).mpr hpR8
  have hp2R8 : IsCoprime ((p : ℤ) ^ 2) (2 * (R ^ 2 - I ^ 2)) :=
    (hc2.mul_right hcR8).pow_left
  -- shared: for Kb ∈ {L1, L3, L4}, h1 forces p² ∣ Y
  have hp2Y : ∀ M : ℤ, 2 * ((R ^ 2 - I ^ 2) * Y) = (p : ℤ) ^ 2 * M → (p : ℤ) ^ 2 ∣ Y := by
    intro M hM
    refine hp2R8.dvd_of_dvd_mul_right ?_
    exact ⟨M, by linear_combination hM⟩
  -- shared: with p² ∣ Y and p² ∣ Kd, h2 forces p² ∣ X, then p ∣ q — dead
  have hkill : (p : ℤ) ^ 2 ∣ Y → (p : ℤ) ^ 2 ∣ Kd → False := by
    intro hY2 hKd2
    obtain ⟨y, hy⟩ := hY2
    obtain ⟨k, hk⟩ := hKd2
    have hIX : (p : ℤ) ^ 2 ∣ (2 * R * I) * X := by
      have hEX : e * ((2 * R * I) * X) = (p : ℤ) ^ 2 * (g * k - 3 * (R ^ 2 - I ^ 2) * y) := by
        linear_combination h2 - 3 * (R ^ 2 - I ^ 2) * hy + g * hk
      rcases he with rfl | rfl
      · exact ⟨g * k - 3 * (R ^ 2 - I ^ 2) * y, by linarith [hEX]⟩
      · exact ⟨-(g * k - 3 * (R ^ 2 - I ^ 2) * y), by linarith [hEX]⟩
    have hp2X : (p : ℤ) ^ 2 ∣ X := by
      have hcRI : IsCoprime ((p : ℤ) ^ 2) (2 * R * I) :=
        ((hc2.mul_right ((hpP.coprime_iff_not_dvd).mpr hpR)).mul_right
          ((hpP.coprime_iff_not_dvd).mpr hpI)).pow_left
      exact hcRI.dvd_of_dvd_mul_right (by rwa [mul_comm] at hIX)
    obtain ⟨x, hx⟩ := hp2X
    have hq4d : (p : ℤ) ^ 2 ∣ (q : ℤ) ^ 4 := by
      refine ⟨(p : ℤ) ^ 2 * x ^ 2 + (p : ℤ) ^ 2 * y ^ 2, ?_⟩
      rw [← hq4, hx, hy]; ring
    have hpq4 : (p : ℤ) ∣ (q : ℤ) ^ 4 := dvd_trans ⟨(p : ℤ), by ring⟩ hq4d
    have hpq' : (p : ℤ) ∣ (q : ℤ) := hpP.dvd_of_dvd_pow hpq4
    have : p ∣ q := by exact_mod_cast hpq'
    exact hpq ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp this)
  rcases hb with rfl | rfl | rfl | rfl | rfl
  · -- Kb = L0: parity
    have h0 : Y * (2 * (R ^ 2 - I ^ 2) - f * (p : ℤ) ^ 4) = 0 := by
      linear_combination h1
    rcases mul_eq_zero.mp h0 with h | h
    · exact hY0 h
    · obtain ⟨c, hc⟩ := (odd_cast p hpodd).pow (n := 4)
      generalize hM : R ^ 2 - I ^ 2 = M at h
      rcases hf with rfl | rfl <;> omega
  · -- Kb = L1
    have hY2 := hp2Y ((q : ℤ) ^ 2 * I * f) (by linear_combination h1)
    rcases hd with rfl | rfl | rfl | rfl | rfl
    · exact hkill hY2 ⟨(p : ℤ) ^ 2 * Y, by ring⟩
    · exact hkill hY2 ⟨(q : ℤ) ^ 2 * I, by ring⟩
    · exact cross_L1_L2_int p q hpodd hqodd R I X Y f g e hf hI0
        (by linear_combination h1) (by linear_combination h2)
    · exact hkill hY2 ⟨R * Y + I * X, by ring⟩
    · exact hkill hY2 ⟨I * X - R * Y, by ring⟩
  · -- Kb = L2
    rcases hd with rfl | rfl | rfl | rfl | rfl
    · exact cross_L2_L0_int p q hpodd hqodd R I X Y f g e hf hg he hp4 hq4 hpR8 hqX hY0
        (by linear_combination h1) (by linear_combination h2)
    · exact cross_L2_L1_int p q hpodd hqodd hpq R I X Y f g e hf hg he hp4 hq4 hpR hqX
        hY0 hI0 hR0 hcop (by linear_combination h1) (by linear_combination h2)
    · -- (L2, L2): substitution parity
      have hsub : (q : ℤ) ^ 2 * (2 * R * I) = 2 * f * ((R ^ 2 - I ^ 2) * Y) := by
        rcases hf with rfl | rfl <;> linarith [h1]
      have h0 : (R ^ 2 - I ^ 2) * Y * (3 * (q : ℤ) ^ 2 + 2 * e * f * X - 2 * f * g * (q : ℤ) ^ 2) = 0 := by
        linear_combination (q : ℤ) ^ 2 * h2 - e * X * hsub + g * (q : ℤ) ^ 2 * hsub
      have hR8Y0 : (R ^ 2 - I ^ 2) * Y ≠ 0 := by
        intro hz
        rcases mul_eq_zero.mp hz with h | h
        · exact hpR8 (h ▸ dvd_zero _)
        · exact hY0 h
      rcases mul_eq_zero.mp h0 with h | h
      · exact hR8Y0 h
      · obtain ⟨c, hc⟩ := (odd_cast q hqodd).pow (n := 2)
        rcases he with rfl | rfl <;> rcases hf with rfl | rfl <;>
          rcases hg with rfl | rfl <;> omega
    · exact cross_L2_L34_int p q hpodd hqodd hpq R I X Y f g e 1 hf hg he (Or.inl rfl)
        hp4 hq4 hpR hqX hY0 hI0 hR0 hI4 hcop
        (by linear_combination h1) (by linear_combination h2)
    · exact cross_L2_L34_int p q hpodd hqodd hpq R I X Y f g e (-1) hf hg he (Or.inr rfl)
        hp4 hq4 hpR hqX hY0 hI0 hR0 hI4 hcop
        (by linear_combination h1) (by linear_combination h2)
  · -- Kb = L3
    have hY2 := hp2Y ((R * Y + I * X) * f) (by linear_combination h1)
    rcases hd with rfl | rfl | rfl | rfl | rfl
    · exact hkill hY2 ⟨(p : ℤ) ^ 2 * Y, by ring⟩
    · exact hkill hY2 ⟨(q : ℤ) ^ 2 * I, by ring⟩
    · exact cross_L34_L2_int p q hpodd hqodd R I X Y f g e 1 hf hg he (Or.inl rfl)
        hp4 hq4 hpR hpR8 hY0 hI0 hR0 hI4 hcop
        (by linear_combination h1) (by linear_combination h2)
    · exact hkill hY2 ⟨R * Y + I * X, by ring⟩
    · exact hkill hY2 ⟨I * X - R * Y, by ring⟩
  · -- Kb = L4
    have hY2 := hp2Y ((I * X - R * Y) * f) (by linear_combination h1)
    rcases hd with rfl | rfl | rfl | rfl | rfl
    · exact hkill hY2 ⟨(p : ℤ) ^ 2 * Y, by ring⟩
    · exact hkill hY2 ⟨(q : ℤ) ^ 2 * I, by ring⟩
    · exact cross_L34_L2_int p q hpodd hqodd R I X Y f g e (-1) hf hg he (Or.inr rfl)
        hp4 hq4 hpR hpR8 hY0 hI0 hR0 hI4 hcop
        (by linear_combination h1) (by linear_combination h2)
    · exact hkill hY2 ⟨R * Y + I * X, by ring⟩
    · exact hkill hY2 ⟨I * X - R * Y, by ring⟩


end FCore
