/-
Generic level-4a coordinate layer for the uniform s·pᵃ·q theorem:
facts about (π^{4a}).re/.im proved by induction on a via the recurrence
π^{4(a+1)} = π^{4a} · π⁴.
-/
import Mathlib
import MsqLean.TheoremGInt
import MsqLean.TheoremFCore

open Zsqrtd

namespace UniformA

variable (p : ℕ) [hp : Fact (Nat.Prime p)]

/-- Coordinate recurrence: real part. -/
lemma step_re (A B : ℤ) (a : ℕ) :
    ((⟨A, B⟩ : GaussianInt) ^ (4 * (a + 1))).re
      = ((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re * ((⟨A, B⟩ : GaussianInt) ^ 4).re
        - ((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im * ((⟨A, B⟩ : GaussianInt) ^ 4).im := by
  rw [show 4 * (a + 1) = 4 * a + 4 from by ring, pow_add]
  simp [Zsqrtd.re_mul]
  try ring

/-- Coordinate recurrence: imaginary part. -/
lemma step_im (A B : ℤ) (a : ℕ) :
    ((⟨A, B⟩ : GaussianInt) ^ (4 * (a + 1))).im
      = ((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re * ((⟨A, B⟩ : GaussianInt) ^ 4).im
        + ((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im * ((⟨A, B⟩ : GaussianInt) ^ 4).re := by
  rw [show 4 * (a + 1) = 4 * a + 4 from by ring, pow_add]
  simp [Zsqrtd.im_mul]
  try ring


/-- If p divides both coordinates of π^{4a} (a ≥ 1), the conjugate prime
divides π — impossible. -/
lemma p_dvd_gaussian_kill (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (a : ℕ) (ha : 1 ≤ a)
    (hdR : (p : ℤ) ∣ ((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)
    (hdI : (p : ℤ) ∣ ((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) : False := by
  set π : GaussianInt := ⟨A, B⟩ with hπdef
  have hπnb : ¬ π ∣ star π := pi_not_dvd_star p hpodd A B hpAB
  have hsplit : π * star π = ((p : ℤ) : GaussianInt) := by rw [hπdef, pi_mul_star, hpAB]
  obtain ⟨r, hr⟩ := hdR
  obtain ⟨i, hi⟩ := hdI
  have hdvd : ((p : ℤ) : GaussianInt) ∣ π ^ (4 * a) := by
    refine ⟨⟨r, i⟩, ?_⟩
    ext
    · simp [hr]
    · simp [hi]
  rw [← hsplit] at hdvd
  have hstar : star π ∣ π ^ (4 * a) := (dvd_mul_left _ _).trans hdvd
  have hsπprime : Prime (star π) := by
    have hst : star π = (⟨A, -B⟩ : GaussianInt) := by rw [hπdef]; ext <;> simp
    rw [hst]
    exact prime_pi p A (-B) (by rw [neg_pow]; ring_nf; linarith [hpAB])
  have hd := hsπprime.dvd_of_dvd_pow hstar
  exact hπnb (by
    have h2 := star_dvd_star hd
    rwa [star_star] at h2)

/-- Generic norm: R₄ₐ² + I₄ₐ² = p^{4a}. -/
lemma norm_coord (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (a : ℕ) :
    ((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re ^ 2 + ((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im ^ 2
      = (p : ℤ) ^ (4 * a) := by
  induction a with
  | zero => simp
  | succ n ih =>
    have h4 := norm4_coord p A B hpAB
    rw [step_re, step_im]
    have : (p : ℤ) ^ (4 * (n + 1)) = (p : ℤ) ^ (4 * n) * (p : ℤ) ^ 4 := by
      rw [← pow_add]; ring_nf
    rw [this, ← ih, ← h4]
    ring

/-- p divides neither coordinate of π^{4a} for a ≥ 1. -/
lemma p_not_dvd_coords (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (a : ℕ) (ha : 1 ≤ a) :
    ¬ (p : ℤ) ∣ ((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re
    ∧ ¬ (p : ℤ) ∣ ((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im := by
  constructor <;> intro hd
  · -- p ∣ Re and the norm force p ∣ Im², then p ∣ gaussian π^{4a}
    have hn := norm_coord p A B hpAB a
    have hdI2 : (p : ℤ) ∣ ((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im ^ 2 := by
      have h1 : (p : ℤ) ∣ (p : ℤ) ^ (4 * a) :=
        dvd_pow_self _ (by omega)
      have h2 : (p : ℤ) ∣ ((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re ^ 2 :=
        dvd_pow hd (by norm_num)
      have := dvd_sub h1 h2
      rwa [show (p : ℤ) ^ (4 * a) - ((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re ^ 2
        = ((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im ^ 2 from by linarith [hn]] at this
    have hpP : Prime (p : ℤ) := by
      rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
    have hdI : (p : ℤ) ∣ ((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im := hpP.dvd_of_dvd_pow hdI2
    exact (p_dvd_gaussian_kill p hpodd A B hpAB a ha hd hdI : False)
  · have hn := norm_coord p A B hpAB a
    have hdR2 : (p : ℤ) ∣ ((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re ^ 2 := by
      have h1 : (p : ℤ) ∣ (p : ℤ) ^ (4 * a) :=
        dvd_pow_self _ (by omega)
      have h2 : (p : ℤ) ∣ ((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im ^ 2 :=
        dvd_pow hd (by norm_num)
      have := dvd_sub h1 h2
      rwa [show (p : ℤ) ^ (4 * a) - ((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im ^ 2
        = ((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re ^ 2 from by linarith [hn]] at this
    have hpP : Prime (p : ℤ) := by
      rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
    have hdR : (p : ℤ) ∣ ((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re := hpP.dvd_of_dvd_pow hdR2
    exact (p_dvd_gaussian_kill p hpodd A B hpAB a ha hdR hd : False)

/-- The J-chain: I₄ ∣ I₄ₐ with cofactor J ≡ a·R₄^(a−1) (mod I₄²), and
R₄ₐ ≡ R₄^a (mod I₄²). -/
lemma J_chain (A B : ℤ) (a : ℕ) (ha : 1 ≤ a) :
    ∃ J c d : ℤ,
      ((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im = (((⟨A, B⟩ : GaussianInt) ^ 4).im) * J
      ∧ ((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re = (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ a + (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 * c
      ∧ J = (a : ℤ) * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ (a - 1) + (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 * d := by
  induction a with
  | zero => omega
  | succ n ih =>
    rcases Nat.eq_zero_or_pos n with rfl | hn
    · exact ⟨1, 0, 0, by norm_num, by norm_num, by norm_num⟩
    · obtain ⟨J, c, d, hI, hR, hJ⟩ := ih hn
      refine ⟨((⟨A, B⟩ : GaussianInt) ^ (4 * n)).re + (((⟨A, B⟩ : GaussianInt) ^ 4).re) * J,
        c * (((⟨A, B⟩ : GaussianInt) ^ 4).re) - J, c + (((⟨A, B⟩ : GaussianInt) ^ 4).re) * d, ?_, ?_, ?_⟩
      · rw [step_im, hI]
        ring
      · rw [step_re, hR, hI]
        ring
      · have hnn : n - 1 + 1 = n := by omega
        have hpow : (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ (n - 1) * (((⟨A, B⟩ : GaussianInt) ^ 4).re) = (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ n := by
          rw [← pow_succ, hnn]
        rw [hR, hJ]
        push_cast
        linear_combination ((n : ℤ)) * hpow

/-- 4 divides the imaginary coordinate for a >= 1. -/
lemma im_four (A B : ℤ) (a : ℕ) (ha : 1 ≤ a) :
    (4 : ℤ) ∣ (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) := by
  obtain ⟨J, c, d, hI, _, _⟩ := J_chain A B a ha
  rw [hI, im4_four A B]
  exact ⟨A * B * (A ^ 2 - B ^ 2) * J, by ring⟩

/-- The real coordinate is odd for a >= 1. -/
lemma re_odd (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (a : ℕ) (ha : 1 ≤ a) :
    Odd ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) := by
  have hn := norm_coord p A B hpAB a
  obtain ⟨k4, hk4⟩ := im_four A B a ha
  have hoddp : Odd ((p : ℤ) ^ (2 * a)) := (odd_cast p hpodd).pow
  obtain ⟨m, hm⟩ := hoddp
  obtain ⟨t, ht⟩ := Int.even_mul_succ_self m
  have hp8 : (p : ℤ) ^ (4 * a) = 8 * t + 1 := by
    have hsq : (p : ℤ) ^ (4 * a) = ((p : ℤ) ^ (2 * a)) ^ 2 := by
      rw [← pow_mul]; ring_nf
    rw [hsq, hm]
    linear_combination 4 * ht
  rcases Int.even_or_odd ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) with ⟨r, hr⟩ | ho
  · exfalso
    rw [hr, hk4, hp8] at hn
    have hexp : 4 * (r * r) + 16 * k4 ^ 2 = 8 * t + 1 := by linear_combination hn
    generalize r * r = r2 at hexp
    generalize k4 ^ 2 = K2 at hexp
    omega
  · exact ho

/-- The coordinates are coprime for a >= 1. -/
lemma coprime_coords (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (a : ℕ) (ha : 1 ≤ a) :
    IsCoprime ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) := by
  obtain ⟨hpR, hpI⟩ := p_not_dvd_coords p hpodd A B hpAB a ha
  have hsum := norm_coord p A B hpAB a
  rw [Int.isCoprime_iff_gcd_eq_one]
  by_contra hg
  obtain ⟨r, hrprime, hrdvd⟩ := Nat.exists_prime_and_dvd hg
  have hrR : (r : ℤ) ∣ (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) :=
    (Int.natCast_dvd_natCast.mpr hrdvd).trans (Int.gcd_dvd_left _ _)
  have hrI : (r : ℤ) ∣ (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) :=
    (Int.natCast_dvd_natCast.mpr hrdvd).trans (Int.gcd_dvd_right _ _)
  have hrP : Prime (r : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hrprime
  have hrp4a : (r : ℤ) ∣ (p : ℤ) ^ (4 * a) := by
    rw [← hsum]
    exact dvd_add (dvd_pow hrR (by norm_num)) (dvd_pow hrI (by norm_num))
  have hrp : (r : ℤ) ∣ (p : ℤ) := hrP.dvd_of_dvd_pow hrp4a
  have hrpn : r = p := by
    have hnat : r ∣ p := by exact_mod_cast hrp
    exact (Nat.prime_dvd_prime_iff_eq hrprime hp.out).mp hnat
  rw [hrpn] at hrR
  exact hpR hrR

/-- The J-cofactor in explicit mod-16 form: I4a = I4*J with
J = a*R4^(a-1) + 16 t^2 d, where I4 = 4t. -/
lemma J_mod_form (A B : ℤ) (a : ℕ) (ha : 1 ≤ a) :
    ∃ J d : ℤ,
      (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) = ((((⟨A, B⟩ : GaussianInt) ^ 4).im)) * J
      ∧ J = (a : ℤ) * ((((⟨A, B⟩ : GaussianInt) ^ 4).re)) ^ (a - 1)
          + 16 * (A * B * (A ^ 2 - B ^ 2)) ^ 2 * d := by
  obtain ⟨J, c, d, hI, _, hJ⟩ := J_chain A B a ha
  refine ⟨J, d, hI, ?_⟩
  rw [hJ, im4_four A B]
  ring

/-- The class family for center roots s·pᵃ·q: the 1 + 3a admissible
D-values (up to sign and the global s² factor). -/
def UClass (p q : ℕ) (A B C D : ℤ) (a : ℕ) (K : ℤ) : Prop :=
  K = (p : ℤ) ^ (2 * a) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)
  ∨ ∃ e, 1 ≤ e ∧ e ≤ a ∧
      (K = (p : ℤ) ^ (2 * (a - e)) * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ (4 * e)).im))
       ∨ K = (p : ℤ) ^ (2 * (a - e)) * ((((⟨A, B⟩ : GaussianInt) ^ (4 * e)) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im)
       ∨ K = (p : ℤ) ^ (2 * (a - e)) * ((((⟨A, B⟩ : GaussianInt) ^ (4 * e)) * ((star (⟨C, D⟩ : GaussianInt)) ^ 4)).im))

/-- Telescoping: rung a's classes are p²·(rung a−1 classes) plus the three
new level-4a classes. -/
lemma UClass_step (p q : ℕ) (A B C D : ℤ) (a : ℕ) (ha : 2 ≤ a) (K : ℤ) :
    UClass p q A B C D a K ↔
      ((∃ K', K = (p : ℤ) ^ 2 * K' ∧ UClass p q A B C D (a - 1) K')
       ∨ (K = (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)
          ∨ K = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im)
          ∨ K = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((star (⟨C, D⟩ : GaussianInt)) ^ 4)).im))) := by
  have hsplit : ∀ e, 1 ≤ e → e ≤ a - 1 →
      (p : ℤ) ^ (2 * (a - e)) = (p : ℤ) ^ 2 * (p : ℤ) ^ (2 * ((a - 1) - e)) := by
    intro e he1 hle
    rw [← pow_add]
    congr 1
    omega
  constructor
  · rintro (rfl | ⟨e, he1, hea, (rfl | rfl | rfl)⟩)
    · refine Or.inl ⟨(p : ℤ) ^ (2 * (a - 1)) * (((⟨C, D⟩ : GaussianInt) ^ 4).im), ?_, Or.inl rfl⟩
      rw [show 2 * a = 2 + 2 * (a - 1) from by omega, pow_add]
      ring
    · rcases Nat.lt_or_ge e a with helt | hege
      · exact Or.inl ⟨(p : ℤ) ^ (2 * ((a - 1) - e)) * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ (4 * e)).im)),
          by rw [hsplit e he1 (by omega)]; ring,
          Or.inr ⟨e, he1, by omega, Or.inl rfl⟩⟩
      · have hea' : e = a := by omega
        subst hea'
        refine Or.inr (Or.inl ?_)
        rw [show e - e = 0 from by omega]
        norm_num
    · rcases Nat.lt_or_ge e a with helt | hege
      · exact Or.inl ⟨(p : ℤ) ^ (2 * ((a - 1) - e)) * ((((⟨A, B⟩ : GaussianInt) ^ (4 * e)) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im),
          by rw [hsplit e he1 (by omega)]; ring,
          Or.inr ⟨e, he1, by omega, Or.inr (Or.inl rfl)⟩⟩
      · have hea' : e = a := by omega
        subst hea'
        refine Or.inr (Or.inr (Or.inl ?_))
        rw [show e - e = 0 from by omega]
        norm_num
    · rcases Nat.lt_or_ge e a with helt | hege
      · exact Or.inl ⟨(p : ℤ) ^ (2 * ((a - 1) - e)) * ((((⟨A, B⟩ : GaussianInt) ^ (4 * e)) * ((star (⟨C, D⟩ : GaussianInt)) ^ 4)).im),
          by rw [hsplit e he1 (by omega)]; ring,
          Or.inr ⟨e, he1, by omega, Or.inr (Or.inr rfl)⟩⟩
      · have hea' : e = a := by omega
        subst hea'
        refine Or.inr (Or.inr (Or.inr ?_))
        rw [show e - e = 0 from by omega]
        norm_num
  · rintro (⟨K', rfl, (rfl | ⟨e, he1, hea, (rfl | rfl | rfl)⟩)⟩ | (rfl | rfl | rfl))
    · refine Or.inl ?_
      rw [show 2 * a = 2 + 2 * (a - 1) from by omega, pow_add]
      ring
    · exact Or.inr ⟨e, he1, by omega,
        Or.inl (by rw [hsplit e he1 hea]; ring)⟩
    · exact Or.inr ⟨e, he1, by omega,
        Or.inr (Or.inl (by rw [hsplit e he1 hea]; ring))⟩
    · exact Or.inr ⟨e, he1, by omega,
        Or.inr (Or.inr (by rw [hsplit e he1 hea]; ring))⟩
    · exact Or.inr ⟨a, by omega, le_refl a,
        Or.inl (by rw [show a - a = 0 from by omega]; norm_num)⟩
    · exact Or.inr ⟨a, by omega, le_refl a,
        Or.inr (Or.inl (by rw [show a - a = 0 from by omega]; norm_num))⟩
    · exact Or.inr ⟨a, by omega, le_refl a,
        Or.inr (Or.inr (by rw [show a - a = 0 from by omega]; norm_num))⟩

end UniformA
