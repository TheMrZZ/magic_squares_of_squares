/-
Family F2 of pure double-pinch relations at exponent (2,2):
slots {(0,1),(1,0),(1,1)}, i.e. (after dividing by p²q²)
  G = e₁·p²·K₁⁴ + e₂·q²·π⁴ + e₃·π⁴·K₃⁴,   e_i ∈ {±1},
with (K₁,K₃) = (χ,χ) ("aligned" class) or (χ,χ̄) ("mixed" class).
Both classes die by the double pinch: extract the p-core from the π-side,
the q-core from the χ-side, and finish with the two-ordering strict pinch.
-/
import MsqLean.CoreDisj

open Zsqrtd

/-- F2, aligned class: Im(e₁p²χ⁴ + e₂q²π⁴ + e₃π⁴χ⁴) ≠ 0. -/
theorem family_F2_aligned_nonzero
    (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (e1 e2 e3 : ℤ) (he1 : e1 = 1 ∨ e1 = -1) (he2 : e2 = 1 ∨ e2 = -1)
    (he3 : e3 = 1 ∨ e3 = -1) :
    (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (⟨C, D⟩ : GaussianInt) ^ 4
      + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 4
      + ((e3 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 4 * (⟨C, D⟩ : GaussianInt) ^ 4).im ≠ 0 := by
  intro h0
  set π : GaussianInt := ⟨A, B⟩ with hπdef
  set χ : GaussianInt := ⟨C, D⟩ with hχdef
  set G : GaussianInt :=
    ((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * χ ^ 4
      + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 4
      + ((e3 : ℤ) : GaussianInt) * π ^ 4 * χ ^ 4 with hGdef
  have hself : star G = G := by
    ext
    · simp
    · simp [h0]
  have hππb : π * star π = ((p : ℤ) : GaussianInt) := by
    rw [hπdef, pi_mul_star, hpAB]
  have hχχb : χ * star χ = ((q : ℤ) : GaussianInt) := by
    rw [hχdef, pi_mul_star, hqCD]
  have hπprime : Prime π := prime_pi p A B hpAB
  have hχprime : Prime χ := prime_pi q C D hqCD
  have hπnb : ¬ π ∣ star π := pi_not_dvd_star p hpodd A B hpAB
  have hχnb : ¬ χ ∣ star χ := pi_not_dvd_star q hqodd C D hqCD
  have hχπ : ¬ χ ∣ π := not_dvd_other q p (fun h => hpq h.symm) C D A B hqCD hpAB
  have hχsπ : ¬ χ ∣ star π := by
    have := not_dvd_other q p (fun h => hpq h.symm) C D A (-B) hqCD
      (by rw [neg_pow]; ring_nf; linarith [hpAB])
    simpa [hπdef, Zsqrtd.star_mk] using this
  have hP2 : (((p : ℤ) ^ 2 : ℤ) : GaussianInt) = π ^ 2 * (star π) ^ 2 := by
    have hcast : (((p : ℤ) ^ 2 : ℤ) : GaussianInt) = ((p : ℤ) : GaussianInt) ^ 2 := by
      push_cast; ring
    rw [hcast, ← hππb]; ring
  have hQ2 : (((q : ℤ) ^ 2 : ℤ) : GaussianInt) = χ ^ 2 * (star χ) ^ 2 := by
    have hcast : (((q : ℤ) ^ 2 : ℤ) : GaussianInt) = ((q : ℤ) : GaussianInt) ^ 2 := by
      push_cast; ring
    rw [hcast, ← hχχb]; ring
  have hstarG : star G =
      ((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star χ) ^ 4
        + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4
        + ((e3 : ℤ) : GaussianInt) * (star π) ^ 4 * (star χ) ^ 4 := by
    rw [hGdef]
    simp only [star_add, star_mul, star_pow, star_star, star_intCast]
    ring
  -- π-side: π ∣ G, so π ∣ star G; subtract the p²-term, strip π̄⁴.
  have hπG : π ∣ G := by
    rw [hGdef, hP2]
    exact ⟨((e1 : ℤ) : GaussianInt) * (π * (star π) ^ 2) * χ ^ 4
      + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 3
      + ((e3 : ℤ) : GaussianInt) * π ^ 3 * χ ^ 4, by ring⟩
  have hπsG : π ∣ (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star χ) ^ 4
      + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4
      + ((e3 : ℤ) : GaussianInt) * (star π) ^ 4 * (star χ) ^ 4) := by
    rw [← hstarG, hself]; exact hπG
  have hπt1 : π ∣ (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star χ) ^ 4) := by
    rw [hP2]
    exact ⟨((e1 : ℤ) : GaussianInt) * (π * (star π) ^ 2) * (star χ) ^ 4, by ring⟩
  have hπrest : π ∣ ((star π) ^ 4 *
      (((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
        + ((e3 : ℤ) : GaussianInt) * (star χ) ^ 4)) := by
    have heq : (star π) ^ 4 *
        (((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
          + ((e3 : ℤ) : GaussianInt) * (star χ) ^ 4)
        = (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star χ) ^ 4
            + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4
            + ((e3 : ℤ) : GaussianInt) * (star π) ^ 4 * (star χ) ^ 4)
          - ((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star χ) ^ 4 := by
      ring
    rw [heq]; exact dvd_sub hπsG hπt1
  have hπcore : π ∣ (((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
      + ((e3 : ℤ) : GaussianInt) * (star χ) ^ 4) := by
    rcases hπprime.dvd_mul.mp hπrest with h | h
    · exact absurd (hπprime.dvd_of_dvd_pow h) hπnb
    · exact h
  have hP := pi_core_disj p q hpodd hpq A B C D hpAB hqCD e2 e3 he2 he3 hπcore
  -- χ-side: χ ∣ G, so χ ∣ star G; subtract the q²-term, strip χ̄⁴ and π̄².
  have hχG : χ ∣ G := by
    rw [hGdef, hQ2]
    exact ⟨((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * χ ^ 3
      + ((e2 : ℤ) : GaussianInt) * (χ * (star χ) ^ 2) * π ^ 4
      + ((e3 : ℤ) : GaussianInt) * π ^ 4 * χ ^ 3, by ring⟩
  have hχsG : χ ∣ (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star χ) ^ 4
      + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4
      + ((e3 : ℤ) : GaussianInt) * (star π) ^ 4 * (star χ) ^ 4) := by
    rw [← hstarG, hself]; exact hχG
  have hχt2 : χ ∣ (((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4) := by
    rw [hQ2]
    exact ⟨((e2 : ℤ) : GaussianInt) * (χ * (star χ) ^ 2) * (star π) ^ 4, by ring⟩
  have hχrest : χ ∣ ((star χ) ^ 4 *
      (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
        + ((e3 : ℤ) : GaussianInt) * (star π) ^ 4)) := by
    have heq : (star χ) ^ 4 *
        (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
          + ((e3 : ℤ) : GaussianInt) * (star π) ^ 4)
        = (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star χ) ^ 4
            + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4
            + ((e3 : ℤ) : GaussianInt) * (star π) ^ 4 * (star χ) ^ 4)
          - ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4 := by
      ring
    rw [heq]; exact dvd_sub hχsG hχt2
  have hχmid : χ ∣ (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
      + ((e3 : ℤ) : GaussianInt) * (star π) ^ 4) := by
    rcases hχprime.dvd_mul.mp hχrest with h | h
    · exact absurd (hχprime.dvd_of_dvd_pow h) hχnb
    · exact h
  have hχfac : χ ∣ ((star π) ^ 2 *
      (((e1 : ℤ) : GaussianInt) * π ^ 2 + ((e3 : ℤ) : GaussianInt) * (star π) ^ 2)) := by
    have heq : (star π) ^ 2 *
        (((e1 : ℤ) : GaussianInt) * π ^ 2 + ((e3 : ℤ) : GaussianInt) * (star π) ^ 2)
        = ((e1 : ℤ) : GaussianInt) * (π ^ 2 * (star π) ^ 2)
          + ((e3 : ℤ) : GaussianInt) * (star π) ^ 4 := by ring
    rw [heq, ← hP2]; exact hχmid
  have hχcore : χ ∣ (((e1 : ℤ) : GaussianInt) * π ^ 2 + ((e3 : ℤ) : GaussianInt) * (star π) ^ 2) := by
    rcases hχprime.dvd_mul.mp hχfac with h | h
    · exact absurd (hχprime.dvd_of_dvd_pow h) hχsπ
    · exact h
  have hQ := sq_core_disj p q hpq A B C D hpAB hqCD e1 e3 he1 he3 hχcore
  exact double_pinch_finish p q hpodd hqodd hpq A B C D hpAB hqCD hP hQ

/-- F2, mixed class: Im(e₁p²χ⁴ + e₂q²π⁴ + e₃π⁴χ̄⁴) ≠ 0. -/
theorem family_F2_mixed_nonzero
    (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (e1 e2 e3 : ℤ) (he1 : e1 = 1 ∨ e1 = -1) (he2 : e2 = 1 ∨ e2 = -1)
    (he3 : e3 = 1 ∨ e3 = -1) :
    (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (⟨C, D⟩ : GaussianInt) ^ 4
      + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 4
      + ((e3 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 4
        * (star (⟨C, D⟩ : GaussianInt)) ^ 4).im ≠ 0 := by
  intro h0
  set π : GaussianInt := ⟨A, B⟩ with hπdef
  set χ : GaussianInt := ⟨C, D⟩ with hχdef
  set G : GaussianInt :=
    ((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * χ ^ 4
      + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 4
      + ((e3 : ℤ) : GaussianInt) * π ^ 4 * (star χ) ^ 4 with hGdef
  have hself : star G = G := by
    ext
    · simp
    · simp [h0]
  have hππb : π * star π = ((p : ℤ) : GaussianInt) := by
    rw [hπdef, pi_mul_star, hpAB]
  have hχχb : χ * star χ = ((q : ℤ) : GaussianInt) := by
    rw [hχdef, pi_mul_star, hqCD]
  have hπprime : Prime π := prime_pi p A B hpAB
  have hχprime : Prime χ := prime_pi q C D hqCD
  have hπnb : ¬ π ∣ star π := pi_not_dvd_star p hpodd A B hpAB
  have hχnb : ¬ χ ∣ star χ := pi_not_dvd_star q hqodd C D hqCD
  have hχπ : ¬ χ ∣ π := not_dvd_other q p (fun h => hpq h.symm) C D A B hqCD hpAB
  have hχsπ : ¬ χ ∣ star π := by
    have := not_dvd_other q p (fun h => hpq h.symm) C D A (-B) hqCD
      (by rw [neg_pow]; ring_nf; linarith [hpAB])
    simpa [hπdef, Zsqrtd.star_mk] using this
  have hP2 : (((p : ℤ) ^ 2 : ℤ) : GaussianInt) = π ^ 2 * (star π) ^ 2 := by
    have hcast : (((p : ℤ) ^ 2 : ℤ) : GaussianInt) = ((p : ℤ) : GaussianInt) ^ 2 := by
      push_cast; ring
    rw [hcast, ← hππb]; ring
  have hQ2 : (((q : ℤ) ^ 2 : ℤ) : GaussianInt) = χ ^ 2 * (star χ) ^ 2 := by
    have hcast : (((q : ℤ) ^ 2 : ℤ) : GaussianInt) = ((q : ℤ) : GaussianInt) ^ 2 := by
      push_cast; ring
    rw [hcast, ← hχχb]; ring
  have hstarG : star G =
      ((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star χ) ^ 4
        + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4
        + ((e3 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ 4 := by
    rw [hGdef]
    simp only [star_add, star_mul, star_pow, star_star, star_intCast]
    ring
  -- π-side: as in the aligned class, but the stripped factor carries χ⁴,
  -- so apply pi_core_disj through the D ↦ −D mirror.
  have hπG : π ∣ G := by
    rw [hGdef, hP2]
    exact ⟨((e1 : ℤ) : GaussianInt) * (π * (star π) ^ 2) * χ ^ 4
      + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 3
      + ((e3 : ℤ) : GaussianInt) * π ^ 3 * (star χ) ^ 4, by ring⟩
  have hπsG : π ∣ (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star χ) ^ 4
      + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4
      + ((e3 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ 4) := by
    rw [← hstarG, hself]; exact hπG
  have hπt1 : π ∣ (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star χ) ^ 4) := by
    rw [hP2]
    exact ⟨((e1 : ℤ) : GaussianInt) * (π * (star π) ^ 2) * (star χ) ^ 4, by ring⟩
  have hπrest : π ∣ ((star π) ^ 4 *
      (((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
        + ((e3 : ℤ) : GaussianInt) * χ ^ 4)) := by
    have heq : (star π) ^ 4 *
        (((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
          + ((e3 : ℤ) : GaussianInt) * χ ^ 4)
        = (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star χ) ^ 4
            + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4
            + ((e3 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ 4)
          - ((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star χ) ^ 4 := by
      ring
    rw [heq]; exact dvd_sub hπsG hπt1
  have hπcore : π ∣ (((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
      + ((e3 : ℤ) : GaussianInt) * χ ^ 4) := by
    rcases hπprime.dvd_mul.mp hπrest with h | h
    · exact absurd (hπprime.dvd_of_dvd_pow h) hπnb
    · exact h
  have hqCD' : C ^ 2 + (-D) ^ 2 = q := by rw [neg_pow]; ring_nf; linarith [hqCD]
  have hmirror : star (⟨C, -D⟩ : GaussianInt) = χ := by
    rw [hχdef]; ext <;> simp
  have hπcore' : (⟨A, B⟩ : GaussianInt) ∣
      (((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
        + ((e3 : ℤ) : GaussianInt) * (star (⟨C, -D⟩ : GaussianInt)) ^ 4) := by
    rw [hmirror]; exact hπcore
  have hPmir := pi_core_disj p q hpodd hpq A B C (-D) hpAB hqCD' e2 e3 he2 he3 hπcore'
  have hP : (p : ℤ) ∣ 2 * (C ^ 2 - D ^ 2) ∨ (p : ℤ) ∣ 4 * C * D := by
    rcases hPmir with h | h
    · left
      have hid : 2 * (C ^ 2 - (-D) ^ 2) = 2 * (C ^ 2 - D ^ 2) := by ring
      rwa [hid] at h
    · right
      have hid : 4 * C * (-D) = -(4 * C * D) := by ring
      rw [hid] at h
      exact dvd_neg.mp h
  -- χ-side: G is NOT χ-divisible here; regroup the six-term G − star G = 0.
  have hGsG : χ ∣ (G - star G) := by
    rw [hself, sub_self]
    exact dvd_zero χ
  have hχDpart : χ ∣ (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * χ ^ 4
      + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (π ^ 4 - (star π) ^ 4)
      - ((e3 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ 4) := by
    rw [hQ2]
    exact ⟨((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * χ ^ 3
      + ((e2 : ℤ) : GaussianInt) * (χ * (star χ) ^ 2) * (π ^ 4 - (star π) ^ 4)
      - ((e3 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ 3, by ring⟩
  have hχrem : χ ∣ ((star χ) ^ 4 *
      (((e3 : ℤ) : GaussianInt) * π ^ 4
        - ((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt))) := by
    have heq : (star χ) ^ 4 *
        (((e3 : ℤ) : GaussianInt) * π ^ 4
          - ((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt))
        = (G - star G)
          - (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * χ ^ 4
            + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (π ^ 4 - (star π) ^ 4)
            - ((e3 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ 4) := by
      rw [hGdef, hstarG]; ring
    rw [heq]; exact dvd_sub hGsG hχDpart
  have hχmid : χ ∣ (((e3 : ℤ) : GaussianInt) * π ^ 4
      - ((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)) := by
    rcases hχprime.dvd_mul.mp hχrem with h | h
    · exact absurd (hχprime.dvd_of_dvd_pow h) hχnb
    · exact h
  have hχfac : χ ∣ (π ^ 2 *
      (((e3 : ℤ) : GaussianInt) * π ^ 2 + ((-e1 : ℤ) : GaussianInt) * (star π) ^ 2)) := by
    have heq : π ^ 2 *
        (((e3 : ℤ) : GaussianInt) * π ^ 2 + ((-e1 : ℤ) : GaussianInt) * (star π) ^ 2)
        = ((e3 : ℤ) : GaussianInt) * π ^ 4
          - ((e1 : ℤ) : GaussianInt) * (π ^ 2 * (star π) ^ 2) := by
      push_cast; ring
    rw [heq, ← hP2]; exact hχmid
  have hχcore : χ ∣ (((e3 : ℤ) : GaussianInt) * π ^ 2
      + ((-e1 : ℤ) : GaussianInt) * (star π) ^ 2) := by
    rcases hχprime.dvd_mul.mp hχfac with h | h
    · exact absurd (hχprime.dvd_of_dvd_pow h) hχπ
    · exact h
  have he1' : -e1 = 1 ∨ -e1 = -1 := by
    rcases he1 with rfl | rfl
    · right; norm_num
    · left; norm_num
  have hQ := sq_core_disj p q hpq A B C D hpAB hqCD e3 (-e1) he3 he1' hχcore
  exact double_pinch_finish p q hpodd hqodd hpq A B C D hpAB hqCD hP hQ
