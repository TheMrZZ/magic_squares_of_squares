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

end Dispatch
