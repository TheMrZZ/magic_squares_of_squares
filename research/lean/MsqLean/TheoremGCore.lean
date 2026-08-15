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



set_option maxHeartbeats 1600000 in
/-- Shared J-classification endgame for the M7-row: J = 3RR² − II²
divides q², with the norm J²·S = q⁴ (S ≥ 4) and RR ∣ q². All three
associated powers die; the q-branch ends in q ∣ p⁴ or q = p⁴ − 4. -/
private lemma M7_J_endgame (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hpq : p ≠ q) (hq4m : q % 4 = 1)
    (RR II J S : ℤ)
    (hp4c : RR ^ 2 + II ^ 2 = (p : ℤ) ^ 4)
    (hJ : J = 3 * RR ^ 2 - II ^ 2)
    (hRRodd : Odd RR)
    (hRRq2 : RR ∣ (q : ℤ) ^ 2)
    (hJq2 : J ∣ (q : ℤ) ^ 2)
    (hS : J ^ 2 * S = (q : ℤ) ^ 4)
    (hS4 : 4 ≤ S) : False := by
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  have hqP : Prime (q : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hq.out
  have hq40 : ((q : ℤ) ^ 4) ≠ 0 :=
    pow_ne_zero _ (Int.natCast_ne_zero.mpr hq.out.pos.ne')
  obtain ⟨d, hdp⟩ := odd_cast p hpodd
  have hP8 : (p : ℤ) ^ 4 = 8 * (2 * d ^ 4 + 4 * d ^ 3 + 3 * d ^ 2 + d) + 1 := by
    rw [hdp]; ring
  obtain ⟨i, hi, hass⟩ := (dvd_prime_pow hqP 2).mp hJq2
  interval_cases i
  · rw [pow_zero] at hass
    rcases Int.isUnit_iff.mp (associated_one_iff_isUnit.mp hass) with hJ1 | hJ1
    · have h4R : 4 * RR ^ 2 = (p : ℤ) ^ 4 + 1 := by
        have h1J : (1 : ℤ) = 3 * RR ^ 2 - II ^ 2 := hJ1 ▸ hJ
        linarith [hp4c]
      rw [hP8] at h4R
      generalize RR ^ 2 = R2 at h4R
      omega
    · have h4R : 4 * RR ^ 2 = (p : ℤ) ^ 4 - 1 := by
        have h1J : (-1 : ℤ) = 3 * RR ^ 2 - II ^ 2 := hJ1 ▸ hJ
        linarith [hp4c]
      obtain ⟨r, hr⟩ := hRRodd
      rw [hP8, hr] at h4R
      have hexp : 4 * (4 * (r ^ 2) + 4 * r + 1)
          = 8 * (2 * d ^ 4 + 4 * d ^ 3 + 3 * d ^ 2 + d) := by linear_combination h4R
      generalize r ^ 2 = R2 at hexp
      generalize 2 * d ^ 4 + 4 * d ^ 3 + 3 * d ^ 2 + d = U at hexp
      omega
  · rw [pow_one] at hass
    rcases Int.associated_iff.mp hass with hJq | hJq
    · have h4R : 4 * RR ^ 2 = (p : ℤ) ^ 4 + (q : ℤ) := by
        have h1J : ((q : ℤ)) = 3 * RR ^ 2 - II ^ 2 := hJq ▸ hJ
        linarith [hp4c]
      have hqm : (q : ℤ) % 4 = 1 := by omega
      rw [hP8] at h4R
      generalize RR ^ 2 = R2 at h4R
      omega
    · have h4R : 4 * RR ^ 2 = (p : ℤ) ^ 4 - (q : ℤ) := by
        have h1J : (-(q : ℤ)) = 3 * RR ^ 2 - II ^ 2 := hJq ▸ hJ
        linarith [hp4c]
      obtain ⟨i', hi', hass2⟩ := (dvd_prime_pow hqP 2).mp hRRq2
      interval_cases i'
      · rw [pow_zero] at hass2
        have hR1 : RR = 1 ∨ RR = -1 :=
          Int.isUnit_iff.mp (associated_one_iff_isUnit.mp hass2)
        have hRRsq : RR ^ 2 = 1 := by rcases hR1 with h' | h' <;> rw [h'] <;> norm_num
        have hqval : (q : ℤ) = (p : ℤ) ^ 4 - 4 := by linarith [h4R, hRRsq]
        have hdvdq : ((p : ℤ) ^ 2 - 2) ∣ (q : ℤ) :=
          ⟨(p : ℤ) ^ 2 + 2, by linear_combination hqval⟩
        have hp2n : 2 ≤ p ^ 2 := by nlinarith [hp.out.two_le]
        have hcast : (((p ^ 2 - 2 : ℕ)) : ℤ) = (p : ℤ) ^ 2 - 2 := by
          push_cast [hp2n]
          ring
        have hdvdn : (p ^ 2 - 2) ∣ q := by
          rw [← Int.natCast_dvd_natCast, hcast]
          exact hdvdq
        have hqe : q + 4 = p ^ 4 := by
          have hc : ((q + 4 : ℕ) : ℤ) = ((p ^ 4 : ℕ) : ℤ) := by
            push_cast; linarith [hqval]
          exact_mod_cast hc
        rcases (Nat.Prime.eq_one_or_self_of_dvd hq.out _ hdvdn) with h1' | h1'
        · have h3 : p ^ 2 = 3 := by omega
          have h2p := hp.out.two_le
          nlinarith [h3, h2p]
        · have heq2 : p ^ 2 + 2 = p ^ 4 := by omega
          have hsq4 : p ^ 4 = p ^ 2 * p ^ 2 := by ring
          have h2p := hp.out.two_le
          have hp2ge4 : 4 ≤ p ^ 2 := by nlinarith [h2p]
          nlinarith [heq2, hsq4, hp2ge4]
      · rw [pow_one] at hass2
        have hqRR : (q : ℤ) ∣ RR := hass2.symm.dvd
        obtain ⟨k, hk⟩ := hqRR
        have hqp4 : (q : ℤ) ∣ (p : ℤ) ^ 4 :=
          ⟨4 * (q : ℤ) * k ^ 2 + 1, by linear_combination -h4R + 4 * (RR + (q : ℤ) * k) * hk⟩
        have hqp : (q : ℤ) ∣ (p : ℤ) := hqP.dvd_of_dvd_pow hqp4
        have hqpn : q ∣ p := by exact_mod_cast hqp
        exact hpq ((Nat.prime_dvd_prime_iff_eq hq.out hp.out).mp hqpn).symm
      · have hqRR : (q : ℤ) ∣ RR :=
          (dvd_pow_self (q : ℤ) two_ne_zero).trans hass2.symm.dvd
        obtain ⟨k, hk⟩ := hqRR
        have hqp4 : (q : ℤ) ∣ (p : ℤ) ^ 4 :=
          ⟨4 * (q : ℤ) * k ^ 2 + 1, by linear_combination -h4R + 4 * (RR + (q : ℤ) * k) * hk⟩
        have hqp : (q : ℤ) ∣ (p : ℤ) := hqP.dvd_of_dvd_pow hqp4
        have hqpn : q ∣ p := by exact_mod_cast hqp
        exact hpq ((Nat.prime_dvd_prime_iff_eq hq.out hp.out).mp hqpn).symm
  · have hJ2 : J ^ 2 = (q : ℤ) ^ 4 := by
      rcases Int.associated_iff.mp hass with h' | h' <;> rw [h'] <;> ring
    have hSone : S = 1 := by
      have h0 : (q : ℤ) ^ 4 * (S - 1) = 0 := by
        linear_combination hS - S * hJ2
      rcases mul_eq_zero.mp h0 with h | h
      · exact absurd h hq40
      · linarith
    omega

set_option maxHeartbeats 1600000 in
/-- Endgame of the (M7, p²L3/L4) υ = 1 branch: R ∣ q² with
R² < q forces R = ±1 and q = p⁴ − 4, composite. -/
private lemma M7L34_u1_end (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (RR TW : ℤ)
    (hRR1 : 1 ≤ RR ^ 2) (hTW1 : 1 ≤ TW)
    (htw : TW = RR ^ 2 * (q : ℤ) - RR ^ 4)
    (hR4q2 : RR ∣ (q : ℤ) ^ 2)
    (h4R : 4 * RR ^ 2 = (p : ℤ) ^ 4 - (q : ℤ)) : False := by
  have hqP : Prime (q : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hq.out
  have hqZpos : (0 : ℤ) < (q : ℤ) := by exact_mod_cast hq.out.pos
  have hR4lt : RR ^ 2 < (q : ℤ) := by nlinarith [htw, hTW1, hRR1]
  have hR4sq : RR ^ 2 = 1 := by
    obtain ⟨i, hi, hass2⟩ := (dvd_prime_pow hqP 2).mp hR4q2
    interval_cases i
    · rw [pow_zero] at hass2
      rcases Int.isUnit_iff.mp (associated_one_iff_isUnit.mp hass2) with h' | h' <;>
        rw [h'] <;> norm_num
    · exfalso
      rw [pow_one] at hass2
      rcases Int.associated_iff.mp hass2 with h' | h' <;>
        (rw [h'] at hR4lt; nlinarith [hqZpos, hR4lt])
    · exfalso
      have hq1 : (1 : ℤ) ≤ (q : ℤ) := by exact_mod_cast hq.out.one_lt.le
      have h3q : (q : ℤ) ≤ (q : ℤ) ^ 2 := by nlinarith [hq1]
      have h2q : (q : ℤ) ^ 2 ≤ ((q : ℤ) ^ 2) ^ 2 := by nlinarith [hq1, h3q]
      rcases Int.associated_iff.mp hass2 with h' | h' <;>
        (rw [h'] at hR4lt; nlinarith [hR4lt, h2q, h3q])
  have hqval : (q : ℤ) = (p : ℤ) ^ 4 - 4 := by linarith [h4R, hR4sq]
  have hdvdq : ((p : ℤ) ^ 2 - 2) ∣ (q : ℤ) :=
    ⟨(p : ℤ) ^ 2 + 2, by linear_combination hqval⟩
  have hp2n : 2 ≤ p ^ 2 := by nlinarith [hp.out.two_le]
  have hcast : (((p ^ 2 - 2 : ℕ)) : ℤ) = (p : ℤ) ^ 2 - 2 := by
    push_cast [hp2n]
    ring
  have hdvdn : (p ^ 2 - 2) ∣ q := by
    rw [← Int.natCast_dvd_natCast, hcast]
    exact hdvdq
  have hqe : q + 4 = p ^ 4 := by
    have hc : ((q + 4 : ℕ) : ℤ) = ((p ^ 4 : ℕ) : ℤ) := by push_cast; linarith [hqval]
    exact_mod_cast hc
  rcases (Nat.Prime.eq_one_or_self_of_dvd hq.out _ hdvdn) with h1' | h1'
  · have h3 : p ^ 2 = 3 := by omega
    have h2p := hp.out.two_le
    nlinarith [h3, h2p]
  · have heq2 : p ^ 2 + 2 = p ^ 4 := by omega
    have hsq4 : p ^ 4 = p ^ 2 * p ^ 2 := by ring
    have h2p := hp.out.two_le
    have hp2ge4 : 4 ≤ p ^ 2 := by nlinarith [h2p]
    nlinarith [heq2, hsq4, hp2ge4]

set_option maxHeartbeats 3200000 in
/-- (M7, p²·L3/L4) (σ = ±1): the deepest G-row cell. J ∣ X, then
J ∣ q² with three associated-power kills — the q-branch ends in
q = p⁴ − 4, composite. Needs q ≡ 1 (mod 4). -/
lemma cross12_M7_L34
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q) (hq4m : q % 4 = 1)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (f g e σ : ℤ) (hf : f = 1 ∨ f = -1) (hg : g = 1 ∨ g = -1)
    (he : e = 1 ∨ e = -1) (hσ : σ = 1 ∨ σ = -1)
    (h1 : 2 * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) = f * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 12).im)))
    (h2 : 3 * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) + e * ((((⟨A, B⟩ : GaussianInt) ^ 12).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
      = g * ((p : ℤ) ^ 4 * (σ * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)))) : False := by
  obtain ⟨t, J, w, ht, hJ, ht0, hJodd, hY, hRw⟩ :=
    M7_chain p q hpodd hqodd A B C D hpAB hqCD f hf h1
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  have hqP : Prime (q : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hq.out
  have hq20 : ((q : ℤ) ^ 2) ≠ 0 :=
    pow_ne_zero _ (Int.natCast_ne_zero.mpr hq.out.pos.ne')
  have hp4c : (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 = (p : ℤ) ^ 4 := norm4_coord p A B hpAB
  have hq4c : (((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 + (((⟨C, D⟩ : GaussianInt) ^ 4).im) ^ 2 = (q : ℤ) ^ 4 := norm4_coord q C D hqCD
  obtain ⟨hpR4, hpI4⟩ := p_not_dvd_re4_im4 p hpodd A B hpAB
  have hR4odd : Odd (((⟨A, B⟩ : GaussianInt) ^ 4).re) := re4_odd' p hpodd A B hpAB
  have hw0 : w ≠ 0 := by
    rintro rfl
    have h00 : (0 : ℤ) = f * (q : ℤ) ^ 2 := by linear_combination hRw
    rcases hf with rfl | rfl
    · exact hq20 (by linarith)
    · exact hq20 (by linarith)
  have hsub : (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 12).im) = 2 * f * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) := by
    rcases hf with rfl | rfl <;> linarith [h1]
  have hstep : 2 * t * (((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (J * w)) * (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
      - g * (p : ℤ) ^ 4 * (q : ℤ) ^ 2 * (σ * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (J * w)) + 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) = 0 := by
    linear_combination (q : ℤ) ^ 2 * h2 - e * (((⟨C, D⟩ : GaussianInt) ^ 4).re) * hsub - (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) * (((⟨A, B⟩ : GaussianInt) ^ 12).re) * hY
      + g * (p : ℤ) ^ 4 * (q : ℤ) ^ 2 * σ * (((⟨A, B⟩ : GaussianInt) ^ 4).re) * hY
      + g * (p : ℤ) ^ 4 * (q : ℤ) ^ 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).re) * ht
  have hinner : ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (J * w)) * (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
      = g * (p : ℤ) ^ 4 * (q : ℤ) ^ 2 * (σ * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (J * w)) + 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) := by
    rcases mul_eq_zero.mp hstep with h | h
    · exfalso
      rcases mul_eq_zero.mp h with h' | h'
      · norm_num at h'
      · exact ht0 h'
    · linarith
  have hkey : f * (J * (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re)))
      = g * (p : ℤ) ^ 4 * (σ * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (J * w)) + 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) := by
    have h0 : (q : ℤ) ^ 2 * (f * (J * (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re)))
        - g * (p : ℤ) ^ 4 * (σ * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (J * w)) + 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) = 0 := by
      linear_combination hinner - J * (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) * hRw
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hq20
    · linarith
  have hKodd : (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) % 2 = 1 := by
    obtain ⟨c, hc⟩ := (odd_cast q hqodd).pow (n := 2)
    rw [hc]
    have heq : 3 * (2 * c + 1) + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re)
        = 2 * (3 * c + e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re) + 1) + 1 := by ring
    generalize e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re) = M at heq ⊢
    omega
  rcases Int.even_or_odd w with ⟨w', hw'⟩ | hwodd
  · -- w even: parity kill
    have hOdd : Odd (J * (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) :=
      (Int.odd_iff.mpr hJodd).mul (Int.odd_iff.mpr hKodd)
    obtain ⟨m, hm⟩ := hOdd
    have hkey2 : f * (2 * m + 1)
        = 2 * (g * ((p : ℤ) ^ 4 * (σ * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (J * w')) + (((⟨C, D⟩ : GaussianInt) ^ 4).re)))) := by
      rw [← hm]
      linear_combination hkey + g * (p : ℤ) ^ 4 * σ * (((⟨A, B⟩ : GaussianInt) ^ 4).re) * J * hw'
    generalize g * ((p : ℤ) ^ 4 * (σ * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (J * w')) + (((⟨C, D⟩ : GaussianInt) ^ 4).re))) = N at hkey2
    rcases hf with rfl | rfl <;> omega
  · -- w odd: J divides X
    have hpJ : ¬ (p : ℤ) ∣ J := by
      intro hd
      have h4R : (p : ℤ) ∣ 4 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 := by
        have heq4 : (4 : ℤ) * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 = J + ((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) := by rw [hJ]; ring
        rw [heq4, hp4c]
        exact dvd_add hd ⟨(p : ℤ) ^ 3, by ring⟩
      rcases hpP.dvd_mul.mp h4R with h' | h'
      · have h2 : (p : ℤ) ∣ 2 ^ 2 := by simpa using h'
        have hpp : (p : ℤ) ∣ 2 := hpP.dvd_of_dvd_pow h2
        have := Int.le_of_dvd (by norm_num) hpp
        have h2' := hp.out.two_le
        have : (2 : ℤ) ≤ (p : ℤ) := by exact_mod_cast h2'
        omega
      · exact hpR4 (hpP.dvd_of_dvd_pow h')
    have hJ0 : J ≠ 0 := by
      intro h0
      rw [h0] at hJodd
      omega
    have hJX : J ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).re) := by
      have hd1 : J ∣ 2 * (g * ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) :=
        ⟨f * (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) - g * (p : ℤ) ^ 4 * σ * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * w), by linear_combination -hkey⟩
      have hcJ2 : IsCoprime J (2 : ℤ) := by
        have hP2 : Prime (2 : ℤ) := Int.prime_two
        exact ((hP2.coprime_iff_not_dvd).mpr (by
          intro hdd
          obtain ⟨k, hk⟩ := hdd
          omega)).symm
      have hd2 : J ∣ g * ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) := by
        exact hcJ2.dvd_of_dvd_mul_left hd1
      have hd3 : J ∣ (p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).re) := by
        rcases hg with rfl | rfl
        · simpa using hd2
        · exact dvd_neg.mp (by simpa using hd2)
      have hcJp : IsCoprime J ((p : ℤ) ^ 4) :=
        (((hpP.coprime_iff_not_dvd).mpr hpJ).symm).pow_right
      exact hcJp.dvd_of_dvd_mul_left hd3
    obtain ⟨x', hx'⟩ := hJX
    have hkeyJ : 3 * f * (q : ℤ) ^ 2 + 2 * e * (J * x')
        = g * (p : ℤ) ^ 4 * (σ * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * w) + 2 * x') := by
      have h0 : J * ((3 * f * (q : ℤ) ^ 2 + 2 * e * (J * x'))
          - g * (p : ℤ) ^ 4 * (σ * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * w) + 2 * x')) = 0 := by
        rcases hf with rfl | rfl <;>
          linear_combination hkey - (2 * e * J - 2 * g * (p : ℤ) ^ 4) * hx'
      rcases mul_eq_zero.mp h0 with h | h
      · exact absurd h hJ0
      · linarith
    have hnormJ : J ^ 2 * (x' ^ 2 + 4 * (t ^ 2 * w ^ 2)) = (q : ℤ) ^ 4 := by
      linear_combination hq4c - ((((⟨C, D⟩ : GaussianInt) ^ 4).im) + 2 * t * (J * w)) * hY
        - ((((⟨C, D⟩ : GaussianInt) ^ 4).re) + J * x') * hx'
    have hJq2 : J ∣ (q : ℤ) ^ 2 := by
      have hsq : J ^ 2 ∣ ((q : ℤ) ^ 2) ^ 2 :=
        ⟨x' ^ 2 + 4 * (t ^ 2 * w ^ 2), by linear_combination -hnormJ⟩
      exact (Int.pow_dvd_pow_iff two_ne_zero).mp hsq
    have ht2 : 1 ≤ t ^ 2 := by rcases lt_or_gt_of_ne ht0 with h | h <;> nlinarith
    have hw2 : 1 ≤ w ^ 2 := by rcases lt_or_gt_of_ne hw0 with h | h <;> nlinarith
    have htw1 : 1 ≤ t ^ 2 * w ^ 2 := by nlinarith [ht2, hw2]
    obtain ⟨d, hdp⟩ := odd_cast p hpodd
    have hP8 : (p : ℤ) ^ 4 = 8 * (2 * d ^ 4 + 4 * d ^ 3 + 3 * d ^ 2 + d) + 1 := by
      rw [hdp]; ring
    obtain ⟨i, hi, hass⟩ := (dvd_prime_pow hqP 2).mp hJq2
    interval_cases i
    · -- J = ±1
      rw [pow_zero] at hass
      rcases Int.isUnit_iff.mp (associated_one_iff_isUnit.mp hass) with hJ1 | hJ1
      · have h4R : 4 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 = (p : ℤ) ^ 4 + 1 := by
          have h1J : (1 : ℤ) = 3 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 := hJ1 ▸ hJ
          linarith [hp4c]
        rw [hP8] at h4R
        generalize (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 = R2 at h4R
        omega
      · have h4R : 4 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 = (p : ℤ) ^ 4 - 1 := by
          have h1J : (-1 : ℤ) = 3 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 := hJ1 ▸ hJ
          linarith [hp4c]
        obtain ⟨r, hr⟩ := hR4odd
        rw [hP8, hr] at h4R
        have hexp : 4 * (4 * r ^ 2 + 4 * r + 1)
            = 8 * (2 * d ^ 4 + 4 * d ^ 3 + 3 * d ^ 2 + d) := by linarith [h4R]
        generalize r ^ 2 = R2 at hexp
        generalize 2 * d ^ 4 + 4 * d ^ 3 + 3 * d ^ 2 + d = U at hexp
        omega
    · -- J = ±q
      rw [pow_one] at hass
      rcases Int.associated_iff.mp hass with hJq | hJq
      · -- J = q: mod 4
        have h4R : 4 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 = (p : ℤ) ^ 4 + (q : ℤ) := by
          have h1J : ((q : ℤ)) = 3 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 := hJq ▸ hJ
          linarith [hp4c]
        have hqm : (q : ℤ) % 4 = 1 := by omega
        rw [hP8] at h4R
        generalize (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 = R2 at h4R
        omega
      · -- J = −q: the main branch
        have h4R : 4 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 = (p : ℤ) ^ 4 - (q : ℤ) := by
          have h1J : (-(q : ℤ)) = 3 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 := hJq ▸ hJ
          linarith [hp4c]
        have hinner2 : x' ^ 2 + 4 * (t ^ 2 * w ^ 2) = (q : ℤ) ^ 2 := by
          have hJ2 : J ^ 2 = (q : ℤ) ^ 2 := by rw [hJq]; ring
          have h0 : (q : ℤ) ^ 2 * ((x' ^ 2 + 4 * (t ^ 2 * w ^ 2)) - (q : ℤ) ^ 2) = 0 := by
            linear_combination hnormJ - (x' ^ 2 + 4 * (t ^ 2 * w ^ 2)) * hJ2
          rcases mul_eq_zero.mp h0 with h | h
          · exact absurd h hq20
          · linarith
        have hqfac : (q : ℤ) * (3 * f * (q : ℤ) - 2 * e * x')
            = g * (p : ℤ) ^ 4 * (σ * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * w) + 2 * x') := by
          linear_combination hkeyJ - 2 * e * x' * hJq
        set RR : ℤ := (((⟨A, B⟩ : GaussianInt) ^ 4).re) with hRRdef
        set II : ℤ := (((⟨A, B⟩ : GaussianInt) ^ 4).im) with hIIdef
        obtain ⟨δ, hδ⟩ : (p : ℤ) ^ 4 ∣ (3 * f * (q : ℤ) - 2 * e * x') := by
          have hcpq4 : IsCoprime ((p : ℤ) ^ 4) ((q : ℤ)) :=
            ((hpP.coprime_iff_not_dvd).mpr (fun hd => hpq
              ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp (by exact_mod_cast hd)))).pow_left
          refine hcpq4.dvd_of_dvd_mul_right ?_
          exact ⟨g * (σ * (RR * w) + 2 * x'), by linear_combination hqfac⟩
        have hp40 : ((p : ℤ) ^ 4) ≠ 0 :=
          pow_ne_zero _ (Int.natCast_ne_zero.mpr hp.out.pos.ne')
        have hδodd : Odd δ := by
          have hlhs : Odd (3 * f * (q : ℤ) - 2 * e * x') := by
            obtain ⟨cq, hcq⟩ := odd_cast q hqodd
            rcases hf with rfl | rfl
            · exact ⟨3 * cq - e * x' + 1, by rw [hcq]; ring⟩
            · exact ⟨-3 * cq - e * x' - 2, by rw [hcq]; ring⟩
          rw [hδ] at hlhs
          exact (Int.odd_mul.mp hlhs).2
        have h2ex : 2 * e * x' = 3 * f * (q : ℤ) - (p : ℤ) ^ 4 * δ := by linarith [hδ]
        have h4x2 : 4 * x' ^ 2 = (3 * f * (q : ℤ) - (p : ℤ) ^ 4 * δ) ^ 2 := by
          have hsq : (2 * e * x') ^ 2 = (3 * f * (q : ℤ) - (p : ℤ) ^ 4 * δ) ^ 2 := by
            rw [h2ex]
          rcases he with rfl | rfl <;> linear_combination hsq
        have hEeq : (3 * (q : ℤ) - (p : ℤ) ^ 4 * (f * δ)) ^ 2 + 16 * (t ^ 2 * w ^ 2)
            = 4 * (q : ℤ) ^ 2 := by
          have hυsq : (3 * f * (q : ℤ) - (p : ℤ) ^ 4 * δ) ^ 2
              = (3 * (q : ℤ) - (p : ℤ) ^ 4 * (f * δ)) ^ 2 := by
            rcases hf with rfl | rfl <;> ring
          linear_combination 4 * hinner2 - h4x2 - hυsq
        have hυodd : (f * δ) % 2 = 1 := by
          rcases hf with rfl | rfl
          · exact Int.odd_iff.mp (by simpa using hδodd)
          · exact Int.odd_iff.mp (by simpa using hδodd.neg)
        have hqZpos : (0 : ℤ) < (q : ℤ) := by exact_mod_cast hq.out.pos
        have hsqle : (3 * (q : ℤ) - (p : ℤ) ^ 4 * (f * δ)) ^ 2 ≤ 4 * (q : ℤ) ^ 2 - 16 := by
          linarith [hEeq, htw1]
        have hb2 : (p : ℤ) ^ 4 * (f * δ) ≤ 5 * (q : ℤ) := by
          nlinarith [hsqle, hqZpos, sq_nonneg (3 * (q : ℤ) - (p : ℤ) ^ 4 * (f * δ) + 2 * (q : ℤ))]
        have hb1 : (q : ℤ) ≤ (p : ℤ) ^ 4 * (f * δ) := by
          nlinarith [hsqle, hqZpos, sq_nonneg (3 * (q : ℤ) - (p : ℤ) ^ 4 * (f * δ) - 2 * (q : ℤ))]
        have hR4sq1 : 1 ≤ RR ^ 2 := by
          obtain ⟨r, hr⟩ := hR4odd
          by_cases h' : 0 ≤ r <;> nlinarith [sq_nonneg r, hr]
        have hp4q : (q : ℤ) + 4 ≤ (p : ℤ) ^ 4 := by linarith [h4R, hR4sq1]
        have hp4pos : (0 : ℤ) < (p : ℤ) ^ 4 :=
          pow_pos (by exact_mod_cast hp.out.pos) 4
        have hυpos : 1 ≤ f * δ := by nlinarith [hb1, hqZpos, hp4pos]
        have hυlt : f * δ < 5 := by nlinarith [hb2, hp4q, hqZpos, hp4pos]
        have hυcases : f * δ = 1 ∨ f * δ = 3 := by omega
        rcases hυcases with hυ1 | hυ3
        · rw [hυ1] at hEeq
          have h16tw : 16 * (t ^ 2 * w ^ 2)
              = 16 * (RR ^ 2 * (q : ℤ)) - 16 * RR ^ 4 := by
            linear_combination hEeq - (5 * (q : ℤ) - (p : ℤ) ^ 4 - 4 * RR ^ 2) * h4R
          have htw : t ^ 2 * w ^ 2 = RR ^ 2 * (q : ℤ) - RR ^ 4 := by linarith
          have hR12fac : (((⟨A, B⟩ : GaussianInt) ^ 12).re) = RR * (RR ^ 2 - 3 * II ^ 2) := by
            rw [re12_eq]; ring
          have hR4q2 : RR ∣ (q : ℤ) ^ 2 := by
            have hd : RR ∣ f * (q : ℤ) ^ 2 := by
              rw [← hRw, hR12fac]
              exact ⟨(RR ^ 2 - 3 * II ^ 2) * w, by ring⟩
            rcases hf with rfl | rfl
            · simpa using hd
            · exact dvd_neg.mp (by simpa using hd)
          exact M7L34_u1_end p q RR (t ^ 2 * w ^ 2) hR4sq1 htw1 htw hR4q2 h4R
        · rw [hυ3] at hEeq
          have hE3 : 144 * RR ^ 4 + 16 * (t ^ 2 * w ^ 2) = 4 * (q : ℤ) ^ 2 := by
            linear_combination hEeq - 9 * ((q : ℤ) - (p : ℤ) ^ 4 - 4 * RR ^ 2) * h4R
          obtain ⟨cq2, hcq2⟩ := (odd_cast q hqodd).pow (n := 2)
          rw [hcq2] at hE3
          generalize RR ^ 4 = A at hE3
          generalize t ^ 2 * w ^ 2 = B at hE3
          omega
    · -- J = ±q²
      rcases Int.associated_iff.mp hass with hJq | hJq <;>
        (first
          | (have hJ2 : J ^ 2 = (q : ℤ) ^ 4 := by rw [hJq]; ring
             have hone : x' ^ 2 + 4 * (t ^ 2 * w ^ 2) = 1 := by
               have hq40 : ((q : ℤ) ^ 4) ≠ 0 :=
                 pow_ne_zero _ (Int.natCast_ne_zero.mpr hq.out.pos.ne')
               have h0 : (q : ℤ) ^ 4 * ((x' ^ 2 + 4 * (t ^ 2 * w ^ 2)) - 1) = 0 := by
                 linear_combination hnormJ - (x' ^ 2 + 4 * (t ^ 2 * w ^ 2)) * hJ2
               rcases mul_eq_zero.mp h0 with h | h
               · exact absurd h hq40
               · linarith
             nlinarith [htw1, hone, sq_nonneg x']))

set_option maxHeartbeats 3200000 in
/-- (M7, p²·L5/L6) (σ = ±1): the 12–8 mixed cells. The chain forces
J ∣ X, and the shared J-endgame closes every classification. -/
lemma cross12_M7_L56
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q) (hq4m : q % 4 = 1)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (f g e σ : ℤ) (hf : f = 1 ∨ f = -1) (hg : g = 1 ∨ g = -1)
    (he : e = 1 ∨ e = -1) (hσ : σ = 1 ∨ σ = -1)
    (h1 : 2 * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) = f * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 12).im)))
    (h2 : 3 * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) + e * ((((⟨A, B⟩ : GaussianInt) ^ 12).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
      = g * ((p : ℤ) ^ 2 * (σ * ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)))) : False := by
  obtain ⟨t, J, w, ht, hJ, ht0, hJodd, hY, hRw⟩ :=
    M7_chain p q hpodd hqodd A B C D hpAB hqCD f hf h1
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  have hq20 : ((q : ℤ) ^ 2) ≠ 0 :=
    pow_ne_zero _ (Int.natCast_ne_zero.mpr hq.out.pos.ne')
  have hp4c : (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 = (p : ℤ) ^ 4 := norm4_coord p A B hpAB
  have hq4c : (((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 + (((⟨C, D⟩ : GaussianInt) ^ 4).im) ^ 2 = (q : ℤ) ^ 4 := norm4_coord q C D hqCD
  obtain ⟨hpR4, hpI4⟩ := p_not_dvd_re4_im4 p hpodd A B hpAB
  have hR4odd : Odd (((⟨A, B⟩ : GaussianInt) ^ 4).re) := re4_odd' p hpodd A B hpAB
  have hR8f : (((⟨A, B⟩ : GaussianInt) ^ 8).re) = (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 := re8_eq A B
  have hI8f : (((⟨A, B⟩ : GaussianInt) ^ 8).im) = 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨A, B⟩ : GaussianInt) ^ 4).im) := im8_eq A B
  have hw0 : w ≠ 0 := by
    rintro rfl
    have h00 : (0 : ℤ) = f * (q : ℤ) ^ 2 := by linear_combination hRw
    rcases hf with rfl | rfl
    · exact hq20 (by linarith)
    · exact hq20 (by linarith)
  have hsub : (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 12).im) = 2 * f * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) := by
    rcases hf with rfl | rfl <;> linarith [h1]
  have hstep : 2 * t * (((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (J * w)) * (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
      - g * (p : ℤ) ^ 2 * (q : ℤ) ^ 2 * (σ * (((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) * (J * w))
        + 4 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)))) = 0 := by
    linear_combination (q : ℤ) ^ 2 * h2 - e * (((⟨C, D⟩ : GaussianInt) ^ 4).re) * hsub - (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) * (((⟨A, B⟩ : GaussianInt) ^ 12).re) * hY
      + g * (p : ℤ) ^ 2 * (q : ℤ) ^ 2 * σ * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) * hY
      + g * (p : ℤ) ^ 2 * (q : ℤ) ^ 2 * σ * (((⟨C, D⟩ : GaussianInt) ^ 4).im) * hR8f
      + g * (p : ℤ) ^ 2 * (q : ℤ) ^ 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).re) * hI8f
      + 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) * g * (p : ℤ) ^ 2 * (q : ℤ) ^ 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).re) * ht
  have hinner : ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (J * w)) * (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
      = g * (p : ℤ) ^ 2 * (q : ℤ) ^ 2 * (σ * (((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) * (J * w))
        + 4 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) := by
    rcases mul_eq_zero.mp hstep with h | h
    · exfalso
      rcases mul_eq_zero.mp h with h' | h'
      · norm_num at h'
      · exact ht0 h'
    · linarith
  have hkey : f * (J * (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re)))
      = g * (p : ℤ) ^ 2 * (σ * (((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) * (J * w))
        + 4 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) := by
    have h0 : (q : ℤ) ^ 2 * (f * (J * (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re)))
        - g * (p : ℤ) ^ 2 * (σ * (((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) * (J * w))
          + 4 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)))) = 0 := by
      linear_combination hinner - J * (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) * hRw
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hq20
    · linarith
  have hKodd : (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) % 2 = 1 := by
    obtain ⟨c, hc⟩ := (odd_cast q hqodd).pow (n := 2)
    rw [hc]
    have heq : 3 * (2 * c + 1) + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re)
        = 2 * (3 * c + e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re) + 1) + 1 := by ring
    generalize e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re) = M at heq ⊢
    omega
  rcases Int.even_or_odd w with ⟨w', hw'⟩ | hwodd
  · have hOdd : Odd (J * (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) :=
      (Int.odd_iff.mpr hJodd).mul (Int.odd_iff.mpr hKodd)
    obtain ⟨m, hm⟩ := hOdd
    have hkey2 : f * (2 * m + 1)
        = 2 * (g * ((p : ℤ) ^ 2 * (σ * (((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) * (J * w'))
          + 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))))) := by
      rw [← hm]
      linear_combination hkey + g * (p : ℤ) ^ 2 * σ * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) * J * hw'
    generalize g * ((p : ℤ) ^ 2 * (σ * (((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) * (J * w'))
      + 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)))) = N at hkey2
    rcases hf with rfl | rfl <;> omega
  · have hpJ : ¬ (p : ℤ) ∣ J := by
      intro hd
      have h4R : (p : ℤ) ∣ 4 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 := by
        have heq4 : (4 : ℤ) * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 = J + ((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) := by rw [hJ]; ring
        rw [heq4, hp4c]
        exact dvd_add hd ⟨(p : ℤ) ^ 3, by ring⟩
      rcases hpP.dvd_mul.mp h4R with h' | h'
      · have h2 : (p : ℤ) ∣ 2 ^ 2 := by simpa using h'
        have hpp : (p : ℤ) ∣ 2 := hpP.dvd_of_dvd_pow h2
        have := Int.le_of_dvd (by norm_num) hpp
        have h2' := hp.out.two_le
        have : (2 : ℤ) ≤ (p : ℤ) := by exact_mod_cast h2'
        omega
      · exact hpR4 (hpP.dvd_of_dvd_pow h')
    have hJ0 : J ≠ 0 := by
      intro h0
      rw [h0] at hJodd
      omega
    have hJX : J ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).re) := by
      have hd1 : J ∣ 4 * (g * ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)))) :=
        ⟨f * (3 * (q : ℤ) ^ 2 + 2 * e * f * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) - g * (p : ℤ) ^ 2 * σ * (((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) * w),
          by linear_combination -hkey⟩
      have hc2' : IsCoprime J (2 : ℤ) := by
        have hP2 : Prime (2 : ℤ) := Int.prime_two
        exact ((hP2.coprime_iff_not_dvd).mpr (by
          intro hdd
          obtain ⟨k, hk⟩ := hdd
          omega)).symm
      have hcJ4 : IsCoprime J (4 : ℤ) := by
        have h44 : (4 : ℤ) = 2 * 2 := by norm_num
        rw [h44]
        exact hc2'.mul_right hc2'
      have hd2 : J ∣ g * ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) :=
        hcJ4.dvd_of_dvd_mul_left hd1
      have hd3 : J ∣ (p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) := by
        rcases hg with rfl | rfl
        · simpa using hd2
        · exact dvd_neg.mp (by simpa using hd2)
      have hcJp : IsCoprime J ((p : ℤ) ^ 2) :=
        (((hpP.coprime_iff_not_dvd).mpr hpJ).symm).pow_right
      have hd4 : J ∣ (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) :=
        hcJp.dvd_of_dvd_mul_left hd3
      have hcJR : IsCoprime J ((((⟨A, B⟩ : GaussianInt) ^ 4).re)) := by
        rw [Int.isCoprime_iff_gcd_eq_one]
        by_contra hgc
        obtain ⟨r, hrprime, hrdvd⟩ := Nat.exists_prime_and_dvd hgc
        have hrJ : (r : ℤ) ∣ J :=
          (Int.natCast_dvd_natCast.mpr hrdvd).trans (Int.gcd_dvd_left _ _)
        have hrR : (r : ℤ) ∣ (((⟨A, B⟩ : GaussianInt) ^ 4).re) :=
          (Int.natCast_dvd_natCast.mpr hrdvd).trans (Int.gcd_dvd_right _ _)
        have hrP : Prime (r : ℤ) := by
          rw [Int.prime_iff_natAbs_prime]; simpa using hrprime
        obtain ⟨k, hk⟩ := hrR
        obtain ⟨j, hj⟩ := hrJ
        have hrI2 : (r : ℤ) ∣ (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 := by
          have hI2eq : (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 = 3 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - J := by rw [hJ]; ring
          rw [hI2eq, hk, hj]
          exact ⟨3 * (r * k ^ 2) - j, by ring⟩
        have hrI : (r : ℤ) ∣ (((⟨A, B⟩ : GaussianInt) ^ 4).im) := hrP.dvd_of_dvd_pow hrI2
        exact hrP.not_unit ((coprime_re4_im4 p hpodd A B hpAB).isUnit_of_dvd' ⟨k, hk⟩ hrI)
      exact hcJR.dvd_of_dvd_mul_left hd4
    obtain ⟨x', hx'⟩ := hJX
    have hnormJ : J ^ 2 * (x' ^ 2 + 4 * (t ^ 2 * w ^ 2)) = (q : ℤ) ^ 4 := by
      linear_combination hq4c - ((((⟨C, D⟩ : GaussianInt) ^ 4).im) + 2 * t * (J * w)) * hY
        - ((((⟨C, D⟩ : GaussianInt) ^ 4).re) + J * x') * hx'
    have hJq2 : J ∣ (q : ℤ) ^ 2 := by
      have hsq : J ^ 2 ∣ ((q : ℤ) ^ 2) ^ 2 :=
        ⟨x' ^ 2 + 4 * (t ^ 2 * w ^ 2), by linear_combination -hnormJ⟩
      exact (Int.pow_dvd_pow_iff two_ne_zero).mp hsq
    have ht2 : 1 ≤ t ^ 2 := by rcases lt_or_gt_of_ne ht0 with h | h <;> nlinarith
    have hw2 : 1 ≤ w ^ 2 := by rcases lt_or_gt_of_ne hw0 with h | h <;> nlinarith
    have htw1 : 1 ≤ t ^ 2 * w ^ 2 := by nlinarith [ht2, hw2]
    have hS4 : 4 ≤ x' ^ 2 + 4 * (t ^ 2 * w ^ 2) := by nlinarith [htw1, sq_nonneg x']
    have hR12fac : (((⟨A, B⟩ : GaussianInt) ^ 12).re) = (((⟨A, B⟩ : GaussianInt) ^ 4).re) * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - 3 * (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) := by
      rw [re12_eq]; ring
    have hRRq2 : (((⟨A, B⟩ : GaussianInt) ^ 4).re) ∣ (q : ℤ) ^ 2 := by
      have hd : (((⟨A, B⟩ : GaussianInt) ^ 4).re) ∣ f * (q : ℤ) ^ 2 := by
        rw [← hRw, hR12fac]
        exact ⟨((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - 3 * (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) * w, by ring⟩
      rcases hf with rfl | rfl
      · simpa using hd
      · exact dvd_neg.mp (by simpa using hd)
    exact M7_J_endgame p q hpodd hpq hq4m (((⟨A, B⟩ : GaussianInt) ^ 4).re) (((⟨A, B⟩ : GaussianInt) ^ 4).im) J
      (x' ^ 2 + 4 * (t ^ 2 * w ^ 2)) hp4c hJ hR4odd hRRq2 hJq2 hnormJ hS4

set_option maxHeartbeats 1600000 in
/-- T-form (p²-row, M7) cells, generic in the p²-cofactor: the second
equation and the norm give v·(9R₁₂² + I₁₂²) = 18g·q²·R₁₂, and
p² ∣ Y from the first equation forces p² ∣ 18g·q². Covers all seven
p²-divisible rows at once. -/
lemma cross12_row_M7
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Mb f g e : ℤ) (hg : g = 1 ∨ g = -1) (he : e = 1 ∨ e = -1)
    (h1 : 2 * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) = f * ((p : ℤ) ^ 2 * Mb))
    (h2 : 3 * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) + e * ((((⟨A, B⟩ : GaussianInt) ^ 12).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
      = g * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 12).im))) : False := by
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  obtain ⟨hpR12, hpI12⟩ := p_not_dvd_re12_im12 p hpodd A B hpAB
  have hI120 : (((⟨A, B⟩ : GaussianInt) ^ 12).im) ≠ 0 := im12_ne_zero p hpodd A B hpAB
  have hR120 : (((⟨A, B⟩ : GaussianInt) ^ 12).re) ≠ 0 := fun h0 => hpR12 (h0 ▸ dvd_zero _)
  have hY0 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero q hqodd C D hqCD
  have hq4c : (((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 + (((⟨C, D⟩ : GaussianInt) ^ 4).im) ^ 2 = (q : ℤ) ^ 4 := norm4_coord q C D hqCD
  have hcop := coprime_re12_im12 p hpodd A B hpAB
  have hc2 : IsCoprime ((p : ℤ)) 2 :=
    (hpP.coprime_iff_not_dvd).mpr (fun hd' => by
      have h2' : p ∣ 2 := by exact_mod_cast hd'
      have := Nat.le_of_dvd (by norm_num) h2'
      have := hp.out.two_le
      omega)
  have hI3Y : (((⟨A, B⟩ : GaussianInt) ^ 12).im) ∣ 3 * (((⟨C, D⟩ : GaussianInt) ^ 4).im) := by
    refine (hcop.symm).dvd_of_dvd_mul_right ?_
    exact ⟨g * (q : ℤ) ^ 2 - e * (((⟨C, D⟩ : GaussianInt) ^ 4).re), by linear_combination h2⟩
  obtain ⟨v, hv⟩ := hI3Y
  have hvX : (((⟨A, B⟩ : GaussianInt) ^ 12).re) * v + e * (((⟨C, D⟩ : GaussianInt) ^ 4).re) = g * (q : ℤ) ^ 2 := by
    have h0 : (((⟨A, B⟩ : GaussianInt) ^ 12).im) * (((((⟨A, B⟩ : GaussianInt) ^ 12).re) * v + e * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) - g * (q : ℤ) ^ 2) = 0 := by
      linear_combination h2 - (((⟨A, B⟩ : GaussianInt) ^ 12).re) * hv
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hI120
    · linarith
  have hv0 : v ≠ 0 := by
    rintro rfl
    simp at hv
    exact hY0 (by linarith [hv])
  have hX2 : 9 * (((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 = 9 * (g * (q : ℤ) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 12).re) * v) ^ 2 := by
    have hex : e * (((⟨C, D⟩ : GaussianInt) ^ 4).re) = g * (q : ℤ) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 12).re) * v := by linarith [hvX]
    have hsq : (e * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) ^ 2 = (g * (q : ℤ) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 12).re) * v) ^ 2 := by rw [hex]
    rcases he with rfl | rfl <;> linear_combination 9 * hsq
  have hY2 : (3 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) ^ 2 = (((⟨A, B⟩ : GaussianInt) ^ 12).im) ^ 2 * v ^ 2 := by
    rw [hv]; ring
  have hnorm : v * (v * (9 * (((⟨A, B⟩ : GaussianInt) ^ 12).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ 12).im) ^ 2) - 18 * g * (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 12).re)) = 0 := by
    rcases hg with rfl | rfl <;> linear_combination 9 * hq4c - hX2 - hY2
  have hkey : v * (9 * (((⟨A, B⟩ : GaussianInt) ^ 12).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ 12).im) ^ 2) = 18 * g * (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 12).re) := by
    rcases mul_eq_zero.mp hnorm with h | h
    · exact absurd h hv0
    · linarith
  have hR12v : (((⟨A, B⟩ : GaussianInt) ^ 12).re) ∣ v := by
    have hd : (((⟨A, B⟩ : GaussianInt) ^ 12).re) ∣ v * ((((⟨A, B⟩ : GaussianInt) ^ 12).im) ^ 2) := by
      refine ⟨18 * g * (q : ℤ) ^ 2 - v * 9 * (((⟨A, B⟩ : GaussianInt) ^ 12).re), ?_⟩
      linear_combination hkey
    have hcRI2 : IsCoprime ((((⟨A, B⟩ : GaussianInt) ^ 12).re)) ((((⟨A, B⟩ : GaussianInt) ^ 12).im) ^ 2) := hcop.pow_right
    exact hcRI2.dvd_of_dvd_mul_right hd
  obtain ⟨u, hu⟩ := hR12v
  have hu18 : u * (9 * (((⟨A, B⟩ : GaussianInt) ^ 12).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ 12).im) ^ 2) = 18 * g * (q : ℤ) ^ 2 := by
    have h0 : (((⟨A, B⟩ : GaussianInt) ^ 12).re) * (u * (9 * (((⟨A, B⟩ : GaussianInt) ^ 12).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ 12).im) ^ 2) - 18 * g * (q : ℤ) ^ 2) = 0 := by
      linear_combination hkey - (9 * (((⟨A, B⟩ : GaussianInt) ^ 12).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ 12).im) ^ 2) * hu
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hR120
    · linarith
  -- p² ∣ Y from h1, then p² ∣ v, p² ∣ u, p² ∣ 18gq²
  have hp2Y : (p : ℤ) ^ 2 ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) := by
    have hc : IsCoprime ((p : ℤ) ^ 2) (2 * (((⟨A, B⟩ : GaussianInt) ^ 12).re)) :=
      (hc2.mul_right ((hpP.coprime_iff_not_dvd).mpr hpR12)).pow_left
    refine hc.dvd_of_dvd_mul_right ?_
    exact ⟨f * Mb, by linear_combination h1⟩
  have hp2v : (p : ℤ) ^ 2 ∣ v := by
    have hd : (p : ℤ) ^ 2 ∣ (((⟨A, B⟩ : GaussianInt) ^ 12).im) * v := by
      obtain ⟨y2, hy2⟩ := hp2Y
      exact ⟨3 * y2, by rw [← hv, hy2]; ring⟩
    have hcI : IsCoprime ((p : ℤ) ^ 2) ((((⟨A, B⟩ : GaussianInt) ^ 12).im)) :=
      ((hpP.coprime_iff_not_dvd).mpr hpI12).pow_left
    exact hcI.dvd_of_dvd_mul_left hd
  have hp2u : (p : ℤ) ^ 2 ∣ u := by
    obtain ⟨w2, hw2⟩ := hp2v
    have hd : (p : ℤ) ^ 2 ∣ (((⟨A, B⟩ : GaussianInt) ^ 12).re) * u := ⟨w2, by rw [← hu, hw2]⟩
    have hcR : IsCoprime ((p : ℤ) ^ 2) ((((⟨A, B⟩ : GaussianInt) ^ 12).re)) :=
      ((hpP.coprime_iff_not_dvd).mpr hpR12).pow_left
    exact hcR.dvd_of_dvd_mul_left hd
  -- final: p² ∣ 18gq²
  obtain ⟨u2, hu2⟩ := hp2u
  have hpdvd : (p : ℤ) ∣ 18 * g * (q : ℤ) ^ 2 := by
    refine dvd_trans ⟨(p : ℤ), by ring⟩ (⟨u2 * (9 * (((⟨A, B⟩ : GaussianInt) ^ 12).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ 12).im) ^ 2), ?_⟩ :
      (p : ℤ) ^ 2 ∣ 18 * g * (q : ℤ) ^ 2)
    rw [← hu18, hu2]
    ring
  have hp18 : ¬ (p : ℤ) ∣ 18 * g := by
    intro hd
    have h18 : (p : ℤ) ∣ 18 := by
      rcases hg with rfl | rfl
      · simpa using hd
      · exact dvd_neg.mp (by simpa using hd)
    have h18' : p ∣ 18 := by exact_mod_cast h18
    have hple := Nat.le_of_dvd (by norm_num) h18'
    have h2le := hp.out.two_le
    have hp3 : p = 3 := by
      interval_cases p <;> first
        | rfl
        | omega
        | exact absurd h18' (by decide)
        | exact absurd hp.out (by decide)
    have h3 : A ^ 2 + B ^ 2 = 3 := by rw [hp3] at hpAB; exact_mod_cast hpAB
    rcases Int.even_or_odd A with ⟨a, ha⟩ | ⟨a, ha⟩ <;>
      rcases Int.even_or_odd B with ⟨b, hb⟩ | ⟨b, hb⟩ <;> subst ha <;> subst hb
    · have h4 : 4 * (a * a) + 4 * (b * b) = 3 := by linear_combination h3
      generalize a * a = s at h4; generalize b * b = t at h4; omega
    · have h4 : 4 * (a * a) + 4 * (b * b) + 4 * b = 2 := by linear_combination h3
      generalize a * a = s at h4; generalize b * b = t at h4; omega
    · have h4 : 4 * (a * a) + 4 * a + 4 * (b * b) = 2 := by linear_combination h3
      generalize a * a = s at h4; generalize b * b = t at h4; omega
    · have h4 : 4 * (a * a) + 4 * a + 4 * (b * b) + 4 * b = 1 := by linear_combination h3
      generalize a * a = s at h4; generalize b * b = t at h4; omega
  rcases hpP.dvd_mul.mp (by rwa [show 18 * g * (q : ℤ) ^ 2 = (18 * g) * (q : ℤ) ^ 2 from by ring] at hpdvd) with h | h
  · exact hp18 h
  · have hq' : (p : ℤ) ∣ (q : ℤ) := hpP.dvd_of_dvd_pow h
    have : p ∣ q := by exact_mod_cast hq'
    exact hpq ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp this)

/-- S-form (M0-row, M7) cell: 2I₁₂X = f·p⁶Y forces 2X = f·p⁶w after the
M7-side gives Y = I₁₂w; squaring the two resulting relations eliminates q
entirely, leaving (2R₁₂ + cp⁶)(R₁₂ + cp⁶) = 0 with c = fe — the first
branch is even = odd, the second forces I₁₂ = 0. -/
lemma cross12S_L0_M7
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (f g e : ℤ) (hf : f = 1 ∨ f = -1) (hg : g = 1 ∨ g = -1) (he : e = 1 ∨ e = -1)
    (h1 : 2 * ((((⟨A, B⟩ : GaussianInt) ^ 12).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) = f * ((p : ℤ) ^ 6 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)))
    (h2 : 3 * ((((⟨A, B⟩ : GaussianInt) ^ 12).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) + e * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))
      = g * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 12).im))) : False := by
  have hf2 : f ^ 2 = 1 := by rcases hf with rfl | rfl <;> norm_num
  have hg2 : g ^ 2 = 1 := by rcases hg with rfl | rfl <;> norm_num
  have he2 : e ^ 2 = 1 := by rcases he with rfl | rfl <;> norm_num
  have hI120 : (((⟨A, B⟩ : GaussianInt) ^ 12).im) ≠ 0 := im12_ne_zero p hpodd A B hpAB
  have hY0 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero q hqodd C D hqCD
  have hq4c : (((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 + (((⟨C, D⟩ : GaussianInt) ^ 4).im) ^ 2 = (q : ℤ) ^ 4 := norm4_coord q C D hqCD
  have hp12 : (((⟨A, B⟩ : GaussianInt) ^ 12).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ 12).im) ^ 2 = (p : ℤ) ^ 12 := norm12_coord p A B hpAB
  have hcop := coprime_re12_im12 p hpodd A B hpAB
  -- M7 side: I₁₂ ∣ Y
  have hIY : (((⟨A, B⟩ : GaussianInt) ^ 12).im) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) := by
    have hd : (((⟨A, B⟩ : GaussianInt) ^ 12).im) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) * (((⟨A, B⟩ : GaussianInt) ^ 12).re) := by
      refine ⟨e * (g * (q : ℤ) ^ 2 - 3 * (((⟨C, D⟩ : GaussianInt) ^ 4).re)), ?_⟩
      linear_combination e * h2 - (((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) * he2
    exact (hcop.symm).dvd_of_dvd_mul_right hd
  obtain ⟨w, hw⟩ := hIY
  have hw0 : w ≠ 0 := by rintro rfl; exact hY0 (by simpa using hw)
  have h3X : 3 * (((⟨C, D⟩ : GaussianInt) ^ 4).re) + e * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * w) = g * (q : ℤ) ^ 2 := by
    have h0 : (((⟨A, B⟩ : GaussianInt) ^ 12).im) * ((3 * (((⟨C, D⟩ : GaussianInt) ^ 4).re) + e * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * w)) - g * (q : ℤ) ^ 2) = 0 := by
      linear_combination h2 - e * (((⟨A, B⟩ : GaussianInt) ^ 12).re) * hw
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hI120
    · linarith
  -- L0 side: 2X = f·p⁶·w
  have h2X : 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).re) = f * (p : ℤ) ^ 6 * w := by
    have h0 : (((⟨A, B⟩ : GaussianInt) ^ 12).im) * (2 * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - f * (p : ℤ) ^ 6 * w) = 0 := by
      linear_combination h1 + f * (p : ℤ) ^ 6 * hw
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hI120
    · linarith
  -- squared relation 1: w²(p¹² + 4I₁₂²) = 4q⁴  (from the norm)
  have h2Xsq : (2 * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) ^ 2 = (p : ℤ) ^ 12 * w ^ 2 := by
    linear_combination (2 * (((⟨C, D⟩ : GaussianInt) ^ 4).re) + f * (p : ℤ) ^ 6 * w) * h2X
      + (p : ℤ) ^ 12 * w ^ 2 * hf2
  have hYsq : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ^ 2 = (((⟨A, B⟩ : GaussianInt) ^ 12).im) ^ 2 * w ^ 2 := by rw [hw]; ring
  have hrel1 : w ^ 2 * ((p : ℤ) ^ 12 + 4 * (((⟨A, B⟩ : GaussianInt) ^ 12).im) ^ 2) = 4 * (q : ℤ) ^ 4 := by
    linear_combination 4 * hq4c - h2Xsq - 4 * hYsq
  -- squared relation 2: w²(3fp⁶ + 2eR₁₂)² = 4q⁴
  have hwrel : w * (3 * f * (p : ℤ) ^ 6 + 2 * e * (((⟨A, B⟩ : GaussianInt) ^ 12).re)) = 2 * g * (q : ℤ) ^ 2 := by
    linear_combination 2 * h3X - 3 * h2X
  have hrel2 : w ^ 2 * (3 * f * (p : ℤ) ^ 6 + 2 * e * (((⟨A, B⟩ : GaussianInt) ^ 12).re)) ^ 2 = 4 * (q : ℤ) ^ 4 := by
    have hsq : (w * (3 * f * (p : ℤ) ^ 6 + 2 * e * (((⟨A, B⟩ : GaussianInt) ^ 12).re))) ^ 2
        = (2 * g * (q : ℤ) ^ 2) ^ 2 := by rw [hwrel]
    linear_combination hsq + 4 * (q : ℤ) ^ 4 * hg2
  -- eliminate q: the quadratic in R₁₂ (scaled by 4 to keep ℤ-coefficients)
  have hquad : (2 * (2 * (((⟨A, B⟩ : GaussianInt) ^ 12).re) + f * e * (p : ℤ) ^ 6))
      * (2 * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) + f * e * (p : ℤ) ^ 6)) = 0 := by
    have hw2 : w ^ 2 ≠ 0 := pow_ne_zero 2 hw0
    have hid : (3 * f * (p : ℤ) ^ 6 + 2 * e * (((⟨A, B⟩ : GaussianInt) ^ 12).re)) ^ 2
        = (p : ℤ) ^ 12 + 4 * (((⟨A, B⟩ : GaussianInt) ^ 12).im) ^ 2 := by
      have h0 : w ^ 2 * ((3 * f * (p : ℤ) ^ 6 + 2 * e * (((⟨A, B⟩ : GaussianInt) ^ 12).re)) ^ 2
          - ((p : ℤ) ^ 12 + 4 * (((⟨A, B⟩ : GaussianInt) ^ 12).im) ^ 2)) = 0 := by
        linear_combination hrel2 - hrel1
      rcases mul_eq_zero.mp h0 with h | h
      · exact absurd h hw2
      · linarith
    linear_combination hid + 4 * hp12
      + ((p : ℤ) ^ 12 * (4 * e ^ 2 - 9)) * hf2
      + (4 * (p : ℤ) ^ 12 - 4 * (((⟨A, B⟩ : GaussianInt) ^ 12).re) ^ 2) * he2
  rcases mul_eq_zero.mp hquad with h | h
  · -- 2R₁₂ = −fe·p⁶ : even = odd
    obtain ⟨r, hr⟩ := re12_odd p hpodd A B hpAB
    obtain ⟨s, hs⟩ := (odd_cast p hpodd).pow (n := 6)
    rcases hf with rfl | rfl <;> rcases he with rfl | rfl <;> omega
  · -- R₁₂ = −fe·p⁶ : forces I₁₂ = 0
    have hI2 : 4 * (((⟨A, B⟩ : GaussianInt) ^ 12).im) ^ 2 = 0 := by
      linear_combination 4 * hp12 - 2 * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) - f * e * (p : ℤ) ^ 6) * h
        - 4 * (p : ℤ) ^ 12 * e ^ 2 * hf2 - 4 * (p : ℤ) ^ 12 * he2
    have hI0 : (((⟨A, B⟩ : GaussianInt) ^ 12).im) ^ 2 = 0 := by linarith
    exact hI120 (pow_eq_zero_iff (two_ne_zero) |>.mp hI0)

/-- S-form (M1-row, M7) cell: cancelling I₄ from 2I₁₂X = f·p⁴q²I₄ leaves
2·(3R₄²−I₄²)X = f·p⁴q², even = odd. Uses only the first equation. -/
lemma cross12S_L1_M7
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p)
    (X : ℤ) (f : ℤ) (hf : f = 1 ∨ f = -1)
    (h1 : 2 * ((((⟨A, B⟩ : GaussianInt) ^ 12).im) * X) = f * ((p : ℤ) ^ 4 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im)))) : False := by
  have hI40 : (((⟨A, B⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero p hpodd A B hpAB
  have him12 := im12_eq A B
  have h0 : (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (2 * ((3 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) * X) - f * ((p : ℤ) ^ 4 * (q : ℤ) ^ 2)) = 0 := by
    linear_combination h1 - 2 * X * him12
  have hkey : 2 * ((3 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) * X) = f * ((p : ℤ) ^ 4 * (q : ℤ) ^ 2) := by
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hI40
    · linarith
  obtain ⟨m, hm⟩ := ((odd_cast p hpodd).pow (n := 4)).mul ((odd_cast q hqodd).pow (n := 2))
  rw [hm] at hkey
  have heven : Even (f * (2 * m + 1)) := ⟨(3 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) * X, by linarith⟩
  rcases hf with rfl | rfl <;> obtain ⟨n, hn⟩ := heven <;> omega

set_option maxHeartbeats 1600000 in
/-- S-form (M2-row, M7) cell: cancelling 2I₄ from 2I₁₂X = f·p²q²I₈ gives
JX = f·p²q²R₄ with J = 3R₄²−I₄². Then R₄ ∣ q² (via the second equation) and
J ∣ q²; the branch J = ±q² dies by size (q⁴ = p⁴R₄² + I₄²q⁴w² needs
I₄²w² ≥ 4), and J ∈ {±1, ±q} feeds M7_J_endgame. -/
lemma cross12S_L2_M7
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q) (hq4m : q % 4 = 1)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (f g e : ℤ) (hf : f = 1 ∨ f = -1) (hg : g = 1 ∨ g = -1) (he : e = 1 ∨ e = -1)
    (h1 : 2 * ((((⟨A, B⟩ : GaussianInt) ^ 12).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) = f * ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im))))
    (h2 : 3 * ((((⟨A, B⟩ : GaussianInt) ^ 12).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) + e * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))
      = g * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 12).im))) : False := by
  have hf2 : f ^ 2 = 1 := by rcases hf with rfl | rfl <;> norm_num
  have he2 : e ^ 2 = 1 := by rcases he with rfl | rfl <;> norm_num
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  have hqP : Prime (q : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hq.out
  have hI40 : (((⟨A, B⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero p hpodd A B hpAB
  have hI120 : (((⟨A, B⟩ : GaussianInt) ^ 12).im) ≠ 0 := im12_ne_zero p hpodd A B hpAB
  have hY0 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero q hqodd C D hqCD
  have hq4c : (((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 + (((⟨C, D⟩ : GaussianInt) ^ 4).im) ^ 2 = (q : ℤ) ^ 4 := norm4_coord q C D hqCD
  have hp4c : (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 = (p : ℤ) ^ 4 := norm4_coord p A B hpAB
  have hcop := coprime_re12_im12 p hpodd A B hpAB
  have him12 := im12_eq A B
  have him8 := im8_eq A B
  have hre12 := re12_eq A B
  have hR4odd : Odd (((⟨A, B⟩ : GaussianInt) ^ 4).re) := re4_odd' p hpodd A B hpAB
  obtain ⟨J, hJ⟩ : ∃ J, J = 3 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 := ⟨_, rfl⟩
  have hI12I4J : (((⟨A, B⟩ : GaussianInt) ^ 12).im) = (((⟨A, B⟩ : GaussianInt) ^ 4).im) * J := by rw [hJ]; linear_combination him12
  -- key relation from eq1: J·X = f·p²·q²·R₄
  have h0 : 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (J * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - f * ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re))))) = 0 := by
    linear_combination h1 - 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).re) * him12 + f * (p : ℤ) ^ 2 * (q : ℤ) ^ 2 * him8
      + 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) * hJ
  have h0' : (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (J * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - f * ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re)))) = 0 := by linarith
  have hJX : J * (((⟨C, D⟩ : GaussianInt) ^ 4).re) = f * ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re))) := by
    rcases mul_eq_zero.mp h0' with h | h
    · exact absurd h hI40
    · linarith
  -- J ⊥ R₄
  have hcJR : IsCoprime J ((((⟨A, B⟩ : GaussianInt) ^ 4).re)) := by
    rw [Int.isCoprime_iff_gcd_eq_one]
    by_contra hgc
    obtain ⟨r, hrprime, hrdvd⟩ := Nat.exists_prime_and_dvd hgc
    have hrJ : (r : ℤ) ∣ J :=
      (Int.natCast_dvd_natCast.mpr hrdvd).trans (Int.gcd_dvd_left _ _)
    have hrR : (r : ℤ) ∣ (((⟨A, B⟩ : GaussianInt) ^ 4).re) :=
      (Int.natCast_dvd_natCast.mpr hrdvd).trans (Int.gcd_dvd_right _ _)
    have hrP : Prime (r : ℤ) := by
      rw [Int.prime_iff_natAbs_prime]; simpa using hrprime
    obtain ⟨k, hk⟩ := hrR
    obtain ⟨j, hj⟩ := hrJ
    have hrI2 : (r : ℤ) ∣ (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 := by
      have hI2eq : (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 = 3 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - J := by rw [hJ]; ring
      rw [hI2eq, hk, hj]
      exact ⟨3 * (r * k ^ 2) - j, by ring⟩
    have hrI : (r : ℤ) ∣ (((⟨A, B⟩ : GaussianInt) ^ 4).im) := hrP.dvd_of_dvd_pow hrI2
    exact hrP.not_unit ((coprime_re4_im4 p hpodd A B hpAB).isUnit_of_dvd' ⟨k, hk⟩ hrI)
  -- R₄ ∣ X
  have hR4X : (((⟨A, B⟩ : GaussianInt) ^ 4).re) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).re) := by
    have hd : (((⟨A, B⟩ : GaussianInt) ^ 4).re) ∣ J * (((⟨C, D⟩ : GaussianInt) ^ 4).re) := ⟨f * ((p : ℤ) ^ 2 * (q : ℤ) ^ 2), by linear_combination hJX⟩
    exact (hcJR.symm).dvd_of_dvd_mul_left hd
  -- M7 side: Y = I₁₂·w and 3X + eR₁₂w = gq²
  have hIY : (((⟨A, B⟩ : GaussianInt) ^ 12).im) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) := by
    have hd : (((⟨A, B⟩ : GaussianInt) ^ 12).im) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) * (((⟨A, B⟩ : GaussianInt) ^ 12).re) := by
      refine ⟨e * (g * (q : ℤ) ^ 2 - 3 * (((⟨C, D⟩ : GaussianInt) ^ 4).re)), ?_⟩
      linear_combination e * h2 - (((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) * he2
    exact (hcop.symm).dvd_of_dvd_mul_right hd
  obtain ⟨w, hw⟩ := hIY
  have hw0 : w ≠ 0 := by rintro rfl; exact hY0 (by simpa using hw)
  have h3X : 3 * (((⟨C, D⟩ : GaussianInt) ^ 4).re) + e * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * w) = g * (q : ℤ) ^ 2 := by
    have h00 : (((⟨A, B⟩ : GaussianInt) ^ 12).im) * ((3 * (((⟨C, D⟩ : GaussianInt) ^ 4).re) + e * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * w)) - g * (q : ℤ) ^ 2) = 0 := by
      linear_combination h2 - e * (((⟨A, B⟩ : GaussianInt) ^ 12).re) * hw
    rcases mul_eq_zero.mp h00 with h | h
    · exact absurd h hI120
    · linarith
  -- R₄ ∣ q²
  have hR4R12 : (((⟨A, B⟩ : GaussianInt) ^ 4).re) ∣ (((⟨A, B⟩ : GaussianInt) ^ 12).re) :=
    ⟨(((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - 3 * (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2, by linear_combination hre12⟩
  have hR4gq2 : (((⟨A, B⟩ : GaussianInt) ^ 4).re) ∣ g * (q : ℤ) ^ 2 := by
    obtain ⟨x, hx⟩ := hR4X
    obtain ⟨y, hy⟩ := hR4R12
    exact ⟨3 * x + e * (y * w), by rw [← h3X, hx, hy]; ring⟩
  have hR4q2 : (((⟨A, B⟩ : GaussianInt) ^ 4).re) ∣ (q : ℤ) ^ 2 := by
    have hgg : g * (g * (q : ℤ) ^ 2) = (q : ℤ) ^ 2 := by
      rcases hg with rfl | rfl <;> ring
    exact hgg ▸ hR4gq2.mul_left g
  -- J ∣ q²
  have hpJ : ¬ (p : ℤ) ∣ J := by
    intro hd
    obtain ⟨hpR12, hpI12⟩ := p_not_dvd_re12_im12 p hpodd A B hpAB
    exact hpI12 (hI12I4J ▸ (hd.mul_left (((⟨A, B⟩ : GaussianInt) ^ 4).im)))
  have hJq2 : J ∣ (q : ℤ) ^ 2 := by
    have hd1 : J ∣ f * ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re))) := hJX ▸ ⟨(((⟨C, D⟩ : GaussianInt) ^ 4).re), rfl⟩
    have hd2 : J ∣ (p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re)) := by
      have hff : f * (f * ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re))))
          = (p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re)) := by
        rcases hf with rfl | rfl <;> ring
      exact hff ▸ hd1.mul_left f
    have hcJp : IsCoprime J ((p : ℤ) ^ 2) :=
      (((hpP.coprime_iff_not_dvd).mpr hpJ).symm).pow_right
    have hd3 : J ∣ (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) := hcJp.dvd_of_dvd_mul_left hd2
    exact hcJR.dvd_of_dvd_mul_right hd3
  -- classify J against powers of q
  obtain ⟨i, hi, hass⟩ := (dvd_prime_pow hqP 2).mp hJq2
  have hq3 : (3 : ℤ) ≤ (q : ℤ) := by
    have := hq.out.two_le
    omega
  have hq4S : (4 : ℤ) ≤ (q : ℤ) ^ 4 := by
    nlinarith [pow_le_pow_left₀ (by norm_num : (0:ℤ) ≤ 3) hq3 4]
  have hq2S : (4 : ℤ) ≤ (q : ℤ) ^ 2 := by
    nlinarith [pow_le_pow_left₀ (by norm_num : (0:ℤ) ≤ 3) hq3 2]
  interval_cases i
  · -- J unit: S = q⁴
    rcases Int.associated_iff.mp hass with hJ1 | hJ1 <;>
    · refine M7_J_endgame p q hpodd hpq hq4m (((⟨A, B⟩ : GaussianInt) ^ 4).re) (((⟨A, B⟩ : GaussianInt) ^ 4).im) J ((q : ℤ) ^ 4)
        hp4c hJ hR4odd hR4q2 hJq2 ?_ hq4S
      simp only [pow_zero] at hJ1
      rw [hJ1]; try ring
  · -- J = ±q: S = q²
    rcases Int.associated_iff.mp hass with hJ1 | hJ1 <;>
    · refine M7_J_endgame p q hpodd hpq hq4m (((⟨A, B⟩ : GaussianInt) ^ 4).re) (((⟨A, B⟩ : GaussianInt) ^ 4).im) J ((q : ℤ) ^ 2)
        hp4c hJ hR4odd hR4q2 hJq2 ?_ hq2S
      rw [hJ1]; try ring
  · -- J = ±q²: size kill (q⁴ = p⁴R₄² + I₄²q⁴w² needs I₄²w² ≥ 4)
    have hJsq : J ^ 2 = (q : ℤ) ^ 4 := by
      rcases Int.associated_iff.mp hass with hJ1 | hJ1 <;> (rw [hJ1]; try ring)
    have hq40 : ((q : ℤ) ^ 4) ≠ 0 := by positivity
    have hsq : (J * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) ^ 2 = (f * ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re)))) ^ 2 := by
      rw [hJX]
    have hXsq' : (q : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 = (q : ℤ) ^ 4 * ((p : ℤ) ^ 4 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2) := by
      linear_combination hsq - (((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 * hJsq
        + (p : ℤ) ^ 4 * (q : ℤ) ^ 4 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 * hf2
    have hX2 : (((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 = (p : ℤ) ^ 4 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 := mul_left_cancel₀ hq40 hXsq'
    have hYIJ : (((⟨C, D⟩ : GaussianInt) ^ 4).im) = (((⟨A, B⟩ : GaussianInt) ^ 4).im) * J * w := by rw [hw, hI12I4J]; try ring
    have hsqY : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ^ 2 = ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * J * w) ^ 2 := by rw [hYIJ]
    have hY2 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ^ 2 = (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 * ((q : ℤ) ^ 4 * w ^ 2) := by
      linear_combination hsqY + (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 * w ^ 2 * hJsq
    have heq : (p : ℤ) ^ 4 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 * ((q : ℤ) ^ 4 * w ^ 2) = (q : ℤ) ^ 4 := by
      linear_combination hq4c - hX2 - hY2
    -- bounds
    have hI4sq : (4 : ℤ) ≤ (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 := by
      obtain ⟨k, hk⟩ := im4_even A B
      have hk0 : k ≠ 0 := by rintro rfl; exact hI40 (by simpa using hk)
      have h1k : (1 : ℤ) ≤ k ^ 2 := by
        rcases lt_or_gt_of_ne hk0 with h | h <;> nlinarith
      rw [hk]; nlinarith
    have hw2 : (1 : ℤ) ≤ w ^ 2 := by
      rcases lt_or_gt_of_ne hw0 with h | h <;> nlinarith
    have hR42 : (1 : ℤ) ≤ (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 := by
      have hR40 : (((⟨A, B⟩ : GaussianInt) ^ 4).re) ≠ 0 := by
        rintro h0
        rw [h0] at hR4odd
        exact (by norm_num : ¬ Odd (0 : ℤ)) hR4odd
      rcases lt_or_gt_of_ne hR40 with h | h <;> nlinarith
    have hp2le : (2 : ℤ) ≤ (p : ℤ) := by exact_mod_cast hp.out.two_le
    have hq4pos : (0 : ℤ) < (q : ℤ) ^ 4 := by positivity
    nlinarith [heq, hI4sq, hw2, hR42, hq4pos, hp2le,
      mul_le_mul hI4sq hw2 (by norm_num) (by nlinarith : (0:ℤ) ≤ (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2),
      pow_le_pow_left₀ (by norm_num : (0:ℤ) ≤ 2) hp2le 4]

set_option maxHeartbeats 1600000 in
/-- Shared endgame for the S-form (M3..M6, M7) cells: once eq1 forces J ∣ X
(J = 3R₄² − I₄²), the norm gives J²(x̂² + I₄²w²) = q⁴, so J is ±q^i. The
unit branch means 4R₄² − p⁴ = ±1, dead mod 8; any q ∣ J forces q ∣ w
through eq2, making Y² ≥ 4q⁴ > q⁴. -/
private lemma sform_M7_J_core
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (J w g e : ℤ) (hg : g = 1 ∨ g = -1) (he : e = 1 ∨ e = -1)
    (hJ : J = 3 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2)
    (hw : (((⟨C, D⟩ : GaussianInt) ^ 4).im) = (((⟨A, B⟩ : GaussianInt) ^ 12).im) * w)
    (h3X : 3 * (((⟨C, D⟩ : GaussianInt) ^ 4).re) + e * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * w) = g * (q : ℤ) ^ 2)
    (hJX : J ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).re)) : False := by
  have he2 : e ^ 2 = 1 := by rcases he with rfl | rfl <;> norm_num
  have hqP : Prime (q : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hq.out
  have hI40 : (((⟨A, B⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero p hpodd A B hpAB
  have hI120 : (((⟨A, B⟩ : GaussianInt) ^ 12).im) ≠ 0 := im12_ne_zero p hpodd A B hpAB
  have hY0 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero q hqodd C D hqCD
  have hq4c : (((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 + (((⟨C, D⟩ : GaussianInt) ^ 4).im) ^ 2 = (q : ℤ) ^ 4 := norm4_coord q C D hqCD
  have hp4c : (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 = (p : ℤ) ^ 4 := norm4_coord p A B hpAB
  have hp12c : (((⟨A, B⟩ : GaussianInt) ^ 12).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ 12).im) ^ 2 = (p : ℤ) ^ 12 := norm12_coord p A B hpAB
  have him12 := im12_eq A B
  have hI12I4J : (((⟨A, B⟩ : GaussianInt) ^ 12).im) = (((⟨A, B⟩ : GaussianInt) ^ 4).im) * J := by rw [hJ]; linear_combination him12
  have hw0 : w ≠ 0 := by rintro rfl; exact hY0 (by simpa using hw)
  have hJ0 : J ≠ 0 := by
    rintro rfl
    exact hI120 (by simpa using hI12I4J)
  obtain ⟨xh, hxh⟩ := hJX
  have hXsq : (((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 = J ^ 2 * xh ^ 2 := by rw [hxh]; ring
  have hYIJ : (((⟨C, D⟩ : GaussianInt) ^ 4).im) = (((⟨A, B⟩ : GaussianInt) ^ 4).im) * J * w := by rw [hw, hI12I4J]; try ring
  have hYsq : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ^ 2 = (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 * J ^ 2 * w ^ 2 := by rw [hYIJ]; ring
  have hnorm : J ^ 2 * (xh ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 * w ^ 2) = (q : ℤ) ^ 4 := by
    linear_combination hq4c - hXsq - hYsq
  have hJq4 : J ∣ (q : ℤ) ^ 4 :=
    ⟨J * (xh ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 * w ^ 2), by linear_combination -hnorm⟩
  obtain ⟨i, hi, hass⟩ := (dvd_prime_pow hqP 4).mp hJq4
  rcases Nat.eq_zero_or_pos i with rfl | hipos
  · -- J is a unit: 4R₄² − p⁴ = ±1, impossible mod 8
    rw [pow_zero] at hass
    have hJu := Int.isUnit_iff.mp (associated_one_iff_isUnit.mp hass)
    have hJ4 : J = 4 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (p : ℤ) ^ 4 := by linear_combination hJ - hp4c
    obtain ⟨r, hr⟩ := re4_odd' p hpodd A B hpAB
    obtain ⟨d, hd⟩ := odd_cast p hpodd
    have hdt : Even (d * (d + 1)) := Int.even_mul_succ_self d
    obtain ⟨t, ht⟩ := hdt
    have hp2m : (p : ℤ) ^ 2 = 8 * t + 1 := by rw [hd]; linear_combination 4 * ht
    have hp4m : (p : ℤ) ^ 4 = 64 * t ^ 2 + 16 * t + 1 := by
      linear_combination ((p : ℤ) ^ 2 + 8 * t + 1) * hp2m
    have hrt : Even (r * (r + 1)) := Int.even_mul_succ_self r
    obtain ⟨s, hs⟩ := hrt
    have hR2m : (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 = 8 * s + 1 := by rw [hr]; linear_combination 4 * hs
    have hJm : J = 32 * s + 4 - (64 * t ^ 2 + 16 * t + 1) := by
      rw [hJ4, hR2m, hp4m]; ring
    generalize t ^ 2 = T at hJm
    rcases hJu with h1 | h1 <;> omega
  · -- q ∣ J: forces q ∣ w, then Y² ≥ 4q⁴ > q⁴
    have hqJ : (q : ℤ) ∣ J :=
      (dvd_pow_self (q : ℤ) hipos.ne').trans hass.symm.dvd
    have hqX : (q : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).re) := hqJ.trans ⟨xh, hxh⟩
    obtain ⟨x0, hx0⟩ := hqX
    have hqRw : (q : ℤ) ∣ (((⟨A, B⟩ : GaussianInt) ^ 12).re) * w :=
      ⟨e * g * q - 3 * e * x0, by
        linear_combination e * h3X - (((⟨A, B⟩ : GaussianInt) ^ 12).re) * w * he2 - 3 * e * hx0⟩
    have hqnR12 : ¬ (q : ℤ) ∣ (((⟨A, B⟩ : GaussianInt) ^ 12).re) := by
      intro hdR
      have hdI : (q : ℤ) ∣ (((⟨A, B⟩ : GaussianInt) ^ 12).im) := by
        rw [hI12I4J]; exact (hqJ.mul_left (((⟨A, B⟩ : GaussianInt) ^ 4).im))
      have hdp12 : (q : ℤ) ∣ (p : ℤ) ^ 12 := by
        rw [← hp12c]
        exact dvd_add (dvd_pow hdR two_ne_zero) (dvd_pow hdI two_ne_zero)
      have hdp : (q : ℤ) ∣ (p : ℤ) := hqP.dvd_of_dvd_pow hdp12
      have : q ∣ p := by exact_mod_cast hdp
      exact hpq (((Nat.prime_dvd_prime_iff_eq hq.out hp.out).mp this)).symm
    have hqw : (q : ℤ) ∣ w := (hqP.dvd_mul.mp hqRw).resolve_left hqnR12
    obtain ⟨wh, hwh⟩ := hqw
    have hwh0 : wh ≠ 0 := by rintro rfl; exact hw0 (by simpa using hwh)
    -- bounds
    have hqleJ : (q : ℤ) ≤ |J| := Int.le_of_dvd (abs_pos.mpr hJ0) ((dvd_abs _ _).mpr hqJ)
    have hq3 : (3 : ℤ) ≤ (q : ℤ) := by
      have := hq.out.two_le; omega
    have hJsq : (q : ℤ) ^ 2 ≤ J ^ 2 := by
      have := sq_abs J
      nlinarith [abs_nonneg J]
    have hI4sq : (4 : ℤ) ≤ (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 := by
      obtain ⟨k, hk⟩ := im4_even A B
      have hk0 : k ≠ 0 := by rintro rfl; exact hI40 (by simpa using hk)
      have h1k : (1 : ℤ) ≤ k ^ 2 := by
        rcases lt_or_gt_of_ne hk0 with h | h <;> nlinarith
      rw [hk]; nlinarith
    have hwh2 : (1 : ℤ) ≤ wh ^ 2 := by
      rcases lt_or_gt_of_ne hwh0 with h | h <;> nlinarith
    have hq2pos : (0 : ℤ) < (q : ℤ) ^ 2 := by positivity
    have hfinal : J ^ 2 * (xh ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 * ((q : ℤ) ^ 2 * wh ^ 2)) = (q : ℤ) ^ 4 := by
      rw [hwh] at hnorm
      linear_combination hnorm
    nlinarith [hfinal, hJsq, hI4sq, hwh2, hq2pos, sq_nonneg xh, sq_nonneg (J * xh),
      mul_pos hq2pos hq2pos,
      mul_le_mul hJsq (mul_le_mul_of_nonneg_right hI4sq
        (by positivity : (0 : ℤ) ≤ (q : ℤ) ^ 2 * wh ^ 2)) (by positivity) (sq_nonneg J)]

set_option maxHeartbeats 1600000 in
/-- S-form (M3/M4-row, M7) cells: cancelling I₄ from eq1 gives
2JX = f·p⁴(R₄Jw + σX), forcing J ∣ X; the shared J-core finishes. -/
lemma cross12S_L34_M7
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (f g e σ : ℤ) (hf : f = 1 ∨ f = -1) (hg : g = 1 ∨ g = -1)
    (he : e = 1 ∨ e = -1) (hσ : σ = 1 ∨ σ = -1)
    (h1 : 2 * ((((⟨A, B⟩ : GaussianInt) ^ 12).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) = f * ((p : ℤ) ^ 4 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + σ * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)))))
    (h2 : 3 * ((((⟨A, B⟩ : GaussianInt) ^ 12).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) + e * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))
      = g * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 12).im))) : False := by
  have he2 : e ^ 2 = 1 := by rcases he with rfl | rfl <;> norm_num
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  have hI40 : (((⟨A, B⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero p hpodd A B hpAB
  have hI120 : (((⟨A, B⟩ : GaussianInt) ^ 12).im) ≠ 0 := im12_ne_zero p hpodd A B hpAB
  have hY0 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero q hqodd C D hqCD
  have hcop := coprime_re12_im12 p hpodd A B hpAB
  have him12 := im12_eq A B
  obtain ⟨J, hJ⟩ : ∃ J, J = 3 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 := ⟨_, rfl⟩
  have hI12I4J : (((⟨A, B⟩ : GaussianInt) ^ 12).im) = (((⟨A, B⟩ : GaussianInt) ^ 4).im) * J := by rw [hJ]; linear_combination him12
  -- M7 side setup
  have hIY : (((⟨A, B⟩ : GaussianInt) ^ 12).im) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) := by
    have hd : (((⟨A, B⟩ : GaussianInt) ^ 12).im) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) * (((⟨A, B⟩ : GaussianInt) ^ 12).re) := by
      refine ⟨e * (g * (q : ℤ) ^ 2 - 3 * (((⟨C, D⟩ : GaussianInt) ^ 4).re)), ?_⟩
      linear_combination e * h2 - (((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) * he2
    exact (hcop.symm).dvd_of_dvd_mul_right hd
  obtain ⟨w, hw⟩ := hIY
  have h3X : 3 * (((⟨C, D⟩ : GaussianInt) ^ 4).re) + e * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * w) = g * (q : ℤ) ^ 2 := by
    have h00 : (((⟨A, B⟩ : GaussianInt) ^ 12).im) * ((3 * (((⟨C, D⟩ : GaussianInt) ^ 4).re) + e * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * w)) - g * (q : ℤ) ^ 2) = 0 := by
      linear_combination h2 - e * (((⟨A, B⟩ : GaussianInt) ^ 12).re) * hw
    rcases mul_eq_zero.mp h00 with h | h
    · exact absurd h hI120
    · linarith
  -- eq1 → J ∣ X
  have h0 : (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (2 * (J * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
      - f * ((p : ℤ) ^ 4 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (J * w) + σ * (((⟨C, D⟩ : GaussianInt) ^ 4).re)))) = 0 := by
    linear_combination h1
      + (2 * (((⟨C, D⟩ : GaussianInt) ^ 4).re) * (((⟨A, B⟩ : GaussianInt) ^ 4).im) - f * (p : ℤ) ^ 4 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) * w * (((⟨A, B⟩ : GaussianInt) ^ 4).im)) * hJ
      + (f * (p : ℤ) ^ 4 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) * w - 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) * him12
      + f * (p : ℤ) ^ 4 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) * hw
  have hstar : 2 * (J * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
      = f * ((p : ℤ) ^ 4 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (J * w) + σ * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) := by
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hI40
    · linarith
  have hpJ : ¬ (p : ℤ) ∣ J := by
    intro hdd
    obtain ⟨hpR12, hpI12⟩ := p_not_dvd_re12_im12 p hpodd A B hpAB
    exact hpI12 (hI12I4J ▸ (hdd.mul_left (((⟨A, B⟩ : GaussianInt) ^ 4).im)))
  have hd1 : J ∣ f * (σ * ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) :=
    ⟨2 * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - f * (p : ℤ) ^ 4 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * w), by linear_combination -hstar⟩
  have hd2 : J ∣ (p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).re) := by
    have hh : f * σ * (f * (σ * ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).re)))) = (p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).re) := by
      rcases hf with rfl | rfl <;> rcases hσ with rfl | rfl <;> ring
    exact hh ▸ hd1.mul_left (f * σ)
  have hcJp4 : IsCoprime J ((p : ℤ) ^ 4) :=
    (((hpP.coprime_iff_not_dvd).mpr hpJ).symm).pow_right
  have hJX : J ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).re) := hcJp4.dvd_of_dvd_mul_left hd2
  exact sform_M7_J_core p q hpodd hqodd hpq A B C D hpAB hqCD J w g e hg he hJ hw h3X hJX

set_option maxHeartbeats 1600000 in
/-- S-form (M5/M6-row, M7) cells: cancelling I₄ from eq1 gives
2JX = f·p²((R₄²−I₄²)Jw + 2σR₄X), forcing J ∣ X (J is odd and coprime to
R₄); the shared J-core finishes. -/
lemma cross12S_L56_M7
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (f g e σ : ℤ) (hf : f = 1 ∨ f = -1) (hg : g = 1 ∨ g = -1)
    (he : e = 1 ∨ e = -1) (hσ : σ = 1 ∨ σ = -1)
    (h1 : 2 * ((((⟨A, B⟩ : GaussianInt) ^ 12).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) = f * ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + σ * ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)))))
    (h2 : 3 * ((((⟨A, B⟩ : GaussianInt) ^ 12).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) + e * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))
      = g * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 12).im))) : False := by
  have he2 : e ^ 2 = 1 := by rcases he with rfl | rfl <;> norm_num
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  have hI40 : (((⟨A, B⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero p hpodd A B hpAB
  have hI120 : (((⟨A, B⟩ : GaussianInt) ^ 12).im) ≠ 0 := im12_ne_zero p hpodd A B hpAB
  have hY0 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero q hqodd C D hqCD
  have hcop := coprime_re12_im12 p hpodd A B hpAB
  have him12 := im12_eq A B
  have him8 := im8_eq A B
  have hre8 := re8_eq A B
  have hR4odd : Odd (((⟨A, B⟩ : GaussianInt) ^ 4).re) := re4_odd' p hpodd A B hpAB
  obtain ⟨J, hJ⟩ : ∃ J, J = 3 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 := ⟨_, rfl⟩
  have hI12I4J : (((⟨A, B⟩ : GaussianInt) ^ 12).im) = (((⟨A, B⟩ : GaussianInt) ^ 4).im) * J := by rw [hJ]; linear_combination him12
  have hJodd : Odd J := by
    obtain ⟨r, hr⟩ := hR4odd
    obtain ⟨k, hk⟩ := im4_even A B
    exact ⟨6 * r ^ 2 + 6 * r - 2 * k ^ 2 + 1, by rw [hJ, hr, hk]; ring⟩
  -- M7 side setup
  have hIY : (((⟨A, B⟩ : GaussianInt) ^ 12).im) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) := by
    have hd : (((⟨A, B⟩ : GaussianInt) ^ 12).im) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) * (((⟨A, B⟩ : GaussianInt) ^ 12).re) := by
      refine ⟨e * (g * (q : ℤ) ^ 2 - 3 * (((⟨C, D⟩ : GaussianInt) ^ 4).re)), ?_⟩
      linear_combination e * h2 - (((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) * he2
    exact (hcop.symm).dvd_of_dvd_mul_right hd
  obtain ⟨w, hw⟩ := hIY
  have h3X : 3 * (((⟨C, D⟩ : GaussianInt) ^ 4).re) + e * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * w) = g * (q : ℤ) ^ 2 := by
    have h00 : (((⟨A, B⟩ : GaussianInt) ^ 12).im) * ((3 * (((⟨C, D⟩ : GaussianInt) ^ 4).re) + e * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * w)) - g * (q : ℤ) ^ 2) = 0 := by
      linear_combination h2 - e * (((⟨A, B⟩ : GaussianInt) ^ 12).re) * hw
    rcases mul_eq_zero.mp h00 with h | h
    · exact absurd h hI120
    · linarith
  -- eq1 → J ∣ X
  have h0 : (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (2 * (J * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
      - f * ((p : ℤ) ^ 2 * (((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) * (J * w) + 2 * σ * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))))) = 0 := by
    linear_combination h1
      + (2 * (((⟨C, D⟩ : GaussianInt) ^ 4).re) * (((⟨A, B⟩ : GaussianInt) ^ 4).im) - f * (p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) * w * (((⟨A, B⟩ : GaussianInt) ^ 4).im)) * hJ
      + (f * (p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) * w - 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) * him12
      + f * (p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) * hw
      + f * (p : ℤ) ^ 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).im) * hre8
      + f * σ * (p : ℤ) ^ 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).re) * him8
  have hstar : 2 * (J * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
      = f * ((p : ℤ) ^ 2 * (((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) * (J * w) + 2 * σ * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)))) := by
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hI40
    · linarith
  have hpJ : ¬ (p : ℤ) ∣ J := by
    intro hdd
    obtain ⟨hpR12, hpI12⟩ := p_not_dvd_re12_im12 p hpodd A B hpAB
    exact hpI12 (hI12I4J ▸ (hdd.mul_left (((⟨A, B⟩ : GaussianInt) ^ 4).im)))
  -- J ⊥ R₄ (prime-divisor argument through I₄²)
  have hcJR : IsCoprime J ((((⟨A, B⟩ : GaussianInt) ^ 4).re)) := by
    rw [Int.isCoprime_iff_gcd_eq_one]
    by_contra hgc
    obtain ⟨r, hrprime, hrdvd⟩ := Nat.exists_prime_and_dvd hgc
    have hrJ : (r : ℤ) ∣ J :=
      (Int.natCast_dvd_natCast.mpr hrdvd).trans (Int.gcd_dvd_left _ _)
    have hrR : (r : ℤ) ∣ (((⟨A, B⟩ : GaussianInt) ^ 4).re) :=
      (Int.natCast_dvd_natCast.mpr hrdvd).trans (Int.gcd_dvd_right _ _)
    have hrP : Prime (r : ℤ) := by
      rw [Int.prime_iff_natAbs_prime]; simpa using hrprime
    obtain ⟨k, hk⟩ := hrR
    obtain ⟨j, hj⟩ := hrJ
    have hrI2 : (r : ℤ) ∣ (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 := by
      have hI2eq : (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 = 3 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - J := by rw [hJ]; ring
      rw [hI2eq, hk, hj]
      exact ⟨3 * (r * k ^ 2) - j, by ring⟩
    have hrI : (r : ℤ) ∣ (((⟨A, B⟩ : GaussianInt) ^ 4).im) := hrP.dvd_of_dvd_pow hrI2
    exact hrP.not_unit ((coprime_re4_im4 p hpodd A B hpAB).isUnit_of_dvd' ⟨k, hk⟩ hrI)
  have hcJ2 : IsCoprime J (2 : ℤ) := by
    refine ((Int.prime_two.coprime_iff_not_dvd).mpr ?_).symm
    intro hdd
    obtain ⟨k, hk⟩ := hdd
    obtain ⟨m, hm⟩ := hJodd
    omega
  have hd1 : J ∣ 2 * (f * (σ * ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))))) :=
    ⟨2 * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - f * (p : ℤ) ^ 2 * (((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) * w), by linear_combination -hstar⟩
  have hd2 : J ∣ f * (σ * ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)))) :=
    hcJ2.dvd_of_dvd_mul_left hd1
  have hd3 : J ∣ (p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) := by
    have hh : f * σ * (f * (σ * ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))))) = (p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) := by
      rcases hf with rfl | rfl <;> rcases hσ with rfl | rfl <;> ring
    exact hh ▸ hd2.mul_left (f * σ)
  have hcJp2 : IsCoprime J ((p : ℤ) ^ 2) :=
    (((hpP.coprime_iff_not_dvd).mpr hpJ).symm).pow_right
  have hd4 : J ∣ (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) := hcJp2.dvd_of_dvd_mul_left hd3
  have hJX : J ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).re) := hcJR.dvd_of_dvd_mul_left hd4
  exact sform_M7_J_core p q hpodd hqodd hpq A B C D hpAB hqCD J w g e hg he hJ hw h3X hJX

set_option maxHeartbeats 1600000 in
/-- Theorem G T-form cross-pair core: both partner slots range over the
eight low classes M0..M7. -/
lemma cross_pair_core_T12
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q) (hq4m : q % 4 = 1)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Kb Kd f g e : ℤ)
    (hf : f = 1 ∨ f = -1) (hg : g = 1 ∨ g = -1) (he : e = 1 ∨ e = -1)
    (hb : Kb = (p : ℤ) ^ 6 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)
      ∨ Kb = (p : ℤ) ^ 4 * (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im)
      ∨ Kb = (p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im))
      ∨ Kb = (p : ℤ) ^ 4 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
      ∨ Kb = (p : ℤ) ^ 4 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))
      ∨ Kb = (p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
      ∨ Kb = (p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))
      ∨ Kb = (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 12).im))
    (hd : Kd = (p : ℤ) ^ 6 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)
      ∨ Kd = (p : ℤ) ^ 4 * (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im)
      ∨ Kd = (p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im))
      ∨ Kd = (p : ℤ) ^ 4 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
      ∨ Kd = (p : ℤ) ^ 4 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))
      ∨ Kd = (p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
      ∨ Kd = (p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))
      ∨ Kd = (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 12).im))
    (h1 : 2 * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) = f * Kb)
    (h2 : 3 * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) + e * ((((⟨A, B⟩ : GaussianInt) ^ 12).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) = g * Kd) : False := by
  rcases hb with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · -- Kb = M0
    rcases hd with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_row_M7 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) f g e hg he (by linear_combination h1) h2
  · -- Kb = M1
    rcases hd with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))) ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))) ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))) ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))) ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))) ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))) ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))) ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_row_M7 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))) f g e hg he (by linear_combination h1) h2
  · -- Kb = M2
    rcases hd with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_row_M7 p q hpodd hqodd hpq A B C D hpAB hqCD ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) f g e hg he (by linear_combination h1) h2
  · -- Kb = M3
    rcases hd with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_row_M7 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) f g e hg he (by linear_combination h1) h2
  · -- Kb = M4
    rcases hd with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_row_M7 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) f g e hg he (by linear_combination h1) h2
  · -- Kb = M5
    rcases hd with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_row_M7 p q hpodd hqodd hpq A B C D hpAB hqCD ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) f g e hg he (by linear_combination h1) h2
  · -- Kb = M6
    rcases hd with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12_row_M7 p q hpodd hqodd hpq A B C D hpAB hqCD ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) f g e hg he (by linear_combination h1) h2
  · -- Kb = M7
    rcases hd with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · exact cross12_M7_L0 p q hpodd hqodd hpq A B C D hpAB hqCD f g e hf hg he h1 h2
    · exact cross12_M7_L1 p q hpodd hqodd A B C D hpAB hqCD f g e hf hg h1 h2
    · exact cross12_M7_L2 p q hpodd hqodd A B C D hpAB hqCD f g e hf hg h1 h2
    · exact cross12_M7_L34 p q hpodd hqodd hpq hq4m A B C D hpAB hqCD f g e 1 hf hg he (Or.inl rfl) h1 (by linear_combination h2)
    · exact cross12_M7_L34 p q hpodd hqodd hpq hq4m A B C D hpAB hqCD f g e (-1) hf hg he (Or.inr rfl) h1 (by linear_combination h2)
    · exact cross12_M7_L56 p q hpodd hqodd hpq hq4m A B C D hpAB hqCD f g e 1 hf hg he (Or.inl rfl) h1 (by linear_combination h2)
    · exact cross12_M7_L56 p q hpodd hqodd hpq hq4m A B C D hpAB hqCD f g e (-1) hf hg he (Or.inr rfl) h1 (by linear_combination h2)
    · exact cross12_M7_M7 p q hpodd hqodd A B C D hpAB hqCD f g e hf hg he h1 h2

set_option maxHeartbeats 1600000 in
/-- Theorem G S-form cross-pair core. -/
lemma cross_pair_core_S12
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q) (hq4m : q % 4 = 1)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Kb Kd f g e : ℤ)
    (hf : f = 1 ∨ f = -1) (hg : g = 1 ∨ g = -1) (he : e = 1 ∨ e = -1)
    (hb : Kb = (p : ℤ) ^ 6 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)
      ∨ Kb = (p : ℤ) ^ 4 * (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im)
      ∨ Kb = (p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im))
      ∨ Kb = (p : ℤ) ^ 4 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
      ∨ Kb = (p : ℤ) ^ 4 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))
      ∨ Kb = (p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
      ∨ Kb = (p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))
      ∨ Kb = (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 12).im))
    (hd : Kd = (p : ℤ) ^ 6 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)
      ∨ Kd = (p : ℤ) ^ 4 * (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im)
      ∨ Kd = (p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im))
      ∨ Kd = (p : ℤ) ^ 4 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
      ∨ Kd = (p : ℤ) ^ 4 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))
      ∨ Kd = (p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
      ∨ Kd = (p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))
      ∨ Kd = (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 12).im))
    (h1 : 2 * ((((⟨A, B⟩ : GaussianInt) ^ 12).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) = f * Kb)
    (h2 : 3 * ((((⟨A, B⟩ : GaussianInt) ^ 12).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) + e * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) = g * Kd) : False := by
  have hnf : -f = 1 ∨ -f = -1 := by rcases hf with rfl | rfl <;> simp
  rcases hb with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · -- Kb = M0
    rcases hd with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_L0_M7 p q hpodd hqodd A B C D hpAB hqCD f g e hf hg he h1 h2
  · -- Kb = M1
    rcases hd with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))) ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))) ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))) ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))) ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))) ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))) ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))) ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_L1_M7 p q hpodd hqodd A B hpAB ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) f hf (by linear_combination h1)
  · -- Kb = M2
    rcases hd with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_L2_M7 p q hpodd hqodd hpq hq4m A B C D hpAB hqCD f g e hf hg he h1 h2
  · -- Kb = M3
    rcases hd with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_L34_M7 p q hpodd hqodd hpq A B C D hpAB hqCD f g e 1 hf hg he (Or.inl rfl) (by linear_combination h1) h2
  · -- Kb = M4
    rcases hd with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_L34_M7 p q hpodd hqodd hpq A B C D hpAB hqCD (-f) g e (-1) hnf hg he (Or.inr rfl) (by linear_combination h1) h2
  · -- Kb = M5
    rcases hd with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_L56_M7 p q hpodd hqodd hpq A B C D hpAB hqCD f g e 1 hf hg he (Or.inl rfl) (by linear_combination h1) h2
  · -- Kb = M6
    rcases hd with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) ((p : ℤ) ^ 4 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) ((((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) + (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_p2p2 p q hpodd hqodd hpq A B C D hpAB hqCD ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) ((((⟨A, B⟩ : GaussianInt) ^ 8).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) f g e he (by linear_combination h1) (by linear_combination h2)
    · exact cross12S_L56_M7 p q hpodd hqodd hpq A B C D hpAB hqCD (-f) g e (-1) hnf hg he (Or.inr rfl) (by linear_combination h1) h2
  · -- Kb = M7
    exact cross12S_M7row p q hpodd hqodd A B C D hpAB hqCD f hf h1
/-- Mixed-pair global kill: I₁₂X = f·M2 is even = odd after cancelling I₄. -/
private lemma mixed12_c1_M2
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (f : ℤ) (hf : f = 1 ∨ f = -1)
    (hIX : (((⟨A, B⟩ : GaussianInt) ^ 12).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) = f * ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)))) : False := by
  have hI40 : (((⟨A, B⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero p hpodd A B hpAB
  have him12 := im12_eq A B
  have him8 := im8_eq A B
  have h0 : (((⟨A, B⟩ : GaussianInt) ^ 4).im) * ((3 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)
      - f * ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re))))) = 0 := by
    linear_combination hIX - (((⟨C, D⟩ : GaussianInt) ^ 4).re) * him12 + f * (p : ℤ) ^ 2 * (q : ℤ) ^ 2 * him8
  have hkey : (3 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)
      = f * ((p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re)))) := by
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hI40
    · linarith
  obtain ⟨r, hr⟩ := re4_odd' p hpodd A B hpAB
  obtain ⟨k, hk⟩ := im4_even A B
  obtain ⟨x, hx⟩ := re4_odd' q hqodd C D hqCD
  obtain ⟨m, hm⟩ := ((odd_cast p hpodd).pow (n := 2)).mul ((odd_cast q hqodd).pow (n := 2))
  have hodd : Odd ((3 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) :=
    ⟨(6 * r ^ 2 + 6 * r - 2 * k ^ 2 + 1) * (2 * x + 1) + x,
      by rw [hr, hk, hx]; ring⟩
  obtain ⟨t, ht⟩ := hodd
  rw [ht] at hkey
  have hm' : (p : ℤ) ^ 2 * ((q : ℤ) ^ 2 * (2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re))) = 2 * ((2 * m + 1) * (2 * r + 1)) := by
    linear_combination 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) * hm + 2 * (2 * m + 1) * hr
  rw [hm'] at hkey
  generalize (2 * m + 1) * (2 * r + 1) = N at hkey
  rcases hf with rfl | rfl <;> omega

/-- Mixed-pair global kill: I₁₂X = f·M7 pinches X = ±q², so Y = 0. -/
private lemma mixed12_c1_M7
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (f : ℤ) (hf : f = 1 ∨ f = -1)
    (hIX : (((⟨A, B⟩ : GaussianInt) ^ 12).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) = f * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 12).im))) : False := by
  have hI120 : (((⟨A, B⟩ : GaussianInt) ^ 12).im) ≠ 0 := im12_ne_zero p hpodd A B hpAB
  have hY0 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero q hqodd C D hqCD
  have hq4c : (((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 + (((⟨C, D⟩ : GaussianInt) ^ 4).im) ^ 2 = (q : ℤ) ^ 4 := norm4_coord q C D hqCD
  have hX : (((⟨C, D⟩ : GaussianInt) ^ 4).re) = f * (q : ℤ) ^ 2 := by
    have h0 : (((⟨A, B⟩ : GaussianInt) ^ 12).im) * ((((⟨C, D⟩ : GaussianInt) ^ 4).re) - f * (q : ℤ) ^ 2) = 0 := by linear_combination hIX
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hI120
    · linarith
  have hf2 : f ^ 2 = 1 := by rcases hf with rfl | rfl <;> norm_num
  have hXsq : (((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 = (q : ℤ) ^ 4 := by
    rw [hX]; linear_combination (q : ℤ) ^ 4 * hf2
  have hY2 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ^ 2 = 0 := by linarith
  exact hY0 (pow_eq_zero_iff two_ne_zero |>.mp hY2)

/-- Mixed-pair global kill: R₁₂Y = g·M0 pinches R₁₂ = ±p⁶, so I₁₂ = 0. -/
private lemma mixed12_c2_M0
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (g : ℤ) (hg : g = 1 ∨ g = -1)
    (hRY : (((⟨A, B⟩ : GaussianInt) ^ 12).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) = g * ((p : ℤ) ^ 6 * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) : False := by
  have hI120 : (((⟨A, B⟩ : GaussianInt) ^ 12).im) ≠ 0 := im12_ne_zero p hpodd A B hpAB
  have hY0 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero q hqodd C D hqCD
  have hp12c : (((⟨A, B⟩ : GaussianInt) ^ 12).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ 12).im) ^ 2 = (p : ℤ) ^ 12 := norm12_coord p A B hpAB
  have hR : (((⟨A, B⟩ : GaussianInt) ^ 12).re) = g * (p : ℤ) ^ 6 := by
    have h0 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) * ((((⟨A, B⟩ : GaussianInt) ^ 12).re) - g * (p : ℤ) ^ 6) = 0 := by linear_combination hRY
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hY0
    · linarith
  have hg2 : g ^ 2 = 1 := by rcases hg with rfl | rfl <;> norm_num
  have hRsq : (((⟨A, B⟩ : GaussianInt) ^ 12).re) ^ 2 = (p : ℤ) ^ 12 := by
    rw [hR]; linear_combination (p : ℤ) ^ 12 * hg2
  have hI2 : (((⟨A, B⟩ : GaussianInt) ^ 12).im) ^ 2 = 0 := by linarith
  exact hI120 (pow_eq_zero_iff two_ne_zero |>.mp hI2)

end GCore
