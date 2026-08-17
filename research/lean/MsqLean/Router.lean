/-
The router dispatchers: the once-proved lemmas that interpret the
certifier's verdicts. `lone_kill` is the phase-2 workhorse (the unique
minimal valuation layer of a three-term relation survives modulo the
next power, by the grading lemma), in a p-side and a q-side version.
-/
import Mathlib
import MsqLean.GradingLemma
import MsqLean.CertKit

namespace Router

/-- The lone-valuation kill, p-side: a three-term relation whose first
term has strictly smaller p-content than the other two, unit-like
leading coefficient, and a π-power times a p-coprime cofactor in the
imaginary part, is nonzero. -/
theorem lone_kill (p : ℕ) [hp : Fact (Nat.Prime p)] (hp4 : p % 4 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p)
    (c1 : ℤ) (hc1 : ¬ (p : ℤ) ∣ c1)
    (jj : ℕ) (hj : 1 ≤ jj)
    (V : GaussianInt) (hV : ¬ ((p : ℤ) ∣ V.norm))
    (m1 m2 m3 : ℕ) (h12 : m1 < m2) (h13 : m1 < m3)
    (c2 c3 T2 T3 R : ℤ)
    (hR : R = c1 * (p : ℤ) ^ (2 * m1)
          * ((((⟨A, B⟩ : GaussianInt)) ^ jj * V).im)
        + c2 * (p : ℤ) ^ (2 * m2) * T2 + c3 * (p : ℤ) ^ (2 * m3) * T3) :
    R ≠ 0 := by
  have hT : ¬ (p : ℤ) ∣ c1 * ((((⟨A, B⟩ : GaussianInt)) ^ jj * V).im) := by
    intro hd
    rcases (Int.Prime.dvd_mul' (by exact_mod_cast hp.out) hd) with h | h
    · exact hc1 h
    · exact im_pipow_mul_not_dvd p hp4 A B hpAB jj hj V hV h
  obtain ⟨d2, hd2⟩ : ∃ d2, 2 * m2 = 2 * m1 + 1 + d2 := ⟨2 * m2 - 2 * m1 - 1, by omega⟩
  obtain ⟨d3, hd3⟩ : ∃ d3, 2 * m3 = 2 * m1 + 1 + d3 := ⟨2 * m3 - 2 * m1 - 1, by omega⟩
  refine CertKit.grading_kill p (2 * m1)
    (T := c1 * ((((⟨A, B⟩ : GaussianInt)) ^ jj * V).im))
    (R := c2 * (p : ℤ) ^ d2 * T2 + c3 * (p : ℤ) ^ d3 * T3) ?_ hT
  rw [hR, hd2, hd3, pow_add, pow_add, pow_add, pow_add]
  push_cast
  ring

/-- The Gaussian lone-layer kill: E = π^e·(T + π·R) with π prime and
π ∤ T is nonzero. The dispatcher for the certifier's unit-core
verdicts (the minimal π-adic layer of the core has a unit
coefficient). -/
theorem gauss_lone_kill (π : GaussianInt) (hπ : Prime π) (e : ℕ)
    (T R E : GaussianInt) (hE : E = π ^ e * (T + π * R))
    (hT : ¬ π ∣ T) : E ≠ 0 := by
  intro h0
  rw [hE] at h0
  rcases mul_eq_zero.mp h0 with h | h
  · exact hπ.ne_zero (pow_eq_zero_iff'.mp h).1
  · exact hT ⟨-R, by linear_combination h⟩

end Router
