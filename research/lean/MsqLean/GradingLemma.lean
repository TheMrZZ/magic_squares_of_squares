/-
**Generalized bridge (grading) lemma** — the engine behind the two- and
three-prime grading kills: for a prime p ≡ 1 (mod 4) written p = a² + b²,
π = a + bi, any exponent k ≥ 1 and any Gaussian integer W whose norm is
coprime to p, we have p ∤ Im(π^k · W).

Proof: if p ∣ Im(z) for z = π^k W, the norm equation N(z) = p^k N(W)
(divisible by p since k ≥ 1) forces p ∣ Re(z); then both lifts
φ, ψ : ℤ[i] → ZMod p (i ↦ ±ω, ω² = −1) kill z.  Exactly one of
φ(π), ψ(π) vanishes (their product is p ≡ 0 and both vanishing would give
a ≡ b ≡ 0).  The lift with π-image nonzero then kills W, but
φ(W)·ψ(W) = N(W) mod p, contradicting coprimality.
-/
import Mathlib

private lemma norm_mul_gaussian (z w : GaussianInt) :
    (z * w).norm = z.norm * w.norm := Zsqrtd.norm_mul z w

private lemma norm_pow_gaussian' (z : GaussianInt) (m : ℕ) :
    (z ^ m).norm = z.norm ^ m := by
  induction m with
  | zero => simp [Zsqrtd.norm]
  | succ n ih => rw [pow_succ, pow_succ, Zsqrtd.norm_mul, ih]

/-- **Grading lemma.** p = a² + b² prime, k ≥ 1, W with p ∤ N(W):
then p ∤ Im((a+bi)^k * W). -/
theorem im_pipow_mul_not_dvd (p : ℕ) [hp : Fact (Nat.Prime p)] (hp4 : p % 4 = 1)
    (a b : ℤ) (hab : a ^ 2 + b ^ 2 = p) (k : ℕ) (hk : 1 ≤ k)
    (W : GaussianInt) (hW : ¬ ((p : ℤ) ∣ W.norm)) :
    ¬ ((p : ℤ) ∣ (((⟨a, b⟩ : GaussianInt) ^ k) * W).im) := by
  intro hdvd_im
  set π : GaussianInt := (⟨a, b⟩ : GaussianInt) with hπ
  set z : GaussianInt := π ^ k * W with hz
  have hπnorm : π.norm = (p : ℤ) := by
    have : π.norm = a * a + b * b := by simp [hπ, Zsqrtd.norm]
    rw [this]; nlinarith [hab]
  have hnormz : z.norm = (p : ℤ) ^ k * W.norm := by
    rw [hz, norm_mul_gaussian, norm_pow_gaussian', hπnorm]
  have hsum : z.re ^ 2 + z.im ^ 2 = (p : ℤ) ^ k * W.norm := by
    have h : z.norm = z.re * z.re + z.im * z.im := by simp [Zsqrtd.norm]
    nlinarith [h, hnormz]
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  have hdvd_re : (p : ℤ) ∣ z.re := by
    apply hpP.dvd_of_dvd_pow (n := 2)
    have hre2 : z.re ^ 2 = (p : ℤ) ^ k * W.norm - z.im ^ 2 := by linarith [hsum]
    rw [hre2]
    exact dvd_sub (Dvd.dvd.mul_right (dvd_pow_self _ (by omega)) _)
      (dvd_pow hdvd_im (by norm_num))
  obtain ⟨ω, hω⟩ : ∃ ω : ZMod p, ω * ω = -1 := by
    obtain ⟨ω, hω⟩ := (ZMod.exists_sq_eq_neg_one_iff (p := p)).mpr (by omega)
    exact ⟨ω, hω.symm⟩
  have hωcast : ω * ω = ((-1 : ℤ) : ZMod p) := by push_cast; exact hω
  have hωcast' : (-ω) * (-ω) = ((-1 : ℤ) : ZMod p) := by push_cast; rw [neg_mul_neg]; exact hω
  set φ : GaussianInt →+* ZMod p := Zsqrtd.lift ⟨ω, hωcast⟩ with hφdef
  set ψ : GaussianInt →+* ZMod p := Zsqrtd.lift ⟨-ω, hωcast'⟩ with hψdef
  have hφeval : ∀ w : GaussianInt, φ w = (w.re : ZMod p) + (w.im : ZMod p) * ω := by
    intro w
    have : w = (⟨w.re, w.im⟩ : GaussianInt) := by ext <;> rfl
    rw [this]; simp [hφdef, Zsqrtd.lift]
  have hψeval : ∀ w : GaussianInt, ψ w = (w.re : ZMod p) + (w.im : ZMod p) * (-ω) := by
    intro w
    have : w = (⟨w.re, w.im⟩ : GaussianInt) := by ext <;> rfl
    rw [this]; simp [hψdef, Zsqrtd.lift]
  -- both lifts kill z
  have hre0 : ((z.re : ZMod p)) = 0 := (ZMod.intCast_zmod_eq_zero_iff_dvd _ _).mpr hdvd_re
  have him0 : ((z.im : ZMod p)) = 0 := (ZMod.intCast_zmod_eq_zero_iff_dvd _ _).mpr hdvd_im
  have hφz : φ z = 0 := by rw [hφeval]; rw [hre0, him0]; ring
  have hψz : ψ z = 0 := by rw [hψeval]; rw [hre0, him0]; ring
  -- lift(W) products give N(W)
  have hprodW : φ W * ψ W = ((W.norm : ZMod p)) := by
    rw [hφeval, hψeval]
    have : W.norm = W.re * W.re + W.im * W.im := by simp [Zsqrtd.norm]
    rw [this]; push_cast
    linear_combination (-(W.im : ZMod p)^2) * hω
  have hWn0 : ((W.norm : ZMod p)) ≠ 0 := by
    intro h0; exact hW ((ZMod.intCast_zmod_eq_zero_iff_dvd _ _).mp h0)
  have hφW : φ W ≠ 0 := by
    intro h0; apply hWn0; rw [← hprodW, h0, zero_mul]
  have hψW : ψ W ≠ 0 := by
    intro h0; apply hWn0; rw [← hprodW, h0, mul_zero]
  -- exactly one of φ π, ψ π is zero; the OTHER lift then kills W: contradiction
  have hφzfac : φ π ^ k * φ W = 0 := by
    have := hφz; rw [hz, map_mul, map_pow] at this; exact this
  have hψzfac : ψ π ^ k * ψ W = 0 := by
    have := hψz; rw [hz, map_mul, map_pow] at this; exact this
  have hφπ : φ π = 0 := by
    rcases mul_eq_zero.mp hφzfac with h | h
    · exact pow_eq_zero_iff (by omega) |>.mp h
    · exact absurd h hφW
  have hψπ : ψ π = 0 := by
    rcases mul_eq_zero.mp hψzfac with h | h
    · exact pow_eq_zero_iff (by omega) |>.mp h
    · exact absurd h hψW
  -- both φ π and ψ π zero ⇒ a ≡ b ≡ 0 (mod p) ⇒ p² ∣ p, absurd
  have hπre : (π.re : ZMod p) = (a : ZMod p) := by simp [hπ]
  have hπim : (π.im : ZMod p) = (b : ZMod p) := by simp [hπ]
  have h1 : (a : ZMod p) + (b : ZMod p) * ω = 0 := by
    have := hφπ; rw [hφeval, hπre, hπim] at this; exact this
  have h2 : (a : ZMod p) + (b : ZMod p) * (-ω) = 0 := by
    have := hψπ; rw [hψeval, hπre, hπim] at this; exact this
  have ha0 : (a : ZMod p) = 0 := by
    have hsum2 : (2 : ZMod p) * (a : ZMod p) = 0 := by linear_combination h1 + h2
    have h2ne : (2 : ZMod p) ≠ 0 := by
      have hp5 : 5 ≤ p := by have := hp.out.two_le; omega
      have : ((2 : ℤ) : ZMod p) ≠ 0 := by
        rw [Ne, ZMod.intCast_zmod_eq_zero_iff_dvd]
        intro hdvd
        have hle := Int.le_of_dvd (by norm_num) hdvd
        have : (5 : ℤ) ≤ p := by exact_mod_cast hp5
        omega
      simpa using this
    exact (mul_eq_zero.mp hsum2).resolve_left h2ne
  have hb0 : (b : ZMod p) = 0 := by
    have hbω : (b : ZMod p) * ω = 0 := by linear_combination h1 - ha0
    have hωne : ω ≠ 0 := by
      intro h0; rw [h0, mul_zero] at hω
      have : (1 : ZMod p) = 0 := by linear_combination hω
      exact one_ne_zero this
    exact (mul_eq_zero.mp hbω).resolve_right hωne
  -- a ≡ b ≡ 0 mod p contradicts a² + b² = p
  have hpa : (p : ℤ) ∣ a := (ZMod.intCast_zmod_eq_zero_iff_dvd _ _).mp ha0
  have hpb : (p : ℤ) ∣ b := (ZMod.intCast_zmod_eq_zero_iff_dvd _ _).mp hb0
  obtain ⟨a', ha'⟩ := hpa; obtain ⟨b', hb'⟩ := hpb
  have hp1 : (1 : ℤ) < p := by
    have := hp.out.two_le; exact_mod_cast by omega
  have : (p : ℤ) * (p * (a'^2 + b'^2)) = p := by
    have h1 : (p : ℤ) * (p * (a'^2 + b'^2)) = (p*a')^2 + (p*b')^2 := by ring
    rw [h1, ← ha', ← hb', hab]
  have hfac : (p : ℤ) * (a'^2 + b'^2) = 1 := by
    have hpne : (p : ℤ) ≠ 0 := by positivity
    have h' : (p : ℤ) * ((p : ℤ) * (a'^2 + b'^2)) = (p : ℤ) * 1 := by
      rw [mul_one]; exact this
    exact mul_left_cancel₀ hpne h'
  set s : ℤ := a'^2 + b'^2 with hs
  have hs0 : 0 ≤ s := by positivity
  have hspos : 0 < s := by
    rcases lt_or_eq_of_le hs0 with h | h
    · exact h
    · exfalso; rw [← h] at hfac; simp at hfac
  have : (p : ℤ) * s ≥ (p : ℤ) * 1 := by
    apply mul_le_mul_of_nonneg_left _ (by linarith)
    omega
  omega
