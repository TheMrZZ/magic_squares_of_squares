/-
The rigid part: a Gaussian integer whose norm is s² for s free of primes
≡ 1 (mod 4) is a unit multiple of s itself.  (Primes ≡ 3 mod 4 are inert;
2 ramifies as −i(1+i)².)
-/
import Mathlib
import MsqLean.Classification

open Zsqrtd

/-- 1+i, the ramified prime over 2. -/
private def δ : GaussianInt := ⟨1, 1⟩

private lemma δ_prime : Prime δ :=
  prime_of_norm_prime δ (by
    have : δ.norm = 2 := by simp [δ, Zsqrtd.norm]
    rw [this]; norm_num)

private lemma δ_sq : δ * δ = (⟨0, 2⟩ : GaussianInt) := by
  ext <;> simp [δ]

private lemma star_δ_assoc : star δ = -Zsqrtd.sqrtd * δ := by
  ext <;> simp [δ]

/-- Extraction of one inert prime q ≡ 3 (mod 4). -/
private lemma inert_extract (q : ℕ) [Fact q.Prime] (hq3 : q % 4 = 3)
    (z : GaussianInt) (hdvd : (q : ℤ) ∣ z.norm) : (q : GaussianInt) ∣ z := by
  have hqprime : Prime (q : GaussianInt) :=
    (GaussianInt.prime_iff_mod_four_eq_three_of_nat_prime q).mpr hq3
  have hnz : ((z.norm : ℤ) : GaussianInt) = z * star z := Zsqrtd.norm_eq_mul_conj z
  have hd2 : (q : GaussianInt) ∣ z * star z := by
    rw [← hnz]
    obtain ⟨k, hk⟩ := hdvd
    exact ⟨(k : GaussianInt), by rw [hk]; push_cast; ring⟩
  rcases hqprime.2.2 z (star z) hd2 with h | h
  · exact h
  · have := star_dvd_star h
    simpa using this

/-- Extraction of the ramified prime: 2 ∣ N(z) ⇒ (1+i) ∣ z. -/
private lemma delta_extract (z : GaussianInt) (hdvd : (2 : ℤ) ∣ z.norm) : δ ∣ z := by
  have hsplit : ((2 : ℤ) : GaussianInt) = δ * star δ := by
    have h := Zsqrtd.norm_eq_mul_conj δ
    have hn : δ.norm = 2 := by simp [δ, Zsqrtd.norm]
    rw [hn] at h
    exact_mod_cast h
  have hd2 : δ ∣ z * star z := by
    have hnz : ((z.norm : ℤ) : GaussianInt) = z * star z := Zsqrtd.norm_eq_mul_conj z
    obtain ⟨k, hk⟩ := hdvd
    refine dvd_trans ⟨star δ, hsplit⟩ ?_
    rw [← hnz]
    exact ⟨(k : GaussianInt), by rw [hk]; push_cast; ring⟩
  rcases δ_prime.2.2 z (star z) hd2 with h | h
  · exact h
  · have h2 := star_dvd_star h
    simp only [star_star] at h2
    exact dvd_trans ⟨-Zsqrtd.sqrtd, by rw [star_δ_assoc]; ring⟩ h2

/-- Norm of a natural-number cast. -/
private lemma gnorm_natCast (n : ℕ) : ((n : GaussianInt)).norm = (n : ℤ) ^ 2 := by
  have h : ((n : GaussianInt)) = ((⟨(n : ℤ), 0⟩ : GaussianInt)) := by
    ext <;> simp
  rw [h]
  simp [Zsqrtd.norm]
  ring

/-- **Rigid part.**  If every prime factor of s is ≢ 1 (mod 4), then every
Gaussian integer of norm s² is a unit multiple of s. -/
theorem rigid_classify (s : ℕ) (hs : ∀ q : ℕ, q.Prime → q ∣ s → q % 4 ≠ 1) :
    ∀ z : GaussianInt, z.norm = ((s : ℕ) : ℤ) ^ 2 →
    ∃ u : GaussianInt, IsUnit u ∧ z = u * (s : GaussianInt) := by
  induction s using Nat.strong_induction_on with
  | _ s ih =>
    intro z hz
    rcases Nat.eq_zero_or_pos s with rfl | hs0
    · refine ⟨1, isUnit_one, ?_⟩
      have hz0 : z = 0 := by
        have h : z.re * z.re + z.im * z.im = 0 := by
          have hn : z.norm = z.re * z.re + z.im * z.im := by simp [Zsqrtd.norm]
          rw [← hn, hz]; ring
        have h1 : z.re = 0 := by nlinarith [mul_self_nonneg z.re, mul_self_nonneg z.im]
        have h2 : z.im = 0 := by nlinarith [mul_self_nonneg z.re, mul_self_nonneg z.im]
        ext <;> simp [h1, h2]
      rw [hz0]; simp
    rcases Nat.lt_or_ge s 2 with hslt | hs2
    · -- s = 1
      have hs1 : s = 1 := by omega
      subst hs1
      refine ⟨z, ?_, by simp⟩
      apply Zsqrtd.norm_eq_one_iff.mp
      rw [hz]
      simp
    · -- s ≥ 2 : peel the least prime factor
      set q := s.minFac with hqdef
      have hqprime : q.Prime := Nat.minFac_prime (by omega)
      have hqdvd : q ∣ s := Nat.minFac_dvd s
      obtain ⟨s', hs'⟩ := hqdvd
      have hs'pos : 0 < s' := by
        rcases Nat.eq_zero_or_pos s' with rfl | h
        · omega
        · exact h
      have hs'lt : s' < s := by
        have hq2 : 2 ≤ q := hqprime.two_le
        calc s' < q * s' := by nlinarith
        _ = s := hs'.symm
      have hs'cond : ∀ r : ℕ, r.Prime → r ∣ s' → r % 4 ≠ 1 := by
        intro r hr hrd
        exact hs r hr (hs'.symm ▸ Dvd.dvd.mul_left hrd q)
      rcases eq_or_ne q 2 with hq2 | hqodd
      · -- q = 2 : extract δ twice
        have h2s : (2 : ℤ) ∣ z.norm := by
          rw [hz, hs', hq2]
          exact ⟨2 * (s' : ℤ) ^ 2, by push_cast; ring⟩
        obtain ⟨w1, hw1⟩ := delta_extract z h2s
        have hw1norm : w1.norm = 2 * ((s' : ℤ)) ^ 2 := by
          have h : δ.norm * w1.norm = z.norm := by rw [← Zsqrtd.norm_mul, ← hw1]
          have hδn : δ.norm = 2 := by simp [δ, Zsqrtd.norm]
          rw [hδn, hz, hs', hq2] at h
          have h2 : ((2 * s' : ℕ) : ℤ) ^ 2 = 2 * (2 * (s' : ℤ) ^ 2) := by push_cast; ring
          rw [h2] at h
          exact mul_left_cancel₀ (by norm_num) h
        have h2w1 : (2 : ℤ) ∣ w1.norm := ⟨(s' : ℤ) ^ 2, hw1norm⟩
        obtain ⟨w2, hw2⟩ := delta_extract w1 h2w1
        have hw2norm : w2.norm = ((s' : ℕ) : ℤ) ^ 2 := by
          have h : δ.norm * w2.norm = w1.norm := by rw [← Zsqrtd.norm_mul, ← hw2]
          have hδn : δ.norm = 2 := by simp [δ, Zsqrtd.norm]
          rw [hδn, hw1norm] at h
          exact mul_left_cancel₀ (by norm_num) h
        obtain ⟨u, hu, hweq⟩ := ih s' hs'lt hs'cond w2 hw2norm
        refine ⟨u * Zsqrtd.sqrtd, hu.mul ⟨⟨Zsqrtd.sqrtd, -Zsqrtd.sqrtd, by ext <;> simp, by ext <;> simp⟩, rfl⟩, ?_⟩
        rw [hw1, hw2, hweq, hs', hq2]
        have hδδ : δ * δ = 2 * Zsqrtd.sqrtd := by ext <;> simp [δ]
        push_cast
        calc δ * (δ * (u * (s' : GaussianInt)))
            = (δ * δ) * (u * (s' : GaussianInt)) := by ring
          _ = (2 * Zsqrtd.sqrtd) * (u * (s' : GaussianInt)) := by rw [hδδ]
          _ = u * Zsqrtd.sqrtd * (2 * (s' : GaussianInt)) := by ring
      · -- q odd, hence q ≡ 3 (mod 4)
        have hq3 : q % 4 = 3 := by
          have h1 := hs q hqprime (Nat.minFac_dvd s)
          have hodd := hqprime.two_le
          rcases Nat.Prime.eq_two_or_odd hqprime with h | h
          · omega
          · omega
        have : Fact q.Prime := ⟨hqprime⟩
        have hqz : ((q : ℕ) : ℤ) ∣ z.norm := by
          rw [hz, hs']
          exact ⟨(q : ℤ) * (s' : ℤ) ^ 2, by push_cast; ring⟩
        obtain ⟨w, hw⟩ := inert_extract q hq3 z hqz
        have hwnorm : w.norm = ((s' : ℕ) : ℤ) ^ 2 := by
          have h : ((q : GaussianInt)).norm * w.norm = z.norm := by
            rw [← Zsqrtd.norm_mul, ← hw]
          rw [gnorm_natCast, hz, hs'] at h
          have h2 : ((q * s' : ℕ) : ℤ) ^ 2 = (q : ℤ) ^ 2 * (s' : ℤ) ^ 2 := by push_cast; ring
          rw [h2] at h
          exact mul_left_cancel₀ (pow_ne_zero 2 (by exact_mod_cast hqprime.ne_zero)) h
        obtain ⟨u, hu, hweq⟩ := ih s' hs'lt hs'cond w hwnorm
        refine ⟨u, hu, ?_⟩
        rw [hw, hweq, hs']
        push_cast
        ring
