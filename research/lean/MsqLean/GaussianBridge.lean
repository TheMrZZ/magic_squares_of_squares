/-
The ℤ[i] bridge lemma behind Theorems C and D:
for a prime p ≡ 1 (mod 4) written as p = a² + b², no positive power of the
Gaussian integer a + bi has both coordinates divisible by p; in particular
p never divides Im((a+bi)^m) for m ≥ 1.

Elementary proof: map ℤ[i] → ZMod p via i ↦ ±ω where ω² = −1 (exists since
p ≡ 1 mod 4).  If p divided Im, the norm equation forces p ∣ Re as well, both
ring-hom images of (a+bi)^m vanish, and ZMod p being a field pushes the
vanishing down to a ≡ b ≡ 0 (mod p) — contradicting a² + b² = p.
-/
import Mathlib

private lemma norm_pow_gaussian (z : GaussianInt) (m : ℕ) :
    (z ^ m).norm = z.norm ^ m := by
  induction m with
  | zero => simp [Zsqrtd.norm]
  | succ n ih => rw [pow_succ, pow_succ, Zsqrtd.norm_mul, ih]

/-- **Bridge lemma.**  If p = a² + b² is prime with p ≡ 1 (mod 4) and m ≥ 1,
then p ∤ Im((a + bi)^m). -/
theorem im_pow_not_dvd (p : ℕ) [hp : Fact (Nat.Prime p)] (hp4 : p % 4 = 1)
    (a b : ℤ) (hab : a ^ 2 + b ^ 2 = p) (m : ℕ) (hm : 1 ≤ m) :
    ¬ ((p : ℤ) ∣ ((⟨a, b⟩ : GaussianInt) ^ m).im) := by
  intro hdvd_im
  set z : GaussianInt := (⟨a, b⟩ : GaussianInt) ^ m with hz
  have hbase_norm : (⟨a, b⟩ : GaussianInt).norm = (p : ℤ) := by
    have : (⟨a, b⟩ : GaussianInt).norm = a * a + b * b := by
      simp [Zsqrtd.norm]
    rw [this]; nlinarith [hab]
  have hnormz : z.norm = (p : ℤ) ^ m := by
    rw [hz, norm_pow_gaussian, hbase_norm]
  have hsum : z.re ^ 2 + z.im ^ 2 = (p : ℤ) ^ m := by
    have h : z.norm = z.re * z.re + z.im * z.im := by simp [Zsqrtd.norm]
    nlinarith [h, hnormz]
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  -- p ∣ Im ⇒ p ∣ Re via the norm equation
  have hdvd_re : (p : ℤ) ∣ z.re := by
    apply hpP.dvd_of_dvd_pow (n := 2)
    have hre2 : z.re ^ 2 = (p : ℤ) ^ m - z.im ^ 2 := by linarith [hsum]
    rw [hre2]
    exact dvd_sub (dvd_pow_self _ (by omega)) (dvd_pow hdvd_im (by norm_num))
  -- ω with ω² = −1
  obtain ⟨ω, hω⟩ : ∃ ω : ZMod p, ω * ω = -1 := by
    obtain ⟨ω, hω⟩ := (ZMod.exists_sq_eq_neg_one_iff (p := p)).mpr (by omega)
    exact ⟨ω, hω.symm⟩
  have hωcast : ω * ω = ((-1 : ℤ) : ZMod p) := by push_cast; exact hω
  have hωcast' : (-ω) * (-ω) = ((-1 : ℤ) : ZMod p) := by push_cast; rw [neg_mul_neg]; exact hω
  set φ : GaussianInt →+* ZMod p := Zsqrtd.lift ⟨ω, hωcast⟩ with hφdef
  set ψ : GaussianInt →+* ZMod p := Zsqrtd.lift ⟨-ω, hωcast'⟩ with hψdef
  have hφeval : ∀ x y : ℤ, φ (⟨x, y⟩ : GaussianInt) = x + y * ω := by
    intro x y; simp [hφdef, Zsqrtd.lift]
  have hψeval : ∀ x y : ℤ, ψ (⟨x, y⟩ : GaussianInt) = x + y * (-ω) := by
    intro x y; simp [hψdef, Zsqrtd.lift]
  have hre0 : ((z.re : ZMod p)) = 0 := (ZMod.intCast_zmod_eq_zero_iff_dvd _ _).mpr hdvd_re
  have him0 : ((z.im : ZMod p)) = 0 := (ZMod.intCast_zmod_eq_zero_iff_dvd _ _).mpr hdvd_im
  have hzcoords : z = (⟨z.re, z.im⟩ : GaussianInt) := by ext <;> rfl
  have hφz : φ z = 0 := by rw [hzcoords, hφeval, hre0, him0]; ring
  have hψz : ψ z = 0 := by rw [hzcoords, hψeval, hre0, him0]; ring
  -- ZMod p is a field: the base's images vanish
  have hφbase : (a : ZMod p) + b * ω = 0 := by
    have hpow : (φ (⟨a, b⟩ : GaussianInt)) ^ m = 0 := by rw [← map_pow, ← hz, hφz]
    have := pow_eq_zero_iff (M₀ := ZMod p) (a := φ (⟨a, b⟩ : GaussianInt))
      (n := m) (by omega) |>.mp hpow
    rw [hφeval] at this; exact this
  have hψbase : (a : ZMod p) + b * (-ω) = 0 := by
    have hpow : (ψ (⟨a, b⟩ : GaussianInt)) ^ m = 0 := by rw [← map_pow, ← hz, hψz]
    have := pow_eq_zero_iff (M₀ := ZMod p) (a := ψ (⟨a, b⟩ : GaussianInt))
      (n := m) (by omega) |>.mp hpow
    rw [hψeval] at this; exact this
  -- 2 ≠ 0, ω ≠ 0 in ZMod p
  have h2ne : (2 : ZMod p) ≠ 0 := by
    intro h
    have h2 : ((2 : ℤ) : ZMod p) = 0 := by exact_mod_cast h
    have hdvd2 := (ZMod.intCast_zmod_eq_zero_iff_dvd _ _).mp h2
    have hnat : p ∣ 2 := by exact_mod_cast hdvd2
    have hle : p ≤ 2 := Nat.le_of_dvd (by norm_num) hnat
    have := hp.out.two_le
    omega
  have hωne : ω ≠ 0 := by
    intro h
    rw [h, mul_zero] at hω
    exact one_ne_zero (α := ZMod p) (by linear_combination hω)
  -- force a ≡ b ≡ 0 (mod p)
  have ha0 : ((a : ZMod p)) = 0 := by
    have hsum2 : ((a : ZMod p)) * 2 = 0 := by linear_combination hφbase + hψbase
    rcases mul_eq_zero.mp hsum2 with h | h
    · exact h
    · exact absurd h h2ne
  have hb0 : ((b : ZMod p)) = 0 := by
    have hbw : ((b : ZMod p)) * ω = 0 := by linear_combination hφbase - ha0
    rcases mul_eq_zero.mp hbw with h | h
    · exact h
    · exact absurd h hωne
  -- p ∣ a and p ∣ b contradict a² + b² = p
  obtain ⟨k, hk⟩ := (ZMod.intCast_zmod_eq_zero_iff_dvd _ _).mp ha0
  obtain ⟨l, hl⟩ := (ZMod.intCast_zmod_eq_zero_iff_dvd _ _).mp hb0
  have hpge : (2 : ℤ) ≤ (p : ℤ) := by exact_mod_cast hp.out.two_le
  rw [hk, hl] at hab
  have hKL : (p : ℤ) = (p : ℤ) ^ 2 * (k ^ 2 + l ^ 2) := by linear_combination -hab
  rcases eq_or_lt_of_le (by positivity : (0 : ℤ) ≤ k ^ 2 + l ^ 2) with h | h
  · rw [← h, mul_zero] at hKL
    linarith
  · have h1 : (1 : ℤ) ≤ k ^ 2 + l ^ 2 := h
    nlinarith [hKL, hpge, h1]
