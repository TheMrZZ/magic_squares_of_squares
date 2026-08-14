/-
**Theorem C, machine-checked (prime-power case).**
Four values u, v, u+v, u−v, each of the exact form ± p^(2(a−t)) · Im(π^(4t))
with p ∤ Im(π^(4t)), cannot coexist — so no magic square of squares has
center p^(2a) for p ≡ 1 (mod 4).
-/
import Mathlib
import MsqLean.Reduction
import MsqLean.RepStructure

theorem no_four_diffs_prime_power (p : ℕ) [hp : Fact p.Prime] (hp4 : p % 4 = 1)
    (a : ℕ) (u v : ℤ)
    (hu0 : u ≠ 0) (hv0 : v ≠ 0) (huv : u ≠ v) (huv' : u ≠ -v)
    (x1 y1 x2 y2 x3 y3 x4 y4 : ℤ)
    (h1 : x1 ^ 2 + y1 ^ 2 = (p : ℤ) ^ (2 * a)) (e1 : 2 * x1 * y1 = u)
    (h2 : x2 ^ 2 + y2 ^ 2 = (p : ℤ) ^ (2 * a)) (e2 : 2 * x2 * y2 = v)
    (h3 : x3 ^ 2 + y3 ^ 2 = (p : ℤ) ^ (2 * a)) (e3 : 2 * x3 * y3 = u + v)
    (h4 : x4 ^ 2 + y4 ^ 2 = (p : ℤ) ^ (2 * a)) (e4 : 2 * x4 * y4 = u - v) :
    False := by
  obtain ⟨A, B, hAB⟩ := Nat.Prime.sq_add_sq (p := p) (by omega)
  set π : GaussianInt := ⟨(A : ℤ), (B : ℤ)⟩ with hπdef
  have hπnorm : π.norm = (p : ℤ) := by
    have h : π.norm = (A : ℤ) * A + (B : ℤ) * B := by simp [hπdef, Zsqrtd.norm]
    rw [h]; push_cast; nlinarith [hAB]
  obtain ⟨t1, ε1, ht1a, ht1b, hε1, hc1, hval1⟩ :=
    rep_structure p hp4 π hπnorm a x1 y1 h1 (by rw [e1]; exact hu0)
  obtain ⟨t2, ε2, ht2a, ht2b, hε2, hc2, hval2⟩ :=
    rep_structure p hp4 π hπnorm a x2 y2 h2 (by rw [e2]; exact hv0)
  obtain ⟨t3, ε3, ht3a, ht3b, hε3, hc3, hval3⟩ :=
    rep_structure p hp4 π hπnorm a x3 y3 h3 (by rw [e3]; intro h; exact huv' (by linarith))
  obtain ⟨t4, ε4, ht4a, ht4b, hε4, hc4, hval4⟩ :=
    rep_structure p hp4 π hπnorm a x4 y4 h4 (by rw [e4]; intro h; exact huv (by linarith))
  rw [e1] at hval1; rw [e2] at hval2; rw [e3] at hval3; rw [e4] at hval4
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
  · -- same class ⇒ u = ±v
    subst htt
    rcases hε1 with rfl | rfl <;> rcases hε2 with rfl | rfl
    · exact huv (by linarith)
    · exact huv' (by linarith)
    · exact huv' (by linarith)
    · exact huv (by linarith)
  · -- different classes ⇒ both u±v collapse to the lower class
    have hend : ∀ (mlo : ℕ) (Bp Bm : ℤ),
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
    · -- u's exponent is strictly larger; the lower class is t2's
      have hΔ : 1 ≤ 2 * (a - t1) - 2 * (a - t2) := by omega
      have hpow : (p : ℤ) ^ (2 * (a - t1))
          = (p : ℤ) ^ (2 * (a - t2)) * (p : ℤ) ^ (2 * (a - t1) - 2 * (a - t2)) := by
        rw [← pow_add]; congr 1; omega
      have hdvdhi : (p : ℤ) ∣ ε1 * (p : ℤ) ^ (2 * (a - t1) - 2 * (a - t2)) * (π ^ (4 * t1)).im := by
        exact Dvd.dvd.mul_right (Dvd.dvd.mul_left (dvd_pow_self _ (by omega)) _) _
      refine hend (2 * (a - t2))
        (ε1 * (p : ℤ) ^ (2 * (a - t1) - 2 * (a - t2)) * (π ^ (4 * t1)).im + ε2 * (π ^ (4 * t2)).im)
        (ε1 * (p : ℤ) ^ (2 * (a - t1) - 2 * (a - t2)) * (π ^ (4 * t1)).im - ε2 * (π ^ (4 * t2)).im)
        ?_ ?_ ?_ ?_
      · intro hdvd
        exact hsc _ _ hε2 hc2 (by
          have := dvd_sub hdvd hdvdhi
          simpa using this)
      · intro hdvd
        apply hsc _ _ hε2 hc2
        have h := dvd_sub hdvdhi hdvd
        have h2 : ε1 * (p : ℤ) ^ (2 * (a - t1) - 2 * (a - t2)) * (π ^ (4 * t1)).im -
            (ε1 * (p : ℤ) ^ (2 * (a - t1) - 2 * (a - t2)) * (π ^ (4 * t1)).im -
             ε2 * (π ^ (4 * t2)).im) = ε2 * (π ^ (4 * t2)).im := by ring
        rwa [h2] at h
      · rw [hval1, hval2, hpow]; ring
      · rw [hval1, hval2, hpow]; ring
    · -- v's exponent is at least as large, hence strictly larger; lower class is t1's
      have hΔ : 1 ≤ 2 * (a - t2) - 2 * (a - t1) := by omega
      have hpow : (p : ℤ) ^ (2 * (a - t2))
          = (p : ℤ) ^ (2 * (a - t1)) * (p : ℤ) ^ (2 * (a - t2) - 2 * (a - t1)) := by
        rw [← pow_add]; congr 1; omega
      have hdvdhi : (p : ℤ) ∣ ε2 * (p : ℤ) ^ (2 * (a - t2) - 2 * (a - t1)) * (π ^ (4 * t2)).im := by
        exact Dvd.dvd.mul_right (Dvd.dvd.mul_left (dvd_pow_self _ (by omega)) _) _
      refine hend (2 * (a - t1))
        (ε1 * (π ^ (4 * t1)).im + ε2 * (p : ℤ) ^ (2 * (a - t2) - 2 * (a - t1)) * (π ^ (4 * t2)).im)
        (ε1 * (π ^ (4 * t1)).im - ε2 * (p : ℤ) ^ (2 * (a - t2) - 2 * (a - t1)) * (π ^ (4 * t2)).im)
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

/-- **Main theorem.**  No 3×3 fully magic square of nine perfect squares
(distinctness used only through the four stated inequalities, all of which
follow from distinctness of entries) has center entry `p^(2a)` with
`p ≡ 1 (mod 4)` prime.  Together with the trivial non-representability for
`p ≢ 1 (mod 4)`, no prime-power center is possible at all — the machine-checked
heart of Theorem C. -/
theorem no_magic_square_of_squares_prime_power_center
    (p : ℕ) [Fact p.Prime] (hp4 : p % 4 = 1) (a : ℕ)
    (A B C D E F G H I S : ℤ)
    (sqA : IsSq A) (sqB : IsSq B) (sqC : IsSq C) (sqD : IsSq D) (sqE : IsSq E)
    (sqF : IsSq F) (sqG : IsSq G) (sqH : IsSq H) (sqI : IsSq I)
    (r1 : A + B + C = S) (r2 : D + E + F = S) (r3 : G + H + I = S)
    (c1 : A + D + G = S) (c2 : B + E + H = S) (c3 : C + F + I = S)
    (d1 : A + E + I = S) (d2 : C + E + G = S)
    (hE : E = (p : ℤ) ^ (2 * a))
    (hAE : A ≠ E) (hCE : C ≠ E) (hAC : A ≠ C) (hHE : H ≠ E) : False := by
  obtain ⟨e, u, v, x1, y1, x2, y2, x3, y3, x4, y4, hEe, hAu, hCv,
    hxy1, hq1, hxy2, hq2, hxy3, hq3, hxy4, hq4⟩ :=
    converse_reduction A B C D E F G H I S sqA sqB sqC sqD sqE sqF sqG sqH sqI
      r1 r2 r3 c1 c2 c3 d1 d2
  have he2 : e ^ 2 = (p : ℤ) ^ (2 * a) := by omega
  rw [he2] at hxy1 hxy2 hxy3 hxy4
  exact no_four_diffs_prime_power p hp4 a u v
    (by omega) (by omega) (by omega) (by omega)
    x1 y1 x2 y2 x3 y3 x4 y4 hxy1 hq1 hxy2 hq2 hxy3 hq3 hxy4 hq4
