/-
Kernel lemmas for Theorem E (no center s·p·q), machine-checked:
the strict pinch and the parity kills that close branches 1 and 2
of the minimal two-prime case analysis.
-/
import Mathlib

/-- **Strict pinch.**  If RA²+IA² = P², RB²+IB² = Q² with IA, IB ≠ 0, then
|RA·RB| < P·Q; in particular RA·RB = ±P·Q is impossible. -/
theorem strict_pinch (RA IA RB IB P Q : ℤ)
    (hP : 0 < P) (hQ : 0 < Q)
    (h1 : RA ^ 2 + IA ^ 2 = P ^ 2) (h2 : RB ^ 2 + IB ^ 2 = Q ^ 2)
    (hIA : IA ≠ 0) (hIB : IB ≠ 0) :
    (RA * RB) ^ 2 < (P * Q) ^ 2 := by
  have hA : RA ^ 2 < P ^ 2 := by nlinarith [sq_nonneg IA, (by positivity : (0:ℤ) < IA ^ 2)]
  have hB : RB ^ 2 < Q ^ 2 := by nlinarith [sq_nonneg IB, (by positivity : (0:ℤ) < IB ^ 2)]
  have hA0 : 0 ≤ RA ^ 2 := sq_nonneg RA
  have hB0 : 0 ≤ RB ^ 2 := sq_nonneg RB
  have hQ2 : 0 < Q ^ 2 := by positivity
  have hP2 : 0 < P ^ 2 := by positivity
  calc (RA * RB) ^ 2 = RA ^ 2 * RB ^ 2 := by ring
    _ < P ^ 2 * Q ^ 2 := by nlinarith
    _ = (P * Q) ^ 2 := by ring

/-- Branch-1 kill: the two matching equations multiply to |RA·RB| = P·Q,
contradicting the strict pinch. -/
theorem branch1_kill (RA IA RB IB P Q c1 c2 : ℤ)
    (hP : 0 < P) (hQ : 0 < Q)
    (h1 : RA ^ 2 + IA ^ 2 = P ^ 2) (h2 : RB ^ 2 + IB ^ 2 = Q ^ 2)
    (hIA : IA ≠ 0) (hIB : IB ≠ 0)
    (e1 : RB * IA = P * IB * c1) (hc1 : c1 = 1 ∨ c1 = -1)
    (e2 : IB * RA = Q * IA * c2) (hc2 : c2 = 1 ∨ c2 = -1) : False := by
  have hm : (RB * IA) * (IB * RA) = (P * IB * c1) * (Q * IA * c2) := by rw [e1, e2]
  have hsq : ((RB * IA) * (IB * RA)) ^ 2 = ((P * IB * c1) * (Q * IA * c2)) ^ 2 := by
    rw [hm]
  have key : (RA * RB) ^ 2 * (IA * IB) ^ 2 = (P * Q) ^ 2 * (IA * IB) ^ 2 := by
    rcases hc1 with rfl | rfl <;> rcases hc2 with rfl | rfl <;> linear_combination hsq
  have hII : (IA * IB) ^ 2 ≠ 0 := by positivity
  have : (RA * RB) ^ 2 = (P * Q) ^ 2 := by
    have h := mul_right_cancel₀ hII key
    exact h
  have hlt := strict_pinch RA IA RB IB P Q hP hQ h1 h2 hIA hIB
  rw [this] at hlt
  exact lt_irrefl _ hlt

/-- Branch-2 parity kill: 2·|RB| = q² is impossible for odd q. -/
theorem branch2_parity (RB q : ℤ) (hq : Odd q) : 2 * RB ≠ q ^ 2 := by
  intro h
  rcases hq with ⟨k, hk⟩
  subst hk
  have hexp : (2 * k + 1) ^ 2 = 4 * k ^ 2 + 4 * k + 1 := by ring
  omega
