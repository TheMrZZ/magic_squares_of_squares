/-
Level-8 coordinate facts for the Theorem F residue tier:
R₈ = Re π⁸ = R² − I², I₈ = Im π⁸ = 2RI, with all the level-4 facts
lifted.
-/
import Mathlib
import MsqLean.TheoremEInt

open Zsqrtd

lemma re8_eq (A B : ℤ) :
    ((⟨A, B⟩ : GaussianInt) ^ 8).re
      = (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2 := by
  rw [show (⟨A, B⟩ : GaussianInt) ^ 8 = ((⟨A, B⟩ : GaussianInt) ^ 4) ^ 2 from by ring,
    sq_re]

lemma im8_eq (A B : ℤ) :
    ((⟨A, B⟩ : GaussianInt) ^ 8).im
      = 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨A, B⟩ : GaussianInt) ^ 4).im) := by
  rw [show (⟨A, B⟩ : GaussianInt) ^ 8 = ((⟨A, B⟩ : GaussianInt) ^ 4) ^ 2 from by ring,
    sq_im]

lemma im8_ne_zero (p : ℕ) [hp : Fact (Nat.Prime p)] (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) :
    ((⟨A, B⟩ : GaussianInt) ^ 8).im ≠ 0 := by
  rw [im8_eq]
  exact mul_ne_zero (mul_ne_zero (by norm_num)
    (odd_ne_zero (re4_odd' p hpodd A B hpAB))) (im4_ne_zero p hpodd A B hpAB)

lemma re8_odd (p : ℕ) [hp : Fact (Nat.Prime p)] (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) :
    Odd (((⟨A, B⟩ : GaussianInt) ^ 8).re) := by
  rw [re8_eq]
  obtain ⟨r, hr⟩ := re4_odd' p hpodd A B hpAB
  obtain ⟨i, hi⟩ := im4_even A B
  exact ⟨2 * r ^ 2 + 2 * r - 2 * i ^ 2, by rw [hr, hi]; ring⟩

lemma norm8_coord (p : ℕ) [hp : Fact (Nat.Prime p)]
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) :
    (((⟨A, B⟩ : GaussianInt) ^ 8).re) ^ 2 + (((⟨A, B⟩ : GaussianInt) ^ 8).im) ^ 2
      = (p : ℤ) ^ 8 := by
  have h4 := norm4_coord p A B hpAB
  rw [re8_eq, im8_eq]
  nlinarith [h4]

lemma p_not_dvd_re8_im8 (p : ℕ) [hp : Fact (Nat.Prime p)] (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) :
    ¬ (p : ℤ) ∣ (((⟨A, B⟩ : GaussianInt) ^ 8).re) ∧
    ¬ (p : ℤ) ∣ (((⟨A, B⟩ : GaussianInt) ^ 8).im) := by
  obtain ⟨hpR, hpI⟩ := p_not_dvd_re4_im4 p hpodd A B hpAB
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  have h4 := norm4_coord p A B hpAB
  have hp2 : ¬ (p : ℤ) ∣ 2 := by
    intro hd
    have hle := Int.le_of_dvd (by norm_num) hd
    have h3 : 3 ≤ p := by have := hp.out.two_le; omega
    have : (3 : ℤ) ≤ (p : ℤ) := by exact_mod_cast h3
    omega
  constructor
  · rw [re8_eq]
    intro hd
    -- p ∣ R² − I² together with R² + I² = p⁴ gives p ∣ 2R²
    have h2 : (p : ℤ) ∣ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 := by
      have : 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2
          = ((((⟨A, B⟩ : GaussianInt) ^ 4).re) ^ 2 - (((⟨A, B⟩ : GaussianInt) ^ 4).im) ^ 2)
            + (p : ℤ) ^ 4 := by linarith [h4]
      rw [this]
      exact dvd_add hd (dvd_pow_self _ (by norm_num))
    rcases hpP.dvd_mul.mp h2 with h | h
    · exact hp2 h
    · exact hpR (hpP.dvd_of_dvd_pow h)
  · rw [im8_eq]
    intro hd
    rcases hpP.dvd_mul.mp hd with h | h
    · rcases hpP.dvd_mul.mp h with h' | h'
      · exact hp2 h'
      · exact hpR h'
    · exact hpI h

lemma coprime_re8_im8 (p : ℕ) [hp : Fact (Nat.Prime p)] (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) :
    IsCoprime (((⟨A, B⟩ : GaussianInt) ^ 8).re) (((⟨A, B⟩ : GaussianInt) ^ 8).im) := by
  obtain ⟨hpR, hpI⟩ := p_not_dvd_re8_im8 p hpodd A B hpAB
  have hsum := norm8_coord p A B hpAB
  rw [Int.isCoprime_iff_gcd_eq_one]
  by_contra hg
  obtain ⟨r, hrprime, hrdvd⟩ := Nat.exists_prime_and_dvd hg
  have hgR : ((Int.gcd (((⟨A, B⟩ : GaussianInt) ^ 8).re) (((⟨A, B⟩ : GaussianInt) ^ 8).im) : ℕ) : ℤ)
      ∣ (((⟨A, B⟩ : GaussianInt) ^ 8).re) :=
    Int.gcd_dvd_left _ _
  have hgI : ((Int.gcd (((⟨A, B⟩ : GaussianInt) ^ 8).re) (((⟨A, B⟩ : GaussianInt) ^ 8).im) : ℕ) : ℤ)
      ∣ (((⟨A, B⟩ : GaussianInt) ^ 8).im) :=
    Int.gcd_dvd_right _ _
  have hrR : (r : ℤ) ∣ (((⟨A, B⟩ : GaussianInt) ^ 8).re) :=
    (Int.natCast_dvd_natCast.mpr hrdvd).trans hgR
  have hrI : (r : ℤ) ∣ (((⟨A, B⟩ : GaussianInt) ^ 8).im) :=
    (Int.natCast_dvd_natCast.mpr hrdvd).trans hgI
  have hrP : Prime (r : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hrprime
  have hr8 : (r : ℤ) ∣ (p : ℤ) ^ 8 := by
    rw [← hsum]
    exact dvd_add (dvd_pow hrR (by norm_num)) (dvd_pow hrI (by norm_num))
  have hrp : (r : ℤ) ∣ (p : ℤ) := hrP.dvd_of_dvd_pow hr8
  have hrpn : r = p := by
    have : r ∣ p := by exact_mod_cast hrp
    exact (Nat.prime_dvd_prime_iff_eq hrprime hp.out).mp this
  rw [hrpn] at hrR
  exact hpR hrR


/-- P-parity finisher. -/
lemma resid_P_even (P : ℤ) (hPodd : Odd P) (M : ℤ) (h : P = 2 * M) : False := by
  obtain ⟨k, hk⟩ := hPodd
  omega

/-- P-quadratic finisher A: q⁴ − 3Pq² + 2P² = 0 impossible when p ∣ P. -/
lemma resid_quad_factored_P (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpq : p ≠ q) (hqodd : q % 2 = 1)
    (P : ℤ) (hPodd : Odd P) (hPp : (p : ℤ) ∣ P)
    (h : (q : ℤ) ^ 4 - 3 * P * (q : ℤ) ^ 2 + 2 * P ^ 2 = 0) : False := by
  have hfac : ((q : ℤ) ^ 2 - P) * ((q : ℤ) ^ 2 - 2 * P) = 0 := by linear_combination h
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  rcases mul_eq_zero.mp hfac with h1 | h1
  · -- q² = P: p ∣ q² ⇒ p ∣ q ⇒ p = q
    have hq2 : (p : ℤ) ∣ (q : ℤ) ^ 2 := by
      have : (q : ℤ) ^ 2 = P := by linarith
      rw [this]; exact hPp
    have hqd : (p : ℤ) ∣ (q : ℤ) := hpP.dvd_of_dvd_pow hq2
    have : p ∣ q := by exact_mod_cast hqd
    exact hpq ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp this)
  · -- q² = 2P: even = odd
    obtain ⟨k, hk⟩ := hPodd
    obtain ⟨l, hl⟩ := odd_p2 q hqodd
    omega
/-- P-quadratic finisher B: q⁴ + 3Pq² + 2P² = 0 impossible for positive P. -/
lemma resid_quad_pos_P (q : ℕ) (P : ℤ) (hq0 : 0 < (q : ℤ)) (hP0 : 0 < P)
    (h : (q : ℤ) ^ 4 + 3 * P * (q : ℤ) ^ 2 + 2 * P ^ 2 = 0) : False := by
  nlinarith [pow_pos hq0 4, pow_pos hq0 2, mul_pos hP0 (pow_pos hq0 2),
    mul_pos hP0 hP0]

/-- P-parametrized ratio kill: for P an odd positive multiple-of-p power,
P·Y = 2IX with a·q²I = 3b·IX − c·RY is impossible. -/
lemma resid_ratio_core_P (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)] (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (hpq : p ≠ q) (hp0 : 0 < (p : ℤ)) (hq0 : 0 < (q : ℤ))
    (P : ℤ) (hP0 : 0 < P) (hPodd : Odd P) (hPp : (p : ℤ) ∣ P)
    (R I X Y : ℤ) (hI : I ≠ 0) (hY : Y ≠ 0)
    (hRI : IsCoprime R I) (hXY : IsCoprime X Y)
    (hpn : R ^ 2 + I ^ 2 = P ^ 2) (hqn : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 4)
    (a b c : ℤ) (ha : a = 1 ∨ a = -1) (hb : b = 1 ∨ b = -1) (hc : c = 1 ∨ c = -1)
    (hiii : P * Y = 2 * I * X)
    (hii : a * (q : ℤ) ^ 2 * I = 3 * b * I * X - c * R * Y) : False := by
  have hcancel : ∀ t : ℤ, I * t = 0 → t = 0 := fun t ht => by
    rcases mul_eq_zero.mp ht with h | h
    · exact absurd h hI
    · exact h
  have hY2I : Y ∣ 2 * I := by
    have hd : Y ∣ (2 * I) * X := ⟨P, by linarith [hiii]⟩
    exact (hXY.symm).dvd_of_dvd_mul_right hd
  have hcsq : c * c = 1 := by rcases hc with rfl | rfl <;> norm_num
  have hIY : I ∣ Y := by
    have hd : I ∣ (c * Y) * R := ⟨3 * b * X - a * (q : ℤ) ^ 2, by linarith [hii]⟩
    have h2 : I ∣ c * Y := (hRI.symm).dvd_of_dvd_mul_right hd
    rcases hc with rfl | rfl
    · simpa using h2
    · have := h2
      rw [show (-1 : ℤ) * Y = -Y from by ring] at this
      exact (dvd_neg).mp this
  obtain ⟨k, hk⟩ := hIY
  obtain ⟨m, hm⟩ := hY2I
  have hkm : k * m = 2 := by
    have h0 : I * (k * m - 2) = 0 := by
      have h1 : 2 * I = I * k * m := by rw [← hk]; linarith [hm]
      linarith [h1]
    linarith [hcancel _ h0]
  have hk0 : k ≠ 0 := by
    rintro rfl
    rw [mul_zero] at hk
    exact hY hk
  have hk2 : k ∣ 2 := ⟨m, hkm.symm⟩
  have hkabs : k.natAbs ∣ 2 := by
    have h2 : k.natAbs ∣ (2 : ℤ).natAbs := Int.natAbs_dvd_natAbs.mpr hk2
    simpa using h2
  have hkb : k.natAbs ≤ 2 := Nat.le_of_dvd (by norm_num) hkabs
  have hkr : k = 1 ∨ k = -1 ∨ k = 2 ∨ k = -2 := by omega
  rcases hkr with rfl | rfl | rfl | rfl
  · -- Y = I
    have hYI : Y = I := by rw [hk]; ring
    rw [hYI] at hiii
    have h2 := hcancel _ (by linarith [hiii] : I * (P - 2 * X) = 0)
    exact resid_P_even P hPodd X (by linarith)
  · -- Y = -I
    have hYI : Y = -I := by rw [hk]; ring
    rw [hYI] at hiii
    have h2 := hcancel _ (by linarith [hiii] : I * (P + 2 * X) = 0)
    exact resid_P_even P hPodd (-X) (by linarith)
  · -- Y = 2I: X = p², quadratic finisher
    have hY2 : Y = 2 * I := by rw [hk]; ring
    rw [hY2] at hiii hii hqn
    have hX : X = P := by
      have h2 := hcancel _ (by linarith [hiii] : I * (2 * P - 2 * X) = 0)
      linarith
    rw [hX] at hii hqn
    have hR : 2 * (c * R) = 3 * b * P - a * (q : ℤ) ^ 2 := by
      have h2 := hcancel _ (by linear_combination hii :
        I * (a * (q : ℤ) ^ 2 - 3 * b * P + 2 * (c * R)) = 0)
      linarith
    have hI2 : 4 * I ^ 2 = (q : ℤ) ^ 4 - P ^ 2 := by nlinarith [hqn]
    have hR2 : 4 * R ^ 2 = 5 * P ^ 2 - (q : ℤ) ^ 4 := by nlinarith [hpn, hI2]
    have hasq : a * a = 1 := by rcases ha with rfl | rfl <;> norm_num
    have hbsq : b * b = 1 := by rcases hb with rfl | rfl <;> norm_num
    have hw : a * b = 1 ∨ a * b = -1 := by
      rcases ha with rfl | rfl <;> rcases hb with rfl | rfl <;> norm_num
    have hkey : (q : ℤ) ^ 4 - 3 * (a * b) * P * (q : ℤ) ^ 2
        + 2 * P ^ 2 = 0 := by
      have hsq : (2 * (c * R)) ^ 2 = (3 * b * P - a * (q : ℤ) ^ 2) ^ 2 := by
        rw [hR]
      have hexp : (3 * b * P - a * (q : ℤ) ^ 2) ^ 2
          = 9 * P ^ 2 - 6 * (a * b) * P * (q : ℤ) ^ 2 + (q : ℤ) ^ 4 := by
        linear_combination 9 * P ^ 2 * hbsq + (q : ℤ) ^ 4 * hasq
      have hRR : (2 * (c * R)) ^ 2 = 4 * (R ^ 2) := by
        linear_combination 4 * R ^ 2 * hcsq
      linarith [hsq, hexp, hR2, hRR]
    rcases hw with hw | hw
    · rw [hw] at hkey
      exact resid_quad_factored_P p q hpq hqodd P hPodd hPp (by linarith [hkey])
    · rw [hw] at hkey
      exact resid_quad_pos_P q P hq0 hP0 (by linarith [hkey])
  · -- Y = -2I: X = -p², symmetric
    have hY2 : Y = -(2 * I) := by rw [hk]; ring
    rw [hY2] at hiii hii hqn
    have hX : X = -P := by
      have h2 := hcancel _ (by linarith [hiii] : I * (2 * P + 2 * X) = 0)
      linarith
    rw [hX] at hii hqn
    have hR : 2 * (c * R) = 3 * b * P + a * (q : ℤ) ^ 2 := by
      have h2 := hcancel _ (by linear_combination hii :
        I * (a * (q : ℤ) ^ 2 + 3 * b * P - 2 * (c * R)) = 0)
      linarith
    have hI2 : 4 * I ^ 2 = (q : ℤ) ^ 4 - P ^ 2 := by nlinarith [hqn]
    have hR2 : 4 * R ^ 2 = 5 * P ^ 2 - (q : ℤ) ^ 4 := by nlinarith [hpn, hI2]
    have hasq : a * a = 1 := by rcases ha with rfl | rfl <;> norm_num
    have hbsq : b * b = 1 := by rcases hb with rfl | rfl <;> norm_num
    have hw : a * b = 1 ∨ a * b = -1 := by
      rcases ha with rfl | rfl <;> rcases hb with rfl | rfl <;> norm_num
    have hkey : (q : ℤ) ^ 4 + 3 * (a * b) * P * (q : ℤ) ^ 2
        + 2 * P ^ 2 = 0 := by
      have hsq : (2 * (c * R)) ^ 2 = (3 * b * P + a * (q : ℤ) ^ 2) ^ 2 := by
        rw [hR]
      have hexp : (3 * b * P + a * (q : ℤ) ^ 2) ^ 2
          = 9 * P ^ 2 + 6 * (a * b) * P * (q : ℤ) ^ 2 + (q : ℤ) ^ 4 := by
        linear_combination 9 * P ^ 2 * hbsq + (q : ℤ) ^ 4 * hasq
      have hRR : (2 * (c * R)) ^ 2 = 4 * (R ^ 2) := by
        linear_combination 4 * R ^ 2 * hcsq
      linarith [hsq, hexp, hR2, hRR]
    rcases hw with hw | hw
    · rw [hw] at hkey
      exact resid_quad_pos_P q P hq0 hP0 (by linarith [hkey])
    · rw [hw] at hkey
      exact resid_quad_factored_P p q hpq hqodd P hPodd hPp (by linarith [hkey])

/-- The cross-cross kill: I₈X = f·p²(RY + εIX) together with
R₈Y = g·p²(RY + ε′IX) multiplies (after cancelling I·X·Y) into an
identity whose mod-p reduction forces p ∣ 2R·R₈. -/
lemma resid_cross_product (p : ℕ) [hp : Fact (Nat.Prime p)] (hpodd : p % 2 = 1)
    (R I X Y : ℤ) (hI : I ≠ 0) (hX : X ≠ 0) (hY : Y ≠ 0)
    (hpR : ¬ (p : ℤ) ∣ R) (hpR8 : ¬ (p : ℤ) ∣ (R ^ 2 - I ^ 2))
    (f g e e' : ℤ)
    (h1 : 2 * R * I * X = f * ((p : ℤ) ^ 2 * (R * Y + e * (I * X))))
    (h2 : (R ^ 2 - I ^ 2) * Y = g * ((p : ℤ) ^ 2 * (R * Y + e' * (I * X)))) : False := by
  have hα : I * X * (2 * R - e * f * (p : ℤ) ^ 2) = f * (p : ℤ) ^ 2 * R * Y := by
    linear_combination h1
  have hβ : Y * ((R ^ 2 - I ^ 2) - g * (p : ℤ) ^ 2 * R) = e' * g * (p : ℤ) ^ 2 * I * X := by
    linear_combination h2
  have hmul : (I * X * (2 * R - e * f * (p : ℤ) ^ 2))
      * (Y * ((R ^ 2 - I ^ 2) - g * (p : ℤ) ^ 2 * R))
      = (f * (p : ℤ) ^ 2 * R * Y) * (e' * g * (p : ℤ) ^ 2 * I * X) := by
    rw [hα, hβ]
  have hcan : I * (X * (Y * ((2 * R - e * f * (p : ℤ) ^ 2)
      * ((R ^ 2 - I ^ 2) - g * (p : ℤ) ^ 2 * R)
      - e' * f * g * (p : ℤ) ^ 4 * R))) = 0 := by
    linear_combination hmul
  have hγ : (2 * R - e * f * (p : ℤ) ^ 2) * ((R ^ 2 - I ^ 2) - g * (p : ℤ) ^ 2 * R)
      - e' * f * g * (p : ℤ) ^ 4 * R = 0 := by
    rcases mul_eq_zero.mp hcan with h | h
    · exact absurd h hI
    rcases mul_eq_zero.mp h with h | h
    · exact absurd h hX
    rcases mul_eq_zero.mp h with h | h
    · exact absurd h hY
    · exact h
  have hdvd : (p : ℤ) ∣ 2 * R * (R ^ 2 - I ^ 2) := by
    refine ⟨(p : ℤ) * (e * f * (R ^ 2 - I ^ 2) + 2 * g * R ^ 2
      - e * f * g * (p : ℤ) ^ 2 * R + e' * f * g * (p : ℤ) ^ 2 * R), ?_⟩
    linear_combination hγ
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  have hp2 : ¬ (p : ℤ) ∣ 2 := by
    intro hd
    have hle := Int.le_of_dvd (by norm_num) hd
    have h3 : 3 ≤ p := by have := hp.out.two_le; omega
    have : (3 : ℤ) ≤ (p : ℤ) := by exact_mod_cast h3
    omega
  rcases hpP.dvd_mul.mp hdvd with h | h
  · rcases hpP.dvd_mul.mp h with h' | h'
    · exact hp2 h'
    · exact hpR h'
  · exact hpR8 h

/-- The R₈-ratio derivation: from R₈Y = g·q²·I₈, coprimality forces
Y = σ·I₈ and R₈ = σg·q², whence X² = 2q⁴ − p⁸. -/
lemma resid_r8_derive (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (g : ℤ) (hg : g = 1 ∨ g = -1)
    (h2 : (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)
        = g * (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) :
    ∃ σ : ℤ, (σ = 1 ∨ σ = -1)
      ∧ (((⟨C, D⟩ : GaussianInt) ^ 4).im) = σ * (((⟨A, B⟩ : GaussianInt) ^ 8).im)
      ∧ (((⟨A, B⟩ : GaussianInt) ^ 8).re) = σ * g * (q : ℤ) ^ 2
      ∧ (((⟨C, D⟩ : GaussianInt) ^ 4).re) ^ 2 = 2 * (q : ℤ) ^ 4 - (p : ℤ) ^ 8 := by
  have hI8 : (((⟨A, B⟩ : GaussianInt) ^ 8).im) ≠ 0 := im8_ne_zero p hpodd A B hpAB
  have hY0 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ≠ 0 := im4_ne_zero q hqodd C D hqCD
  have hcop : IsCoprime (((⟨A, B⟩ : GaussianInt) ^ 8).re) (((⟨A, B⟩ : GaussianInt) ^ 8).im) :=
    coprime_re8_im8 p hpodd A B hpAB
  have hqY : ¬ (q : ℤ) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) :=
    (p_not_dvd_re4_im4 q hqodd C D hqCD).2
  have hqP : Prime (q : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hq.out
  -- I₈ ∣ Y
  have hI8Y : (((⟨A, B⟩ : GaussianInt) ^ 8).im) ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) := by
    have hd : (((⟨A, B⟩ : GaussianInt) ^ 8).im)
        ∣ (((⟨C, D⟩ : GaussianInt) ^ 4).im) * (((⟨A, B⟩ : GaussianInt) ^ 8).re) :=
      ⟨g * (q : ℤ) ^ 2, by linear_combination h2⟩
    exact (hcop.symm).dvd_of_dvd_mul_right hd
  -- Y ∣ I₈
  have hYI8 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ∣ (((⟨A, B⟩ : GaussianInt) ^ 8).im) := by
    have hd : (((⟨C, D⟩ : GaussianInt) ^ 4).im)
        ∣ (q : ℤ) ^ 2 * (g * (((⟨A, B⟩ : GaussianInt) ^ 8).im)) :=
      ⟨(((⟨A, B⟩ : GaussianInt) ^ 8).re), by linear_combination -h2⟩
    have hcq : IsCoprime ((q : ℤ) ^ 2) (((⟨C, D⟩ : GaussianInt) ^ 4).im) :=
      ((hqP.coprime_iff_not_dvd).mpr hqY).pow_left
    have := (hcq.symm).dvd_of_dvd_mul_left hd
    rcases hg with rfl | rfl
    · simpa using this
    · have h' := this
      rw [show (-1 : ℤ) * (((⟨A, B⟩ : GaussianInt) ^ 8).im)
        = -((((⟨A, B⟩ : GaussianInt) ^ 8).im)) from by ring] at h'
      exact (dvd_neg).mp h'
  obtain ⟨m, hm⟩ := hI8Y
  obtain ⟨k, hk⟩ := hYI8
  have hmk : m * k = 1 := by
    have h0 : (((⟨A, B⟩ : GaussianInt) ^ 8).im) * (m * k - 1) = 0 := by
      have : (((⟨A, B⟩ : GaussianInt) ^ 8).im)
          = (((⟨A, B⟩ : GaussianInt) ^ 8).im) * m * k := by
        rw [← hm]; linarith [hk]
      linarith [this]
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hI8
    · linarith
  have hm1 : m = 1 ∨ m = -1 := Int.isUnit_iff.mp (isUnit_of_dvd_one ⟨k, hmk.symm⟩)
  refine ⟨m, hm1, by rw [hm]; ring, ?_, ?_⟩
  · -- R₈ = m·g·q² by cancelling I₈ in h2
    have h0 : (((⟨A, B⟩ : GaussianInt) ^ 8).im)
        * (m * (((⟨A, B⟩ : GaussianInt) ^ 8).re) - g * (q : ℤ) ^ 2) = 0 := by
      have h2' := h2
      rw [hm] at h2'
      linear_combination h2'
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hI8
    · have hmsq : m * m = 1 := by rcases hm1 with rfl | rfl <;> norm_num
      linear_combination m * h
        - (((⟨A, B⟩ : GaussianInt) ^ 8).re) * hmsq
  · -- X² = 2q⁴ − p⁸
    have hn8 := norm8_coord p A B hpAB
    have hn4 := norm4_coord q C D hqCD
    have hmsq : m * m = 1 := by rcases hm1 with rfl | rfl <;> norm_num
    have hgsq : g * g = 1 := by rcases hg with rfl | rfl <;> norm_num
    -- R₈² = q⁴ and Y² = I₈²
    have hR8sq : (((⟨A, B⟩ : GaussianInt) ^ 8).re) ^ 2 = (q : ℤ) ^ 4 := by
      have h0 : (((⟨A, B⟩ : GaussianInt) ^ 8).im)
          * (m * (((⟨A, B⟩ : GaussianInt) ^ 8).re) - g * (q : ℤ) ^ 2) = 0 := by
        have h2' := h2
        rw [hm] at h2'
        linear_combination h2'
      rcases mul_eq_zero.mp h0 with h | h
      · exact absurd h hI8
      · linear_combination (m * (((⟨A, B⟩ : GaussianInt) ^ 8).re) + g * (q : ℤ) ^ 2) * h
          - (((⟨A, B⟩ : GaussianInt) ^ 8).re) ^ 2 * hmsq + (q : ℤ) ^ 4 * hgsq
    have hY2 : (((⟨C, D⟩ : GaussianInt) ^ 4).im) ^ 2
        = (((⟨A, B⟩ : GaussianInt) ^ 8).im) ^ 2 := by
      rw [hm]; nlinarith [hmsq]
    nlinarith [hn8, hn4, hR8sq, hY2]

/-- q⁴ = p⁸ is impossible for distinct primes. -/
lemma resid_q4_p8 (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpq : p ≠ q) (h : (q : ℤ) ^ 4 = (p : ℤ) ^ 8) : False := by
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  have hd : (p : ℤ) ∣ (q : ℤ) ^ 4 := by
    rw [h]; exact dvd_pow_self _ (by norm_num)
  have hq' : (p : ℤ) ∣ (q : ℤ) := hpP.dvd_of_dvd_pow hd
  have : p ∣ q := by exact_mod_cast hq'
  exact hpq ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp this)

/-- p² ∣ 2q⁴ is impossible for distinct odd primes. -/
lemma resid_p2_2q4 (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hpq : p ≠ q)
    (h : (p : ℤ) ^ 2 ∣ 2 * (q : ℤ) ^ 4) : False := by
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  have hd : (p : ℤ) ∣ 2 * (q : ℤ) ^ 4 := (dvd_pow_self _ (two_ne_zero)).trans h
  have hp2 : ¬ (p : ℤ) ∣ 2 := by
    intro hd2
    have hle := Int.le_of_dvd (by norm_num) hd2
    have h3 : 3 ≤ p := by have := hp.out.two_le; omega
    have h4 : (3 : ℤ) ≤ (p : ℤ) := by exact_mod_cast h3
    omega
  rcases hpP.dvd_mul.mp hd with h1 | h1
  · exact hp2 h1
  · have hq' : (p : ℤ) ∣ (q : ℤ) := hpP.dvd_of_dvd_pow h1
    have : p ∣ q := by exact_mod_cast hq'
    exact hpq ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp this)

/-- Extract p ∣ X from X(2R − c) = M when p ∣ c, p ∣ M, p ∤ R. -/
lemma resid_pX_extract (p : ℕ) [hp : Fact (Nat.Prime p)] (hpodd : p % 2 = 1)
    (R X c M : ℤ) (hc : (p : ℤ) ∣ c) (hM : (p : ℤ) ∣ M)
    (hpR : ¬ (p : ℤ) ∣ R) (h : X * (2 * R - c) = M) : (p : ℤ) ∣ X := by
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  have hd : (p : ℤ) ∣ X * (2 * R) := by
    have : X * (2 * R) = M + X * c := by linarith [h]
    rw [this]
    exact dvd_add hM (Dvd.dvd.mul_left hc X)
  have hp2 : ¬ (p : ℤ) ∣ 2 := by
    intro hd2
    have hle := Int.le_of_dvd (by norm_num) hd2
    have h3 : 3 ≤ p := by have := hp.out.two_le; omega
    have : (3 : ℤ) ≤ (p : ℤ) := by exact_mod_cast h3
    omega
  rcases hpP.dvd_mul.mp hd with h1 | h1
  · exact h1
  · rcases hpP.dvd_mul.mp h1 with h2 | h2
    · exact absurd h2 hp2
    · exact absurd h2 hpR

/-- The cross-with-p²q²I kill: I₈X = f·p²(RY + εIX) together with
R₈Y = g·p²q²·I forces p ∣ X and p ∣ Y, hence p² ∣ q⁴. -/
lemma resid_cross_p2q2 (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (f g e : ℤ)
    (h1 : 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).re) * (((⟨A, B⟩ : GaussianInt) ^ 4).im)
        * (((⟨C, D⟩ : GaussianInt) ^ 4).re)
      = f * ((p : ℤ) ^ 2 * ((((⟨A, B⟩ : GaussianInt) ^ 4).re)
          * (((⟨C, D⟩ : GaussianInt) ^ 4).im)
        + e * ((((⟨A, B⟩ : GaussianInt) ^ 4).im) * (((⟨C, D⟩ : GaussianInt) ^ 4).re)))))
    (h2 : (((⟨A, B⟩ : GaussianInt) ^ 8).re) * (((⟨C, D⟩ : GaussianInt) ^ 4).im)
        = g * ((p : ℤ) ^ 2 * (q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))) : False := by
  set R := (((⟨A, B⟩ : GaussianInt) ^ 4).re)
  set I := (((⟨A, B⟩ : GaussianInt) ^ 4).im)
  set X := (((⟨C, D⟩ : GaussianInt) ^ 4).re)
  set Y := (((⟨C, D⟩ : GaussianInt) ^ 4).im)
  have hI0 : I ≠ 0 := im4_ne_zero p hpodd A B hpAB
  have hRI := coprime_re4_im4 p hpodd A B hpAB
  obtain ⟨hpR, hpI⟩ := p_not_dvd_re4_im4 p hpodd A B hpAB
  obtain ⟨hpR8, _⟩ := p_not_dvd_re8_im8 p hpodd A B hpAB
  have hR8c : (((⟨A, B⟩ : GaussianInt) ^ 8).re) = R ^ 2 - I ^ 2 := re8_eq A B
  rw [hR8c] at h2 hpR8
  -- I ∣ Y via I ⊥ (R² − I²)
  have hIR8 : IsCoprime I (R ^ 2 - I ^ 2) := by
    have h1' : IsCoprime I R := hRI.symm
    have h2' : IsCoprime I (R ^ 2) := h1'.pow_right
    have : R ^ 2 - I ^ 2 = R ^ 2 + I * (-I) := by ring
    rw [this]
    exact h2'.add_mul_left_right (-I)
  have hIY : I ∣ Y := by
    have hd : I ∣ Y * (R ^ 2 - I ^ 2) := ⟨g * ((p : ℤ) ^ 2 * (q : ℤ) ^ 2), by
      linear_combination h2⟩
    exact (hIR8).dvd_of_dvd_mul_right hd
  obtain ⟨m, hm⟩ := hIY
  -- cancel I in both equations
  have hcancel : ∀ t : ℤ, I * t = 0 → t = 0 := fun t ht => by
    rcases mul_eq_zero.mp ht with h | h
    · exact absurd h hI0
    · exact h
  have hii : (R ^ 2 - I ^ 2) * m = g * (p : ℤ) ^ 2 * (q : ℤ) ^ 2 := by
    have h0 := hcancel ((R ^ 2 - I ^ 2) * m - g * (p : ℤ) ^ 2 * (q : ℤ) ^ 2) (by
      have h2' := h2
      rw [hm] at h2'
      linear_combination h2')
    linarith
  have hi : X * (2 * R - e * f * (p : ℤ) ^ 2) = f * (p : ℤ) ^ 2 * R * m := by
    have h0 := hcancel (X * (2 * R - e * f * (p : ℤ) ^ 2) - f * (p : ℤ) ^ 2 * R * m) (by
      have h1' := h1
      rw [hm] at h1'
      linear_combination h1')
    linarith
  -- p² ∣ m from hii
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  have hcopP : IsCoprime ((p : ℤ) ^ 2) (R ^ 2 - I ^ 2) :=
    ((hpP.coprime_iff_not_dvd).mpr hpR8).pow_left
  have hp2m : (p : ℤ) ^ 2 ∣ m := by
    have hd : (p : ℤ) ^ 2 ∣ (R ^ 2 - I ^ 2) * m := ⟨g * (q : ℤ) ^ 2, by
      linear_combination hii⟩
    exact hcopP.dvd_of_dvd_mul_left hd
  -- p ∣ Y and p ∣ X
  have hpY : (p : ℤ) ∣ Y := by
    rw [hm]
    exact Dvd.dvd.mul_left ((dvd_pow_self _ two_ne_zero).trans hp2m) I
  have hpX : (p : ℤ) ∣ X :=
    resid_pX_extract p hpodd R X (e * f * (p : ℤ) ^ 2)
      (f * (p : ℤ) ^ 2 * R * m)
      (Dvd.dvd.mul_left (dvd_pow_self _ two_ne_zero) _)
      (by
        have : (p : ℤ) ∣ (p : ℤ) ^ 2 := dvd_pow_self _ two_ne_zero
        exact Dvd.dvd.mul_right (Dvd.dvd.mul_right (this.mul_left f) R) m)
      hpR hi
  -- p² ∣ q⁴
  have hn4 : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 4 := norm4_coord q C D hqCD
  have hq4 : (p : ℤ) ^ 2 ∣ (q : ℤ) ^ 4 := by
    rw [← hn4]
    obtain ⟨x', hx'⟩ := hpX
    obtain ⟨y', hy'⟩ := hpY
    exact ⟨x' ^ 2 + y' ^ 2, by rw [hx', hy']; ring⟩
  have hd : (p : ℤ) ∣ (q : ℤ) ^ 4 := (dvd_pow_self _ two_ne_zero).trans hq4
  have hq' : (p : ℤ) ∣ (q : ℤ) := hpP.dvd_of_dvd_pow hd
  have : p ∣ q := by exact_mod_cast hq'
  exact hpq ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp this)
