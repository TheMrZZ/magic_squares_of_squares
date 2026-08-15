/-
Family F4 of pure double-pinch relations at exponent (2,2):
slots {(1,1),(2,0),(2,1)}, i.e. (after dividing by q²)
  G = e₁·p²·π⁴·K⁴ + e₂·q²·π⁸ + e₃·π⁸·K⁴,   e_i ∈ {±1},
with K = χ̄ (class A) or K = χ (class B). The q-graded mirror of F3;
both classes close without regrouping.
-/
import MsqLean.CoreDisj

open Zsqrtd

/-- F4, class A: Im(e₁p²π⁴χ̄⁴ + e₂q²π⁸ + e₃π⁸χ̄⁴) ≠ 0. -/
theorem family_F4_nonzero
    (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (e1 e2 e3 : ℤ) (he1 : e1 = 1 ∨ e1 = -1) (he2 : e2 = 1 ∨ e2 = -1)
    (he3 : e3 = 1 ∨ e3 = -1) :
    (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 4
        * (star (⟨C, D⟩ : GaussianInt)) ^ 4
      + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 8
      + ((e3 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 8
        * (star (⟨C, D⟩ : GaussianInt)) ^ 4).im ≠ 0 := by
  intro h0
  set π : GaussianInt := ⟨A, B⟩ with hπdef
  set χ : GaussianInt := ⟨C, D⟩ with hχdef
  set G : GaussianInt :=
    ((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 4 * (star χ) ^ 4
      + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 8
      + ((e3 : ℤ) : GaussianInt) * π ^ 8 * (star χ) ^ 4 with hGdef
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
  have hP2 : (((p : ℤ) ^ 2 : ℤ) : GaussianInt) = π ^ 2 * (star π) ^ 2 := by
    have hcast : (((p : ℤ) ^ 2 : ℤ) : GaussianInt) = ((p : ℤ) : GaussianInt) ^ 2 := by
      push_cast; ring
    rw [hcast, ← hππb]; ring
  have hQ2 : (((q : ℤ) ^ 2 : ℤ) : GaussianInt) = χ ^ 2 * (star χ) ^ 2 := by
    have hcast : (((q : ℤ) ^ 2 : ℤ) : GaussianInt) = ((q : ℤ) : GaussianInt) ^ 2 := by
      push_cast; ring
    rw [hcast, ← hχχb]; ring
  have hstarG : star G =
      ((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ 4
        + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 8
        + ((e3 : ℤ) : GaussianInt) * (star π) ^ 8 * χ ^ 4 := by
    rw [hGdef]
    simp only [star_add, star_mul, star_pow, star_star, star_intCast]
    ring
  -- π-side: subtract the p²-term of star G, strip π̄⁸, read the core
  -- through the D ↦ −D mirror.
  have hπG : π ∣ G := by
    rw [hGdef]
    exact ⟨((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 3 * (star χ) ^ 4
      + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 7
      + ((e3 : ℤ) : GaussianInt) * π ^ 7 * (star χ) ^ 4, by ring⟩
  have hπsG : π ∣ (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ 4
      + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 8
      + ((e3 : ℤ) : GaussianInt) * (star π) ^ 8 * χ ^ 4) := by
    rw [← hstarG, hself]; exact hπG
  have hπt1 : π ∣ (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
      * (star π) ^ 4 * χ ^ 4) := by
    rw [hP2]
    exact ⟨((e1 : ℤ) : GaussianInt) * (π * (star π) ^ 2) * (star π) ^ 4 * χ ^ 4, by ring⟩
  have hπrest : π ∣ ((star π) ^ 8 *
      (((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
        + ((e3 : ℤ) : GaussianInt) * χ ^ 4)) := by
    have heq : (star π) ^ 8 *
        (((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
          + ((e3 : ℤ) : GaussianInt) * χ ^ 4)
        = (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ 4
            + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 8
            + ((e3 : ℤ) : GaussianInt) * (star π) ^ 8 * χ ^ 4)
          - ((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
            * (star π) ^ 4 * χ ^ 4 := by
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
  -- χ-side: χ ∣ star G = G; subtract the q²-term of G, strip χ̄⁴ then π⁴, π².
  have hχsG : χ ∣ (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
      * (star π) ^ 4 * χ ^ 4
      + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 8
      + ((e3 : ℤ) : GaussianInt) * (star π) ^ 8 * χ ^ 4) := by
    rw [hQ2]
    exact ⟨((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ 3
      + ((e2 : ℤ) : GaussianInt) * (χ * (star χ) ^ 2) * (star π) ^ 8
      + ((e3 : ℤ) : GaussianInt) * (star π) ^ 8 * χ ^ 3, by ring⟩
  have hχG : χ ∣ G := by
    rw [← hself, hstarG]
    exact hχsG
  have hχt2 : χ ∣ (((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 8) := by
    rw [hQ2]
    exact ⟨((e2 : ℤ) : GaussianInt) * (χ * (star χ) ^ 2) * π ^ 8, by ring⟩
  have hχrest : χ ∣ ((star χ) ^ 4 * (π ^ 4 *
      (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
        + ((e3 : ℤ) : GaussianInt) * π ^ 4))) := by
    have heq : (star χ) ^ 4 * (π ^ 4 *
        (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
          + ((e3 : ℤ) : GaussianInt) * π ^ 4))
        = G - ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 8 := by
      rw [hGdef]; ring
    rw [heq]; exact dvd_sub hχG hχt2
  have hχmid : χ ∣ (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
      + ((e3 : ℤ) : GaussianInt) * π ^ 4) := by
    rcases hχprime.dvd_mul.mp hχrest with h | h
    · exact absurd (hχprime.dvd_of_dvd_pow h) hχnb
    · rcases hχprime.dvd_mul.mp h with h2 | h2
      · exact absurd (hχprime.dvd_of_dvd_pow h2) hχπ
      · exact h2
  have hχfac : χ ∣ (π ^ 2 *
      (((e3 : ℤ) : GaussianInt) * π ^ 2 + ((e1 : ℤ) : GaussianInt) * (star π) ^ 2)) := by
    have heq : π ^ 2 *
        (((e3 : ℤ) : GaussianInt) * π ^ 2 + ((e1 : ℤ) : GaussianInt) * (star π) ^ 2)
        = ((e1 : ℤ) : GaussianInt) * (π ^ 2 * (star π) ^ 2)
          + ((e3 : ℤ) : GaussianInt) * π ^ 4 := by ring
    rw [heq, ← hP2]; exact hχmid
  have hχcore : χ ∣ (((e3 : ℤ) : GaussianInt) * π ^ 2 + ((e1 : ℤ) : GaussianInt) * (star π) ^ 2) := by
    rcases hχprime.dvd_mul.mp hχfac with h | h
    · exact absurd (hχprime.dvd_of_dvd_pow h) hχπ
    · exact h
  have hQ := sq_core_disj p q hpq A B C D hpAB hqCD e3 e1 he3 he1 hχcore
  exact double_pinch_finish p q hpodd hqodd hpq A B C D hpAB hqCD hP hQ

/-- F4, class B: Im(e₁p²π⁴χ⁴ + e₂q²π⁸ + e₃π⁸χ⁴) ≠ 0. -/
theorem family_F4_conj_nonzero
    (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (e1 e2 e3 : ℤ) (he1 : e1 = 1 ∨ e1 = -1) (he2 : e2 = 1 ∨ e2 = -1)
    (he3 : e3 = 1 ∨ e3 = -1) :
    (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 4
        * (⟨C, D⟩ : GaussianInt) ^ 4
      + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 8
      + ((e3 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 8
        * (⟨C, D⟩ : GaussianInt) ^ 4).im ≠ 0 := by
  intro h0
  have hqCD' : C ^ 2 + (-D) ^ 2 = q := by rw [neg_pow]; ring_nf; linarith [hqCD]
  apply family_F4_nonzero p q hpodd hqodd hpq A B C (-D) hpAB hqCD' e1 e2 e3 he1 he2 he3
  have hmirror : star (⟨C, -D⟩ : GaussianInt) = (⟨C, D⟩ : GaussianInt) := by
    ext <;> simp
  rw [hmirror]
  exact h0
