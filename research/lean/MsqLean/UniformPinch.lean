/-
Exponent-UNIFORM double-pinch kills. Every pure double-pinch relation
at (2,2) is a corner triple {(α−1,β), (α,β−1), (α,β)}: the common
p^{2u}q^{2w} coefficient factors out of Im, so after anchoring, the
Gaussian value is
  G = e₁·p²·π^{4a}·K^{4b+4} + e₂·q²·π^{4a+4}·χ̄^{4b} + e₃·π^{4a+4}·χ̄^{4b+4}
with K = χ̄ (aligned, free a b) or K = χ (mixed, a = 0). One theorem
per class kills the corresponding corner triples at EVERY exponent;
the four (2,2) family theorems become instances.
-/
import MsqLean.CoreDisj

open Zsqrtd

/-- Aligned corner triple, uniform in both anchor exponents. -/
theorem uniform_corner_aligned
    (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (a b : ℕ)
    (e1 e2 e3 : ℤ) (he1 : e1 = 1 ∨ e1 = -1) (he2 : e2 = 1 ∨ e2 = -1)
    (he3 : e3 = 1 ∨ e3 = -1) :
    (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
        * (⟨A, B⟩ : GaussianInt) ^ (4 * a) * (star (⟨C, D⟩ : GaussianInt)) ^ (4 * b + 4)
      + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
        * (⟨A, B⟩ : GaussianInt) ^ (4 * a + 4) * (star (⟨C, D⟩ : GaussianInt)) ^ (4 * b)
      + ((e3 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ (4 * a + 4)
        * (star (⟨C, D⟩ : GaussianInt)) ^ (4 * b + 4)).im ≠ 0 := by
  intro h0
  set π : GaussianInt := ⟨A, B⟩ with hπdef
  set χ : GaussianInt := ⟨C, D⟩ with hχdef
  set G : GaussianInt :=
    ((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
        * π ^ (4 * a) * (star χ) ^ (4 * b + 4)
      + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
        * π ^ (4 * a + 4) * (star χ) ^ (4 * b)
      + ((e3 : ℤ) : GaussianInt) * π ^ (4 * a + 4) * (star χ) ^ (4 * b + 4) with hGdef
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
  have hπχ : ¬ π ∣ χ := not_dvd_other p q hpq A B C D hpAB hqCD
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
      ((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
          * (star π) ^ (4 * a) * χ ^ (4 * b + 4)
        + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
          * (star π) ^ (4 * a + 4) * χ ^ (4 * b)
        + ((e3 : ℤ) : GaussianInt) * (star π) ^ (4 * a + 4) * χ ^ (4 * b + 4) := by
    rw [hGdef]
    simp only [star_add, star_mul, star_pow, star_star, star_intCast]
    ring
  -- π-side: π ∣ G; subtract the p²-term of star G, strip π̄- and χ-powers.
  have hπG : π ∣ G := by
    rw [hGdef, hP2]
    exact ⟨((e1 : ℤ) : GaussianInt) * (π * (star π) ^ 2)
        * π ^ (4 * a) * (star χ) ^ (4 * b + 4)
      + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
        * π ^ (4 * a + 3) * (star χ) ^ (4 * b)
      + ((e3 : ℤ) : GaussianInt) * π ^ (4 * a + 3) * (star χ) ^ (4 * b + 4), by ring⟩
  have hπsG : π ∣ (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
        * (star π) ^ (4 * a) * χ ^ (4 * b + 4)
      + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
        * (star π) ^ (4 * a + 4) * χ ^ (4 * b)
      + ((e3 : ℤ) : GaussianInt) * (star π) ^ (4 * a + 4) * χ ^ (4 * b + 4)) := by
    rw [← hstarG, hself]; exact hπG
  have hπt1 : π ∣ (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
      * (star π) ^ (4 * a) * χ ^ (4 * b + 4)) := by
    rw [hP2]
    exact ⟨((e1 : ℤ) : GaussianInt) * (π * (star π) ^ 2)
      * (star π) ^ (4 * a) * χ ^ (4 * b + 4), by ring⟩
  have hπrest : π ∣ ((star π) ^ (4 * a + 4) * (χ ^ (4 * b) *
      (((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
        + ((e3 : ℤ) : GaussianInt) * χ ^ 4))) := by
    have heq : (star π) ^ (4 * a + 4) * (χ ^ (4 * b) *
        (((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
          + ((e3 : ℤ) : GaussianInt) * χ ^ 4))
        = (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
              * (star π) ^ (4 * a) * χ ^ (4 * b + 4)
            + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
              * (star π) ^ (4 * a + 4) * χ ^ (4 * b)
            + ((e3 : ℤ) : GaussianInt) * (star π) ^ (4 * a + 4) * χ ^ (4 * b + 4))
          - ((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
            * (star π) ^ (4 * a) * χ ^ (4 * b + 4) := by
      ring
    rw [heq]; exact dvd_sub hπsG hπt1
  have hπcore : π ∣ (((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
      + ((e3 : ℤ) : GaussianInt) * χ ^ 4) := by
    rcases hπprime.dvd_mul.mp hπrest with h | h
    · exact absurd (hπprime.dvd_of_dvd_pow h) hπnb
    · rcases hπprime.dvd_mul.mp h with h2 | h2
      · exact absurd (hπprime.dvd_of_dvd_pow h2) hπχ
      · exact h2
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
  -- χ-side: regroup G − star G = 0, extract π^{4a}χ̄^{4b+4}(e₁p² + e₃π⁴).
  have hGsG : χ ∣ (G - star G) := by
    rw [hself, sub_self]
    exact dvd_zero χ
  have hχDpart : χ ∣ (((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
        * (π ^ (4 * a + 4) * (star χ) ^ (4 * b) - (star π) ^ (4 * a + 4) * χ ^ (4 * b))
      - ((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
        * (star π) ^ (4 * a) * χ ^ (4 * b + 4)
      - ((e3 : ℤ) : GaussianInt) * (star π) ^ (4 * a + 4) * χ ^ (4 * b + 4)) := by
    rw [hQ2]
    exact ⟨((e2 : ℤ) : GaussianInt) * (χ * (star χ) ^ 2)
        * (π ^ (4 * a + 4) * (star χ) ^ (4 * b) - (star π) ^ (4 * a + 4) * χ ^ (4 * b))
      - ((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
        * (star π) ^ (4 * a) * χ ^ (4 * b + 3)
      - ((e3 : ℤ) : GaussianInt) * (star π) ^ (4 * a + 4) * χ ^ (4 * b + 3), by ring⟩
  have hχrem : χ ∣ (π ^ (4 * a) * ((star χ) ^ (4 * b + 4) *
      (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
        + ((e3 : ℤ) : GaussianInt) * π ^ 4))) := by
    have heq : π ^ (4 * a) * ((star χ) ^ (4 * b + 4) *
        (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
          + ((e3 : ℤ) : GaussianInt) * π ^ 4))
        = (G - star G)
          - (((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
              * (π ^ (4 * a + 4) * (star χ) ^ (4 * b) - (star π) ^ (4 * a + 4) * χ ^ (4 * b))
            - ((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
              * (star π) ^ (4 * a) * χ ^ (4 * b + 4)
            - ((e3 : ℤ) : GaussianInt) * (star π) ^ (4 * a + 4) * χ ^ (4 * b + 4)) := by
      rw [hGdef, hstarG]; ring
    rw [heq]; exact dvd_sub hGsG hχDpart
  have hχmid : χ ∣ (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
      + ((e3 : ℤ) : GaussianInt) * π ^ 4) := by
    rcases hχprime.dvd_mul.mp hχrem with h | h
    · exact absurd (hχprime.dvd_of_dvd_pow h) hχπ
    · rcases hχprime.dvd_mul.mp h with h2 | h2
      · exact absurd (hχprime.dvd_of_dvd_pow h2) hχnb
      · exact h2
  have hχfac : χ ∣ (π ^ 2 *
      (((e3 : ℤ) : GaussianInt) * π ^ 2 + ((e1 : ℤ) : GaussianInt) * (star π) ^ 2)) := by
    have heq : π ^ 2 *
        (((e3 : ℤ) : GaussianInt) * π ^ 2 + ((e1 : ℤ) : GaussianInt) * (star π) ^ 2)
        = ((e1 : ℤ) : GaussianInt) * (π ^ 2 * (star π) ^ 2)
          + ((e3 : ℤ) : GaussianInt) * π ^ 4 := by ring
    rw [heq, ← hP2]; exact hχmid
  have hχcore : χ ∣ (((e3 : ℤ) : GaussianInt) * π ^ 2
      + ((e1 : ℤ) : GaussianInt) * (star π) ^ 2) := by
    rcases hχprime.dvd_mul.mp hχfac with h | h
    · exact absurd (hχprime.dvd_of_dvd_pow h) hχπ
    · exact h
  have hQ := sq_core_disj p q hpq A B C D hpAB hqCD e3 e1 he3 he1 hχcore
  exact double_pinch_finish p q hpodd hqodd hpq A B C D hpAB hqCD hP hQ

/-- Mixed corner triple (first slot χ-unconjugated), uniform in the
χ-anchor exponent. -/
theorem uniform_corner_mixed
    (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (b : ℕ)
    (e1 e2 e3 : ℤ) (he1 : e1 = 1 ∨ e1 = -1) (he2 : e2 = 1 ∨ e2 = -1)
    (he3 : e3 = 1 ∨ e3 = -1) :
    (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
        * (⟨C, D⟩ : GaussianInt) ^ (4 * b + 4)
      + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
        * (⟨A, B⟩ : GaussianInt) ^ 4 * (star (⟨C, D⟩ : GaussianInt)) ^ (4 * b)
      + ((e3 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 4
        * (star (⟨C, D⟩ : GaussianInt)) ^ (4 * b + 4)).im ≠ 0 := by
  intro h0
  set π : GaussianInt := ⟨A, B⟩ with hπdef
  set χ : GaussianInt := ⟨C, D⟩ with hχdef
  set G : GaussianInt :=
    ((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * χ ^ (4 * b + 4)
      + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
        * π ^ 4 * (star χ) ^ (4 * b)
      + ((e3 : ℤ) : GaussianInt) * π ^ 4 * (star χ) ^ (4 * b + 4) with hGdef
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
  have hπχ : ¬ π ∣ χ := not_dvd_other p q hpq A B C D hpAB hqCD
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
      ((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star χ) ^ (4 * b + 4)
        + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
          * (star π) ^ 4 * χ ^ (4 * b)
        + ((e3 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ (4 * b + 4) := by
    rw [hGdef]
    simp only [star_add, star_mul, star_pow, star_star, star_intCast]
    ring
  -- π-side: identical to the aligned class.
  have hπG : π ∣ G := by
    rw [hGdef, hP2]
    exact ⟨((e1 : ℤ) : GaussianInt) * (π * (star π) ^ 2) * χ ^ (4 * b + 4)
      + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
        * π ^ 3 * (star χ) ^ (4 * b)
      + ((e3 : ℤ) : GaussianInt) * π ^ 3 * (star χ) ^ (4 * b + 4), by ring⟩
  have hπsG : π ∣ (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
        * (star χ) ^ (4 * b + 4)
      + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
        * (star π) ^ 4 * χ ^ (4 * b)
      + ((e3 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ (4 * b + 4)) := by
    rw [← hstarG, hself]; exact hπG
  have hπt1 : π ∣ (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
      * (star χ) ^ (4 * b + 4)) := by
    rw [hP2]
    exact ⟨((e1 : ℤ) : GaussianInt) * (π * (star π) ^ 2) * (star χ) ^ (4 * b + 4), by ring⟩
  have hπrest : π ∣ ((star π) ^ 4 * (χ ^ (4 * b) *
      (((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
        + ((e3 : ℤ) : GaussianInt) * χ ^ 4))) := by
    have heq : (star π) ^ 4 * (χ ^ (4 * b) *
        (((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
          + ((e3 : ℤ) : GaussianInt) * χ ^ 4))
        = (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
              * (star χ) ^ (4 * b + 4)
            + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
              * (star π) ^ 4 * χ ^ (4 * b)
            + ((e3 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ (4 * b + 4))
          - ((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
            * (star χ) ^ (4 * b + 4) := by
      ring
    rw [heq]; exact dvd_sub hπsG hπt1
  have hπcore : π ∣ (((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
      + ((e3 : ℤ) : GaussianInt) * χ ^ 4) := by
    rcases hπprime.dvd_mul.mp hπrest with h | h
    · exact absurd (hπprime.dvd_of_dvd_pow h) hπnb
    · rcases hπprime.dvd_mul.mp h with h2 | h2
      · exact absurd (hπprime.dvd_of_dvd_pow h2) hπχ
      · exact h2
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
  -- χ-side: regroup G − star G = 0, extract χ̄^{4b+4}(e₃π⁴ − e₁p²).
  have hGsG : χ ∣ (G - star G) := by
    rw [hself, sub_self]
    exact dvd_zero χ
  have hχDpart : χ ∣ (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
        * χ ^ (4 * b + 4)
      + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
        * (π ^ 4 * (star χ) ^ (4 * b) - (star π) ^ 4 * χ ^ (4 * b))
      - ((e3 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ (4 * b + 4)) := by
    rw [hQ2]
    exact ⟨((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * χ ^ (4 * b + 3)
      + ((e2 : ℤ) : GaussianInt) * (χ * (star χ) ^ 2)
        * (π ^ 4 * (star χ) ^ (4 * b) - (star π) ^ 4 * χ ^ (4 * b))
      - ((e3 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ (4 * b + 3), by ring⟩
  have hχrem : χ ∣ ((star χ) ^ (4 * b + 4) *
      (((e3 : ℤ) : GaussianInt) * π ^ 4
        - ((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt))) := by
    have heq : (star χ) ^ (4 * b + 4) *
        (((e3 : ℤ) : GaussianInt) * π ^ 4
          - ((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt))
        = (G - star G)
          - (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * χ ^ (4 * b + 4)
            + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
              * (π ^ 4 * (star χ) ^ (4 * b) - (star π) ^ 4 * χ ^ (4 * b))
            - ((e3 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ (4 * b + 4)) := by
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
