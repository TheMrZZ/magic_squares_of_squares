/-
Generic level-4a coordinate layer for the uniform s·pᵃ·q theorem:
facts about (π^{4a}).re/.im proved by induction on a via the recurrence
π^{4(a+1)} = π^{4a} · π⁴.
-/
import Mathlib
import MsqLean.TheoremGInt
import MsqLean.TheoremFCore
import MsqLean.PrimePowerHelpers

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

/-- Fold a balanced conjugate power: for j ≤ a,
π^(2j)·π̄^(2(2a−j)) = (p : ℤ[i])^(2j) · π̄^(4(a−j)). -/
lemma fold_le (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (a j : ℕ) (hj : j ≤ a) :
    ((⟨A, B⟩ : GaussianInt) ^ (2 * j)) * ((star (⟨A, B⟩ : GaussianInt)) ^ (2 * (2 * a - j)))
      = ((((p : ℤ)) : GaussianInt) ^ (2 * j)) * ((star (⟨A, B⟩ : GaussianInt)) ^ (4 * (a - j))) := by
  have hsplit : (⟨A, B⟩ : GaussianInt) * star (⟨A, B⟩ : GaussianInt) = (((p : ℤ)) : GaussianInt) := by
    rw [pi_mul_star, hpAB]
  have hexp : 2 * (2 * a - j) = 2 * j + 4 * (a - j) := by omega
  rw [hexp, pow_add, ← mul_assoc]
  congr 1
  rw [← mul_pow, hsplit]

/-- Fold, unbalanced side: for a < j ≤ 2a,
π^(2j)·π̄^(2(2a−j)) = (p : ℤ[i])^(2(2a−j)) · π^(4(j−a)). -/
lemma fold_gt (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (a j : ℕ) (hja : a < j) (hj2 : j ≤ 2 * a) :
    ((⟨A, B⟩ : GaussianInt) ^ (2 * j)) * ((star (⟨A, B⟩ : GaussianInt)) ^ (2 * (2 * a - j)))
      = ((((p : ℤ)) : GaussianInt) ^ (2 * (2 * a - j))) * ((⟨A, B⟩ : GaussianInt) ^ (4 * (j - a))) := by
  have hsplit : (⟨A, B⟩ : GaussianInt) * star (⟨A, B⟩ : GaussianInt) = (((p : ℤ)) : GaussianInt) := by
    rw [pi_mul_star, hpAB]
  have hexp : 2 * j = 4 * (j - a) + 2 * (2 * a - j) := by omega
  rw [hexp, pow_add]
  rw [show ((⟨A, B⟩ : GaussianInt) ^ (4 * (j - a)) * (⟨A, B⟩ : GaussianInt) ^ (2 * (2 * a - j)))
        * ((star (⟨A, B⟩ : GaussianInt)) ^ (2 * (2 * a - j)))
      = ((⟨A, B⟩ : GaussianInt) * star (⟨A, B⟩ : GaussianInt)) ^ (2 * (2 * a - j))
        * (⟨A, B⟩ : GaussianInt) ^ (4 * (j - a)) from by rw [mul_pow]; ring, hsplit]

/-- The imaginary part of an integer multiple. -/
lemma im_int_mul (n : ℤ) (w : GaussianInt) : (((n : GaussianInt)) * w).im = n * w.im := by
  simp [Zsqrtd.im_mul]

/-- The imaginary part of a conjugate. -/
lemma im_star_eq (w : GaussianInt) : (star w).im = -w.im := by
  simp

set_option maxHeartbeats 1600000 in
/-- Generic representation structure: any rep of s²·p^(2a)·q² with
nonvanishing product lands (up to sign and s²) in the UClass family. -/
theorem rep_structure_uniform
    (hpq : p ≠ q) [hq : Fact (Nat.Prime q)]
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (s : ℕ) (hs : ∀ r : ℕ, r.Prime → r ∣ s → r % 4 ≠ 1)
    (a : ℕ) (ha : 1 ≤ a)
    (x y : ℤ) (hxy : x ^ 2 + y ^ 2 = ((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (2 * a) * (q : ℤ) ^ 2)
    (hne : 2 * x * y ≠ 0) :
    ∃ ε K : ℤ, (ε = 1 ∨ ε = -1) ∧ UClass p q A B C D a K
      ∧ 2 * x * y = ε * (((s : ℕ) : ℤ) ^ 2 * K) := by
  set π : GaussianInt := ⟨A, B⟩ with hπdef
  set χ : GaussianInt := ⟨C, D⟩ with hχdef
  set z : GaussianInt := ⟨x, y⟩ with hzdef
  have hπnorm : π.norm = (p : ℤ) := by
    have h : π.norm = A * A + B * B := by simp [hπdef, Zsqrtd.norm]
    rw [h]; nlinarith [hpAB]
  have hχnorm : χ.norm = (q : ℤ) := by
    have h : χ.norm = C * C + D * D := by simp [hχdef, Zsqrtd.norm]
    rw [h]; nlinarith [hqCD]
  have hznorm : z.norm = ((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (2 * a) * (q : ℤ) ^ 2 := by
    have h : z.norm = x * x + y * y := by simp [hzdef, Zsqrtd.norm]
    rw [h]; nlinarith [hxy]
  obtain ⟨u, j, k, hu, hj, hk, hzeq⟩ :=
    norm_two_prime_classify p q hpq π χ hπnorm hχnorm s hs 2 (2 * a) z hznorm
  have hz2 : z ^ 2 = u ^ 2 * (((((s : ℕ) : ℤ) ^ 2 : ℤ) : GaussianInt)
      * (π ^ (2 * j) * (star π) ^ (2 * (2 * a - j)) * χ ^ (2 * k) * (star χ) ^ (2 * (2 - k)))) := by
    rw [hzeq]
    have hscast : ((s : GaussianInt)) ^ 2 = ((((s : ℕ) : ℤ) ^ 2 : ℤ) : GaussianInt) := by
      push_cast; ring
    rw [← hscast]
    have h1 : 2 * (2 * a - j) = (2 * a - j) + (2 * a - j) := by omega
    have h2 : 2 * j = j + j := by omega
    have h3 : 2 * (2 - k) = (2 - k) + (2 - k) := by omega
    have h4 : 2 * k = k + k := by omega
    rw [h1, h2, h3, h4]
    simp only [pow_add]
    ring
  have h2xy : 2 * x * y = (z ^ 2).im := by
    rw [sq_im, hzdef]
  have hχsplit : χ * star χ = (((q : ℤ)) : GaussianInt) := by
    rw [hχdef, pi_mul_star, hqCD]
  obtain hu2 | hu2 := gaussian_unit_sq u hu <;> interval_cases k
  -- u² = 1 branches ------------------------------------------------
  · -- u² = 1, k = 0
    rcases Nat.lt_or_ge j a with hja | hja
    · have hfold := fold_le p A B hpAB a j (by omega)
      refine ⟨-1, (p : ℤ) ^ (2 * j) * ((π ^ (4 * (a - j)) * χ ^ 4).im),
        Or.inr rfl, Or.inr ⟨a - j, by omega, by omega,
          Or.inr (Or.inl (by rw [show a - (a - j) = j from by omega]))⟩, ?_⟩
      rw [h2xy, hz2, hu2]
      have hassemble : (1 : GaussianInt) * (((((s : ℕ) : ℤ) ^ 2 : ℤ) : GaussianInt)
          * (π ^ (2 * j) * (star π) ^ (2 * (2 * a - j)) * χ ^ 0 * (star χ) ^ 4))
          = ((((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (2 * j) : ℤ) : GaussianInt)
          * star (π ^ (4 * (a - j)) * χ ^ 4) := by
        rw [star_mul, star_pow, star_pow]
        simp only [pow_zero, mul_one]
        rw [hfold]
        push_cast
        ring
      rw [hassemble, im_int_mul, im_star_eq]
      push_cast
      ring
    · rcases Nat.eq_or_lt_of_le hja with hje | hja'
      · subst hje
        have hfold := fold_le p A B hpAB a a le_rfl
        rw [show a - a = 0 from by omega] at hfold
        refine ⟨-1, (p : ℤ) ^ (2 * a) * ((χ ^ 4).im),
          Or.inr rfl, Or.inl rfl, ?_⟩
        rw [h2xy, hz2, hu2]
        have hassemble : (1 : GaussianInt) * (((((s : ℕ) : ℤ) ^ 2 : ℤ) : GaussianInt)
            * (π ^ (2 * a) * (star π) ^ (2 * (2 * a - a)) * χ ^ 0 * (star χ) ^ 4))
            = ((((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (2 * a) : ℤ) : GaussianInt)
            * star (χ ^ 4) := by
          rw [star_pow]
          simp only [pow_zero, mul_one]
          rw [hfold]
          push_cast
          ring
        rw [hassemble, im_int_mul, im_star_eq]
        push_cast
        ring
      · have hfold := fold_gt p A B hpAB a j hja' hj
        refine ⟨1, (p : ℤ) ^ (2 * (2 * a - j)) * ((π ^ (4 * (j - a)) * (star χ) ^ 4).im),
          Or.inl rfl, Or.inr ⟨j - a, by omega, by omega,
            Or.inr (Or.inr (by rw [show a - (j - a) = 2 * a - j from by omega]))⟩, ?_⟩
        rw [h2xy, hz2, hu2]
        have hassemble : (1 : GaussianInt) * (((((s : ℕ) : ℤ) ^ 2 : ℤ) : GaussianInt)
            * (π ^ (2 * j) * (star π) ^ (2 * (2 * a - j)) * χ ^ 0 * (star χ) ^ 4))
            = ((((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (2 * (2 * a - j)) : ℤ) : GaussianInt)
            * (π ^ (4 * (j - a)) * (star χ) ^ 4) := by
          simp only [pow_zero, mul_one]
          rw [hfold]
          push_cast
          ring
        rw [hassemble, im_int_mul]
        push_cast
        ring
  · -- k = 1 : χχ̄ = q, pure π-classes
    have hχq : χ ^ 2 * (star χ) ^ 2 = ((((q : ℤ) ^ 2 : ℤ)) : GaussianInt) := by
      rw [← mul_pow, hχsplit]
      push_cast
      ring
    rcases Nat.lt_or_ge j a with hja | hja
    · -- j < a: conjugate side, e = a − j ≥ 1
      have hfold := fold_le p A B hpAB a j (by omega)
      refine ⟨-1, (p : ℤ) ^ (2 * j) * ((q : ℤ) ^ 2 * ((π ^ (4 * (a - j))).im)),
        Or.inr rfl, Or.inr ⟨a - j, by omega, by omega,
          Or.inl (by rw [show a - (a - j) = j from by omega])⟩, ?_⟩
      rw [h2xy, hz2, hu2]
      have hassemble : (1 : GaussianInt) * (((((s : ℕ) : ℤ) ^ 2 : ℤ) : GaussianInt)
          * (π ^ (2 * j) * (star π) ^ (2 * (2 * a - j)) * χ ^ 2 * (star χ) ^ 2))
          = ((((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (2 * j) * (q : ℤ) ^ 2 : ℤ) : GaussianInt)
            * star (π ^ (4 * (a - j))) := by
        rw [star_pow, mul_assoc (π ^ (2 * j) * (star π) ^ (2 * (2 * a - j))), hfold, hχq]
        push_cast
        ring
      rw [hassemble, im_int_mul, im_star_eq]
      push_cast
      ring
    · -- j ≥ a: direct side, e = j − a; e = 0 excluded by hne
      rcases Nat.eq_or_lt_of_le hja with hje | hja'
      · -- j = a: the real case, 2xy = 0
        exfalso
        subst hje
        have hfold := fold_le p A B hpAB a a le_rfl
        rw [show a - a = 0 from by omega] at hfold
        apply hne
        rw [h2xy, hz2, hu2]
        have hassemble : (1 : GaussianInt) * (((((s : ℕ) : ℤ) ^ 2 : ℤ) : GaussianInt)
            * (π ^ (2 * a) * (star π) ^ (2 * (2 * a - a)) * χ ^ 2 * (star χ) ^ 2))
            = ((((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (2 * a) * (q : ℤ) ^ 2 : ℤ) : GaussianInt) := by
          rw [show π ^ (2 * a) * (star π) ^ (2 * (2 * a - a)) * χ ^ 2 * (star χ) ^ 2
            = (π ^ (2 * a) * (star π) ^ (2 * (2 * a - a))) * (χ ^ 2 * (star χ) ^ 2) from by ring]
          rw [hfold, hχq]
          push_cast
          ring
        rw [hassemble]
        exact Zsqrtd.im_intCast _
      · have hfold := fold_gt p A B hpAB a j hja' hj
        refine ⟨1, (p : ℤ) ^ (2 * (2 * a - j)) * ((q : ℤ) ^ 2 * ((π ^ (4 * (j - a))).im)),
          Or.inl rfl, Or.inr ⟨j - a, by omega, by omega,
            Or.inl (by rw [show a - (j - a) = 2 * a - j from by omega])⟩, ?_⟩
        rw [h2xy, hz2, hu2]
        have hassemble : (1 : GaussianInt) * (((((s : ℕ) : ℤ) ^ 2 : ℤ) : GaussianInt)
            * (π ^ (2 * j) * (star π) ^ (2 * (2 * a - j)) * χ ^ 2 * (star χ) ^ 2))
            = ((((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (2 * (2 * a - j)) * (q : ℤ) ^ 2 : ℤ) : GaussianInt)
              * (π ^ (4 * (j - a))) := by
          rw [show π ^ (2 * j) * (star π) ^ (2 * (2 * a - j)) * χ ^ 2 * (star χ) ^ 2
            = (π ^ (2 * j) * (star π) ^ (2 * (2 * a - j))) * (χ ^ 2 * (star χ) ^ 2) from by ring]
          rw [hfold, hχq]
          push_cast
          ring
        rw [hassemble, im_int_mul]
        push_cast
        ring
  · -- u² = 1, k = 2
    rcases Nat.lt_or_ge j a with hja | hja
    · have hfold := fold_le p A B hpAB a j (by omega)
      refine ⟨-1, (p : ℤ) ^ (2 * j) * ((π ^ (4 * (a - j)) * (star χ) ^ 4).im),
        Or.inr rfl, Or.inr ⟨a - j, by omega, by omega,
          Or.inr (Or.inr (by rw [show a - (a - j) = j from by omega]))⟩, ?_⟩
      rw [h2xy, hz2, hu2]
      have hassemble : (1 : GaussianInt) * (((((s : ℕ) : ℤ) ^ 2 : ℤ) : GaussianInt)
          * (π ^ (2 * j) * (star π) ^ (2 * (2 * a - j)) * χ ^ 4 * (star χ) ^ 0))
          = ((((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (2 * j) : ℤ) : GaussianInt)
          * star (π ^ (4 * (a - j)) * (star χ) ^ 4) := by
        rw [star_mul, star_pow, star_pow, star_star]
        simp only [pow_zero, mul_one]
        rw [hfold]
        push_cast
        ring
      rw [hassemble, im_int_mul, im_star_eq]
      push_cast
      ring
    · rcases Nat.eq_or_lt_of_le hja with hje | hja'
      · subst hje
        have hfold := fold_le p A B hpAB a a le_rfl
        rw [show a - a = 0 from by omega] at hfold
        refine ⟨1, (p : ℤ) ^ (2 * a) * ((χ ^ 4).im),
          Or.inl rfl, Or.inl rfl, ?_⟩
        rw [h2xy, hz2, hu2]
        have hassemble : (1 : GaussianInt) * (((((s : ℕ) : ℤ) ^ 2 : ℤ) : GaussianInt)
            * (π ^ (2 * a) * (star π) ^ (2 * (2 * a - a)) * χ ^ 4 * (star χ) ^ 0))
            = ((((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (2 * a) : ℤ) : GaussianInt)
            * χ ^ 4 := by
          simp only [pow_zero, mul_one]
          rw [hfold]
          push_cast
          ring
        rw [hassemble, im_int_mul]
        push_cast
        ring
      · have hfold := fold_gt p A B hpAB a j hja' hj
        refine ⟨1, (p : ℤ) ^ (2 * (2 * a - j)) * ((π ^ (4 * (j - a)) * χ ^ 4).im),
          Or.inl rfl, Or.inr ⟨j - a, by omega, by omega,
            Or.inr (Or.inl (by rw [show a - (j - a) = 2 * a - j from by omega]))⟩, ?_⟩
        rw [h2xy, hz2, hu2]
        have hassemble : (1 : GaussianInt) * (((((s : ℕ) : ℤ) ^ 2 : ℤ) : GaussianInt)
            * (π ^ (2 * j) * (star π) ^ (2 * (2 * a - j)) * χ ^ 4 * (star χ) ^ 0))
            = ((((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (2 * (2 * a - j)) : ℤ) : GaussianInt)
            * (π ^ (4 * (j - a)) * χ ^ 4) := by
          simp only [pow_zero, mul_one]
          rw [hfold]
          push_cast
          ring
        rw [hassemble, im_int_mul]
        push_cast
        ring
  · -- u² = -1, k = 0
    rcases Nat.lt_or_ge j a with hja | hja
    · have hfold := fold_le p A B hpAB a j (by omega)
      refine ⟨1, (p : ℤ) ^ (2 * j) * ((π ^ (4 * (a - j)) * χ ^ 4).im),
        Or.inl rfl, Or.inr ⟨a - j, by omega, by omega,
          Or.inr (Or.inl (by rw [show a - (a - j) = j from by omega]))⟩, ?_⟩
      rw [h2xy, hz2, hu2]
      have hassemble : (-1 : GaussianInt) * (((((s : ℕ) : ℤ) ^ 2 : ℤ) : GaussianInt)
          * (π ^ (2 * j) * (star π) ^ (2 * (2 * a - j)) * χ ^ 0 * (star χ) ^ 4))
          = -(((((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (2 * j) : ℤ) : GaussianInt)
          * star (π ^ (4 * (a - j)) * χ ^ 4)) := by
        rw [star_mul, star_pow, star_pow]
        simp only [pow_zero, mul_one]
        rw [hfold]
        push_cast
        ring
      rw [hassemble, Zsqrtd.im_neg, im_int_mul, im_star_eq]
      push_cast
      ring
    · rcases Nat.eq_or_lt_of_le hja with hje | hja'
      · subst hje
        have hfold := fold_le p A B hpAB a a le_rfl
        rw [show a - a = 0 from by omega] at hfold
        refine ⟨1, (p : ℤ) ^ (2 * a) * ((χ ^ 4).im),
          Or.inl rfl, Or.inl rfl, ?_⟩
        rw [h2xy, hz2, hu2]
        have hassemble : (-1 : GaussianInt) * (((((s : ℕ) : ℤ) ^ 2 : ℤ) : GaussianInt)
            * (π ^ (2 * a) * (star π) ^ (2 * (2 * a - a)) * χ ^ 0 * (star χ) ^ 4))
            = -(((((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (2 * a) : ℤ) : GaussianInt)
            * star (χ ^ 4)) := by
          rw [star_pow]
          simp only [pow_zero, mul_one]
          rw [hfold]
          push_cast
          ring
        rw [hassemble, Zsqrtd.im_neg, im_int_mul, im_star_eq]
        push_cast
        ring
      · have hfold := fold_gt p A B hpAB a j hja' hj
        refine ⟨-1, (p : ℤ) ^ (2 * (2 * a - j)) * ((π ^ (4 * (j - a)) * (star χ) ^ 4).im),
          Or.inr rfl, Or.inr ⟨j - a, by omega, by omega,
            Or.inr (Or.inr (by rw [show a - (j - a) = 2 * a - j from by omega]))⟩, ?_⟩
        rw [h2xy, hz2, hu2]
        have hassemble : (-1 : GaussianInt) * (((((s : ℕ) : ℤ) ^ 2 : ℤ) : GaussianInt)
            * (π ^ (2 * j) * (star π) ^ (2 * (2 * a - j)) * χ ^ 0 * (star χ) ^ 4))
            = -(((((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (2 * (2 * a - j)) : ℤ) : GaussianInt)
            * (π ^ (4 * (j - a)) * (star χ) ^ 4)) := by
          simp only [pow_zero, mul_one]
          rw [hfold]
          push_cast
          ring
        rw [hassemble, Zsqrtd.im_neg, im_int_mul]
        push_cast
        ring
  · -- u² = -1, k = 1
    have hχq : χ ^ 2 * (star χ) ^ 2 = ((((q : ℤ) ^ 2 : ℤ)) : GaussianInt) := by
      rw [← mul_pow, hχsplit]
      push_cast
      ring
    rcases Nat.lt_or_ge j a with hja | hja
    · have hfold := fold_le p A B hpAB a j (by omega)
      refine ⟨1, (p : ℤ) ^ (2 * j) * ((q : ℤ) ^ 2 * ((π ^ (4 * (a - j))).im)),
        Or.inl rfl, Or.inr ⟨a - j, by omega, by omega,
          Or.inl (by rw [show a - (a - j) = j from by omega])⟩, ?_⟩
      rw [h2xy, hz2, hu2]
      have hassemble : (-1 : GaussianInt) * (((((s : ℕ) : ℤ) ^ 2 : ℤ) : GaussianInt)
          * (π ^ (2 * j) * (star π) ^ (2 * (2 * a - j)) * χ ^ 2 * (star χ) ^ 2))
          = -(((((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (2 * j) * (q : ℤ) ^ 2 : ℤ) : GaussianInt)
          * star (π ^ (4 * (a - j)))) := by
        rw [star_pow, mul_assoc (π ^ (2 * j) * (star π) ^ (2 * (2 * a - j))), hfold, hχq]
        push_cast
        ring
      rw [hassemble, Zsqrtd.im_neg, im_int_mul, im_star_eq]
      push_cast
      ring
    · rcases Nat.eq_or_lt_of_le hja with hje | hja'
      · subst hje
        have hfold := fold_le p A B hpAB a a le_rfl
        rw [show a - a = 0 from by omega] at hfold
        exfalso
        apply hne
        rw [h2xy, hz2, hu2]
        have hassemble : (-1 : GaussianInt) * (((((s : ℕ) : ℤ) ^ 2 : ℤ) : GaussianInt)
            * (π ^ (2 * a) * (star π) ^ (2 * (2 * a - a)) * χ ^ 2 * (star χ) ^ 2))
            = -(((((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (2 * a) * (q : ℤ) ^ 2 : ℤ) : GaussianInt)) := by
          rw [show π ^ (2 * a) * (star π) ^ (2 * (2 * a - a)) * χ ^ 2 * (star χ) ^ 2
            = (π ^ (2 * a) * (star π) ^ (2 * (2 * a - a))) * (χ ^ 2 * (star χ) ^ 2) from by ring]
          rw [hfold, hχq]
          push_cast
          ring
        rw [hassemble, Zsqrtd.im_neg, Zsqrtd.im_intCast]
        ring
      · have hfold := fold_gt p A B hpAB a j hja' hj
        refine ⟨-1, (p : ℤ) ^ (2 * (2 * a - j)) * ((q : ℤ) ^ 2 * ((π ^ (4 * (j - a))).im)),
          Or.inr rfl, Or.inr ⟨j - a, by omega, by omega,
            Or.inl (by rw [show a - (j - a) = 2 * a - j from by omega])⟩, ?_⟩
        rw [h2xy, hz2, hu2]
        have hassemble : (-1 : GaussianInt) * (((((s : ℕ) : ℤ) ^ 2 : ℤ) : GaussianInt)
            * (π ^ (2 * j) * (star π) ^ (2 * (2 * a - j)) * χ ^ 2 * (star χ) ^ 2))
            = -(((((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (2 * (2 * a - j)) * (q : ℤ) ^ 2 : ℤ) : GaussianInt)
            * (π ^ (4 * (j - a)))) := by
          rw [show π ^ (2 * j) * (star π) ^ (2 * (2 * a - j)) * χ ^ 2 * (star χ) ^ 2
            = (π ^ (2 * j) * (star π) ^ (2 * (2 * a - j))) * (χ ^ 2 * (star χ) ^ 2) from by ring]
          rw [hfold, hχq]
          push_cast
          ring
        rw [hassemble, Zsqrtd.im_neg, im_int_mul]
        push_cast
        ring
  · -- u² = -1, k = 2
    rcases Nat.lt_or_ge j a with hja | hja
    · have hfold := fold_le p A B hpAB a j (by omega)
      refine ⟨1, (p : ℤ) ^ (2 * j) * ((π ^ (4 * (a - j)) * (star χ) ^ 4).im),
        Or.inl rfl, Or.inr ⟨a - j, by omega, by omega,
          Or.inr (Or.inr (by rw [show a - (a - j) = j from by omega]))⟩, ?_⟩
      rw [h2xy, hz2, hu2]
      have hassemble : (-1 : GaussianInt) * (((((s : ℕ) : ℤ) ^ 2 : ℤ) : GaussianInt)
          * (π ^ (2 * j) * (star π) ^ (2 * (2 * a - j)) * χ ^ 4 * (star χ) ^ 0))
          = -(((((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (2 * j) : ℤ) : GaussianInt)
          * star (π ^ (4 * (a - j)) * (star χ) ^ 4)) := by
        rw [star_mul, star_pow, star_pow, star_star]
        simp only [pow_zero, mul_one]
        rw [hfold]
        push_cast
        ring
      rw [hassemble, Zsqrtd.im_neg, im_int_mul, im_star_eq]
      push_cast
      ring
    · rcases Nat.eq_or_lt_of_le hja with hje | hja'
      · subst hje
        have hfold := fold_le p A B hpAB a a le_rfl
        rw [show a - a = 0 from by omega] at hfold
        refine ⟨-1, (p : ℤ) ^ (2 * a) * ((χ ^ 4).im),
          Or.inr rfl, Or.inl rfl, ?_⟩
        rw [h2xy, hz2, hu2]
        have hassemble : (-1 : GaussianInt) * (((((s : ℕ) : ℤ) ^ 2 : ℤ) : GaussianInt)
            * (π ^ (2 * a) * (star π) ^ (2 * (2 * a - a)) * χ ^ 4 * (star χ) ^ 0))
            = -(((((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (2 * a) : ℤ) : GaussianInt)
            * χ ^ 4) := by
          simp only [pow_zero, mul_one]
          rw [hfold]
          push_cast
          ring
        rw [hassemble, Zsqrtd.im_neg, im_int_mul]
        push_cast
        ring
      · have hfold := fold_gt p A B hpAB a j hja' hj
        refine ⟨-1, (p : ℤ) ^ (2 * (2 * a - j)) * ((π ^ (4 * (j - a)) * χ ^ 4).im),
          Or.inr rfl, Or.inr ⟨j - a, by omega, by omega,
            Or.inr (Or.inl (by rw [show a - (j - a) = 2 * a - j from by omega]))⟩, ?_⟩
        rw [h2xy, hz2, hu2]
        have hassemble : (-1 : GaussianInt) * (((((s : ℕ) : ℤ) ^ 2 : ℤ) : GaussianInt)
            * (π ^ (2 * j) * (star π) ^ (2 * (2 * a - j)) * χ ^ 4 * (star χ) ^ 0))
            = -(((((s : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ (2 * (2 * a - j)) : ℤ) : GaussianInt)
            * (π ^ (4 * (j - a)) * χ ^ 4)) := by
          simp only [pow_zero, mul_one]
          rw [hfold]
          push_cast
          ring
        rw [hassemble, Zsqrtd.im_neg, im_int_mul]
        push_cast
        ring

/-- π does not divide the conjugate of π^(4a)·w⁴ for w a conjugate of χ,
generic in a ≥ 1. -/
lemma pi_not_dvd_star_paw4 (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (a : ℕ) (ha : 1 ≤ a) :
    ¬ (⟨A, B⟩ : GaussianInt) ∣
      star (((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((⟨C, D⟩ : GaussianInt) ^ 4)) := by
  intro h
  rw [star_mul, star_pow, star_pow] at h
  have hπprime : Prime (⟨A, B⟩ : GaussianInt) := prime_pi p A B hpAB
  rcases hπprime.dvd_mul.mp h with h1 | h1
  · have h2 := hπprime.dvd_of_dvd_pow h1
    have hstar : star (⟨C, D⟩ : GaussianInt) = (⟨C, -D⟩ : GaussianInt) := by
      ext <;> simp
    rw [hstar] at h2
    have hqCD2 : C ^ 2 + (-D) ^ 2 = q := by rw [neg_pow]; ring_nf; linarith [hqCD]
    exact not_dvd_other p q hpq A B C (-D) hpAB hqCD2 h2
  · exact pi_not_dvd_star p hpodd A B hpAB (hπprime.dvd_of_dvd_pow h1)

/-- p² never divides c·Im(π^(4a)·χ⁴) for p ∤ c, generic in a ≥ 1. -/
lemma p2_not_dvd_M8a (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (a : ℕ) (ha : 1 ≤ a)
    (c m : ℤ) (hc : ¬ (p : ℤ) ∣ c)
    (h : c * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im)
      = (p : ℤ) ^ 2 * m) : False := by
  refine p2_extract_kill p hpodd A B hpAB
    (((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((⟨C, D⟩ : GaussianInt) ^ 4)) c m hc
    (Dvd.dvd.mul_right ((dvd_pow_self _ (by omega : 4 * a ≠ 0))) _)
    (pi_not_dvd_star_paw4 p q hpodd hpq A B C D hpAB hqCD a ha) h

/-- p² never divides c·Im(π^(4a)·χ̄⁴) for p ∤ c, generic in a ≥ 1. -/
lemma p2_not_dvd_M9a (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (a : ℕ) (ha : 1 ≤ a)
    (c m : ℤ) (hc : ¬ (p : ℤ) ∣ c)
    (h : c * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((star (⟨C, D⟩ : GaussianInt)) ^ 4)).im)
      = (p : ℤ) ^ 2 * m) : False := by
  have hstar : (star (⟨C, D⟩ : GaussianInt)) = (⟨C, -D⟩ : GaussianInt) := by ext <;> simp
  have hqCD2 : C ^ 2 + (-D) ^ 2 = q := by rw [neg_pow]; ring_nf; linarith [hqCD]
  refine p2_extract_kill p hpodd A B hpAB
    (((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((⟨C, -D⟩ : GaussianInt) ^ 4)) c m hc
    (Dvd.dvd.mul_right ((dvd_pow_self _ (by omega : 4 * a ≠ 0))) _)
    (pi_not_dvd_star_paw4 p q hpodd hpq A B C (-D) hpAB hqCD2 a ha) ?_
  rw [← hstar]
  exact h

/-- p² never divides c·I₄ₐ for p ∤ c, generic in a ≥ 1. -/
lemma p2_not_dvd_I4a
    (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p)
    (a : ℕ) (ha : 1 ≤ a)
    (c m : ℤ) (hc : ¬ (p : ℤ) ∣ c)
    (h : c * (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) = (p : ℤ) ^ 2 * m) : False := by
  refine p2_extract_kill p hpodd A B hpAB ((⟨A, B⟩ : GaussianInt) ^ (4 * a)) c m hc
    (dvd_pow_self _ (by omega : 4 * a ≠ 0))
    ?_ h
  intro hd
  rw [star_pow] at hd
  have hπprime : Prime (⟨A, B⟩ : GaussianInt) := prime_pi p A B hpAB
  exact pi_not_dvd_star p hpodd A B hpAB (hπprime.dvd_of_dvd_pow hd)

/-- The J-cofactor is never a unit for a ≥ 2: |I₄ₐ| = |I₄| would force
(p^(2a) − R)(p^(2a) + R) = I₄² < p⁴ ≤ p^(2a), impossible by size. -/
lemma Ja_unit_kill
    (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p)
    (a : ℕ) (ha : 2 ≤ a)
    (h : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) ^ 2 = ((((⟨A, B⟩ : GaussianInt) ^ 4).im)) ^ 2) : False := by
  have hna := norm_coord p A B hpAB a
  have hn1 := norm4_coord p A B hpAB
  have hR4odd := re4_odd' p hpodd A B hpAB
  have hI40 : (((⟨A, B⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero p hpodd A B hpAB
  have hR41 : (1 : ℤ) ≤ (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 := by
    have hR40 : (((⟨A, B⟩ : GaussianInt) ^ 4).re) ≠ 0 := odd_ne_zero hR4odd
    rcases lt_or_gt_of_ne hR40 with h' | h' <;> nlinarith
  have hI41 : (1 : ℤ) ≤ (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 := by
    rcases lt_or_gt_of_ne hI40 with h' | h' <;> nlinarith
  set R : ℤ := (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) with hRdef
  set P : ℤ := (p : ℤ) ^ (2 * a) with hPdef
  have hsq : (p : ℤ) ^ (4 * a) = P ^ 2 := by
    rw [hPdef, ← pow_mul]
    ring_nf
  have hF1 : R ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 = P ^ 2 := by
    rw [← h, ← hsq]
    exact hna
  have hp1 : (1 : ℤ) ≤ (p : ℤ) := by
    have := hp.out.two_le
    omega
  have hcmp : (p : ℤ) ^ 4 ≤ P := by
    rw [hPdef]
    exact pow_le_pow_right₀ hp1 (by omega)
  have hIP : (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 ≤ P - 1 := by
    have h4 : (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 ≤ (p : ℤ) ^ 4 - 1 := by linarith [hn1, hR41]
    linarith
  have hP0 : (0 : ℤ) < P := by
    rw [hPdef]
    positivity
  have hRP : R < P ∧ -P < R := by
    constructor <;> nlinarith [hF1, hI41, hP0]
  have hprod : (P - R - 1) * (P + R - 1) ≥ 0 :=
    mul_nonneg (by omega) (by omega)
  nlinarith [hF1, hIP, hprod, hP0]

/-- T-form (p²-row, M7) cells, generic in the p²-cofactor: the second
equation and the norm give v·(9R₁₂² + I₁₂²) = 18g·q²·R₁₂, and
p² ∣ Y from the first equation forces p² ∣ 18g·q². Covers all seven
p²-divisible rows at once. -/
lemma row_M7a_kill (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (a : ℕ) (ha : 1 ≤ a)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Mb f g e : ℤ) (hg : g = 1 ∨ g = -1) (he : e = 1 ∨ e = -1)
    (h1 : 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) = f * ((p : ℤ) ^ 2 * Mb))
    (h2 : 3 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) + e * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
      = g * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im))) : False := by
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  obtain ⟨hpR12, hpI12⟩ := p_not_dvd_coords p hpodd A B hpAB a ha
  have hI120 : (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) ≠ 0 := by
    intro h0
    exact hpI12 (h0 ▸ dvd_zero _)
  have hR120 : (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) ≠ 0 := fun h0 => hpR12 (h0 ▸ dvd_zero _)
  have hY0 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero q hqodd C D hqCD
  have hq4c : (((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 + (((⟨C, D⟩ : GaussianInt) ^ 4).im) ^ 2 = (q : ℤ) ^ 4 := norm4_coord q C D hqCD
  have hcop := coprime_coords p hpodd A B hpAB a ha
  have hc2 : IsCoprime ((p : ℤ)) 2 :=
    (hpP.coprime_iff_not_dvd).mpr (fun hd' => by
      have h2' : p ∣ 2 := by exact_mod_cast hd'
      have := Nat.le_of_dvd (by norm_num) h2'
      have := hp.out.two_le
      omega)
  have hI3Y : (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) ∣ 3 * (((⟨C, D⟩ : GaussianInt) ^ 4).im) := by
    refine (hcop.symm).dvd_of_dvd_mul_right ?_
    exact ⟨g * (q : ℤ) ^ 2 - e * (((⟨C, D⟩ : GaussianInt) ^ 4).re), by linear_combination h2⟩
  obtain ⟨v, hv⟩ := hI3Y
  have hvX : (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) * v + e * (((⟨C, D⟩ : GaussianInt) ^ 4).re) = g * (q : ℤ) ^ 2 := by
    have h0 : (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) * v + e * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) - g * (q : ℤ) ^ 2) = 0 := by
      linear_combination h2 - (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) * hv
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hI120
    · linarith
  have hv0 : v ≠ 0 := by
    rintro rfl
    simp at hv
    exact hY0 (by linarith [hv])
  have hX2 : 9 * (((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 = 9 * (g * (q : ℤ) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) * v) ^ 2 := by
    have hex : e * (((⟨C, D⟩ : GaussianInt) ^ 4).re) = g * (q : ℤ) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) * v := by linarith [hvX]
    have hsq : (e * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) ^ 2 = (g * (q : ℤ) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) * v) ^ 2 := by rw [hex]
    rcases he with rfl | rfl <;> linear_combination 9 * hsq
  have hY2 : (3 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) ^ 2 = (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) ^ 2 * v ^ 2 := by
    rw [hv]; ring
  have hnorm : v * (v * (9 * (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) ^ 2) - 18 * g * (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) = 0 := by
    rcases hg with rfl | rfl <;> linear_combination 9 * hq4c - hX2 - hY2
  have hkey : v * (9 * (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) ^ 2) = 18 * g * (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) := by
    rcases mul_eq_zero.mp hnorm with h | h
    · exact absurd h hv0
    · linarith
  have hR12v : (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) ∣ v := by
    have hd : (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) ∣ v * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) ^ 2) := by
      refine ⟨18 * g * (q : ℤ) ^ 2 - v * 9 * (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re), ?_⟩
      linear_combination hkey
    have hcRI2 : IsCoprime ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) ^ 2) := hcop.pow_right
    exact hcRI2.dvd_of_dvd_mul_right hd
  obtain ⟨u, hu⟩ := hR12v
  have hu18 : u * (9 * (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) ^ 2) = 18 * g * (q : ℤ) ^ 2 := by
    have h0 : (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) * (u * (9 * (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) ^ 2) - 18 * g * (q : ℤ) ^ 2) = 0 := by
      linear_combination hkey - (9 * (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) ^ 2) * hu
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hR120
    · linarith
  -- p² ∣ Y from h1, then p² ∣ v, p² ∣ u, p² ∣ 18gq²
  have hp2Y : (p : ℤ) ^ 2 ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) := by
    have hc : IsCoprime ((p : ℤ) ^ 2) (2 * (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) :=
      (hc2.mul_right ((hpP.coprime_iff_not_dvd).mpr hpR12)).pow_left
    refine hc.dvd_of_dvd_mul_right ?_
    exact ⟨f * Mb, by linear_combination h1⟩
  have hp2v : (p : ℤ) ^ 2 ∣ v := by
    have hd : (p : ℤ) ^ 2 ∣ (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) * v := by
      obtain ⟨y2, hy2⟩ := hp2Y
      exact ⟨3 * y2, by rw [← hv, hy2]; ring⟩
    have hcI : IsCoprime ((p : ℤ) ^ 2) ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) :=
      ((hpP.coprime_iff_not_dvd).mpr hpI12).pow_left
    exact hcI.dvd_of_dvd_mul_left hd
  have hp2u : (p : ℤ) ^ 2 ∣ u := by
    obtain ⟨w2, hw2⟩ := hp2v
    have hd : (p : ℤ) ^ 2 ∣ (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) * u := ⟨w2, by rw [← hu, hw2]⟩
    have hcR : IsCoprime ((p : ℤ) ^ 2) ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) :=
      ((hpP.coprime_iff_not_dvd).mpr hpR12).pow_left
    exact hcR.dvd_of_dvd_mul_left hd
  -- final: p² ∣ 18gq²
  obtain ⟨u2, hu2⟩ := hp2u
  have hpdvd : (p : ℤ) ∣ 18 * g * (q : ℤ) ^ 2 := by
    refine dvd_trans ⟨(p : ℤ), by ring⟩ (⟨u2 * (9 * (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) ^ 2), ?_⟩ :
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

/-- Generic mixed-pair valuation kill: both partners p²-divisible forces
p⁴ ∣ q⁴. -/
lemma mixed_p2p2_a (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (a : ℕ) (ha : 1 ≤ a)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (N1 N2 f g : ℤ)
    (hIX : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) = f * ((p : ℤ) ^ 2 * N1))
    (hRY : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) = g * ((p : ℤ) ^ 2 * N2)) : False := by
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  obtain ⟨hpR, hpI⟩ := p_not_dvd_coords p hpodd A B hpAB a ha
  have hq4c : ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) ^ 2 + ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) ^ 2 = (q : ℤ) ^ 4 := norm4_coord q C D hqCD
  have hp2X : (p : ℤ) ^ 2 ∣ ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) := by
    have hc : IsCoprime ((p : ℤ) ^ 2) (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im))) :=
      ((hpP.coprime_iff_not_dvd).mpr hpI).pow_left
    exact hc.dvd_of_dvd_mul_left ⟨f * N1, by linear_combination hIX⟩
  have hp2Y : (p : ℤ) ^ 2 ∣ ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) := by
    have hc : IsCoprime ((p : ℤ) ^ 2) (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re))) :=
      ((hpP.coprime_iff_not_dvd).mpr hpR).pow_left
    exact hc.dvd_of_dvd_mul_left ⟨g * N2, by linear_combination hRY⟩
  obtain ⟨x, hx⟩ := hp2X
  obtain ⟨y, hy⟩ := hp2Y
  have hdq : (p : ℤ) ∣ (q : ℤ) ^ 4 := by
    refine (dvd_pow_self _ (by norm_num : (4 : ℕ) ≠ 0)).trans ?_
    exact ⟨x ^ 2 + y ^ 2, by rw [← hq4c, hx, hy]; ring⟩
  have hq' : (p : ℤ) ∣ (q : ℤ) := hpP.dvd_of_dvd_pow hdq
  have hnat : p ∣ q := by exact_mod_cast hq'
  exact hpq ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp hnat)

/-- Generic mixed-pair pinch: I₄ₐX = f·q²I₄ₐ forces X = ±q², so Y = 0. -/
lemma mixed_c1_M7a (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (a : ℕ) (ha : 1 ≤ a)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (f : ℤ) (hf : f = 1 ∨ f = -1)
    (hIX : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) = f * ((q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))) : False := by
  obtain ⟨hpR, hpI⟩ := p_not_dvd_coords p hpodd A B hpAB a ha
  have hI0 : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) ≠ 0 := by
    intro h0
    exact hpI (h0 ▸ dvd_zero _)
  have hY0 : ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) ≠ 0 := im4_ne_zero q hqodd C D hqCD
  have hq4c : ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) ^ 2 + ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) ^ 2 = (q : ℤ) ^ 4 := norm4_coord q C D hqCD
  have hf2 : f ^ 2 = 1 := by rcases hf with rfl | rfl <;> norm_num
  have hX : ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) = f * (q : ℤ) ^ 2 := by
    have h0 : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * (((((⟨C, D⟩ : GaussianInt) ^ 4).re)) - f * (q : ℤ) ^ 2) = 0 := by linear_combination hIX
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hI0
    · linarith
  have hXsq : ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) ^ 2 = (q : ℤ) ^ 4 := by
    rw [hX]; linear_combination (q : ℤ) ^ 4 * hf2
  have hY2 : ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) ^ 2 = 0 := by linarith
  exact hY0 (pow_eq_zero_iff two_ne_zero |>.mp hY2)

/-- z² + 1 = w² is impossible for w ≥ 2 (uniform copy). -/
lemma consec_sq_kill_u (z w : ℤ) (hw : 2 ≤ w) (h : z ^ 2 + 1 = w ^ 2) : False := by
  have hfact : (w - z) * (w + z) = 1 := by linear_combination -h
  rcases Int.eq_one_or_neg_one_of_mul_eq_one' hfact with ⟨h1, h2⟩ | ⟨h1, h2⟩ <;> omega

/-- R₄ₐ is never ±1 for a ≥ 1: I₄ₐ² + 1 = (p^(2a))² is a consecutive-square
collision. -/
lemma Ra_unit_kill
    (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p)
    (a : ℕ) (ha : 1 ≤ a)
    (h : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) ^ 2 = 1) : False := by
  have hna := norm_coord p A B hpAB a
  have hsq : (p : ℤ) ^ (4 * a) = ((p : ℤ) ^ (2 * a)) ^ 2 := by
    rw [← pow_mul]; ring_nf
  have hp1 : (2 : ℤ) ≤ (p : ℤ) := by exact_mod_cast hp.out.two_le
  have hP2 : (2 : ℤ) ≤ (p : ℤ) ^ (2 * a) := by
    calc (2 : ℤ) ≤ (p : ℤ) := hp1
    _ = (p : ℤ) ^ 1 := (pow_one _).symm
    _ ≤ (p : ℤ) ^ (2 * a) := pow_le_pow_right₀ (by omega) (by omega)
  exact consec_sq_kill_u ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) ((p : ℤ) ^ (2 * a)) hP2
    (by rw [← hsq]; linear_combination hna - h)

/-- The M7ₐ chain: R₄ₐY = g·q²·I₄ₐ yields Y = I₄ₐ·y with R₄ₐ·y = g·q². -/
lemma M7a_chain (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (a : ℕ) (ha : 1 ≤ a)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (g : ℤ)
    (hRY : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) = g * ((q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))) :
    ∃ y2 : ℤ, ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * y2 ∧ ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * y2 = g * (q : ℤ) ^ 2 := by
  obtain ⟨hpR, hpI⟩ := p_not_dvd_coords p hpodd A B hpAB a ha
  have hI0 : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) ≠ 0 := by
    intro h0
    exact hpI (h0 ▸ dvd_zero _)
  have hcop := coprime_coords p hpodd A B hpAB a ha
  have hIY : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) ∣ ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) := by
    have hd : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) ∣ ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) :=
      ⟨g * (q : ℤ) ^ 2, by linear_combination hRY⟩
    exact (hcop.symm).dvd_of_dvd_mul_right hd
  obtain ⟨y2, hy2⟩ := hIY
  refine ⟨y2, hy2, ?_⟩
  have h0 : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * y2 - g * (q : ℤ) ^ 2) = 0 := by
    linear_combination hRY - ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * hy2
  rcases mul_eq_zero.mp h0 with h | h
  · exact absurd h hI0
  · linarith

set_option maxHeartbeats 800000 in
/-- Full M7ₐ classification: R₄ₐY = g·q²·I₄ₐ forces R₄ₐ = ±q² with
Y = ±g·I₄ₐ — the unit branch dies by consecutive squares and the ±q branch
by q ∤ im₄(χ). -/
lemma M7a_classify (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (a : ℕ) (ha : 1 ≤ a)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (g : ℤ) (hg : g = 1 ∨ g = -1)
    (hRY : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) = g * ((q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))) :
    ∃ ε : ℤ, (ε = 1 ∨ ε = -1) ∧ ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) = ε * (q : ℤ) ^ 2
      ∧ ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) = ε * g * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) := by
  have hg2 : g ^ 2 = 1 := by rcases hg with rfl | rfl <;> norm_num
  have hqP : Prime (q : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hq.out
  have hq20 : ((q : ℤ) ^ 2) ≠ 0 :=
    pow_ne_zero _ (Int.natCast_ne_zero.mpr hq.out.pos.ne')
  obtain ⟨hqX, hqY⟩ := p_not_dvd_re4_im4 q hqodd C D hqCD
  obtain ⟨y2, hy2, hkey⟩ := M7a_chain p q hpodd hqodd a ha A B C D hpAB hqCD g hRY
  have hRq2 : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) ∣ (q : ℤ) ^ 2 := by
    have hd1 : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) ∣ g * (q : ℤ) ^ 2 :=
      ⟨y2, by linear_combination -hkey⟩
    have hgg : g * (g * (q : ℤ) ^ 2) = (q : ℤ) ^ 2 := by
      rcases hg with rfl | rfl <;> ring
    exact hgg ▸ hd1.mul_left g
  obtain ⟨i, hi, hass⟩ := (dvd_prime_pow hqP 2).mp hRq2
  interval_cases i
  · -- unit: dead by consecutive squares
    exfalso
    rw [pow_zero] at hass
    have hR2 : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) ^ 2 = 1 := by
      rcases Int.isUnit_iff.mp (associated_one_iff_isUnit.mp hass) with h1 | h1 <;>
        rw [h1] <;> norm_num
    exact Ra_unit_kill p hpodd A B hpAB a ha hR2
  · -- ±q: dead by q ∤ Y
    exfalso
    rcases Int.associated_iff.mp hass with h1 | h1 <;> simp only [pow_one] at h1
    · have hy : (q : ℤ) * y2 = g * (q : ℤ) ^ 2 := by linear_combination hkey - y2 * h1
      have hyq : y2 = g * (q : ℤ) := by
        have h0 : (q : ℤ) * (y2 - g * (q : ℤ)) = 0 := by linear_combination hy
        rcases mul_eq_zero.mp h0 with h | h
        · exact absurd h (by
            intro hq0
            exact hq.out.pos.ne' (by exact_mod_cast hq0))
        · linarith
      exact hqY ⟨g * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)), by rw [hy2, hyq]; ring⟩
    · have hy : (q : ℤ) * y2 = -(g * (q : ℤ) ^ 2) := by
        have := hkey
        rw [h1] at this
        linarith
      have hyq : y2 = -(g * (q : ℤ)) := by
        have h0 : (q : ℤ) * (y2 + g * (q : ℤ)) = 0 := by linear_combination hy
        rcases mul_eq_zero.mp h0 with h | h
        · exact absurd h (by
            intro hq0
            exact hq.out.pos.ne' (by exact_mod_cast hq0))
        · linarith
      exact hqY ⟨-(g * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im))), by rw [hy2, hyq]; ring⟩
  · -- ±q²: the residue
    rcases Int.associated_iff.mp hass with h1 | h1
    · refine ⟨1, Or.inl rfl, by rw [h1]; ring, ?_⟩
      have hy : (q : ℤ) ^ 2 * y2 = g * (q : ℤ) ^ 2 := by linear_combination hkey - y2 * h1
      have hyq : y2 = g := by
        have h0 : (q : ℤ) ^ 2 * (y2 - g) = 0 := by linear_combination hy
        rcases mul_eq_zero.mp h0 with h | h
        · exact absurd h hq20
        · linarith
      rw [hy2, hyq]
      ring
    · refine ⟨-1, Or.inr rfl, by rw [h1]; ring, ?_⟩
      have hy : (q : ℤ) ^ 2 * y2 = -(g * (q : ℤ) ^ 2) := by
        linear_combination -hkey + y2 * h1
      have hyq : y2 = -g := by
        have h0 : (q : ℤ) ^ 2 * (y2 + g) = 0 := by linear_combination hy
        rcases mul_eq_zero.mp h0 with h | h
        · exact absurd h hq20
        · linarith
      rw [hy2, hyq]
      ring

set_option maxHeartbeats 800000 in
/-- Coefficient-2 M7ₐ chain: 2R₄ₐY = f·q²·I₄ₐ yields 2Y = I₄ₐ·w with
R₄ₐ·w = f·q². -/
lemma M7a_chain2 (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (a : ℕ) (ha : 1 ≤ a)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (f : ℤ)
    (hRY : 2 * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).im))) = f * ((q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))) :
    ∃ w : ℤ, 2 * ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * w ∧ ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * w = f * (q : ℤ) ^ 2 := by
  obtain ⟨hpR, hpI⟩ := p_not_dvd_coords p hpodd A B hpAB a ha
  have hI0 : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) ≠ 0 := by
    intro h0
    exact hpI (h0 ▸ dvd_zero _)
  have hcop := coprime_coords p hpodd A B hpAB a ha
  have hIY : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) ∣ 2 * ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) := by
    have hd : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) ∣ (2 * ((((⟨C, D⟩ : GaussianInt) ^ 4).im))) * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) :=
      ⟨f * (q : ℤ) ^ 2, by linear_combination hRY⟩
    exact (hcop.symm).dvd_of_dvd_mul_right hd
  obtain ⟨w, hw⟩ := hIY
  refine ⟨w, hw, ?_⟩
  have h0 : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * w - f * (q : ℤ) ^ 2) = 0 := by
    linear_combination hRY - ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * hw
  rcases mul_eq_zero.mp h0 with h | h
  · exact absurd h hI0
  · linarith

set_option maxHeartbeats 800000 in
/-- Coefficient-2 M7ₐ classification: only R₄ₐ = ±q² survives, with
2Y = ±f·I₄ₐ. -/
lemma M7a_classify2 (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (a : ℕ) (ha : 1 ≤ a)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (f : ℤ) (hf : f = 1 ∨ f = -1)
    (hRY : 2 * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).im))) = f * ((q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))) :
    ∃ ε : ℤ, (ε = 1 ∨ ε = -1) ∧ ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) = ε * (q : ℤ) ^ 2
      ∧ 2 * ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) = ε * f * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) := by
  have hqP : Prime (q : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hq.out
  have hq20 : ((q : ℤ) ^ 2) ≠ 0 :=
    pow_ne_zero _ (Int.natCast_ne_zero.mpr hq.out.pos.ne')
  obtain ⟨hqX, hqY⟩ := p_not_dvd_re4_im4 q hqodd C D hqCD
  obtain ⟨w, hw, hkey⟩ := M7a_chain2 p q hpodd hqodd a ha A B C D hpAB hqCD f hRY
  have hRq2 : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) ∣ (q : ℤ) ^ 2 := by
    have hd1 : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) ∣ f * (q : ℤ) ^ 2 := ⟨w, by linear_combination -hkey⟩
    have hff : f * (f * (q : ℤ) ^ 2) = (q : ℤ) ^ 2 := by
      rcases hf with rfl | rfl <;> ring
    exact hff ▸ hd1.mul_left f
  obtain ⟨i, hi, hass⟩ := (dvd_prime_pow hqP 2).mp hRq2
  interval_cases i
  · exfalso
    rw [pow_zero] at hass
    have hR2 : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) ^ 2 = 1 := by
      rcases Int.isUnit_iff.mp (associated_one_iff_isUnit.mp hass) with h1 | h1 <;>
        rw [h1] <;> norm_num
    exact Ra_unit_kill p hpodd A B hpAB a ha hR2
  · -- ±q: q ∣ 2Y, q odd → q ∣ Y, dead
    exfalso
    rcases Int.associated_iff.mp hass with h1 | h1 <;> simp only [pow_one] at h1
    · have hwq : w = f * (q : ℤ) := by
        have h0 : (q : ℤ) * (w - f * (q : ℤ)) = 0 := by
          linear_combination hkey - w * h1
        rcases mul_eq_zero.mp h0 with h | h
        · exact absurd h (by
            intro hq0
            exact hq.out.pos.ne' (by exact_mod_cast hq0))
        · linarith
      have hq2Y : (q : ℤ) ∣ 2 * ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) := ⟨f * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)), by rw [hw, hwq]; ring⟩
      rcases hqP.dvd_mul.mp hq2Y with h | h
      · have h2 : (q : ℤ) ∣ 2 := h
        have h2n : q ∣ 2 := by exact_mod_cast h2
        have := Nat.le_of_dvd (by norm_num) h2n
        have h2le := hq.out.two_le
        omega
      · exact hqY h
    · have hwq : w = -(f * (q : ℤ)) := by
        have h0 : (q : ℤ) * (w + f * (q : ℤ)) = 0 := by
          linear_combination -hkey + w * h1
        rcases mul_eq_zero.mp h0 with h | h
        · exact absurd h (by
            intro hq0
            exact hq.out.pos.ne' (by exact_mod_cast hq0))
        · linarith
      have hq2Y : (q : ℤ) ∣ 2 * ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) := ⟨-(f * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im))), by rw [hw, hwq]; ring⟩
      rcases hqP.dvd_mul.mp hq2Y with h | h
      · have h2 : (q : ℤ) ∣ 2 := h
        have h2n : q ∣ 2 := by exact_mod_cast h2
        have := Nat.le_of_dvd (by norm_num) h2n
        have h2le := hq.out.two_le
        omega
      · exact hqY h
  · -- ±q²: residue
    rcases Int.associated_iff.mp hass with h1 | h1
    · refine ⟨1, Or.inl rfl, by rw [h1]; ring, ?_⟩
      have hwq : w = f := by
        have h0 : (q : ℤ) ^ 2 * (w - f) = 0 := by
          linear_combination hkey - w * h1
        rcases mul_eq_zero.mp h0 with h | h
        · exact absurd h hq20
        · linarith
      rw [hw, hwq]
      ring
    · refine ⟨-1, Or.inr rfl, by rw [h1]; ring, ?_⟩
      have hwq : w = -f := by
        have h0 : (q : ℤ) ^ 2 * (w + f) = 0 := by
          linear_combination -hkey + w * h1
        rcases mul_eq_zero.mp h0 with h | h
        · exact absurd h hq20
        · linarith
      rw [hw, hwq]
      ring

set_option maxHeartbeats 800000 in
/-- T-core (M7ₐ-row, p²-partner) kill, generic in the cofactor. -/
lemma M7row_p2_kill (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (a : ℕ) (ha : 1 ≤ a)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (N f g e : ℤ) (hf : f = 1 ∨ f = -1) (he : e = 1 ∨ e = -1)
    (h1 : 2 * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).im))) = f * ((q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im))))
    (h2 : 3 * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).im))) + e * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).re))) = g * ((p : ℤ) ^ 2 * N)) : False := by
  have hf2 : f ^ 2 = 1 := by rcases hf with rfl | rfl <;> norm_num
  have he2 : e ^ 2 = 1 := by rcases he with rfl | rfl <;> norm_num
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  obtain ⟨hpR, hpI⟩ := p_not_dvd_coords p hpodd A B hpAB a ha
  have hna := norm_coord p A B hpAB a
  have hq4c : ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) ^ 2 + ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) ^ 2 = (q : ℤ) ^ 4 := norm4_coord q C D hqCD
  obtain ⟨ε, hε, hRa, h2Y⟩ := M7a_classify2 p q hpodd hqodd hpq a ha A B C D hpAB hqCD f hf h1
  have hε2 : ε ^ 2 = 1 := by rcases hε with rfl | rfl <;> norm_num
  have hRsq : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) ^ 2 = (q : ℤ) ^ 4 := by
    rw [hRa]
    linear_combination (q : ℤ) ^ 4 * hε2
  have hI2 : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) ^ 2 = (p : ℤ) ^ (4 * a) - (q : ℤ) ^ 4 := by
    linear_combination hna - hRsq
  have hY4 : 4 * ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) ^ 2 = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) ^ 2 := by
    have hsq : (2 * ((((⟨C, D⟩ : GaussianInt) ^ 4).im))) ^ 2 = (ε * f * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im))) ^ 2 := by rw [h2Y]
    linear_combination hsq + ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) ^ 2 * f ^ 2 * hε2 + ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) ^ 2 * hf2
  have hX4 : 4 * ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) ^ 2 = 5 * (q : ℤ) ^ 4 - (p : ℤ) ^ (4 * a) := by
    linear_combination 4 * hq4c - hY4 - hI2
  have hIa6 : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * (3 * f * (q : ℤ) ^ 2 + 2 * e * ((((⟨C, D⟩ : GaussianInt) ^ 4).re))) = 2 * g * ((p : ℤ) ^ 2 * N) := by
    linear_combination 2 * h2 - 3 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * h2Y - 3 * f * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * ε * hRa
      - 3 * f * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * (q : ℤ) ^ 2 * hε2
  have hp2D : (p : ℤ) ^ 2 ∣ (3 * f * (q : ℤ) ^ 2 + 2 * e * ((((⟨C, D⟩ : GaussianInt) ^ 4).re))) := by
    have hc : IsCoprime ((p : ℤ) ^ 2) (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im))) :=
      ((hpP.coprime_iff_not_dvd).mpr hpI).pow_left
    exact hc.dvd_of_dvd_mul_left ⟨2 * g * N, by linear_combination hIa6⟩
  obtain ⟨d, hd⟩ := hp2D
  have hp2q4 : (p : ℤ) ^ 2 ∣ 4 * (q : ℤ) ^ 4 := by
    refine ⟨-((p : ℤ)) ^ 2 * d ^ 2 + 6 * d * f * (q : ℤ) ^ 2 - (p : ℤ) ^ (4 * a - 2), ?_⟩
    have hpow : (p : ℤ) ^ (4 * a) = (p : ℤ) ^ 2 * (p : ℤ) ^ (4 * a - 2) := by
      rw [← pow_add]
      congr 1
      omega
    have hsqd : (2 * e * ((((⟨C, D⟩ : GaussianInt) ^ 4).re))) ^ 2 = ((p : ℤ) ^ 2 * d - 3 * f * (q : ℤ) ^ 2) ^ 2 := by
      rw [show 2 * e * ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) = (p : ℤ) ^ 2 * d - 3 * f * (q : ℤ) ^ 2 from by linarith [hd]]
    linear_combination -hsqd + 4 * ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) ^ 2 * he2 + hX4 - hpow
      - 9 * (q : ℤ) ^ 4 * hf2
  have hpq4 : (p : ℤ) ∣ 4 * (q : ℤ) ^ 4 :=
    (dvd_pow_self _ (by norm_num : (2 : ℕ) ≠ 0)).trans hp2q4
  rcases hpP.dvd_mul.mp hpq4 with h4 | hq4
  · have h4' : (p : ℤ) ∣ 4 := h4
    have h4n : p ∣ 4 := by exact_mod_cast h4'
    have := Nat.le_of_dvd (by norm_num) h4n
    have h2le := hp.out.two_le
    interval_cases p <;> omega
  · have hq' : (p : ℤ) ∣ (q : ℤ) := hpP.dvd_of_dvd_pow hq4
    have hnat : p ∣ q := by exact_mod_cast hq'
    exact hpq ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp hnat)

/-- T-core (M7ₐ, M7ₐ) cell: parity. -/
lemma M7row_M7_kill (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (a : ℕ) (ha : 1 ≤ a)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (f g e : ℤ) (hf : f = 1 ∨ f = -1) (hg : g = 1 ∨ g = -1) (he : e = 1 ∨ e = -1)
    (h1 : 2 * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).im))) = f * ((q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im))))
    (h2 : 3 * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).im))) + e * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).re))) = g * ((q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))) : False := by
  have hε2' := trivial
  obtain ⟨hpR, hpI⟩ := p_not_dvd_coords p hpodd A B hpAB a ha
  have hI0 : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) ≠ 0 := by
    intro h0
    exact hpI (h0 ▸ dvd_zero _)
  obtain ⟨ε, hε, hRa, h2Y⟩ := M7a_classify2 p q hpodd hqodd hpq a ha A B C D hpAB hqCD f hf h1
  have hε2 : ε ^ 2 = 1 := by rcases hε with rfl | rfl <;> norm_num
  have hkey : 2 * e * ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) = (2 * g - 3 * f) * (q : ℤ) ^ 2 := by
    have h0 : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * (2 * e * ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) - (2 * g - 3 * f) * (q : ℤ) ^ 2) = 0 := by
      linear_combination 2 * h2 - 3 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * h2Y - 3 * f * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * ε * hRa
        - 3 * f * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * (q : ℤ) ^ 2 * hε2
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hI0
    · linarith
  obtain ⟨m, hm⟩ := (odd_cast q hqodd).pow (n := 2)
  rw [hm] at hkey
  rcases hf with rfl | rfl <;> rcases hg with rfl | rfl <;> rcases he with rfl | rfl <;>
    omega

/-- Level-12 T-form cells with two p²-divisible partners die
uniformly: p² ∣ Y then p² ∣ X force p ∣ q. Generic in both
cofactors, covering 49 cells of the core at once. -/
lemma Tcore_p2p2_a (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (a : ℕ) (ha : 1 ≤ a)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Mb Md f g e : ℤ) (he : e = 1 ∨ e = -1)
    (h1 : 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) = f * ((p : ℤ) ^ 2 * Mb))
    (h2 : 3 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) + e * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)) = g * ((p : ℤ) ^ 2 * Md)) :
    False := by
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  obtain ⟨hpR12, hpI12⟩ := p_not_dvd_coords p hpodd A B hpAB a ha
  have hc2 : IsCoprime ((p : ℤ)) 2 :=
    (hpP.coprime_iff_not_dvd).mpr (fun hd' => by
      have h2' : p ∣ 2 := by exact_mod_cast hd'
      have := Nat.le_of_dvd (by norm_num) h2'
      have := hp.out.two_le
      omega)
  have hp2Y : (p : ℤ) ^ 2 ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) := by
    have hc : IsCoprime ((p : ℤ) ^ 2) (2 * (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) :=
      (hc2.mul_right ((hpP.coprime_iff_not_dvd).mpr hpR12)).pow_left
    refine hc.dvd_of_dvd_mul_right ?_
    exact ⟨f * Mb, by linear_combination h1⟩
  obtain ⟨y, hy⟩ := hp2Y
  have hIX : (p : ℤ) ^ 2 ∣ (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) := by
    have hEX : e * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re))
        = (p : ℤ) ^ 2 * (g * Md - 3 * (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) * y) := by
      linear_combination h2 - 3 * (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) * hy
    rcases he with rfl | rfl
    · exact ⟨g * Md - 3 * (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) * y, by linarith [hEX]⟩
    · exact ⟨-(g * Md - 3 * (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) * y), by linarith [hEX]⟩
  have hp2X : (p : ℤ) ^ 2 ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).re) := by
    have hc : IsCoprime ((p : ℤ) ^ 2) ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) :=
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

set_option maxHeartbeats 800000 in
/-- The generic T-form cross-pair core at rung a: partners are either
p²-divisible or the M7ₐ value. -/
lemma Tcore_a (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (a : ℕ) (ha : 1 ≤ a)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Kb Kd f g e : ℤ)
    (hf : f = 1 ∨ f = -1) (hg : g = 1 ∨ g = -1) (he : e = 1 ∨ e = -1)
    (hb : (∃ N, Kb = (p : ℤ) ^ 2 * N) ∨ Kb = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hd : (∃ N, Kd = (p : ℤ) ^ 2 * N) ∨ Kd = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (h1 : 2 * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).im))) = f * Kb)
    (h2 : 3 * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).im))) + e * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).re))) = g * Kd) : False := by
  rcases hb with ⟨N1, rfl⟩ | rfl
  · rcases hd with ⟨N2, rfl⟩ | rfl
    · exact Tcore_p2p2_a p q hpodd hqodd hpq a ha A B C D hpAB hqCD
        N1 N2 f g e he h1 h2
    · exact row_M7a_kill p q hpodd hqodd hpq a ha A B C D hpAB hqCD
        N1 f g e hg he h1 h2
  · rcases hd with ⟨N2, rfl⟩ | rfl
    · exact M7row_p2_kill p q hpodd hqodd hpq a ha A B C D hpAB hqCD
        N2 f g e hf he h1 h2
    · exact M7row_M7_kill p q hpodd hqodd hpq a ha A B C D hpAB hqCD
        f g e hf hg he h1 h2

set_option maxHeartbeats 800000 in
/-- Generic S-core, both partners p²-divisible. -/
lemma Score_p2p2_a (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (a : ℕ) (ha : 1 ≤ a)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (N1 N2 f g e : ℤ) (he : e = 1 ∨ e = -1)
    (h1 : 2 * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).re))) = f * ((p : ℤ) ^ 2 * N1))
    (h2 : 3 * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).re))) + e * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).im))) = g * ((p : ℤ) ^ 2 * N2)) : False := by
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  obtain ⟨hpR, hpI⟩ := p_not_dvd_coords p hpodd A B hpAB a ha
  have hq4c : ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) ^ 2 + ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) ^ 2 = (q : ℤ) ^ 4 := norm4_coord q C D hqCD
  have hc2 : IsCoprime ((p : ℤ)) 2 :=
    (hpP.coprime_iff_not_dvd).mpr (fun hd' => by
      have h2' : p ∣ 2 := by exact_mod_cast hd'
      have := Nat.le_of_dvd (by norm_num) h2'
      have := hp.out.two_le
      omega)
  have hp2X : (p : ℤ) ^ 2 ∣ ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) := by
    have hc : IsCoprime ((p : ℤ) ^ 2) (2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im))) :=
      (hc2.mul_right ((hpP.coprime_iff_not_dvd).mpr hpI)).pow_left
    exact hc.dvd_of_dvd_mul_left ⟨f * N1, by linear_combination h1⟩
  have hp2Y : (p : ℤ) ^ 2 ∣ ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) := by
    obtain ⟨x, hx⟩ := hp2X
    have hd : (p : ℤ) ^ 2 ∣ e * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).im))) :=
      ⟨g * N2 - 3 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * x, by linear_combination h2 - 3 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * hx⟩
    have hde : (p : ℤ) ^ 2 ∣ ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) := by
      have hee : e * (e * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).im)))) = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) := by
        rcases he with rfl | rfl <;> ring
      exact hee ▸ hd.mul_left e
    have hc : IsCoprime ((p : ℤ) ^ 2) (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re))) :=
      ((hpP.coprime_iff_not_dvd).mpr hpR).pow_left
    exact hc.dvd_of_dvd_mul_left hde
  obtain ⟨x, hx⟩ := hp2X
  obtain ⟨y, hy⟩ := hp2Y
  have hdq : (p : ℤ) ∣ (q : ℤ) ^ 4 := by
    refine (dvd_pow_self _ (by norm_num : (4 : ℕ) ≠ 0)).trans ?_
    exact ⟨x ^ 2 + y ^ 2, by rw [← hq4c, hx, hy]; ring⟩
  have hq' : (p : ℤ) ∣ (q : ℤ) := hpP.dvd_of_dvd_pow hdq
  have hnat : p ∣ q := by exact_mod_cast hq'
  exact hpq ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp hnat)

/-- Generic S-core, M7ₐ in the first slot: 2X = f·q², even = odd. -/
lemma Srow_M7_kill_a (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (a : ℕ) (ha : 1 ≤ a)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (f : ℤ) (hf : f = 1 ∨ f = -1)
    (h1 : 2 * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).re))) = f * ((q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))) : False := by
  obtain ⟨hpR, hpI⟩ := p_not_dvd_coords p hpodd A B hpAB a ha
  have hI0 : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) ≠ 0 := by
    intro h0
    exact hpI (h0 ▸ dvd_zero _)
  have h2X : 2 * ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) = f * (q : ℤ) ^ 2 := by
    have h0 : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * (2 * ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) - f * (q : ℤ) ^ 2) = 0 := by linear_combination h1
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hI0
    · linarith
  obtain ⟨m, hm⟩ := (odd_cast q hqodd).pow (n := 2)
  rw [hm] at h2X
  rcases hf with rfl | rfl <;> omega

set_option maxHeartbeats 800000 in
/-- Generic S-core (p²-partner, M7ₐ): squaring the reduced relation against
the norms gives 2(4X² − 3gq²X + q⁴) = p^(4a)w², and p² ∣ X forces
p² ∣ 2q⁴. -/
lemma S_M7_kill_a (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (a : ℕ) (ha : 1 ≤ a)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (N f g e : ℤ) (hg : g = 1 ∨ g = -1) (he : e = 1 ∨ e = -1)
    (h1 : 2 * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).re))) = f * ((p : ℤ) ^ 2 * N))
    (h2 : 3 * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).re))) + e * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).im))) = g * ((q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))) : False := by
  have he2 : e ^ 2 = 1 := by rcases he with rfl | rfl <;> norm_num
  have hg2 : g ^ 2 = 1 := by rcases hg with rfl | rfl <;> norm_num
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  obtain ⟨hpR, hpI⟩ := p_not_dvd_coords p hpodd A B hpAB a ha
  have hI0 : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) ≠ 0 := by
    intro h0
    exact hpI (h0 ▸ dvd_zero _)
  have hcop := coprime_coords p hpodd A B hpAB a ha
  have hna := norm_coord p A B hpAB a
  have hq4c : ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) ^ 2 + ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) ^ 2 = (q : ℤ) ^ 4 := norm4_coord q C D hqCD
  have hc2 : IsCoprime ((p : ℤ)) 2 :=
    (hpP.coprime_iff_not_dvd).mpr (fun hd' => by
      have h2' : p ∣ 2 := by exact_mod_cast hd'
      have := Nat.le_of_dvd (by norm_num) h2'
      have := hp.out.two_le
      omega)
  have hp2X : (p : ℤ) ^ 2 ∣ ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) := by
    have hc : IsCoprime ((p : ℤ) ^ 2) (2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im))) :=
      (hc2.mul_right ((hpP.coprime_iff_not_dvd).mpr hpI)).pow_left
    exact hc.dvd_of_dvd_mul_left ⟨f * N, by linear_combination h1⟩
  have hIY : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) ∣ ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) := by
    have hd : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) ∣ ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) := by
      refine ⟨e * (g * (q : ℤ) ^ 2 - 3 * ((((⟨C, D⟩ : GaussianInt) ^ 4).re))), ?_⟩
      linear_combination e * h2 - ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) * he2
    exact (hcop.symm).dvd_of_dvd_mul_right hd
  obtain ⟨w, hw⟩ := hIY
  have hkey : 3 * ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) + e * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * w) = g * (q : ℤ) ^ 2 := by
    have h0 : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * ((3 * ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) + e * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * w)) - g * (q : ℤ) ^ 2) = 0 := by
      linear_combination h2 - e * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * hw
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hI0
    · linarith
  have hmaster : 2 * (4 * ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) ^ 2 - 3 * g * (q : ℤ) ^ 2 * ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) + (q : ℤ) ^ 4)
      = (p : ℤ) ^ (4 * a) * w ^ 2 := by
    have hsq : (e * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * w)) ^ 2 = (g * (q : ℤ) ^ 2 - 3 * ((((⟨C, D⟩ : GaussianInt) ^ 4).re))) ^ 2 := by
      rw [show e * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * w) = g * (q : ℤ) ^ 2 - 3 * ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) from by linarith [hkey]]
    have hYw : ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) ^ 2 = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) ^ 2 * w ^ 2 := by rw [hw]; ring
    linear_combination -hsq + ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) ^ 2 * w ^ 2 * he2 + w ^ 2 * hna + hYw - hq4c
      - (q : ℤ) ^ 4 * hg2
  obtain ⟨x, hx⟩ := hp2X
  have hp2q4 : (p : ℤ) ^ 2 ∣ 2 * (q : ℤ) ^ 4 := by
    refine ⟨(p : ℤ) ^ (4 * a - 2) * w ^ 2 - 8 * (p : ℤ) ^ 2 * x ^ 2 + 6 * g * (q : ℤ) ^ 2 * x, ?_⟩
    have hpow : (p : ℤ) ^ (4 * a) = (p : ℤ) ^ 2 * (p : ℤ) ^ (4 * a - 2) := by
      rw [← pow_add]
      congr 1
      omega
    linear_combination hmaster - (8 * ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) + 8 * (p : ℤ) ^ 2 * x - 6 * g * (q : ℤ) ^ 2) * hx
      + w ^ 2 * hpow
  have hpq4 : (p : ℤ) ∣ 2 * (q : ℤ) ^ 4 :=
    (dvd_pow_self _ (by norm_num : (2 : ℕ) ≠ 0)).trans hp2q4
  rcases hpP.dvd_mul.mp hpq4 with h2' | hq4
  · have h2n : p ∣ 2 := by exact_mod_cast h2'
    have := Nat.le_of_dvd (by norm_num) h2n
    have h2le := hp.out.two_le
    omega
  · have hq' : (p : ℤ) ∣ (q : ℤ) := hpP.dvd_of_dvd_pow hq4
    have hnat : p ∣ q := by exact_mod_cast hq'
    exact hpq ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp hnat)

set_option maxHeartbeats 800000 in
/-- The generic S-form cross-pair core at rung a. -/
lemma Score_a (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (a : ℕ) (ha : 1 ≤ a)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Kb Kd f g e : ℤ)
    (hf : f = 1 ∨ f = -1) (hg : g = 1 ∨ g = -1) (he : e = 1 ∨ e = -1)
    (hb : (∃ N, Kb = (p : ℤ) ^ 2 * N) ∨ Kb = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hd : (∃ N, Kd = (p : ℤ) ^ 2 * N) ∨ Kd = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (h1 : 2 * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).re))) = f * Kb)
    (h2 : 3 * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).re))) + e * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).im))) = g * Kd) : False := by
  rcases hb with ⟨N1, rfl⟩ | rfl
  · rcases hd with ⟨N2, rfl⟩ | rfl
    · exact Score_p2p2_a p q hpodd hqodd hpq a ha A B C D hpAB hqCD
        N1 N2 f g e he h1 h2
    · exact S_M7_kill_a p q hpodd hqodd hpq a ha A B C D hpAB hqCD
        N1 f g e hg he h1 h2
  · exact Srow_M7_kill_a p q hpodd hqodd a ha A B C D hpAB hqCD f hf h1

set_option maxHeartbeats 800000 in
/-- Generic mixed core, M7ₐ in the second slot with a p²-divisible first
partner: the classification residue gives X² = 2q⁴ − p^(4a), and p² ∣ X
forces p² ∣ 2q⁴. -/
lemma mixed_c2_M7a_kill (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (a : ℕ) (ha : 1 ≤ a)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (N f g : ℤ) (hg : g = 1 ∨ g = -1)
    (hIX : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) = f * ((p : ℤ) ^ 2 * N))
    (hRY : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) = g * ((q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))) : False := by
  have hg2 : g ^ 2 = 1 := by rcases hg with rfl | rfl <;> norm_num
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  obtain ⟨hpR, hpI⟩ := p_not_dvd_coords p hpodd A B hpAB a ha
  have hna := norm_coord p A B hpAB a
  have hq4c : ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) ^ 2 + ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) ^ 2 = (q : ℤ) ^ 4 := norm4_coord q C D hqCD
  obtain ⟨ε, hε, hRa, hYe⟩ := M7a_classify p q hpodd hqodd hpq a ha A B C D hpAB hqCD g hg hRY
  have hε2 : ε ^ 2 = 1 := by rcases hε with rfl | rfl <;> norm_num
  have hp2X : (p : ℤ) ^ 2 ∣ ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) := by
    have hc : IsCoprime ((p : ℤ) ^ 2) (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im))) :=
      ((hpP.coprime_iff_not_dvd).mpr hpI).pow_left
    exact hc.dvd_of_dvd_mul_left ⟨f * N, by linear_combination hIX⟩
  have hRsq : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) ^ 2 = (q : ℤ) ^ 4 := by
    rw [hRa]
    linear_combination (q : ℤ) ^ 4 * hε2
  have hYsq : ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) ^ 2 = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) ^ 2 := by
    have hsq : (((((⟨C, D⟩ : GaussianInt) ^ 4).im))) ^ 2 = (ε * g * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im))) ^ 2 := by rw [hYe]
    linear_combination hsq + ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) ^ 2 * g ^ 2 * hε2 + ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) ^ 2 * hg2
  have hX2 : ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) ^ 2 = 2 * (q : ℤ) ^ 4 - (p : ℤ) ^ (4 * a) := by
    linear_combination hq4c - hYsq - hna + hRsq
  obtain ⟨x, hx⟩ := hp2X
  have hp2q4 : (p : ℤ) ^ 2 ∣ 2 * (q : ℤ) ^ 4 := by
    refine ⟨(p : ℤ) ^ 2 * x ^ 2 + (p : ℤ) ^ (4 * a - 2), ?_⟩
    have hpow : (p : ℤ) ^ (4 * a) = (p : ℤ) ^ 2 * (p : ℤ) ^ (4 * a - 2) := by
      rw [← pow_add]
      congr 1
      omega
    linear_combination -hX2 + (((((⟨C, D⟩ : GaussianInt) ^ 4).re)) + (p : ℤ) ^ 2 * x) * hx + hpow
  have hpq4 : (p : ℤ) ∣ 2 * (q : ℤ) ^ 4 :=
    (dvd_pow_self _ (by norm_num : (2 : ℕ) ≠ 0)).trans hp2q4
  rcases hpP.dvd_mul.mp hpq4 with h2' | hq4
  · have h2n : p ∣ 2 := by exact_mod_cast h2'
    have := Nat.le_of_dvd (by norm_num) h2n
    have h2le := hp.out.two_le
    omega
  · have hq' : (p : ℤ) ∣ (q : ℤ) := hpP.dvd_of_dvd_pow hq4
    have hnat : p ∣ q := by exact_mod_cast hq'
    exact hpq ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp hnat)

set_option maxHeartbeats 800000 in
/-- The full generic mixed-pair core at rung a. -/
lemma mixed_core_a (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (a : ℕ) (ha : 1 ≤ a)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Kc1 Kc2 f g : ℤ) (hf : f = 1 ∨ f = -1) (hg : g = 1 ∨ g = -1)
    (hc1 : (∃ N, Kc1 = (p : ℤ) ^ 2 * N) ∨ Kc1 = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hc2 : (∃ N, Kc2 = (p : ℤ) ^ 2 * N) ∨ Kc2 = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hIX : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) = f * Kc1)
    (hRY : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) = g * Kc2) : False := by
  rcases hc1 with ⟨N1, rfl⟩ | rfl
  · rcases hc2 with ⟨N2, rfl⟩ | rfl
    · exact mixed_p2p2_a p q hpodd hqodd hpq a ha A B C D hpAB hqCD N1 N2 f g hIX hRY
    · exact mixed_c2_M7a_kill p q hpodd hqodd hpq a ha A B C D hpAB hqCD N1 f g hg hIX hRY
  · exact mixed_c1_M7a p q hpodd hqodd a ha A B C D hpAB hqCD f hf hIX

set_option maxHeartbeats 800000 in
/-- Generic two-core, both partners p²-divisible. -/
lemma two_p2p2_a (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (a : ℕ) (ha : 1 ≤ a)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (N1 N2 f g : ℤ)
    (hIX : 2 * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).re))) = f * ((p : ℤ) ^ 2 * N1))
    (hRY : 2 * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).im))) = g * ((p : ℤ) ^ 2 * N2)) : False := by
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  obtain ⟨hpR, hpI⟩ := p_not_dvd_coords p hpodd A B hpAB a ha
  have hq4c : ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) ^ 2 + ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) ^ 2 = (q : ℤ) ^ 4 := norm4_coord q C D hqCD
  have hc2 : IsCoprime ((p : ℤ)) 2 :=
    (hpP.coprime_iff_not_dvd).mpr (fun hd' => by
      have h2' : p ∣ 2 := by exact_mod_cast hd'
      have := Nat.le_of_dvd (by norm_num) h2'
      have := hp.out.two_le
      omega)
  have hp2X : (p : ℤ) ^ 2 ∣ ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) := by
    have hc : IsCoprime ((p : ℤ) ^ 2) (2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im))) :=
      (hc2.mul_right ((hpP.coprime_iff_not_dvd).mpr hpI)).pow_left
    exact hc.dvd_of_dvd_mul_left ⟨f * N1, by linear_combination hIX⟩
  have hp2Y : (p : ℤ) ^ 2 ∣ ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) := by
    have hc : IsCoprime ((p : ℤ) ^ 2) (2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re))) :=
      (hc2.mul_right ((hpP.coprime_iff_not_dvd).mpr hpR)).pow_left
    exact hc.dvd_of_dvd_mul_left ⟨g * N2, by linear_combination hRY⟩
  obtain ⟨x, hx⟩ := hp2X
  obtain ⟨y, hy⟩ := hp2Y
  have hdq : (p : ℤ) ∣ (q : ℤ) ^ 4 := by
    refine (dvd_pow_self _ (by norm_num : (4 : ℕ) ≠ 0)).trans ?_
    exact ⟨x ^ 2 + y ^ 2, by rw [← hq4c, hx, hy]; ring⟩
  have hq' : (p : ℤ) ∣ (q : ℤ) := hpP.dvd_of_dvd_pow hdq
  have hnat : p ∣ q := by exact_mod_cast hq'
  exact hpq ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp hnat)

set_option maxHeartbeats 800000 in
/-- Generic two-core (p²-partner, M7ₐ): the classify2 residue gives
4X² = 5q⁴ − p^(4a), and p² ∣ X forces p² ∣ 5q⁴ — dead through p = 5. -/
lemma two_c2_M7a_kill (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (a : ℕ) (ha : 1 ≤ a)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (N f g : ℤ) (hg : g = 1 ∨ g = -1)
    (hIX : 2 * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).re))) = f * ((p : ℤ) ^ 2 * N))
    (hRY : 2 * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).im))) = g * ((q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))) : False := by
  have hg2 : g ^ 2 = 1 := by rcases hg with rfl | rfl <;> norm_num
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  obtain ⟨hpR, hpI⟩ := p_not_dvd_coords p hpodd A B hpAB a ha
  have hna := norm_coord p A B hpAB a
  have hq4c : ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) ^ 2 + ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) ^ 2 = (q : ℤ) ^ 4 := norm4_coord q C D hqCD
  obtain ⟨ε, hε, hRa, h2Y⟩ := M7a_classify2 p q hpodd hqodd hpq a ha A B C D hpAB hqCD g hg hRY
  have hε2 : ε ^ 2 = 1 := by rcases hε with rfl | rfl <;> norm_num
  have hc2 : IsCoprime ((p : ℤ)) 2 :=
    (hpP.coprime_iff_not_dvd).mpr (fun hd' => by
      have h2' : p ∣ 2 := by exact_mod_cast hd'
      have := Nat.le_of_dvd (by norm_num) h2'
      have := hp.out.two_le
      omega)
  have hp2X : (p : ℤ) ^ 2 ∣ ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) := by
    have hc : IsCoprime ((p : ℤ) ^ 2) (2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im))) :=
      (hc2.mul_right ((hpP.coprime_iff_not_dvd).mpr hpI)).pow_left
    exact hc.dvd_of_dvd_mul_left ⟨f * N, by linear_combination hIX⟩
  have hRsq : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) ^ 2 = (q : ℤ) ^ 4 := by
    rw [hRa]
    linear_combination (q : ℤ) ^ 4 * hε2
  have hY4 : 4 * ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) ^ 2 = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) ^ 2 := by
    have hsq : (2 * ((((⟨C, D⟩ : GaussianInt) ^ 4).im))) ^ 2 = (ε * g * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im))) ^ 2 := by rw [h2Y]
    linear_combination hsq + ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) ^ 2 * g ^ 2 * hε2 + ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) ^ 2 * hg2
  have hX4 : 4 * ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) ^ 2 = 5 * (q : ℤ) ^ 4 - (p : ℤ) ^ (4 * a) := by
    linear_combination 4 * hq4c - hY4 - hna + hRsq
  obtain ⟨x, hx⟩ := hp2X
  have hp2q4 : (p : ℤ) ^ 2 ∣ 5 * (q : ℤ) ^ 4 := by
    refine ⟨4 * (p : ℤ) ^ 2 * x ^ 2 + (p : ℤ) ^ (4 * a - 2), ?_⟩
    have hpow : (p : ℤ) ^ (4 * a) = (p : ℤ) ^ 2 * (p : ℤ) ^ (4 * a - 2) := by
      rw [← pow_add]
      congr 1
      omega
    linear_combination -hX4 + 4 * (((((⟨C, D⟩ : GaussianInt) ^ 4).re)) + (p : ℤ) ^ 2 * x) * hx + hpow
  have hpq4 : (p : ℤ) ∣ 5 * (q : ℤ) ^ 4 :=
    (dvd_pow_self _ (by norm_num : (2 : ℕ) ≠ 0)).trans hp2q4
  rcases hpP.dvd_mul.mp hpq4 with h5 | hq4
  · -- p = 5, then 25 ∣ 5q⁴ forces 5 ∣ q
    have h5n : p ∣ 5 := by exact_mod_cast h5
    have hle := Nat.le_of_dvd (by norm_num) h5n
    have h2le := hp.out.two_le
    have hp5 : p = 5 := by
      interval_cases p <;> first
        | rfl
        | omega
        | exact absurd h5n (by decide)
        | exact absurd hp.out (by decide)
    subst hp5
    obtain ⟨k, hk⟩ := hp2q4
    push_cast at hk
    have h5q4 : (5 : ℤ) ∣ (q : ℤ) ^ 4 := ⟨k, by linarith⟩
    have h5q : (5 : ℤ) ∣ (q : ℤ) := (by norm_num : Prime (5 : ℤ)).dvd_of_dvd_pow h5q4
    have hnat : (5 : ℕ) ∣ q := by exact_mod_cast h5q
    have := (Nat.prime_dvd_prime_iff_eq (by norm_num) hq.out).mp hnat
    exact hpq (by omega)
  · have hq' : (p : ℤ) ∣ (q : ℤ) := hpP.dvd_of_dvd_pow hq4
    have hnat : p ∣ q := by exact_mod_cast hq'
    exact hpq ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp hnat)

set_option maxHeartbeats 800000 in
/-- The full generic two-core at rung a. -/
lemma two_core_a (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (a : ℕ) (ha : 1 ≤ a)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Kc1 Kc2 f g : ℤ) (hf : f = 1 ∨ f = -1) (hg : g = 1 ∨ g = -1)
    (hc1 : (∃ N, Kc1 = (p : ℤ) ^ 2 * N) ∨ Kc1 = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hc2 : (∃ N, Kc2 = (p : ℤ) ^ 2 * N) ∨ Kc2 = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hIX : 2 * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).re))) = f * Kc1)
    (hRY : 2 * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).im))) = g * Kc2) : False := by
  rcases hc1 with ⟨N1, rfl⟩ | rfl
  · rcases hc2 with ⟨N2, rfl⟩ | rfl
    · exact two_p2p2_a p q hpodd hqodd hpq a ha A B C D hpAB hqCD N1 N2 f g hIX hRY
    · exact two_c2_M7a_kill p q hpodd hqodd hpq a ha A B C D hpAB hqCD N1 f g hg hIX hRY
  · exact Srow_M7_kill_a p q hpodd hqodd a ha A B C D hpAB hqCD f hf hIX

/-- Coordinates of the M8ₐ class value. -/
lemma M8a_coord (A B C D : ℤ) (a : ℕ) :
    ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im) = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) + ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) := by
  simp [Zsqrtd.im_mul]
  try ring

/-- Coordinates of the M9ₐ class value. -/
lemma M9a_coord (A B C D : ℤ) (a : ℕ) :
    ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((star (⟨C, D⟩ : GaussianInt)) ^ 4)).im) = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) - ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re)) * ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) := by
  simp only [Zsqrtd.im_mul, ← star_pow, Zsqrtd.re_star, Zsqrtd.im_star]
  ring

set_option maxHeartbeats 800000 in
/-- The M8ₐ/M9ₐ pair in the (c, d) slots routes into the mixed core. -/
lemma dispatch_56_a (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (a : ℕ) (ha : 1 ≤ a)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Ka Kb e1 e2 e3 e4 : ℤ)
    (he1 : e1 = 1 ∨ e1 = -1) (he2 : e2 = 1 ∨ e2 = -1)
    (he3 : e3 = 1 ∨ e3 = -1) (he4 : e4 = 1 ∨ e4 = -1)
    (hKa : (∃ N, Ka = (p : ℤ) ^ 2 * N) ∨ Ka = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hKb : (∃ N, Kb = (p : ℤ) ^ 2 * N) ∨ Kb = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hE1 : e3 * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im)) + e4 * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((star (⟨C, D⟩ : GaussianInt)) ^ 4)).im)) = 2 * e1 * Ka)
    (hE2 : e3 * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im)) - e4 * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((star (⟨C, D⟩ : GaussianInt)) ^ 4)).im)) = 2 * e2 * Kb) : False := by
  rw [M8a_coord, M9a_coord] at hE1 hE2
  rcases he3 with rfl | rfl <;> rcases he4 with rfl | rfl
  · exact mixed_core_a p q hpodd hqodd hpq a ha A B C D hpAB hqCD Ka Kb e1 e2
      he1 he2 hKa hKb (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · exact mixed_core_a p q hpodd hqodd hpq a ha A B C D hpAB hqCD Kb Ka e2 e1
      he2 he1 hKb hKa (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · exact mixed_core_a p q hpodd hqodd hpq a ha A B C D hpAB hqCD Kb Ka (-e2) (-e1)
      (by rcases he2 with rfl | rfl <;> norm_num)
      (by rcases he1 with rfl | rfl <;> norm_num) hKb hKa
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · exact mixed_core_a p q hpodd hqodd hpq a ha A B C D hpAB hqCD Ka Kb (-e1) (-e2)
      (by rcases he1 with rfl | rfl <;> norm_num)
      (by rcases he2 with rfl | rfl <;> norm_num) hKa hKb
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])

set_option maxHeartbeats 800000 in
/-- The M8ₐ/M9ₐ pair in the (a, b) slots routes into the two-core. -/
lemma dispatch_ab56_a (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (a : ℕ) (ha : 1 ≤ a)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Kc Kd e1 e2 e3 e4 : ℤ)
    (he1 : e1 = 1 ∨ e1 = -1) (he2 : e2 = 1 ∨ e2 = -1)
    (he3 : e3 = 1 ∨ e3 = -1) (he4 : e4 = 1 ∨ e4 = -1)
    (hKc : (∃ N, Kc = (p : ℤ) ^ 2 * N) ∨ Kc = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hKd : (∃ N, Kd = (p : ℤ) ^ 2 * N) ∨ Kd = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hE1 : e3 * Kc + e4 * Kd = 2 * e1 * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im)))
    (hE2 : e3 * Kc - e4 * Kd = 2 * e2 * (((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((star (⟨C, D⟩ : GaussianInt)) ^ 4)).im))) : False := by
  rw [M8a_coord] at hE1
  rw [M9a_coord] at hE2
  rcases he1 with rfl | rfl <;> rcases he2 with rfl | rfl
  · exact two_core_a p q hpodd hqodd hpq a ha A B C D hpAB hqCD Kc Kd e3 e4
      he3 he4 hKc hKd (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · exact two_core_a p q hpodd hqodd hpq a ha A B C D hpAB hqCD Kd Kc e4 e3
      he4 he3 hKd hKc (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · exact two_core_a p q hpodd hqodd hpq a ha A B C D hpAB hqCD Kd Kc (-e4) (-e3)
      (by rcases he4 with rfl | rfl <;> norm_num)
      (by rcases he3 with rfl | rfl <;> norm_num) hKd hKc
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · exact two_core_a p q hpodd hqodd hpq a ha A B C D hpAB hqCD Kc Kd (-e3) (-e4)
      (by rcases he3 with rfl | rfl <;> norm_num)
      (by rcases he4 with rfl | rfl <;> norm_num) hKc hKd
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])

set_option maxHeartbeats 1600000 in
lemma dispatch_ac_a (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (a : ℕ) (ha1 : 1 ≤ a)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Ka Kb Kc Kd e1 e2 e3 e4 : ℤ)
    (he1 : e1 = 1 ∨ e1 = -1) (he2 : e2 = 1 ∨ e2 = -1)
    (he3 : e3 = 1 ∨ e3 = -1) (he4 : e4 = 1 ∨ e4 = -1)
    (hac : (Ka = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im) ∧ Kc = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((star (⟨C, D⟩ : GaussianInt)) ^ 4)).im)) ∨ (Ka = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((star (⟨C, D⟩ : GaussianInt)) ^ 4)).im) ∧ Kc = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im)))
    (hb : (∃ N, Kb = (p : ℤ) ^ 2 * N) ∨ Kb = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hd : (∃ N, Kd = (p : ℤ) ^ 2 * N) ∨ Kd = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hE1 : e3 * Kc + e4 * Kd = 2 * e1 * Ka)
    (hE2 : e3 * Kc - e4 * Kd = 2 * e2 * Kb) : False := by
  rcases hac with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ <;>
    simp only [M8a_coord, M9a_coord] at hE1 hE2 <;>
    rcases he1 with rfl | rfl <;> rcases he3 with rfl | rfl
  -- Ka = L5, Kc = L6
  · -- (e1, e3) = (1, 1): T-form, f = −e2, g = e4, e = 1
    exact Tcore_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Kb Kd (-e2) e4 1
      (by rcases he2 with rfl | rfl <;> norm_num) he4 (Or.inl rfl) hb hd
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · -- (1, −1): S-form, f = −e2, g = e4, e = 1
    exact Score_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Kb Kd (-e2) e4 1
      (by rcases he2 with rfl | rfl <;> norm_num) he4 (Or.inl rfl) hb hd
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · -- (−1, 1): S-form, f = e2, g = −e4, e = 1
    exact Score_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Kb Kd e2 (-e4) 1
      he2 (by rcases he4 with rfl | rfl <;> norm_num) (Or.inl rfl) hb hd
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · -- (−1, −1): T-form, f = e2, g = −e4, e = 1
    exact Tcore_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Kb Kd e2 (-e4) 1
      he2 (by rcases he4 with rfl | rfl <;> norm_num) (Or.inl rfl) hb hd
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  -- Ka = L6, Kc = L5
  · -- (1, 1): T-form, f = e2, g = −e4, e = −1
    exact Tcore_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Kb Kd e2 (-e4) (-1)
      he2 (by rcases he4 with rfl | rfl <;> norm_num) (Or.inr rfl) hb hd
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · -- (1, −1): S-form, f = −e2, g = e4, e = −1
    exact Score_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Kb Kd (-e2) e4 (-1)
      (by rcases he2 with rfl | rfl <;> norm_num) he4 (Or.inr rfl) hb hd
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · -- (−1, 1): S-form, f = e2, g = −e4, e = −1
    exact Score_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Kb Kd e2 (-e4) (-1)
      he2 (by rcases he4 with rfl | rfl <;> norm_num) (Or.inr rfl) hb hd
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · -- (−1, −1): T-form, f = −e2, g = e4, e = −1
    exact Tcore_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Kb Kd (-e2) e4 (-1)
      (by rcases he2 with rfl | rfl <;> norm_num) he4 (Or.inr rfl) hb hd
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])


set_option maxHeartbeats 1600000 in
/-- Cross-position dispatcher: Ka and Kd carry the level-8 classes. -/
lemma dispatch_ad_a (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (a : ℕ) (ha1 : 1 ≤ a)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Ka Kb Kc Kd e1 e2 e3 e4 : ℤ)
    (he1 : e1 = 1 ∨ e1 = -1) (he2 : e2 = 1 ∨ e2 = -1)
    (he3 : e3 = 1 ∨ e3 = -1) (he4 : e4 = 1 ∨ e4 = -1)
    (had : (Ka = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im) ∧ Kd = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((star (⟨C, D⟩ : GaussianInt)) ^ 4)).im)) ∨ (Ka = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((star (⟨C, D⟩ : GaussianInt)) ^ 4)).im) ∧ Kd = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im)))
    (hb : (∃ N, Kb = (p : ℤ) ^ 2 * N) ∨ Kb = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hc : (∃ N, Kc = (p : ℤ) ^ 2 * N) ∨ Kc = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hE1 : e3 * Kc + e4 * Kd = 2 * e1 * Ka)
    (hE2 : e3 * Kc - e4 * Kd = 2 * e2 * Kb) : False := by
  rcases had with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ <;>
    simp only [M8a_coord, M9a_coord] at hE1 hE2 <;>
    rcases he1 with rfl | rfl <;> rcases he4 with rfl | rfl
  · exact Tcore_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Kb Kc e2 e3 1
      he2 he3 (Or.inl rfl) hb hc (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · exact Score_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Kb Kc e2 e3 1
      he2 he3 (Or.inl rfl) hb hc (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · exact Score_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Kb Kc (-e2) (-e3) 1
      (by rcases he2 with rfl | rfl <;> norm_num)
      (by rcases he3 with rfl | rfl <;> norm_num) (Or.inl rfl) hb hc
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · exact Tcore_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Kb Kc (-e2) (-e3) 1
      (by rcases he2 with rfl | rfl <;> norm_num)
      (by rcases he3 with rfl | rfl <;> norm_num) (Or.inl rfl) hb hc
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · exact Tcore_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Kb Kc (-e2) (-e3) (-1)
      (by rcases he2 with rfl | rfl <;> norm_num)
      (by rcases he3 with rfl | rfl <;> norm_num) (Or.inr rfl) hb hc
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · exact Score_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Kb Kc e2 e3 (-1)
      he2 he3 (Or.inr rfl) hb hc (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · exact Score_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Kb Kc (-e2) (-e3) (-1)
      (by rcases he2 with rfl | rfl <;> norm_num)
      (by rcases he3 with rfl | rfl <;> norm_num) (Or.inr rfl) hb hc
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · exact Tcore_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Kb Kc e2 e3 (-1)
      he2 he3 (Or.inr rfl) hb hc (by linarith [hE1, hE2]) (by linarith [hE1, hE2])

set_option maxHeartbeats 1600000 in
/-- Cross-position dispatcher: Kb and Kc carry the level-8 classes. -/
lemma dispatch_bc_a (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (a : ℕ) (ha1 : 1 ≤ a)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Ka Kb Kc Kd e1 e2 e3 e4 : ℤ)
    (he1 : e1 = 1 ∨ e1 = -1) (he2 : e2 = 1 ∨ e2 = -1)
    (he3 : e3 = 1 ∨ e3 = -1) (he4 : e4 = 1 ∨ e4 = -1)
    (hbc : (Kb = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im) ∧ Kc = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((star (⟨C, D⟩ : GaussianInt)) ^ 4)).im)) ∨ (Kb = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((star (⟨C, D⟩ : GaussianInt)) ^ 4)).im) ∧ Kc = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im)))
    (ha : (∃ N, Ka = (p : ℤ) ^ 2 * N) ∨ Ka = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hd : (∃ N, Kd = (p : ℤ) ^ 2 * N) ∨ Kd = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hE1 : e3 * Kc + e4 * Kd = 2 * e1 * Ka)
    (hE2 : e3 * Kc - e4 * Kd = 2 * e2 * Kb) : False := by
  rcases hbc with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ <;>
    simp only [M8a_coord, M9a_coord] at hE1 hE2 <;>
    rcases he2 with rfl | rfl <;> rcases he3 with rfl | rfl
  · exact Tcore_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Ka Kd (-e1) (-e4) 1
      (by rcases he1 with rfl | rfl <;> norm_num)
      (by rcases he4 with rfl | rfl <;> norm_num) (Or.inl rfl) ha hd
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · exact Score_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Ka Kd (-e1) (-e4) 1
      (by rcases he1 with rfl | rfl <;> norm_num)
      (by rcases he4 with rfl | rfl <;> norm_num) (Or.inl rfl) ha hd
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · exact Score_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Ka Kd e1 e4 1
      he1 he4 (Or.inl rfl) ha hd (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · exact Tcore_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Ka Kd e1 e4 1
      he1 he4 (Or.inl rfl) ha hd (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · exact Tcore_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Ka Kd e1 e4 (-1)
      he1 he4 (Or.inr rfl) ha hd (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · exact Score_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Ka Kd (-e1) (-e4) (-1)
      (by rcases he1 with rfl | rfl <;> norm_num)
      (by rcases he4 with rfl | rfl <;> norm_num) (Or.inr rfl) ha hd
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · exact Score_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Ka Kd e1 e4 (-1)
      he1 he4 (Or.inr rfl) ha hd (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · exact Tcore_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Ka Kd (-e1) (-e4) (-1)
      (by rcases he1 with rfl | rfl <;> norm_num)
      (by rcases he4 with rfl | rfl <;> norm_num) (Or.inr rfl) ha hd
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])

set_option maxHeartbeats 1600000 in
/-- Cross-position dispatcher: Kb and Kd carry the level-8 classes. -/
lemma dispatch_bd_a (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (a : ℕ) (ha1 : 1 ≤ a)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Ka Kb Kc Kd e1 e2 e3 e4 : ℤ)
    (he1 : e1 = 1 ∨ e1 = -1) (he2 : e2 = 1 ∨ e2 = -1)
    (he3 : e3 = 1 ∨ e3 = -1) (he4 : e4 = 1 ∨ e4 = -1)
    (hbd : (Kb = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im) ∧ Kd = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((star (⟨C, D⟩ : GaussianInt)) ^ 4)).im)) ∨ (Kb = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((star (⟨C, D⟩ : GaussianInt)) ^ 4)).im) ∧ Kd = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im)))
    (ha : (∃ N, Ka = (p : ℤ) ^ 2 * N) ∨ Ka = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hc : (∃ N, Kc = (p : ℤ) ^ 2 * N) ∨ Kc = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hE1 : e3 * Kc + e4 * Kd = 2 * e1 * Ka)
    (hE2 : e3 * Kc - e4 * Kd = 2 * e2 * Kb) : False := by
  rcases hbd with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ <;>
    simp only [M8a_coord, M9a_coord] at hE1 hE2 <;>
    rcases he2 with rfl | rfl <;> rcases he4 with rfl | rfl
  · exact Score_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Ka Kc e1 e3 1
      he1 he3 (Or.inl rfl) ha hc (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · exact Tcore_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Ka Kc e1 e3 1
      he1 he3 (Or.inl rfl) ha hc (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · exact Tcore_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Ka Kc (-e1) (-e3) 1
      (by rcases he1 with rfl | rfl <;> norm_num)
      (by rcases he3 with rfl | rfl <;> norm_num) (Or.inl rfl) ha hc
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · exact Score_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Ka Kc (-e1) (-e3) 1
      (by rcases he1 with rfl | rfl <;> norm_num)
      (by rcases he3 with rfl | rfl <;> norm_num) (Or.inl rfl) ha hc
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · exact Score_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Ka Kc e1 e3 (-1)
      he1 he3 (Or.inr rfl) ha hc (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · exact Tcore_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Ka Kc (-e1) (-e3) (-1)
      (by rcases he1 with rfl | rfl <;> norm_num)
      (by rcases he3 with rfl | rfl <;> norm_num) (Or.inr rfl) ha hc
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · exact Tcore_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Ka Kc e1 e3 (-1)
      he1 he3 (Or.inr rfl) ha hc (by linarith [hE1, hE2]) (by linarith [hE1, hE2])
  · exact Score_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Ka Kc (-e1) (-e3) (-1)
      (by rcases he1 with rfl | rfl <;> norm_num)
      (by rcases he3 with rfl | rfl <;> norm_num) (Or.inr rfl) ha hc
      (by linarith [hE1, hE2]) (by linarith [hE1, hE2])



/-- p-squared cannot divide a unit multiple of q-squared times im at rung a. -/
lemma lowq_M7a_kill (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hpq : p ≠ q)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p)
    (a : ℕ) (ha1 : 1 ≤ a)
    (e m : ℤ) (he : e = 1 ∨ e = -1 ∨ e = 2 ∨ e = -2)
    (h : e * ((q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im))) = (p : ℤ) ^ 2 * m) : False := by
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  have hpq' : ¬ (p : ℤ) ∣ (q : ℤ) := by
    intro hd
    have hnat : p ∣ q := by exact_mod_cast hd
    exact hpq ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp hnat)
  have hc : ¬ (p : ℤ) ∣ e * (q : ℤ) ^ 2 := by
    intro hd
    rcases hpP.dvd_mul.mp hd with h' | h'
    · have he0 : e ≠ 0 := by rcases he with rfl | rfl | rfl | rfl <;> norm_num
      have hle : (p : ℤ) ≤ |e| := Int.le_of_dvd (abs_pos.mpr he0) ((dvd_abs _ _).mpr h')
      have habs : |e| ≤ 2 := by rcases he with rfl | rfl | rfl | rfl <;> norm_num
      have hple : (p : ℤ) ≤ 2 := hle.trans habs
      have h2le : (2 : ℤ) ≤ (p : ℤ) := by exact_mod_cast hp.out.two_le
      have hp2 : (p : ℤ) ≠ 2 := by
        intro h2
        have hp2n : p = 2 := by exact_mod_cast h2
        rw [hp2n] at hpodd
        norm_num at hpodd
      omega
    · exact hpq' (hpP.dvd_of_dvd_pow h')
  exact p2_not_dvd_I4a p hpodd A B hpAB a ha1 (e * (q : ℤ) ^ 2) m hc
    (by linear_combination h)

set_option maxHeartbeats 1600000 in
/-- Lone chi-class at slot a, rung a. -/
lemma dispatch_lonea_a (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (_hqodd : q % 2 = 1) (hpq : p ≠ q)
    (a : ℕ) (ha1 : 1 ≤ a)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Ka Kb Kc Kd e1 e2 e3 e4 : ℤ)
    (he1 : e1 = 1 ∨ e1 = -1) (he2 : e2 = 1 ∨ e2 = -1)
    (he3 : e3 = 1 ∨ e3 = -1) (he4 : e4 = 1 ∨ e4 = -1)
    (ha8 : Ka = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im) ∨ Ka = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((star (⟨C, D⟩ : GaussianInt)) ^ 4)).im))
    (hb : (∃ N, Kb = (p : ℤ) ^ 2 * N) ∨ Kb = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hc : (∃ N, Kc = (p : ℤ) ^ 2 * N) ∨ Kc = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hd : (∃ N, Kd = (p : ℤ) ^ 2 * N) ∨ Kd = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hbc : Kb ≠ Kc) (hbd : Kb ≠ Kd) (hcd : Kc ≠ Kd)
    (hE1 : e3 * Kc + e4 * Kd = 2 * e1 * Ka)
    (hE2 : e3 * Kc - e4 * Kd = 2 * e2 * Kb) : False := by

  rcases hb with ⟨mb, hmb⟩ | rfl
  · rcases hc with ⟨mc, hmc⟩ | rfl
    · rcases hd with ⟨md, hmd⟩ | rfl
      · -- no L2: doubled-8 relation, 2e1·Ka = e3Kc + e4Kd ≡ 0 (mod p²)
        have hcunit : ¬ (p : ℤ) ∣ (2 * e1) := by
          intro hdv
          have h2' : (p : ℤ) ∣ 2 := by
            rcases he1 with rfl | rfl
            · simpa using hdv
            · exact (dvd_neg.mp (by simpa using hdv))
          have h2n : p ∣ 2 := by exact_mod_cast h2'
          have := Nat.le_of_dvd (by norm_num) h2n
          have := hp.out.two_le
          omega
        rcases ha8 with rfl | rfl
        · exact p2_not_dvd_M8a p q hpodd hpq A B C D hpAB hqCD a ha1 (2 * e1)
            (e3 * mc + e4 * md) hcunit
            (by linear_combination -hE1 + e3 * hmc + e4 * hmd)
        · exact p2_not_dvd_M9a p q hpodd hpq A B C D hpAB hqCD a ha1 (2 * e1)
            (e3 * mc + e4 * md) hcunit
            (by linear_combination -hE1 + e3 * hmc + e4 * hmd)
      · -- L2 at d: use hE2 (a-free)
        exact lowq_M7a_kill p q hpodd hpq A B hpAB a ha1 e4 (e3 * mc - 2 * e2 * mb)
          (by rcases he4 with rfl | rfl <;> norm_num)
          (by linear_combination -hE2 + e3 * hmc - 2 * e2 * hmb)
    · -- L2 at c
      rcases hd with ⟨md, hmd⟩ | rfl
      · exact lowq_M7a_kill p q hpodd hpq A B hpAB a ha1 e3 (2 * e2 * mb + e4 * md)
          (by rcases he3 with rfl | rfl <;> norm_num)
          (by linear_combination hE2 + 2 * e2 * hmb + e4 * hmd)
      · exact hcd rfl
  · -- L2 at b
    rcases hc with ⟨mc, hmc⟩ | rfl
    · rcases hd with ⟨md, hmd⟩ | rfl
      · exact lowq_M7a_kill p q hpodd hpq A B hpAB a ha1 (2 * e2) (e3 * mc - e4 * md)
          (by rcases he2 with rfl | rfl <;> norm_num)
          (by linear_combination -hE2 + e3 * hmc - e4 * hmd)
      · exact hbd rfl
    · exact hbc rfl

set_option maxHeartbeats 1600000 in
/-- Lone chi-class at slot b, rung a. -/
lemma dispatch_loneb_a (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (_hqodd : q % 2 = 1) (hpq : p ≠ q)
    (a : ℕ) (ha1 : 1 ≤ a)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Ka Kb Kc Kd e1 e2 e3 e4 : ℤ)
    (he1 : e1 = 1 ∨ e1 = -1) (he2 : e2 = 1 ∨ e2 = -1)
    (he3 : e3 = 1 ∨ e3 = -1) (he4 : e4 = 1 ∨ e4 = -1)
    (hb8 : Kb = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im) ∨ Kb = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((star (⟨C, D⟩ : GaussianInt)) ^ 4)).im))
    (ha : (∃ N, Ka = (p : ℤ) ^ 2 * N) ∨ Ka = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hc : (∃ N, Kc = (p : ℤ) ^ 2 * N) ∨ Kc = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hd : (∃ N, Kd = (p : ℤ) ^ 2 * N) ∨ Kd = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hac : Ka ≠ Kc) (had : Ka ≠ Kd) (hcd : Kc ≠ Kd)
    (hE1 : e3 * Kc + e4 * Kd = 2 * e1 * Ka)
    (hE2 : e3 * Kc - e4 * Kd = 2 * e2 * Kb) : False := by

  rcases ha with ⟨ma, hma⟩ | rfl
  · rcases hc with ⟨mc, hmc⟩ | rfl
    · rcases hd with ⟨md, hmd⟩ | rfl
      · have hcunit : ¬ (p : ℤ) ∣ (2 * e2) := by
          intro hdv
          have h2' : (p : ℤ) ∣ 2 := by
            rcases he2 with rfl | rfl
            · simpa using hdv
            · exact (dvd_neg.mp (by simpa using hdv))
          have h2n : p ∣ 2 := by exact_mod_cast h2'
          have := Nat.le_of_dvd (by norm_num) h2n
          have := hp.out.two_le
          omega
        rcases hb8 with rfl | rfl
        · exact p2_not_dvd_M8a p q hpodd hpq A B C D hpAB hqCD a ha1 (2 * e2)
            (e3 * mc - e4 * md) hcunit
            (by linear_combination -hE2 + e3 * hmc - e4 * hmd)
        · exact p2_not_dvd_M9a p q hpodd hpq A B C D hpAB hqCD a ha1 (2 * e2)
            (e3 * mc - e4 * md) hcunit
            (by linear_combination -hE2 + e3 * hmc - e4 * hmd)
      · -- L2 at d: use hE1 (b-free)
        exact lowq_M7a_kill p q hpodd hpq A B hpAB a ha1 e4 (2 * e1 * ma - e3 * mc)
          (by rcases he4 with rfl | rfl <;> norm_num)
          (by linear_combination hE1 + 2 * e1 * hma - e3 * hmc)
    · rcases hd with ⟨md, hmd⟩ | rfl
      · exact lowq_M7a_kill p q hpodd hpq A B hpAB a ha1 e3 (2 * e1 * ma - e4 * md)
          (by rcases he3 with rfl | rfl <;> norm_num)
          (by linear_combination hE1 + 2 * e1 * hma - e4 * hmd)
      · exact hcd rfl
  · rcases hc with ⟨mc, hmc⟩ | rfl
    · rcases hd with ⟨md, hmd⟩ | rfl
      · exact lowq_M7a_kill p q hpodd hpq A B hpAB a ha1 (2 * e1) (e3 * mc + e4 * md)
          (by rcases he1 with rfl | rfl <;> norm_num)
          (by linear_combination -hE1 + e3 * hmc + e4 * hmd)
      · exact had rfl
    · exact hac rfl

set_option maxHeartbeats 1600000 in
/-- Lone chi-class at slot c, rung a. -/
lemma dispatch_lonec_a (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (_hqodd : q % 2 = 1) (hpq : p ≠ q)
    (a : ℕ) (ha1 : 1 ≤ a)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Ka Kb Kc Kd e1 e2 e3 e4 : ℤ)
    (he1 : e1 = 1 ∨ e1 = -1) (he2 : e2 = 1 ∨ e2 = -1)
    (he3 : e3 = 1 ∨ e3 = -1) (he4 : e4 = 1 ∨ e4 = -1)
    (hc8 : Kc = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im) ∨ Kc = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((star (⟨C, D⟩ : GaussianInt)) ^ 4)).im))
    (ha : (∃ N, Ka = (p : ℤ) ^ 2 * N) ∨ Ka = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hb : (∃ N, Kb = (p : ℤ) ^ 2 * N) ∨ Kb = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hd : (∃ N, Kd = (p : ℤ) ^ 2 * N) ∨ Kd = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hab : Ka ≠ Kb) (had : Ka ≠ Kd) (hbd : Kb ≠ Kd)
    (hE1 : e3 * Kc + e4 * Kd = 2 * e1 * Ka)
    (hE2 : e3 * Kc - e4 * Kd = 2 * e2 * Kb) : False := by

  rcases ha with ⟨ma, hma⟩ | rfl
  · rcases hb with ⟨mb, hmb⟩ | rfl
    · rcases hd with ⟨md, hmd⟩ | rfl
      · -- no L2: 2e3·Kc = 2e1Ka + 2e2Kb ≡ 0 (mod p²)
        have hcunit : ¬ (p : ℤ) ∣ (2 * e3) := by
          intro hdv
          have h2' : (p : ℤ) ∣ 2 := by
            rcases he3 with rfl | rfl
            · simpa using hdv
            · exact (dvd_neg.mp (by simpa using hdv))
          have h2n : p ∣ 2 := by exact_mod_cast h2'
          have := Nat.le_of_dvd (by norm_num) h2n
          have := hp.out.two_le
          omega
        rcases hc8 with rfl | rfl
        · exact p2_not_dvd_M8a p q hpodd hpq A B C D hpAB hqCD a ha1 (2 * e3)
            (2 * e1 * ma + 2 * e2 * mb) hcunit
            (by linear_combination hE1 + hE2 + 2 * e1 * hma + 2 * e2 * hmb)
        · exact p2_not_dvd_M9a p q hpodd hpq A B C D hpAB hqCD a ha1 (2 * e3)
            (2 * e1 * ma + 2 * e2 * mb) hcunit
            (by linear_combination hE1 + hE2 + 2 * e1 * hma + 2 * e2 * hmb)
      · -- L2 at d: c-free relation hE1 − hE2
        exact lowq_M7a_kill p q hpodd hpq A B hpAB a ha1 (2 * e4) (2 * e1 * ma - 2 * e2 * mb)
          (by rcases he4 with rfl | rfl <;> norm_num)
          (by linear_combination hE1 - hE2 + 2 * e1 * hma - 2 * e2 * hmb)
    · -- L2 at b
      rcases hd with ⟨md, hmd⟩ | rfl
      · exact lowq_M7a_kill p q hpodd hpq A B hpAB a ha1 (2 * e2) (2 * e1 * ma - 2 * e4 * md)
          (by rcases he2 with rfl | rfl <;> norm_num)
          (by linear_combination hE1 - hE2 + 2 * e1 * hma - 2 * e4 * hmd)
      · exact hbd rfl
  · -- L2 at a
    rcases hb with ⟨mb, hmb⟩ | rfl
    · rcases hd with ⟨md, hmd⟩ | rfl
      · exact lowq_M7a_kill p q hpodd hpq A B hpAB a ha1 (2 * e1) (2 * e2 * mb + 2 * e4 * md)
          (by rcases he1 with rfl | rfl <;> norm_num)
          (by linear_combination -hE1 + hE2 + 2 * e2 * hmb + 2 * e4 * hmd)
      · exact had rfl
    · exact hab rfl

set_option maxHeartbeats 1600000 in
/-- Lone chi-class at slot d, rung a. -/
lemma dispatch_loned_a (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (_hqodd : q % 2 = 1) (hpq : p ≠ q)
    (a : ℕ) (ha1 : 1 ≤ a)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Ka Kb Kc Kd e1 e2 e3 e4 : ℤ)
    (he1 : e1 = 1 ∨ e1 = -1) (he2 : e2 = 1 ∨ e2 = -1)
    (he3 : e3 = 1 ∨ e3 = -1) (he4 : e4 = 1 ∨ e4 = -1)
    (hd8 : Kd = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im) ∨ Kd = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((star (⟨C, D⟩ : GaussianInt)) ^ 4)).im))
    (ha : (∃ N, Ka = (p : ℤ) ^ 2 * N) ∨ Ka = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hb : (∃ N, Kb = (p : ℤ) ^ 2 * N) ∨ Kb = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hc : (∃ N, Kc = (p : ℤ) ^ 2 * N) ∨ Kc = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hab : Ka ≠ Kb) (hac : Ka ≠ Kc) (hbc : Kb ≠ Kc)
    (hE1 : e3 * Kc + e4 * Kd = 2 * e1 * Ka)
    (hE2 : e3 * Kc - e4 * Kd = 2 * e2 * Kb) : False := by

  rcases ha with ⟨ma, hma⟩ | rfl
  · rcases hb with ⟨mb, hmb⟩ | rfl
    · rcases hc with ⟨mc, hmc⟩ | rfl
      · -- no L2: 2e4·Kd = 2e1Ka − 2e2Kb
        have hcunit : ¬ (p : ℤ) ∣ (2 * e4) := by
          intro hdv
          have h2' : (p : ℤ) ∣ 2 := by
            rcases he4 with rfl | rfl
            · simpa using hdv
            · exact (dvd_neg.mp (by simpa using hdv))
          have h2n : p ∣ 2 := by exact_mod_cast h2'
          have := Nat.le_of_dvd (by norm_num) h2n
          have := hp.out.two_le
          omega
        rcases hd8 with rfl | rfl
        · exact p2_not_dvd_M8a p q hpodd hpq A B C D hpAB hqCD a ha1 (2 * e4)
            (2 * e1 * ma - 2 * e2 * mb) hcunit
            (by linear_combination hE1 - hE2 + 2 * e1 * hma - 2 * e2 * hmb)
        · exact p2_not_dvd_M9a p q hpodd hpq A B C D hpAB hqCD a ha1 (2 * e4)
            (2 * e1 * ma - 2 * e2 * mb) hcunit
            (by linear_combination hE1 - hE2 + 2 * e1 * hma - 2 * e2 * hmb)
      · -- L2 at c: d-free relation hE1 + hE2
        exact lowq_M7a_kill p q hpodd hpq A B hpAB a ha1 (2 * e3) (2 * e1 * ma + 2 * e2 * mb)
          (by rcases he3 with rfl | rfl <;> norm_num)
          (by linear_combination hE1 + hE2 + 2 * e1 * hma + 2 * e2 * hmb)
    · -- L2 at b
      rcases hc with ⟨mc, hmc⟩ | rfl
      · exact lowq_M7a_kill p q hpodd hpq A B hpAB a ha1 (2 * e2) (2 * e3 * mc - 2 * e1 * ma)
          (by rcases he2 with rfl | rfl <;> norm_num)
          (by linear_combination -hE1 - hE2 + 2 * e3 * hmc - 2 * e1 * hma)
      · exact hbc rfl
  · -- L2 at a
    rcases hb with ⟨mb, hmb⟩ | rfl
    · rcases hc with ⟨mc, hmc⟩ | rfl
      · exact lowq_M7a_kill p q hpodd hpq A B hpAB a ha1 (2 * e1) (2 * e3 * mc - 2 * e2 * mb)
          (by rcases he1 with rfl | rfl <;> norm_num)
          (by linear_combination -hE1 - hE2 + 2 * e3 * hmc - 2 * e2 * hmb)
      · exact hac rfl
    · exact hab rfl

set_option maxHeartbeats 1600000 in
/-- All four values sit in the low classes of rung a. Cancel p-squared and use
the rung a−1 router, or kill a lone M7 value with the p-squared residue. -/
lemma dispatch_low_step (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hpq : p ≠ q)
    (a : ℕ) (ha2 : 2 ≤ a)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p)
    (IH : ∀ Ka Kb Kc Kd e1 e2 e3 e4 : ℤ,
      (e1 = 1 ∨ e1 = -1) → (e2 = 1 ∨ e2 = -1) →
      (e3 = 1 ∨ e3 = -1) → (e4 = 1 ∨ e4 = -1) →
      UClass p q A B C D (a - 1) Ka → UClass p q A B C D (a - 1) Kb →
      UClass p q A B C D (a - 1) Kc → UClass p q A B C D (a - 1) Kd →
      Ka ≠ Kb → Ka ≠ Kc → Ka ≠ Kd → Kb ≠ Kc → Kb ≠ Kd → Kc ≠ Kd →
      e3 * Kc + e4 * Kd = 2 * e1 * Ka →
      e3 * Kc - e4 * Kd = 2 * e2 * Kb → False)
    (Ka Kb Kc Kd e1 e2 e3 e4 : ℤ)
    (he1 : e1 = 1 ∨ e1 = -1) (he2 : e2 = 1 ∨ e2 = -1)
    (he3 : e3 = 1 ∨ e3 = -1) (he4 : e4 = 1 ∨ e4 = -1)
    (haL : (∃ K', Ka = (p : ℤ) ^ 2 * K' ∧ UClass p q A B C D (a - 1) K') ∨ Ka = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hbL : (∃ K', Kb = (p : ℤ) ^ 2 * K' ∧ UClass p q A B C D (a - 1) K') ∨ Kb = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hcL : (∃ K', Kc = (p : ℤ) ^ 2 * K' ∧ UClass p q A B C D (a - 1) K') ∨ Kc = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hdL : (∃ K', Kd = (p : ℤ) ^ 2 * K' ∧ UClass p q A B C D (a - 1) K') ∨ Kd = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
    (hab : Ka ≠ Kb) (hac : Ka ≠ Kc) (had : Ka ≠ Kd)
    (hbc : Kb ≠ Kc) (hbd : Kb ≠ Kd) (hcd : Kc ≠ Kd)
    (hE1 : e3 * Kc + e4 * Kd = 2 * e1 * Ka)
    (hE2 : e3 * Kc - e4 * Kd = 2 * e2 * Kb) : False := by
  have ha1 : 1 ≤ a := by omega
  have hp2 : ((p : ℤ) ^ 2) ≠ 0 := pow_ne_zero _ (Nat.cast_ne_zero.mpr hp.out.ne_zero)
  rcases haL with ⟨Na, hNa, hUa⟩ | rfl <;>
    rcases hbL with ⟨Nb, hNb, hUb⟩ | rfl <;>
    rcases hcL with ⟨Nc, hNc, hUc⟩ | rfl <;>
    rcases hdL with ⟨Nd, hNd, hUd⟩ | rfl
  · -- all four p²-divisible: cancel p² and recurse
    have hE1' : e3 * Nc + e4 * Nd = 2 * e1 * Na :=
      mul_left_cancel₀ hp2
        (by linear_combination hE1 - e3 * hNc - e4 * hNd + 2 * e1 * hNa)
    have hE2' : e3 * Nc - e4 * Nd = 2 * e2 * Nb :=
      mul_left_cancel₀ hp2
        (by linear_combination hE2 - e3 * hNc + e4 * hNd + 2 * e2 * hNb)
    exact IH Na Nb Nc Nd e1 e2 e3 e4 he1 he2 he3 he4 hUa hUb hUc hUd
      (fun h => hab (by rw [hNa, hNb, h])) (fun h => hac (by rw [hNa, hNc, h]))
      (fun h => had (by rw [hNa, hNd, h])) (fun h => hbc (by rw [hNb, hNc, h]))
      (fun h => hbd (by rw [hNb, hNd, h])) (fun h => hcd (by rw [hNc, hNd, h]))
      hE1' hE2'
  · -- M7 at d
    exact lowq_M7a_kill p q hpodd hpq A B hpAB a ha1 e4 (2 * e1 * Na - e3 * Nc)
      (by rcases he4 with rfl | rfl <;> norm_num)
      (by linear_combination hE1 + 2 * e1 * hNa - e3 * hNc)
  · -- M7 at c
    exact lowq_M7a_kill p q hpodd hpq A B hpAB a ha1 e3 (2 * e1 * Na - e4 * Nd)
      (by rcases he3 with rfl | rfl <;> norm_num)
      (by linear_combination hE1 + 2 * e1 * hNa - e4 * hNd)
  · exact hcd rfl
  · -- M7 at b
    exact lowq_M7a_kill p q hpodd hpq A B hpAB a ha1 (2 * e2) (e3 * Nc - e4 * Nd)
      (by rcases he2 with rfl | rfl <;> norm_num)
      (by linear_combination -hE2 + e3 * hNc - e4 * hNd)
  · exact hbd rfl
  · exact hbc rfl
  · exact hbc rfl
  · -- M7 at a
    exact lowq_M7a_kill p q hpodd hpq A B hpAB a ha1 (2 * e1) (e3 * Nc + e4 * Nd)
      (by rcases he1 with rfl | rfl <;> norm_num)
      (by linear_combination -hE1 + e3 * hNc + e4 * hNd)
  · exact had rfl
  · exact hac rfl
  · exact hac rfl
  · exact hab rfl
  · exact hab rfl
  · exact hab rfl
  · exact hab rfl

set_option maxHeartbeats 1600000 in
/-- The step router. If no assignment exists at rung a−1, then no assignment
exists at rung a. The sixteen buckets follow the chi-class count. -/
lemma no_assignment_step (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (a : ℕ) (ha2 : 2 ≤ a)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (IH : ∀ Ka Kb Kc Kd e1 e2 e3 e4 : ℤ,
      (e1 = 1 ∨ e1 = -1) → (e2 = 1 ∨ e2 = -1) →
      (e3 = 1 ∨ e3 = -1) → (e4 = 1 ∨ e4 = -1) →
      UClass p q A B C D (a - 1) Ka → UClass p q A B C D (a - 1) Kb →
      UClass p q A B C D (a - 1) Kc → UClass p q A B C D (a - 1) Kd →
      Ka ≠ Kb → Ka ≠ Kc → Ka ≠ Kd → Kb ≠ Kc → Kb ≠ Kd → Kc ≠ Kd →
      e3 * Kc + e4 * Kd = 2 * e1 * Ka →
      e3 * Kc - e4 * Kd = 2 * e2 * Kb → False)
    (Ka Kb Kc Kd e1 e2 e3 e4 : ℤ)
    (he1 : e1 = 1 ∨ e1 = -1) (he2 : e2 = 1 ∨ e2 = -1)
    (he3 : e3 = 1 ∨ e3 = -1) (he4 : e4 = 1 ∨ e4 = -1)
    (hKa : UClass p q A B C D a Ka) (hKb : UClass p q A B C D a Kb)
    (hKc : UClass p q A B C D a Kc) (hKd : UClass p q A B C D a Kd)
    (hab : Ka ≠ Kb) (hac : Ka ≠ Kc) (had : Ka ≠ Kd)
    (hbc : Kb ≠ Kc) (hbd : Kb ≠ Kd) (hcd : Kc ≠ Kd)
    (hE1 : e3 * Kc + e4 * Kd = 2 * e1 * Ka)
    (hE2 : e3 * Kc - e4 * Kd = 2 * e2 * Kb) : False := by
  have ha1 : 1 ≤ a := by omega
  have hsplit : ∀ K : ℤ, UClass p q A B C D a K →
      (((∃ K', K = (p : ℤ) ^ 2 * K' ∧ UClass p q A B C D (a - 1) K') ∨ K = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)))
       ∨ (K = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im) ∨ K = ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((star (⟨C, D⟩ : GaussianInt)) ^ 4)).im))) := by
    intro K hK
    rcases (UClass_step p q A B C D a ha2 K).mp hK with hlow | h7 | h8 | h9
    · exact Or.inl (Or.inl hlow)
    · exact Or.inl (Or.inr h7)
    · exact Or.inr (Or.inl h8)
    · exact Or.inr (Or.inr h9)
  have wk : ∀ K : ℤ, ((∃ K', K = (p : ℤ) ^ 2 * K' ∧ UClass p q A B C D (a - 1) K') ∨ K = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im))) →
      ((∃ N, K = (p : ℤ) ^ 2 * N) ∨ K = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im))) := by
    intro K h
    rcases h with ⟨K', h1, _⟩ | h
    · exact Or.inl ⟨K', h1⟩
    · exact Or.inr h
  rcases hsplit Ka hKa with haL | ha8 <;>
    rcases hsplit Kb hKb with hbL | hb8 <;>
    rcases hsplit Kc hKc with hcL | hc8 <;>
    rcases hsplit Kd hKd with hdL | hd8
  · exact dispatch_low_step p q hpodd hpq a ha2 A B C D hpAB IH Ka Kb Kc Kd e1 e2 e3 e4
      he1 he2 he3 he4 haL hbL hcL hdL hab hac had hbc hbd hcd hE1 hE2
  · exact dispatch_loned_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Ka Kb Kc Kd
      e1 e2 e3 e4 he1 he2 he3 he4 hd8 (wk _ haL) (wk _ hbL) (wk _ hcL) hab hac hbc hE1 hE2
  · exact dispatch_lonec_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Ka Kb Kc Kd
      e1 e2 e3 e4 he1 he2 he3 he4 hc8 (wk _ haL) (wk _ hbL) (wk _ hdL) hab had hbd hE1 hE2
  · -- c, d both chi
    rcases hc8 with rfl | rfl <;> rcases hd8 with rfl | rfl
    · exact hcd rfl
    · exact dispatch_56_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Ka Kb e1 e2 e3 e4
        he1 he2 he3 he4 (wk _ haL) (wk _ hbL) hE1 hE2
    · exact dispatch_56_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Ka Kb e1 (-e2) e4 e3
        he1 (by rcases he2 with rfl | rfl <;> norm_num) he4 he3 (wk _ haL) (wk _ hbL)
        (by linarith [hE1]) (by linarith [hE2])
    · exact hcd rfl
  · exact dispatch_loneb_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Ka Kb Kc Kd
      e1 e2 e3 e4 he1 he2 he3 he4 hb8 (wk _ haL) (wk _ hcL) (wk _ hdL) hac had hcd hE1 hE2
  · -- b, d both chi
    rcases hb8 with rfl | rfl <;> rcases hd8 with rfl | rfl
    · exact hbd rfl
    · exact dispatch_bd_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Ka _ Kc _
        e1 e2 e3 e4 he1 he2 he3 he4 (Or.inl ⟨rfl, rfl⟩) (wk _ haL) (wk _ hcL) hE1 hE2
    · exact dispatch_bd_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Ka _ Kc _
        e1 e2 e3 e4 he1 he2 he3 he4 (Or.inr ⟨rfl, rfl⟩) (wk _ haL) (wk _ hcL) hE1 hE2
    · exact hbd rfl
  · -- b, c both chi
    rcases hb8 with rfl | rfl <;> rcases hc8 with rfl | rfl
    · exact hbc rfl
    · exact dispatch_bc_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Ka _ _ Kd
        e1 e2 e3 e4 he1 he2 he3 he4 (Or.inl ⟨rfl, rfl⟩) (wk _ haL) (wk _ hdL) hE1 hE2
    · exact dispatch_bc_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Ka _ _ Kd
        e1 e2 e3 e4 he1 he2 he3 he4 (Or.inr ⟨rfl, rfl⟩) (wk _ haL) (wk _ hdL) hE1 hE2
    · exact hbc rfl
  · -- b, c, d all chi: pigeonhole
    rcases hb8 with rfl | rfl <;> rcases hc8 with rfl | rfl <;> rcases hd8 with rfl | rfl <;>
      first
        | exact hbc rfl
        | exact hbd rfl
        | exact hcd rfl
  · exact dispatch_lonea_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Ka Kb Kc Kd
      e1 e2 e3 e4 he1 he2 he3 he4 ha8 (wk _ hbL) (wk _ hcL) (wk _ hdL) hbc hbd hcd hE1 hE2
  · -- a, d both chi
    rcases ha8 with rfl | rfl <;> rcases hd8 with rfl | rfl
    · exact had rfl
    · exact dispatch_ad_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD _ Kb Kc _
        e1 e2 e3 e4 he1 he2 he3 he4 (Or.inl ⟨rfl, rfl⟩) (wk _ hbL) (wk _ hcL) hE1 hE2
    · exact dispatch_ad_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD _ Kb Kc _
        e1 e2 e3 e4 he1 he2 he3 he4 (Or.inr ⟨rfl, rfl⟩) (wk _ hbL) (wk _ hcL) hE1 hE2
    · exact had rfl
  · -- a, c both chi
    rcases ha8 with rfl | rfl <;> rcases hc8 with rfl | rfl
    · exact hac rfl
    · exact dispatch_ac_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD _ Kb _ Kd
        e1 e2 e3 e4 he1 he2 he3 he4 (Or.inl ⟨rfl, rfl⟩) (wk _ hbL) (wk _ hdL) hE1 hE2
    · exact dispatch_ac_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD _ Kb _ Kd
        e1 e2 e3 e4 he1 he2 he3 he4 (Or.inr ⟨rfl, rfl⟩) (wk _ hbL) (wk _ hdL) hE1 hE2
    · exact hac rfl
  · -- a, c, d all chi: pigeonhole
    rcases ha8 with rfl | rfl <;> rcases hc8 with rfl | rfl <;> rcases hd8 with rfl | rfl <;>
      first
        | exact hac rfl
        | exact had rfl
        | exact hcd rfl
  · -- a, b both chi
    rcases ha8 with rfl | rfl <;> rcases hb8 with rfl | rfl
    · exact hab rfl
    · exact dispatch_ab56_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Kc Kd e1 e2 e3 e4
        he1 he2 he3 he4 (wk _ hcL) (wk _ hdL) hE1 hE2
    · exact dispatch_ab56_a p q hpodd hqodd hpq a ha1 A B C D hpAB hqCD Kc Kd e2 e1 e3 (-e4)
        he2 he1 he3 (by rcases he4 with rfl | rfl <;> norm_num) (wk _ hcL) (wk _ hdL)
        (by linarith [hE2]) (by linarith [hE1])
    · exact hab rfl
  · -- a, b, d all chi: pigeonhole
    rcases ha8 with rfl | rfl <;> rcases hb8 with rfl | rfl <;> rcases hd8 with rfl | rfl <;>
      first
        | exact hab rfl
        | exact had rfl
        | exact hbd rfl
  · -- a, b, c all chi: pigeonhole
    rcases ha8 with rfl | rfl <;> rcases hb8 with rfl | rfl <;> rcases hc8 with rfl | rfl <;>
      first
        | exact hab rfl
        | exact hac rfl
        | exact hbc rfl
  · -- all four chi: pigeonhole
    rcases ha8 with rfl | rfl <;> rcases hb8 with rfl | rfl <;>
      rcases hc8 with rfl | rfl <;> rcases hd8 with rfl | rfl <;>
      first
        | exact hab rfl
        | exact hac rfl
        | exact hbc rfl

/-- Level 4a through level 2a: real part. -/
lemma re4a_eq_2a (A B : ℤ) (a : ℕ) :
    (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) = (((⟨A, B⟩ : GaussianInt) ^ (2 * a)).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ (2 * a)).im) ^ 2 := by
  have hsplit : (⟨A, B⟩ : GaussianInt) ^ (4 * a) = (⟨A, B⟩ : GaussianInt) ^ (2 * a) * (⟨A, B⟩ : GaussianInt) ^ (2 * a) := by
    rw [← pow_add]; congr 1; omega
  rw [hsplit]
  simp [Zsqrtd.re_mul]
  try ring

/-- Level 4a through level 2a: imaginary part. -/
lemma im4a_eq_2a (A B : ℤ) (a : ℕ) :
    (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) = 2 * (((⟨A, B⟩ : GaussianInt) ^ (2 * a)).re) * (((⟨A, B⟩ : GaussianInt) ^ (2 * a)).im) := by
  have hsplit : (⟨A, B⟩ : GaussianInt) ^ (4 * a) = (⟨A, B⟩ : GaussianInt) ^ (2 * a) * (⟨A, B⟩ : GaussianInt) ^ (2 * a) := by
    rw [← pow_add]; congr 1; omega
  rw [hsplit]
  simp [Zsqrtd.im_mul]
  try ring

/-- The norm of the half-level power. -/
lemma norm_2a (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (a : ℕ) :
    (((⟨A, B⟩ : GaussianInt) ^ (2 * a)).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ (2 * a)).im) ^ 2 = (p : ℤ) ^ (2 * a) := by
  have hnorm := norm_coord p A B hpAB a
  have hre := re4a_eq_2a A B a
  have him := im4a_eq_2a A B a
  have hpp : ((p : ℤ) ^ (2 * a)) ^ 2 = (p : ℤ) ^ (4 * a) := by
    rw [← pow_mul]; congr 1; omega
  have hsq : ((((⟨A, B⟩ : GaussianInt) ^ (2 * a)).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ (2 * a)).im) ^ 2) ^ 2 = ((p : ℤ) ^ (2 * a)) ^ 2 := by
    linear_combination hnorm - ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) + (((⟨A, B⟩ : GaussianInt) ^ (2 * a)).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ (2 * a)).im) ^ 2) * hre
      - ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) + 2 * (((⟨A, B⟩ : GaussianInt) ^ (2 * a)).re) * (((⟨A, B⟩ : GaussianInt) ^ (2 * a)).im)) * him - hpp
  have hnn : 0 ≤ (((⟨A, B⟩ : GaussianInt) ^ (2 * a)).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ (2 * a)).im) ^ 2 := by positivity
  have hnn2 : (0 : ℤ) ≤ (p : ℤ) ^ (2 * a) := by positivity
  nlinarith [hsq, hnn, hnn2]

/-- The imaginary part of an even power is even. -/
lemma im_2a_even (A B : ℤ) (a : ℕ) : Even (((⟨A, B⟩ : GaussianInt) ^ (2 * a)).im) := by
  have hsplit : (⟨A, B⟩ : GaussianInt) ^ (2 * a) = (⟨A, B⟩ : GaussianInt) ^ a * (⟨A, B⟩ : GaussianInt) ^ a := by
    rw [← pow_add]; congr 1; omega
  rw [hsplit]
  exact ⟨(((⟨A, B⟩ : GaussianInt) ^ a).re) * (((⟨A, B⟩ : GaussianInt) ^ a).im), by simp [Zsqrtd.im_mul]; try ring⟩

/-- The imaginary part at rung a does not vanish. -/
lemma im4a_ne_zero (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (a : ℕ) (ha : 1 ≤ a) :
    (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) ≠ 0 := by
  intro h0
  exact (p_not_dvd_coords p hpodd A B hpAB a ha).2 (by rw [h0]; exact dvd_zero _)

/-- Both half-level coordinates do not vanish. -/
lemma coords_2a_ne_zero (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (a : ℕ) (ha : 1 ≤ a) :
    (((⟨A, B⟩ : GaussianInt) ^ (2 * a)).re) ≠ 0 ∧ (((⟨A, B⟩ : GaussianInt) ^ (2 * a)).im) ≠ 0 := by
  have h4 := im4a_ne_zero p hpodd A B hpAB a ha
  have heq := im4a_eq_2a A B a
  constructor <;> intro h0 <;> apply h4 <;> rw [heq, h0] <;> ring

/-- The half-level real part is odd. -/
lemma re_2a_odd (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (a : ℕ) : Odd (((⟨A, B⟩ : GaussianInt) ^ (2 * a)).re) := by
  have hn := norm_2a p A B hpAB a
  obtain ⟨k, hk⟩ := im_2a_even A B a
  obtain ⟨d, hd⟩ := odd_cast p hpodd
  obtain ⟨t, ht⟩ := Int.even_mul_succ_self d
  have hp2 : (p : ℤ) ^ 2 = 8 * t + 1 := by rw [hd]; linear_combination 4 * ht
  have hpa : (p : ℤ) ^ (2 * a) = (8 * t + 1) ^ a := by rw [pow_mul, hp2]
  have h81 : ((8 * t + 1 : ℤ)) ≡ 1 [ZMOD 8] := by
    show (8 * t + 1 : ℤ) % 8 = 1 % 8
    omega
  have h1 : (8 * t + 1 : ℤ) ^ a % 8 = 1 := by
    have hm := h81.pow a
    have hm' : (8 * t + 1 : ℤ) ^ a % 8 = 1 ^ a % 8 := hm
    simpa using hm'
  rcases Int.even_or_odd (((⟨A, B⟩ : GaussianInt) ^ (2 * a)).re) with ⟨m, hm⟩ | ho
  · exfalso
    rw [hm, hk] at hn
    have hexp : 4 * m ^ 2 + 4 * k ^ 2 = (8 * t + 1) ^ a := by
      rw [← hpa]; linear_combination hn
    generalize m ^ 2 = M2 at hexp
    generalize k ^ 2 = K2 at hexp
    generalize hg : (8 * t + 1 : ℤ) ^ a = P at hexp h1
    omega
  · exact ho

/-- The half-level coordinates are coprime. -/
lemma coprime_2a (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (a : ℕ) (ha : 1 ≤ a) :
    IsCoprime (((⟨A, B⟩ : GaussianInt) ^ (2 * a)).re) (((⟨A, B⟩ : GaussianInt) ^ (2 * a)).im) := by
  have hsum := norm_2a p A B hpAB a
  rw [Int.isCoprime_iff_gcd_eq_one]
  by_contra hg
  obtain ⟨r, hrprime, hrdvd⟩ := Nat.exists_prime_and_dvd hg
  have hrR : (r : ℤ) ∣ (((⟨A, B⟩ : GaussianInt) ^ (2 * a)).re) :=
    (Int.natCast_dvd_natCast.mpr hrdvd).trans (Int.gcd_dvd_left _ _)
  have hrI : (r : ℤ) ∣ (((⟨A, B⟩ : GaussianInt) ^ (2 * a)).im) :=
    (Int.natCast_dvd_natCast.mpr hrdvd).trans (Int.gcd_dvd_right _ _)
  have hrP : Prime (r : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hrprime
  have hr2a : (r : ℤ) ∣ (p : ℤ) ^ (2 * a) := by
    rw [← hsum]
    exact dvd_add (dvd_pow hrR (by norm_num)) (dvd_pow hrI (by norm_num))
  have hrp : (r : ℤ) ∣ (p : ℤ) := hrP.dvd_of_dvd_pow hr2a
  have hrpn : r = p := by
    have hnat : r ∣ p := by exact_mod_cast hrp
    exact (Nat.prime_dvd_prime_iff_eq hrprime hp.out).mp hnat
  rw [hrpn] at hrR hrI
  obtain ⟨u, hu⟩ := hrR
  obtain ⟨v, hv⟩ := hrI
  refine (p_not_dvd_coords p hpodd A B hpAB a ha).1 ?_
  have hre := re4a_eq_2a A B a
  exact ⟨(p : ℤ) * u ^ 2 - (p : ℤ) * v ^ 2, by rw [hre, hu, hv]; ring⟩

/-- χ does not divide the conjugate of π^(4a)·χ⁴. -/
lemma chi_not_dvd_star_paw4 (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) (a : ℕ) :
    ¬ (⟨C, D⟩ : GaussianInt) ∣ star (((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((⟨C, D⟩ : GaussianInt) ^ 4)) := by
  intro h
  rw [star_mul, star_pow, star_pow] at h
  have hχprime : Prime (⟨C, D⟩ : GaussianInt) := prime_pi q C D hqCD
  rcases hχprime.dvd_mul.mp h with h1 | h1
  · exact pi_not_dvd_star q hqodd C D hqCD (hχprime.dvd_of_dvd_pow h1)
  · have h2 := hχprime.dvd_of_dvd_pow h1
    have hstar : star (⟨A, B⟩ : GaussianInt) = (⟨A, -B⟩ : GaussianInt) := by
      ext <;> simp
    rw [hstar] at h2
    have hpAB2 : A ^ 2 + (-B) ^ 2 = p := by rw [neg_pow]; ring_nf; linarith [hpAB]
    exact not_dvd_other q p (fun hh => hpq hh.symm) C D A (-B) hqCD hpAB2 h2

/-- q² never divides c·M8ₐ for q ∤ c. -/
lemma q2_not_dvd_M8a_u (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (a : ℕ) (c m : ℤ) (hc : ¬ (q : ℤ) ∣ c)
    (h : c * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im) = (q : ℤ) ^ 2 * m) : False :=
  p2_extract_kill q hqodd C D hqCD (((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((⟨C, D⟩ : GaussianInt) ^ 4)) c m hc
    (Dvd.dvd.mul_left (dvd_pow_self _ (by norm_num)) _)
    (chi_not_dvd_star_paw4 p q hqodd hpq A B C D hpAB hqCD a) h

/-- q² never divides c·M9ₐ for q ∤ c. -/
lemma q2_not_dvd_M9a_u (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (a : ℕ) (c m : ℤ) (hc : ¬ (q : ℤ) ∣ c)
    (h : c * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((star (⟨C, D⟩ : GaussianInt)) ^ 4)).im) = (q : ℤ) ^ 2 * m) : False := by
  have hstar : (star (⟨C, D⟩ : GaussianInt)) = (⟨C, -D⟩ : GaussianInt) := by ext <;> simp
  have hqCD2 : C ^ 2 + (-D) ^ 2 = q := by rw [neg_pow]; ring_nf; linarith [hqCD]
  rw [hstar] at h
  exact p2_extract_kill q hqodd C (-D) hqCD2
    (((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((⟨C, -D⟩ : GaussianInt) ^ 4)) c m hc
    (Dvd.dvd.mul_left (dvd_pow_self _ (by norm_num)) _)
    (chi_not_dvd_star_paw4 p q hqodd hpq A B C (-D) hpAB hqCD2 a) h

/-- The chi-class coordinate combination R₄ₐY + ε·I₄ₐX does not vanish. -/
lemma M8a_ne_zero_u (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (a : ℕ) (ha : 1 ≤ a)
    (ε : ℤ) (hε : ε = 1 ∨ ε = -1)
    (h : (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) * ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) + ε * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) * ((((⟨C, D⟩ : GaussianInt) ^ 4).re))) = 0) : False := by
  have hε2 : ε ^ 2 = 1 := by rcases hε with rfl | rfl <;> norm_num
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  have hcop := coprime_coords p hpodd A B hpAB a ha
  have hY0 : ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) ≠ 0 := im4_ne_zero q hqodd C D hqCD
  have hI40 : (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) ≠ 0 := im4a_ne_zero p hpodd A B hpAB a ha
  have hq4c : ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) ^ 2 + ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) ^ 2 = (q : ℤ) ^ 4 :=
    norm4_coord q C D hqCD
  have hp4ac : (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) ^ 2 = (p : ℤ) ^ (4 * a) := norm_coord p A B hpAB a
  have hIY : (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) ∣ ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) := by
    have hd : (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) ∣ ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) * (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) :=
      ⟨-(ε * ((((⟨C, D⟩ : GaussianInt) ^ 4).re))), by linear_combination h⟩
    exact (hcop.symm).dvd_of_dvd_mul_right hd
  obtain ⟨u, hu⟩ := hIY
  have hX : ε * ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) = -((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) * u) := by
    have h0 : (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) * u + ε * ((((⟨C, D⟩ : GaussianInt) ^ 4).re))) = 0 := by
      linear_combination h - (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) * hu
    rcases mul_eq_zero.mp h0 with h' | h'
    · exact absurd h' hI40
    · linarith
  have hXsq : (ε * ((((⟨C, D⟩ : GaussianInt) ^ 4).re))) ^ 2 = (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) ^ 2 * u ^ 2 := by rw [hX]; ring
  have hX2 : ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) ^ 2 = (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).re) ^ 2 * u ^ 2 := by
    linear_combination hXsq - ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) ^ 2 * hε2
  have hY2 : ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) ^ 2 = (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) ^ 2 * u ^ 2 := by rw [hu]; ring
  have hkey : u ^ 2 * (p : ℤ) ^ (4 * a) = (q : ℤ) ^ 4 := by
    linear_combination hq4c - hX2 - hY2 - u ^ 2 * hp4ac
  have hdq : (p : ℤ) ∣ (q : ℤ) ^ 4 :=
    (dvd_pow_self _ (show 4 * a ≠ 0 by omega)).trans ⟨u ^ 2, by linear_combination -hkey⟩
  have hq' : (p : ℤ) ∣ (q : ℤ) := hpP.dvd_of_dvd_pow hdq
  have hnat : p ∣ q := by exact_mod_cast hq'
  exact hpq ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp hnat)

set_option maxHeartbeats 1600000 in
/-- The M8/M9 ratio kill, generic in the odd base s: the coordinate relation
forces q⁴ − s⁴ = 8T², which the descent refutes. -/
lemma ratio_M8_M9_kill_gen (q s : ℕ) [hq : Fact (Nat.Prime q)]
    (hqodd : q % 2 = 1) (hsodd : s % 2 = 1)
    (hcop : Nat.Coprime q s) (hqnes : q ≠ s) (hq0 : 0 < q) (hs0 : 0 < s)
    (R I X Y δ : ℤ) (hδ : δ = 1 ∨ δ = -1)
    (hp4 : R ^ 2 + I ^ 2 = (s : ℤ) ^ 2)
    (hq4 : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 4)
    (hcopRI : IsCoprime R I) (hcopXY : IsCoprime X Y)
    (hRodd : Odd R)
    (hR0 : R ≠ 0) (hI0 : I ≠ 0) (hX0 : X ≠ 0) (hY0 : Y ≠ 0)
    (h : (R ^ 2 - I ^ 2) * Y + (2 * R * I) * X
      = 2 * δ * ((2 * R * I) * X - (R ^ 2 - I ^ 2) * Y)) : False := by
  have hP3 : Prime (3 : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; norm_num
  have hoddp4 : Odd ((s : ℤ) ^ 2) := (odd_cast s hsodd).pow
  obtain ⟨c4, hc4⟩ := hoddp4
  obtain ⟨r, hr⟩ := hRodd
  have hIeven : Even I := by
    rcases Int.even_or_odd I with he | ho
    · exact he
    · exfalso
      obtain ⟨i, hi⟩ := ho
      have hpar : (2 * r + 1) ^ 2 + (2 * i + 1) ^ 2 = 2 * c4 + 1 := by
        rw [← hr, ← hi, ← hc4]; exact hp4
      have hexp : 4 * r ^ 2 + 4 * r + 4 * i ^ 2 + 4 * i + 2 = 2 * c4 + 1 := by
        linear_combination hpar
      generalize r ^ 2 = R2 at hexp
      generalize i ^ 2 = I2 at hexp
      omega
  obtain ⟨iv, hiv⟩ := hIeven
  have hR8odd : Odd (R ^ 2 - I ^ 2) :=
    ⟨2 * r ^ 2 + 2 * r - 2 * iv ^ 2, by rw [hr, hiv]; ring⟩
  have hR80 : R ^ 2 - I ^ 2 ≠ 0 := odd_ne_zero hR8odd
  have hI80 : 2 * R * I ≠ 0 := by
    intro h0
    rcases mul_eq_zero.mp h0 with h' | h'
    · rcases mul_eq_zero.mp h' with h'' | h''
      · norm_num at h''
      · exact hR0 h''
    · exact hI0 h'
  have hRR8 : IsCoprime R (R ^ 2 - I ^ 2) := by
    have h0 : IsCoprime R (I ^ 2) := hcopRI.pow_right
    have h1'' := (h0.neg_right).add_mul_right_right R
    have heq : -I ^ 2 + R * R = R ^ 2 - I ^ 2 := by ring
    rwa [heq] at h1''
  have hIR8 : IsCoprime I (R ^ 2 - I ^ 2) := by
    have h0 : IsCoprime I (R ^ 2) := hcopRI.symm.pow_right
    have h1'' := h0.add_mul_right_right (-I)
    have heq : R ^ 2 + -I * I = R ^ 2 - I ^ 2 := by ring
    rwa [heq] at h1''
  have hcop2 : IsCoprime (R ^ 2 - I ^ 2) (2 : ℤ) := by
    have hP2 : Prime (2 : ℤ) := Int.prime_two
    refine ((hP2.coprime_iff_not_dvd).mpr ?_).symm
    intro hd
    obtain ⟨k, hk⟩ := hd
    obtain ⟨m, hm⟩ := hR8odd
    omega
  have hcopR8I8 : IsCoprime (R ^ 2 - I ^ 2) (2 * R * I) :=
    (hcop2.mul_right hRR8.symm).mul_right hIR8.symm
  have hnorm8 : (R ^ 2 - I ^ 2) ^ 2 + (2 * R * I) ^ 2 = (s : ℤ) ^ 4 := by
    have hs4 : (R ^ 2 + I ^ 2) ^ 2 = (s : ℤ) ^ 4 := by rw [hp4]; ring
    linear_combination hs4
  rcases hδ with rfl | rfl
  · -- 3R₈Y = I₈X
    have h3 : 3 * ((R ^ 2 - I ^ 2) * Y) = (2 * R * I) * X := by linarith
    have hR8X : (R ^ 2 - I ^ 2) ∣ X := by
      refine hcopR8I8.dvd_of_dvd_mul_right ?_
      exact ⟨3 * Y, by linear_combination -h3⟩
    obtain ⟨xh, hxh⟩ := hR8X
    subst hxh
    have hYI8 : Y ∣ 2 * R * I := by
      refine (hcopXY.symm).dvd_of_dvd_mul_right ?_
      exact ⟨3 * (R ^ 2 - I ^ 2), by linear_combination -h3⟩
    obtain ⟨ih, hih⟩ := hYI8
    have h3c : ih * xh = 3 := by
      have h0 : (R ^ 2 - I ^ 2) * Y * (3 - ih * xh) = 0 := by
        linear_combination h3 + (R ^ 2 - I ^ 2) * xh * hih
      rcases mul_eq_zero.mp h0 with h' | h'
      · exact absurd h' (mul_ne_zero hR80 hY0)
      · linarith
    have hihd : ih ∣ 3 := ⟨xh, h3c.symm⟩
    have hcases : (ih = 1 ∧ xh = 3) ∨ (ih = -1 ∧ xh = -3)
        ∨ (ih = 3 ∧ xh = 1) ∨ (ih = -3 ∧ xh = -1) := by
      obtain ⟨i, hi, ha⟩ := (dvd_prime_pow hP3 1).mp (by simpa using hihd)
      interval_cases i
      rotate_left
      · rw [pow_one] at ha
        rcases Int.associated_iff.mp ha with rfl | rfl
        · exact Or.inr (Or.inr (Or.inl ⟨rfl, by linarith⟩))
        · exact Or.inr (Or.inr (Or.inr ⟨rfl, by linarith⟩))
      rw [pow_zero] at ha
      rcases Int.isUnit_iff.mp (associated_one_iff_isUnit.mp ha) with rfl | rfl
      · exact Or.inl ⟨rfl, by linarith⟩
      · exact Or.inr (Or.inl ⟨rfl, by linarith⟩)
    rcases hcases with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩
    · have hsq : (2 * R * I) ^ 2 = Y ^ 2 := by rw [hih]; ring
      exact descent_norm4' q s hqodd hsodd hcop hqnes hq0 hs0
        (R ^ 2 - I ^ 2) (by linear_combination -hq4 + hnorm8 - hsq)
    · have hsq : (2 * R * I) ^ 2 = Y ^ 2 := by rw [hih]; ring
      exact descent_norm4' q s hqodd hsodd hcop hqnes hq0 hs0
        (R ^ 2 - I ^ 2) (by linear_combination -hq4 + hnorm8 - hsq)
    · have hsq : (2 * R * I) ^ 2 = 9 * Y ^ 2 := by rw [hih]; ring
      exact descent_norm4' s q hsodd hqodd hcop.symm (Ne.symm hqnes) hs0 hq0
        Y (by linear_combination hq4 - hnorm8 + hsq)
    · have hsq : (2 * R * I) ^ 2 = 9 * Y ^ 2 := by rw [hih]; ring
      exact descent_norm4' s q hsodd hqodd hcop.symm (Ne.symm hqnes) hs0 hq0
        Y (by linear_combination hq4 - hnorm8 + hsq)
  · -- R₈Y = 3I₈X
    have h3 : (R ^ 2 - I ^ 2) * Y = 3 * ((2 * R * I) * X) := by linarith
    have hI8Y : (2 * R * I) ∣ Y := by
      refine hcopR8I8.symm.dvd_of_dvd_mul_right ?_
      exact ⟨3 * X, by linear_combination h3⟩
    obtain ⟨yh, hyh⟩ := hI8Y
    subst hyh
    have hXR8 : X ∣ (R ^ 2 - I ^ 2) := by
      refine (hcopXY).dvd_of_dvd_mul_right ?_
      exact ⟨3 * (2 * R * I), by linear_combination h3⟩
    obtain ⟨rh, hrh⟩ := hXR8
    have h3c : rh * yh = 3 := by
      have h0 : (2 * R * I) * X * (rh * yh - 3) = 0 := by
        linear_combination h3 - (2 * R * I) * yh * hrh
      rcases mul_eq_zero.mp h0 with h' | h'
      · exact absurd h' (mul_ne_zero hI80 hX0)
      · linarith
    have hrhd : rh ∣ 3 := ⟨yh, h3c.symm⟩
    have hcases : (rh = 1 ∧ yh = 3) ∨ (rh = -1 ∧ yh = -3)
        ∨ (rh = 3 ∧ yh = 1) ∨ (rh = -3 ∧ yh = -1) := by
      obtain ⟨i, hi, ha⟩ := (dvd_prime_pow hP3 1).mp (by simpa using hrhd)
      interval_cases i
      rotate_left
      · rw [pow_one] at ha
        rcases Int.associated_iff.mp ha with rfl | rfl
        · exact Or.inr (Or.inr (Or.inl ⟨rfl, by linarith⟩))
        · exact Or.inr (Or.inr (Or.inr ⟨rfl, by linarith⟩))
      rw [pow_zero] at ha
      rcases Int.isUnit_iff.mp (associated_one_iff_isUnit.mp ha) with rfl | rfl
      · exact Or.inl ⟨rfl, by linarith⟩
      · exact Or.inr (Or.inl ⟨rfl, by linarith⟩)
    rcases hcases with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩
    · have hsq : (R ^ 2 - I ^ 2) ^ 2 = X ^ 2 := by rw [hrh]; ring
      exact descent_norm4' q s hqodd hsodd hcop hqnes hq0 hs0
        (2 * R * I) (by linear_combination -hq4 + hnorm8 - hsq)
    · have hsq : (R ^ 2 - I ^ 2) ^ 2 = X ^ 2 := by rw [hrh]; ring
      exact descent_norm4' q s hqodd hsodd hcop hqnes hq0 hs0
        (2 * R * I) (by linear_combination -hq4 + hnorm8 - hsq)
    · have hsq : (R ^ 2 - I ^ 2) ^ 2 = 9 * X ^ 2 := by rw [hrh]; ring
      exact descent_norm4' s q hsodd hqodd hcop.symm (Ne.symm hqnes) hs0 hq0
        X (by linear_combination hq4 - hnorm8 + hsq)
    · have hsq : (R ^ 2 - I ^ 2) ^ 2 = 9 * X ^ 2 := by rw [hrh]; ring
      exact descent_norm4' s q hsodd hqodd hcop.symm (Ne.symm hqnes) hs0 hq0
        X (by linear_combination hq4 - hnorm8 + hsq)

set_option maxHeartbeats 1600000 in
/-- The ratio-2 step. If rung a−1 has no ratio-2 pair, then rung a has none. -/
lemma no_ratio2_step (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (a : ℕ) (ha2 : 2 ≤ a)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (IHr : ∀ W V δ : ℤ, (δ = 1 ∨ δ = -1) →
      UClass p q A B C D (a - 1) W → UClass p q A B C D (a - 1) V →
      W = 2 * δ * V → False)
    (W V δ : ℤ) (hδ : δ = 1 ∨ δ = -1)
    (hW : UClass p q A B C D a W) (hV : UClass p q A B C D a V)
    (h : W = 2 * δ * V) : False := by
  have ha1 : 1 ≤ a := by omega
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  have hp20 : ((p : ℤ) ^ 2) ≠ 0 := pow_ne_zero _ (Nat.cast_ne_zero.mpr hp.out.ne_zero)
  have hq20 : ((q : ℤ) ^ 2) ≠ 0 := pow_ne_zero _ (Nat.cast_ne_zero.mpr hq.out.ne_zero)
  have hI40 : (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) ≠ 0 := im4a_ne_zero p hpodd A B hpAB a ha1
  have hpn2δ : ¬ (p : ℤ) ∣ (2 * δ) := by
    intro hd
    have h2 : (p : ℤ) ∣ 2 := by
      rcases hδ with rfl | rfl
      · simpa using hd
      · exact dvd_neg.mp (by simpa using hd)
    have := Int.le_of_dvd (by norm_num) h2
    have h2' : (2 : ℤ) ≤ (p : ℤ) := by exact_mod_cast hp.out.two_le
    omega
  have hqn2δ : ¬ (q : ℤ) ∣ (2 * δ) := by
    intro hd
    have h2 : (q : ℤ) ∣ 2 := by
      rcases hδ with rfl | rfl
      · simpa using hd
      · exact dvd_neg.mp (by simpa using hd)
    have := Int.le_of_dvd (by norm_num) h2
    have h2' : (2 : ℤ) ≤ (q : ℤ) := by exact_mod_cast hq.out.two_le
    omega
  have hpn1 : ¬ (p : ℤ) ∣ 1 := by
    intro hd
    have := Int.le_of_dvd (by norm_num) hd
    have h2' : (2 : ℤ) ≤ (p : ℤ) := by exact_mod_cast hp.out.two_le
    omega
  have hqn1 : ¬ (q : ℤ) ∣ 1 := by
    intro hd
    have := Int.le_of_dvd (by norm_num) hd
    have h2' : (2 : ℤ) ≤ (q : ℤ) := by exact_mod_cast hq.out.two_le
    omega
  have hM8c := M8a_coord A B C D a
  have hM9c := M9a_coord A B C D a
  have hre := re4a_eq_2a A B a
  have him := im4a_eq_2a A B a
  have HCXY := coprime_re4_im4 q hqodd C D hqCD
  have HY0 := im4_ne_zero q hqodd C D hqCD
  have hsodd : p ^ a % 2 = 1 := by
    have hm := Nat.pow_mod p a 2
    rw [hpodd] at hm
    simpa using hm
  have hcopqs : Nat.Coprime q (p ^ a) :=
    Nat.Coprime.pow_right a ((Nat.coprime_primes hq.out hp.out).mpr (Ne.symm hpq))
  have hqnes : q ≠ p ^ a := by
    intro hqe
    have hpd : p ∣ q := by rw [hqe]; exact dvd_pow_self p (by omega)
    exact hpq ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp hpd)
  have hq0 : 0 < q := hq.out.pos
  have hs0 : 0 < p ^ a := pow_pos hp.out.pos a
  have hnorm2a : (((⟨A, B⟩ : GaussianInt) ^ (2 * a)).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ (2 * a)).im) ^ 2 = ((p ^ a : ℕ) : ℤ) ^ 2 := by
    have hcast : ((p ^ a : ℕ) : ℤ) ^ 2 = (p : ℤ) ^ (2 * a) := by
      push_cast
      rw [← pow_mul]
      congr 1
      omega
    rw [hcast]
    exact norm_2a p A B hpAB a
  have hcop2a := coprime_2a p hpodd A B hpAB a ha1
  have hodd2a := re_2a_odd p hpodd A B hpAB a
  obtain ⟨hR20, hI20⟩ := coords_2a_ne_zero p hpodd A B hpAB a ha1
  rcases (UClass_step p q A B C D a ha2 W).mp hW with ⟨W', rfl, hWm⟩ | hWZ
  · rcases (UClass_step p q A B C D a ha2 V).mp hV with ⟨V', rfl, hVm⟩ | hVZ
    · exact IHr W' V' δ hδ hWm hVm (mul_left_cancel₀ hp20 (by linear_combination h))
    · rcases hVZ with heq | heq | heq <;> rw [heq] at h
      · exact lowq_M7a_kill p q hpodd hpq A B hpAB a ha1 (2 * δ) W'
          (by rcases hδ with rfl | rfl <;> norm_num)
          (by linear_combination -h)
      · exact p2_not_dvd_M8a p q hpodd hpq A B C D hpAB hqCD a ha1 (2 * δ) W' hpn2δ
          (by linear_combination -h)
      · exact p2_not_dvd_M9a p q hpodd hpq A B C D hpAB hqCD a ha1 (2 * δ) W' hpn2δ
          (by linear_combination -h)
  · rcases (UClass_step p q A B C D a ha2 V).mp hV with ⟨V', rfl, hVm⟩ | hVZ
    · rcases hWZ with rfl | rfl | rfl
      · exact lowq_M7a_kill p q hpodd hpq A B hpAB a ha1 1 (2 * δ * V')
          (by norm_num)
          (by linear_combination h)
      · exact p2_not_dvd_M8a p q hpodd hpq A B C D hpAB hqCD a ha1 1 (2 * δ * V') hpn1
          (by linear_combination h)
      · exact p2_not_dvd_M9a p q hpodd hpq A B C D hpAB hqCD a ha1 1 (2 * δ * V') hpn1
          (by linear_combination h)
    · rcases hWZ with rfl | rfl | rfl <;> rcases hVZ with heq | heq | heq <;> rw [heq] at h
      · -- M7ₐ = 2δ·M7ₐ
        have h0 : (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) * (1 - 2 * δ)) = 0 := by linear_combination h
        rcases mul_eq_zero.mp h0 with h' | h'
        · exact absurd h' hq20
        · rcases mul_eq_zero.mp h' with h'' | h''
          · exact hI40 h''
          · rcases hδ with rfl | rfl <;> omega
      · exact q2_not_dvd_M8a_u p q hqodd hpq A B C D hpAB hqCD a (2 * δ) (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) hqn2δ
          (by linear_combination -h)
      · exact q2_not_dvd_M9a_u p q hqodd hpq A B C D hpAB hqCD a (2 * δ) (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im) hqn2δ
          (by linear_combination -h)
      · exact q2_not_dvd_M8a_u p q hqodd hpq A B C D hpAB hqCD a 1 (2 * δ * (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) hqn1
          (by linear_combination h)
      · -- M8ₐ = 2δ·M8ₐ
        refine M8a_ne_zero_u p q hpodd hqodd hpq A B C D hpAB hqCD a ha1 1 (Or.inl rfl) ?_
        have h0 : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im) * (1 - 2 * δ) = 0 := by linear_combination h
        rcases mul_eq_zero.mp h0 with h' | h'
        · linear_combination h' - hM8c
        · exfalso; rcases hδ with rfl | rfl <;> omega
      · -- M8ₐ = 2δ·M9ₐ
        exact ratio_M8_M9_kill_gen q (p ^ a) hqodd hsodd hcopqs hqnes hq0 hs0
          (((⟨A, B⟩ : GaussianInt) ^ (2 * a)).re) (((⟨A, B⟩ : GaussianInt) ^ (2 * a)).im) (((⟨C, D⟩ : GaussianInt) ^ 4).re) (((⟨C, D⟩ : GaussianInt) ^ 4).im) δ hδ hnorm2a (norm4_coord q C D hqCD)
          hcop2a HCXY hodd2a hR20 hI20
          (odd_ne_zero (re4_odd' q hqodd C D hqCD)) HY0
          (by linear_combination h - hM8c + 2 * δ * hM9c
            - (1 + 2 * δ) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) * hre - (1 - 2 * δ) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) * him)
      · exact q2_not_dvd_M9a_u p q hqodd hpq A B C D hpAB hqCD a 1 (2 * δ * (((⟨A, B⟩ : GaussianInt) ^ (4 * a)).im)) hqn1
          (by linear_combination h)
      · -- M9ₐ = 2δ·M8ₐ
        exact ratio_M8_M9_kill_gen q (p ^ a) hqodd hsodd hcopqs hqnes hq0 hs0
          (((⟨A, B⟩ : GaussianInt) ^ (2 * a)).re) (((⟨A, B⟩ : GaussianInt) ^ (2 * a)).im) (((⟨C, D⟩ : GaussianInt) ^ 4).re) (-(((⟨C, D⟩ : GaussianInt) ^ 4).im)) δ hδ hnorm2a
          (by linear_combination norm4_coord q C D hqCD)
          hcop2a (HCXY.neg_right) hodd2a hR20 hI20
          (odd_ne_zero (re4_odd' q hqodd C D hqCD)) (neg_ne_zero.mpr HY0)
          (by linear_combination h - hM9c + 2 * δ * hM8c
            + (1 + 2 * δ) * (((⟨C, D⟩ : GaussianInt) ^ 4).im) * hre - (1 - 2 * δ) * (((⟨C, D⟩ : GaussianInt) ^ 4).re) * him)
      · -- M9ₐ = 2δ·M9ₐ
        refine M8a_ne_zero_u p q hpodd hqodd hpq A B C D hpAB hqCD a ha1 (-1) (Or.inr rfl) ?_
        have h0 : ((((⟨A, B⟩ : GaussianInt) ^ (4 * a)) * ((star (⟨C, D⟩ : GaussianInt)) ^ 4)).im) * (1 - 2 * δ) = 0 := by linear_combination h
        rcases mul_eq_zero.mp h0 with h' | h'
        · linear_combination hM9c - h'
        · exfalso; rcases hδ with rfl | rfl <;> omega

/-- Unfold rung 1 of the class family into its four concrete classes. -/
lemma UClass_one (q : ℕ) (A B C D : ℤ) (K : ℤ)
    (hK : UClass p q A B C D 1 K) :
    ((K = (p : ℤ) ^ 2 * ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) ∨ K = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * 1)).im)))
     ∨ (K = (((((⟨A, B⟩ : GaussianInt) ^ (4 * 1)) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im)) ∨ K = (((((⟨A, B⟩ : GaussianInt) ^ (4 * 1)) * ((star (⟨C, D⟩ : GaussianInt)) ^ 4)).im)))) := by
  rcases hK with h | ⟨e, he1, he2, h⟩
  · left; left
    rw [h]; try norm_num
  · have he : e = 1 := by omega
    subst he
    rcases h with h | h | h
    · left; right
      rw [h]; try norm_num
    · right; left
      rw [h]; try norm_num
    · right; right
      rw [h]; try norm_num

set_option maxHeartbeats 1600000 in
/-- The assignment router at rung 1: the base of the induction. -/
lemma no_assignment_base (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (Ka Kb Kc Kd e1 e2 e3 e4 : ℤ)
    (he1 : e1 = 1 ∨ e1 = -1) (he2 : e2 = 1 ∨ e2 = -1)
    (he3 : e3 = 1 ∨ e3 = -1) (he4 : e4 = 1 ∨ e4 = -1)
    (hKa : UClass p q A B C D 1 Ka) (hKb : UClass p q A B C D 1 Kb)
    (hKc : UClass p q A B C D 1 Kc) (hKd : UClass p q A B C D 1 Kd)
    (hab : Ka ≠ Kb) (hac : Ka ≠ Kc) (had : Ka ≠ Kd)
    (hbc : Kb ≠ Kc) (hbd : Kb ≠ Kd) (hcd : Kc ≠ Kd)
    (hE1 : e3 * Kc + e4 * Kd = 2 * e1 * Ka)
    (hE2 : e3 * Kc - e4 * Kd = 2 * e2 * Kb) : False := by
  have ha1 : 1 ≤ 1 := le_refl 1
  have wk : ∀ K : ℤ, (K = (p : ℤ) ^ 2 * ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) ∨ K = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * 1)).im))) →
      ((∃ N, K = (p : ℤ) ^ 2 * N) ∨ K = (q : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ (4 * 1)).im))) := by
    intro K h
    rcases h with h | h
    · exact Or.inl ⟨(((⟨C, D⟩ : GaussianInt) ^ 4).im), h⟩
    · exact Or.inr h
  rcases UClass_one p q A B C D Ka hKa with haL | ha8 <;>
    rcases UClass_one p q A B C D Kb hKb with hbL | hb8 <;>
    rcases UClass_one p q A B C D Kc hKc with hcL | hc8 <;>
    rcases UClass_one p q A B C D Kd hKd with hdL | hd8
  · -- all four low: only two low classes at rung 1, so two values are equal
    rcases haL with rfl | rfl <;> rcases hbL with rfl | rfl <;>
      rcases hcL with rfl | rfl <;> rcases hdL with rfl | rfl <;>
      first
        | exact hab rfl
        | exact hac rfl
        | exact had rfl
        | exact hbc rfl
        | exact hbd rfl
        | exact hcd rfl
  · exact dispatch_loned_a p q hpodd hqodd hpq 1 ha1 A B C D hpAB hqCD Ka Kb Kc Kd
      e1 e2 e3 e4 he1 he2 he3 he4 hd8 (wk _ haL) (wk _ hbL) (wk _ hcL) hab hac hbc hE1 hE2
  · exact dispatch_lonec_a p q hpodd hqodd hpq 1 ha1 A B C D hpAB hqCD Ka Kb Kc Kd
      e1 e2 e3 e4 he1 he2 he3 he4 hc8 (wk _ haL) (wk _ hbL) (wk _ hdL) hab had hbd hE1 hE2
  · -- c, d both chi
    rcases hc8 with rfl | rfl <;> rcases hd8 with rfl | rfl
    · exact hcd rfl
    · exact dispatch_56_a p q hpodd hqodd hpq 1 ha1 A B C D hpAB hqCD Ka Kb e1 e2 e3 e4
        he1 he2 he3 he4 (wk _ haL) (wk _ hbL) hE1 hE2
    · exact dispatch_56_a p q hpodd hqodd hpq 1 ha1 A B C D hpAB hqCD Ka Kb e1 (-e2) e4 e3
        he1 (by rcases he2 with rfl | rfl <;> norm_num) he4 he3 (wk _ haL) (wk _ hbL)
        (by linarith [hE1]) (by linarith [hE2])
    · exact hcd rfl
  · exact dispatch_loneb_a p q hpodd hqodd hpq 1 ha1 A B C D hpAB hqCD Ka Kb Kc Kd
      e1 e2 e3 e4 he1 he2 he3 he4 hb8 (wk _ haL) (wk _ hcL) (wk _ hdL) hac had hcd hE1 hE2
  · -- b, d both chi
    rcases hb8 with rfl | rfl <;> rcases hd8 with rfl | rfl
    · exact hbd rfl
    · exact dispatch_bd_a p q hpodd hqodd hpq 1 ha1 A B C D hpAB hqCD Ka _ Kc _
        e1 e2 e3 e4 he1 he2 he3 he4 (Or.inl ⟨rfl, rfl⟩) (wk _ haL) (wk _ hcL) hE1 hE2
    · exact dispatch_bd_a p q hpodd hqodd hpq 1 ha1 A B C D hpAB hqCD Ka _ Kc _
        e1 e2 e3 e4 he1 he2 he3 he4 (Or.inr ⟨rfl, rfl⟩) (wk _ haL) (wk _ hcL) hE1 hE2
    · exact hbd rfl
  · -- b, c both chi
    rcases hb8 with rfl | rfl <;> rcases hc8 with rfl | rfl
    · exact hbc rfl
    · exact dispatch_bc_a p q hpodd hqodd hpq 1 ha1 A B C D hpAB hqCD Ka _ _ Kd
        e1 e2 e3 e4 he1 he2 he3 he4 (Or.inl ⟨rfl, rfl⟩) (wk _ haL) (wk _ hdL) hE1 hE2
    · exact dispatch_bc_a p q hpodd hqodd hpq 1 ha1 A B C D hpAB hqCD Ka _ _ Kd
        e1 e2 e3 e4 he1 he2 he3 he4 (Or.inr ⟨rfl, rfl⟩) (wk _ haL) (wk _ hdL) hE1 hE2
    · exact hbc rfl
  · -- b, c, d all chi: pigeonhole
    rcases hb8 with rfl | rfl <;> rcases hc8 with rfl | rfl <;> rcases hd8 with rfl | rfl <;>
      first
        | exact hbc rfl
        | exact hbd rfl
        | exact hcd rfl
  · exact dispatch_lonea_a p q hpodd hqodd hpq 1 ha1 A B C D hpAB hqCD Ka Kb Kc Kd
      e1 e2 e3 e4 he1 he2 he3 he4 ha8 (wk _ hbL) (wk _ hcL) (wk _ hdL) hbc hbd hcd hE1 hE2
  · -- a, d both chi
    rcases ha8 with rfl | rfl <;> rcases hd8 with rfl | rfl
    · exact had rfl
    · exact dispatch_ad_a p q hpodd hqodd hpq 1 ha1 A B C D hpAB hqCD _ Kb Kc _
        e1 e2 e3 e4 he1 he2 he3 he4 (Or.inl ⟨rfl, rfl⟩) (wk _ hbL) (wk _ hcL) hE1 hE2
    · exact dispatch_ad_a p q hpodd hqodd hpq 1 ha1 A B C D hpAB hqCD _ Kb Kc _
        e1 e2 e3 e4 he1 he2 he3 he4 (Or.inr ⟨rfl, rfl⟩) (wk _ hbL) (wk _ hcL) hE1 hE2
    · exact had rfl
  · -- a, c both chi
    rcases ha8 with rfl | rfl <;> rcases hc8 with rfl | rfl
    · exact hac rfl
    · exact dispatch_ac_a p q hpodd hqodd hpq 1 ha1 A B C D hpAB hqCD _ Kb _ Kd
        e1 e2 e3 e4 he1 he2 he3 he4 (Or.inl ⟨rfl, rfl⟩) (wk _ hbL) (wk _ hdL) hE1 hE2
    · exact dispatch_ac_a p q hpodd hqodd hpq 1 ha1 A B C D hpAB hqCD _ Kb _ Kd
        e1 e2 e3 e4 he1 he2 he3 he4 (Or.inr ⟨rfl, rfl⟩) (wk _ hbL) (wk _ hdL) hE1 hE2
    · exact hac rfl
  · -- a, c, d all chi: pigeonhole
    rcases ha8 with rfl | rfl <;> rcases hc8 with rfl | rfl <;> rcases hd8 with rfl | rfl <;>
      first
        | exact hac rfl
        | exact had rfl
        | exact hcd rfl
  · -- a, b both chi
    rcases ha8 with rfl | rfl <;> rcases hb8 with rfl | rfl
    · exact hab rfl
    · exact dispatch_ab56_a p q hpodd hqodd hpq 1 ha1 A B C D hpAB hqCD Kc Kd e1 e2 e3 e4
        he1 he2 he3 he4 (wk _ hcL) (wk _ hdL) hE1 hE2
    · exact dispatch_ab56_a p q hpodd hqodd hpq 1 ha1 A B C D hpAB hqCD Kc Kd e2 e1 e3 (-e4)
        he2 he1 he3 (by rcases he4 with rfl | rfl <;> norm_num) (wk _ hcL) (wk _ hdL)
        (by linarith [hE2]) (by linarith [hE1])
    · exact hab rfl
  · -- a, b, d all chi: pigeonhole
    rcases ha8 with rfl | rfl <;> rcases hb8 with rfl | rfl <;> rcases hd8 with rfl | rfl <;>
      first
        | exact hab rfl
        | exact had rfl
        | exact hbd rfl
  · -- a, b, c all chi: pigeonhole
    rcases ha8 with rfl | rfl <;> rcases hb8 with rfl | rfl <;> rcases hc8 with rfl | rfl <;>
      first
        | exact hab rfl
        | exact hac rfl
        | exact hbc rfl
  · -- all four chi: pigeonhole
    rcases ha8 with rfl | rfl <;> rcases hb8 with rfl | rfl <;>
      rcases hc8 with rfl | rfl <;> rcases hd8 with rfl | rfl <;>
      first
        | exact hab rfl
        | exact hac rfl
        | exact hbc rfl

set_option maxHeartbeats 1600000 in
/-- The ratio-2 router at rung 1: the base of the induction. -/
lemma no_ratio2_base (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (W V δ : ℤ) (hδ : δ = 1 ∨ δ = -1)
    (hW : UClass p q A B C D 1 W) (hV : UClass p q A B C D 1 V)
    (h : W = 2 * δ * V) : False := by
  have ha1 : 1 ≤ 1 := le_refl 1
  have hp20 : ((p : ℤ) ^ 2) ≠ 0 := pow_ne_zero _ (Nat.cast_ne_zero.mpr hp.out.ne_zero)
  have hq20 : ((q : ℤ) ^ 2) ≠ 0 := pow_ne_zero _ (Nat.cast_ne_zero.mpr hq.out.ne_zero)
  have hY0 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero q hqodd C D hqCD
  have hI40 : ((((⟨A, B⟩ : GaussianInt) ^ (4 * 1)).im)) ≠ 0 := im4a_ne_zero p hpodd A B hpAB 1 ha1
  have hpn2δ : ¬ (p : ℤ) ∣ (2 * δ) := by
    intro hd
    have h2 : (p : ℤ) ∣ 2 := by
      rcases hδ with rfl | rfl
      · simpa using hd
      · exact dvd_neg.mp (by simpa using hd)
    have := Int.le_of_dvd (by norm_num) h2
    have h2' : (2 : ℤ) ≤ (p : ℤ) := by exact_mod_cast hp.out.two_le
    omega
  have hqn2δ : ¬ (q : ℤ) ∣ (2 * δ) := by
    intro hd
    have h2 : (q : ℤ) ∣ 2 := by
      rcases hδ with rfl | rfl
      · simpa using hd
      · exact dvd_neg.mp (by simpa using hd)
    have := Int.le_of_dvd (by norm_num) h2
    have h2' : (2 : ℤ) ≤ (q : ℤ) := by exact_mod_cast hq.out.two_le
    omega
  have hpn1 : ¬ (p : ℤ) ∣ 1 := by
    intro hd
    have := Int.le_of_dvd (by norm_num) hd
    have h2' : (2 : ℤ) ≤ (p : ℤ) := by exact_mod_cast hp.out.two_le
    omega
  have hqn1 : ¬ (q : ℤ) ∣ 1 := by
    intro hd
    have := Int.le_of_dvd (by norm_num) hd
    have h2' : (2 : ℤ) ≤ (q : ℤ) := by exact_mod_cast hq.out.two_le
    omega
  have hM8c := M8a_coord A B C D 1
  have hM9c := M9a_coord A B C D 1
  have hre := re4a_eq_2a A B 1
  have him := im4a_eq_2a A B 1
  have HCXY := coprime_re4_im4 q hqodd C D hqCD
  have hsodd : p ^ 1 % 2 = 1 := by simpa using hpodd
  have hcopqs : Nat.Coprime q (p ^ 1) :=
    Nat.Coprime.pow_right 1 ((Nat.coprime_primes hq.out hp.out).mpr (Ne.symm hpq))
  have hqnes : q ≠ p ^ 1 := by
    intro hqe
    have hpd : p ∣ q := by rw [hqe]; exact dvd_pow_self p (by omega)
    exact hpq ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp hpd)
  have hq0 : 0 < q := hq.out.pos
  have hs0 : 0 < p ^ 1 := pow_pos hp.out.pos 1
  have hnorm2a : (((⟨A, B⟩ : GaussianInt) ^ (2 * 1)).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ (2 * 1)).im) ^ 2 = ((p ^ 1 : ℕ) : ℤ) ^ 2 := by
    have hcast : ((p ^ 1 : ℕ) : ℤ) ^ 2 = (p : ℤ) ^ (2 * 1) := by
      push_cast
      ring
    rw [hcast]
    exact norm_2a p A B hpAB 1
  have hcop2a := coprime_2a p hpodd A B hpAB 1 ha1
  have hodd2a := re_2a_odd p hpodd A B hpAB 1
  obtain ⟨hR20, hI20⟩ := coords_2a_ne_zero p hpodd A B hpAB 1 ha1
  rcases UClass_one p q A B C D W hW with hWL | hWZ
  · rcases UClass_one p q A B C D V hV with hVL | hVZ
    · rcases hWL with rfl | rfl <;> rcases hVL with rfl | rfl
      · -- p²Y = 2δ·p²Y
        have h0 : (p : ℤ) ^ 2 * ((((⟨C, D⟩ : GaussianInt) ^ 4).im) * (1 - 2 * δ)) = 0 := by linear_combination h
        rcases mul_eq_zero.mp h0 with h' | h'
        · exact absurd h' hp20
        · rcases mul_eq_zero.mp h' with h'' | h''
          · exact hY0 h''
          · rcases hδ with rfl | rfl <;> omega
      · exact lowq_M7a_kill p q hpodd hpq A B hpAB 1 ha1 (2 * δ) ((((⟨C, D⟩ : GaussianInt) ^ 4).im))
          (by rcases hδ with rfl | rfl <;> norm_num)
          (by linear_combination -h)
      · exact lowq_M7a_kill p q hpodd hpq A B hpAB 1 ha1 1 (2 * δ * ((((⟨C, D⟩ : GaussianInt) ^ 4).im)))
          (by norm_num)
          (by linear_combination h)
      · -- q²I = 2δ·q²I
        have h0 : (q : ℤ) ^ 2 * (((((⟨A, B⟩ : GaussianInt) ^ (4 * 1)).im)) * (1 - 2 * δ)) = 0 := by linear_combination h
        rcases mul_eq_zero.mp h0 with h' | h'
        · exact absurd h' hq20
        · rcases mul_eq_zero.mp h' with h'' | h''
          · exact hI40 h''
          · rcases hδ with rfl | rfl <;> omega
    · rcases hWL with rfl | rfl <;> rcases hVZ with heq | heq <;> rw [heq] at h
      · exact p2_not_dvd_M8a p q hpodd hpq A B C D hpAB hqCD 1 ha1 (2 * δ) ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) hpn2δ
          (by linear_combination -h)
      · exact p2_not_dvd_M9a p q hpodd hpq A B C D hpAB hqCD 1 ha1 (2 * δ) ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) hpn2δ
          (by linear_combination -h)
      · exact q2_not_dvd_M8a_u p q hqodd hpq A B C D hpAB hqCD 1 (2 * δ) ((((⟨A, B⟩ : GaussianInt) ^ (4 * 1)).im)) hqn2δ
          (by linear_combination -h)
      · exact q2_not_dvd_M9a_u p q hqodd hpq A B C D hpAB hqCD 1 (2 * δ) ((((⟨A, B⟩ : GaussianInt) ^ (4 * 1)).im)) hqn2δ
          (by linear_combination -h)
  · rcases UClass_one p q A B C D V hV with hVL | hVZ
    · rcases hWZ with rfl | rfl <;> rcases hVL with heq | heq <;> rw [heq] at h
      · exact p2_not_dvd_M8a p q hpodd hpq A B C D hpAB hqCD 1 ha1 1 (2 * δ * ((((⟨C, D⟩ : GaussianInt) ^ 4).im))) hpn1
          (by linear_combination h)
      · exact q2_not_dvd_M8a_u p q hqodd hpq A B C D hpAB hqCD 1 1 (2 * δ * ((((⟨A, B⟩ : GaussianInt) ^ (4 * 1)).im))) hqn1
          (by linear_combination h)
      · exact p2_not_dvd_M9a p q hpodd hpq A B C D hpAB hqCD 1 ha1 1 (2 * δ * ((((⟨C, D⟩ : GaussianInt) ^ 4).im))) hpn1
          (by linear_combination h)
      · exact q2_not_dvd_M9a_u p q hqodd hpq A B C D hpAB hqCD 1 1 (2 * δ * ((((⟨A, B⟩ : GaussianInt) ^ (4 * 1)).im))) hqn1
          (by linear_combination h)
    · rcases hWZ with rfl | rfl <;> rcases hVZ with heq | heq <;> rw [heq] at h
      · -- M8₁ = 2δ·M8₁
        refine M8a_ne_zero_u p q hpodd hqodd hpq A B C D hpAB hqCD 1 ha1 1 (Or.inl rfl) ?_
        have h0 : (((((⟨A, B⟩ : GaussianInt) ^ (4 * 1)) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im)) * (1 - 2 * δ) = 0 := by linear_combination h
        rcases mul_eq_zero.mp h0 with h' | h'
        · linear_combination h' - hM8c
        · exfalso; rcases hδ with rfl | rfl <;> omega
      · -- M8₁ = 2δ·M9₁
        exact ratio_M8_M9_kill_gen q (p ^ 1) hqodd hsodd hcopqs hqnes hq0 hs0
          (((⟨A, B⟩ : GaussianInt) ^ (2 * 1)).re) (((⟨A, B⟩ : GaussianInt) ^ (2 * 1)).im) ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) δ hδ hnorm2a (norm4_coord q C D hqCD)
          hcop2a HCXY hodd2a hR20 hI20
          (odd_ne_zero (re4_odd' q hqodd C D hqCD)) hY0
          (by linear_combination h - hM8c + 2 * δ * hM9c
            - (1 + 2 * δ) * ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) * hre - (1 - 2 * δ) * ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) * him)
      · -- M9₁ = 2δ·M8₁
        exact ratio_M8_M9_kill_gen q (p ^ 1) hqodd hsodd hcopqs hqnes hq0 hs0
          (((⟨A, B⟩ : GaussianInt) ^ (2 * 1)).re) (((⟨A, B⟩ : GaussianInt) ^ (2 * 1)).im) ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) (-((((⟨C, D⟩ : GaussianInt) ^ 4).im))) δ hδ hnorm2a
          (by linear_combination norm4_coord q C D hqCD)
          hcop2a (HCXY.neg_right) hodd2a hR20 hI20
          (odd_ne_zero (re4_odd' q hqodd C D hqCD)) (neg_ne_zero.mpr hY0)
          (by linear_combination h - hM9c + 2 * δ * hM8c
            + (1 + 2 * δ) * ((((⟨C, D⟩ : GaussianInt) ^ 4).im)) * hre - (1 - 2 * δ) * ((((⟨C, D⟩ : GaussianInt) ^ 4).re)) * him)
      · -- M9₁ = 2δ·M9₁
        refine M8a_ne_zero_u p q hpodd hqodd hpq A B C D hpAB hqCD 1 ha1 (-1) (Or.inr rfl) ?_
        have h0 : (((((⟨A, B⟩ : GaussianInt) ^ (4 * 1)) * ((star (⟨C, D⟩ : GaussianInt)) ^ 4)).im)) * (1 - 2 * δ) = 0 := by linear_combination h
        rcases mul_eq_zero.mp h0 with h' | h'
        · linear_combination hM9c - h'
        · exfalso; rcases hδ with rfl | rfl <;> omega

set_option maxHeartbeats 1600000 in
/-- No two rung-a class values have ratio 2, for every a ≥ 1. -/
lemma no_ratio2_uniform (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :
    ∀ a : ℕ, 1 ≤ a → ∀ W V δ : ℤ, (δ = 1 ∨ δ = -1) →
      UClass p q A B C D a W → UClass p q A B C D a V →
      W = 2 * δ * V → False := by
  intro a
  induction a with
  | zero => omega
  | succ n ih =>
    intro _ W V δ hδ hW hV h
    rcases Nat.lt_or_ge n 1 with hn | hn
    · interval_cases n
      exact no_ratio2_base p q hpodd hqodd hpq A B C D hpAB hqCD W V δ hδ hW hV h
    · exact no_ratio2_step p q hpodd hqodd hpq (n + 1) (by omega) A B C D hpAB hqCD
        (fun W' V' δ' hδ' hW' hV' h' => ih hn W' V' δ' hδ' hW' hV' h')
        W V δ hδ hW hV h

set_option maxHeartbeats 1600000 in
/-- No assignment of four distinct rung-a class values satisfies the two
E-relations, for every a ≥ 1. -/
lemma no_assignment_uniform (q : ℕ) [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :
    ∀ a : ℕ, 1 ≤ a → ∀ Ka Kb Kc Kd e1 e2 e3 e4 : ℤ,
      (e1 = 1 ∨ e1 = -1) → (e2 = 1 ∨ e2 = -1) →
      (e3 = 1 ∨ e3 = -1) → (e4 = 1 ∨ e4 = -1) →
      UClass p q A B C D a Ka → UClass p q A B C D a Kb →
      UClass p q A B C D a Kc → UClass p q A B C D a Kd →
      Ka ≠ Kb → Ka ≠ Kc → Ka ≠ Kd → Kb ≠ Kc → Kb ≠ Kd → Kc ≠ Kd →
      e3 * Kc + e4 * Kd = 2 * e1 * Ka →
      e3 * Kc - e4 * Kd = 2 * e2 * Kb → False := by
  intro a
  induction a with
  | zero => omega
  | succ n ih =>
    intro _ Ka Kb Kc Kd e1 e2 e3 e4 he1 he2 he3 he4 hKa hKb hKc hKd
      hab hac had hbc hbd hcd hE1 hE2
    rcases Nat.lt_or_ge n 1 with hn | hn
    · interval_cases n
      exact no_assignment_base p q hpodd hqodd hpq A B C D hpAB hqCD Ka Kb Kc Kd
        e1 e2 e3 e4 he1 he2 he3 he4 hKa hKb hKc hKd hab hac had hbc hbd hcd hE1 hE2
    · exact no_assignment_step p q hpodd hqodd hpq (n + 1) (by omega) A B C D hpAB hqCD
        (fun Ka' Kb' Kc' Kd' e1' e2' e3' e4' he1' he2' he3' he4' hKa' hKb' hKc' hKd'
            hab' hac' had' hbc' hbd' hcd' hE1' hE2' =>
          ih hn Ka' Kb' Kc' Kd' e1' e2' e3' e4' he1' he2' he3' he4' hKa' hKb' hKc' hKd'
            hab' hac' had' hbc' hbd' hcd' hE1' hE2')
        Ka Kb Kc Kd e1 e2 e3 e4 he1 he2 he3 he4 hKa hKb hKc hKd
        hab hac had hbc hbd hcd hE1 hE2

end UniformA
