/-
Residue-type kill lemmas for the Theorem E assignment analysis:
the T1 family ({q²·Im π⁴, p²·Im χ⁴} sums against mixed u, v classes).
-/
import Mathlib
import MsqLean.TheoremEGauss

open Zsqrtd

/-- 2e·U·X = s·q²·U with U ≠ 0 and unit signs is impossible (even = odd). -/
lemma resid_even_odd (q : ℕ) (hqodd : q % 2 = 1)
    (U X e s : ℤ) (hU : U ≠ 0) (he : e = 1 ∨ e = -1) (hs : s = 1 ∨ s = -1)
    (h : 2 * e * U * X = s * (q : ℤ) ^ 2 * U) : False := by
  have hcan : U * (2 * e * X - s * (q : ℤ) ^ 2) = 0 := by linear_combination h
  rcases mul_eq_zero.mp hcan with h1 | h1
  · exact hU h1
  · obtain ⟨k, hk⟩ := odd_p2 q hqodd
    rcases he with rfl | rfl <;> rcases hs with rfl | rfl <;> omega

/-- The product kill: 2e·R·Y = s·q²·I and 2e'·I·X = s'·p²·Y with
I, Y ≠ 0 multiply to 4ee'·R·X = ss'·p²q² — even equals odd. -/
lemma resid_product (p q : ℕ) (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (R I X Y e e' s s' : ℤ) (hI : I ≠ 0) (hY : Y ≠ 0)
    (he : e = 1 ∨ e = -1) (he' : e' = 1 ∨ e' = -1)
    (hs : s = 1 ∨ s = -1) (hs' : s' = 1 ∨ s' = -1)
    (h1 : 2 * e * R * Y = s * (q : ℤ) ^ 2 * I)
    (h2 : 2 * e' * I * X = s' * (p : ℤ) ^ 2 * Y) : False := by
  have hm : (2 * e * R * Y) * (2 * e' * I * X)
      = (s * (q : ℤ) ^ 2 * I) * (s' * (p : ℤ) ^ 2 * Y) := by rw [h1, h2]
  have hcan : I * (Y * (4 * e * e' * R * X - s * s' * (p : ℤ) ^ 2 * (q : ℤ) ^ 2)) = 0 := by
    linear_combination hm
  rcases mul_eq_zero.mp hcan with h3 | h3
  · exact hI h3
  rcases mul_eq_zero.mp h3 with h4 | h4
  · exact hY h4
  · obtain ⟨k, hk⟩ := odd_p2 p hpodd
    obtain ⟨l, hl⟩ := odd_p2 q hqodd
    have h5 : 4 * (e * e' * (R * X)) - (s * s') * ((p : ℤ) ^ 2 * (q : ℤ) ^ 2) = 0 := by
      linear_combination h4
    have hprod : (p : ℤ) ^ 2 * (q : ℤ) ^ 2 = 2 * (2 * k * l + k + l) + 1 := by
      rw [hk, hl]; ring
    rw [hprod] at h5
    generalize hm : e * e' * (R * X) = m at h5
    rcases he with rfl | rfl <;> rcases he' with rfl | rfl <;>
      rcases hs with rfl | rfl <;> rcases hs' with rfl | rfl <;> omega

/-- Size kill: R·X = ±p²q² is impossible when R² < p⁴ and X² < q⁴. -/
lemma resid_size (p q : ℕ) (R X s : ℤ) (hs : s = 1 ∨ s = -1)
    (hR : R ^ 2 < (p : ℤ) ^ 4) (hX : X ^ 2 < (q : ℤ) ^ 4)
    (hp0 : 0 < (p : ℤ)) (hq0 : 0 < (q : ℤ))
    (h : R * X = s * (p : ℤ) ^ 2 * (q : ℤ) ^ 2) : False := by
  have key : R ^ 2 * X ^ 2 < (p : ℤ) ^ 4 * (q : ℤ) ^ 4 := by
    nlinarith [sq_nonneg R, sq_nonneg X, (by positivity : (0 : ℤ) < (p : ℤ) ^ 4),
      (by positivity : (0 : ℤ) < (q : ℤ) ^ 4)]
  have h3 : R ^ 2 * X ^ 2 = (R * X) ^ 2 := by ring
  rcases hs with rfl | rfl <;>
    · have h2 : (R * X) ^ 2 = (p : ℤ) ^ 4 * (q : ℤ) ^ 4 := by rw [h]; ring
      linarith [key, h2, h3]

/-- The two derived facts of the pinch-product branch:
e₁·q²·I = R·Y and e₂·p²·Y = I·X force |R·X| = p²q², beaten by size. -/
lemma resid_pinch_product (p q : ℕ) (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (R I X Y e1 e2 : ℤ) (hI : I ≠ 0) (hY : Y ≠ 0)
    (he1 : e1 = 1 ∨ e1 = -1) (he2 : e2 = 1 ∨ e2 = -1)
    (hRb : R ^ 2 < (p : ℤ) ^ 4) (hXb : X ^ 2 < (q : ℤ) ^ 4)
    (hp0 : 0 < (p : ℤ)) (hq0 : 0 < (q : ℤ))
    (h1 : e1 * (q : ℤ) ^ 2 * I = R * Y)
    (h2 : e2 * (p : ℤ) ^ 2 * Y = I * X) : False := by
  have hm : (e1 * (q : ℤ) ^ 2 * I) * (e2 * (p : ℤ) ^ 2 * Y) = (R * Y) * (I * X) := by
    rw [h1, h2]
  have hcan : I * (Y * (R * X - e1 * e2 * (p : ℤ) ^ 2 * (q : ℤ) ^ 2)) = 0 := by
    linear_combination -hm
  rcases mul_eq_zero.mp hcan with h3 | h3
  · exact hI h3
  rcases mul_eq_zero.mp h3 with h4 | h4
  · exact hY h4
  · have he12 : e1 * e2 = 1 ∨ e1 * e2 = -1 := by
      rcases he1 with rfl | rfl <;> rcases he2 with rfl | rfl <;> norm_num
    exact resid_size p q R X (e1 * e2) he12 hRb hXb hp0 hq0 (by linarith)
