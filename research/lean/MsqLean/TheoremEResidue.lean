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


/-- Parity finisher: p² = 2M is impossible for odd p. -/
lemma resid_p2_even (p : ℕ) (hpodd : p % 2 = 1) (M : ℤ)
    (h : (p : ℤ) ^ 2 = 2 * M) : False := by
  obtain ⟨k, hk⟩ := odd_p2 p hpodd
  omega

/-- Quadratic finisher A: q⁴ − 3p²q² + 2p⁴ = 0 is impossible for
distinct odd primes (factors as (q²−p²)(q²−2p²)). -/
lemma resid_quad_factored (p q : ℕ) (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (hpq : p ≠ q) (hp0 : 0 < (p : ℤ)) (hq0 : 0 < (q : ℤ))
    (h : (q : ℤ) ^ 4 - 3 * (p : ℤ) ^ 2 * (q : ℤ) ^ 2 + 2 * (p : ℤ) ^ 4 = 0) : False := by
  have hfac : ((q : ℤ) ^ 2 - (p : ℤ) ^ 2) * ((q : ℤ) ^ 2 - 2 * (p : ℤ) ^ 2) = 0 := by
    linear_combination h
  rcases mul_eq_zero.mp hfac with h1 | h1
  · have hfac2 : ((q : ℤ) - p) * ((q : ℤ) + p) = 0 := by linear_combination h1
    rcases mul_eq_zero.mp hfac2 with h2 | h2
    · have hqp : (q : ℤ) = (p : ℤ) := by linarith
      have : q = p := by exact_mod_cast hqp
      exact hpq this.symm
    · linarith
  · obtain ⟨k, hk⟩ := odd_p2 q hqodd
    have : (q : ℤ) ^ 2 = 2 * (p : ℤ) ^ 2 := by linarith
    omega
/-- Quadratic finisher B: q⁴ + 3p²q² + 2p⁴ = 0 is impossible (positivity). -/
lemma resid_quad_pos (p q : ℕ) (hp0 : 0 < (p : ℤ)) (hq0 : 0 < (q : ℤ))
    (h : (q : ℤ) ^ 4 + 3 * (p : ℤ) ^ 2 * (q : ℤ) ^ 2 + 2 * (p : ℤ) ^ 4 = 0) : False := by
  nlinarith [pow_pos hp0 4, pow_pos hq0 4, pow_pos hp0 2, pow_pos hq0 2,
    mul_pos (pow_pos hp0 2) (pow_pos hq0 2)]

/-- The T2 ratio kill, sign-normalized: p²Y = 2IX together with
ε₁q²I = 3ε₂IX − RY is impossible. -/
lemma resid_ratio_core (p q : ℕ) (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (hpq : p ≠ q) (hp0 : 0 < (p : ℤ)) (hq0 : 0 < (q : ℤ))
    (R I X Y : ℤ) (hI : I ≠ 0) (hY : Y ≠ 0)
    (hRI : IsCoprime R I) (hXY : IsCoprime X Y)
    (hpn : R ^ 2 + I ^ 2 = (p : ℤ) ^ 4) (hqn : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 4)
    (a b c : ℤ) (ha : a = 1 ∨ a = -1) (hb : b = 1 ∨ b = -1) (hc : c = 1 ∨ c = -1)
    (hiii : (p : ℤ) ^ 2 * Y = 2 * I * X)
    (hii : a * (q : ℤ) ^ 2 * I = 3 * b * I * X - c * R * Y) : False := by
  have hcancel : ∀ t : ℤ, I * t = 0 → t = 0 := fun t ht => by
    rcases mul_eq_zero.mp ht with h | h
    · exact absurd h hI
    · exact h
  have hY2I : Y ∣ 2 * I := by
    have hd : Y ∣ (2 * I) * X := ⟨(p : ℤ) ^ 2, by linarith [hiii]⟩
    exact (hXY.symm).dvd_of_dvd_mul_right hd
  have hcsq : c * c = 1 := by rcases hc with rfl | rfl <;> norm_num
  have hIY : I ∣ Y := by
    have hd : I ∣ (c * Y) * R := ⟨3 * b * X - a * (q : ℤ) ^ 2, by linarith [hii]⟩
    have h2 : I ∣ c * Y := (hRI.symm).dvd_of_dvd_mul_right hd
    rcases hc with rfl | rfl
    · simpa using h2
    · have := h2
      rw [show (-1 : ℤ) * Y = -Y from by ring] at this
      exact (dvd_neg).mp this
  obtain ⟨k, hk⟩ := hIY
  obtain ⟨m, hm⟩ := hY2I
  have hkm : k * m = 2 := by
    have h0 : I * (k * m - 2) = 0 := by
      have h1 : 2 * I = I * k * m := by rw [← hk]; linarith [hm]
      linarith [h1]
    linarith [hcancel _ h0]
  have hk0 : k ≠ 0 := by
    rintro rfl
    rw [mul_zero] at hk
    exact hY hk
  have hk2 : k ∣ 2 := ⟨m, hkm.symm⟩
  have hkabs : k.natAbs ∣ 2 := by
    have h2 : k.natAbs ∣ (2 : ℤ).natAbs := Int.natAbs_dvd_natAbs.mpr hk2
    simpa using h2
  have hkb : k.natAbs ≤ 2 := Nat.le_of_dvd (by norm_num) hkabs
  have hkr : k = 1 ∨ k = -1 ∨ k = 2 ∨ k = -2 := by omega
  rcases hkr with rfl | rfl | rfl | rfl
  · -- Y = I
    have hYI : Y = I := by rw [hk]; ring
    rw [hYI] at hiii
    have h2 := hcancel _ (by linarith [hiii] : I * ((p : ℤ) ^ 2 - 2 * X) = 0)
    exact resid_p2_even p hpodd X (by linarith)
  · -- Y = -I
    have hYI : Y = -I := by rw [hk]; ring
    rw [hYI] at hiii
    have h2 := hcancel _ (by linarith [hiii] : I * ((p : ℤ) ^ 2 + 2 * X) = 0)
    exact resid_p2_even p hpodd (-X) (by linarith)
  · -- Y = 2I: X = p², quadratic finisher
    have hY2 : Y = 2 * I := by rw [hk]; ring
    rw [hY2] at hiii hii hqn
    have hX : X = (p : ℤ) ^ 2 := by
      have h2 := hcancel _ (by linarith [hiii] : I * (2 * (p : ℤ) ^ 2 - 2 * X) = 0)
      linarith
    rw [hX] at hii hqn
    have hR : 2 * (c * R) = 3 * b * (p : ℤ) ^ 2 - a * (q : ℤ) ^ 2 := by
      have h2 := hcancel _ (by linear_combination hii :
        I * (a * (q : ℤ) ^ 2 - 3 * b * (p : ℤ) ^ 2 + 2 * (c * R)) = 0)
      linarith
    have hI2 : 4 * I ^ 2 = (q : ℤ) ^ 4 - (p : ℤ) ^ 4 := by nlinarith [hqn]
    have hR2 : 4 * R ^ 2 = 5 * (p : ℤ) ^ 4 - (q : ℤ) ^ 4 := by nlinarith [hpn, hI2]
    have hasq : a * a = 1 := by rcases ha with rfl | rfl <;> norm_num
    have hbsq : b * b = 1 := by rcases hb with rfl | rfl <;> norm_num
    have hw : a * b = 1 ∨ a * b = -1 := by
      rcases ha with rfl | rfl <;> rcases hb with rfl | rfl <;> norm_num
    have hkey : (q : ℤ) ^ 4 - 3 * (a * b) * (p : ℤ) ^ 2 * (q : ℤ) ^ 2
        + 2 * (p : ℤ) ^ 4 = 0 := by
      have hsq : (2 * (c * R)) ^ 2 = (3 * b * (p : ℤ) ^ 2 - a * (q : ℤ) ^ 2) ^ 2 := by
        rw [hR]
      have hexp : (3 * b * (p : ℤ) ^ 2 - a * (q : ℤ) ^ 2) ^ 2
          = 9 * (p : ℤ) ^ 4 - 6 * (a * b) * (p : ℤ) ^ 2 * (q : ℤ) ^ 2 + (q : ℤ) ^ 4 := by
        linear_combination 9 * (p : ℤ) ^ 4 * hbsq + (q : ℤ) ^ 4 * hasq
      have hRR : (2 * (c * R)) ^ 2 = 4 * (R ^ 2) := by
        linear_combination 4 * R ^ 2 * hcsq
      linarith [hsq, hexp, hR2, hRR]
    rcases hw with hw | hw
    · rw [hw] at hkey
      exact resid_quad_factored p q hpodd hqodd hpq hp0 hq0 (by linarith [hkey])
    · rw [hw] at hkey
      exact resid_quad_pos p q hp0 hq0 (by linarith [hkey])
  · -- Y = -2I: X = -p², symmetric
    have hY2 : Y = -(2 * I) := by rw [hk]; ring
    rw [hY2] at hiii hii hqn
    have hX : X = -(p : ℤ) ^ 2 := by
      have h2 := hcancel _ (by linarith [hiii] : I * (2 * (p : ℤ) ^ 2 + 2 * X) = 0)
      linarith
    rw [hX] at hii hqn
    have hR : 2 * (c * R) = 3 * b * (p : ℤ) ^ 2 + a * (q : ℤ) ^ 2 := by
      have h2 := hcancel _ (by linear_combination hii :
        I * (a * (q : ℤ) ^ 2 + 3 * b * (p : ℤ) ^ 2 - 2 * (c * R)) = 0)
      linarith
    have hI2 : 4 * I ^ 2 = (q : ℤ) ^ 4 - (p : ℤ) ^ 4 := by nlinarith [hqn]
    have hR2 : 4 * R ^ 2 = 5 * (p : ℤ) ^ 4 - (q : ℤ) ^ 4 := by nlinarith [hpn, hI2]
    have hasq : a * a = 1 := by rcases ha with rfl | rfl <;> norm_num
    have hbsq : b * b = 1 := by rcases hb with rfl | rfl <;> norm_num
    have hw : a * b = 1 ∨ a * b = -1 := by
      rcases ha with rfl | rfl <;> rcases hb with rfl | rfl <;> norm_num
    have hkey : (q : ℤ) ^ 4 + 3 * (a * b) * (p : ℤ) ^ 2 * (q : ℤ) ^ 2
        + 2 * (p : ℤ) ^ 4 = 0 := by
      have hsq : (2 * (c * R)) ^ 2 = (3 * b * (p : ℤ) ^ 2 + a * (q : ℤ) ^ 2) ^ 2 := by
        rw [hR]
      have hexp : (3 * b * (p : ℤ) ^ 2 + a * (q : ℤ) ^ 2) ^ 2
          = 9 * (p : ℤ) ^ 4 + 6 * (a * b) * (p : ℤ) ^ 2 * (q : ℤ) ^ 2 + (q : ℤ) ^ 4 := by
        linear_combination 9 * (p : ℤ) ^ 4 * hbsq + (q : ℤ) ^ 4 * hasq
      have hRR : (2 * (c * R)) ^ 2 = 4 * (R ^ 2) := by
        linear_combination 4 * R ^ 2 * hcsq
      linarith [hsq, hexp, hR2, hRR]
    rcases hw with hw | hw
    · rw [hw] at hkey
      exact resid_quad_pos p q hp0 hq0 (by linarith [hkey])
    · rw [hw] at hkey
      exact resid_quad_factored p q hpodd hqodd hpq hp0 hq0 (by linarith [hkey])
