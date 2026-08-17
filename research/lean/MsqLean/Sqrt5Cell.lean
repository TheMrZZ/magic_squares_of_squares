/-
The √−5 cell (the one family the certifier could not kill mechanically,
paper §two-exponent): the pinning identity q^(2δ) = R² + 5S² with
(R, S) = (Re π⁸, Im π⁸) has no solution. The finish: the coprime
splitting of (W−R)(W+R) = 5S² gives S² = 4(αβ)² and
p⁸ = (β²−5α²)² + 4α²β² = N((β²−3α²) + 4iα²); the Gaussian integer
z = (β²−3α²) + 4iα² is odd and coprime to its conjugate, so z is a unit
times π⁸ or π̄⁸; comparing coordinates forces β² = 4α², hence
p⁸ = 17α⁴, absurd.
-/
import Mathlib
import MsqLean.UniformAInt

open Zsqrtd

namespace Sqrt5Cell

/-- Coprime positive split of 5·t². -/
lemma five_sq_split (u1 u2 t : ℤ) (hco : IsCoprime u1 u2)
    (h1 : 0 < u1) (h2 : 0 < u2) (hprod : u1 * u2 = 5 * t ^ 2) :
    ∃ α β : ℤ, IsCoprime α β ∧ t ^ 2 = (α * β) ^ 2 ∧
      ((u1 = 5 * α ^ 2 ∧ u2 = β ^ 2) ∨ (u1 = β ^ 2 ∧ u2 = 5 * α ^ 2)) := by
  have h5 : Prime (5 : ℤ) := by norm_num
  have hd : (5 : ℤ) ∣ u1 * u2 := ⟨t ^ 2, hprod⟩
  rcases h5.dvd_mul.mp hd with h5u | h5u
  · obtain ⟨v, hv⟩ := h5u
    have hv0 : 0 < v := by nlinarith
    have hvco : IsCoprime v u2 := hco.of_isCoprime_of_dvd_left ⟨5, by rw [hv]; ring⟩
    have hveq : v * u2 = t ^ 2 := by nlinarith
    obtain ⟨α, hα⟩ := Int.sq_of_isCoprime hvco hveq
    have hval : v = α ^ 2 := by
      rcases hα with h | h
      · exact h
      · nlinarith [sq_nonneg α]
    obtain ⟨β, hβ⟩ := Int.sq_of_isCoprime hvco.symm (by rw [mul_comm] at hveq; exact hveq)
    have hu2v : u2 = β ^ 2 := by
      rcases hβ with h | h
      · exact h
      · nlinarith [sq_nonneg β]
    refine ⟨α, β, ?_, ?_, Or.inl ⟨by rw [hv, hval], hu2v⟩⟩
    · have h1' : IsCoprime (α ^ 2) (β ^ 2) := by rw [← hval, ← hu2v]; exact hvco
      exact IsCoprime.of_isCoprime_of_dvd_left
        (IsCoprime.of_isCoprime_of_dvd_right h1' (dvd_pow_self β two_ne_zero))
        (dvd_pow_self α two_ne_zero)
    · rw [← hveq, hval, hu2v]; ring
  · obtain ⟨v, hv⟩ := h5u
    have hv0 : 0 < v := by nlinarith
    have hvco : IsCoprime u1 v := hco.of_isCoprime_of_dvd_right ⟨5, by rw [hv]; ring⟩
    have hveq : u1 * v = t ^ 2 := by nlinarith
    obtain ⟨β, hβ⟩ := Int.sq_of_isCoprime hvco hveq
    have hu1v : u1 = β ^ 2 := by
      rcases hβ with h | h
      · exact h
      · nlinarith [sq_nonneg β]
    obtain ⟨α, hα⟩ := Int.sq_of_isCoprime hvco.symm (by rw [mul_comm] at hveq; exact hveq)
    have hval : v = α ^ 2 := by
      rcases hα with h | h
      · exact h
      · nlinarith [sq_nonneg α]
    refine ⟨α, β, ?_, ?_, Or.inr ⟨hu1v, by rw [hv, hval]⟩⟩
    · have h1' : IsCoprime (β ^ 2) (α ^ 2) := by rw [← hu1v, ← hval]; exact hvco
      exact IsCoprime.of_isCoprime_of_dvd_left
        (IsCoprime.of_isCoprime_of_dvd_right h1'.symm (dvd_pow_self β two_ne_zero))
        (dvd_pow_self α two_ne_zero)
    · rw [← hveq, hu1v, hval]; ring

/-- The Gaussian units. -/
lemma unit_cases (u : GaussianInt) (hu : IsUnit u) :
    u = 1 ∨ u = -1 ∨ u = ⟨0, 1⟩ ∨ u = ⟨0, -1⟩ := by
  have h1 : u.norm.natAbs = 1 := Zsqrtd.norm_eq_one_iff.mpr hu
  have h2 : u.re * u.re + u.im * u.im = u.norm := by simp [Zsqrtd.norm]
  have hnn : 0 ≤ u.norm := by nlinarith [mul_self_nonneg u.re, mul_self_nonneg u.im]
  have hn1 : u.norm = 1 := by omega
  have h3 : u.re * u.re + u.im * u.im = 1 := by rw [h2, hn1]
  have hr1 : -1 ≤ u.re := by nlinarith [mul_self_nonneg u.im, sq_nonneg (u.re + 1)]
  have hr2 : u.re ≤ 1 := by nlinarith [mul_self_nonneg u.im, sq_nonneg (u.re - 1)]
  have hi1 : -1 ≤ u.im := by nlinarith [mul_self_nonneg u.re, sq_nonneg (u.im + 1)]
  have hi2 : u.im ≤ 1 := by nlinarith [mul_self_nonneg u.re, sq_nonneg (u.im - 1)]
  have hcase : (u.re = 1 ∧ u.im = 0) ∨ (u.re = -1 ∧ u.im = 0)
      ∨ (u.re = 0 ∧ u.im = 1) ∨ (u.re = 0 ∧ u.im = -1) := by
    interval_cases u.re <;> interval_cases u.im <;> omega
  rcases hcase with ⟨h, h'⟩ | ⟨h, h'⟩ | ⟨h, h'⟩ | ⟨h, h'⟩
  · left; ext <;> simp [h, h']
  · right; left; ext <;> simp [h, h']
  · right; right; left; ext <;> simp [h, h']
  · right; right; right; ext <;> simp [h, h']

/-- p⁸ = 17·α⁴ is impossible for a prime p and α ≠ 0. -/
lemma p8_ne_17a4 (p : ℕ) (hp : Nat.Prime p) (α : ℤ) (hα : α ≠ 0)
    (h : (p : ℤ) ^ 8 = 17 * α ^ 4) : False := by
  have h17 : (17 : ℤ) ∣ (p : ℤ) ^ 8 := ⟨α ^ 4, h⟩
  have hp17 : (17 : ℤ) ∣ (p : ℤ) := by
    have hprime : Prime (17 : ℤ) := by norm_num
    exact hprime.dvd_of_dvd_pow h17
  have hpeq : p = 17 := by
    have hdvd : (17 : ℕ) ∣ p := by exact_mod_cast hp17
    exact ((Nat.prime_dvd_prime_iff_eq (by norm_num) hp).mp hdvd).symm
  have hα4 : α ^ 4 = 17 ^ 7 := by
    have h' : (17 : ℤ) ^ 8 = 17 * α ^ 4 := by rw [← h, hpeq]; norm_num
    nlinarith
  have hnat : α.natAbs ^ 4 = 17 ^ 7 := by
    have := congrArg Int.natAbs hα4
    simpa [Int.natAbs_pow] using this
  have hfa : (α.natAbs ^ 4).factorization 17 = 4 * (α.natAbs).factorization 17 := by
    simp [Nat.factorization_pow]
  have hfb : ((17 : ℕ) ^ 7).factorization 17 = 7 := by
    rw [Nat.factorization_pow]
    simp [Nat.Prime.factorization (by norm_num : Nat.Prime 17)]
  rw [hnat, hfb] at hfa
  omega

set_option maxHeartbeats 1600000 in
/-- The √−5 cell kill. -/
theorem sqrt5_cell (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hp5 : p ≠ 5) (hq5 : q ≠ 5)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p)
    (δ : ℕ) (hδ : 1 ≤ δ)
    (hpin : (q : ℤ) ^ (2 * δ)
      = ((⟨A, B⟩ : GaussianInt) ^ 8).re ^ 2 + 5 * ((⟨A, B⟩ : GaussianInt) ^ 8).im ^ 2) :
    False := by
  set R : ℤ := ((⟨A, B⟩ : GaussianInt) ^ 8).re with hRdef
  set S : ℤ := ((⟨A, B⟩ : GaussianInt) ^ 8).im with hSdef
  have h8 : (8 : ℕ) = 4 * 2 := by norm_num
  have hRodd : Odd R := by
    rw [hRdef, h8]; exact UniformA.re_odd p hpodd A B hpAB 2 (by norm_num)
  have hS4 : (4 : ℤ) ∣ S := by
    rw [hSdef, h8]; exact UniformA.im_four A B 2 (by norm_num)
  have hcoRS : IsCoprime R S := by
    rw [hRdef, hSdef, h8]; exact UniformA.coprime_coords p hpodd A B hpAB 2 (by norm_num)
  have hnorm : R ^ 2 + S ^ 2 = (p : ℤ) ^ 8 := by
    rw [hRdef, hSdef, h8]
    simpa using UniformA.norm_coord p A B hpAB 2
  have hS0 : S ≠ 0 := by
    intro h0
    rw [h0] at hcoRS
    have hRu : IsUnit R := isCoprime_zero_right.mp hcoRS
    have hR1 : R = 1 ∨ R = -1 := Int.isUnit_iff.mp hRu
    have hZ : (p : ℤ) ^ 8 = 1 := by
      rcases hR1 with h | h <;>
        (rw [h0, h] at hnorm; norm_num at hnorm; linarith)
    have hnat : p ^ 8 = 1 := by exact_mod_cast hZ
    rcases Nat.pow_eq_one.mp hnat with h1 | h1
    · exact absurd h1 hp.out.one_lt.ne'
    · omega
  set W : ℤ := (q : ℤ) ^ δ with hWdef
  have hq0 : (0 : ℤ) < (q : ℤ) := by exact_mod_cast hq.out.pos
  have hW0 : 0 < W := pow_pos hq0 δ
  have hqoddZ : Odd (q : ℤ) := by
    rcases Int.even_or_odd (q : ℤ) with he | ho
    · exfalso; obtain ⟨k, hk⟩ := he; omega
    · exact ho
  have hWodd : Odd W := hqoddZ.pow
  have hWsq : W ^ 2 = R ^ 2 + 5 * S ^ 2 := by
    rw [hWdef, ← pow_mul, show δ * 2 = 2 * δ from by ring]
    exact hpin
  obtain ⟨S2, hS2⟩ : ∃ S2, S = 2 * S2 := ⟨S / 2, by omega⟩
  obtain ⟨u1, hu1⟩ : ∃ u1, W - R = 2 * u1 := by
    obtain ⟨w, hw⟩ := hWodd; obtain ⟨r, hr⟩ := hRodd
    exact ⟨w - r, by omega⟩
  obtain ⟨u2, hu2⟩ : ∃ u2, W + R = 2 * u2 := by
    obtain ⟨w, hw⟩ := hWodd; obtain ⟨r, hr⟩ := hRodd
    exact ⟨w + r + 1, by omega⟩
  have hSsq0 : 0 < S ^ 2 := by positivity
  have hRW : R ^ 2 < W ^ 2 := by linarith
  have hRltW : R < W := by nlinarith [sq_nonneg (R + W)]
  have hRgtW : -W < R := by nlinarith [sq_nonneg (R - W)]
  have hu10 : 0 < u1 := by omega
  have hu20 : 0 < u2 := by omega
  have hprod : u1 * u2 = 5 * S2 ^ 2 := by
    have h4 : 2 * u1 * (2 * u2) = 5 * (2 * S2) ^ 2 := by
      rw [← hu1, ← hu2, ← hS2]
      linear_combination hWsq
    linarith [h4]
  have hcou : IsCoprime u1 u2 := by
    rw [Int.isCoprime_iff_gcd_eq_one]
    by_contra hg
    obtain ⟨ℓ, hℓp, hℓd⟩ := Nat.exists_prime_and_dvd hg
    have hd1 : (ℓ : ℤ) ∣ u1 :=
      dvd_trans (Int.natCast_dvd_natCast.mpr hℓd)
        (Int.gcd_dvd_left (a := u1) (b := u2))
    have hd2 : (ℓ : ℤ) ∣ u2 :=
      dvd_trans (Int.natCast_dvd_natCast.mpr hℓd)
        (Int.gcd_dvd_right (a := u1) (b := u2))
    have hdW : (ℓ : ℤ) ∣ W := by
      have hWeq : W = u1 + u2 := by omega
      rw [hWeq]; exact dvd_add hd1 hd2
    have hdR : (ℓ : ℤ) ∣ R := by
      have hReq : R = u2 - u1 := by omega
      rw [hReq]; exact dvd_sub hd2 hd1
    have hℓZ : Prime (ℓ : ℤ) := Nat.prime_iff_prime_int.mp hℓp
    have hℓq : ℓ = q := by
      have hqd := hℓZ.dvd_of_dvd_pow (show (ℓ : ℤ) ∣ (q : ℤ) ^ δ from hWdef ▸ hdW)
      have hqd' : ℓ ∣ q := by exact_mod_cast hqd
      exact (Nat.prime_dvd_prime_iff_eq hℓp hq.out).mp hqd'
    have hdSS : (ℓ : ℤ) ∣ 5 * S2 ^ 2 := hprod ▸ Dvd.dvd.mul_right hd1 u2
    have hdS2 : (ℓ : ℤ) ∣ S2 := by
      rcases hℓZ.dvd_mul.mp hdSS with h | h
      · exfalso
        have h5 : ℓ ∣ 5 := by exact_mod_cast h
        have : ℓ = 5 := (Nat.prime_dvd_prime_iff_eq hℓp (by norm_num)).mp h5
        exact hq5 (by omega)
      · exact hℓZ.dvd_of_dvd_pow h
    have hdS : (ℓ : ℤ) ∣ S := by rw [hS2]; exact Dvd.dvd.mul_left hdS2 2
    have hu := hcoRS.isUnit_of_dvd' hdR hdS
    rcases Int.isUnit_iff.mp hu with h1 | h1
    · have := hℓp.two_le; omega
    · have := hℓp.two_le; omega
  obtain ⟨α, β, hcoαβ, htsq, hsplit⟩ := five_sq_split u1 u2 S2 hcou hu10 hu20 hprod
  have hα0 : α ≠ 0 := by
    intro h0
    rcases hsplit with ⟨ha, _⟩ | ⟨_, hb⟩
    · rw [h0] at ha; nlinarith
    · rw [h0] at hb; nlinarith
  have hβ0 : β ≠ 0 := by
    intro h0
    rcases hsplit with ⟨_, hb⟩ | ⟨ha, _⟩
    · rw [h0] at hb; nlinarith
    · rw [h0] at ha; nlinarith
  have hR2 : R ^ 2 = (β ^ 2 - 5 * α ^ 2) ^ 2 := by
    have hReq : R = u2 - u1 := by omega
    rcases hsplit with ⟨ha, hb⟩ | ⟨ha, hb⟩ <;> (rw [hReq, ha, hb]; try ring)
  have hSsq : S ^ 2 = 4 * (α * β) ^ 2 := by rw [hS2]; nlinarith
  have hp8 : (p : ℤ) ^ 8 = (β ^ 2 - 5 * α ^ 2) ^ 2 + 4 * α ^ 2 * β ^ 2 := by
    rw [← hnorm, hR2]; nlinarith
  -- parity: exactly one of α, β is even (u1 + u2 = W is odd)
  have hparity : Odd (β ^ 2 - 3 * α ^ 2) := by
    have hWu : W = u1 + u2 := by omega
    have hodd : Odd (u1 + u2) := by rw [← hWu]; exact hWodd
    rcases Int.even_or_odd α with hα | hα <;> rcases Int.even_or_odd β with hβ | hβ
    · exfalso
      obtain ⟨A0, hA0⟩ := hα; obtain ⟨B0, hB0⟩ := hβ
      have h2a : (2 : ℤ) ∣ α := ⟨A0, by omega⟩
      have h2b : (2 : ℤ) ∣ β := ⟨B0, by omega⟩
      have := hcoαβ.isUnit_of_dvd' h2a h2b
      rcases Int.isUnit_iff.mp this with h | h <;> omega
    · obtain ⟨A0, hA0⟩ := hα; obtain ⟨B0, hB0⟩ := hβ
      refine ⟨2 * B0 ^ 2 + 2 * B0 - 6 * A0 ^ 2, ?_⟩
      rw [hA0, hB0]; ring
    · obtain ⟨A0, hA0⟩ := hα; obtain ⟨B0, hB0⟩ := hβ
      refine ⟨2 * B0 ^ 2 - 6 * A0 ^ 2 - 6 * A0 - 2, ?_⟩
      rw [hA0, hB0]; ring
    · exfalso
      have ho1 : Odd (α ^ 2) := hα.pow
      have ho2 : Odd (β ^ 2) := hβ.pow
      obtain ⟨x, hx⟩ := ho1
      obtain ⟨y, hy⟩ := ho2
      have heven : Even (u1 + u2) := by
        rcases hsplit with ⟨ha, hb⟩ | ⟨ha, hb⟩ <;>
          (rw [ha, hb, hx, hy]; exact ⟨5 * x + y + 3, by ring⟩)
      obtain ⟨e1, he1⟩ := heven
      obtain ⟨e2, he2⟩ := hodd
      omega
  -- the Gaussian refactorization z = (β²−3α²) + 4iα²
  set z : GaussianInt := ⟨β ^ 2 - 3 * α ^ 2, 4 * α ^ 2⟩ with hzdef
  have hznorm : z.norm = ((1 : ℕ) : ℤ) ^ 2 * (p : ℤ) ^ 8 * ((5 : ℕ) : ℤ) ^ 0 := by
    have h1 : z.norm = (β ^ 2 - 3 * α ^ 2) * (β ^ 2 - 3 * α ^ 2)
        + (4 * α ^ 2) * (4 * α ^ 2) := by simp [hzdef, Zsqrtd.norm]
    rw [h1]
    push_cast
    try nlinarith
  have hπnorm : (⟨A, B⟩ : GaussianInt).norm = (p : ℤ) := by
    have h : (⟨A, B⟩ : GaussianInt).norm = A * A + B * B := by simp [Zsqrtd.norm]
    rw [h]; nlinarith
  have hχnorm : (⟨1, 2⟩ : GaussianInt).norm = ((5 : ℕ) : ℤ) := by
    have h : (⟨1, 2⟩ : GaussianInt).norm = 1 * 1 + 2 * 2 := by simp [Zsqrtd.norm]
    rw [h]; norm_num
  have hfive : Fact (Nat.Prime 5) := ⟨by norm_num⟩
  obtain ⟨u, j, k, hu, hj, hk, hzeq⟩ :=
    norm_two_prime_classify p 5 hp5 (⟨A, B⟩ : GaussianInt) (⟨1, 2⟩ : GaussianInt)
      hπnorm hχnorm 1 (fun r hr hd _ => absurd (Nat.eq_one_of_dvd_one hd) hr.ne_one)
      0 8 z hznorm
  have hk0 : k = 0 := by omega
  subst hk0
  simp only [pow_zero, mul_one, one_mul, Nat.sub_zero, Nat.cast_one] at hzeq
  have hπprime : Prime (⟨A, B⟩ : GaussianInt) := prime_pi p A B hpAB
  have hπsprime : Prime (star (⟨A, B⟩ : GaussianInt)) := by
    have : star (⟨A, B⟩ : GaussianInt) = (⟨A, -B⟩ : GaussianInt) := by ext <;> simp
    rw [this]
    exact prime_pi p A (-B) (by nlinarith)
  have hns : ¬ (⟨A, B⟩ : GaussianInt) ∣ star (⟨A, B⟩ : GaussianInt) :=
    pi_not_dvd_star p hpodd A B hpAB
  -- middle j is impossible: p would divide both coordinates of z
  have hjcases : j = 0 ∨ j = 8 := by
    by_contra hmid
    push_neg at hmid
    have hj1 : 1 ≤ j := by omega
    have hj7 : j ≤ 7 := by omega
    have hπd : (⟨A, B⟩ : GaussianInt) ∣ z := by
      rw [hzeq]
      exact Dvd.dvd.mul_right (Dvd.dvd.mul_left
        (dvd_pow_self _ (by omega : j ≠ 0)) _) _
    have hπsd : star (⟨A, B⟩ : GaussianInt) ∣ z := by
      rw [hzeq]
      exact Dvd.dvd.mul_left (dvd_pow_self _ (by omega : 8 - j ≠ 0)) _
    obtain ⟨t, ht⟩ := hπsd
    have hπt : (⟨A, B⟩ : GaussianInt) ∣ t := by
      rcases hπprime.dvd_mul.mp (ht ▸ hπd) with h | h
      · exact absurd h hns
      · exact h
    obtain ⟨t2, ht2⟩ := hπt
    have hpz : ((p : ℤ) : GaussianInt) ∣ z := by
      refine ⟨t2, ?_⟩
      have hpg : (((p : ℕ) : ℤ) : GaussianInt)
          = (⟨A, B⟩ : GaussianInt) * star (⟨A, B⟩ : GaussianInt) := by
        rw [pi_mul_star, hpAB]
      rw [ht, ht2, hpg]
      ring
    have hpre : (p : ℤ) ∣ (β ^ 2 - 3 * α ^ 2) ∧ (p : ℤ) ∣ (4 * α ^ 2) := by
      have := ((Zsqrtd.intCast_dvd (p : ℤ) z).mp hpz)
      simpa [hzdef] using this
    have hpodd' : ¬ (p : ℤ) ∣ 4 := by
      intro hd
      have hnd : (p : ℕ) ∣ 4 := by exact_mod_cast hd
      have hle := Nat.le_of_dvd (by norm_num) hnd
      have h2 := hp.out.two_le
      interval_cases p <;> omega
    have hpα : (p : ℤ) ∣ α := by
      have hpZ : Prime ((p : ℕ) : ℤ) := Nat.prime_iff_prime_int.mp hp.out
      rcases hpZ.dvd_mul.mp hpre.2 with h | h
      · exact absurd h hpodd'
      · exact hpZ.dvd_of_dvd_pow h
    have hpβ : (p : ℤ) ∣ β := by
      have hpZ : Prime ((p : ℕ) : ℤ) := Nat.prime_iff_prime_int.mp hp.out
      have hβ2 : (p : ℤ) ∣ β ^ 2 := by
        obtain ⟨cα, hcα⟩ := hpα
        obtain ⟨cz, hcz⟩ := hpre.1
        exact ⟨cz + 3 * p * cα ^ 2, by
          linear_combination hcz + 3 * (α + p * cα) * hcα⟩
      exact hpZ.dvd_of_dvd_pow hβ2
    have := hcoαβ.isUnit_of_dvd' hpα hpβ
    rcases Int.isUnit_iff.mp this with h | h <;>
      (have := hp.out.two_le; omega)
  -- the surviving cases: z is a unit times π⁸ or π̄⁸
  have hw : ∃ w : GaussianInt, (w.im = S ∨ w.im = -S) ∧ (w.re = R ∨ w.re = -R)
      ∧ z = u * w := by
    rcases hjcases with rfl | rfl
    · refine ⟨star (⟨A, B⟩ : GaussianInt) ^ 8, ?_, ?_,
        by rw [hzeq]; push_cast; ring⟩
      · right
        rw [← star_pow, Zsqrtd.im_star, ← hSdef]
      · left
        rw [← star_pow, Zsqrtd.re_star, ← hRdef]
    · refine ⟨(⟨A, B⟩ : GaussianInt) ^ 8, Or.inl rfl, Or.inl rfl, ?_⟩
      rw [hzeq]; push_cast; ring
  obtain ⟨w, hwim, hwre, hzw⟩ := hw
  have hSeven : Even S := ⟨S2, by omega⟩
  rcases unit_cases u hu with rfl | rfl | rfl | rfl
  · -- u = 1: Im z = ±S, so 16α⁴ = S², so β² = 4α², so p⁸ = 17α⁴
    have him : (4 * α ^ 2) = w.im := by
      have := congrArg Zsqrtd.im hzw
      simpa [hzdef] using this
    have hsq : (4 * α ^ 2) ^ 2 = S ^ 2 := by
      rcases hwim with h | h <;> (rw [him, h]; try ring)
    have hβα : β ^ 2 = 4 * α ^ 2 := by
      have h16 : 16 * α ^ 4 = 4 * α ^ 2 * β ^ 2 := by nlinarith
      have hα2 : 0 < α ^ 2 := by positivity
      nlinarith
    exact p8_ne_17a4 p hp.out α hα0 (by nlinarith)
  · have him : (4 * α ^ 2) = -w.im := by
      have := congrArg Zsqrtd.im hzw
      simpa [hzdef] using this
    have hsq : (4 * α ^ 2) ^ 2 = S ^ 2 := by
      rcases hwim with h | h <;> (rw [him, h]; try ring)
    have hβα : β ^ 2 = 4 * α ^ 2 := by
      have h16 : 16 * α ^ 4 = 4 * α ^ 2 * β ^ 2 := by nlinarith
      have hα2 : 0 < α ^ 2 := by positivity
      nlinarith
    exact p8_ne_17a4 p hp.out α hα0 (by nlinarith)
  · -- u = i: Re z = ∓Im w = ∓(±S) is even, contradicting oddness
    have hre : (β ^ 2 - 3 * α ^ 2) = -w.im := by
      have := congrArg Zsqrtd.re hzw
      simpa [hzdef, Zsqrtd.re_mul] using this
    have : Even (β ^ 2 - 3 * α ^ 2) := by
      rcases hwim with h | h <;> (rw [hre, h]; simp [hSeven, hSeven.neg])
    obtain ⟨e1, he1⟩ := this
    obtain ⟨e2, he2⟩ := hparity
    omega
  · have hre : (β ^ 2 - 3 * α ^ 2) = w.im := by
      have := congrArg Zsqrtd.re hzw
      simpa [hzdef, Zsqrtd.re_mul] using this
    have : Even (β ^ 2 - 3 * α ^ 2) := by
      rcases hwim with h | h <;> (rw [hre, h]; simp [hSeven, hSeven.neg])
    obtain ⟨e1, he1⟩ := this
    obtain ⟨e2, he2⟩ := hparity
    omega

end Sqrt5Cell
