/-
Per-pair dispatch lemmas for the Theorem E assignment analysis.
Each lemma handles one {u+v, u−v} class pair, with the u and v classes
disjunctive and all signs symbolic.
-/
import Mathlib
import MsqLean.TheoremEResidue

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

end Dispatch

