/-
Per-pair dispatch lemmas for the Theorem E assignment analysis.
Each lemma handles one {u+v, u−v} class pair, with the u and v classes
disjunctive and all signs symbolic.
-/
import Mathlib
import MsqLean.TheoremEResidue
import MsqLean.TheoremE
import MsqLean.Reduction

open Zsqrtd

section Dispatch

variable (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]

/-- Abbreviations for the four D-class magnitudes. -/
private def K0 (q : ℕ) (A B : ℤ) : ℤ := (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im)
private def K1 (p : ℕ) (C D : ℤ) : ℤ := (p : ℤ) ^ 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)
private def K2 (A B C D : ℤ) : ℤ :=
  (((⟨A, B⟩ : GaussianInt) ^ 4) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im
private def K3 (A B C D : ℤ) : ℤ :=
  (((⟨A, B⟩ : GaussianInt) ^ 4) * (star (⟨C, D⟩ : GaussianInt)) ^ 4).im

/-- K2 and K3 in coordinates. -/
private lemma K2_coord (A B C D : ℤ) :
    K2 A B C D = (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)
      + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) := by
  unfold K2
  simp [Zsqrtd.im_mul]
private lemma K3_coord (A B C D : ℤ) :
    K3 A B C D = (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)
      - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) := by
  unfold K3
  simp only [Zsqrtd.im_mul, ← star_pow, Zsqrtd.re_star, Zsqrtd.im_star]
  ring

/-- Dispatch for {u+v, u−v} classes {K0, K1}. -/
lemma dispatch_01
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Ka Kb e1 e2 e3 e4 : ℤ)
    (he1 : e1 = 1 ∨ e1 = -1) (he2 : e2 = 1 ∨ e2 = -1)
    (he3 : e3 = 1 ∨ e3 = -1) (he4 : e4 = 1 ∨ e4 = -1)
    (ha : Ka = K0 q A B ∨ Ka = K1 p C D ∨ Ka = K2 A B C D ∨ Ka = K3 A B C D)
    (hb : Kb = K0 q A B ∨ Kb = K1 p C D ∨ Kb = K2 A B C D ∨ Kb = K3 A B C D)
    (hE1 : e3 * K0 q A B + e4 * K1 p C D = 2 * e1 * Ka)
    (hE2 : e3 * K0 q A B - e4 * K1 p C D = 2 * e2 * Kb) : False := by
  have hq4 : q % 4 = 1 := rep_mod_four q hqodd C D hqCD
  have hI : (((⟨A, B⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero p hpodd A B hpAB
  have hY : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero q hqodd C D hqCD
  have hsmall : ∀ c : ℤ, c ≠ 0 → |c| ≤ 3 → ¬ (q : ℤ) ∣ c := fun c h1 h2 =>
    useful_not_dvd_small q hq4 c h1 h2
  rcases ha with rfl | rfl | rfl | rfl
  · -- u-class K0: (2e1 − e3)·K0 = e4·K1
    refine twoterm_qI_pY p q hpodd hqodd hpq A B C D hpAB hqCD (2 * e1 - e3) e4
      (hsmall e4 (by rcases he4 with rfl | rfl <;> norm_num)
        (by rcases he4 with rfl | rfl <;> norm_num))
      ?_
    unfold K0 K1 at hE1
    linear_combination -hE1
  · -- u-class K1: e3·K0 = (2e1 − e4)·K1
    refine twoterm_qI_pY p q hpodd hqodd hpq A B C D hpAB hqCD e3 (2 * e1 - e4)
      (hsmall _ (by rcases he1 with rfl | rfl <;> rcases he4 with rfl | rfl <;> norm_num)
        (by rcases he1 with rfl | rfl <;> rcases he4 with rfl | rfl <;>
          simp [abs_le] <;> norm_num))
      ?_
    unfold K0 K1 at hE1
    linear_combination hE1
  all_goals (
    rcases hb with rfl | rfl | rfl | rfl)
  · -- (K2, K0): (2e2 − e3)·K0 = −e4·K1
    refine twoterm_qI_pY p q hpodd hqodd hpq A B C D hpAB hqCD (2 * e2 - e3) (-e4)
      (hsmall _ (by rcases he4 with rfl | rfl <;> norm_num)
        (by rcases he4 with rfl | rfl <;> norm_num))
      ?_
    unfold K0 K1 at hE2
    linear_combination -hE2
  · -- (K2, K1): e3·K0 = (2e2 + e4)·K1
    refine twoterm_qI_pY p q hpodd hqodd hpq A B C D hpAB hqCD e3 (2 * e2 + e4)
      (hsmall _ (by rcases he2 with rfl | rfl <;> rcases he4 with rfl | rfl <;> norm_num)
        (by rcases he2 with rfl | rfl <;> rcases he4 with rfl | rfl <;>
          simp [abs_le] <;> norm_num))
      ?_
    unfold K0 K1 at hE2
    linear_combination hE2
  · -- (K2, K2): sum/diff degenerate
    rcases he1 with rfl | rfl <;> rcases he2 with rfl | rfl
    · -- S: e3 K0 = 2 K2? no: D: e4 K1 = 0
      have h0 : e4 * K1 p C D = 0 := by linarith [hE1, hE2]
      unfold K1 at h0
      rcases mul_eq_zero.mp h0 with h | h
      · rcases he4 with rfl | rfl <;> norm_num at h
      · rcases mul_eq_zero.mp h with h | h
        · have := pow_ne_zero 2 (Int.natCast_ne_zero.mpr hp.out.pos.ne')
          exact this h
        · exact hY h
    · have h0 : e3 * K0 q A B = 0 := by linarith [hE1, hE2]
      unfold K0 at h0
      rcases mul_eq_zero.mp h0 with h | h
      · rcases he3 with rfl | rfl <;> norm_num at h
      · rcases mul_eq_zero.mp h with h | h
        · have := pow_ne_zero 2 (Int.natCast_ne_zero.mpr hq.out.pos.ne')
          exact this h
        · exact hI h
    · have h0 : e3 * K0 q A B = 0 := by linarith [hE1, hE2]
      unfold K0 at h0
      rcases mul_eq_zero.mp h0 with h | h
      · rcases he3 with rfl | rfl <;> norm_num at h
      · rcases mul_eq_zero.mp h with h | h
        · have := pow_ne_zero 2 (Int.natCast_ne_zero.mpr hq.out.pos.ne')
          exact this h
        · exact hI h
    · have h0 : e4 * K1 p C D = 0 := by linarith [hE1, hE2]
      unfold K1 at h0
      rcases mul_eq_zero.mp h0 with h | h
      · rcases he4 with rfl | rfl <;> norm_num at h
      · rcases mul_eq_zero.mp h with h | h
        · have := pow_ne_zero 2 (Int.natCast_ne_zero.mpr hp.out.pos.ne')
          exact this h
        · exact hY h
  · -- (K2, K3): S/D collapse to 2IX / 2RY
    rcases he1 with rfl | rfl <;> rcases he2 with rfl | rfl
    · -- e1 = e2 = 1: S: e3 K0 = K2 + K3 = 2·I·X-coord
      refine resid_even_odd q hqodd (((⟨A, B⟩ : GaussianInt) ^ 4).im)
        (((⟨C, D⟩ : GaussianInt) ^ 4).re) 1 e3 hI (by norm_num) he3 ?_
      have hS : e3 * K0 q A B = K2 A B C D + K3 A B C D := by linarith [hE1, hE2]
      rw [K2_coord, K3_coord] at hS
      unfold K0 at hS
      linear_combination -hS
    · -- e1 = 1, e2 = -1: D-pair → product
      have hS : e3 * K0 q A B = K2 A B C D - K3 A B C D := by linarith [hE1, hE2]
      have hD : e4 * K1 p C D = K2 A B C D + K3 A B C D := by linarith [hE1, hE2]
      rw [K2_coord, K3_coord] at hS hD
      unfold K0 at hS
      unfold K1 at hD
      exact resid_product p q hpodd hqodd
        (((⟨A, B⟩ : GaussianInt) ^ 4).re) (((⟨A, B⟩ : GaussianInt) ^ 4).im)
        (((⟨C, D⟩ : GaussianInt) ^ 4).re) (((⟨C, D⟩ : GaussianInt) ^ 4).im)
        1 1 e3 e4 hI hY (by norm_num) (by norm_num) he3 he4
        (by linear_combination -hS) (by linear_combination -hD)
    · -- e1 = -1, e2 = 1: S = −(K2 − K3) form
      have hS : e3 * K0 q A B = -(K2 A B C D - K3 A B C D) := by linarith [hE1, hE2]
      have hD : e4 * K1 p C D = -(K2 A B C D + K3 A B C D) := by linarith [hE1, hE2]
      rw [K2_coord, K3_coord] at hS hD
      unfold K0 at hS
      unfold K1 at hD
      exact resid_product p q hpodd hqodd
        (((⟨A, B⟩ : GaussianInt) ^ 4).re) (((⟨A, B⟩ : GaussianInt) ^ 4).im)
        (((⟨C, D⟩ : GaussianInt) ^ 4).re) (((⟨C, D⟩ : GaussianInt) ^ 4).im)
        (-1) (-1) e3 e4 hI hY (by norm_num) (by norm_num) he3 he4
        (by linear_combination -hS) (by linear_combination -hD)
    · -- e1 = e2 = -1: S: e3 K0 = −(K2 + K3)
      refine resid_even_odd q hqodd (((⟨A, B⟩ : GaussianInt) ^ 4).im)
        (((⟨C, D⟩ : GaussianInt) ^ 4).re) (-1) e3 hI (by norm_num) he3 ?_
      have hS : e3 * K0 q A B = -(K2 A B C D + K3 A B C D) := by linarith [hE1, hE2]
      rw [K2_coord, K3_coord] at hS
      unfold K0 at hS
      linear_combination -hS
  · -- (K3, K0)
    refine twoterm_qI_pY p q hpodd hqodd hpq A B C D hpAB hqCD (2 * e2 - e3) (-e4)
      (hsmall _ (by rcases he4 with rfl | rfl <;> norm_num)
        (by rcases he4 with rfl | rfl <;> norm_num))
      ?_
    unfold K0 K1 at hE2
    linear_combination -hE2
  · -- (K3, K1)
    refine twoterm_qI_pY p q hpodd hqodd hpq A B C D hpAB hqCD e3 (2 * e2 + e4)
      (hsmall _ (by rcases he2 with rfl | rfl <;> rcases he4 with rfl | rfl <;> norm_num)
        (by rcases he2 with rfl | rfl <;> rcases he4 with rfl | rfl <;>
          simp [abs_le] <;> norm_num))
      ?_
    unfold K0 K1 at hE2
    linear_combination hE2
  · -- (K3, K2): mirror of (K2, K3)
    rcases he1 with rfl | rfl <;> rcases he2 with rfl | rfl
    · refine resid_even_odd q hqodd (((⟨A, B⟩ : GaussianInt) ^ 4).im)
        (((⟨C, D⟩ : GaussianInt) ^ 4).re) 1 e3 hI (by norm_num) he3 ?_
      have hS : e3 * K0 q A B = K3 A B C D + K2 A B C D := by linarith [hE1, hE2]
      rw [K2_coord, K3_coord] at hS
      unfold K0 at hS
      linear_combination -hS
    · have hS : e3 * K0 q A B = K3 A B C D - K2 A B C D := by linarith [hE1, hE2]
      have hD : e4 * K1 p C D = K3 A B C D + K2 A B C D := by linarith [hE1, hE2]
      rw [K2_coord, K3_coord] at hS hD
      unfold K0 at hS
      unfold K1 at hD
      exact resid_product p q hpodd hqodd
        (((⟨A, B⟩ : GaussianInt) ^ 4).re) (((⟨A, B⟩ : GaussianInt) ^ 4).im)
        (((⟨C, D⟩ : GaussianInt) ^ 4).re) (((⟨C, D⟩ : GaussianInt) ^ 4).im)
        (-1) 1 e3 e4 hI hY (by norm_num) (by norm_num) he3 he4
        (by linear_combination -hS) (by linear_combination -hD)
    · have hS : e3 * K0 q A B = -(K3 A B C D - K2 A B C D) := by linarith [hE1, hE2]
      have hD : e4 * K1 p C D = -(K3 A B C D + K2 A B C D) := by linarith [hE1, hE2]
      rw [K2_coord, K3_coord] at hS hD
      unfold K0 at hS
      unfold K1 at hD
      exact resid_product p q hpodd hqodd
        (((⟨A, B⟩ : GaussianInt) ^ 4).re) (((⟨A, B⟩ : GaussianInt) ^ 4).im)
        (((⟨C, D⟩ : GaussianInt) ^ 4).re) (((⟨C, D⟩ : GaussianInt) ^ 4).im)
        1 (-1) e3 e4 hI hY (by norm_num) (by norm_num) he3 he4
        (by linear_combination -hS) (by linear_combination -hD)
    · refine resid_even_odd q hqodd (((⟨A, B⟩ : GaussianInt) ^ 4).im)
        (((⟨C, D⟩ : GaussianInt) ^ 4).re) (-1) e3 hI (by norm_num) he3 ?_
      have hS : e3 * K0 q A B = -(K3 A B C D + K2 A B C D) := by linarith [hE1, hE2]
      rw [K2_coord, K3_coord] at hS
      unfold K0 at hS
      linear_combination -hS
  · -- (K3, K3): degenerate like (K2, K2)
    rcases he1 with rfl | rfl <;> rcases he2 with rfl | rfl
    · have h0 : e4 * K1 p C D = 0 := by linarith [hE1, hE2]
      unfold K1 at h0
      rcases mul_eq_zero.mp h0 with h | h
      · rcases he4 with rfl | rfl <;> norm_num at h
      · rcases mul_eq_zero.mp h with h | h
        · exact pow_ne_zero 2 (Int.natCast_ne_zero.mpr hp.out.pos.ne') h
        · exact hY h
    · have h0 : e3 * K0 q A B = 0 := by linarith [hE1, hE2]
      unfold K0 at h0
      rcases mul_eq_zero.mp h0 with h | h
      · rcases he3 with rfl | rfl <;> norm_num at h
      · rcases mul_eq_zero.mp h with h | h
        · exact pow_ne_zero 2 (Int.natCast_ne_zero.mpr hq.out.pos.ne') h
        · exact hI h
    · have h0 : e3 * K0 q A B = 0 := by linarith [hE1, hE2]
      unfold K0 at h0
      rcases mul_eq_zero.mp h0 with h | h
      · rcases he3 with rfl | rfl <;> norm_num at h
      · rcases mul_eq_zero.mp h with h | h
        · exact pow_ne_zero 2 (Int.natCast_ne_zero.mpr hq.out.pos.ne') h
        · exact hI h
    · have h0 : e4 * K1 p C D = 0 := by linarith [hE1, hE2]
      unfold K1 at h0
      rcases mul_eq_zero.mp h0 with h | h
      · rcases he4 with rfl | rfl <;> norm_num at h
      · rcases mul_eq_zero.mp h with h | h
        · exact pow_ne_zero 2 (Int.natCast_ne_zero.mpr hp.out.pos.ne') h
        · exact hY h

set_option maxHeartbeats 1600000 in
/-- Core of the {K2, K3} dispatch after sign-splitting: the system
I·X = f·Kc1, R·Y = g·Kc2 with unit f, g and both classes disjunctive. -/
lemma mixed_pair_core
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Kc1 Kc2 f g : ℤ) (hf : f = 1 ∨ f = -1) (hg : g = 1 ∨ g = -1)
    (hc1 : Kc1 = K0 q A B ∨ Kc1 = K1 p C D ∨ Kc1 = K2 A B C D ∨ Kc1 = K3 A B C D)
    (hc2 : Kc2 = K0 q A B ∨ Kc2 = K1 p C D ∨ Kc2 = K2 A B C D ∨ Kc2 = K3 A B C D)
    (hIX : (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) = f * Kc1)
    (hRY : (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) = g * Kc2) :
    False := by
  have hI0 : (((⟨A, B⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero p hpodd A B hpAB
  have hY0 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero q hqodd C D hqCD
  have hR0 : (((⟨A, B⟩ : GaussianInt) ^ 4).re) ≠ 0 := odd_ne_zero (re4_odd' p hpodd A B hpAB)
  have hX0 : (((⟨C, D⟩ : GaussianInt) ^ 4).re) ≠ 0 := odd_ne_zero (re4_odd' q hqodd C D hqCD)
  have hpn := norm4_coord p A B hpAB
  have hqn := norm4_coord q C D hqCD
  -- abbreviate via generalize to keep terms small
  generalize hRdef : (((⟨A, B⟩ : GaussianInt) ^ 4).re) = R at *
  generalize hIdef : (((⟨A, B⟩ : GaussianInt) ^ 4).im) = I at *
  generalize hXdef : (((⟨C, D⟩ : GaussianInt) ^ 4).re) = X at *
  generalize hYdef : (((⟨C, D⟩ : GaussianInt) ^ 4).im) = Y at *
  have hK2c : K2 A B C D = R * Y + I * X := by
    rw [K2_coord, hRdef, hIdef, hXdef, hYdef]
  have hK3c : K3 A B C D = I * X - R * Y := by
    rw [K3_coord, hRdef, hIdef, hXdef, hYdef]
  have hK0c : K0 q A B = (q : ℤ) ^ 2 * I := by unfold K0; rw [hIdef]
  have hK1c : K1 p C D = (p : ℤ) ^ 2 * Y := by unfold K1; rw [hYdef]
  have hIX0 : I * X ≠ 0 := mul_ne_zero hI0 hX0
  have hRY0 : R * Y ≠ 0 := mul_ne_zero hR0 hY0
  have hcancelI : ∀ t : ℤ, I * t = 0 → t = 0 := fun t ht => by
    rcases mul_eq_zero.mp ht with h | h
    · exact absurd h hI0
    · exact h
  have hcancelY : ∀ t : ℤ, Y * t = 0 → t = 0 := fun t ht => by
    rcases mul_eq_zero.mp ht with h | h
    · exact absurd h hY0
    · exact h
  have hfsq : f * f = 1 := by rcases hf with rfl | rfl <;> norm_num
  have hgsq : g * g = 1 := by rcases hg with rfl | rfl <;> norm_num
  have hIsq : (0 : ℤ) < I ^ 2 := pow_two_pos_of_ne_zero hI0
  have hYsq : (0 : ℤ) < Y ^ 2 := pow_two_pos_of_ne_zero hY0
  rcases hc1 with rfl | rfl | rfl | rfl
  · -- IX-side K0: X = f·q², pinch via hqn
    rw [hK0c] at hIX
    have hXq : X = f * (q : ℤ) ^ 2 := by
      have h2 := hcancelI (X - f * (q : ℤ) ^ 2) (by linear_combination hIX)
      linarith
    have hXsq : X ^ 2 = (q : ℤ) ^ 4 := by rw [hXq]; nlinarith [hfsq]
    nlinarith [hqn, hXsq, hYsq]
  · -- IX-side K1: I·X = f·p²·Y, needs RY-side
    rw [hK1c] at hIX
    rcases hc2 with rfl | rfl | rfl | rfl
    · -- RY = g·q²·I: pinch product
      rw [hK0c] at hRY
      have hRb : R ^ 2 < (p : ℤ) ^ 4 := by nlinarith [hIsq, hpn]
      have hXb : X ^ 2 < (q : ℤ) ^ 4 := by nlinarith [hYsq, hqn]
      exact resid_pinch_product p q hpodd hqodd R I X Y g f hI0 hY0 hg hf hRb hXb
        (by exact_mod_cast hp.out.pos) (by exact_mod_cast hq.out.pos)
        (by linear_combination -hRY) (by linear_combination -hIX)
    · -- RY = g·p²·Y: R = g·p², forces I = 0
      rw [hK1c] at hRY
      have hRp : R = g * (p : ℤ) ^ 2 := by
        have h2 := hcancelY (R - g * (p : ℤ) ^ 2) (by linear_combination hRY)
        linarith
      have hRsq : R ^ 2 = (p : ℤ) ^ 4 := by rw [hRp]; nlinarith [hgsq]
      nlinarith [hpn, hRsq, hIsq]
    · -- RY = g·(RY + IX)
      rw [hK2c] at hRY
      rcases hg with rfl | rfl
      · exact hIX0 (by linarith [hRY])
      · have hA : 2 * (R * Y) = -(I * X) := by linarith [hRY]
        have h2 := hcancelY (2 * R + f * (p : ℤ) ^ 2) (by linear_combination hA - hIX)
        exact resid_p2_even p hpodd (-(f * R)) (by linear_combination f * h2 - (p : ℤ) ^ 2 * hfsq)
    · -- RY = g·(IX − RY)
      rw [hK3c] at hRY
      rcases hg with rfl | rfl
      · have hA : 2 * (R * Y) = I * X := by linarith [hRY]
        have h2 := hcancelY (2 * R - f * (p : ℤ) ^ 2) (by linear_combination hA + hIX)
        exact resid_p2_even p hpodd (f * R) (by linear_combination -f * h2 - (p : ℤ) ^ 2 * hfsq)
      · exact hIX0 (by linarith [hRY])
  · -- IX-side K2: I·X = f·(RY + IX)
    rw [hK2c] at hIX
    rcases hf with rfl | rfl
    · exact hRY0 (by linarith [hIX])
    · have hA : 2 * (I * X) = -(R * Y) := by linarith [hIX]
      rcases hc2 with rfl | rfl | rfl | rfl
      · rw [hK0c] at hRY
        have h2 := hcancelI (2 * X + g * (q : ℤ) ^ 2) (by linear_combination hA - hRY)
        exact resid_p2_even q hqodd (-(g * X)) (by linear_combination g * h2 - (q : ℤ) ^ 2 * hgsq)
      · rw [hK1c] at hRY
        have hRp : R = g * (p : ℤ) ^ 2 := by
          have h2 := hcancelY (R - g * (p : ℤ) ^ 2) (by linear_combination hRY)
          linarith
        have hRsq : R ^ 2 = (p : ℤ) ^ 4 := by rw [hRp]; nlinarith [hgsq]
        nlinarith [hpn, hRsq, hIsq]
      · rw [hK2c] at hRY
        rcases hg with rfl | rfl
        · exact hIX0 (by linarith [hRY])
        · have hB : 2 * (R * Y) = -(I * X) := by linarith [hRY]
          exact hIX0 (by linarith [hA, hB])
      · rw [hK3c] at hRY
        rcases hg with rfl | rfl
        · have hB : 2 * (R * Y) = I * X := by linarith [hRY]
          exact hRY0 (by linarith [hA, hB])
        · exact hIX0 (by linarith [hRY])
  · -- IX-side K3: I·X = f·(IX − RY)
    rw [hK3c] at hIX
    rcases hf with rfl | rfl
    · exact hRY0 (by linarith [hIX])
    · have hA : 2 * (I * X) = R * Y := by linarith [hIX]
      rcases hc2 with rfl | rfl | rfl | rfl
      · rw [hK0c] at hRY
        have h2 := hcancelI (2 * X - g * (q : ℤ) ^ 2) (by linear_combination hA + hRY)
        exact resid_p2_even q hqodd (g * X) (by linear_combination -g * h2 - (q : ℤ) ^ 2 * hgsq)
      · rw [hK1c] at hRY
        have hRp : R = g * (p : ℤ) ^ 2 := by
          have h2 := hcancelY (R - g * (p : ℤ) ^ 2) (by linear_combination hRY)
          linarith
        have hRsq : R ^ 2 = (p : ℤ) ^ 4 := by rw [hRp]; nlinarith [hgsq]
        nlinarith [hpn, hRsq, hIsq]
      · rw [hK2c] at hRY
        rcases hg with rfl | rfl
        · exact hIX0 (by linarith [hRY])
        · have hB : 2 * (R * Y) = -(I * X) := by linarith [hRY]
          exact hRY0 (by linarith [hA, hB])
      · rw [hK3c] at hRY
        rcases hg with rfl | rfl
        · have hB : 2 * (R * Y) = I * X := by linarith [hRY]
          exact hIX0 (by linarith [hA, hB])
        · exact hIX0 (by linarith [hRY])

/-- Dispatch for {u+v, u−v} classes {K2, K3}. -/
lemma dispatch_23
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Ka Kb e1 e2 e3 e4 : ℤ)
    (he1 : e1 = 1 ∨ e1 = -1) (he2 : e2 = 1 ∨ e2 = -1)
    (he3 : e3 = 1 ∨ e3 = -1) (he4 : e4 = 1 ∨ e4 = -1)
    (ha : Ka = K0 q A B ∨ Ka = K1 p C D ∨ Ka = K2 A B C D ∨ Ka = K3 A B C D)
    (hb : Kb = K0 q A B ∨ Kb = K1 p C D ∨ Kb = K2 A B C D ∨ Kb = K3 A B C D)
    (hE1 : e3 * K2 A B C D + e4 * K3 A B C D = 2 * e1 * Ka)
    (hE2 : e3 * K2 A B C D - e4 * K3 A B C D = 2 * e2 * Kb) : False := by
  have hK2c := K2_coord A B C D
  have hK3c := K3_coord A B C D
  rw [hK2c, hK3c] at hE1 hE2
  rcases he3 with rfl | rfl <;> rcases he4 with rfl | rfl
  · -- e3 = e4 = 1: 2IX = 2e1Ka, 2RY = 2e2Kb
    exact mixed_pair_core p q hpodd hqodd hpq A B C D hpAB hqCD Ka Kb e1 e2 he1 he2 ha hb
      (by linarith [hE1]) (by linarith [hE2])
  · -- e3 = 1, e4 = -1: 2RY = 2e1Ka, 2IX = 2e2Kb
    exact mixed_pair_core p q hpodd hqodd hpq A B C D hpAB hqCD Kb Ka e2 e1 he2 he1 hb ha
      (by linarith [hE2]) (by linarith [hE1])
  · -- e3 = -1, e4 = 1: 2RY = −2e1Ka i.e. RY = (−e1)Ka; 2IX = −2e2Kb
    exact mixed_pair_core p q hpodd hqodd hpq A B C D hpAB hqCD Kb Ka (-e2) (-e1)
      (by rcases he2 with rfl | rfl <;> norm_num)
      (by rcases he1 with rfl | rfl <;> norm_num) hb ha
      (by linarith [hE2]) (by linarith [hE1])
  · -- e3 = e4 = -1: 2IX = −2e1Ka, 2RY = −2e2Kb
    exact mixed_pair_core p q hpodd hqodd hpq A B C D hpAB hqCD Ka Kb (-e1) (-e2)
      (by rcases he1 with rfl | rfl <;> norm_num)
      (by rcases he2 with rfl | rfl <;> norm_num) ha hb
      (by linarith [hE1]) (by linarith [hE2])

/-- Bridge from the dispatch-level ratio system to resid_ratio_core,
absorbing the sign σ into the X coordinate. -/
lemma ratio_bridge
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (e1 e3 σ τ : ℤ) (he1 : e1 = 1 ∨ e1 = -1) (he3 : e3 = 1 ∨ e3 = -1)
    (hσ : σ = 1 ∨ σ = -1) (hτ : τ = 1 ∨ τ = -1)
    (hiii : e1 * ((p : ℤ) ^ 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).im))
      = σ * (2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)))
    (hii : e3 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))
      = σ * (3 * (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
        + τ * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) : False := by
  have hI0 : (((⟨A, B⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero p hpodd A B hpAB
  have hY0 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero q hqodd C D hqCD
  have hRI := coprime_re4_im4 p hpodd A B hpAB
  have hXY := coprime_re4_im4 q hqodd C D hqCD
  have hpn := norm4_coord p A B hpAB
  have hqn := norm4_coord q C D hqCD
  have hw : e1 * σ = 1 ∨ e1 * σ = -1 := by
    rcases he1 with rfl | rfl <;> rcases hσ with rfl | rfl <;> norm_num
  have hwsq : (e1 * σ) * (e1 * σ) = 1 := by
    rcases hw with h | h <;> rw [h] <;> norm_num
  have he1sq : e1 * e1 = 1 := by rcases he1 with rfl | rfl <;> norm_num
  have hσsq : σ * σ = 1 := by rcases hσ with rfl | rfl <;> norm_num
  refine resid_ratio_core p q hpodd hqodd hpq
    (by exact_mod_cast hp.out.pos) (by exact_mod_cast hq.out.pos)
    (((⟨A, B⟩ : GaussianInt) ^ 4).re) (((⟨A, B⟩ : GaussianInt) ^ 4).im)
    (e1 * σ * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) (((⟨C, D⟩ : GaussianInt) ^ 4).im)
    hI0 hY0 hRI ?_ hpn ?_
    e3 e1 (-τ) he3 he1 (by rcases hτ with rfl | rfl <;> norm_num) ?_ ?_
  · -- coprimality with the sign-absorbed X
    rcases hw with h | h <;> rw [h]
    · simpa using hXY
    · rw [show (-1 : ℤ) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)
        = -((((⟨C, D⟩ : GaussianInt) ^ 4).re)) from by ring]
      exact hXY.neg_left
  · -- norm identity with the sign-absorbed X
    have : (e1 * σ * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) ^ 2
        = (((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 := by
      linear_combination ((((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2) * hwsq
    linarith [hqn, this]
  · -- hiii normalized
    linear_combination e1 * hiii - (p : ℤ) ^ 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).im) * he1sq
  · -- hii normalized
    linear_combination hii - 3 * σ * (((⟨A, B⟩ : GaussianInt) ^ 4).im)
      * (((⟨C, D⟩ : GaussianInt) ^ 4).re) * he1sq

set_option maxHeartbeats 1600000 in
/-- Dispatch for {u+v, u−v} classes {K0, K2}. -/
lemma dispatch_02
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Ka Kb e1 e2 e3 e4 : ℤ)
    (he1 : e1 = 1 ∨ e1 = -1) (he2 : e2 = 1 ∨ e2 = -1)
    (he3 : e3 = 1 ∨ e3 = -1) (he4 : e4 = 1 ∨ e4 = -1)
    (ha : Ka = K0 q A B ∨ Ka = K1 p C D ∨ Ka = K2 A B C D ∨ Ka = K3 A B C D)
    (hb : Kb = K0 q A B ∨ Kb = K1 p C D ∨ Kb = K2 A B C D ∨ Kb = K3 A B C D)
    (hE1 : e3 * K0 q A B + e4 * K2 A B C D = 2 * e1 * Ka)
    (hE2 : e3 * K0 q A B - e4 * K2 A B C D = 2 * e2 * Kb) : False := by
  have hq4 : q % 4 = 1 := rep_mod_four q hqodd C D hqCD
  have hI0 : (((⟨A, B⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero p hpodd A B hpAB
  have hY0 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero q hqodd C D hqCD
  have hsmall : ∀ c : ℤ, c ≠ 0 → |c| ≤ 3 → ¬ (q : ℤ) ∣ c := fun c h1 h2 =>
    useful_not_dvd_small q hq4 c h1 h2
  rcases ha with rfl | rfl | rfl | rfl
  · -- a = K0: (2e1 − e3)K0 = e4·K2
    refine twoterm_q_mixed p q hpodd hqodd hpq A B C D hpAB hqCD (2 * e1 - e3) e4
      (hsmall e4 (by rcases he4 with rfl | rfl <;> norm_num)
        (by rcases he4 with rfl | rfl <;> norm_num)) ?_
    unfold K0 K2 at hE1
    linear_combination -hE1
  · -- a = K1
    rcases hb with rfl | rfl | rfl | rfl
    · -- b = K0: E2 collapse
      refine twoterm_q_mixed p q hpodd hqodd hpq A B C D hpAB hqCD (2 * e2 - e3) (-e4)
        (hsmall (-e4) (by rcases he4 with rfl | rfl <;> norm_num)
          (by rcases he4 with rfl | rfl <;> norm_num)) ?_
      unfold K0 K2 at hE2
      linear_combination -hE2
    · -- b = K1: sum degenerate or qI_pY
      rcases he1 with rfl | rfl <;> rcases he2 with rfl | rfl
      · refine twoterm_qI_pY p q hpodd hqodd hpq A B C D hpAB hqCD e3 2
          (hsmall 2 (by norm_num) (by norm_num)) ?_
        unfold K0 K1 at hE1 hE2
        linarith [hE1, hE2]
      · have h0 : e3 * K0 q A B = 0 := by linarith [hE1, hE2]
        unfold K0 at h0
        rcases mul_eq_zero.mp h0 with h | h
        · rcases he3 with rfl | rfl <;> norm_num at h
        · rcases mul_eq_zero.mp h with h | h
          · exact pow_ne_zero 2 (Int.natCast_ne_zero.mpr hq.out.pos.ne') h
          · exact hI0 h
      · have h0 : e3 * K0 q A B = 0 := by linarith [hE1, hE2]
        unfold K0 at h0
        rcases mul_eq_zero.mp h0 with h | h
        · rcases he3 with rfl | rfl <;> norm_num at h
        · rcases mul_eq_zero.mp h with h | h
          · exact pow_ne_zero 2 (Int.natCast_ne_zero.mpr hq.out.pos.ne') h
          · exact hI0 h
      · refine twoterm_qI_pY p q hpodd hqodd hpq A B C D hpAB hqCD e3 (-2)
          (hsmall (-2) (by norm_num) (by norm_num)) ?_
        unfold K0 K1 at hE1 hE2
        linarith [hE1, hE2]
    · -- b = K2: E2 collapse
      refine twoterm_q_mixed p q hpodd hqodd hpq A B C D hpAB hqCD e3 (2 * e2 + e4)
        (hsmall _ (by rcases he2 with rfl | rfl <;> rcases he4 with rfl | rfl <;> norm_num)
          (by rcases he2 with rfl | rfl <;> rcases he4 with rfl | rfl <;>
            simp [abs_le] <;> norm_num)) ?_
      unfold K0 K2 at hE2
      linear_combination hE2
    · -- b = K3: the ratio case
      have hsum : e3 * K0 q A B = e1 * K1 p C D + e2 * K3 A B C D := by
        linarith [hE1, hE2]
      have hdiff : e4 * K2 A B C D = e1 * K1 p C D - e2 * K3 A B C D := by
        linarith [hE1, hE2]
      unfold K0 K1 at hsum hdiff
      rw [K3_coord] at hsum hdiff
      rw [K2_coord] at hdiff
      rcases he2 with rfl | rfl <;> rcases he4 with rfl | rfl
      · -- (e2,e4) = (1,1): ratio σ = +1
        have hiii : e1 * ((p : ℤ) ^ 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).im))
            = 1 * (2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) := by
          linarith [hdiff]
        have hii : e3 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))
            = 1 * (3 * (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
              + (-1) * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) := by
          linarith [hsum, hiii]
        exact ratio_bridge p q hpodd hqodd hpq A B C D hpAB hqCD e1 e3 1 (-1) he1 he3
          (Or.inl rfl) (Or.inr rfl) hiii hii
      · -- (1,-1): parity, e1p²Y = −2RY
        have h2 : (((⟨C, D⟩ : GaussianInt) ^ 4).im)
            * (e1 * (p : ℤ) ^ 2 + 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re)) = 0 := by
          linear_combination -hdiff
        rcases mul_eq_zero.mp h2 with h | h
        · exact hY0 h
        · exact resid_p2_even p hpodd (-(e1 * (((⟨A, B⟩ : GaussianInt) ^ 4).re)))
            (by rcases he1 with rfl | rfl <;> linarith [h])
      · -- (-1,1): parity, e1p²Y = 2RY
        have h2 : (((⟨C, D⟩ : GaussianInt) ^ 4).im)
            * (e1 * (p : ℤ) ^ 2 - 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re)) = 0 := by
          linear_combination -hdiff
        rcases mul_eq_zero.mp h2 with h | h
        · exact hY0 h
        · exact resid_p2_even p hpodd (e1 * (((⟨A, B⟩ : GaussianInt) ^ 4).re))
            (by rcases he1 with rfl | rfl <;> linarith [h])
      · -- (-1,-1): ratio σ = −1
        have hiii : e1 * ((p : ℤ) ^ 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).im))
            = (-1) * (2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) := by
          linarith [hdiff]
        have hii : e3 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))
            = (-1) * (3 * (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
              + 1 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) := by
          linarith [hsum, hiii]
        exact ratio_bridge p q hpodd hqodd hpq A B C D hpAB hqCD e1 e3 (-1) 1 he1 he3
          (Or.inr rfl) (Or.inl rfl) hiii hii
  · -- a = K2: E1 collapse
    refine twoterm_q_mixed p q hpodd hqodd hpq A B C D hpAB hqCD e3 (2 * e1 - e4)
      (hsmall _ (by rcases he1 with rfl | rfl <;> rcases he4 with rfl | rfl <;> norm_num)
        (by rcases he1 with rfl | rfl <;> rcases he4 with rfl | rfl <;>
          simp [abs_le] <;> norm_num)) ?_
    unfold K0 K2 at hE1
    linear_combination hE1
  · -- a = K3
    rcases hb with rfl | rfl | rfl | rfl
    · refine twoterm_q_mixed p q hpodd hqodd hpq A B C D hpAB hqCD (2 * e2 - e3) (-e4)
        (hsmall (-e4) (by rcases he4 with rfl | rfl <;> norm_num)
          (by rcases he4 with rfl | rfl <;> norm_num)) ?_
      unfold K0 K2 at hE2
      linear_combination -hE2
    · -- b = K1: ratio mirror (roles of E1/E2 swapped)
      have hsum : e3 * K0 q A B = e1 * K3 A B C D + e2 * K1 p C D := by
        linarith [hE1, hE2]
      have hdiff : e4 * K2 A B C D = e1 * K3 A B C D - e2 * K1 p C D := by
        linarith [hE1, hE2]
      unfold K0 K1 at hsum hdiff
      rw [K3_coord] at hsum hdiff
      rw [K2_coord] at hdiff
      rcases he1 with rfl | rfl <;> rcases he4 with rfl | rfl
      · -- (e1,e4) = (1,1): parity, e2p²Y = −2RY
        have h2 : (((⟨C, D⟩ : GaussianInt) ^ 4).im)
            * (e2 * (p : ℤ) ^ 2 + 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re)) = 0 := by
          linear_combination hdiff
        rcases mul_eq_zero.mp h2 with h | h
        · exact hY0 h
        · exact resid_p2_even p hpodd (-(e2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re)))
            (by rcases he2 with rfl | rfl <;> linarith [h])
      · -- (1,-1): ratio σ = +1
        have hiii : e2 * ((p : ℤ) ^ 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).im))
            = 1 * (2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) := by
          linarith [hdiff]
        have hii : e3 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))
            = 1 * (3 * (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
              + (-1) * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) := by
          linarith [hsum, hiii]
        exact ratio_bridge p q hpodd hqodd hpq A B C D hpAB hqCD e2 e3 1 (-1) he2 he3
          (Or.inl rfl) (Or.inr rfl) hiii hii
      · -- (-1,1): ratio σ = −1
        have hiii : e2 * ((p : ℤ) ^ 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).im))
            = (-1) * (2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) := by
          linarith [hdiff]
        have hii : e3 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))
            = (-1) * (3 * (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
              + 1 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) := by
          linarith [hsum, hiii]
        exact ratio_bridge p q hpodd hqodd hpq A B C D hpAB hqCD e2 e3 (-1) 1 he2 he3
          (Or.inr rfl) (Or.inl rfl) hiii hii
      · -- (-1,-1): parity, e2p²Y = 2RY
        have h2 : (((⟨C, D⟩ : GaussianInt) ^ 4).im)
            * (e2 * (p : ℤ) ^ 2 - 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re)) = 0 := by
          linear_combination hdiff
        rcases mul_eq_zero.mp h2 with h | h
        · exact hY0 h
        · exact resid_p2_even p hpodd (e2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re))
            (by rcases he2 with rfl | rfl <;> linarith [h])
    · refine twoterm_q_mixed p q hpodd hqodd hpq A B C D hpAB hqCD e3 (2 * e2 + e4)
        (hsmall _ (by rcases he2 with rfl | rfl <;> rcases he4 with rfl | rfl <;> norm_num)
          (by rcases he2 with rfl | rfl <;> rcases he4 with rfl | rfl <;>
            simp [abs_le] <;> norm_num)) ?_
      unfold K0 K2 at hE2
      linear_combination hE2
    · -- b = K3: degenerate
      rcases he1 with rfl | rfl <;> rcases he2 with rfl | rfl
      · have h0 : e4 * K2 A B C D = 0 := by linarith [hE1, hE2]
        rcases mul_eq_zero.mp h0 with h | h
        · rcases he4 with rfl | rfl <;> norm_num at h
        · exact absurd h (by
            unfold K2
            have := im_prod_pow_ne_zero p q hpodd hqodd hpq A B C D hpAB hqCD 0 0
            simpa using this)
      · have h0 : e3 * K0 q A B = 0 := by linarith [hE1, hE2]
        unfold K0 at h0
        rcases mul_eq_zero.mp h0 with h | h
        · rcases he3 with rfl | rfl <;> norm_num at h
        · rcases mul_eq_zero.mp h with h | h
          · exact pow_ne_zero 2 (Int.natCast_ne_zero.mpr hq.out.pos.ne') h
          · exact hI0 h
      · have h0 : e3 * K0 q A B = 0 := by linarith [hE1, hE2]
        unfold K0 at h0
        rcases mul_eq_zero.mp h0 with h | h
        · rcases he3 with rfl | rfl <;> norm_num at h
        · rcases mul_eq_zero.mp h with h | h
          · exact pow_ne_zero 2 (Int.natCast_ne_zero.mpr hq.out.pos.ne') h
          · exact hI0 h
      · have h0 : e4 * K2 A B C D = 0 := by linarith [hE1, hE2]
        rcases mul_eq_zero.mp h0 with h | h
        · rcases he4 with rfl | rfl <;> norm_num at h
        · exact absurd h (by
            unfold K2
            have := im_prod_pow_ne_zero p q hpodd hqodd hpq A B C D hpAB hqCD 0 0
            simpa using this)

/-- K3-variant of the two-term mixed kill, via the D ↦ −D mirror. -/
lemma twoterm_q_mixed3
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (c1 c2 : ℤ) (hc2 : ¬ (q : ℤ) ∣ c2)
    (h : c1 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im)) = c2 * K3 A B C D) : False := by
  have hqCD' : C ^ 2 + (-D) ^ 2 = q := by rw [neg_pow]; ring_nf; linarith [hqCD]
  refine twoterm_q_mixed p q hpodd hqodd hpq A B C (-D) hpAB hqCD' c1 c2 hc2 ?_
  have hmk : (⟨C, -D⟩ : GaussianInt) = star (⟨C, D⟩ : GaussianInt) := by ext <;> simp
  rw [hmk, show (star (⟨C, D⟩ : GaussianInt)) ^ 4 = star ((⟨C, D⟩ : GaussianInt) ^ 4)
    from (star_pow _ _).symm]
  unfold K3 at h
  rw [show ((⟨A, B⟩ : GaussianInt) ^ 4 * star ((⟨C, D⟩ : GaussianInt) ^ 4)).im
      = ((⟨A, B⟩ : GaussianInt) ^ 4 * (star (⟨C, D⟩ : GaussianInt)) ^ 4).im
    from by rw [star_pow]]
  exact h

set_option maxHeartbeats 1600000 in
/-- Dispatch for {u+v, u−v} classes {K0, K3}. -/
lemma dispatch_03
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Ka Kb e1 e2 e3 e4 : ℤ)
    (he1 : e1 = 1 ∨ e1 = -1) (he2 : e2 = 1 ∨ e2 = -1)
    (he3 : e3 = 1 ∨ e3 = -1) (he4 : e4 = 1 ∨ e4 = -1)
    (ha : Ka = K0 q A B ∨ Ka = K1 p C D ∨ Ka = K2 A B C D ∨ Ka = K3 A B C D)
    (hb : Kb = K0 q A B ∨ Kb = K1 p C D ∨ Kb = K2 A B C D ∨ Kb = K3 A B C D)
    (hE1 : e3 * K0 q A B + e4 * K3 A B C D = 2 * e1 * Ka)
    (hE2 : e3 * K0 q A B - e4 * K3 A B C D = 2 * e2 * Kb) : False := by
  have hq4 : q % 4 = 1 := rep_mod_four q hqodd C D hqCD
  have hI0 : (((⟨A, B⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero p hpodd A B hpAB
  have hY0 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero q hqodd C D hqCD
  have hK3ne : K3 A B C D ≠ 0 := by
    unfold K3
    have hqCD' : C ^ 2 + (-D) ^ 2 = q := by rw [neg_pow]; ring_nf; linarith [hqCD]
    have := im_prod_pow_ne_zero p q hpodd hqodd hpq A B C (-D) hpAB hqCD' 0 0
    have hmk : (⟨C, -D⟩ : GaussianInt) = star (⟨C, D⟩ : GaussianInt) := by ext <;> simp
    rw [hmk] at this
    simpa [star_pow] using this
  have hsmall : ∀ c : ℤ, c ≠ 0 → |c| ≤ 3 → ¬ (q : ℤ) ∣ c := fun c h1 h2 =>
    useful_not_dvd_small q hq4 c h1 h2
  rcases ha with rfl | rfl | rfl | rfl
  · -- a = K0
    refine twoterm_q_mixed3 p q hpodd hqodd hpq A B C D hpAB hqCD (2 * e1 - e3) e4
      (hsmall e4 (by rcases he4 with rfl | rfl <;> norm_num)
        (by rcases he4 with rfl | rfl <;> norm_num)) ?_
    unfold K0 at hE1
    linear_combination -hE1
  · -- a = K1
    rcases hb with rfl | rfl | rfl | rfl
    · refine twoterm_q_mixed3 p q hpodd hqodd hpq A B C D hpAB hqCD (2 * e2 - e3) (-e4)
        (hsmall (-e4) (by rcases he4 with rfl | rfl <;> norm_num)
          (by rcases he4 with rfl | rfl <;> norm_num)) ?_
      unfold K0 at hE2
      linear_combination -hE2
    · rcases he1 with rfl | rfl <;> rcases he2 with rfl | rfl
      · refine twoterm_qI_pY p q hpodd hqodd hpq A B C D hpAB hqCD e3 2
          (hsmall 2 (by norm_num) (by norm_num)) ?_
        unfold K0 K1 at hE1 hE2
        linarith [hE1, hE2]
      · have h0 : e3 * K0 q A B = 0 := by linarith [hE1, hE2]
        unfold K0 at h0
        rcases mul_eq_zero.mp h0 with h | h
        · rcases he3 with rfl | rfl <;> norm_num at h
        · rcases mul_eq_zero.mp h with h | h
          · exact pow_ne_zero 2 (Int.natCast_ne_zero.mpr hq.out.pos.ne') h
          · exact hI0 h
      · have h0 : e3 * K0 q A B = 0 := by linarith [hE1, hE2]
        unfold K0 at h0
        rcases mul_eq_zero.mp h0 with h | h
        · rcases he3 with rfl | rfl <;> norm_num at h
        · rcases mul_eq_zero.mp h with h | h
          · exact pow_ne_zero 2 (Int.natCast_ne_zero.mpr hq.out.pos.ne') h
          · exact hI0 h
      · refine twoterm_qI_pY p q hpodd hqodd hpq A B C D hpAB hqCD e3 (-2)
          (hsmall (-2) (by norm_num) (by norm_num)) ?_
        unfold K0 K1 at hE1 hE2
        linarith [hE1, hE2]
    · -- b = K2: ratio case
      have hsum : e3 * K0 q A B = e1 * K1 p C D + e2 * K2 A B C D := by
        linarith [hE1, hE2]
      have hdiff : e4 * K3 A B C D = e1 * K1 p C D - e2 * K2 A B C D := by
        linarith [hE1, hE2]
      unfold K0 K1 at hsum hdiff
      rw [K2_coord] at hsum hdiff
      rw [K3_coord] at hdiff
      rcases he2 with rfl | rfl <;> rcases he4 with rfl | rfl
      · -- (1,1): 2IX = e1p²Y, σ = +1, τ = +1
        have hiii : e1 * ((p : ℤ) ^ 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).im))
            = 1 * (2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) := by
          linarith [hdiff]
        have hii : e3 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))
            = 1 * (3 * (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
              + 1 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) := by
          linarith [hsum, hiii]
        exact ratio_bridge p q hpodd hqodd hpq A B C D hpAB hqCD e1 e3 1 1 he1 he3
          (Or.inl rfl) (Or.inl rfl) hiii hii
      · -- (1,-1): parity 2RY = e1p²Y
        have h2 : (((⟨C, D⟩ : GaussianInt) ^ 4).im)
            * (e1 * (p : ℤ) ^ 2 - 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re)) = 0 := by
          linear_combination -hdiff
        rcases mul_eq_zero.mp h2 with h | h
        · exact hY0 h
        · exact resid_p2_even p hpodd (e1 * (((⟨A, B⟩ : GaussianInt) ^ 4).re))
            (by rcases he1 with rfl | rfl <;> linarith [h])
      · -- (-1,1): parity −2RY = e1p²Y
        have h2 : (((⟨C, D⟩ : GaussianInt) ^ 4).im)
            * (e1 * (p : ℤ) ^ 2 + 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re)) = 0 := by
          linear_combination -hdiff
        rcases mul_eq_zero.mp h2 with h | h
        · exact hY0 h
        · exact resid_p2_even p hpodd (-(e1 * (((⟨A, B⟩ : GaussianInt) ^ 4).re)))
            (by rcases he1 with rfl | rfl <;> linarith [h])
      · -- (-1,-1): σ = −1, τ = −1
        have hiii : e1 * ((p : ℤ) ^ 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).im))
            = (-1) * (2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) := by
          linarith [hdiff]
        have hii : e3 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))
            = (-1) * (3 * (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
              + (-1) * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) := by
          linarith [hsum, hiii]
        exact ratio_bridge p q hpodd hqodd hpq A B C D hpAB hqCD e1 e3 (-1) (-1) he1 he3
          (Or.inr rfl) (Or.inr rfl) hiii hii
    · -- b = K3: E2 collapse
      refine twoterm_q_mixed3 p q hpodd hqodd hpq A B C D hpAB hqCD e3 (2 * e2 + e4)
        (hsmall _ (by rcases he2 with rfl | rfl <;> rcases he4 with rfl | rfl <;> norm_num)
          (by rcases he2 with rfl | rfl <;> rcases he4 with rfl | rfl <;>
            simp [abs_le] <;> norm_num)) ?_
      unfold K0 at hE2
      linear_combination hE2
  · -- a = K2: partner analysis with b
    rcases hb with rfl | rfl | rfl | rfl
    · refine twoterm_q_mixed3 p q hpodd hqodd hpq A B C D hpAB hqCD (2 * e2 - e3) (-e4)
        (hsmall (-e4) (by rcases he4 with rfl | rfl <;> norm_num)
          (by rcases he4 with rfl | rfl <;> norm_num)) ?_
      unfold K0 at hE2
      linear_combination -hE2
    · -- b = K1: ratio mirror
      have hsum : e3 * K0 q A B = e1 * K2 A B C D + e2 * K1 p C D := by
        linarith [hE1, hE2]
      have hdiff : e4 * K3 A B C D = e1 * K2 A B C D - e2 * K1 p C D := by
        linarith [hE1, hE2]
      unfold K0 K1 at hsum hdiff
      rw [K2_coord] at hsum hdiff
      rw [K3_coord] at hdiff
      rcases he1 with rfl | rfl <;> rcases he4 with rfl | rfl
      · -- (1,1): parity e2p²Y = 2RY
        have h2 : (((⟨C, D⟩ : GaussianInt) ^ 4).im)
            * (e2 * (p : ℤ) ^ 2 - 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re)) = 0 := by
          linear_combination hdiff
        rcases mul_eq_zero.mp h2 with h | h
        · exact hY0 h
        · exact resid_p2_even p hpodd (e2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re))
            (by rcases he2 with rfl | rfl <;> linarith [h])
      · -- (1,-1): σ = +1, τ = +1
        have hiii : e2 * ((p : ℤ) ^ 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).im))
            = 1 * (2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) := by
          linarith [hdiff]
        have hii : e3 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))
            = 1 * (3 * (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
              + 1 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) := by
          linarith [hsum, hiii]
        exact ratio_bridge p q hpodd hqodd hpq A B C D hpAB hqCD e2 e3 1 1 he2 he3
          (Or.inl rfl) (Or.inl rfl) hiii hii
      · -- (-1,1): σ = −1, τ = −1
        have hiii : e2 * ((p : ℤ) ^ 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).im))
            = (-1) * (2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) := by
          linarith [hdiff]
        have hii : e3 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))
            = (-1) * (3 * (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
              + (-1) * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) := by
          linarith [hsum, hiii]
        exact ratio_bridge p q hpodd hqodd hpq A B C D hpAB hqCD e2 e3 (-1) (-1) he2 he3
          (Or.inr rfl) (Or.inr rfl) hiii hii
      · -- (-1,-1): parity e2p²Y = −2RY
        have h2 : (((⟨C, D⟩ : GaussianInt) ^ 4).im)
            * (e2 * (p : ℤ) ^ 2 + 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re)) = 0 := by
          linear_combination hdiff
        rcases mul_eq_zero.mp h2 with h | h
        · exact hY0 h
        · exact resid_p2_even p hpodd (-(e2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re)))
            (by rcases he2 with rfl | rfl <;> linarith [h])
    · -- b = K2: degenerate
      rcases he1 with rfl | rfl <;> rcases he2 with rfl | rfl
      · have h0 : e4 * K3 A B C D = 0 := by linarith [hE1, hE2]
        rcases mul_eq_zero.mp h0 with h | h
        · rcases he4 with rfl | rfl <;> norm_num at h
        · exact absurd h hK3ne
      · have h0 : e3 * K0 q A B = 0 := by linarith [hE1, hE2]
        unfold K0 at h0
        rcases mul_eq_zero.mp h0 with h | h
        · rcases he3 with rfl | rfl <;> norm_num at h
        · rcases mul_eq_zero.mp h with h | h
          · exact pow_ne_zero 2 (Int.natCast_ne_zero.mpr hq.out.pos.ne') h
          · exact hI0 h
      · have h0 : e3 * K0 q A B = 0 := by linarith [hE1, hE2]
        unfold K0 at h0
        rcases mul_eq_zero.mp h0 with h | h
        · rcases he3 with rfl | rfl <;> norm_num at h
        · rcases mul_eq_zero.mp h with h | h
          · exact pow_ne_zero 2 (Int.natCast_ne_zero.mpr hq.out.pos.ne') h
          · exact hI0 h
      · have h0 : e4 * K3 A B C D = 0 := by linarith [hE1, hE2]
        rcases mul_eq_zero.mp h0 with h | h
        · rcases he4 with rfl | rfl <;> norm_num at h
        · exact absurd h hK3ne
    · -- b = K3: E2 collapse
      refine twoterm_q_mixed3 p q hpodd hqodd hpq A B C D hpAB hqCD e3 (2 * e2 + e4)
        (hsmall _ (by rcases he2 with rfl | rfl <;> rcases he4 with rfl | rfl <;> norm_num)
          (by rcases he2 with rfl | rfl <;> rcases he4 with rfl | rfl <;>
            simp [abs_le] <;> norm_num)) ?_
      unfold K0 at hE2
      linear_combination hE2
  · -- a = K3: E1 collapse
    refine twoterm_q_mixed3 p q hpodd hqodd hpq A B C D hpAB hqCD e3 (2 * e1 - e4)
      (hsmall _ (by rcases he1 with rfl | rfl <;> rcases he4 with rfl | rfl <;> norm_num)
        (by rcases he1 with rfl | rfl <;> rcases he4 with rfl | rfl <;>
          simp [abs_le] <;> norm_num)) ?_
    unfold K0 at hE1
    linear_combination hE1

/-- Swap lemmas for the prime-exchange transport. -/
private lemma K01_swap (p : ℕ) (C D : ℤ) : K1 p C D = K0 p C D := rfl
private lemma K2_swap (A B C D : ℤ) : K2 C D A B = K2 A B C D := by
  unfold K2; rw [mul_comm]
private lemma K3_swap (A B C D : ℤ) : K3 C D A B = -(K3 A B C D) := by
  rw [K3_coord, K3_coord]; ring

set_option maxHeartbeats 1600000 in
/-- Dispatch for {u+v, u−v} classes {K1, K2} by prime exchange. -/
lemma dispatch_12
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Ka Kb e1 e2 e3 e4 : ℤ)
    (he1 : e1 = 1 ∨ e1 = -1) (he2 : e2 = 1 ∨ e2 = -1)
    (he3 : e3 = 1 ∨ e3 = -1) (he4 : e4 = 1 ∨ e4 = -1)
    (ha : Ka = K0 q A B ∨ Ka = K1 p C D ∨ Ka = K2 A B C D ∨ Ka = K3 A B C D)
    (hb : Kb = K0 q A B ∨ Kb = K1 p C D ∨ Kb = K2 A B C D ∨ Kb = K3 A B C D)
    (hE1 : e3 * K1 p C D + e4 * K2 A B C D = 2 * e1 * Ka)
    (hE2 : e3 * K1 p C D - e4 * K2 A B C D = 2 * e2 * Kb) : False := by
  have h01 : K1 p C D = K0 p C D := K01_swap p C D
  have h2s : K2 C D A B = K2 A B C D := K2_swap A B C D
  have h3s : K3 C D A B = -(K3 A B C D) := K3_swap A B C D
  rcases ha with rfl | rfl | rfl | rfl <;> rcases hb with rfl | rfl | rfl | rfl
  · exact dispatch_02 q p hqodd hpodd (fun h => hpq h.symm) C D A B hqCD hpAB
      (K0 q A B) (K0 q A B) e1 e2 e3 e4 he1 he2 he3 he4
      (Or.inr (Or.inl (K01_swap q A B).symm)) (Or.inr (Or.inl (K01_swap q A B).symm))
      (by linear_combination hE1 - e3 * h01 + e4 * h2s)
      (by linear_combination hE2 - e3 * h01 - e4 * h2s)
  · exact dispatch_02 q p hqodd hpodd (fun h => hpq h.symm) C D A B hqCD hpAB
      (K0 q A B) (K1 p C D) e1 e2 e3 e4 he1 he2 he3 he4
      (Or.inr (Or.inl (K01_swap q A B).symm)) (Or.inl (K01_swap p C D))
      (by linear_combination hE1 - e3 * h01 + e4 * h2s)
      (by linear_combination hE2 - e3 * h01 - e4 * h2s)
  · exact dispatch_02 q p hqodd hpodd (fun h => hpq h.symm) C D A B hqCD hpAB
      (K0 q A B) (K2 A B C D) e1 e2 e3 e4 he1 he2 he3 he4
      (Or.inr (Or.inl (K01_swap q A B).symm)) (Or.inr (Or.inr (Or.inl (K2_swap A B C D).symm)))
      (by linear_combination hE1 - e3 * h01 + e4 * h2s)
      (by linear_combination hE2 - e3 * h01 - e4 * h2s)
  · exact dispatch_02 q p hqodd hpodd (fun h => hpq h.symm) C D A B hqCD hpAB
      (K0 q A B) (-(K3 A B C D)) e1 (-e2) e3 e4 he1 (by rcases he2 with rfl | rfl <;> norm_num) he3 he4
      (Or.inr (Or.inl (K01_swap q A B).symm)) (Or.inr (Or.inr (Or.inr (by rw [K3_swap A B C D]))))
      (by linear_combination hE1 - e3 * h01 + e4 * h2s)
      (by linear_combination hE2 - e3 * h01 - e4 * h2s)
  · exact dispatch_02 q p hqodd hpodd (fun h => hpq h.symm) C D A B hqCD hpAB
      (K1 p C D) (K0 q A B) e1 e2 e3 e4 he1 he2 he3 he4
      (Or.inl (K01_swap p C D)) (Or.inr (Or.inl (K01_swap q A B).symm))
      (by linear_combination hE1 - e3 * h01 + e4 * h2s)
      (by linear_combination hE2 - e3 * h01 - e4 * h2s)
  · exact dispatch_02 q p hqodd hpodd (fun h => hpq h.symm) C D A B hqCD hpAB
      (K1 p C D) (K1 p C D) e1 e2 e3 e4 he1 he2 he3 he4
      (Or.inl (K01_swap p C D)) (Or.inl (K01_swap p C D))
      (by linear_combination hE1 - e3 * h01 + e4 * h2s)
      (by linear_combination hE2 - e3 * h01 - e4 * h2s)
  · exact dispatch_02 q p hqodd hpodd (fun h => hpq h.symm) C D A B hqCD hpAB
      (K1 p C D) (K2 A B C D) e1 e2 e3 e4 he1 he2 he3 he4
      (Or.inl (K01_swap p C D)) (Or.inr (Or.inr (Or.inl (K2_swap A B C D).symm)))
      (by linear_combination hE1 - e3 * h01 + e4 * h2s)
      (by linear_combination hE2 - e3 * h01 - e4 * h2s)
  · exact dispatch_02 q p hqodd hpodd (fun h => hpq h.symm) C D A B hqCD hpAB
      (K1 p C D) (-(K3 A B C D)) e1 (-e2) e3 e4 he1 (by rcases he2 with rfl | rfl <;> norm_num) he3 he4
      (Or.inl (K01_swap p C D)) (Or.inr (Or.inr (Or.inr (by rw [K3_swap A B C D]))))
      (by linear_combination hE1 - e3 * h01 + e4 * h2s)
      (by linear_combination hE2 - e3 * h01 - e4 * h2s)
  · exact dispatch_02 q p hqodd hpodd (fun h => hpq h.symm) C D A B hqCD hpAB
      (K2 A B C D) (K0 q A B) e1 e2 e3 e4 he1 he2 he3 he4
      (Or.inr (Or.inr (Or.inl (K2_swap A B C D).symm))) (Or.inr (Or.inl (K01_swap q A B).symm))
      (by linear_combination hE1 - e3 * h01 + e4 * h2s)
      (by linear_combination hE2 - e3 * h01 - e4 * h2s)
  · exact dispatch_02 q p hqodd hpodd (fun h => hpq h.symm) C D A B hqCD hpAB
      (K2 A B C D) (K1 p C D) e1 e2 e3 e4 he1 he2 he3 he4
      (Or.inr (Or.inr (Or.inl (K2_swap A B C D).symm))) (Or.inl (K01_swap p C D))
      (by linear_combination hE1 - e3 * h01 + e4 * h2s)
      (by linear_combination hE2 - e3 * h01 - e4 * h2s)
  · exact dispatch_02 q p hqodd hpodd (fun h => hpq h.symm) C D A B hqCD hpAB
      (K2 A B C D) (K2 A B C D) e1 e2 e3 e4 he1 he2 he3 he4
      (Or.inr (Or.inr (Or.inl (K2_swap A B C D).symm))) (Or.inr (Or.inr (Or.inl (K2_swap A B C D).symm)))
      (by linear_combination hE1 - e3 * h01 + e4 * h2s)
      (by linear_combination hE2 - e3 * h01 - e4 * h2s)
  · exact dispatch_02 q p hqodd hpodd (fun h => hpq h.symm) C D A B hqCD hpAB
      (K2 A B C D) (-(K3 A B C D)) e1 (-e2) e3 e4 he1 (by rcases he2 with rfl | rfl <;> norm_num) he3 he4
      (Or.inr (Or.inr (Or.inl (K2_swap A B C D).symm))) (Or.inr (Or.inr (Or.inr (by rw [K3_swap A B C D]))))
      (by linear_combination hE1 - e3 * h01 + e4 * h2s)
      (by linear_combination hE2 - e3 * h01 - e4 * h2s)
  · exact dispatch_02 q p hqodd hpodd (fun h => hpq h.symm) C D A B hqCD hpAB
      (-(K3 A B C D)) (K0 q A B) (-e1) e2 e3 e4 (by rcases he1 with rfl | rfl <;> norm_num) he2 he3 he4
      (Or.inr (Or.inr (Or.inr (by rw [K3_swap A B C D])))) (Or.inr (Or.inl (K01_swap q A B).symm))
      (by linear_combination hE1 - e3 * h01 + e4 * h2s)
      (by linear_combination hE2 - e3 * h01 - e4 * h2s)
  · exact dispatch_02 q p hqodd hpodd (fun h => hpq h.symm) C D A B hqCD hpAB
      (-(K3 A B C D)) (K1 p C D) (-e1) e2 e3 e4 (by rcases he1 with rfl | rfl <;> norm_num) he2 he3 he4
      (Or.inr (Or.inr (Or.inr (by rw [K3_swap A B C D])))) (Or.inl (K01_swap p C D))
      (by linear_combination hE1 - e3 * h01 + e4 * h2s)
      (by linear_combination hE2 - e3 * h01 - e4 * h2s)
  · exact dispatch_02 q p hqodd hpodd (fun h => hpq h.symm) C D A B hqCD hpAB
      (-(K3 A B C D)) (K2 A B C D) (-e1) e2 e3 e4 (by rcases he1 with rfl | rfl <;> norm_num) he2 he3 he4
      (Or.inr (Or.inr (Or.inr (by rw [K3_swap A B C D])))) (Or.inr (Or.inr (Or.inl (K2_swap A B C D).symm)))
      (by linear_combination hE1 - e3 * h01 + e4 * h2s)
      (by linear_combination hE2 - e3 * h01 - e4 * h2s)
  · exact dispatch_02 q p hqodd hpodd (fun h => hpq h.symm) C D A B hqCD hpAB
      (-(K3 A B C D)) (-(K3 A B C D)) (-e1) (-e2) e3 e4 (by rcases he1 with rfl | rfl <;> norm_num) (by rcases he2 with rfl | rfl <;> norm_num) he3 he4
      (Or.inr (Or.inr (Or.inr (by rw [K3_swap A B C D])))) (Or.inr (Or.inr (Or.inr (by rw [K3_swap A B C D]))))
      (by linear_combination hE1 - e3 * h01 + e4 * h2s)
      (by linear_combination hE2 - e3 * h01 - e4 * h2s)

set_option maxHeartbeats 1600000 in
/-- Dispatch for {u+v, u−v} classes {K1, K3} by prime exchange. -/
lemma dispatch_13
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Ka Kb e1 e2 e3 e4 : ℤ)
    (he1 : e1 = 1 ∨ e1 = -1) (he2 : e2 = 1 ∨ e2 = -1)
    (he3 : e3 = 1 ∨ e3 = -1) (he4 : e4 = 1 ∨ e4 = -1)
    (ha : Ka = K0 q A B ∨ Ka = K1 p C D ∨ Ka = K2 A B C D ∨ Ka = K3 A B C D)
    (hb : Kb = K0 q A B ∨ Kb = K1 p C D ∨ Kb = K2 A B C D ∨ Kb = K3 A B C D)
    (hE1 : e3 * K1 p C D + e4 * K3 A B C D = 2 * e1 * Ka)
    (hE2 : e3 * K1 p C D - e4 * K3 A B C D = 2 * e2 * Kb) : False := by
  have h01 : K1 p C D = K0 p C D := K01_swap p C D
  have h2s : K2 C D A B = K2 A B C D := K2_swap A B C D
  have h3s : K3 C D A B = -(K3 A B C D) := K3_swap A B C D
  rcases ha with rfl | rfl | rfl | rfl <;> rcases hb with rfl | rfl | rfl | rfl
  · exact dispatch_03 q p hqodd hpodd (fun h => hpq h.symm) C D A B hqCD hpAB
      (K0 q A B) (K0 q A B) e1 e2 e3 (-e4) he1 he2 he3 (by rcases he4 with rfl | rfl <;> norm_num)
      (Or.inr (Or.inl (K01_swap q A B).symm)) (Or.inr (Or.inl (K01_swap q A B).symm))
      (by linear_combination hE1 - e3 * h01 - e4 * h3s)
      (by linear_combination hE2 - e3 * h01 + e4 * h3s)
  · exact dispatch_03 q p hqodd hpodd (fun h => hpq h.symm) C D A B hqCD hpAB
      (K0 q A B) (K1 p C D) e1 e2 e3 (-e4) he1 he2 he3 (by rcases he4 with rfl | rfl <;> norm_num)
      (Or.inr (Or.inl (K01_swap q A B).symm)) (Or.inl (K01_swap p C D))
      (by linear_combination hE1 - e3 * h01 - e4 * h3s)
      (by linear_combination hE2 - e3 * h01 + e4 * h3s)
  · exact dispatch_03 q p hqodd hpodd (fun h => hpq h.symm) C D A B hqCD hpAB
      (K0 q A B) (K2 A B C D) e1 e2 e3 (-e4) he1 he2 he3 (by rcases he4 with rfl | rfl <;> norm_num)
      (Or.inr (Or.inl (K01_swap q A B).symm)) (Or.inr (Or.inr (Or.inl (K2_swap A B C D).symm)))
      (by linear_combination hE1 - e3 * h01 - e4 * h3s)
      (by linear_combination hE2 - e3 * h01 + e4 * h3s)
  · exact dispatch_03 q p hqodd hpodd (fun h => hpq h.symm) C D A B hqCD hpAB
      (K0 q A B) (-(K3 A B C D)) e1 (-e2) e3 (-e4) he1 (by rcases he2 with rfl | rfl <;> norm_num) he3 (by rcases he4 with rfl | rfl <;> norm_num)
      (Or.inr (Or.inl (K01_swap q A B).symm)) (Or.inr (Or.inr (Or.inr (by rw [K3_swap A B C D]))))
      (by linear_combination hE1 - e3 * h01 - e4 * h3s)
      (by linear_combination hE2 - e3 * h01 + e4 * h3s)
  · exact dispatch_03 q p hqodd hpodd (fun h => hpq h.symm) C D A B hqCD hpAB
      (K1 p C D) (K0 q A B) e1 e2 e3 (-e4) he1 he2 he3 (by rcases he4 with rfl | rfl <;> norm_num)
      (Or.inl (K01_swap p C D)) (Or.inr (Or.inl (K01_swap q A B).symm))
      (by linear_combination hE1 - e3 * h01 - e4 * h3s)
      (by linear_combination hE2 - e3 * h01 + e4 * h3s)
  · exact dispatch_03 q p hqodd hpodd (fun h => hpq h.symm) C D A B hqCD hpAB
      (K1 p C D) (K1 p C D) e1 e2 e3 (-e4) he1 he2 he3 (by rcases he4 with rfl | rfl <;> norm_num)
      (Or.inl (K01_swap p C D)) (Or.inl (K01_swap p C D))
      (by linear_combination hE1 - e3 * h01 - e4 * h3s)
      (by linear_combination hE2 - e3 * h01 + e4 * h3s)
  · exact dispatch_03 q p hqodd hpodd (fun h => hpq h.symm) C D A B hqCD hpAB
      (K1 p C D) (K2 A B C D) e1 e2 e3 (-e4) he1 he2 he3 (by rcases he4 with rfl | rfl <;> norm_num)
      (Or.inl (K01_swap p C D)) (Or.inr (Or.inr (Or.inl (K2_swap A B C D).symm)))
      (by linear_combination hE1 - e3 * h01 - e4 * h3s)
      (by linear_combination hE2 - e3 * h01 + e4 * h3s)
  · exact dispatch_03 q p hqodd hpodd (fun h => hpq h.symm) C D A B hqCD hpAB
      (K1 p C D) (-(K3 A B C D)) e1 (-e2) e3 (-e4) he1 (by rcases he2 with rfl | rfl <;> norm_num) he3 (by rcases he4 with rfl | rfl <;> norm_num)
      (Or.inl (K01_swap p C D)) (Or.inr (Or.inr (Or.inr (by rw [K3_swap A B C D]))))
      (by linear_combination hE1 - e3 * h01 - e4 * h3s)
      (by linear_combination hE2 - e3 * h01 + e4 * h3s)
  · exact dispatch_03 q p hqodd hpodd (fun h => hpq h.symm) C D A B hqCD hpAB
      (K2 A B C D) (K0 q A B) e1 e2 e3 (-e4) he1 he2 he3 (by rcases he4 with rfl | rfl <;> norm_num)
      (Or.inr (Or.inr (Or.inl (K2_swap A B C D).symm))) (Or.inr (Or.inl (K01_swap q A B).symm))
      (by linear_combination hE1 - e3 * h01 - e4 * h3s)
      (by linear_combination hE2 - e3 * h01 + e4 * h3s)
  · exact dispatch_03 q p hqodd hpodd (fun h => hpq h.symm) C D A B hqCD hpAB
      (K2 A B C D) (K1 p C D) e1 e2 e3 (-e4) he1 he2 he3 (by rcases he4 with rfl | rfl <;> norm_num)
      (Or.inr (Or.inr (Or.inl (K2_swap A B C D).symm))) (Or.inl (K01_swap p C D))
      (by linear_combination hE1 - e3 * h01 - e4 * h3s)
      (by linear_combination hE2 - e3 * h01 + e4 * h3s)
  · exact dispatch_03 q p hqodd hpodd (fun h => hpq h.symm) C D A B hqCD hpAB
      (K2 A B C D) (K2 A B C D) e1 e2 e3 (-e4) he1 he2 he3 (by rcases he4 with rfl | rfl <;> norm_num)
      (Or.inr (Or.inr (Or.inl (K2_swap A B C D).symm))) (Or.inr (Or.inr (Or.inl (K2_swap A B C D).symm)))
      (by linear_combination hE1 - e3 * h01 - e4 * h3s)
      (by linear_combination hE2 - e3 * h01 + e4 * h3s)
  · exact dispatch_03 q p hqodd hpodd (fun h => hpq h.symm) C D A B hqCD hpAB
      (K2 A B C D) (-(K3 A B C D)) e1 (-e2) e3 (-e4) he1 (by rcases he2 with rfl | rfl <;> norm_num) he3 (by rcases he4 with rfl | rfl <;> norm_num)
      (Or.inr (Or.inr (Or.inl (K2_swap A B C D).symm))) (Or.inr (Or.inr (Or.inr (by rw [K3_swap A B C D]))))
      (by linear_combination hE1 - e3 * h01 - e4 * h3s)
      (by linear_combination hE2 - e3 * h01 + e4 * h3s)
  · exact dispatch_03 q p hqodd hpodd (fun h => hpq h.symm) C D A B hqCD hpAB
      (-(K3 A B C D)) (K0 q A B) (-e1) e2 e3 (-e4) (by rcases he1 with rfl | rfl <;> norm_num) he2 he3 (by rcases he4 with rfl | rfl <;> norm_num)
      (Or.inr (Or.inr (Or.inr (by rw [K3_swap A B C D])))) (Or.inr (Or.inl (K01_swap q A B).symm))
      (by linear_combination hE1 - e3 * h01 - e4 * h3s)
      (by linear_combination hE2 - e3 * h01 + e4 * h3s)
  · exact dispatch_03 q p hqodd hpodd (fun h => hpq h.symm) C D A B hqCD hpAB
      (-(K3 A B C D)) (K1 p C D) (-e1) e2 e3 (-e4) (by rcases he1 with rfl | rfl <;> norm_num) he2 he3 (by rcases he4 with rfl | rfl <;> norm_num)
      (Or.inr (Or.inr (Or.inr (by rw [K3_swap A B C D])))) (Or.inl (K01_swap p C D))
      (by linear_combination hE1 - e3 * h01 - e4 * h3s)
      (by linear_combination hE2 - e3 * h01 + e4 * h3s)
  · exact dispatch_03 q p hqodd hpodd (fun h => hpq h.symm) C D A B hqCD hpAB
      (-(K3 A B C D)) (K2 A B C D) (-e1) e2 e3 (-e4) (by rcases he1 with rfl | rfl <;> norm_num) he2 he3 (by rcases he4 with rfl | rfl <;> norm_num)
      (Or.inr (Or.inr (Or.inr (by rw [K3_swap A B C D])))) (Or.inr (Or.inr (Or.inl (K2_swap A B C D).symm)))
      (by linear_combination hE1 - e3 * h01 - e4 * h3s)
      (by linear_combination hE2 - e3 * h01 + e4 * h3s)
  · exact dispatch_03 q p hqodd hpodd (fun h => hpq h.symm) C D A B hqCD hpAB
      (-(K3 A B C D)) (-(K3 A B C D)) (-e1) (-e2) e3 (-e4) (by rcases he1 with rfl | rfl <;> norm_num) (by rcases he2 with rfl | rfl <;> norm_num) he3 (by rcases he4 with rfl | rfl <;> norm_num)
      (Or.inr (Or.inr (Or.inr (by rw [K3_swap A B C D])))) (Or.inr (Or.inr (Or.inr (by rw [K3_swap A B C D]))))
      (by linear_combination hE1 - e3 * h01 - e4 * h3s)
      (by linear_combination hE2 - e3 * h01 + e4 * h3s)

set_option maxHeartbeats 800000 in
/-- The complete assignment kill: with all four D-class memberships
disjunctive and all signs symbolic, the system
2u = ε₃Kc + ε₄Kd, 2v = ε₃Kc − ε₄Kd has no solution. -/
lemma no_assignment_spq
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Ka Kb Kc Kd e1 e2 e3 e4 : ℤ)
    (he1 : e1 = 1 ∨ e1 = -1) (he2 : e2 = 1 ∨ e2 = -1)
    (he3 : e3 = 1 ∨ e3 = -1) (he4 : e4 = 1 ∨ e4 = -1)
    (ha : Ka = K0 q A B ∨ Ka = K1 p C D ∨ Ka = K2 A B C D ∨ Ka = K3 A B C D)
    (hb : Kb = K0 q A B ∨ Kb = K1 p C D ∨ Kb = K2 A B C D ∨ Kb = K3 A B C D)
    (hc : Kc = K0 q A B ∨ Kc = K1 p C D ∨ Kc = K2 A B C D ∨ Kc = K3 A B C D)
    (hd : Kd = K0 q A B ∨ Kd = K1 p C D ∨ Kd = K2 A B C D ∨ Kd = K3 A B C D)
    (hE1 : e3 * Kc + e4 * Kd = 2 * e1 * Ka)
    (hE2 : e3 * Kc - e4 * Kd = 2 * e2 * Kb) : False := by
  have hI0 : (((⟨A, B⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero p hpodd A B hpAB
  have hY0 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero q hqodd C D hqCD
  have hK2ne : K2 A B C D ≠ 0 := by
    unfold K2
    have := im_prod_pow_ne_zero p q hpodd hqodd hpq A B C D hpAB hqCD 0 0
    simpa using this
  have hK3ne : K3 A B C D ≠ 0 := by
    unfold K3
    have hqCD2 : C ^ 2 + (-D) ^ 2 = q := by rw [neg_pow]; ring_nf; linarith [hqCD]
    have := im_prod_pow_ne_zero p q hpodd hqodd hpq A B C (-D) hpAB hqCD2 0 0
    have hmk : (⟨C, -D⟩ : GaussianInt) = star (⟨C, D⟩ : GaussianInt) := by ext <;> simp
    rw [hmk] at this
    simpa [star_pow] using this
  have hK0ne : K0 q A B ≠ 0 := by
    unfold K0
    intro h
    rcases mul_eq_zero.mp h with h | h
    · exact pow_ne_zero 2 (Int.natCast_ne_zero.mpr hq.out.pos.ne') h
    · exact hI0 h
  have hK1ne : K1 p C D ≠ 0 := by
    unfold K1
    intro h
    rcases mul_eq_zero.mp h with h | h
    · exact pow_ne_zero 2 (Int.natCast_ne_zero.mpr hp.out.pos.ne') h
    · exact hY0 h
  have hclassa : Ka ≠ 0 := by
    rcases ha with rfl | rfl | rfl | rfl
    exacts [hK0ne, hK1ne, hK2ne, hK3ne]
  have hclassb : Kb ≠ 0 := by
    rcases hb with rfl | rfl | rfl | rfl
    exacts [hK0ne, hK1ne, hK2ne, hK3ne]
  rcases hc with rfl | rfl | rfl | rfl <;> rcases hd with rfl | rfl | rfl | rfl
  · -- c = d = 0: degenerate
    rcases he3 with rfl | rfl <;> rcases he4 with rfl | rfl
    · have h0 : Kb = 0 := by
        have := hE2
        rcases he2 with rfl | rfl <;> linarith [this]
      exact hclassb h0
    · have h0 : Ka = 0 := by
        have := hE1
        rcases he1 with rfl | rfl <;> linarith [this]
      exact hclassa h0
    · have h0 : Ka = 0 := by
        have := hE1
        rcases he1 with rfl | rfl <;> linarith [this]
      exact hclassa h0
    · have h0 : Kb = 0 := by
        have := hE2
        rcases he2 with rfl | rfl <;> linarith [this]
      exact hclassb h0
  · exact dispatch_01 p q hpodd hqodd hpq A B C D hpAB hqCD Ka Kb e1 e2 e3 e4
      he1 he2 he3 he4 ha hb hE1 hE2
  · exact dispatch_02 p q hpodd hqodd hpq A B C D hpAB hqCD Ka Kb e1 e2 e3 e4
      he1 he2 he3 he4 ha hb hE1 hE2
  · exact dispatch_03 p q hpodd hqodd hpq A B C D hpAB hqCD Ka Kb e1 e2 e3 e4
      he1 he2 he3 he4 ha hb hE1 hE2
  · exact dispatch_01 p q hpodd hqodd hpq A B C D hpAB hqCD Ka Kb e1 (-e2) e4 e3
      he1 (by rcases he2 with rfl | rfl <;> norm_num) he4 he3 ha hb
      (by linarith [hE1]) (by linarith [hE2])
  · -- c = d = 1: degenerate
    rcases he3 with rfl | rfl <;> rcases he4 with rfl | rfl
    · have h0 : Kb = 0 := by
        have := hE2
        rcases he2 with rfl | rfl <;> linarith [this]
      exact hclassb h0
    · have h0 : Ka = 0 := by
        have := hE1
        rcases he1 with rfl | rfl <;> linarith [this]
      exact hclassa h0
    · have h0 : Ka = 0 := by
        have := hE1
        rcases he1 with rfl | rfl <;> linarith [this]
      exact hclassa h0
    · have h0 : Kb = 0 := by
        have := hE2
        rcases he2 with rfl | rfl <;> linarith [this]
      exact hclassb h0
  · exact dispatch_12 p q hpodd hqodd hpq A B C D hpAB hqCD Ka Kb e1 e2 e3 e4
      he1 he2 he3 he4 ha hb hE1 hE2
  · exact dispatch_13 p q hpodd hqodd hpq A B C D hpAB hqCD Ka Kb e1 e2 e3 e4
      he1 he2 he3 he4 ha hb hE1 hE2
  · exact dispatch_02 p q hpodd hqodd hpq A B C D hpAB hqCD Ka Kb e1 (-e2) e4 e3
      he1 (by rcases he2 with rfl | rfl <;> norm_num) he4 he3 ha hb
      (by linarith [hE1]) (by linarith [hE2])
  · exact dispatch_12 p q hpodd hqodd hpq A B C D hpAB hqCD Ka Kb e1 (-e2) e4 e3
      he1 (by rcases he2 with rfl | rfl <;> norm_num) he4 he3 ha hb
      (by linarith [hE1]) (by linarith [hE2])
  · -- c = d = 2: degenerate
    rcases he3 with rfl | rfl <;> rcases he4 with rfl | rfl
    · have h0 : Kb = 0 := by
        have := hE2
        rcases he2 with rfl | rfl <;> linarith [this]
      exact hclassb h0
    · have h0 : Ka = 0 := by
        have := hE1
        rcases he1 with rfl | rfl <;> linarith [this]
      exact hclassa h0
    · have h0 : Ka = 0 := by
        have := hE1
        rcases he1 with rfl | rfl <;> linarith [this]
      exact hclassa h0
    · have h0 : Kb = 0 := by
        have := hE2
        rcases he2 with rfl | rfl <;> linarith [this]
      exact hclassb h0
  · exact dispatch_23 p q hpodd hqodd hpq A B C D hpAB hqCD Ka Kb e1 e2 e3 e4
      he1 he2 he3 he4 ha hb hE1 hE2
  · exact dispatch_03 p q hpodd hqodd hpq A B C D hpAB hqCD Ka Kb e1 (-e2) e4 e3
      he1 (by rcases he2 with rfl | rfl <;> norm_num) he4 he3 ha hb
      (by linarith [hE1]) (by linarith [hE2])
  · exact dispatch_13 p q hpodd hqodd hpq A B C D hpAB hqCD Ka Kb e1 (-e2) e4 e3
      he1 (by rcases he2 with rfl | rfl <;> norm_num) he4 he3 ha hb
      (by linarith [hE1]) (by linarith [hE2])
  · exact dispatch_23 p q hpodd hqodd hpq A B C D hpAB hqCD Ka Kb e1 (-e2) e4 e3
      he1 (by rcases he2 with rfl | rfl <;> norm_num) he4 he3 ha hb
      (by linarith [hE1]) (by linarith [hE2])
  · -- c = d = 3: degenerate
    rcases he3 with rfl | rfl <;> rcases he4 with rfl | rfl
    · have h0 : Kb = 0 := by
        have := hE2
        rcases he2 with rfl | rfl <;> linarith [this]
      exact hclassb h0
    · have h0 : Ka = 0 := by
        have := hE1
        rcases he1 with rfl | rfl <;> linarith [this]
      exact hclassa h0
    · have h0 : Ka = 0 := by
        have := hE1
        rcases he1 with rfl | rfl <;> linarith [this]
      exact hclassa h0
    · have h0 : Kb = 0 := by
        have := hE2
        rcases he2 with rfl | rfl <;> linarith [this]
      exact hclassb h0

set_option maxHeartbeats 800000 in
/-- Four differences u, v, u+v, u−v cannot all be D-set values of
e = s·p·q. -/
theorem no_four_diffs_spq
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (s : ℕ) (hs : ∀ r : ℕ, r.Prime → r ∣ s → r % 4 ≠ 1) (hs0 : 0 < s)
    (u v : ℤ) (hu0 : u ≠ 0) (hv0 : v ≠ 0) (huv : u ≠ v) (huv' : u ≠ -v)
    (x1 y1 x2 y2 x3 y3 x4 y4 : ℤ)
    (h1 : x1 ^ 2 + y1 ^ 2 = (s : ℤ) ^ 2 * (p : ℤ) ^ 2 * (q : ℤ) ^ 2) (e1 : 2 * x1 * y1 = u)
    (h2 : x2 ^ 2 + y2 ^ 2 = (s : ℤ) ^ 2 * (p : ℤ) ^ 2 * (q : ℤ) ^ 2) (e2 : 2 * x2 * y2 = v)
    (h3 : x3 ^ 2 + y3 ^ 2 = (s : ℤ) ^ 2 * (p : ℤ) ^ 2 * (q : ℤ) ^ 2) (e3 : 2 * x3 * y3 = u + v)
    (h4 : x4 ^ 2 + y4 ^ 2 = (s : ℤ) ^ 2 * (p : ℤ) ^ 2 * (q : ℤ) ^ 2) (e4 : 2 * x4 * y4 = u - v) :
    False := by
  obtain ⟨ε1, hε1, hd1⟩ := rep_structure_spq p q hpq A B C D hpAB hqCD s hs x1 y1 h1
    (by rw [e1]; exact hu0)
  obtain ⟨ε2, hε2, hd2⟩ := rep_structure_spq p q hpq A B C D hpAB hqCD s hs x2 y2 h2
    (by rw [e2]; exact hv0)
  obtain ⟨ε3, hε3, hd3⟩ := rep_structure_spq p q hpq A B C D hpAB hqCD s hs x3 y3 h3
    (by rw [e3]; intro h; exact huv' (by linarith))
  obtain ⟨ε4, hε4, hd4⟩ := rep_structure_spq p q hpq A B C D hpAB hqCD s hs x4 y4 h4
    (by rw [e4]; intro h; exact huv (by linarith))
  rw [e1] at hd1; rw [e2] at hd2; rw [e3] at hd3; rw [e4] at hd4
  -- repackage each disjunct as (class value, membership)
  have pack : ∀ w εw, (w = εw * ((s : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im)))
       ∨ w = εw * ((s : ℤ) ^ 2 * ((p : ℤ) ^ 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)))
       ∨ w = εw * ((s : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im))
       ∨ w = εw * ((s : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4) * (star (⟨C, D⟩ : GaussianInt)) ^ 4).im))) →
      ∃ K, (K = K0 q A B ∨ K = K1 p C D ∨ K = K2 A B C D ∨ K = K3 A B C D)
        ∧ w = εw * ((s : ℤ) ^ 2 * K) := by
    intro w εw hw
    rcases hw with h | h | h | h
    · exact ⟨K0 q A B, Or.inl rfl, by unfold K0; exact h⟩
    · exact ⟨K1 p C D, Or.inr (Or.inl rfl), by unfold K1; exact h⟩
    · exact ⟨K2 A B C D, Or.inr (Or.inr (Or.inl rfl)), by unfold K2; exact h⟩
    · exact ⟨K3 A B C D, Or.inr (Or.inr (Or.inr rfl)), by unfold K3; exact h⟩
  obtain ⟨Ka, hKa, hu⟩ := pack u ε1 hd1
  obtain ⟨Kb, hKb, hv⟩ := pack v ε2 hd2
  obtain ⟨Kc, hKc, hsv⟩ := pack (u + v) ε3 hd3
  obtain ⟨Kd, hKd, hdv⟩ := pack (u - v) ε4 hd4
  have hs2 : ((s : ℤ) ^ 2) ≠ 0 := by positivity
  have hE1 : ε3 * Kc + ε4 * Kd = 2 * ε1 * Ka := by
    have hlin : (s : ℤ) ^ 2 * (ε3 * Kc + ε4 * Kd - 2 * ε1 * Ka) = 0 := by
      have h0 : (u + v) + (u - v) = 2 * u := by ring
      rw [hsv, hdv, hu] at h0
      linear_combination h0
    have := mul_eq_zero.mp hlin
    rcases this with h | h
    · exact absurd h hs2
    · linarith
  have hE2 : ε3 * Kc - ε4 * Kd = 2 * ε2 * Kb := by
    have hlin : (s : ℤ) ^ 2 * (ε3 * Kc - ε4 * Kd - 2 * ε2 * Kb) = 0 := by
      have h0 : (u + v) - (u - v) = 2 * v := by ring
      rw [hsv, hdv, hv] at h0
      linear_combination h0
    have := mul_eq_zero.mp hlin
    rcases this with h | h
    · exact absurd h hs2
    · linarith
  exact no_assignment_spq p q hpodd hqodd hpq A B C D hpAB hqCD Ka Kb Kc Kd
    ε1 ε2 ε3 ε4 hε1 hε2 hε3 hε4 hKa hKb hKc hKd hE1 hE2

/-- **Theorem E, machine-checked.** No 3×3 fully magic square of nine
perfect squares has center entry (s·p·q)² for distinct primes
p, q ≡ 1 (mod 4) and rigid s. -/
theorem no_magic_square_of_squares_spq_center
    (hp4 : p % 4 = 1) (hq4 : q % 4 = 1) (hpq : p ≠ q)
    (s : ℕ) (hs : ∀ r : ℕ, r.Prime → r ∣ s → r % 4 ≠ 1) (hs0 : 0 < s)
    (A B C D E F G H I S : ℤ)
    (sqA : IsSq A) (sqB : IsSq B) (sqC : IsSq C) (sqD : IsSq D) (sqE : IsSq E)
    (sqF : IsSq F) (sqG : IsSq G) (sqH : IsSq H) (sqI : IsSq I)
    (r1 : A + B + C = S) (r2 : D + E + F = S) (r3 : G + H + I = S)
    (c1 : A + D + G = S) (c2 : B + E + H = S) (c3 : C + F + I = S)
    (d1 : A + E + I = S) (d2 : C + E + G = S)
    (hE : E = ((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ 2 * (q : ℤ) ^ 2)
    (hAE : A ≠ E) (hCE : C ≠ E) (hAC : A ≠ C) (hHE : H ≠ E) : False := by
  obtain ⟨e, u, v, x1, y1, x2, y2, x3, y3, x4, y4, hEe, hAu, hCv,
    hxy1, hq1, hxy2, hq2, hxy3, hq3, hxy4, hq4'⟩ :=
    converse_reduction A B C D E F G H I S sqA sqB sqC sqD sqE sqF sqG sqH sqI
      r1 r2 r3 c1 c2 c3 d1 d2
  have he2 : e ^ 2 = ((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ 2 * (q : ℤ) ^ 2 := by omega
  rw [he2] at hxy1 hxy2 hxy3 hxy4
  obtain ⟨PA, PB, hAB⟩ := Nat.Prime.sq_add_sq (p := p) (by omega)
  obtain ⟨QC, QD, hCD⟩ := Nat.Prime.sq_add_sq (p := q) (by omega)
  have hu0 : u ≠ 0 := by omega
  have hv0 : v ≠ 0 := by omega
  have huv : u ≠ v := by omega
  have huv' : u ≠ -v := by omega
  exact no_four_diffs_spq p q (by omega) (by omega) hpq
    (PA : ℤ) (PB : ℤ) (QC : ℤ) (QD : ℤ)
    (by exact_mod_cast hAB) (by exact_mod_cast hCD)
    s hs hs0 u v hu0 hv0 huv huv'
    x1 y1 x2 y2 x3 y3 x4 y4 hxy1 hq1 hxy2 hq2 hxy3 hq3 hxy4 hq4'

end Dispatch

