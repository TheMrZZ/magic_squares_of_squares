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


/-- Level-12 T-form cells with two p²-divisible partners die
uniformly: p² ∣ Y then p² ∣ X force p ∣ q. Generic in both
cofactors, covering 49 cells of the core at once. -/
lemma cross12_p2p2
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Mb Md f g e : ℤ) (he : e = 1 ∨ e = -1)
    (h1 : 2 * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) = f * ((p : ℤ) ^ 2 * Mb))
    (h2 : 3 * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) + e * ((((⟨A, B⟩ : GaussianInt) ^ 12).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) = g * ((p : ℤ) ^ 2 * Md)) :
    False := by
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  obtain ⟨hpR12, hpI12⟩ := p_not_dvd_re12_im12 p hpodd A B hpAB
  have hc2 : IsCoprime ((p : ℤ)) 2 :=
    (hpP.coprime_iff_not_dvd).mpr (fun hd' => by
      have h2' : p ∣ 2 := by exact_mod_cast hd'
      have := Nat.le_of_dvd (by norm_num) h2'
      have := hp.out.two_le
      omega)
  have hp2Y : (p : ℤ) ^ 2 ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) := by
    have hc : IsCoprime ((p : ℤ) ^ 2) (2 * (((⟨A, B⟩ : GaussianInt) ^ 12).re)) :=
      (hc2.mul_right ((hpP.coprime_iff_not_dvd).mpr hpR12)).pow_left
    refine hc.dvd_of_dvd_mul_right ?_
    exact ⟨f * Mb, by linear_combination h1⟩
  obtain ⟨y, hy⟩ := hp2Y
  have hIX : (p : ℤ) ^ 2 ∣ (((⟨A, B⟩ : GaussianInt) ^ 12).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) := by
    have hEX : e * ((((⟨A, B⟩ : GaussianInt) ^ 12).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
        = (p : ℤ) ^ 2 * (g * Md - 3 * (((⟨A, B⟩ : GaussianInt) ^ 12).re) * y) := by
      linear_combination h2 - 3 * (((⟨A, B⟩ : GaussianInt) ^ 12).re) * hy
    rcases he with rfl | rfl
    · exact ⟨g * Md - 3 * (((⟨A, B⟩ : GaussianInt) ^ 12).re) * y, by linarith [hEX]⟩
    · exact ⟨-(g * Md - 3 * (((⟨A, B⟩ : GaussianInt) ^ 12).re) * y), by linarith [hEX]⟩
  have hp2X : (p : ℤ) ^ 2 ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).re) := by
    have hc : IsCoprime ((p : ℤ) ^ 2) ((((⟨A, B⟩ : GaussianInt) ^ 12).im)) :=
      ((hpP.coprime_iff_not_dvd).mpr hpI12).pow_left
    exact hc.dvd_of_dvd_mul_right (by rwa [mul_comm] at hIX)
  obtain ⟨x, hx⟩ := hp2X
  have hq4c := norm4_coord q C D hqCD
  have hq4d : (p : ℤ) ∣ (q : ℤ) ^ 4 := by
    refine ⟨(p : ℤ) ^ 3 * (x ^ 2 + y ^ 2), ?_⟩
    rw [← hq4c, hx, hy]; ring
  have hpq' : (p : ℤ) ∣ (q : ℤ) := hpP.dvd_of_dvd_pow hq4d
  have : p ∣ q := by exact_mod_cast hpq'
  exact hpq ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp this)

/-- (p²·L0-row, M7): 2R₁₂ = f·p⁶, even = odd. -/
lemma cross12_L0_M7
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (f : ℤ) (hf : f = 1 ∨ f = -1)
    (h1 : 2 * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) = f * ((p : ℤ) ^ 6 * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) : False := by
  have hY0 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero q hqodd C D hqCD
  have h0 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) * (2 * (((⟨A, B⟩ : GaussianInt) ^ 12).re) - f * (p : ℤ) ^ 6) = 0 := by
    linear_combination h1
  rcases mul_eq_zero.mp h0 with h | h
  · exact hY0 h
  · obtain ⟨c, hc⟩ := (odd_cast p hpodd).pow (n := 6)
    generalize hM : (((⟨A, B⟩ : GaussianInt) ^ 12).re) = M at h
    rcases hf with rfl | rfl <;> omega

/-- (p²·L1-row, M7): eliminate R₁₂Y, cancel the common I₄-factor of
I₁₂, and 2J(eX − gq²) = −3f·p⁴q² is even = odd. -/
lemma cross12_L1_M7
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (f g e : ℤ) (hf : f = 1 ∨ f = -1)
    (h1 : 2 * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) = f * ((p : ℤ) ^ 4 * (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im)))
    (h2 : 3 * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) + e * ((((⟨A, B⟩ : GaussianInt) ^ 12).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
      = g * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 12).im))) : False := by
  have hI0 : (((⟨A, B⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero p hpodd A B hpAB
  have hI12f : (((⟨A, B⟩ : GaussianInt) ^ 12).im) = (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (3 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) := by
    rw [im12_eq]; ring
  have h0 : (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (2 * ((3 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) * (e * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - g * (q : ℤ) ^ 2))
      + 3 * f * ((p : ℤ) ^ 4 * (q : ℤ) ^ 2)) = 0 := by
    linear_combination 2 * h2 - 3 * h1 - 2 * (e * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - g * (q : ℤ) ^ 2) * hI12f
  rcases mul_eq_zero.mp h0 with h | h
  · exact hI0 h
  · obtain ⟨c, hc⟩ := ((odd_cast p hpodd).pow (n := 4)).mul ((odd_cast q hqodd).pow (n := 2))
    generalize hM : (3 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) * (e * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - g * (q : ℤ) ^ 2) = M at h
    generalize hN : (p : ℤ) ^ 4 * (q : ℤ) ^ 2 = N at h hc
    rcases hf with rfl | rfl <;> omega

/-- S-form M7-row: 2X = f·q², even = odd. -/
lemma cross12S_M7row
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (f : ℤ) (hf : f = 1 ∨ f = -1)
    (h1 : 2 * ((((⟨A, B⟩ : GaussianInt) ^ 12).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) = f * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 12).im))) : False := by
  have hI120 : (((⟨A, B⟩ : GaussianInt) ^ 12).im) ≠ 0 := im12_ne_zero p hpodd A B hpAB
  have h0 : (((⟨A, B⟩ : GaussianInt) ^ 12).im) * (2 * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - f * (q : ℤ) ^ 2) = 0 := by
    linear_combination h1
  rcases mul_eq_zero.mp h0 with h | h
  · exact hI120 h
  · obtain ⟨c, hc⟩ := (odd_cast q hqodd).pow (n := 2)
    rcases hf with rfl | rfl <;> omega

/-- Level-12 S-form cells with two p²-divisible partners: mirror of
cross12_p2p2. -/
lemma cross12S_p2p2
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Mb Md f g e : ℤ) (he : e = 1 ∨ e = -1)
    (h1 : 2 * ((((⟨A, B⟩ : GaussianInt) ^ 12).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) = f * ((p : ℤ) ^ 2 * Mb))
    (h2 : 3 * ((((⟨A, B⟩ : GaussianInt) ^ 12).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) + e * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) = g * ((p : ℤ) ^ 2 * Md)) :
    False := by
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  obtain ⟨hpR12, hpI12⟩ := p_not_dvd_re12_im12 p hpodd A B hpAB
  have hc2 : IsCoprime ((p : ℤ)) 2 :=
    (hpP.coprime_iff_not_dvd).mpr (fun hd' => by
      have h2' : p ∣ 2 := by exact_mod_cast hd'
      have := Nat.le_of_dvd (by norm_num) h2'
      have := hp.out.two_le
      omega)
  have hp2X : (p : ℤ) ^ 2 ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).re) := by
    have hc : IsCoprime ((p : ℤ) ^ 2) (2 * (((⟨A, B⟩ : GaussianInt) ^ 12).im)) :=
      (hc2.mul_right ((hpP.coprime_iff_not_dvd).mpr hpI12)).pow_left
    refine hc.dvd_of_dvd_mul_right ?_
    exact ⟨f * Mb, by linear_combination h1⟩
  obtain ⟨x, hx⟩ := hp2X
  have hRY : (p : ℤ) ^ 2 ∣ (((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) := by
    have hEX : e * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))
        = (p : ℤ) ^ 2 * (g * Md - 3 * (((⟨A, B⟩ : GaussianInt) ^ 12).im) * x) := by
      linear_combination h2 - 3 * (((⟨A, B⟩ : GaussianInt) ^ 12).im) * hx
    rcases he with rfl | rfl
    · exact ⟨g * Md - 3 * (((⟨A, B⟩ : GaussianInt) ^ 12).im) * x, by linarith [hEX]⟩
    · exact ⟨-(g * Md - 3 * (((⟨A, B⟩ : GaussianInt) ^ 12).im) * x), by linarith [hEX]⟩
  have hp2Y : (p : ℤ) ^ 2 ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) := by
    have hc : IsCoprime ((p : ℤ) ^ 2) ((((⟨A, B⟩ : GaussianInt) ^ 12).re)) :=
      ((hpP.coprime_iff_not_dvd).mpr hpR12).pow_left
    exact hc.dvd_of_dvd_mul_right (by rwa [mul_comm] at hRY)
  obtain ⟨y, hy⟩ := hp2Y
  have hq4c := norm4_coord q C D hqCD
  have hq4d : (p : ℤ) ∣ (q : ℤ) ^ 4 := by
    refine ⟨(p : ℤ) ^ 3 * (x ^ 2 + y ^ 2), ?_⟩
    rw [← hq4c, hx, hy]; ring
  have hpq' : (p : ℤ) ∣ (q : ℤ) := hpP.dvd_of_dvd_pow hq4d
  have : p ∣ q := by exact_mod_cast hpq'
  exact hpq ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp this)

/-- (M7, M7): substitution parity. -/
lemma cross12_M7_M7
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (f g e : ℤ) (hf : f = 1 ∨ f = -1) (hg : g = 1 ∨ g = -1) (he : e = 1 ∨ e = -1)
    (h1 : 2 * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) = f * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 12).im)))
    (h2 : 3 * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) + e * ((((⟨A, B⟩ : GaussianInt) ^ 12).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
      = g * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 12).im))) : False := by
  have hY0 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero q hqodd C D hqCD
  obtain ⟨hpR12, hpI12⟩ := p_not_dvd_re12_im12 p hpodd A B hpAB
  have hR120 : (((⟨A, B⟩ : GaussianInt) ^ 12).re) ≠ 0 := fun h0 => hpR12 (h0 ▸ dvd_zero _)
  have hsub : (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 12).im) = 2 * f * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) := by
    rcases hf with rfl | rfl <;> linarith [h1]
  have h0 : (((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) * (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re)
      - 2 * f * g * (q : ℤ) ^ 2) = 0 := by
    linear_combination (q : ℤ) ^ 2 * h2 - e * (((⟨C, D⟩ : GaussianInt) ^ 4).re) * hsub + g * (q : ℤ) ^ 2 * hsub
  rcases mul_eq_zero.mp h0 with h | h
  · rcases mul_eq_zero.mp h with h' | h'
    · exact hR120 h'
    · exact hY0 h'
  · obtain ⟨c, hc⟩ := (odd_cast q hqodd).pow (n := 2)
    rcases he with rfl | rfl <;> rcases hf with rfl | rfl <;>
      rcases hg with rfl | rfl <;> omega

set_option maxHeartbeats 1600000 in
/-- (M7, p²·L0): the factored quadratic at level 12,
(p⁶ − q²)(p⁶ − 2q²) = 0 with q = p³ impossible for a prime. -/
lemma cross12_M7_L0
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (f g e : ℤ) (hf : f = 1 ∨ f = -1) (hg : g = 1 ∨ g = -1) (he : e = 1 ∨ e = -1)
    (h1 : 2 * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) = f * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 12).im)))
    (h2 : 3 * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) + e * ((((⟨A, B⟩ : GaussianInt) ^ 12).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
      = g * ((p : ℤ) ^ 6 * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) : False := by
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  have hqP : Prime (q : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hq.out
  have hY0 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero q hqodd C D hqCD
  obtain ⟨hpR12, hpI12⟩ := p_not_dvd_re12_im12 p hpodd A B hpAB
  have hqX : ¬ (q : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).re) := (p_not_dvd_re4_im4 q hqodd C D hqCD).1
  have hp60 : ((p : ℤ) ^ 6) ≠ 0 :=
    pow_ne_zero _ (Int.natCast_ne_zero.mpr hp.out.pos.ne')
  have hq20 : ((q : ℤ) ^ 2) ≠ 0 :=
    pow_ne_zero _ (Int.natCast_ne_zero.mpr hq.out.pos.ne')
  have hn12 := norm12_coord p A B hpAB
  have hq4c := norm4_coord q C D hqCD
  have hsub : (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 12).im) = 2 * f * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) := by
    rcases hf with rfl | rfl <;> linarith [h1]
  have hkey : (((⟨C, D⟩ : GaussianInt) ^ 4).im) * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
      - g * (q : ℤ) ^ 2 * (p : ℤ) ^ 6) = 0 := by
    linear_combination (q : ℤ) ^ 2 * h2 - e * (((⟨C, D⟩ : GaussianInt) ^ 4).re) * hsub
  have hR12k : (((⟨A, B⟩ : GaussianInt) ^ 12).re) * (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
      = g * (q : ℤ) ^ 2 * (p : ℤ) ^ 6 := by
    rcases mul_eq_zero.mp hkey with h | h
    · exact absurd h hY0
    · linarith
  have hcop : IsCoprime ((p : ℤ) ^ 6) ((((⟨A, B⟩ : GaussianInt) ^ 12).re)) :=
    ((hpP.coprime_iff_not_dvd).mpr hpR12).pow_left
  have hp6k : (p : ℤ) ^ 6 ∣ (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) :=
    hcop.dvd_of_dvd_mul_left ⟨g * (q : ℤ) ^ 2, by linear_combination hR12k⟩
  obtain ⟨κ, hκ⟩ := hp6k
  have hcancel : (((⟨A, B⟩ : GaussianInt) ^ 12).re) * κ = g * (q : ℤ) ^ 2 := by
    have h0 : (p : ℤ) ^ 6 * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * κ - g * (q : ℤ) ^ 2) = 0 := by
      linear_combination hR12k - (((⟨A, B⟩ : GaussianInt) ^ 12).re) * hκ
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hp60
    · linarith
  have hqκ : ¬ (q : ℤ) ∣ κ := by
    intro hd
    have hk : (q : ℤ) ∣ 3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re) := hκ ▸ (hd.mul_left _)
    have h2X : (q : ℤ) ∣ 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re) := by
      have h3 : (q : ℤ) ∣ 3 * (q : ℤ) ^ 2 := ⟨3 * q, by ring⟩
      exact (Int.dvd_add_right h3).mp hk
    have h2X' : (q : ℤ) ∣ 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).re) := by
      rcases he with rfl | rfl <;> rcases hf with rfl | rfl <;>
        first
          | simpa using h2X
          | simpa using (dvd_neg.mpr h2X)
    rcases hqP.dvd_mul.mp h2X' with h2 | hX
    · have hq2 : q ∣ 2 := by exact_mod_cast h2
      have := Nat.le_of_dvd (by norm_num) hq2
      have := hq.out.two_le
      omega
    · exact hqX hX
  have hκgq2 : κ ∣ g * (q : ℤ) ^ 2 := ⟨(((⟨A, B⟩ : GaussianInt) ^ 12).re), by linear_combination -hcancel⟩
  have hκq2 : κ ∣ (q : ℤ) ^ 2 := by
    rcases hg with rfl | rfl
    · simpa using hκgq2
    · exact dvd_neg.mp (by simpa using hκgq2)
  have hε : κ = 1 ∨ κ = -1 := by
    obtain ⟨i, hi, hass⟩ := (dvd_prime_pow hqP 2).mp hκq2
    interval_cases i
    · rw [pow_zero] at hass
      exact Int.isUnit_iff.mp (associated_one_iff_isUnit.mp hass)
    · rw [pow_one] at hass
      exact absurd hass.symm.dvd hqκ
    · exact absurd ((dvd_pow_self (q : ℤ) two_ne_zero).trans hass.symm.dvd) hqκ
  have hR12v : (((⟨A, B⟩ : GaussianInt) ^ 12).re) = g * κ * (q : ℤ) ^ 2 := by
    rcases hε with rfl | rfl <;> linarith [hcancel]
  have hI12Y : (((⟨A, B⟩ : GaussianInt) ^ 12).im) = 2 * (g * κ * f) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) := by
    have h0 : (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 12).im) - 2 * (g * κ * f) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) = 0 := by
      rcases hf with rfl | rfl <;> rcases hg with rfl | rfl <;>
        rcases hε with rfl | rfl <;>
        first
          | linear_combination -h1 + 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).im) * hR12v
          | linear_combination h1 - 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).im) * hR12v
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hq20
    · linarith
  have hXv : 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re) = κ * (p : ℤ) ^ 6 - 3 * (q : ℤ) ^ 2 := by
    linarith [hκ]
  have h4Y2 : 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im) ^ 2 = (p : ℤ) ^ 12 - (q : ℤ) ^ 4 := by
    have hsq : (((⟨A, B⟩ : GaussianInt) ^ 12).im) ^ 2 = 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im) ^ 2 := by
      rw [hI12Y]
      rcases hf with rfl | rfl <;> rcases hg with rfl | rfl <;>
        rcases hε with rfl | rfl <;> ring
    have hR2 : (((⟨A, B⟩ : GaussianInt) ^ 12).re) ^ 2 = (q : ℤ) ^ 4 := by
      rw [hR12v]
      rcases hg with rfl | rfl <;> rcases hε with rfl | rfl <;> ring
    linarith [hn12, hsq, hR2]
  have h4X2 : 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 = (κ * (p : ℤ) ^ 6 - 3 * (q : ℤ) ^ 2) ^ 2 := by
    have hsq : (2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) ^ 2 = (κ * (p : ℤ) ^ 6 - 3 * (q : ℤ) ^ 2) ^ 2 := by
      rw [hXv]
    rcases he with rfl | rfl <;> rcases hf with rfl | rfl <;> linear_combination hsq
  have hmain : (κ * (p : ℤ) ^ 6 - 3 * (q : ℤ) ^ 2) ^ 2 + (p : ℤ) ^ 12 - (q : ℤ) ^ 4
      = 4 * (q : ℤ) ^ 4 := by
    linear_combination 4 * hq4c - h4X2 - h4Y2
  rcases hε with rfl | rfl
  · have hprod : ((p : ℤ) ^ 6 - (q : ℤ) ^ 2) * ((p : ℤ) ^ 6 - 2 * (q : ℤ) ^ 2) = 0 := by
      have h2E : 2 * (((p : ℤ) ^ 6 - (q : ℤ) ^ 2) * ((p : ℤ) ^ 6 - 2 * (q : ℤ) ^ 2)) = 0 := by
        linear_combination hmain
      linarith
    rcases mul_eq_zero.mp hprod with h | h
    · -- p⁶ = q²: q = p³, impossible for a prime
      have hZ : ((p : ℤ)) ^ 6 = ((q : ℤ)) ^ 2 := by linarith
      have hnat : p ^ 6 = q ^ 2 := by exact_mod_cast hZ
      have hq' : q = p ^ 3 := by
        have h22 : q ^ 2 = (p ^ 3) ^ 2 := by
          rw [show (p ^ 3) ^ 2 = p ^ 6 from by ring]; exact hnat.symm
        exact Nat.pow_left_injective (by norm_num) h22
      have hpd : p ∣ q := by rw [hq']; exact ⟨p ^ 2, by ring⟩
      rcases (Nat.Prime.eq_one_or_self_of_dvd hq.out p hpd) with h1' | h1'
      · exact absurd h1' hp.out.one_lt.ne'
      · subst h1'
        have h2q := hq.out.two_le
        nlinarith [hq']
    · -- p⁶ = 2q²: parity
      obtain ⟨w, hw⟩ := (odd_cast p hpodd).pow (n := 6)
      have : (2 : ℤ) * w + 1 = 2 * (q : ℤ) ^ 2 := by linarith
      omega
  · have hppos : (0 : ℤ) < (p : ℤ) ^ 12 :=
      pow_pos (by exact_mod_cast hp.out.pos) 12
    have h6 : (0 : ℤ) ≤ 6 * (p : ℤ) ^ 6 * (q : ℤ) ^ 2 := by positivity
    have h4 : (0 : ℤ) ≤ 4 * (q : ℤ) ^ 4 := by positivity
    nlinarith [hmain]

set_option maxHeartbeats 1600000 in
/-- The M7-row chain: 2R₁₂Y = f·q²·I₁₂ factors Y = 2t(Jw) with
I₄ = 4t, J = 3R₄² − I₄² odd, and R₁₂w = f·q². -/
lemma M7_chain
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (f : ℤ) (hf : f = 1 ∨ f = -1)
    (h1 : 2 * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) = f * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 12).im))) :
    ∃ t J w : ℤ, (((⟨A, B⟩ : GaussianInt) ^ 4).im) = 4 * t ∧ J = 3 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2
      ∧ t ≠ 0 ∧ J % 2 = 1
      ∧ (((⟨C, D⟩ : GaussianInt) ^ 4).im) = 2 * t * (J * w) ∧ (((⟨A, B⟩ : GaussianInt) ^ 12).re) * w = f * (q : ℤ) ^ 2 := by
  have ht := im4_four A B
  set t : ℤ := A * B * (A ^ 2 - B ^ 2) with htdef
  set J : ℤ := 3 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 with hJdef
  have hI0 : (((⟨A, B⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero p hpodd A B hpAB
  have ht0 : t ≠ 0 := by
    intro h0
    rw [ht, h0] at hI0
    simp at hI0
  have hJodd : J % 2 = 1 := by
    obtain ⟨r, hr⟩ := re4_odd' p hpodd A B hpAB
    rw [hJdef, ht, hr]
    have heq : 3 * (2 * r + 1) ^ 2 - (4 * t) ^ 2
        = 2 * (6 * r ^ 2 + 6 * r - 8 * t ^ 2 + 1) + 1 := by ring
    omega
  have hI12f : (((⟨A, B⟩ : GaussianInt) ^ 12).im) = 4 * t * J := by
    rw [im12_eq, hJdef, ht]
    ring
  have hcop := coprime_re12_im12 p hpodd A B hpAB
  have hcop_tJ : IsCoprime (t * J) ((((⟨A, B⟩ : GaussianInt) ^ 12).re)) := by
    have hdvd : t * J ∣ (((⟨A, B⟩ : GaussianInt) ^ 12).im) := ⟨4, by rw [hI12f]; ring⟩
    exact (hcop.symm.of_isCoprime_of_dvd_left hdvd)
  have h1' : (((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) = 2 * f * (q : ℤ) ^ 2 * (t * J) := by
    have h1'' := h1
    rw [hI12f] at h1''
    linarith
  have htJY : (t * J) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) := by
    refine hcop_tJ.dvd_of_dvd_mul_left ?_
    exact ⟨2 * f * (q : ℤ) ^ 2, by linear_combination h1'⟩
  obtain ⟨y₁, hy₁⟩ := htJY
  have hR12y : (((⟨A, B⟩ : GaussianInt) ^ 12).re) * y₁ = 2 * f * (q : ℤ) ^ 2 := by
    have h0 : (t * J) * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * y₁ - 2 * f * (q : ℤ) ^ 2) = 0 := by
      linear_combination h1' - (((⟨A, B⟩ : GaussianInt) ^ 12).re) * hy₁
    rcases mul_eq_zero.mp h0 with h | h
    · exfalso
      rcases mul_eq_zero.mp h with h' | h'
      · exact ht0 h'
      · omega
    · linarith
  have hy₁even : ∃ w, y₁ = 2 * w := by
    obtain ⟨r12, hr12⟩ := re12_odd p hpodd A B hpAB
    rcases Int.even_or_odd y₁ with ⟨w, hw⟩ | ⟨w, hw⟩
    · exact ⟨w, by omega⟩
    · exfalso
      obtain ⟨c, hc⟩ := (odd_cast q hqodd).pow (n := 2)
      have hodd : (((⟨A, B⟩ : GaussianInt) ^ 12).re) * y₁ = (2 * r12 + 1) * (2 * w + 1) := by rw [← hr12, ← hw]
      rw [hR12y, hc] at hodd
      have hexp : 2 * f * (2 * c + 1) = 4 * (r12 * w) + 2 * r12 + 2 * w + 1 := by
        linear_combination hodd
      generalize r12 * w = M at hexp
      rcases hf with rfl | rfl <;> omega
  obtain ⟨w, hw⟩ := hy₁even
  refine ⟨t, J, w, ht, rfl, ht0, hJodd, ?_, ?_⟩
  · rw [hy₁, hw]; ring
  · have h2w : 2 * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * w) = 2 * (f * (q : ℤ) ^ 2) := by
      linear_combination hR12y - (((⟨A, B⟩ : GaussianInt) ^ 12).re) * hw
    linarith

set_option maxHeartbeats 1600000 in
/-- (M7, p²·L1): the chain leaves J·(odd) = 2fg·p⁴q², even = odd. -/
lemma cross12_M7_L1
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (f g e : ℤ) (hf : f = 1 ∨ f = -1) (hg : g = 1 ∨ g = -1)
    (h1 : 2 * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) = f * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 12).im)))
    (h2 : 3 * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) + e * ((((⟨A, B⟩ : GaussianInt) ^ 12).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
      = g * ((p : ℤ) ^ 4 * (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))) : False := by
  obtain ⟨t, J, w, ht, hJ, ht0, hJodd, hY, hRw⟩ :=
    M7_chain p q hpodd hqodd A B C D hpAB hqCD f hf h1
  have hq20 : ((q : ℤ) ^ 2) ≠ 0 :=
    pow_ne_zero _ (Int.natCast_ne_zero.mpr hq.out.pos.ne')
  have hsub : (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 12).im) = 2 * f * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) := by
    rcases hf with rfl | rfl <;> linarith [h1]
  have hstep : 2 * t * (((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (J * w)) * (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) - (2 * (g * ((p : ℤ) ^ 4 * (q : ℤ) ^ 2))) * (q : ℤ) ^ 2) = 0 := by
    linear_combination (q : ℤ) ^ 2 * h2 - e * (((⟨C, D⟩ : GaussianInt) ^ 4).re) * hsub - (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) * (((⟨A, B⟩ : GaussianInt) ^ 12).re) * hY + g * (p : ℤ) ^ 4 * (q : ℤ) ^ 4 * ht
  have hinner : ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (J * w)) * (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) = (2 * (g * ((p : ℤ) ^ 4 * (q : ℤ) ^ 2))) * (q : ℤ) ^ 2 := by
    rcases mul_eq_zero.mp hstep with h | h
    · exfalso
      rcases mul_eq_zero.mp h with h' | h'
      · norm_num at h'
      · exact ht0 h'
    · linarith
  have hq2c : (q : ℤ) ^ 2 * (f * (J * (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) - (2 * (g * ((p : ℤ) ^ 4 * (q : ℤ) ^ 2)))) = 0 := by
    linear_combination hinner - J * (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) * hRw
  have hJK : f * (J * (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) = 2 * (g * ((p : ℤ) ^ 4 * (q : ℤ) ^ 2)) := by
    rcases mul_eq_zero.mp hq2c with h | h
    · exact absurd h hq20
    · linarith
  obtain ⟨c, hc⟩ := (odd_cast q hqodd).pow (n := 2)
  have hKodd : (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) % 2 = 1 := by
    rw [hc]
    have heq : 3 * (2 * c + 1) + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re)
        = 2 * (3 * c + e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re) + 1) + 1 := by ring
    generalize e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re) = M at heq ⊢
    omega
  have hOdd : Odd (J * (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) :=
    (Int.odd_iff.mpr hJodd).mul (Int.odd_iff.mpr hKodd)
  obtain ⟨m, hm⟩ := hOdd
  rw [hm] at hJK
  generalize hN : (g * ((p : ℤ) ^ 4 * (q : ℤ) ^ 2)) = N at hJK
  rcases hf with rfl | rfl <;> omega

set_option maxHeartbeats 1600000 in
/-- (M7, p²·L2): same chain, J·(odd) = 4fg·p²q²R₄, even = odd. -/
lemma cross12_M7_L2
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (f g e : ℤ) (hf : f = 1 ∨ f = -1) (hg : g = 1 ∨ g = -1)
    (h1 : 2 * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) = f * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 12).im)))
    (h2 : 3 * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) + e * ((((⟨A, B⟩ : GaussianInt) ^ 12).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
      = g * ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)))) : False := by
  obtain ⟨t, J, w, ht, hJ, ht0, hJodd, hY, hRw⟩ :=
    M7_chain p q hpodd hqodd A B C D hpAB hqCD f hf h1
  have hq20 : ((q : ℤ) ^ 2) ≠ 0 :=
    pow_ne_zero _ (Int.natCast_ne_zero.mpr hq.out.pos.ne')
  have hI8f : (((⟨A, B⟩ : GaussianInt) ^ 8).im) = 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨A, B⟩ : GaussianInt) ^ 4).im) := im8_eq A B
  have hsub : (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 12).im) = 2 * f * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) := by
    rcases hf with rfl | rfl <;> linarith [h1]
  have hstep : 2 * t * (((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (J * w)) * (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) - (2 * (2 * g * ((p : ℤ) ^ 2 * (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re)))) * (q : ℤ) ^ 2) = 0 := by
    linear_combination (q : ℤ) ^ 2 * h2 - e * (((⟨C, D⟩ : GaussianInt) ^ 4).re) * hsub - (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) * (((⟨A, B⟩ : GaussianInt) ^ 12).re) * hY + g * (p : ℤ) ^ 2 * (q : ℤ) ^ 4 * hI8f + 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) * g * (p : ℤ) ^ 2 * (q : ℤ) ^ 4 * ht
  have hinner : ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (J * w)) * (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) = (2 * (2 * g * ((p : ℤ) ^ 2 * (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re)))) * (q : ℤ) ^ 2 := by
    rcases mul_eq_zero.mp hstep with h | h
    · exfalso
      rcases mul_eq_zero.mp h with h' | h'
      · norm_num at h'
      · exact ht0 h'
    · linarith
  have hq2c : (q : ℤ) ^ 2 * (f * (J * (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) - (2 * (2 * g * ((p : ℤ) ^ 2 * (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re))))) = 0 := by
    linear_combination hinner - J * (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) * hRw
  have hJK : f * (J * (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) = 2 * (2 * g * ((p : ℤ) ^ 2 * (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re))) := by
    rcases mul_eq_zero.mp hq2c with h | h
    · exact absurd h hq20
    · linarith
  obtain ⟨c, hc⟩ := (odd_cast q hqodd).pow (n := 2)
  have hKodd : (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) % 2 = 1 := by
    rw [hc]
    have heq : 3 * (2 * c + 1) + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re)
        = 2 * (3 * c + e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re) + 1) + 1 := by ring
    generalize e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re) = M at heq ⊢
    omega
  have hOdd : Odd (J * (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) :=
    (Int.odd_iff.mpr hJodd).mul (Int.odd_iff.mpr hKodd)
  obtain ⟨m, hm⟩ := hOdd
  rw [hm] at hJK
  generalize hN : (2 * g * ((p : ℤ) ^ 2 * (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re))) = N at hJK
  rcases hf with rfl | rfl <;> omega

end GCore
