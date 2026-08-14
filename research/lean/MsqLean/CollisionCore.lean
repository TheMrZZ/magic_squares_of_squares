/-
The abstract collision core: four values u, v, u+v, u−v of the exact form
ε · p^(2(a−t)) · C(t) with p ∤ C(t) and ε = ±1 cannot coexist.
-/
import Mathlib
import MsqLean.PrimePowerHelpers

theorem collision_core (p : ℕ) [hp : Fact p.Prime] (a : ℕ) (C : ℕ → ℤ)
    (u v : ℤ) (hu0 : u ≠ 0) (hv0 : v ≠ 0) (huv : u ≠ v) (huv' : u ≠ -v)
    (t1 t2 t3 t4 : ℕ) (ε1 ε2 ε3 ε4 : ℤ)
    (ht1 : t1 ≤ a) (ht2 : t2 ≤ a) (ht3 : t3 ≤ a) (ht4 : t4 ≤ a)
    (hε1 : ε1 = 1 ∨ ε1 = -1) (hε2 : ε2 = 1 ∨ ε2 = -1)
    (hε3 : ε3 = 1 ∨ ε3 = -1) (hε4 : ε4 = 1 ∨ ε4 = -1)
    (hc1 : ¬ ((p : ℤ) ∣ C t1)) (hc2 : ¬ ((p : ℤ) ∣ C t2))
    (hc3 : ¬ ((p : ℤ) ∣ C t3)) (hc4 : ¬ ((p : ℤ) ∣ C t4))
    (hval1 : u = ε1 * (p : ℤ) ^ (2 * (a - t1)) * C t1)
    (hval2 : v = ε2 * (p : ℤ) ^ (2 * (a - t2)) * C t2)
    (hval3 : u + v = ε3 * (p : ℤ) ^ (2 * (a - t3)) * C t3)
    (hval4 : u - v = ε4 * (p : ℤ) ^ (2 * (a - t4)) * C t4) : False := by
  have hsc : ∀ (ε c : ℤ), (ε = 1 ∨ ε = -1) → ¬ ((p : ℤ) ∣ c) → ¬ ((p : ℤ) ∣ ε * c) := by
    rintro ε c (rfl | rfl) hc
    · simpa using hc
    · intro h
      exact hc (by rwa [neg_one_mul, dvd_neg] at h)
  have hkey : ∀ (m₃ : ℕ) (ε₃ c₃ : ℤ), (ε₃ = 1 ∨ ε₃ = -1) → ¬((p : ℤ) ∣ c₃) →
      ∀ (mlo : ℕ) (Bv : ℤ), ¬((p : ℤ) ∣ Bv) →
      ε₃ * (p : ℤ) ^ m₃ * c₃ = (p : ℤ) ^ mlo * Bv → m₃ = mlo := by
    intro m₃ ε₃ c₃ hε hc mlo Bv hB heq
    exact pow_eq_pow_of_coprime p hp.out m₃ mlo (ε₃ * c₃) Bv (hsc _ _ hε hc) hB
      (by linear_combination heq)
  by_cases htt : t1 = t2
  · subst htt
    rcases hε1 with rfl | rfl <;> rcases hε2 with rfl | rfl
    · exact huv (by linarith)
    · exact huv' (by linarith)
    · exact huv' (by linarith)
    · exact huv (by linarith)
  · have hend : ∀ (mlo : ℕ) (Bp Bm : ℤ),
        ¬ ((p : ℤ) ∣ Bp) → ¬ ((p : ℤ) ∣ Bm) →
        u + v = (p : ℤ) ^ mlo * Bp → u - v = (p : ℤ) ^ mlo * Bm → False := by
      intro mlo Bp Bm hBp hBm hsplus hsminus
      have hm3 : 2 * (a - t3) = mlo := hkey _ _ _ hε3 hc3 mlo Bp hBp (by linarith [hval3, hsplus])
      have hm4 : 2 * (a - t4) = mlo := hkey _ _ _ hε4 hc4 mlo Bm hBm (by linarith [hval4, hsminus])
      have ht34 : t3 = t4 := by omega
      subst ht34
      rw [hm3] at hval3 hval4
      rcases hε3 with rfl | rfl <;> rcases hε4 with rfl | rfl
      · exact hv0 (by linarith)
      · exact hu0 (by linarith)
      · exact hu0 (by linarith)
      · exact hv0 (by linarith)
    have hm12 : 2 * (a - t1) ≠ 2 * (a - t2) := by omega
    rcases Nat.lt_or_ge (2 * (a - t2)) (2 * (a - t1)) with hlt | hge
    · have hΔ : 1 ≤ 2 * (a - t1) - 2 * (a - t2) := by omega
      have hpow : (p : ℤ) ^ (2 * (a - t1))
          = (p : ℤ) ^ (2 * (a - t2)) * (p : ℤ) ^ (2 * (a - t1) - 2 * (a - t2)) := by
        rw [← pow_add]; congr 1; omega
      have hdvdhi : (p : ℤ) ∣ ε1 * (p : ℤ) ^ (2 * (a - t1) - 2 * (a - t2)) * C t1 :=
        Dvd.dvd.mul_right (Dvd.dvd.mul_left (dvd_pow_self _ (by omega)) _) _
      refine hend (2 * (a - t2))
        (ε1 * (p : ℤ) ^ (2 * (a - t1) - 2 * (a - t2)) * C t1 + ε2 * C t2)
        (ε1 * (p : ℤ) ^ (2 * (a - t1) - 2 * (a - t2)) * C t1 - ε2 * C t2)
        ?_ ?_ ?_ ?_
      · intro hdvd
        exact hsc _ _ hε2 hc2 (by
          have := dvd_sub hdvd hdvdhi
          simpa using this)
      · intro hdvd
        apply hsc _ _ hε2 hc2
        have h := dvd_sub hdvdhi hdvd
        have h2 : ε1 * (p : ℤ) ^ (2 * (a - t1) - 2 * (a - t2)) * C t1 -
            (ε1 * (p : ℤ) ^ (2 * (a - t1) - 2 * (a - t2)) * C t1 - ε2 * C t2)
            = ε2 * C t2 := by ring
        rwa [h2] at h
      · rw [hval1, hval2, hpow]; ring
      · rw [hval1, hval2, hpow]; ring
    · have hΔ : 1 ≤ 2 * (a - t2) - 2 * (a - t1) := by omega
      have hpow : (p : ℤ) ^ (2 * (a - t2))
          = (p : ℤ) ^ (2 * (a - t1)) * (p : ℤ) ^ (2 * (a - t2) - 2 * (a - t1)) := by
        rw [← pow_add]; congr 1; omega
      have hdvdhi : (p : ℤ) ∣ ε2 * (p : ℤ) ^ (2 * (a - t2) - 2 * (a - t1)) * C t2 :=
        Dvd.dvd.mul_right (Dvd.dvd.mul_left (dvd_pow_self _ (by omega)) _) _
      refine hend (2 * (a - t1))
        (ε1 * C t1 + ε2 * (p : ℤ) ^ (2 * (a - t2) - 2 * (a - t1)) * C t2)
        (ε1 * C t1 - ε2 * (p : ℤ) ^ (2 * (a - t2) - 2 * (a - t1)) * C t2)
        ?_ ?_ ?_ ?_
      · intro hdvd
        exact hsc _ _ hε1 hc1 (by
          have := dvd_sub hdvd hdvdhi
          simpa using this)
      · intro hdvd
        exact hsc _ _ hε1 hc1 (by
          have := dvd_add hdvd hdvdhi
          simpa using this)
      · rw [hval1, hval2, hpow]; ring
      · rw [hval1, hval2, hpow]; ring
