/- Generated: the screen-phase kills of grid 2_2. Every relation
   with a monomial or unit core is nonzero at the Gaussian point. -/
import MsqLean.CertKit
import MsqLean.PolyRefl
import MsqLean.LibraryNonzero
import MsqLean.Router
import MsqLean.SimplestRelation

set_option maxRecDepth 100000
set_option maxHeartbeats 2000000

open Zsqrtd

namespace ScreenCert

variable (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
variable (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
variable (A B C D : ℤ)

def s29_0p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 1 3 0 1 3 (-1), PolyRefl.mkT 1 3 0 2 2 (2), PolyRefl.mkT 1 3 0 3 1 (-1), PolyRefl.mkT 3 1 0 1 3 (1), PolyRefl.mkT 3 1 0 2 2 (-2), PolyRefl.mkT 3 1 0 3 1 (1)]
def s29_0s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 2 (-1), PolyRefl.mkT 0 2 0 1 1 (2), PolyRefl.mkT 0 2 0 2 0 (-1), PolyRefl.mkT 2 0 0 0 2 (1), PolyRefl.mkT 2 0 0 1 1 (-2), PolyRefl.mkT 2 0 0 2 0 (1)]
def s29_0f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (1), PolyRefl.mkT 1 0 0 0 0 (1)]
def s29_1p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 2 (-1), PolyRefl.mkT 0 1 0 1 1 (2), PolyRefl.mkT 0 1 0 2 0 (-1), PolyRefl.mkT 1 0 0 0 2 (1), PolyRefl.mkT 1 0 0 1 1 (-2), PolyRefl.mkT 1 0 0 2 0 (1)]
def s29_1s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 2 (-1), PolyRefl.mkT 0 1 0 1 1 (2), PolyRefl.mkT 0 1 0 2 0 (-1), PolyRefl.mkT 1 0 0 0 2 (1), PolyRefl.mkT 1 0 0 1 1 (-2), PolyRefl.mkT 1 0 0 2 0 (1)]
def s29_1f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (-1), PolyRefl.mkT 1 0 0 0 0 (1)]
def s29_2p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 2 (1), PolyRefl.mkT 0 0 0 1 1 (-2), PolyRefl.mkT 0 0 0 2 0 (1)]
def s29_2s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 2 (1), PolyRefl.mkT 0 0 0 1 1 (-2), PolyRefl.mkT 0 0 0 2 0 (1)]
def s29_2f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (-1), PolyRefl.mkT 0 0 0 1 0 (1)]
def s29_3p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (-1), PolyRefl.mkT 0 0 0 1 0 (1)]
def s29_3s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (-1), PolyRefl.mkT 0 0 0 1 0 (1)]
def s29_3f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (-1), PolyRefl.mkT 0 0 0 1 0 (1)]
def s29_4p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (1)]
def s29_4s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (1)]

theorem screen_dead_29_2_2
    (hpq : p ≠ q) (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :
    PolyRefl.eval (s29_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
  have hπ0 : ((⟨A, B⟩ : GaussianInt)) ≠ 0 := (prime_pi p A B hpAB).ne_zero
  have hχ0 : ((⟨C, D⟩ : GaussianInt)) ≠ 0 := (prime_pi q C D hqCD).ne_zero
  have hπs0 : (star (⟨A, B⟩ : GaussianInt)) ≠ 0 := fun h => hπ0 (by simpa using congrArg star h)
  have hχs0 : (star (⟨C, D⟩ : GaussianInt)) ≠ 0 := fun h => hχ0 (by simpa using congrArg star h)
  have e0s : PolyRefl.eval (s29_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 1 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 1 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 1 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 1) * PolyRefl.eval (s29_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s29_0p_2_2)
      (Q := PolyRefl.mulTerm ((1, 1, 0, 1, 1), 1) (s29_0s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e0f : PolyRefl.eval (s29_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s29_0f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s29_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h0f : PolyRefl.eval (s29_0f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne p A B hpodd hpAB 1 (by norm_num)
    linear_combination (norm := (simp only [s29_0f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e1s : PolyRefl.eval (s29_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s29_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s29_1p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s29_1s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e1f : PolyRefl.eval (s29_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s29_1f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s29_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h1f : PolyRefl.eval (s29_1f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply sub_ne_zero.mpr (sub_ne_zero.mp (LibraryNonzero.lib_diff_ne p A B hpodd hpAB 1 (by norm_num)))
    linear_combination (norm := (simp only [s29_1f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e2s : PolyRefl.eval (s29_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s29_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s29_2p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s29_2s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e2f : PolyRefl.eval (s29_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s29_2f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s29_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h2f : PolyRefl.eval (s29_2f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply sub_ne_zero.mpr (sub_ne_zero.mp (LibraryNonzero.lib_diff_ne q C D hqodd hqCD 1 (by norm_num)))
    linear_combination (norm := (simp only [s29_2f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e3s : PolyRefl.eval (s29_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s29_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s29_3p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s29_3s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e3f : PolyRefl.eval (s29_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s29_3f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s29_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h3f : PolyRefl.eval (s29_3f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply sub_ne_zero.mpr (sub_ne_zero.mp (LibraryNonzero.lib_diff_ne q C D hqodd hqCD 1 (by norm_num)))
    linear_combination (norm := (simp only [s29_3f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e4s : PolyRefl.eval (s29_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s29_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s29_4p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s29_4s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have hcore : PolyRefl.eval (s29_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    have hval : PolyRefl.eval (s29_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = ((1 : ℤ) : GaussianInt) := by
      simp [s29_4s_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF]
    rw [hval]
    exact_mod_cast (by norm_num : (1 : ℤ) ≠ 0)
  -- assemble the nonzero product bottom-up
  have hb4 : PolyRefl.eval (s29_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := hcore
  have hbp4 : PolyRefl.eval (s29_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e4s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb4)
  have hb3s : PolyRefl.eval (s29_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e3f]
    exact mul_ne_zero h3f hbp4
  have hbp3 : PolyRefl.eval (s29_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e3s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb3s)
  have hb2s : PolyRefl.eval (s29_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e2f]
    exact mul_ne_zero h2f hbp3
  have hbp2 : PolyRefl.eval (s29_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e2s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb2s)
  have hb1s : PolyRefl.eval (s29_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e1f]
    exact mul_ne_zero h1f hbp2
  have hbp1 : PolyRefl.eval (s29_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e1s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb1s)
  have hb0s : PolyRefl.eval (s29_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e0f]
    exact mul_ne_zero h0f hbp1
  have hbp0 : PolyRefl.eval (s29_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e0s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb0s)
  exact hbp0

def s52_0p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 4 (-1), PolyRefl.mkT 0 4 0 2 2 (2), PolyRefl.mkT 0 4 0 4 0 (-1), PolyRefl.mkT 4 0 0 0 4 (1), PolyRefl.mkT 4 0 0 2 2 (-2), PolyRefl.mkT 4 0 0 4 0 (1)]
def s52_0s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 4 (-1), PolyRefl.mkT 0 4 0 2 2 (2), PolyRefl.mkT 0 4 0 4 0 (-1), PolyRefl.mkT 4 0 0 0 4 (1), PolyRefl.mkT 4 0 0 2 2 (-2), PolyRefl.mkT 4 0 0 4 0 (1)]
def s52_0f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (1), PolyRefl.mkT 1 0 0 0 0 (1)]
def s52_1p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 0 4 (-1), PolyRefl.mkT 0 3 0 2 2 (2), PolyRefl.mkT 0 3 0 4 0 (-1), PolyRefl.mkT 1 2 0 0 4 (1), PolyRefl.mkT 1 2 0 2 2 (-2), PolyRefl.mkT 1 2 0 4 0 (1), PolyRefl.mkT 2 1 0 0 4 (-1), PolyRefl.mkT 2 1 0 2 2 (2), PolyRefl.mkT 2 1 0 4 0 (-1), PolyRefl.mkT 3 0 0 0 4 (1), PolyRefl.mkT 3 0 0 2 2 (-2), PolyRefl.mkT 3 0 0 4 0 (1)]
def s52_1s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 0 4 (-1), PolyRefl.mkT 0 3 0 2 2 (2), PolyRefl.mkT 0 3 0 4 0 (-1), PolyRefl.mkT 1 2 0 0 4 (1), PolyRefl.mkT 1 2 0 2 2 (-2), PolyRefl.mkT 1 2 0 4 0 (1), PolyRefl.mkT 2 1 0 0 4 (-1), PolyRefl.mkT 2 1 0 2 2 (2), PolyRefl.mkT 2 1 0 4 0 (-1), PolyRefl.mkT 3 0 0 0 4 (1), PolyRefl.mkT 3 0 0 2 2 (-2), PolyRefl.mkT 3 0 0 4 0 (1)]
def s52_1f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (1), PolyRefl.mkT 0 0 0 1 0 (1)]
def s52_2p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 0 3 (-1), PolyRefl.mkT 0 3 0 1 2 (1), PolyRefl.mkT 0 3 0 2 1 (1), PolyRefl.mkT 0 3 0 3 0 (-1), PolyRefl.mkT 1 2 0 0 3 (1), PolyRefl.mkT 1 2 0 1 2 (-1), PolyRefl.mkT 1 2 0 2 1 (-1), PolyRefl.mkT 1 2 0 3 0 (1), PolyRefl.mkT 2 1 0 0 3 (-1), PolyRefl.mkT 2 1 0 1 2 (1), PolyRefl.mkT 2 1 0 2 1 (1), PolyRefl.mkT 2 1 0 3 0 (-1), PolyRefl.mkT 3 0 0 0 3 (1), PolyRefl.mkT 3 0 0 1 2 (-1), PolyRefl.mkT 3 0 0 2 1 (-1), PolyRefl.mkT 3 0 0 3 0 (1)]
def s52_2s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 0 3 (-1), PolyRefl.mkT 0 3 0 1 2 (1), PolyRefl.mkT 0 3 0 2 1 (1), PolyRefl.mkT 0 3 0 3 0 (-1), PolyRefl.mkT 1 2 0 0 3 (1), PolyRefl.mkT 1 2 0 1 2 (-1), PolyRefl.mkT 1 2 0 2 1 (-1), PolyRefl.mkT 1 2 0 3 0 (1), PolyRefl.mkT 2 1 0 0 3 (-1), PolyRefl.mkT 2 1 0 1 2 (1), PolyRefl.mkT 2 1 0 2 1 (1), PolyRefl.mkT 2 1 0 3 0 (-1), PolyRefl.mkT 3 0 0 0 3 (1), PolyRefl.mkT 3 0 0 1 2 (-1), PolyRefl.mkT 3 0 0 2 1 (-1), PolyRefl.mkT 3 0 0 3 0 (1)]
def s52_2f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (-1), PolyRefl.mkT 1 0 0 0 0 (1)]
def s52_3p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 3 (1), PolyRefl.mkT 0 2 0 1 2 (-1), PolyRefl.mkT 0 2 0 2 1 (-1), PolyRefl.mkT 0 2 0 3 0 (1), PolyRefl.mkT 2 0 0 0 3 (1), PolyRefl.mkT 2 0 0 1 2 (-1), PolyRefl.mkT 2 0 0 2 1 (-1), PolyRefl.mkT 2 0 0 3 0 (1)]
def s52_3s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 3 (1), PolyRefl.mkT 0 2 0 1 2 (-1), PolyRefl.mkT 0 2 0 2 1 (-1), PolyRefl.mkT 0 2 0 3 0 (1), PolyRefl.mkT 2 0 0 0 3 (1), PolyRefl.mkT 2 0 0 1 2 (-1), PolyRefl.mkT 2 0 0 2 1 (-1), PolyRefl.mkT 2 0 0 3 0 (1)]
def s52_3f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (-1), PolyRefl.mkT 0 0 0 1 0 (1)]
def s52_4p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 2 (-1), PolyRefl.mkT 0 2 0 2 0 (1), PolyRefl.mkT 2 0 0 0 2 (-1), PolyRefl.mkT 2 0 0 2 0 (1)]
def s52_4s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 2 (-1), PolyRefl.mkT 0 2 0 2 0 (1), PolyRefl.mkT 2 0 0 0 2 (-1), PolyRefl.mkT 2 0 0 2 0 (1)]
def s52_4f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 0 (1), PolyRefl.mkT 2 0 0 0 0 (1)]
def s52_5p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 2 (-1), PolyRefl.mkT 0 0 0 2 0 (1)]
def s52_5s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 2 (-1), PolyRefl.mkT 0 0 0 2 0 (1)]
def s52_5f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 2 (-1), PolyRefl.mkT 0 0 0 2 0 (1)]
def s52_6p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (1)]
def s52_6s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (1)]

theorem screen_dead_52_2_2
    (hpq : p ≠ q) (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :
    PolyRefl.eval (s52_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
  have hπ0 : ((⟨A, B⟩ : GaussianInt)) ≠ 0 := (prime_pi p A B hpAB).ne_zero
  have hχ0 : ((⟨C, D⟩ : GaussianInt)) ≠ 0 := (prime_pi q C D hqCD).ne_zero
  have hπs0 : (star (⟨A, B⟩ : GaussianInt)) ≠ 0 := fun h => hπ0 (by simpa using congrArg star h)
  have hχs0 : (star (⟨C, D⟩ : GaussianInt)) ≠ 0 := fun h => hχ0 (by simpa using congrArg star h)
  have e0s : PolyRefl.eval (s52_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s52_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s52_0p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s52_0s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e0f : PolyRefl.eval (s52_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s52_0f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s52_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h0f : PolyRefl.eval (s52_0f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne p A B hpodd hpAB 1 (by norm_num)
    linear_combination (norm := (simp only [s52_0f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e1s : PolyRefl.eval (s52_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s52_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s52_1p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s52_1s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e1f : PolyRefl.eval (s52_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s52_1f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s52_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h1f : PolyRefl.eval (s52_1f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne q C D hqodd hqCD 1 (by norm_num)
    linear_combination (norm := (simp only [s52_1f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e2s : PolyRefl.eval (s52_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s52_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s52_2p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s52_2s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e2f : PolyRefl.eval (s52_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s52_2f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s52_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h2f : PolyRefl.eval (s52_2f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply sub_ne_zero.mpr (sub_ne_zero.mp (LibraryNonzero.lib_diff_ne p A B hpodd hpAB 1 (by norm_num)))
    linear_combination (norm := (simp only [s52_2f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e3s : PolyRefl.eval (s52_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s52_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s52_3p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s52_3s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e3f : PolyRefl.eval (s52_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s52_3f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s52_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h3f : PolyRefl.eval (s52_3f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply sub_ne_zero.mpr (sub_ne_zero.mp (LibraryNonzero.lib_diff_ne q C D hqodd hqCD 1 (by norm_num)))
    linear_combination (norm := (simp only [s52_3f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e4s : PolyRefl.eval (s52_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s52_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s52_4p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s52_4s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e4f : PolyRefl.eval (s52_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s52_4f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s52_5p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h4f : PolyRefl.eval (s52_4f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne p A B hpodd hpAB 2 (by norm_num)
    linear_combination (norm := (simp only [s52_4f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e5s : PolyRefl.eval (s52_5p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s52_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s52_5p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s52_5s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e5f : PolyRefl.eval (s52_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s52_5f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s52_6p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h5f : PolyRefl.eval (s52_5f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply sub_ne_zero.mpr (sub_ne_zero.mp (LibraryNonzero.lib_diff_ne q C D hqodd hqCD 2 (by norm_num)))
    linear_combination (norm := (simp only [s52_5f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e6s : PolyRefl.eval (s52_6p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s52_6s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s52_6p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s52_6s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have hcore : PolyRefl.eval (s52_6s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    have hval : PolyRefl.eval (s52_6s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = ((1 : ℤ) : GaussianInt) := by
      simp [s52_6s_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF]
    rw [hval]
    exact_mod_cast (by norm_num : (1 : ℤ) ≠ 0)
  -- assemble the nonzero product bottom-up
  have hb6 : PolyRefl.eval (s52_6s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := hcore
  have hbp6 : PolyRefl.eval (s52_6p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e6s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb6)
  have hb5s : PolyRefl.eval (s52_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e5f]
    exact mul_ne_zero h5f hbp6
  have hbp5 : PolyRefl.eval (s52_5p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e5s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb5s)
  have hb4s : PolyRefl.eval (s52_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e4f]
    exact mul_ne_zero h4f hbp5
  have hbp4 : PolyRefl.eval (s52_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e4s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb4s)
  have hb3s : PolyRefl.eval (s52_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e3f]
    exact mul_ne_zero h3f hbp4
  have hbp3 : PolyRefl.eval (s52_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e3s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb3s)
  have hb2s : PolyRefl.eval (s52_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e2f]
    exact mul_ne_zero h2f hbp3
  have hbp2 : PolyRefl.eval (s52_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e2s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb2s)
  have hb1s : PolyRefl.eval (s52_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e1f]
    exact mul_ne_zero h1f hbp2
  have hbp1 : PolyRefl.eval (s52_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e1s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb1s)
  have hb0s : PolyRefl.eval (s52_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e0f]
    exact mul_ne_zero h0f hbp1
  have hbp0 : PolyRefl.eval (s52_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e0s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb0s)
  exact hbp0

def s91_0p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 4 (1), PolyRefl.mkT 0 4 0 4 0 (-1), PolyRefl.mkT 2 2 0 0 4 (2), PolyRefl.mkT 2 2 0 4 0 (-2), PolyRefl.mkT 4 0 0 0 4 (1), PolyRefl.mkT 4 0 0 4 0 (-1)]
def s91_0s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 4 (1), PolyRefl.mkT 0 4 0 4 0 (-1), PolyRefl.mkT 2 2 0 0 4 (2), PolyRefl.mkT 2 2 0 4 0 (-2), PolyRefl.mkT 4 0 0 0 4 (1), PolyRefl.mkT 4 0 0 4 0 (-1)]
def s91_0f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (1), PolyRefl.mkT 0 0 0 1 0 (1)]
def s91_1p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 3 (1), PolyRefl.mkT 0 4 0 1 2 (-1), PolyRefl.mkT 0 4 0 2 1 (1), PolyRefl.mkT 0 4 0 3 0 (-1), PolyRefl.mkT 2 2 0 0 3 (2), PolyRefl.mkT 2 2 0 1 2 (-2), PolyRefl.mkT 2 2 0 2 1 (2), PolyRefl.mkT 2 2 0 3 0 (-2), PolyRefl.mkT 4 0 0 0 3 (1), PolyRefl.mkT 4 0 0 1 2 (-1), PolyRefl.mkT 4 0 0 2 1 (1), PolyRefl.mkT 4 0 0 3 0 (-1)]
def s91_1s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 3 (1), PolyRefl.mkT 0 4 0 1 2 (-1), PolyRefl.mkT 0 4 0 2 1 (1), PolyRefl.mkT 0 4 0 3 0 (-1), PolyRefl.mkT 2 2 0 0 3 (2), PolyRefl.mkT 2 2 0 1 2 (-2), PolyRefl.mkT 2 2 0 2 1 (2), PolyRefl.mkT 2 2 0 3 0 (-2), PolyRefl.mkT 4 0 0 0 3 (1), PolyRefl.mkT 4 0 0 1 2 (-1), PolyRefl.mkT 4 0 0 2 1 (1), PolyRefl.mkT 4 0 0 3 0 (-1)]
def s91_1f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (-1), PolyRefl.mkT 0 0 0 1 0 (1)]
def s91_2p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (-1), PolyRefl.mkT 0 4 0 2 0 (-1), PolyRefl.mkT 2 2 0 0 2 (-2), PolyRefl.mkT 2 2 0 2 0 (-2), PolyRefl.mkT 4 0 0 0 2 (-1), PolyRefl.mkT 4 0 0 2 0 (-1)]
def s91_2s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (-1), PolyRefl.mkT 0 4 0 2 0 (-1), PolyRefl.mkT 2 2 0 0 2 (-2), PolyRefl.mkT 2 2 0 2 0 (-2), PolyRefl.mkT 4 0 0 0 2 (-1), PolyRefl.mkT 4 0 0 2 0 (-1)]
def s91_2f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 0 (1), PolyRefl.mkT 2 0 0 0 0 (1)]
def s91_3p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 2 (-1), PolyRefl.mkT 0 2 0 2 0 (-1), PolyRefl.mkT 2 0 0 0 2 (-1), PolyRefl.mkT 2 0 0 2 0 (-1)]
def s91_3s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 2 (-1), PolyRefl.mkT 0 2 0 2 0 (-1), PolyRefl.mkT 2 0 0 0 2 (-1), PolyRefl.mkT 2 0 0 2 0 (-1)]
def s91_3f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 2 (1), PolyRefl.mkT 0 0 0 2 0 (1)]
def s91_4p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 0 (-1), PolyRefl.mkT 2 0 0 0 0 (-1)]
def s91_4s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 0 (-1), PolyRefl.mkT 2 0 0 0 0 (-1)]
def s91_4f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 0 (1), PolyRefl.mkT 2 0 0 0 0 (1)]
def s91_5p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (-1)]
def s91_5s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (-1)]

theorem screen_dead_91_2_2
    (hpq : p ≠ q) (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :
    PolyRefl.eval (s91_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
  have hπ0 : ((⟨A, B⟩ : GaussianInt)) ≠ 0 := (prime_pi p A B hpAB).ne_zero
  have hχ0 : ((⟨C, D⟩ : GaussianInt)) ≠ 0 := (prime_pi q C D hqCD).ne_zero
  have hπs0 : (star (⟨A, B⟩ : GaussianInt)) ≠ 0 := fun h => hπ0 (by simpa using congrArg star h)
  have hχs0 : (star (⟨C, D⟩ : GaussianInt)) ≠ 0 := fun h => hχ0 (by simpa using congrArg star h)
  have e0s : PolyRefl.eval (s91_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s91_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s91_0p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s91_0s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e0f : PolyRefl.eval (s91_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s91_0f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s91_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h0f : PolyRefl.eval (s91_0f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne q C D hqodd hqCD 1 (by norm_num)
    linear_combination (norm := (simp only [s91_0f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e1s : PolyRefl.eval (s91_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s91_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s91_1p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s91_1s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e1f : PolyRefl.eval (s91_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s91_1f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s91_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h1f : PolyRefl.eval (s91_1f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply sub_ne_zero.mpr (sub_ne_zero.mp (LibraryNonzero.lib_diff_ne q C D hqodd hqCD 1 (by norm_num)))
    linear_combination (norm := (simp only [s91_1f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e2s : PolyRefl.eval (s91_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s91_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s91_2p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s91_2s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e2f : PolyRefl.eval (s91_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s91_2f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s91_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h2f : PolyRefl.eval (s91_2f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne p A B hpodd hpAB 2 (by norm_num)
    linear_combination (norm := (simp only [s91_2f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e3s : PolyRefl.eval (s91_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s91_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s91_3p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s91_3s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e3f : PolyRefl.eval (s91_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s91_3f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s91_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h3f : PolyRefl.eval (s91_3f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne q C D hqodd hqCD 2 (by norm_num)
    linear_combination (norm := (simp only [s91_3f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e4s : PolyRefl.eval (s91_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s91_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s91_4p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s91_4s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e4f : PolyRefl.eval (s91_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s91_4f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s91_5p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h4f : PolyRefl.eval (s91_4f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne p A B hpodd hpAB 2 (by norm_num)
    linear_combination (norm := (simp only [s91_4f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e5s : PolyRefl.eval (s91_5p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s91_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s91_5p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s91_5s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have hcore : PolyRefl.eval (s91_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    have hval : PolyRefl.eval (s91_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = ((-1 : ℤ) : GaussianInt) := by
      simp [s91_5s_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF]
    rw [hval]
    exact_mod_cast (by norm_num : (-1 : ℤ) ≠ 0)
  -- assemble the nonzero product bottom-up
  have hb5 : PolyRefl.eval (s91_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := hcore
  have hbp5 : PolyRefl.eval (s91_5p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e5s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb5)
  have hb4s : PolyRefl.eval (s91_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e4f]
    exact mul_ne_zero h4f hbp5
  have hbp4 : PolyRefl.eval (s91_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e4s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb4s)
  have hb3s : PolyRefl.eval (s91_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e3f]
    exact mul_ne_zero h3f hbp4
  have hbp3 : PolyRefl.eval (s91_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e3s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb3s)
  have hb2s : PolyRefl.eval (s91_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e2f]
    exact mul_ne_zero h2f hbp3
  have hbp2 : PolyRefl.eval (s91_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e2s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb2s)
  have hb1s : PolyRefl.eval (s91_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e1f]
    exact mul_ne_zero h1f hbp2
  have hbp1 : PolyRefl.eval (s91_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e1s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb1s)
  have hb0s : PolyRefl.eval (s91_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e0f]
    exact mul_ne_zero h0f hbp1
  have hbp0 : PolyRefl.eval (s91_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e0s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb0s)
  exact hbp0

def s94_0p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 1 3 0 0 4 (-1), PolyRefl.mkT 1 3 0 4 0 (1), PolyRefl.mkT 2 2 0 0 4 (2), PolyRefl.mkT 2 2 0 4 0 (-2), PolyRefl.mkT 3 1 0 0 4 (-1), PolyRefl.mkT 3 1 0 4 0 (1)]
def s94_0s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 4 (-1), PolyRefl.mkT 0 2 0 4 0 (1), PolyRefl.mkT 1 1 0 0 4 (2), PolyRefl.mkT 1 1 0 4 0 (-2), PolyRefl.mkT 2 0 0 0 4 (-1), PolyRefl.mkT 2 0 0 4 0 (1)]
def s94_0f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (1), PolyRefl.mkT 0 0 0 1 0 (1)]
def s94_1p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 3 (-1), PolyRefl.mkT 0 2 0 1 2 (1), PolyRefl.mkT 0 2 0 2 1 (-1), PolyRefl.mkT 0 2 0 3 0 (1), PolyRefl.mkT 1 1 0 0 3 (2), PolyRefl.mkT 1 1 0 1 2 (-2), PolyRefl.mkT 1 1 0 2 1 (2), PolyRefl.mkT 1 1 0 3 0 (-2), PolyRefl.mkT 2 0 0 0 3 (-1), PolyRefl.mkT 2 0 0 1 2 (1), PolyRefl.mkT 2 0 0 2 1 (-1), PolyRefl.mkT 2 0 0 3 0 (1)]
def s94_1s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 3 (-1), PolyRefl.mkT 0 2 0 1 2 (1), PolyRefl.mkT 0 2 0 2 1 (-1), PolyRefl.mkT 0 2 0 3 0 (1), PolyRefl.mkT 1 1 0 0 3 (2), PolyRefl.mkT 1 1 0 1 2 (-2), PolyRefl.mkT 1 1 0 2 1 (2), PolyRefl.mkT 1 1 0 3 0 (-2), PolyRefl.mkT 2 0 0 0 3 (-1), PolyRefl.mkT 2 0 0 1 2 (1), PolyRefl.mkT 2 0 0 2 1 (-1), PolyRefl.mkT 2 0 0 3 0 (1)]
def s94_1f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (-1), PolyRefl.mkT 1 0 0 0 0 (1)]
def s94_2p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 3 (1), PolyRefl.mkT 0 1 0 1 2 (-1), PolyRefl.mkT 0 1 0 2 1 (1), PolyRefl.mkT 0 1 0 3 0 (-1), PolyRefl.mkT 1 0 0 0 3 (-1), PolyRefl.mkT 1 0 0 1 2 (1), PolyRefl.mkT 1 0 0 2 1 (-1), PolyRefl.mkT 1 0 0 3 0 (1)]
def s94_2s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 3 (1), PolyRefl.mkT 0 1 0 1 2 (-1), PolyRefl.mkT 0 1 0 2 1 (1), PolyRefl.mkT 0 1 0 3 0 (-1), PolyRefl.mkT 1 0 0 0 3 (-1), PolyRefl.mkT 1 0 0 1 2 (1), PolyRefl.mkT 1 0 0 2 1 (-1), PolyRefl.mkT 1 0 0 3 0 (1)]
def s94_2f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (-1), PolyRefl.mkT 0 0 0 1 0 (1)]
def s94_3p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 2 (-1), PolyRefl.mkT 0 1 0 2 0 (-1), PolyRefl.mkT 1 0 0 0 2 (1), PolyRefl.mkT 1 0 0 2 0 (1)]
def s94_3s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 2 (-1), PolyRefl.mkT 0 1 0 2 0 (-1), PolyRefl.mkT 1 0 0 0 2 (1), PolyRefl.mkT 1 0 0 2 0 (1)]
def s94_3f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 2 (1), PolyRefl.mkT 0 0 0 2 0 (1)]
def s94_4p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (-1), PolyRefl.mkT 1 0 0 0 0 (1)]
def s94_4s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (-1), PolyRefl.mkT 1 0 0 0 0 (1)]
def s94_4f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (-1), PolyRefl.mkT 1 0 0 0 0 (1)]
def s94_5p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (1)]
def s94_5s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (1)]

theorem screen_dead_94_2_2
    (hpq : p ≠ q) (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :
    PolyRefl.eval (s94_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
  have hπ0 : ((⟨A, B⟩ : GaussianInt)) ≠ 0 := (prime_pi p A B hpAB).ne_zero
  have hχ0 : ((⟨C, D⟩ : GaussianInt)) ≠ 0 := (prime_pi q C D hqCD).ne_zero
  have hπs0 : (star (⟨A, B⟩ : GaussianInt)) ≠ 0 := fun h => hπ0 (by simpa using congrArg star h)
  have hχs0 : (star (⟨C, D⟩ : GaussianInt)) ≠ 0 := fun h => hχ0 (by simpa using congrArg star h)
  have e0s : PolyRefl.eval (s94_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 1 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 1 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s94_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s94_0p_2_2)
      (Q := PolyRefl.mulTerm ((1, 1, 0, 0, 0), 1) (s94_0s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e0f : PolyRefl.eval (s94_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s94_0f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s94_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h0f : PolyRefl.eval (s94_0f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne q C D hqodd hqCD 1 (by norm_num)
    linear_combination (norm := (simp only [s94_0f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e1s : PolyRefl.eval (s94_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s94_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s94_1p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s94_1s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e1f : PolyRefl.eval (s94_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s94_1f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s94_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h1f : PolyRefl.eval (s94_1f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply sub_ne_zero.mpr (sub_ne_zero.mp (LibraryNonzero.lib_diff_ne p A B hpodd hpAB 1 (by norm_num)))
    linear_combination (norm := (simp only [s94_1f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e2s : PolyRefl.eval (s94_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s94_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s94_2p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s94_2s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e2f : PolyRefl.eval (s94_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s94_2f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s94_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h2f : PolyRefl.eval (s94_2f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply sub_ne_zero.mpr (sub_ne_zero.mp (LibraryNonzero.lib_diff_ne q C D hqodd hqCD 1 (by norm_num)))
    linear_combination (norm := (simp only [s94_2f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e3s : PolyRefl.eval (s94_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s94_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s94_3p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s94_3s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e3f : PolyRefl.eval (s94_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s94_3f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s94_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h3f : PolyRefl.eval (s94_3f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne q C D hqodd hqCD 2 (by norm_num)
    linear_combination (norm := (simp only [s94_3f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e4s : PolyRefl.eval (s94_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s94_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s94_4p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s94_4s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e4f : PolyRefl.eval (s94_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s94_4f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s94_5p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h4f : PolyRefl.eval (s94_4f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply sub_ne_zero.mpr (sub_ne_zero.mp (LibraryNonzero.lib_diff_ne p A B hpodd hpAB 1 (by norm_num)))
    linear_combination (norm := (simp only [s94_4f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e5s : PolyRefl.eval (s94_5p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s94_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s94_5p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s94_5s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have hcore : PolyRefl.eval (s94_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    have hval : PolyRefl.eval (s94_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = ((1 : ℤ) : GaussianInt) := by
      simp [s94_5s_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF]
    rw [hval]
    exact_mod_cast (by norm_num : (1 : ℤ) ≠ 0)
  -- assemble the nonzero product bottom-up
  have hb5 : PolyRefl.eval (s94_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := hcore
  have hbp5 : PolyRefl.eval (s94_5p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e5s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb5)
  have hb4s : PolyRefl.eval (s94_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e4f]
    exact mul_ne_zero h4f hbp5
  have hbp4 : PolyRefl.eval (s94_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e4s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb4s)
  have hb3s : PolyRefl.eval (s94_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e3f]
    exact mul_ne_zero h3f hbp4
  have hbp3 : PolyRefl.eval (s94_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e3s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb3s)
  have hb2s : PolyRefl.eval (s94_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e2f]
    exact mul_ne_zero h2f hbp3
  have hbp2 : PolyRefl.eval (s94_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e2s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb2s)
  have hb1s : PolyRefl.eval (s94_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e1f]
    exact mul_ne_zero h1f hbp2
  have hbp1 : PolyRefl.eval (s94_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e1s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb1s)
  have hb0s : PolyRefl.eval (s94_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e0f]
    exact mul_ne_zero h0f hbp1
  have hbp0 : PolyRefl.eval (s94_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e0s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb0s)
  exact hbp0

def s109_0p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 1 3 0 1 3 (-1), PolyRefl.mkT 1 3 0 3 1 (1), PolyRefl.mkT 2 2 0 1 3 (2), PolyRefl.mkT 2 2 0 3 1 (-2), PolyRefl.mkT 3 1 0 1 3 (-1), PolyRefl.mkT 3 1 0 3 1 (1)]
def s109_0s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 2 (-1), PolyRefl.mkT 0 2 0 2 0 (1), PolyRefl.mkT 1 1 0 0 2 (2), PolyRefl.mkT 1 1 0 2 0 (-2), PolyRefl.mkT 2 0 0 0 2 (-1), PolyRefl.mkT 2 0 0 2 0 (1)]
def s109_0f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (1), PolyRefl.mkT 0 0 0 1 0 (1)]
def s109_1p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 1 (-1), PolyRefl.mkT 0 2 0 1 0 (1), PolyRefl.mkT 1 1 0 0 1 (2), PolyRefl.mkT 1 1 0 1 0 (-2), PolyRefl.mkT 2 0 0 0 1 (-1), PolyRefl.mkT 2 0 0 1 0 (1)]
def s109_1s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 1 (-1), PolyRefl.mkT 0 2 0 1 0 (1), PolyRefl.mkT 1 1 0 0 1 (2), PolyRefl.mkT 1 1 0 1 0 (-2), PolyRefl.mkT 2 0 0 0 1 (-1), PolyRefl.mkT 2 0 0 1 0 (1)]
def s109_1f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (-1), PolyRefl.mkT 1 0 0 0 0 (1)]
def s109_2p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 1 (1), PolyRefl.mkT 0 1 0 1 0 (-1), PolyRefl.mkT 1 0 0 0 1 (-1), PolyRefl.mkT 1 0 0 1 0 (1)]
def s109_2s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 1 (1), PolyRefl.mkT 0 1 0 1 0 (-1), PolyRefl.mkT 1 0 0 0 1 (-1), PolyRefl.mkT 1 0 0 1 0 (1)]
def s109_2f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (-1), PolyRefl.mkT 0 0 0 1 0 (1)]
def s109_3p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (-1), PolyRefl.mkT 1 0 0 0 0 (1)]
def s109_3s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (-1), PolyRefl.mkT 1 0 0 0 0 (1)]
def s109_3f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (-1), PolyRefl.mkT 1 0 0 0 0 (1)]
def s109_4p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (1)]
def s109_4s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (1)]

theorem screen_dead_109_2_2
    (hpq : p ≠ q) (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :
    PolyRefl.eval (s109_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
  have hπ0 : ((⟨A, B⟩ : GaussianInt)) ≠ 0 := (prime_pi p A B hpAB).ne_zero
  have hχ0 : ((⟨C, D⟩ : GaussianInt)) ≠ 0 := (prime_pi q C D hqCD).ne_zero
  have hπs0 : (star (⟨A, B⟩ : GaussianInt)) ≠ 0 := fun h => hπ0 (by simpa using congrArg star h)
  have hχs0 : (star (⟨C, D⟩ : GaussianInt)) ≠ 0 := fun h => hχ0 (by simpa using congrArg star h)
  have e0s : PolyRefl.eval (s109_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 1 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 1 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 1 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 1) * PolyRefl.eval (s109_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s109_0p_2_2)
      (Q := PolyRefl.mulTerm ((1, 1, 0, 1, 1), 1) (s109_0s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e0f : PolyRefl.eval (s109_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s109_0f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s109_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h0f : PolyRefl.eval (s109_0f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne q C D hqodd hqCD 1 (by norm_num)
    linear_combination (norm := (simp only [s109_0f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e1s : PolyRefl.eval (s109_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s109_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s109_1p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s109_1s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e1f : PolyRefl.eval (s109_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s109_1f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s109_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h1f : PolyRefl.eval (s109_1f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply sub_ne_zero.mpr (sub_ne_zero.mp (LibraryNonzero.lib_diff_ne p A B hpodd hpAB 1 (by norm_num)))
    linear_combination (norm := (simp only [s109_1f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e2s : PolyRefl.eval (s109_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s109_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s109_2p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s109_2s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e2f : PolyRefl.eval (s109_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s109_2f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s109_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h2f : PolyRefl.eval (s109_2f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply sub_ne_zero.mpr (sub_ne_zero.mp (LibraryNonzero.lib_diff_ne q C D hqodd hqCD 1 (by norm_num)))
    linear_combination (norm := (simp only [s109_2f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e3s : PolyRefl.eval (s109_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s109_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s109_3p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s109_3s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e3f : PolyRefl.eval (s109_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s109_3f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s109_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h3f : PolyRefl.eval (s109_3f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply sub_ne_zero.mpr (sub_ne_zero.mp (LibraryNonzero.lib_diff_ne p A B hpodd hpAB 1 (by norm_num)))
    linear_combination (norm := (simp only [s109_3f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e4s : PolyRefl.eval (s109_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s109_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s109_4p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s109_4s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have hcore : PolyRefl.eval (s109_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    have hval : PolyRefl.eval (s109_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = ((1 : ℤ) : GaussianInt) := by
      simp [s109_4s_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF]
    rw [hval]
    exact_mod_cast (by norm_num : (1 : ℤ) ≠ 0)
  -- assemble the nonzero product bottom-up
  have hb4 : PolyRefl.eval (s109_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := hcore
  have hbp4 : PolyRefl.eval (s109_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e4s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb4)
  have hb3s : PolyRefl.eval (s109_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e3f]
    exact mul_ne_zero h3f hbp4
  have hbp3 : PolyRefl.eval (s109_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e3s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb3s)
  have hb2s : PolyRefl.eval (s109_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e2f]
    exact mul_ne_zero h2f hbp3
  have hbp2 : PolyRefl.eval (s109_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e2s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb2s)
  have hb1s : PolyRefl.eval (s109_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e1f]
    exact mul_ne_zero h1f hbp2
  have hbp1 : PolyRefl.eval (s109_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e1s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb1s)
  have hb0s : PolyRefl.eval (s109_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e0f]
    exact mul_ne_zero h0f hbp1
  have hbp0 : PolyRefl.eval (s109_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e0s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb0s)
  exact hbp0

def s158_0p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 4 (1), PolyRefl.mkT 0 4 0 2 2 (2), PolyRefl.mkT 0 4 0 4 0 (1), PolyRefl.mkT 4 0 0 0 4 (-1), PolyRefl.mkT 4 0 0 2 2 (-2), PolyRefl.mkT 4 0 0 4 0 (-1)]
def s158_0s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 4 (1), PolyRefl.mkT 0 4 0 2 2 (2), PolyRefl.mkT 0 4 0 4 0 (1), PolyRefl.mkT 4 0 0 0 4 (-1), PolyRefl.mkT 4 0 0 2 2 (-2), PolyRefl.mkT 4 0 0 4 0 (-1)]
def s158_0f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (1), PolyRefl.mkT 1 0 0 0 0 (1)]
def s158_1p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 0 4 (1), PolyRefl.mkT 0 3 0 2 2 (2), PolyRefl.mkT 0 3 0 4 0 (1), PolyRefl.mkT 1 2 0 0 4 (-1), PolyRefl.mkT 1 2 0 2 2 (-2), PolyRefl.mkT 1 2 0 4 0 (-1), PolyRefl.mkT 2 1 0 0 4 (1), PolyRefl.mkT 2 1 0 2 2 (2), PolyRefl.mkT 2 1 0 4 0 (1), PolyRefl.mkT 3 0 0 0 4 (-1), PolyRefl.mkT 3 0 0 2 2 (-2), PolyRefl.mkT 3 0 0 4 0 (-1)]
def s158_1s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 0 4 (1), PolyRefl.mkT 0 3 0 2 2 (2), PolyRefl.mkT 0 3 0 4 0 (1), PolyRefl.mkT 1 2 0 0 4 (-1), PolyRefl.mkT 1 2 0 2 2 (-2), PolyRefl.mkT 1 2 0 4 0 (-1), PolyRefl.mkT 2 1 0 0 4 (1), PolyRefl.mkT 2 1 0 2 2 (2), PolyRefl.mkT 2 1 0 4 0 (1), PolyRefl.mkT 3 0 0 0 4 (-1), PolyRefl.mkT 3 0 0 2 2 (-2), PolyRefl.mkT 3 0 0 4 0 (-1)]
def s158_1f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (-1), PolyRefl.mkT 1 0 0 0 0 (1)]
def s158_2p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 4 (-1), PolyRefl.mkT 0 2 0 2 2 (-2), PolyRefl.mkT 0 2 0 4 0 (-1), PolyRefl.mkT 2 0 0 0 4 (-1), PolyRefl.mkT 2 0 0 2 2 (-2), PolyRefl.mkT 2 0 0 4 0 (-1)]
def s158_2s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 4 (-1), PolyRefl.mkT 0 2 0 2 2 (-2), PolyRefl.mkT 0 2 0 4 0 (-1), PolyRefl.mkT 2 0 0 0 4 (-1), PolyRefl.mkT 2 0 0 2 2 (-2), PolyRefl.mkT 2 0 0 4 0 (-1)]
def s158_2f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 0 (1), PolyRefl.mkT 2 0 0 0 0 (1)]
def s158_3p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 4 (-1), PolyRefl.mkT 0 0 0 2 2 (-2), PolyRefl.mkT 0 0 0 4 0 (-1)]
def s158_3s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 4 (-1), PolyRefl.mkT 0 0 0 2 2 (-2), PolyRefl.mkT 0 0 0 4 0 (-1)]
def s158_3f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 2 (1), PolyRefl.mkT 0 0 0 2 0 (1)]
def s158_4p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 2 (-1), PolyRefl.mkT 0 0 0 2 0 (-1)]
def s158_4s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 2 (-1), PolyRefl.mkT 0 0 0 2 0 (-1)]
def s158_4f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 2 (1), PolyRefl.mkT 0 0 0 2 0 (1)]
def s158_5p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (-1)]
def s158_5s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (-1)]

theorem screen_dead_158_2_2
    (hpq : p ≠ q) (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :
    PolyRefl.eval (s158_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
  have hπ0 : ((⟨A, B⟩ : GaussianInt)) ≠ 0 := (prime_pi p A B hpAB).ne_zero
  have hχ0 : ((⟨C, D⟩ : GaussianInt)) ≠ 0 := (prime_pi q C D hqCD).ne_zero
  have hπs0 : (star (⟨A, B⟩ : GaussianInt)) ≠ 0 := fun h => hπ0 (by simpa using congrArg star h)
  have hχs0 : (star (⟨C, D⟩ : GaussianInt)) ≠ 0 := fun h => hχ0 (by simpa using congrArg star h)
  have e0s : PolyRefl.eval (s158_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s158_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s158_0p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s158_0s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e0f : PolyRefl.eval (s158_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s158_0f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s158_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h0f : PolyRefl.eval (s158_0f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne p A B hpodd hpAB 1 (by norm_num)
    linear_combination (norm := (simp only [s158_0f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e1s : PolyRefl.eval (s158_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s158_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s158_1p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s158_1s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e1f : PolyRefl.eval (s158_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s158_1f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s158_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h1f : PolyRefl.eval (s158_1f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply sub_ne_zero.mpr (sub_ne_zero.mp (LibraryNonzero.lib_diff_ne p A B hpodd hpAB 1 (by norm_num)))
    linear_combination (norm := (simp only [s158_1f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e2s : PolyRefl.eval (s158_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s158_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s158_2p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s158_2s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e2f : PolyRefl.eval (s158_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s158_2f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s158_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h2f : PolyRefl.eval (s158_2f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne p A B hpodd hpAB 2 (by norm_num)
    linear_combination (norm := (simp only [s158_2f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e3s : PolyRefl.eval (s158_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s158_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s158_3p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s158_3s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e3f : PolyRefl.eval (s158_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s158_3f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s158_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h3f : PolyRefl.eval (s158_3f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne q C D hqodd hqCD 2 (by norm_num)
    linear_combination (norm := (simp only [s158_3f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e4s : PolyRefl.eval (s158_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s158_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s158_4p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s158_4s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e4f : PolyRefl.eval (s158_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s158_4f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s158_5p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h4f : PolyRefl.eval (s158_4f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne q C D hqodd hqCD 2 (by norm_num)
    linear_combination (norm := (simp only [s158_4f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e5s : PolyRefl.eval (s158_5p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s158_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s158_5p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s158_5s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have hcore : PolyRefl.eval (s158_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    have hval : PolyRefl.eval (s158_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = ((-1 : ℤ) : GaussianInt) := by
      simp [s158_5s_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF]
    rw [hval]
    exact_mod_cast (by norm_num : (-1 : ℤ) ≠ 0)
  -- assemble the nonzero product bottom-up
  have hb5 : PolyRefl.eval (s158_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := hcore
  have hbp5 : PolyRefl.eval (s158_5p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e5s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb5)
  have hb4s : PolyRefl.eval (s158_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e4f]
    exact mul_ne_zero h4f hbp5
  have hbp4 : PolyRefl.eval (s158_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e4s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb4s)
  have hb3s : PolyRefl.eval (s158_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e3f]
    exact mul_ne_zero h3f hbp4
  have hbp3 : PolyRefl.eval (s158_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e3s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb3s)
  have hb2s : PolyRefl.eval (s158_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e2f]
    exact mul_ne_zero h2f hbp3
  have hbp2 : PolyRefl.eval (s158_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e2s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb2s)
  have hb1s : PolyRefl.eval (s158_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e1f]
    exact mul_ne_zero h1f hbp2
  have hbp1 : PolyRefl.eval (s158_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e1s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb1s)
  have hb0s : PolyRefl.eval (s158_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e0f]
    exact mul_ne_zero h0f hbp1
  have hbp0 : PolyRefl.eval (s158_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e0s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb0s)
  exact hbp0

def s190_0p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 1 3 0 0 4 (1), PolyRefl.mkT 1 3 0 4 0 (-1), PolyRefl.mkT 2 2 0 0 4 (2), PolyRefl.mkT 2 2 0 4 0 (-2), PolyRefl.mkT 3 1 0 0 4 (1), PolyRefl.mkT 3 1 0 4 0 (-1)]
def s190_0s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 4 (1), PolyRefl.mkT 0 2 0 4 0 (-1), PolyRefl.mkT 1 1 0 0 4 (2), PolyRefl.mkT 1 1 0 4 0 (-2), PolyRefl.mkT 2 0 0 0 4 (1), PolyRefl.mkT 2 0 0 4 0 (-1)]
def s190_0f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (1), PolyRefl.mkT 1 0 0 0 0 (1)]
def s190_1p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 4 (1), PolyRefl.mkT 0 1 0 4 0 (-1), PolyRefl.mkT 1 0 0 0 4 (1), PolyRefl.mkT 1 0 0 4 0 (-1)]
def s190_1s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 4 (1), PolyRefl.mkT 0 1 0 4 0 (-1), PolyRefl.mkT 1 0 0 0 4 (1), PolyRefl.mkT 1 0 0 4 0 (-1)]
def s190_1f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (1), PolyRefl.mkT 0 0 0 1 0 (1)]
def s190_2p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 3 (1), PolyRefl.mkT 0 1 0 1 2 (-1), PolyRefl.mkT 0 1 0 2 1 (1), PolyRefl.mkT 0 1 0 3 0 (-1), PolyRefl.mkT 1 0 0 0 3 (1), PolyRefl.mkT 1 0 0 1 2 (-1), PolyRefl.mkT 1 0 0 2 1 (1), PolyRefl.mkT 1 0 0 3 0 (-1)]
def s190_2s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 3 (1), PolyRefl.mkT 0 1 0 1 2 (-1), PolyRefl.mkT 0 1 0 2 1 (1), PolyRefl.mkT 0 1 0 3 0 (-1), PolyRefl.mkT 1 0 0 0 3 (1), PolyRefl.mkT 1 0 0 1 2 (-1), PolyRefl.mkT 1 0 0 2 1 (1), PolyRefl.mkT 1 0 0 3 0 (-1)]
def s190_2f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (-1), PolyRefl.mkT 0 0 0 1 0 (1)]
def s190_3p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 2 (-1), PolyRefl.mkT 0 1 0 2 0 (-1), PolyRefl.mkT 1 0 0 0 2 (-1), PolyRefl.mkT 1 0 0 2 0 (-1)]
def s190_3s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 2 (-1), PolyRefl.mkT 0 1 0 2 0 (-1), PolyRefl.mkT 1 0 0 0 2 (-1), PolyRefl.mkT 1 0 0 2 0 (-1)]
def s190_3f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 2 (1), PolyRefl.mkT 0 0 0 2 0 (1)]
def s190_4p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (-1), PolyRefl.mkT 1 0 0 0 0 (-1)]
def s190_4s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (-1), PolyRefl.mkT 1 0 0 0 0 (-1)]
def s190_4f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (1), PolyRefl.mkT 1 0 0 0 0 (1)]
def s190_5p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (-1)]
def s190_5s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (-1)]

theorem screen_dead_190_2_2
    (hpq : p ≠ q) (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :
    PolyRefl.eval (s190_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
  have hπ0 : ((⟨A, B⟩ : GaussianInt)) ≠ 0 := (prime_pi p A B hpAB).ne_zero
  have hχ0 : ((⟨C, D⟩ : GaussianInt)) ≠ 0 := (prime_pi q C D hqCD).ne_zero
  have hπs0 : (star (⟨A, B⟩ : GaussianInt)) ≠ 0 := fun h => hπ0 (by simpa using congrArg star h)
  have hχs0 : (star (⟨C, D⟩ : GaussianInt)) ≠ 0 := fun h => hχ0 (by simpa using congrArg star h)
  have e0s : PolyRefl.eval (s190_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 1 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 1 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s190_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s190_0p_2_2)
      (Q := PolyRefl.mulTerm ((1, 1, 0, 0, 0), 1) (s190_0s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e0f : PolyRefl.eval (s190_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s190_0f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s190_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h0f : PolyRefl.eval (s190_0f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne p A B hpodd hpAB 1 (by norm_num)
    linear_combination (norm := (simp only [s190_0f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e1s : PolyRefl.eval (s190_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s190_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s190_1p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s190_1s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e1f : PolyRefl.eval (s190_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s190_1f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s190_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h1f : PolyRefl.eval (s190_1f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne q C D hqodd hqCD 1 (by norm_num)
    linear_combination (norm := (simp only [s190_1f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e2s : PolyRefl.eval (s190_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s190_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s190_2p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s190_2s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e2f : PolyRefl.eval (s190_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s190_2f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s190_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h2f : PolyRefl.eval (s190_2f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply sub_ne_zero.mpr (sub_ne_zero.mp (LibraryNonzero.lib_diff_ne q C D hqodd hqCD 1 (by norm_num)))
    linear_combination (norm := (simp only [s190_2f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e3s : PolyRefl.eval (s190_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s190_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s190_3p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s190_3s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e3f : PolyRefl.eval (s190_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s190_3f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s190_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h3f : PolyRefl.eval (s190_3f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne q C D hqodd hqCD 2 (by norm_num)
    linear_combination (norm := (simp only [s190_3f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e4s : PolyRefl.eval (s190_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s190_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s190_4p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s190_4s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e4f : PolyRefl.eval (s190_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s190_4f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s190_5p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h4f : PolyRefl.eval (s190_4f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne p A B hpodd hpAB 1 (by norm_num)
    linear_combination (norm := (simp only [s190_4f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e5s : PolyRefl.eval (s190_5p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s190_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s190_5p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s190_5s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have hcore : PolyRefl.eval (s190_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    have hval : PolyRefl.eval (s190_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = ((-1 : ℤ) : GaussianInt) := by
      simp [s190_5s_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF]
    rw [hval]
    exact_mod_cast (by norm_num : (-1 : ℤ) ≠ 0)
  -- assemble the nonzero product bottom-up
  have hb5 : PolyRefl.eval (s190_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := hcore
  have hbp5 : PolyRefl.eval (s190_5p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e5s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb5)
  have hb4s : PolyRefl.eval (s190_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e4f]
    exact mul_ne_zero h4f hbp5
  have hbp4 : PolyRefl.eval (s190_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e4s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb4s)
  have hb3s : PolyRefl.eval (s190_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e3f]
    exact mul_ne_zero h3f hbp4
  have hbp3 : PolyRefl.eval (s190_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e3s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb3s)
  have hb2s : PolyRefl.eval (s190_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e2f]
    exact mul_ne_zero h2f hbp3
  have hbp2 : PolyRefl.eval (s190_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e2s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb2s)
  have hb1s : PolyRefl.eval (s190_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e1f]
    exact mul_ne_zero h1f hbp2
  have hbp1 : PolyRefl.eval (s190_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e1s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb1s)
  have hb0s : PolyRefl.eval (s190_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e0f]
    exact mul_ne_zero h0f hbp1
  have hbp0 : PolyRefl.eval (s190_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e0s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb0s)
  exact hbp0

def s204_0p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 1 3 0 0 4 (-1), PolyRefl.mkT 1 3 0 2 2 (2), PolyRefl.mkT 1 3 0 4 0 (-1), PolyRefl.mkT 3 1 0 0 4 (1), PolyRefl.mkT 3 1 0 2 2 (-2), PolyRefl.mkT 3 1 0 4 0 (1)]
def s204_0s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 4 (-1), PolyRefl.mkT 0 2 0 2 2 (2), PolyRefl.mkT 0 2 0 4 0 (-1), PolyRefl.mkT 2 0 0 0 4 (1), PolyRefl.mkT 2 0 0 2 2 (-2), PolyRefl.mkT 2 0 0 4 0 (1)]
def s204_0f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (1), PolyRefl.mkT 1 0 0 0 0 (1)]
def s204_1p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 4 (-1), PolyRefl.mkT 0 1 0 2 2 (2), PolyRefl.mkT 0 1 0 4 0 (-1), PolyRefl.mkT 1 0 0 0 4 (1), PolyRefl.mkT 1 0 0 2 2 (-2), PolyRefl.mkT 1 0 0 4 0 (1)]
def s204_1s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 4 (-1), PolyRefl.mkT 0 1 0 2 2 (2), PolyRefl.mkT 0 1 0 4 0 (-1), PolyRefl.mkT 1 0 0 0 4 (1), PolyRefl.mkT 1 0 0 2 2 (-2), PolyRefl.mkT 1 0 0 4 0 (1)]
def s204_1f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (1), PolyRefl.mkT 0 0 0 1 0 (1)]
def s204_2p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 3 (-1), PolyRefl.mkT 0 1 0 1 2 (1), PolyRefl.mkT 0 1 0 2 1 (1), PolyRefl.mkT 0 1 0 3 0 (-1), PolyRefl.mkT 1 0 0 0 3 (1), PolyRefl.mkT 1 0 0 1 2 (-1), PolyRefl.mkT 1 0 0 2 1 (-1), PolyRefl.mkT 1 0 0 3 0 (1)]
def s204_2s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 3 (-1), PolyRefl.mkT 0 1 0 1 2 (1), PolyRefl.mkT 0 1 0 2 1 (1), PolyRefl.mkT 0 1 0 3 0 (-1), PolyRefl.mkT 1 0 0 0 3 (1), PolyRefl.mkT 1 0 0 1 2 (-1), PolyRefl.mkT 1 0 0 2 1 (-1), PolyRefl.mkT 1 0 0 3 0 (1)]
def s204_2f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (-1), PolyRefl.mkT 1 0 0 0 0 (1)]
def s204_3p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 3 (1), PolyRefl.mkT 0 0 0 1 2 (-1), PolyRefl.mkT 0 0 0 2 1 (-1), PolyRefl.mkT 0 0 0 3 0 (1)]
def s204_3s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 3 (1), PolyRefl.mkT 0 0 0 1 2 (-1), PolyRefl.mkT 0 0 0 2 1 (-1), PolyRefl.mkT 0 0 0 3 0 (1)]
def s204_3f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (-1), PolyRefl.mkT 0 0 0 1 0 (1)]
def s204_4p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 2 (-1), PolyRefl.mkT 0 0 0 2 0 (1)]
def s204_4s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 2 (-1), PolyRefl.mkT 0 0 0 2 0 (1)]
def s204_4f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 2 (-1), PolyRefl.mkT 0 0 0 2 0 (1)]
def s204_5p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (1)]
def s204_5s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (1)]

theorem screen_dead_204_2_2
    (hpq : p ≠ q) (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :
    PolyRefl.eval (s204_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
  have hπ0 : ((⟨A, B⟩ : GaussianInt)) ≠ 0 := (prime_pi p A B hpAB).ne_zero
  have hχ0 : ((⟨C, D⟩ : GaussianInt)) ≠ 0 := (prime_pi q C D hqCD).ne_zero
  have hπs0 : (star (⟨A, B⟩ : GaussianInt)) ≠ 0 := fun h => hπ0 (by simpa using congrArg star h)
  have hχs0 : (star (⟨C, D⟩ : GaussianInt)) ≠ 0 := fun h => hχ0 (by simpa using congrArg star h)
  have e0s : PolyRefl.eval (s204_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 1 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 1 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s204_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s204_0p_2_2)
      (Q := PolyRefl.mulTerm ((1, 1, 0, 0, 0), 1) (s204_0s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e0f : PolyRefl.eval (s204_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s204_0f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s204_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h0f : PolyRefl.eval (s204_0f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne p A B hpodd hpAB 1 (by norm_num)
    linear_combination (norm := (simp only [s204_0f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e1s : PolyRefl.eval (s204_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s204_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s204_1p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s204_1s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e1f : PolyRefl.eval (s204_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s204_1f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s204_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h1f : PolyRefl.eval (s204_1f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne q C D hqodd hqCD 1 (by norm_num)
    linear_combination (norm := (simp only [s204_1f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e2s : PolyRefl.eval (s204_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s204_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s204_2p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s204_2s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e2f : PolyRefl.eval (s204_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s204_2f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s204_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h2f : PolyRefl.eval (s204_2f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply sub_ne_zero.mpr (sub_ne_zero.mp (LibraryNonzero.lib_diff_ne p A B hpodd hpAB 1 (by norm_num)))
    linear_combination (norm := (simp only [s204_2f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e3s : PolyRefl.eval (s204_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s204_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s204_3p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s204_3s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e3f : PolyRefl.eval (s204_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s204_3f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s204_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h3f : PolyRefl.eval (s204_3f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply sub_ne_zero.mpr (sub_ne_zero.mp (LibraryNonzero.lib_diff_ne q C D hqodd hqCD 1 (by norm_num)))
    linear_combination (norm := (simp only [s204_3f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e4s : PolyRefl.eval (s204_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s204_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s204_4p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s204_4s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e4f : PolyRefl.eval (s204_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s204_4f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s204_5p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h4f : PolyRefl.eval (s204_4f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply sub_ne_zero.mpr (sub_ne_zero.mp (LibraryNonzero.lib_diff_ne q C D hqodd hqCD 2 (by norm_num)))
    linear_combination (norm := (simp only [s204_4f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e5s : PolyRefl.eval (s204_5p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s204_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s204_5p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s204_5s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have hcore : PolyRefl.eval (s204_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    have hval : PolyRefl.eval (s204_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = ((1 : ℤ) : GaussianInt) := by
      simp [s204_5s_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF]
    rw [hval]
    exact_mod_cast (by norm_num : (1 : ℤ) ≠ 0)
  -- assemble the nonzero product bottom-up
  have hb5 : PolyRefl.eval (s204_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := hcore
  have hbp5 : PolyRefl.eval (s204_5p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e5s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb5)
  have hb4s : PolyRefl.eval (s204_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e4f]
    exact mul_ne_zero h4f hbp5
  have hbp4 : PolyRefl.eval (s204_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e4s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb4s)
  have hb3s : PolyRefl.eval (s204_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e3f]
    exact mul_ne_zero h3f hbp4
  have hbp3 : PolyRefl.eval (s204_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e3s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb3s)
  have hb2s : PolyRefl.eval (s204_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e2f]
    exact mul_ne_zero h2f hbp3
  have hbp2 : PolyRefl.eval (s204_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e2s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb2s)
  have hb1s : PolyRefl.eval (s204_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e1f]
    exact mul_ne_zero h1f hbp2
  have hbp1 : PolyRefl.eval (s204_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e1s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb1s)
  have hb0s : PolyRefl.eval (s204_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e0f]
    exact mul_ne_zero h0f hbp1
  have hbp0 : PolyRefl.eval (s204_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e0s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb0s)
  exact hbp0

def s243_0p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-1), PolyRefl.mkT 0 4 0 2 2 (2), PolyRefl.mkT 0 4 0 3 1 (-1), PolyRefl.mkT 4 0 0 1 3 (1), PolyRefl.mkT 4 0 0 2 2 (-2), PolyRefl.mkT 4 0 0 3 1 (1)]
def s243_0s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (-1), PolyRefl.mkT 0 4 0 1 1 (2), PolyRefl.mkT 0 4 0 2 0 (-1), PolyRefl.mkT 4 0 0 0 2 (1), PolyRefl.mkT 4 0 0 1 1 (-2), PolyRefl.mkT 4 0 0 2 0 (1)]
def s243_0f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (1), PolyRefl.mkT 1 0 0 0 0 (1)]
def s243_1p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 0 2 (-1), PolyRefl.mkT 0 3 0 1 1 (2), PolyRefl.mkT 0 3 0 2 0 (-1), PolyRefl.mkT 1 2 0 0 2 (1), PolyRefl.mkT 1 2 0 1 1 (-2), PolyRefl.mkT 1 2 0 2 0 (1), PolyRefl.mkT 2 1 0 0 2 (-1), PolyRefl.mkT 2 1 0 1 1 (2), PolyRefl.mkT 2 1 0 2 0 (-1), PolyRefl.mkT 3 0 0 0 2 (1), PolyRefl.mkT 3 0 0 1 1 (-2), PolyRefl.mkT 3 0 0 2 0 (1)]
def s243_1s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 0 2 (-1), PolyRefl.mkT 0 3 0 1 1 (2), PolyRefl.mkT 0 3 0 2 0 (-1), PolyRefl.mkT 1 2 0 0 2 (1), PolyRefl.mkT 1 2 0 1 1 (-2), PolyRefl.mkT 1 2 0 2 0 (1), PolyRefl.mkT 2 1 0 0 2 (-1), PolyRefl.mkT 2 1 0 1 1 (2), PolyRefl.mkT 2 1 0 2 0 (-1), PolyRefl.mkT 3 0 0 0 2 (1), PolyRefl.mkT 3 0 0 1 1 (-2), PolyRefl.mkT 3 0 0 2 0 (1)]
def s243_1f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (-1), PolyRefl.mkT 1 0 0 0 0 (1)]
def s243_2p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 2 (1), PolyRefl.mkT 0 2 0 1 1 (-2), PolyRefl.mkT 0 2 0 2 0 (1), PolyRefl.mkT 2 0 0 0 2 (1), PolyRefl.mkT 2 0 0 1 1 (-2), PolyRefl.mkT 2 0 0 2 0 (1)]
def s243_2s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 2 (1), PolyRefl.mkT 0 2 0 1 1 (-2), PolyRefl.mkT 0 2 0 2 0 (1), PolyRefl.mkT 2 0 0 0 2 (1), PolyRefl.mkT 2 0 0 1 1 (-2), PolyRefl.mkT 2 0 0 2 0 (1)]
def s243_2f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (-1), PolyRefl.mkT 0 0 0 1 0 (1)]
def s243_3p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 1 (-1), PolyRefl.mkT 0 2 0 1 0 (1), PolyRefl.mkT 2 0 0 0 1 (-1), PolyRefl.mkT 2 0 0 1 0 (1)]
def s243_3s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 1 (-1), PolyRefl.mkT 0 2 0 1 0 (1), PolyRefl.mkT 2 0 0 0 1 (-1), PolyRefl.mkT 2 0 0 1 0 (1)]
def s243_3f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 0 (1), PolyRefl.mkT 2 0 0 0 0 (1)]
def s243_4p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (-1), PolyRefl.mkT 0 0 0 1 0 (1)]
def s243_4s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (-1), PolyRefl.mkT 0 0 0 1 0 (1)]
def s243_4f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (-1), PolyRefl.mkT 0 0 0 1 0 (1)]
def s243_5p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (1)]
def s243_5s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (1)]

theorem screen_dead_243_2_2
    (hpq : p ≠ q) (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :
    PolyRefl.eval (s243_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
  have hπ0 : ((⟨A, B⟩ : GaussianInt)) ≠ 0 := (prime_pi p A B hpAB).ne_zero
  have hχ0 : ((⟨C, D⟩ : GaussianInt)) ≠ 0 := (prime_pi q C D hqCD).ne_zero
  have hπs0 : (star (⟨A, B⟩ : GaussianInt)) ≠ 0 := fun h => hπ0 (by simpa using congrArg star h)
  have hχs0 : (star (⟨C, D⟩ : GaussianInt)) ≠ 0 := fun h => hχ0 (by simpa using congrArg star h)
  have e0s : PolyRefl.eval (s243_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 1 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 1) * PolyRefl.eval (s243_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s243_0p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 1, 1), 1) (s243_0s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e0f : PolyRefl.eval (s243_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s243_0f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s243_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h0f : PolyRefl.eval (s243_0f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne p A B hpodd hpAB 1 (by norm_num)
    linear_combination (norm := (simp only [s243_0f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e1s : PolyRefl.eval (s243_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s243_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s243_1p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s243_1s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e1f : PolyRefl.eval (s243_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s243_1f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s243_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h1f : PolyRefl.eval (s243_1f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply sub_ne_zero.mpr (sub_ne_zero.mp (LibraryNonzero.lib_diff_ne p A B hpodd hpAB 1 (by norm_num)))
    linear_combination (norm := (simp only [s243_1f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e2s : PolyRefl.eval (s243_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s243_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s243_2p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s243_2s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e2f : PolyRefl.eval (s243_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s243_2f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s243_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h2f : PolyRefl.eval (s243_2f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply sub_ne_zero.mpr (sub_ne_zero.mp (LibraryNonzero.lib_diff_ne q C D hqodd hqCD 1 (by norm_num)))
    linear_combination (norm := (simp only [s243_2f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e3s : PolyRefl.eval (s243_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s243_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s243_3p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s243_3s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e3f : PolyRefl.eval (s243_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s243_3f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s243_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h3f : PolyRefl.eval (s243_3f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne p A B hpodd hpAB 2 (by norm_num)
    linear_combination (norm := (simp only [s243_3f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e4s : PolyRefl.eval (s243_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s243_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s243_4p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s243_4s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e4f : PolyRefl.eval (s243_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s243_4f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s243_5p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h4f : PolyRefl.eval (s243_4f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply sub_ne_zero.mpr (sub_ne_zero.mp (LibraryNonzero.lib_diff_ne q C D hqodd hqCD 1 (by norm_num)))
    linear_combination (norm := (simp only [s243_4f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e5s : PolyRefl.eval (s243_5p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s243_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s243_5p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s243_5s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have hcore : PolyRefl.eval (s243_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    have hval : PolyRefl.eval (s243_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = ((1 : ℤ) : GaussianInt) := by
      simp [s243_5s_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF]
    rw [hval]
    exact_mod_cast (by norm_num : (1 : ℤ) ≠ 0)
  -- assemble the nonzero product bottom-up
  have hb5 : PolyRefl.eval (s243_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := hcore
  have hbp5 : PolyRefl.eval (s243_5p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e5s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb5)
  have hb4s : PolyRefl.eval (s243_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e4f]
    exact mul_ne_zero h4f hbp5
  have hbp4 : PolyRefl.eval (s243_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e4s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb4s)
  have hb3s : PolyRefl.eval (s243_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e3f]
    exact mul_ne_zero h3f hbp4
  have hbp3 : PolyRefl.eval (s243_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e3s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb3s)
  have hb2s : PolyRefl.eval (s243_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e2f]
    exact mul_ne_zero h2f hbp3
  have hbp2 : PolyRefl.eval (s243_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e2s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb2s)
  have hb1s : PolyRefl.eval (s243_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e1f]
    exact mul_ne_zero h1f hbp2
  have hbp1 : PolyRefl.eval (s243_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e1s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb1s)
  have hb0s : PolyRefl.eval (s243_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e0f]
    exact mul_ne_zero h0f hbp1
  have hbp0 : PolyRefl.eval (s243_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e0s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb0s)
  exact hbp0

def s362_0p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 1 3 0 1 3 (1), PolyRefl.mkT 1 3 0 3 1 (-1), PolyRefl.mkT 2 2 0 1 3 (2), PolyRefl.mkT 2 2 0 3 1 (-2), PolyRefl.mkT 3 1 0 1 3 (1), PolyRefl.mkT 3 1 0 3 1 (-1)]
def s362_0s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 2 (1), PolyRefl.mkT 0 2 0 2 0 (-1), PolyRefl.mkT 1 1 0 0 2 (2), PolyRefl.mkT 1 1 0 2 0 (-2), PolyRefl.mkT 2 0 0 0 2 (1), PolyRefl.mkT 2 0 0 2 0 (-1)]
def s362_0f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (1), PolyRefl.mkT 1 0 0 0 0 (1)]
def s362_1p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 2 (1), PolyRefl.mkT 0 1 0 2 0 (-1), PolyRefl.mkT 1 0 0 0 2 (1), PolyRefl.mkT 1 0 0 2 0 (-1)]
def s362_1s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 2 (1), PolyRefl.mkT 0 1 0 2 0 (-1), PolyRefl.mkT 1 0 0 0 2 (1), PolyRefl.mkT 1 0 0 2 0 (-1)]
def s362_1f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (1), PolyRefl.mkT 0 0 0 1 0 (1)]
def s362_2p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 1 (1), PolyRefl.mkT 0 1 0 1 0 (-1), PolyRefl.mkT 1 0 0 0 1 (1), PolyRefl.mkT 1 0 0 1 0 (-1)]
def s362_2s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 1 (1), PolyRefl.mkT 0 1 0 1 0 (-1), PolyRefl.mkT 1 0 0 0 1 (1), PolyRefl.mkT 1 0 0 1 0 (-1)]
def s362_2f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (-1), PolyRefl.mkT 0 0 0 1 0 (1)]
def s362_3p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (-1), PolyRefl.mkT 1 0 0 0 0 (-1)]
def s362_3s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (-1), PolyRefl.mkT 1 0 0 0 0 (-1)]
def s362_3f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (1), PolyRefl.mkT 1 0 0 0 0 (1)]
def s362_4p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (-1)]
def s362_4s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (-1)]

theorem screen_dead_362_2_2
    (hpq : p ≠ q) (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :
    PolyRefl.eval (s362_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
  have hπ0 : ((⟨A, B⟩ : GaussianInt)) ≠ 0 := (prime_pi p A B hpAB).ne_zero
  have hχ0 : ((⟨C, D⟩ : GaussianInt)) ≠ 0 := (prime_pi q C D hqCD).ne_zero
  have hπs0 : (star (⟨A, B⟩ : GaussianInt)) ≠ 0 := fun h => hπ0 (by simpa using congrArg star h)
  have hχs0 : (star (⟨C, D⟩ : GaussianInt)) ≠ 0 := fun h => hχ0 (by simpa using congrArg star h)
  have e0s : PolyRefl.eval (s362_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 1 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 1 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 1 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 1) * PolyRefl.eval (s362_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s362_0p_2_2)
      (Q := PolyRefl.mulTerm ((1, 1, 0, 1, 1), 1) (s362_0s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e0f : PolyRefl.eval (s362_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s362_0f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s362_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h0f : PolyRefl.eval (s362_0f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne p A B hpodd hpAB 1 (by norm_num)
    linear_combination (norm := (simp only [s362_0f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e1s : PolyRefl.eval (s362_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s362_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s362_1p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s362_1s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e1f : PolyRefl.eval (s362_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s362_1f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s362_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h1f : PolyRefl.eval (s362_1f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne q C D hqodd hqCD 1 (by norm_num)
    linear_combination (norm := (simp only [s362_1f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e2s : PolyRefl.eval (s362_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s362_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s362_2p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s362_2s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e2f : PolyRefl.eval (s362_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s362_2f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s362_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h2f : PolyRefl.eval (s362_2f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply sub_ne_zero.mpr (sub_ne_zero.mp (LibraryNonzero.lib_diff_ne q C D hqodd hqCD 1 (by norm_num)))
    linear_combination (norm := (simp only [s362_2f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e3s : PolyRefl.eval (s362_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s362_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s362_3p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s362_3s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e3f : PolyRefl.eval (s362_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s362_3f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s362_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h3f : PolyRefl.eval (s362_3f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne p A B hpodd hpAB 1 (by norm_num)
    linear_combination (norm := (simp only [s362_3f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e4s : PolyRefl.eval (s362_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s362_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s362_4p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s362_4s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have hcore : PolyRefl.eval (s362_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    have hval : PolyRefl.eval (s362_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = ((-1 : ℤ) : GaussianInt) := by
      simp [s362_4s_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF]
    rw [hval]
    exact_mod_cast (by norm_num : (-1 : ℤ) ≠ 0)
  -- assemble the nonzero product bottom-up
  have hb4 : PolyRefl.eval (s362_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := hcore
  have hbp4 : PolyRefl.eval (s362_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e4s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb4)
  have hb3s : PolyRefl.eval (s362_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e3f]
    exact mul_ne_zero h3f hbp4
  have hbp3 : PolyRefl.eval (s362_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e3s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb3s)
  have hb2s : PolyRefl.eval (s362_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e2f]
    exact mul_ne_zero h2f hbp3
  have hbp2 : PolyRefl.eval (s362_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e2s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb2s)
  have hb1s : PolyRefl.eval (s362_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e1f]
    exact mul_ne_zero h1f hbp2
  have hbp1 : PolyRefl.eval (s362_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e1s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb1s)
  have hb0s : PolyRefl.eval (s362_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e0f]
    exact mul_ne_zero h0f hbp1
  have hbp0 : PolyRefl.eval (s362_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e0s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb0s)
  exact hbp0

def s410_0p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (1), PolyRefl.mkT 0 4 0 2 2 (2), PolyRefl.mkT 0 4 0 3 1 (1), PolyRefl.mkT 4 0 0 1 3 (-1), PolyRefl.mkT 4 0 0 2 2 (-2), PolyRefl.mkT 4 0 0 3 1 (-1)]
def s410_0s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (1), PolyRefl.mkT 0 4 0 1 1 (2), PolyRefl.mkT 0 4 0 2 0 (1), PolyRefl.mkT 4 0 0 0 2 (-1), PolyRefl.mkT 4 0 0 1 1 (-2), PolyRefl.mkT 4 0 0 2 0 (-1)]
def s410_0f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (1), PolyRefl.mkT 1 0 0 0 0 (1)]
def s410_1p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 0 2 (1), PolyRefl.mkT 0 3 0 1 1 (2), PolyRefl.mkT 0 3 0 2 0 (1), PolyRefl.mkT 1 2 0 0 2 (-1), PolyRefl.mkT 1 2 0 1 1 (-2), PolyRefl.mkT 1 2 0 2 0 (-1), PolyRefl.mkT 2 1 0 0 2 (1), PolyRefl.mkT 2 1 0 1 1 (2), PolyRefl.mkT 2 1 0 2 0 (1), PolyRefl.mkT 3 0 0 0 2 (-1), PolyRefl.mkT 3 0 0 1 1 (-2), PolyRefl.mkT 3 0 0 2 0 (-1)]
def s410_1s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 0 2 (1), PolyRefl.mkT 0 3 0 1 1 (2), PolyRefl.mkT 0 3 0 2 0 (1), PolyRefl.mkT 1 2 0 0 2 (-1), PolyRefl.mkT 1 2 0 1 1 (-2), PolyRefl.mkT 1 2 0 2 0 (-1), PolyRefl.mkT 2 1 0 0 2 (1), PolyRefl.mkT 2 1 0 1 1 (2), PolyRefl.mkT 2 1 0 2 0 (1), PolyRefl.mkT 3 0 0 0 2 (-1), PolyRefl.mkT 3 0 0 1 1 (-2), PolyRefl.mkT 3 0 0 2 0 (-1)]
def s410_1f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (1), PolyRefl.mkT 0 0 0 1 0 (1)]
def s410_2p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 0 1 (1), PolyRefl.mkT 0 3 0 1 0 (1), PolyRefl.mkT 1 2 0 0 1 (-1), PolyRefl.mkT 1 2 0 1 0 (-1), PolyRefl.mkT 2 1 0 0 1 (1), PolyRefl.mkT 2 1 0 1 0 (1), PolyRefl.mkT 3 0 0 0 1 (-1), PolyRefl.mkT 3 0 0 1 0 (-1)]
def s410_2s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 0 1 (1), PolyRefl.mkT 0 3 0 1 0 (1), PolyRefl.mkT 1 2 0 0 1 (-1), PolyRefl.mkT 1 2 0 1 0 (-1), PolyRefl.mkT 2 1 0 0 1 (1), PolyRefl.mkT 2 1 0 1 0 (1), PolyRefl.mkT 3 0 0 0 1 (-1), PolyRefl.mkT 3 0 0 1 0 (-1)]
def s410_2f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (-1), PolyRefl.mkT 1 0 0 0 0 (1)]
def s410_3p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 1 (-1), PolyRefl.mkT 0 2 0 1 0 (-1), PolyRefl.mkT 2 0 0 0 1 (-1), PolyRefl.mkT 2 0 0 1 0 (-1)]
def s410_3s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 1 (-1), PolyRefl.mkT 0 2 0 1 0 (-1), PolyRefl.mkT 2 0 0 0 1 (-1), PolyRefl.mkT 2 0 0 1 0 (-1)]
def s410_3f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 0 (1), PolyRefl.mkT 2 0 0 0 0 (1)]
def s410_4p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (-1), PolyRefl.mkT 0 0 0 1 0 (-1)]
def s410_4s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (-1), PolyRefl.mkT 0 0 0 1 0 (-1)]
def s410_4f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (1), PolyRefl.mkT 0 0 0 1 0 (1)]
def s410_5p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (-1)]
def s410_5s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (-1)]

theorem screen_dead_410_2_2
    (hpq : p ≠ q) (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :
    PolyRefl.eval (s410_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
  have hπ0 : ((⟨A, B⟩ : GaussianInt)) ≠ 0 := (prime_pi p A B hpAB).ne_zero
  have hχ0 : ((⟨C, D⟩ : GaussianInt)) ≠ 0 := (prime_pi q C D hqCD).ne_zero
  have hπs0 : (star (⟨A, B⟩ : GaussianInt)) ≠ 0 := fun h => hπ0 (by simpa using congrArg star h)
  have hχs0 : (star (⟨C, D⟩ : GaussianInt)) ≠ 0 := fun h => hχ0 (by simpa using congrArg star h)
  have e0s : PolyRefl.eval (s410_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 1 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 1) * PolyRefl.eval (s410_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s410_0p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 1, 1), 1) (s410_0s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e0f : PolyRefl.eval (s410_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s410_0f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s410_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h0f : PolyRefl.eval (s410_0f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne p A B hpodd hpAB 1 (by norm_num)
    linear_combination (norm := (simp only [s410_0f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e1s : PolyRefl.eval (s410_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s410_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s410_1p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s410_1s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e1f : PolyRefl.eval (s410_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s410_1f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s410_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h1f : PolyRefl.eval (s410_1f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne q C D hqodd hqCD 1 (by norm_num)
    linear_combination (norm := (simp only [s410_1f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e2s : PolyRefl.eval (s410_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s410_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s410_2p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s410_2s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e2f : PolyRefl.eval (s410_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s410_2f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s410_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h2f : PolyRefl.eval (s410_2f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply sub_ne_zero.mpr (sub_ne_zero.mp (LibraryNonzero.lib_diff_ne p A B hpodd hpAB 1 (by norm_num)))
    linear_combination (norm := (simp only [s410_2f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e3s : PolyRefl.eval (s410_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s410_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s410_3p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s410_3s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e3f : PolyRefl.eval (s410_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s410_3f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s410_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h3f : PolyRefl.eval (s410_3f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne p A B hpodd hpAB 2 (by norm_num)
    linear_combination (norm := (simp only [s410_3f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e4s : PolyRefl.eval (s410_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s410_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s410_4p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s410_4s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e4f : PolyRefl.eval (s410_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s410_4f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s410_5p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h4f : PolyRefl.eval (s410_4f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne q C D hqodd hqCD 1 (by norm_num)
    linear_combination (norm := (simp only [s410_4f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e5s : PolyRefl.eval (s410_5p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s410_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s410_5p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s410_5s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have hcore : PolyRefl.eval (s410_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    have hval : PolyRefl.eval (s410_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = ((-1 : ℤ) : GaussianInt) := by
      simp [s410_5s_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF]
    rw [hval]
    exact_mod_cast (by norm_num : (-1 : ℤ) ≠ 0)
  -- assemble the nonzero product bottom-up
  have hb5 : PolyRefl.eval (s410_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := hcore
  have hbp5 : PolyRefl.eval (s410_5p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e5s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb5)
  have hb4s : PolyRefl.eval (s410_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e4f]
    exact mul_ne_zero h4f hbp5
  have hbp4 : PolyRefl.eval (s410_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e4s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb4s)
  have hb3s : PolyRefl.eval (s410_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e3f]
    exact mul_ne_zero h3f hbp4
  have hbp3 : PolyRefl.eval (s410_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e3s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb3s)
  have hb2s : PolyRefl.eval (s410_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e2f]
    exact mul_ne_zero h2f hbp3
  have hbp2 : PolyRefl.eval (s410_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e2s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb2s)
  have hb1s : PolyRefl.eval (s410_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e1f]
    exact mul_ne_zero h1f hbp2
  have hbp1 : PolyRefl.eval (s410_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e1s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb1s)
  have hb0s : PolyRefl.eval (s410_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e0f]
    exact mul_ne_zero h0f hbp1
  have hbp0 : PolyRefl.eval (s410_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e0s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb0s)
  exact hbp0

def s427_0p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (1), PolyRefl.mkT 0 4 0 3 1 (-1), PolyRefl.mkT 2 2 0 1 3 (2), PolyRefl.mkT 2 2 0 3 1 (-2), PolyRefl.mkT 4 0 0 1 3 (1), PolyRefl.mkT 4 0 0 3 1 (-1)]
def s427_0s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (1), PolyRefl.mkT 0 4 0 2 0 (-1), PolyRefl.mkT 2 2 0 0 2 (2), PolyRefl.mkT 2 2 0 2 0 (-2), PolyRefl.mkT 4 0 0 0 2 (1), PolyRefl.mkT 4 0 0 2 0 (-1)]
def s427_0f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (1), PolyRefl.mkT 0 0 0 1 0 (1)]
def s427_1p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 1 (1), PolyRefl.mkT 0 4 0 1 0 (-1), PolyRefl.mkT 2 2 0 0 1 (2), PolyRefl.mkT 2 2 0 1 0 (-2), PolyRefl.mkT 4 0 0 0 1 (1), PolyRefl.mkT 4 0 0 1 0 (-1)]
def s427_1s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 1 (1), PolyRefl.mkT 0 4 0 1 0 (-1), PolyRefl.mkT 2 2 0 0 1 (2), PolyRefl.mkT 2 2 0 1 0 (-2), PolyRefl.mkT 4 0 0 0 1 (1), PolyRefl.mkT 4 0 0 1 0 (-1)]
def s427_1f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (-1), PolyRefl.mkT 0 0 0 1 0 (1)]
def s427_2p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 0 (-1), PolyRefl.mkT 2 2 0 0 0 (-2), PolyRefl.mkT 4 0 0 0 0 (-1)]
def s427_2s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 0 (-1), PolyRefl.mkT 2 2 0 0 0 (-2), PolyRefl.mkT 4 0 0 0 0 (-1)]
def s427_2f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 0 (1), PolyRefl.mkT 2 0 0 0 0 (1)]
def s427_3p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 0 (-1), PolyRefl.mkT 2 0 0 0 0 (-1)]
def s427_3s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 0 (-1), PolyRefl.mkT 2 0 0 0 0 (-1)]
def s427_3f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 0 (1), PolyRefl.mkT 2 0 0 0 0 (1)]
def s427_4p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (-1)]
def s427_4s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (-1)]

theorem screen_dead_427_2_2
    (hpq : p ≠ q) (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :
    PolyRefl.eval (s427_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
  have hπ0 : ((⟨A, B⟩ : GaussianInt)) ≠ 0 := (prime_pi p A B hpAB).ne_zero
  have hχ0 : ((⟨C, D⟩ : GaussianInt)) ≠ 0 := (prime_pi q C D hqCD).ne_zero
  have hπs0 : (star (⟨A, B⟩ : GaussianInt)) ≠ 0 := fun h => hπ0 (by simpa using congrArg star h)
  have hχs0 : (star (⟨C, D⟩ : GaussianInt)) ≠ 0 := fun h => hχ0 (by simpa using congrArg star h)
  have e0s : PolyRefl.eval (s427_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 1 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 1) * PolyRefl.eval (s427_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s427_0p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 1, 1), 1) (s427_0s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e0f : PolyRefl.eval (s427_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s427_0f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s427_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h0f : PolyRefl.eval (s427_0f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne q C D hqodd hqCD 1 (by norm_num)
    linear_combination (norm := (simp only [s427_0f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e1s : PolyRefl.eval (s427_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s427_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s427_1p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s427_1s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e1f : PolyRefl.eval (s427_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s427_1f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s427_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h1f : PolyRefl.eval (s427_1f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply sub_ne_zero.mpr (sub_ne_zero.mp (LibraryNonzero.lib_diff_ne q C D hqodd hqCD 1 (by norm_num)))
    linear_combination (norm := (simp only [s427_1f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e2s : PolyRefl.eval (s427_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s427_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s427_2p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s427_2s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e2f : PolyRefl.eval (s427_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s427_2f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s427_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h2f : PolyRefl.eval (s427_2f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne p A B hpodd hpAB 2 (by norm_num)
    linear_combination (norm := (simp only [s427_2f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e3s : PolyRefl.eval (s427_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s427_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s427_3p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s427_3s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e3f : PolyRefl.eval (s427_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s427_3f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s427_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h3f : PolyRefl.eval (s427_3f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne p A B hpodd hpAB 2 (by norm_num)
    linear_combination (norm := (simp only [s427_3f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e4s : PolyRefl.eval (s427_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s427_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s427_4p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s427_4s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have hcore : PolyRefl.eval (s427_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    have hval : PolyRefl.eval (s427_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = ((-1 : ℤ) : GaussianInt) := by
      simp [s427_4s_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF]
    rw [hval]
    exact_mod_cast (by norm_num : (-1 : ℤ) ≠ 0)
  -- assemble the nonzero product bottom-up
  have hb4 : PolyRefl.eval (s427_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := hcore
  have hbp4 : PolyRefl.eval (s427_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e4s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb4)
  have hb3s : PolyRefl.eval (s427_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e3f]
    exact mul_ne_zero h3f hbp4
  have hbp3 : PolyRefl.eval (s427_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e3s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb3s)
  have hb2s : PolyRefl.eval (s427_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e2f]
    exact mul_ne_zero h2f hbp3
  have hbp2 : PolyRefl.eval (s427_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e2s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb2s)
  have hb1s : PolyRefl.eval (s427_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e1f]
    exact mul_ne_zero h1f hbp2
  have hbp1 : PolyRefl.eval (s427_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e1s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb1s)
  have hb0s : PolyRefl.eval (s427_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e0f]
    exact mul_ne_zero h0f hbp1
  have hbp0 : PolyRefl.eval (s427_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e0s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb0s)
  exact hbp0

def s485_0p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-1), PolyRefl.mkT 0 4 0 3 1 (1), PolyRefl.mkT 2 2 0 1 3 (2), PolyRefl.mkT 2 2 0 3 1 (-2), PolyRefl.mkT 4 0 0 1 3 (-1), PolyRefl.mkT 4 0 0 3 1 (1)]
def s485_0s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (-1), PolyRefl.mkT 0 4 0 2 0 (1), PolyRefl.mkT 2 2 0 0 2 (2), PolyRefl.mkT 2 2 0 2 0 (-2), PolyRefl.mkT 4 0 0 0 2 (-1), PolyRefl.mkT 4 0 0 2 0 (1)]
def s485_0f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (1), PolyRefl.mkT 1 0 0 0 0 (1)]
def s485_1p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 0 2 (-1), PolyRefl.mkT 0 3 0 2 0 (1), PolyRefl.mkT 1 2 0 0 2 (1), PolyRefl.mkT 1 2 0 2 0 (-1), PolyRefl.mkT 2 1 0 0 2 (1), PolyRefl.mkT 2 1 0 2 0 (-1), PolyRefl.mkT 3 0 0 0 2 (-1), PolyRefl.mkT 3 0 0 2 0 (1)]
def s485_1s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 0 2 (-1), PolyRefl.mkT 0 3 0 2 0 (1), PolyRefl.mkT 1 2 0 0 2 (1), PolyRefl.mkT 1 2 0 2 0 (-1), PolyRefl.mkT 2 1 0 0 2 (1), PolyRefl.mkT 2 1 0 2 0 (-1), PolyRefl.mkT 3 0 0 0 2 (-1), PolyRefl.mkT 3 0 0 2 0 (1)]
def s485_1f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (1), PolyRefl.mkT 0 0 0 1 0 (1)]
def s485_2p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 0 1 (-1), PolyRefl.mkT 0 3 0 1 0 (1), PolyRefl.mkT 1 2 0 0 1 (1), PolyRefl.mkT 1 2 0 1 0 (-1), PolyRefl.mkT 2 1 0 0 1 (1), PolyRefl.mkT 2 1 0 1 0 (-1), PolyRefl.mkT 3 0 0 0 1 (-1), PolyRefl.mkT 3 0 0 1 0 (1)]
def s485_2s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 0 1 (-1), PolyRefl.mkT 0 3 0 1 0 (1), PolyRefl.mkT 1 2 0 0 1 (1), PolyRefl.mkT 1 2 0 1 0 (-1), PolyRefl.mkT 2 1 0 0 1 (1), PolyRefl.mkT 2 1 0 1 0 (-1), PolyRefl.mkT 3 0 0 0 1 (-1), PolyRefl.mkT 3 0 0 1 0 (1)]
def s485_2f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (-1), PolyRefl.mkT 1 0 0 0 0 (1)]
def s485_3p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 1 (1), PolyRefl.mkT 0 2 0 1 0 (-1), PolyRefl.mkT 2 0 0 0 1 (-1), PolyRefl.mkT 2 0 0 1 0 (1)]
def s485_3s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 1 (1), PolyRefl.mkT 0 2 0 1 0 (-1), PolyRefl.mkT 2 0 0 0 1 (-1), PolyRefl.mkT 2 0 0 1 0 (1)]
def s485_3f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (-1), PolyRefl.mkT 0 0 0 1 0 (1)]
def s485_4p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 0 (-1), PolyRefl.mkT 2 0 0 0 0 (1)]
def s485_4s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 0 (-1), PolyRefl.mkT 2 0 0 0 0 (1)]
def s485_4f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 0 (-1), PolyRefl.mkT 2 0 0 0 0 (1)]
def s485_5p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (1)]
def s485_5s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (1)]

theorem screen_dead_485_2_2
    (hpq : p ≠ q) (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :
    PolyRefl.eval (s485_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
  have hπ0 : ((⟨A, B⟩ : GaussianInt)) ≠ 0 := (prime_pi p A B hpAB).ne_zero
  have hχ0 : ((⟨C, D⟩ : GaussianInt)) ≠ 0 := (prime_pi q C D hqCD).ne_zero
  have hπs0 : (star (⟨A, B⟩ : GaussianInt)) ≠ 0 := fun h => hπ0 (by simpa using congrArg star h)
  have hχs0 : (star (⟨C, D⟩ : GaussianInt)) ≠ 0 := fun h => hχ0 (by simpa using congrArg star h)
  have e0s : PolyRefl.eval (s485_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 1 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 1) * PolyRefl.eval (s485_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s485_0p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 1, 1), 1) (s485_0s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e0f : PolyRefl.eval (s485_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s485_0f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s485_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h0f : PolyRefl.eval (s485_0f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne p A B hpodd hpAB 1 (by norm_num)
    linear_combination (norm := (simp only [s485_0f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e1s : PolyRefl.eval (s485_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s485_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s485_1p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s485_1s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e1f : PolyRefl.eval (s485_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s485_1f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s485_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h1f : PolyRefl.eval (s485_1f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne q C D hqodd hqCD 1 (by norm_num)
    linear_combination (norm := (simp only [s485_1f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e2s : PolyRefl.eval (s485_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s485_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s485_2p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s485_2s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e2f : PolyRefl.eval (s485_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s485_2f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s485_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h2f : PolyRefl.eval (s485_2f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply sub_ne_zero.mpr (sub_ne_zero.mp (LibraryNonzero.lib_diff_ne p A B hpodd hpAB 1 (by norm_num)))
    linear_combination (norm := (simp only [s485_2f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e3s : PolyRefl.eval (s485_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s485_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s485_3p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s485_3s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e3f : PolyRefl.eval (s485_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s485_3f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s485_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h3f : PolyRefl.eval (s485_3f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply sub_ne_zero.mpr (sub_ne_zero.mp (LibraryNonzero.lib_diff_ne q C D hqodd hqCD 1 (by norm_num)))
    linear_combination (norm := (simp only [s485_3f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e4s : PolyRefl.eval (s485_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s485_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s485_4p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s485_4s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e4f : PolyRefl.eval (s485_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s485_4f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s485_5p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h4f : PolyRefl.eval (s485_4f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply sub_ne_zero.mpr (sub_ne_zero.mp (LibraryNonzero.lib_diff_ne p A B hpodd hpAB 2 (by norm_num)))
    linear_combination (norm := (simp only [s485_4f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e5s : PolyRefl.eval (s485_5p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s485_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s485_5p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s485_5s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have hcore : PolyRefl.eval (s485_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    have hval : PolyRefl.eval (s485_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = ((1 : ℤ) : GaussianInt) := by
      simp [s485_5s_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF]
    rw [hval]
    exact_mod_cast (by norm_num : (1 : ℤ) ≠ 0)
  -- assemble the nonzero product bottom-up
  have hb5 : PolyRefl.eval (s485_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := hcore
  have hbp5 : PolyRefl.eval (s485_5p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e5s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb5)
  have hb4s : PolyRefl.eval (s485_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e4f]
    exact mul_ne_zero h4f hbp5
  have hbp4 : PolyRefl.eval (s485_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e4s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb4s)
  have hb3s : PolyRefl.eval (s485_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e3f]
    exact mul_ne_zero h3f hbp4
  have hbp3 : PolyRefl.eval (s485_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e3s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb3s)
  have hb2s : PolyRefl.eval (s485_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e2f]
    exact mul_ne_zero h2f hbp3
  have hbp2 : PolyRefl.eval (s485_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e2s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb2s)
  have hb1s : PolyRefl.eval (s485_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e1f]
    exact mul_ne_zero h1f hbp2
  have hbp1 : PolyRefl.eval (s485_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e1s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb1s)
  have hb0s : PolyRefl.eval (s485_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e0f]
    exact mul_ne_zero h0f hbp1
  have hbp0 : PolyRefl.eval (s485_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e0s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb0s)
  exact hbp0

def s490_0p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 4 (-1), PolyRefl.mkT 0 4 0 4 0 (1), PolyRefl.mkT 2 2 0 0 4 (2), PolyRefl.mkT 2 2 0 4 0 (-2), PolyRefl.mkT 4 0 0 0 4 (-1), PolyRefl.mkT 4 0 0 4 0 (1)]
def s490_0s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 4 (-1), PolyRefl.mkT 0 4 0 4 0 (1), PolyRefl.mkT 2 2 0 0 4 (2), PolyRefl.mkT 2 2 0 4 0 (-2), PolyRefl.mkT 4 0 0 0 4 (-1), PolyRefl.mkT 4 0 0 4 0 (1)]
def s490_0f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (1), PolyRefl.mkT 1 0 0 0 0 (1)]
def s490_1p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 0 4 (-1), PolyRefl.mkT 0 3 0 4 0 (1), PolyRefl.mkT 1 2 0 0 4 (1), PolyRefl.mkT 1 2 0 4 0 (-1), PolyRefl.mkT 2 1 0 0 4 (1), PolyRefl.mkT 2 1 0 4 0 (-1), PolyRefl.mkT 3 0 0 0 4 (-1), PolyRefl.mkT 3 0 0 4 0 (1)]
def s490_1s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 0 4 (-1), PolyRefl.mkT 0 3 0 4 0 (1), PolyRefl.mkT 1 2 0 0 4 (1), PolyRefl.mkT 1 2 0 4 0 (-1), PolyRefl.mkT 2 1 0 0 4 (1), PolyRefl.mkT 2 1 0 4 0 (-1), PolyRefl.mkT 3 0 0 0 4 (-1), PolyRefl.mkT 3 0 0 4 0 (1)]
def s490_1f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (1), PolyRefl.mkT 0 0 0 1 0 (1)]
def s490_2p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 0 3 (-1), PolyRefl.mkT 0 3 0 1 2 (1), PolyRefl.mkT 0 3 0 2 1 (-1), PolyRefl.mkT 0 3 0 3 0 (1), PolyRefl.mkT 1 2 0 0 3 (1), PolyRefl.mkT 1 2 0 1 2 (-1), PolyRefl.mkT 1 2 0 2 1 (1), PolyRefl.mkT 1 2 0 3 0 (-1), PolyRefl.mkT 2 1 0 0 3 (1), PolyRefl.mkT 2 1 0 1 2 (-1), PolyRefl.mkT 2 1 0 2 1 (1), PolyRefl.mkT 2 1 0 3 0 (-1), PolyRefl.mkT 3 0 0 0 3 (-1), PolyRefl.mkT 3 0 0 1 2 (1), PolyRefl.mkT 3 0 0 2 1 (-1), PolyRefl.mkT 3 0 0 3 0 (1)]
def s490_2s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 0 3 (-1), PolyRefl.mkT 0 3 0 1 2 (1), PolyRefl.mkT 0 3 0 2 1 (-1), PolyRefl.mkT 0 3 0 3 0 (1), PolyRefl.mkT 1 2 0 0 3 (1), PolyRefl.mkT 1 2 0 1 2 (-1), PolyRefl.mkT 1 2 0 2 1 (1), PolyRefl.mkT 1 2 0 3 0 (-1), PolyRefl.mkT 2 1 0 0 3 (1), PolyRefl.mkT 2 1 0 1 2 (-1), PolyRefl.mkT 2 1 0 2 1 (1), PolyRefl.mkT 2 1 0 3 0 (-1), PolyRefl.mkT 3 0 0 0 3 (-1), PolyRefl.mkT 3 0 0 1 2 (1), PolyRefl.mkT 3 0 0 2 1 (-1), PolyRefl.mkT 3 0 0 3 0 (1)]
def s490_2f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (-1), PolyRefl.mkT 1 0 0 0 0 (1)]
def s490_3p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 3 (1), PolyRefl.mkT 0 2 0 1 2 (-1), PolyRefl.mkT 0 2 0 2 1 (1), PolyRefl.mkT 0 2 0 3 0 (-1), PolyRefl.mkT 2 0 0 0 3 (-1), PolyRefl.mkT 2 0 0 1 2 (1), PolyRefl.mkT 2 0 0 2 1 (-1), PolyRefl.mkT 2 0 0 3 0 (1)]
def s490_3s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 3 (1), PolyRefl.mkT 0 2 0 1 2 (-1), PolyRefl.mkT 0 2 0 2 1 (1), PolyRefl.mkT 0 2 0 3 0 (-1), PolyRefl.mkT 2 0 0 0 3 (-1), PolyRefl.mkT 2 0 0 1 2 (1), PolyRefl.mkT 2 0 0 2 1 (-1), PolyRefl.mkT 2 0 0 3 0 (1)]
def s490_3f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (-1), PolyRefl.mkT 0 0 0 1 0 (1)]
def s490_4p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 2 (-1), PolyRefl.mkT 0 2 0 2 0 (-1), PolyRefl.mkT 2 0 0 0 2 (1), PolyRefl.mkT 2 0 0 2 0 (1)]
def s490_4s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 2 (-1), PolyRefl.mkT 0 2 0 2 0 (-1), PolyRefl.mkT 2 0 0 0 2 (1), PolyRefl.mkT 2 0 0 2 0 (1)]
def s490_4f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 2 (1), PolyRefl.mkT 0 0 0 2 0 (1)]
def s490_5p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 0 (-1), PolyRefl.mkT 2 0 0 0 0 (1)]
def s490_5s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 0 (-1), PolyRefl.mkT 2 0 0 0 0 (1)]
def s490_5f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 0 (-1), PolyRefl.mkT 2 0 0 0 0 (1)]
def s490_6p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (1)]
def s490_6s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (1)]

theorem screen_dead_490_2_2
    (hpq : p ≠ q) (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :
    PolyRefl.eval (s490_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
  have hπ0 : ((⟨A, B⟩ : GaussianInt)) ≠ 0 := (prime_pi p A B hpAB).ne_zero
  have hχ0 : ((⟨C, D⟩ : GaussianInt)) ≠ 0 := (prime_pi q C D hqCD).ne_zero
  have hπs0 : (star (⟨A, B⟩ : GaussianInt)) ≠ 0 := fun h => hπ0 (by simpa using congrArg star h)
  have hχs0 : (star (⟨C, D⟩ : GaussianInt)) ≠ 0 := fun h => hχ0 (by simpa using congrArg star h)
  have e0s : PolyRefl.eval (s490_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s490_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s490_0p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s490_0s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e0f : PolyRefl.eval (s490_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s490_0f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s490_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h0f : PolyRefl.eval (s490_0f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne p A B hpodd hpAB 1 (by norm_num)
    linear_combination (norm := (simp only [s490_0f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e1s : PolyRefl.eval (s490_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s490_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s490_1p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s490_1s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e1f : PolyRefl.eval (s490_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s490_1f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s490_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h1f : PolyRefl.eval (s490_1f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne q C D hqodd hqCD 1 (by norm_num)
    linear_combination (norm := (simp only [s490_1f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e2s : PolyRefl.eval (s490_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s490_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s490_2p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s490_2s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e2f : PolyRefl.eval (s490_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s490_2f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s490_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h2f : PolyRefl.eval (s490_2f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply sub_ne_zero.mpr (sub_ne_zero.mp (LibraryNonzero.lib_diff_ne p A B hpodd hpAB 1 (by norm_num)))
    linear_combination (norm := (simp only [s490_2f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e3s : PolyRefl.eval (s490_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s490_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s490_3p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s490_3s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e3f : PolyRefl.eval (s490_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s490_3f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s490_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h3f : PolyRefl.eval (s490_3f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply sub_ne_zero.mpr (sub_ne_zero.mp (LibraryNonzero.lib_diff_ne q C D hqodd hqCD 1 (by norm_num)))
    linear_combination (norm := (simp only [s490_3f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e4s : PolyRefl.eval (s490_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s490_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s490_4p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s490_4s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e4f : PolyRefl.eval (s490_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s490_4f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s490_5p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h4f : PolyRefl.eval (s490_4f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne q C D hqodd hqCD 2 (by norm_num)
    linear_combination (norm := (simp only [s490_4f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e5s : PolyRefl.eval (s490_5p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s490_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s490_5p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s490_5s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e5f : PolyRefl.eval (s490_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s490_5f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s490_6p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h5f : PolyRefl.eval (s490_5f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply sub_ne_zero.mpr (sub_ne_zero.mp (LibraryNonzero.lib_diff_ne p A B hpodd hpAB 2 (by norm_num)))
    linear_combination (norm := (simp only [s490_5f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e6s : PolyRefl.eval (s490_6p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s490_6s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s490_6p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s490_6s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have hcore : PolyRefl.eval (s490_6s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    have hval : PolyRefl.eval (s490_6s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = ((1 : ℤ) : GaussianInt) := by
      simp [s490_6s_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF]
    rw [hval]
    exact_mod_cast (by norm_num : (1 : ℤ) ≠ 0)
  -- assemble the nonzero product bottom-up
  have hb6 : PolyRefl.eval (s490_6s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := hcore
  have hbp6 : PolyRefl.eval (s490_6p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e6s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb6)
  have hb5s : PolyRefl.eval (s490_5s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e5f]
    exact mul_ne_zero h5f hbp6
  have hbp5 : PolyRefl.eval (s490_5p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e5s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb5s)
  have hb4s : PolyRefl.eval (s490_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e4f]
    exact mul_ne_zero h4f hbp5
  have hbp4 : PolyRefl.eval (s490_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e4s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb4s)
  have hb3s : PolyRefl.eval (s490_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e3f]
    exact mul_ne_zero h3f hbp4
  have hbp3 : PolyRefl.eval (s490_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e3s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb3s)
  have hb2s : PolyRefl.eval (s490_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e2f]
    exact mul_ne_zero h2f hbp3
  have hbp2 : PolyRefl.eval (s490_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e2s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb2s)
  have hb1s : PolyRefl.eval (s490_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e1f]
    exact mul_ne_zero h1f hbp2
  have hbp1 : PolyRefl.eval (s490_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e1s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb1s)
  have hb0s : PolyRefl.eval (s490_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e0f]
    exact mul_ne_zero h0f hbp1
  have hbp0 : PolyRefl.eval (s490_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e0s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb0s)
  exact hbp0

def s494_0p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 1 3 0 1 3 (1), PolyRefl.mkT 1 3 0 2 2 (2), PolyRefl.mkT 1 3 0 3 1 (1), PolyRefl.mkT 3 1 0 1 3 (-1), PolyRefl.mkT 3 1 0 2 2 (-2), PolyRefl.mkT 3 1 0 3 1 (-1)]
def s494_0s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 2 (1), PolyRefl.mkT 0 2 0 1 1 (2), PolyRefl.mkT 0 2 0 2 0 (1), PolyRefl.mkT 2 0 0 0 2 (-1), PolyRefl.mkT 2 0 0 1 1 (-2), PolyRefl.mkT 2 0 0 2 0 (-1)]
def s494_0f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (1), PolyRefl.mkT 1 0 0 0 0 (1)]
def s494_1p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 2 (1), PolyRefl.mkT 0 1 0 1 1 (2), PolyRefl.mkT 0 1 0 2 0 (1), PolyRefl.mkT 1 0 0 0 2 (-1), PolyRefl.mkT 1 0 0 1 1 (-2), PolyRefl.mkT 1 0 0 2 0 (-1)]
def s494_1s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 2 (1), PolyRefl.mkT 0 1 0 1 1 (2), PolyRefl.mkT 0 1 0 2 0 (1), PolyRefl.mkT 1 0 0 0 2 (-1), PolyRefl.mkT 1 0 0 1 1 (-2), PolyRefl.mkT 1 0 0 2 0 (-1)]
def s494_1f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (1), PolyRefl.mkT 0 0 0 1 0 (1)]
def s494_2p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 1 (1), PolyRefl.mkT 0 1 0 1 0 (1), PolyRefl.mkT 1 0 0 0 1 (-1), PolyRefl.mkT 1 0 0 1 0 (-1)]
def s494_2s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 1 (1), PolyRefl.mkT 0 1 0 1 0 (1), PolyRefl.mkT 1 0 0 0 1 (-1), PolyRefl.mkT 1 0 0 1 0 (-1)]
def s494_2f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (-1), PolyRefl.mkT 1 0 0 0 0 (1)]
def s494_3p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (-1), PolyRefl.mkT 0 0 0 1 0 (-1)]
def s494_3s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (-1), PolyRefl.mkT 0 0 0 1 0 (-1)]
def s494_3f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 1 (1), PolyRefl.mkT 0 0 0 1 0 (1)]
def s494_4p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (-1)]
def s494_4s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (-1)]

theorem screen_dead_494_2_2
    (hpq : p ≠ q) (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :
    PolyRefl.eval (s494_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
  have hπ0 : ((⟨A, B⟩ : GaussianInt)) ≠ 0 := (prime_pi p A B hpAB).ne_zero
  have hχ0 : ((⟨C, D⟩ : GaussianInt)) ≠ 0 := (prime_pi q C D hqCD).ne_zero
  have hπs0 : (star (⟨A, B⟩ : GaussianInt)) ≠ 0 := fun h => hπ0 (by simpa using congrArg star h)
  have hχs0 : (star (⟨C, D⟩ : GaussianInt)) ≠ 0 := fun h => hχ0 (by simpa using congrArg star h)
  have e0s : PolyRefl.eval (s494_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 1 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 1 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 1 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 1) * PolyRefl.eval (s494_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s494_0p_2_2)
      (Q := PolyRefl.mulTerm ((1, 1, 0, 1, 1), 1) (s494_0s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e0f : PolyRefl.eval (s494_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s494_0f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s494_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h0f : PolyRefl.eval (s494_0f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne p A B hpodd hpAB 1 (by norm_num)
    linear_combination (norm := (simp only [s494_0f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e1s : PolyRefl.eval (s494_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s494_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s494_1p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s494_1s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e1f : PolyRefl.eval (s494_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s494_1f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s494_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h1f : PolyRefl.eval (s494_1f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne q C D hqodd hqCD 1 (by norm_num)
    linear_combination (norm := (simp only [s494_1f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e2s : PolyRefl.eval (s494_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s494_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s494_2p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s494_2s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e2f : PolyRefl.eval (s494_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s494_2f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s494_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h2f : PolyRefl.eval (s494_2f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply sub_ne_zero.mpr (sub_ne_zero.mp (LibraryNonzero.lib_diff_ne p A B hpodd hpAB 1 (by norm_num)))
    linear_combination (norm := (simp only [s494_2f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e3s : PolyRefl.eval (s494_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s494_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s494_3p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s494_3s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e3f : PolyRefl.eval (s494_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s494_3f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s494_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h3f : PolyRefl.eval (s494_3f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne q C D hqodd hqCD 1 (by norm_num)
    linear_combination (norm := (simp only [s494_3f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e4s : PolyRefl.eval (s494_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s494_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s494_4p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s494_4s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have hcore : PolyRefl.eval (s494_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    have hval : PolyRefl.eval (s494_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = ((-1 : ℤ) : GaussianInt) := by
      simp [s494_4s_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF]
    rw [hval]
    exact_mod_cast (by norm_num : (-1 : ℤ) ≠ 0)
  -- assemble the nonzero product bottom-up
  have hb4 : PolyRefl.eval (s494_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := hcore
  have hbp4 : PolyRefl.eval (s494_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e4s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb4)
  have hb3s : PolyRefl.eval (s494_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e3f]
    exact mul_ne_zero h3f hbp4
  have hbp3 : PolyRefl.eval (s494_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e3s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb3s)
  have hb2s : PolyRefl.eval (s494_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e2f]
    exact mul_ne_zero h2f hbp3
  have hbp2 : PolyRefl.eval (s494_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e2s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb2s)
  have hb1s : PolyRefl.eval (s494_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e1f]
    exact mul_ne_zero h1f hbp2
  have hbp1 : PolyRefl.eval (s494_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e1s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb1s)
  have hb0s : PolyRefl.eval (s494_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e0f]
    exact mul_ne_zero h0f hbp1
  have hbp0 : PolyRefl.eval (s494_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e0s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb0s)
  exact hbp0

def s533_0p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 1 3 0 0 4 (1), PolyRefl.mkT 1 3 0 2 2 (2), PolyRefl.mkT 1 3 0 4 0 (1), PolyRefl.mkT 3 1 0 0 4 (-1), PolyRefl.mkT 3 1 0 2 2 (-2), PolyRefl.mkT 3 1 0 4 0 (-1)]
def s533_0s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 4 (1), PolyRefl.mkT 0 2 0 2 2 (2), PolyRefl.mkT 0 2 0 4 0 (1), PolyRefl.mkT 2 0 0 0 4 (-1), PolyRefl.mkT 2 0 0 2 2 (-2), PolyRefl.mkT 2 0 0 4 0 (-1)]
def s533_0f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (1), PolyRefl.mkT 1 0 0 0 0 (1)]
def s533_1p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 4 (1), PolyRefl.mkT 0 1 0 2 2 (2), PolyRefl.mkT 0 1 0 4 0 (1), PolyRefl.mkT 1 0 0 0 4 (-1), PolyRefl.mkT 1 0 0 2 2 (-2), PolyRefl.mkT 1 0 0 4 0 (-1)]
def s533_1s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 4 (1), PolyRefl.mkT 0 1 0 2 2 (2), PolyRefl.mkT 0 1 0 4 0 (1), PolyRefl.mkT 1 0 0 0 4 (-1), PolyRefl.mkT 1 0 0 2 2 (-2), PolyRefl.mkT 1 0 0 4 0 (-1)]
def s533_1f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 0 (-1), PolyRefl.mkT 1 0 0 0 0 (1)]
def s533_2p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 4 (-1), PolyRefl.mkT 0 0 0 2 2 (-2), PolyRefl.mkT 0 0 0 4 0 (-1)]
def s533_2s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 4 (-1), PolyRefl.mkT 0 0 0 2 2 (-2), PolyRefl.mkT 0 0 0 4 0 (-1)]
def s533_2f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 2 (1), PolyRefl.mkT 0 0 0 2 0 (1)]
def s533_3p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 2 (-1), PolyRefl.mkT 0 0 0 2 0 (-1)]
def s533_3s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 2 (-1), PolyRefl.mkT 0 0 0 2 0 (-1)]
def s533_3f_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 2 (1), PolyRefl.mkT 0 0 0 2 0 (1)]
def s533_4p_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (-1)]
def s533_4s_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (-1)]

theorem screen_dead_533_2_2
    (hpq : p ≠ q) (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :
    PolyRefl.eval (s533_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
  have hπ0 : ((⟨A, B⟩ : GaussianInt)) ≠ 0 := (prime_pi p A B hpAB).ne_zero
  have hχ0 : ((⟨C, D⟩ : GaussianInt)) ≠ 0 := (prime_pi q C D hqCD).ne_zero
  have hπs0 : (star (⟨A, B⟩ : GaussianInt)) ≠ 0 := fun h => hπ0 (by simpa using congrArg star h)
  have hχs0 : (star (⟨C, D⟩ : GaussianInt)) ≠ 0 := fun h => hχ0 (by simpa using congrArg star h)
  have e0s : PolyRefl.eval (s533_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 1 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 1 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s533_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s533_0p_2_2)
      (Q := PolyRefl.mulTerm ((1, 1, 0, 0, 0), 1) (s533_0s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e0f : PolyRefl.eval (s533_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s533_0f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s533_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h0f : PolyRefl.eval (s533_0f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne p A B hpodd hpAB 1 (by norm_num)
    linear_combination (norm := (simp only [s533_0f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e1s : PolyRefl.eval (s533_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s533_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s533_1p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s533_1s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e1f : PolyRefl.eval (s533_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s533_1f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s533_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h1f : PolyRefl.eval (s533_1f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply sub_ne_zero.mpr (sub_ne_zero.mp (LibraryNonzero.lib_diff_ne p A B hpodd hpAB 1 (by norm_num)))
    linear_combination (norm := (simp only [s533_1f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e2s : PolyRefl.eval (s533_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s533_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s533_2p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s533_2s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e2f : PolyRefl.eval (s533_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s533_2f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s533_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h2f : PolyRefl.eval (s533_2f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne q C D hqodd hqCD 2 (by norm_num)
    linear_combination (norm := (simp only [s533_2f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e3s : PolyRefl.eval (s533_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s533_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s533_3p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s533_3s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have e3f : PolyRefl.eval (s533_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = PolyRefl.eval (s533_3f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) * PolyRefl.eval (s533_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) :=
    PolyRefl.eval_factor _ _ _ (by native_decide) _ _ _ _ _
  have h3f : PolyRefl.eval (s533_3f_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    intro h0
    apply LibraryNonzero.lib_sum_ne q C D hqodd hqCD 2 (by norm_num)
    linear_combination (norm := (simp only [s533_3f_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]; push_cast; ring_nf)) h0
  have e4s : PolyRefl.eval (s533_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = (((⟨A, B⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨A, B⟩ : GaussianInt)) ^ 2) ^ 0 * ((⟨C, D⟩ : GaussianInt) ^ 2) ^ 0 * ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ^ 0) * PolyRefl.eval (s533_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq (P := s533_4p_2_2)
      (Q := PolyRefl.mulTerm ((0, 0, 0, 0, 0), 1) (s533_4s_2_2)) (by native_decide)]
    rw [PolyRefl.eval_mulTerm]
    push_cast
    ring
  have hcore : PolyRefl.eval (s533_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    have hval : PolyRefl.eval (s533_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) = ((-1 : ℤ) : GaussianInt) := by
      simp [s533_4s_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF]
    rw [hval]
    exact_mod_cast (by norm_num : (-1 : ℤ) ≠ 0)
  -- assemble the nonzero product bottom-up
  have hb4 : PolyRefl.eval (s533_4s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := hcore
  have hbp4 : PolyRefl.eval (s533_4p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e4s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb4)
  have hb3s : PolyRefl.eval (s533_3s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e3f]
    exact mul_ne_zero h3f hbp4
  have hbp3 : PolyRefl.eval (s533_3p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e3s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb3s)
  have hb2s : PolyRefl.eval (s533_2s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e2f]
    exact mul_ne_zero h2f hbp3
  have hbp2 : PolyRefl.eval (s533_2p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e2s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb2s)
  have hb1s : PolyRefl.eval (s533_1s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e1f]
    exact mul_ne_zero h1f hbp2
  have hbp1 : PolyRefl.eval (s533_1p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e1s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb1s)
  have hb0s : PolyRefl.eval (s533_0s_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e0f]
    exact mul_ne_zero h0f hbp1
  have hbp0 : PolyRefl.eval (s533_0p_2_2) ((⟨A, B⟩ : GaussianInt) ^ 2) ((star (⟨A, B⟩ : GaussianInt)) ^ 2) 1 ((⟨C, D⟩ : GaussianInt) ^ 2) ((star (⟨C, D⟩ : GaussianInt)) ^ 2) ≠ 0 := by
    rw [e0s]
    exact mul_ne_zero (Router.mono_ne_zero _ _ _ _ (pow_ne_zero _ hπ0) (pow_ne_zero _ hπs0) (pow_ne_zero _ hχ0) (pow_ne_zero _ hχs0) _ _ _ _) (hb0s)
  exact hbp0

end ScreenCert
