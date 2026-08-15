/-
The assignment layer for Theorem G (center roots s·p³·q): the three
level-12 classes on top of p²-scaled Theorem-F classes.
-/
import Mathlib
import MsqLean.TheoremGInt
import MsqLean.TheoremFCore

open Zsqrtd

section GCore

variable (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]

private def M7 (q : ℕ) (A B : ℤ) : ℤ := (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 12).im)
private def M8 (A B C D : ℤ) : ℤ :=
  (((⟨A, B⟩ : GaussianInt) ^ 12) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im
private def M9 (A B C D : ℤ) : ℤ :=
  (((⟨A, B⟩ : GaussianInt) ^ 12) * (star (⟨C, D⟩ : GaussianInt)) ^ 4).im

private lemma M8_coord (A B C D : ℤ) :
    M8 A B C D = (((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)
      + (((⟨A, B⟩ : GaussianInt) ^ 12).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) := by
  unfold M8
  simp [Zsqrtd.im_mul]

private lemma M9_coord (A B C D : ℤ) :
    M9 A B C D = (((⟨A, B⟩ : GaussianInt) ^ 12).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)
      - (((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) := by
  unfold M9
  simp only [Zsqrtd.im_mul, ← star_pow, Zsqrtd.re_star, Zsqrtd.im_star]
  ring

/-- π does not divide the conjugate of π¹²·w⁴ for w ∈ {χ, χ̄}. -/
lemma pi_not_dvd_star_p12w4
    (hpodd : p % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :
    ¬ (⟨A, B⟩ : GaussianInt) ∣
      star (((⟨A, B⟩ : GaussianInt) ^ 12) * ((⟨C, D⟩ : GaussianInt) ^ 4)) := by
  intro h
  rw [star_mul, star_pow, star_pow, mul_comm] at h
  have hπprime : Prime (⟨A, B⟩ : GaussianInt) := prime_pi p A B hpAB
  rcases hπprime.dvd_mul.mp h with h1 | h1
  · exact pi_not_dvd_star p hpodd A B hpAB (hπprime.dvd_of_dvd_pow h1)
  · have h2 := hπprime.dvd_of_dvd_pow h1
    have hstar : star (⟨C, D⟩ : GaussianInt) = (⟨C, -D⟩ : GaussianInt) := by
      ext <;> simp
    rw [hstar] at h2
    have hqCD2 : C ^ 2 + (-D) ^ 2 = q := by rw [neg_pow]; ring_nf; linarith [hqCD]
    exact not_dvd_other p q hpq A B C (-D) hpAB hqCD2 h2

/-- p ∤ small multiples of M8 = Im(π¹²χ⁴). -/
lemma p2_not_dvd_M8
    (hpodd : p % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (c m : ℤ) (hc : ¬ (p : ℤ) ∣ c)
    (h : c * M8 A B C D = (p : ℤ) ^ 2 * m) : False := by
  refine p2_extract_kill p hpodd A B hpAB
    (((⟨A, B⟩ : GaussianInt) ^ 12) * ((⟨C, D⟩ : GaussianInt) ^ 4)) c m hc
    (Dvd.dvd.mul_right (dvd_pow_self _ (by norm_num)) _)
    (pi_not_dvd_star_p12w4 p q hpodd hpq A B C D hpAB hqCD) ?_
  unfold M8 at h
  exact h

/-- Same for M9 = Im(π¹²χ̄⁴). -/
lemma p2_not_dvd_M9
    (hpodd : p % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (c m : ℤ) (hc : ¬ (p : ℤ) ∣ c)
    (h : c * M9 A B C D = (p : ℤ) ^ 2 * m) : False := by
  have hstar : (star (⟨C, D⟩ : GaussianInt)) = (⟨C, -D⟩ : GaussianInt) := by
    ext <;> simp
  have hqCD2 : C ^ 2 + (-D) ^ 2 = q := by rw [neg_pow]; ring_nf; linarith [hqCD]
  refine p2_extract_kill p hpodd A B hpAB
    (((⟨A, B⟩ : GaussianInt) ^ 12) * ((⟨C, -D⟩ : GaussianInt) ^ 4)) c m hc
    (Dvd.dvd.mul_right (dvd_pow_self _ (by norm_num)) _)
    (pi_not_dvd_star_p12w4 p q hpodd hpq A B C (-D) hpAB hqCD2) ?_
  unfold M9 at h
  rw [← hstar]
  exact h

/-- p² never divides c·I₁₂ for p ∤ c: the M7-slot kill. -/
lemma p2_not_dvd_I12
    (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p)
    (c m : ℤ) (hc : ¬ (p : ℤ) ∣ c)
    (h : c * (((⟨A, B⟩ : GaussianInt) ^ 12).im) = (p : ℤ) ^ 2 * m) : False := by
  refine p2_extract_kill p hpodd A B hpAB ((⟨A, B⟩ : GaussianInt) ^ 12) c m hc
    (dvd_pow_self _ (by norm_num))
    (fun hd => pi_not_dvd_star p hpodd A B hpAB
      ((prime_pi p A B hpAB).dvd_of_dvd_pow (by rwa [star_pow] at hd))) h

/-- A small multiple of M7 = q²·I₁₂ can never be p²-divisible. -/
lemma low_M7_kill (hpodd : p % 2 = 1) (hpq : p ≠ q)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p)
    (c m : ℤ) (hc : c = 1 ∨ c = -1 ∨ c = 2 ∨ c = -2)
    (h : c * M7 q A B = (p : ℤ) ^ 2 * m) : False := by
  have hpc : ¬ (p : ℤ) ∣ c * (q : ℤ) ^ 2 := by
    intro hd
    have hpP : Prime (p : ℤ) := by
      rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
    rcases hpP.dvd_mul.mp hd with h' | h'
    · have hple : (p : ℤ) ∣ 2 ∨ (p : ℤ) ∣ 1 := by
        rcases hc with rfl | rfl | rfl | rfl
        · exact Or.inr h'
        · exact Or.inr (dvd_neg.mp h')
        · exact Or.inl h'
        · exact Or.inl (dvd_neg.mp h')
      have h2 := hp.out.two_le
      rcases hple with h' | h'
      · have : p ∣ 2 := by exact_mod_cast h'
        have := Nat.le_of_dvd (by norm_num) this
        omega
      · have : p ∣ 1 := by exact_mod_cast h'
        have := Nat.le_of_dvd (by norm_num) this
        omega
    · have hq' : (p : ℤ) ∣ (q : ℤ) := hpP.dvd_of_dvd_pow h'
      have : p ∣ q := by exact_mod_cast hq'
      exact hpq ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp this)
  refine p2_not_dvd_I12 p hpodd A B hpAB (c * (q : ℤ) ^ 2) m hpc ?_
  unfold M7 at h
  linear_combination h

set_option maxHeartbeats 1600000 in
/-- F-reuse: when all four classes avoid level 12 they share a factor
p², and the quotients are exactly the seven s·p²·q classes. The
ladder telescopes. -/
lemma dispatch_lowG
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Ka Kb Kc Kd e1 e2 e3 e4 : ℤ)
    (he1 : e1 = 1 ∨ e1 = -1) (he2 : e2 = 1 ∨ e2 = -1)
    (he3 : e3 = 1 ∨ e3 = -1) (he4 : e4 = 1 ∨ e4 = -1)
    (ha : Ka = (p : ℤ) ^ 2 * ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im))
      ∨ Ka = (p : ℤ) ^ 2 * ((p : ℤ) ^ 2 * (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))
      ∨ Ka = (p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im))
      ∨ Ka = (p : ℤ) ^ 2 * ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)))
      ∨ Ka = (p : ℤ) ^ 2 * ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)))
      ∨ Ka = (p : ℤ) ^ 2 * (((((⟨A, B⟩ : GaussianInt) ^ 8) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im))
      ∨ Ka = (p : ℤ) ^ 2 * (((((⟨A, B⟩ : GaussianInt) ^ 8) * ((star (⟨C, D⟩ : GaussianInt)) ^ 4)).im)))
    (hb : Kb = (p : ℤ) ^ 2 * ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im))
      ∨ Kb = (p : ℤ) ^ 2 * ((p : ℤ) ^ 2 * (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))
      ∨ Kb = (p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im))
      ∨ Kb = (p : ℤ) ^ 2 * ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)))
      ∨ Kb = (p : ℤ) ^ 2 * ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)))
      ∨ Kb = (p : ℤ) ^ 2 * (((((⟨A, B⟩ : GaussianInt) ^ 8) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im))
      ∨ Kb = (p : ℤ) ^ 2 * (((((⟨A, B⟩ : GaussianInt) ^ 8) * ((star (⟨C, D⟩ : GaussianInt)) ^ 4)).im)))
    (hc : Kc = (p : ℤ) ^ 2 * ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im))
      ∨ Kc = (p : ℤ) ^ 2 * ((p : ℤ) ^ 2 * (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))
      ∨ Kc = (p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im))
      ∨ Kc = (p : ℤ) ^ 2 * ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)))
      ∨ Kc = (p : ℤ) ^ 2 * ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)))
      ∨ Kc = (p : ℤ) ^ 2 * (((((⟨A, B⟩ : GaussianInt) ^ 8) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im))
      ∨ Kc = (p : ℤ) ^ 2 * (((((⟨A, B⟩ : GaussianInt) ^ 8) * ((star (⟨C, D⟩ : GaussianInt)) ^ 4)).im)))
    (hd : Kd = (p : ℤ) ^ 2 * ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im))
      ∨ Kd = (p : ℤ) ^ 2 * ((p : ℤ) ^ 2 * (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))
      ∨ Kd = (p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im))
      ∨ Kd = (p : ℤ) ^ 2 * ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)))
      ∨ Kd = (p : ℤ) ^ 2 * ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)))
      ∨ Kd = (p : ℤ) ^ 2 * (((((⟨A, B⟩ : GaussianInt) ^ 8) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im))
      ∨ Kd = (p : ℤ) ^ 2 * (((((⟨A, B⟩ : GaussianInt) ^ 8) * ((star (⟨C, D⟩ : GaussianInt)) ^ 4)).im)))
    (hab : Ka ≠ Kb) (hac : Ka ≠ Kc) (had : Ka ≠ Kd)
    (hbc : Kb ≠ Kc) (hbd : Kb ≠ Kd) (hcd : Kc ≠ Kd)
    (hE1 : e3 * Kc + e4 * Kd = 2 * e1 * Ka)
    (hE2 : e3 * Kc - e4 * Kd = 2 * e2 * Kb) : False := by
  have hp2 : ((p : ℤ) ^ 2) ≠ 0 :=
    pow_ne_zero _ (Int.natCast_ne_zero.mpr hp.out.pos.ne')
  have peel : ∀ K : ℤ,
      (K = (p : ℤ) ^ 2 * ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im))
      ∨ K = (p : ℤ) ^ 2 * ((p : ℤ) ^ 2 * (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))
      ∨ K = (p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im))
      ∨ K = (p : ℤ) ^ 2 * ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)))
      ∨ K = (p : ℤ) ^ 2 * ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)))
      ∨ K = (p : ℤ) ^ 2 * (((((⟨A, B⟩ : GaussianInt) ^ 8) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im))
      ∨ K = (p : ℤ) ^ 2 * (((((⟨A, B⟩ : GaussianInt) ^ 8) * ((star (⟨C, D⟩ : GaussianInt)) ^ 4)).im))) →
      ∃ K' : ℤ, K = (p : ℤ) ^ 2 * K' ∧
        (K' = (p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)
        ∨ K' = (p : ℤ) ^ 2 * (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im)
        ∨ K' = (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)
        ∨ K' = (p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
        ∨ K' = (p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))
        ∨ K' = ((((⟨A, B⟩ : GaussianInt) ^ 8) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im)
        ∨ K' = ((((⟨A, B⟩ : GaussianInt) ^ 8) * ((star (⟨C, D⟩ : GaussianInt)) ^ 4)).im)) := by
    rintro K (rfl | rfl | rfl | rfl | rfl | rfl | rfl)
    · exact ⟨_, rfl, Or.inl rfl⟩
    · exact ⟨_, rfl, Or.inr (Or.inl rfl)⟩
    · exact ⟨_, rfl, Or.inr (Or.inr (Or.inl rfl))⟩
    · exact ⟨_, rfl, Or.inr (Or.inr (Or.inr (Or.inl rfl)))⟩
    · exact ⟨_, rfl, Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))⟩
    · exact ⟨_, rfl, Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))⟩
    · exact ⟨_, rfl, Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr rfl)))))⟩
  obtain ⟨Ka', hKa, ha'⟩ := peel Ka ha
  obtain ⟨Kb', hKb, hb'⟩ := peel Kb hb
  obtain ⟨Kc', hKc, hc'⟩ := peel Kc hc
  obtain ⟨Kd', hKd, hd'⟩ := peel Kd hd
  subst hKa hKb hKc hKd
  refine no_assignment_sp2q_coord p q hpodd hqodd hpq A B C D hpAB hqCD
    Ka' Kb' Kc' Kd' e1 e2 e3 e4 he1 he2 he3 he4 ha' hb' hc' hd'
    (fun h => hab (by rw [h])) (fun h => hac (by rw [h]))
    (fun h => had (by rw [h])) (fun h => hbc (by rw [h]))
    (fun h => hbd (by rw [h])) (fun h => hcd (by rw [h]))
    ?_ ?_
  · exact mul_left_cancel₀ hp2 (by linear_combination hE1)
  · exact mul_left_cancel₀ hp2 (by linear_combination hE2)


end GCore
