/-
Spectator-corner theorems: the corner-triple double pinch survives an
arbitrary common factor W in every slot (W = ψ^{4γ} of a third prime,
or any product of further primes' factors), provided the two active
primes divide neither W nor its conjugate. These kill corner-shaped
relations at multi-prime grids that the symbolic census engine leaves
alive (its per-prime certificate test cannot certify a two-prime pinch
in the presence of a spectator).
-/
import MsqLean.CoreDisj

open Zsqrtd

/-- Aligned corner triple with spectator factor W. -/
theorem uniform_corner_aligned_spec
    (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (W : GaussianInt) (a b : ℕ)
    (hWπs : ¬ (⟨A, B⟩ : GaussianInt) ∣ star W)
    (hWχ : ¬ (⟨C, D⟩ : GaussianInt) ∣ W)
    (e1 e2 e3 : ℤ) (he1 : e1 = 1 ∨ e1 = -1) (he2 : e2 = 1 ∨ e2 = -1)
    (he3 : e3 = 1 ∨ e3 = -1) :
    (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
        * (⟨A, B⟩ : GaussianInt) ^ (4 * a) * (star (⟨C, D⟩ : GaussianInt)) ^ (4 * b + 4) * W
      + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
        * (⟨A, B⟩ : GaussianInt) ^ (4 * a + 4) * (star (⟨C, D⟩ : GaussianInt)) ^ (4 * b) * W
      + ((e3 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ (4 * a + 4)
        * (star (⟨C, D⟩ : GaussianInt)) ^ (4 * b + 4) * W).im ≠ 0 := by
  intro h0
  set π : GaussianInt := ⟨A, B⟩ with hπdef
  set χ : GaussianInt := ⟨C, D⟩ with hχdef
  set G : GaussianInt :=
    ((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
        * π ^ (4 * a) * (star χ) ^ (4 * b + 4) * W
      + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
        * π ^ (4 * a + 4) * (star χ) ^ (4 * b) * W
      + ((e3 : ℤ) : GaussianInt) * π ^ (4 * a + 4) * (star χ) ^ (4 * b + 4) * W with hGdef
  have hself : star G = G := by
    ext
    · simp
    · simp [h0]
  have hππb : π * star π = ((p : ℤ) : GaussianInt) := by
    rw [hπdef, pi_mul_star, hpAB]
  have hχχb : χ * star χ = ((q : ℤ) : GaussianInt) := by
    rw [hχdef, pi_mul_star, hqCD]
  have hπprime : Prime π := prime_pi p A B hpAB
  have hχprime : Prime χ := prime_pi q C D hqCD
  have hπnb : ¬ π ∣ star π := pi_not_dvd_star p hpodd A B hpAB
  have hχnb : ¬ χ ∣ star χ := pi_not_dvd_star q hqodd C D hqCD
  have hπχ : ¬ π ∣ χ := not_dvd_other p q hpq A B C D hpAB hqCD
  have hχπ : ¬ χ ∣ π := not_dvd_other q p (fun h => hpq h.symm) C D A B hqCD hpAB
  have hP2 : (((p : ℤ) ^ 2 : ℤ) : GaussianInt) = π ^ 2 * (star π) ^ 2 := by
    have hcast : (((p : ℤ) ^ 2 : ℤ) : GaussianInt) = ((p : ℤ) : GaussianInt) ^ 2 := by
      push_cast; ring
    rw [hcast, ← hππb]; ring
  have hQ2 : (((q : ℤ) ^ 2 : ℤ) : GaussianInt) = χ ^ 2 * (star χ) ^ 2 := by
    have hcast : (((q : ℤ) ^ 2 : ℤ) : GaussianInt) = ((q : ℤ) : GaussianInt) ^ 2 := by
      push_cast; ring
    rw [hcast, ← hχχb]; ring
  have hstarG : star G =
      ((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
          * (star π) ^ (4 * a) * χ ^ (4 * b + 4) * star W
        + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
          * (star π) ^ (4 * a + 4) * χ ^ (4 * b) * star W
        + ((e3 : ℤ) : GaussianInt) * (star π) ^ (4 * a + 4) * χ ^ (4 * b + 4) * star W := by
    rw [hGdef]
    simp only [star_add, star_mul, star_pow, star_star, star_intCast]
    ring
  -- π-side
  have hπG : π ∣ G := by
    rw [hGdef, hP2]
    exact ⟨((e1 : ℤ) : GaussianInt) * (π * (star π) ^ 2)
        * π ^ (4 * a) * (star χ) ^ (4 * b + 4) * W
      + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
        * π ^ (4 * a + 3) * (star χ) ^ (4 * b) * W
      + ((e3 : ℤ) : GaussianInt) * π ^ (4 * a + 3) * (star χ) ^ (4 * b + 4) * W, by ring⟩
  have hπsG : π ∣ (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
        * (star π) ^ (4 * a) * χ ^ (4 * b + 4) * star W
      + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
        * (star π) ^ (4 * a + 4) * χ ^ (4 * b) * star W
      + ((e3 : ℤ) : GaussianInt) * (star π) ^ (4 * a + 4) * χ ^ (4 * b + 4) * star W) := by
    rw [← hstarG, hself]; exact hπG
  have hπt1 : π ∣ (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
      * (star π) ^ (4 * a) * χ ^ (4 * b + 4) * star W) := by
    rw [hP2]
    exact ⟨((e1 : ℤ) : GaussianInt) * (π * (star π) ^ 2)
      * (star π) ^ (4 * a) * χ ^ (4 * b + 4) * star W, by ring⟩
  have hπrest : π ∣ (star W * ((star π) ^ (4 * a + 4) * (χ ^ (4 * b) *
      (((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
        + ((e3 : ℤ) : GaussianInt) * χ ^ 4)))) := by
    have heq : star W * ((star π) ^ (4 * a + 4) * (χ ^ (4 * b) *
        (((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
          + ((e3 : ℤ) : GaussianInt) * χ ^ 4)))
        = (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
              * (star π) ^ (4 * a) * χ ^ (4 * b + 4) * star W
            + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
              * (star π) ^ (4 * a + 4) * χ ^ (4 * b) * star W
            + ((e3 : ℤ) : GaussianInt) * (star π) ^ (4 * a + 4) * χ ^ (4 * b + 4) * star W)
          - ((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
            * (star π) ^ (4 * a) * χ ^ (4 * b + 4) * star W := by
      ring
    rw [heq]; exact dvd_sub hπsG hπt1
  have hπcore : π ∣ (((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
      + ((e3 : ℤ) : GaussianInt) * χ ^ 4) := by
    rcases hπprime.dvd_mul.mp hπrest with h | h
    · exact absurd h hWπs
    · rcases hπprime.dvd_mul.mp h with h2 | h2
      · exact absurd (hπprime.dvd_of_dvd_pow h2) hπnb
      · rcases hπprime.dvd_mul.mp h2 with h3 | h3
        · exact absurd (hπprime.dvd_of_dvd_pow h3) hπχ
        · exact h3
  have hqCD' : C ^ 2 + (-D) ^ 2 = q := by rw [neg_pow]; ring_nf; linarith [hqCD]
  have hmirror : star (⟨C, -D⟩ : GaussianInt) = χ := by
    rw [hχdef]; ext <;> simp
  have hπcore' : (⟨A, B⟩ : GaussianInt) ∣
      (((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
        + ((e3 : ℤ) : GaussianInt) * (star (⟨C, -D⟩ : GaussianInt)) ^ 4) := by
    rw [hmirror]; exact hπcore
  have hPmir := pi_core_disj p q hpodd hpq A B C (-D) hpAB hqCD' e2 e3 he2 he3 hπcore'
  have hP : (p : ℤ) ∣ 2 * (C ^ 2 - D ^ 2) ∨ (p : ℤ) ∣ 4 * C * D := by
    rcases hPmir with h | h
    · left
      have hid : 2 * (C ^ 2 - (-D) ^ 2) = 2 * (C ^ 2 - D ^ 2) := by ring
      rwa [hid] at h
    · right
      have hid : 4 * C * (-D) = -(4 * C * D) := by ring
      rw [hid] at h
      exact dvd_neg.mp h
  -- χ-side
  have hGsG : χ ∣ (G - star G) := by
    rw [hself, sub_self]
    exact dvd_zero χ
  have hχDpart : χ ∣ (((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
        * (π ^ (4 * a + 4) * (star χ) ^ (4 * b) * W
          - (star π) ^ (4 * a + 4) * χ ^ (4 * b) * star W)
      - ((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
        * (star π) ^ (4 * a) * χ ^ (4 * b + 4) * star W
      - ((e3 : ℤ) : GaussianInt) * (star π) ^ (4 * a + 4) * χ ^ (4 * b + 4) * star W) := by
    rw [hQ2]
    exact ⟨((e2 : ℤ) : GaussianInt) * (χ * (star χ) ^ 2)
        * (π ^ (4 * a + 4) * (star χ) ^ (4 * b) * W
          - (star π) ^ (4 * a + 4) * χ ^ (4 * b) * star W)
      - ((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
        * (star π) ^ (4 * a) * χ ^ (4 * b + 3) * star W
      - ((e3 : ℤ) : GaussianInt) * (star π) ^ (4 * a + 4) * χ ^ (4 * b + 3) * star W, by ring⟩
  have hχrem : χ ∣ (W * (π ^ (4 * a) * ((star χ) ^ (4 * b + 4) *
      (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
        + ((e3 : ℤ) : GaussianInt) * π ^ 4)))) := by
    have heq : W * (π ^ (4 * a) * ((star χ) ^ (4 * b + 4) *
        (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
          + ((e3 : ℤ) : GaussianInt) * π ^ 4)))
        = (G - star G)
          - (((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
              * (π ^ (4 * a + 4) * (star χ) ^ (4 * b) * W
                - (star π) ^ (4 * a + 4) * χ ^ (4 * b) * star W)
            - ((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
              * (star π) ^ (4 * a) * χ ^ (4 * b + 4) * star W
            - ((e3 : ℤ) : GaussianInt) * (star π) ^ (4 * a + 4) * χ ^ (4 * b + 4) * star W) := by
      rw [hGdef, hstarG]; ring
    rw [heq]; exact dvd_sub hGsG hχDpart
  have hχmid : χ ∣ (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
      + ((e3 : ℤ) : GaussianInt) * π ^ 4) := by
    rcases hχprime.dvd_mul.mp hχrem with h | h
    · exact absurd h hWχ
    · rcases hχprime.dvd_mul.mp h with h2 | h2
      · exact absurd (hχprime.dvd_of_dvd_pow h2) hχπ
      · rcases hχprime.dvd_mul.mp h2 with h3 | h3
        · exact absurd (hχprime.dvd_of_dvd_pow h3) hχnb
        · exact h3
  have hχfac : χ ∣ (π ^ 2 *
      (((e3 : ℤ) : GaussianInt) * π ^ 2 + ((e1 : ℤ) : GaussianInt) * (star π) ^ 2)) := by
    have heq : π ^ 2 *
        (((e3 : ℤ) : GaussianInt) * π ^ 2 + ((e1 : ℤ) : GaussianInt) * (star π) ^ 2)
        = ((e1 : ℤ) : GaussianInt) * (π ^ 2 * (star π) ^ 2)
          + ((e3 : ℤ) : GaussianInt) * π ^ 4 := by ring
    rw [heq, ← hP2]; exact hχmid
  have hχcore : χ ∣ (((e3 : ℤ) : GaussianInt) * π ^ 2
      + ((e1 : ℤ) : GaussianInt) * (star π) ^ 2) := by
    rcases hχprime.dvd_mul.mp hχfac with h | h
    · exact absurd (hχprime.dvd_of_dvd_pow h) hχπ
    · exact h
  have hQ := sq_core_disj p q hpq A B C D hpAB hqCD e3 e1 he3 he1 hχcore
  exact double_pinch_finish p q hpodd hqodd hpq A B C D hpAB hqCD hP hQ

/-
NOTE: the mixed class does NOT survive a non-real spectator. Its
χ-side regrouping leaves the remainder χ̄^{4b+4}(e₃π⁴W − e₁p²W̄), whose
core e₃π²W − e₁π̄²W̄ mixes W and star W and is no longer small — the
pinch fails unless W is real. Mixed spectator corners with W = ψ^{4γ}
are therefore genuinely uncertified (consistent with the census
leaving them alive); only spectator power 0 (W a rational integer)
reduces to the plain `uniform_corner_mixed`.
-/

/-- A split prime's Gaussian factor never divides a power of a distinct
split prime's quartic factor. Discharges the spectator hypotheses for
W = (ψ⁴)^γ instantiations. -/
lemma not_dvd_spec_pow
    (p r : ℕ) [hp : Fact (Nat.Prime p)] [hr : Fact (Nat.Prime r)]
    (hpr : p ≠ r)
    (A B E F : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hrEF : E ^ 2 + F ^ 2 = r)
    (γ : ℕ) :
    ¬ (⟨A, B⟩ : GaussianInt) ∣ ((⟨E, F⟩ : GaussianInt) ^ 4) ^ γ := by
  intro h
  have hπprime : Prime (⟨A, B⟩ : GaussianInt) := prime_pi p A B hpAB
  exact not_dvd_other p r hpr A B E F hpAB hrEF
    (hπprime.dvd_of_dvd_pow (hπprime.dvd_of_dvd_pow h))

/-- Star version: nor does it divide the conjugate power. -/
lemma not_dvd_spec_pow_star
    (p r : ℕ) [hp : Fact (Nat.Prime p)] [hr : Fact (Nat.Prime r)]
    (hpr : p ≠ r) (hrodd : r % 2 = 1)
    (A B E F : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hrEF : E ^ 2 + F ^ 2 = r)
    (γ : ℕ) :
    ¬ (⟨A, B⟩ : GaussianInt) ∣ star (((⟨E, F⟩ : GaussianInt) ^ 4) ^ γ) := by
  intro h
  have hπprime : Prime (⟨A, B⟩ : GaussianInt) := prime_pi p A B hpAB
  have hstar : star (((⟨E, F⟩ : GaussianInt) ^ 4) ^ γ)
      = (((⟨E, -F⟩ : GaussianInt)) ^ 4) ^ γ := by
    have hsψ : star (⟨E, F⟩ : GaussianInt) = (⟨E, -F⟩ : GaussianInt) := by ext <;> simp
    rw [star_pow, star_pow, hsψ]
  rw [hstar] at h
  exact not_dvd_other p r hpr A B E (-F) hpAB
    (by rw [neg_pow]; ring_nf; linarith [hrEF])
    (hπprime.dvd_of_dvd_pow (hπprime.dvd_of_dvd_pow h))

/-- Instantiation demonstration: a concrete census-alive corner shape
at grid (2,2,1) — anchor (2,2) aligned corner carrying a spectator
ψ^{4γ} of a third prime r — is dead for every prime triple and
every spectator power. -/
example
    (p q r : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    [hr : Fact (Nat.Prime r)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (hpr : p ≠ r) (hqr : q ≠ r) (hrodd : r % 2 = 1)
    (A B C D E F : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (hrEF : E ^ 2 + F ^ 2 = r) (γ : ℕ)
    (e1 e2 e3 : ℤ) (he1 : e1 = 1 ∨ e1 = -1) (he2 : e2 = 1 ∨ e2 = -1)
    (he3 : e3 = 1 ∨ e3 = -1) :
    (((e1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt)
        * (⟨A, B⟩ : GaussianInt) ^ (4 * 1) * (star (⟨C, D⟩ : GaussianInt)) ^ (4 * 1 + 4)
        * ((⟨E, F⟩ : GaussianInt) ^ 4) ^ γ
      + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
        * (⟨A, B⟩ : GaussianInt) ^ (4 * 1 + 4) * (star (⟨C, D⟩ : GaussianInt)) ^ (4 * 1)
        * ((⟨E, F⟩ : GaussianInt) ^ 4) ^ γ
      + ((e3 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ (4 * 1 + 4)
        * (star (⟨C, D⟩ : GaussianInt)) ^ (4 * 1 + 4)
        * ((⟨E, F⟩ : GaussianInt) ^ 4) ^ γ).im ≠ 0 :=
  uniform_corner_aligned_spec p q hpodd hqodd hpq A B C D hpAB hqCD
    (((⟨E, F⟩ : GaussianInt) ^ 4) ^ γ) 1 1
    (not_dvd_spec_pow_star p r hpr hrodd A B E F hpAB hrEF γ)
    (not_dvd_spec_pow q r hqr C D E F hqCD hrEF γ)
    e1 e2 e3 he1 he2 he3

/-- A prime Gaussian factor divides a product only through a factor:
discharger for multi-prime spectators W = W₁·W₂. -/
lemma not_dvd_mul_spec
    (p : ℕ) [hp : Fact (Nat.Prime p)]
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p)
    (W1 W2 : GaussianInt)
    (h1 : ¬ (⟨A, B⟩ : GaussianInt) ∣ W1) (h2 : ¬ (⟨A, B⟩ : GaussianInt) ∣ W2) :
    ¬ (⟨A, B⟩ : GaussianInt) ∣ W1 * W2 := by
  intro h
  rcases (prime_pi p A B hpAB).dvd_mul.mp h with hd | hd
  · exact h1 hd
  · exact h2 hd

/-- star distributes over the spectator product for discharging. -/
lemma not_dvd_mul_spec_star
    (p : ℕ) [hp : Fact (Nat.Prime p)]
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p)
    (W1 W2 : GaussianInt)
    (h1 : ¬ (⟨A, B⟩ : GaussianInt) ∣ star W1) (h2 : ¬ (⟨A, B⟩ : GaussianInt) ∣ star W2) :
    ¬ (⟨A, B⟩ : GaussianInt) ∣ star (W1 * W2) := by
  rw [star_mul, mul_comm]
  exact not_dvd_mul_spec p A B hpAB (star W1) (star W2) h1 h2
