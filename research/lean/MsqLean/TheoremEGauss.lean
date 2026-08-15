/-
Gaussian-tier kill lemmas for the Theorem E assignment leaves:
two-term relations c₁·V_i = c₂·V_j with small coefficients.
-/
import Mathlib
import MsqLean.TheoremEInt

open Zsqrtd

/-- A split prime's factor doesn't divide an integer it doesn't divide. -/
lemma chi_not_dvd_intcast (q : ℕ) [hq : Fact (Nat.Prime q)]
    (C D : ℤ) (hqCD : C ^ 2 + D ^ 2 = q) (c : ℤ) (hc : ¬ (q : ℤ) ∣ c) :
    ¬ (⟨C, D⟩ : GaussianInt) ∣ ((c : ℤ) : GaussianInt) := by
  intro h
  have hnd := norm_dvd_of_dvd h
  rw [norm_mk, hqCD] at hnd
  have hcn : ((c : ℤ) : GaussianInt).norm = c ^ 2 := by
    simp [Zsqrtd.norm]; ring
  rw [hcn] at hnd
  have hqP : Prime (q : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hq.out
  exact hc (hqP.dvd_of_dvd_pow hnd)

/-- Sum-of-two-squares odd primes are 1 mod 4. -/
lemma rep_mod_four (p : ℕ) (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) : p % 4 = 1 := by
  have hodd : Odd (A ^ 2 + B ^ 2) := by
    rw [hpAB]
    rcases Nat.odd_iff.mpr hpodd with ⟨k, hk⟩
    exact ⟨(k : ℤ), by exact_mod_cast hk⟩
  rcases opposite_parity hodd with ⟨⟨a, ha⟩, ⟨b, hb⟩⟩ | ⟨⟨a, ha⟩, ⟨b, hb⟩⟩
  · have h4 : (p : ℤ) % 4 = 1 := by
      rw [← hpAB, ha, hb]; ring_nf; omega
    omega
  · have h4 : (p : ℤ) % 4 = 1 := by
      rw [← hpAB, ha, hb]; ring_nf; omega
    omega

/-- Useful primes are at least 5, so they never divide 1, 2, or 3. -/
lemma useful_not_dvd_small (q : ℕ) [hq : Fact (Nat.Prime q)] (hq4 : q % 4 = 1)
    (c : ℤ) (hc0 : c ≠ 0) (hc3 : |c| ≤ 3) : ¬ (q : ℤ) ∣ c := by
  intro h
  have h5 : 5 ≤ q := by
    have := hq.out.two_le
    omega
  have habs : (q : ℤ) ∣ |c| := (dvd_abs _ _).mpr h
  have hle : (q : ℤ) ≤ |c| := Int.le_of_dvd (abs_pos.mpr hc0) habs
  have : (5 : ℤ) ≤ (q : ℤ) := by exact_mod_cast h5
  omega

/-- Two-term kill: c₁·q²·Im π⁴ = c₂·Im(π⁴χ⁴) is impossible when q ∤ c₂. -/
theorem twoterm_q_mixed
    (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (c1 c2 : ℤ) (hc2 : ¬ (q : ℤ) ∣ c2)
    (h : c1 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))
       = c2 * ((((⟨A, B⟩ : GaussianInt) ^ 4) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im)) :
    False := by
  set π : GaussianInt := ⟨A, B⟩ with hπdef
  set χ : GaussianInt := ⟨C, D⟩ with hχdef
  have hχprime : Prime χ := prime_pi q C D hqCD
  have hχnb : ¬ χ ∣ star χ := pi_not_dvd_star q hqodd C D hqCD
  have hχsπ : ¬ χ ∣ star π := by
    have := not_dvd_other q p (fun hh => hpq hh.symm) C D A (-B) hqCD
      (by rw [neg_pow]; ring_nf; linarith [hpAB])
    simpa [hπdef, Zsqrtd.star_mk] using this
  have hχχb : χ * star χ = ((q : ℤ) : GaussianInt) := by
    rw [hχdef, pi_mul_star, hqCD]
  have hQ2 : (((q : ℤ) ^ 2 : ℤ) : GaussianInt) = χ ^ 2 * (star χ) ^ 2 := by
    have hcast : (((q : ℤ) ^ 2 : ℤ) : GaussianInt) = ((q : ℤ) : GaussianInt) ^ 2 := by
      push_cast; ring
    rw [hcast, ← hχχb]; ring
  set G : GaussianInt := ((c2 : ℤ) : GaussianInt) * (π ^ 4 * χ ^ 4)
      - ((c1 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 4 with hGdef
  have h0 : G.im = 0 := by
    rw [hGdef]
    simp only [Zsqrtd.im_sub, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast,
      Zsqrtd.im_intCast]
    have h' := h
    simp only [Zsqrtd.im_mul, Zsqrtd.re_mul] at h'
    linear_combination -h'
  have hy : G = (((G.re : ℤ)) : GaussianInt) := by
    ext
    · simp
    · simp [h0]
  have hself : star G = G := by rw [hy, star_intCast]
  have hstarG : star G = ((c2 : ℤ) : GaussianInt) * ((star π) ^ 4 * (star χ) ^ 4)
      - ((c1 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4 := by
    rw [hGdef]
    simp only [star_sub, star_mul, star_pow, star_intCast]
    ring
  have hGsG : χ ∣ (G - star G) := by
    rw [hself, sub_self]; exact dvd_zero χ
  have hDpart : χ ∣ (((c2 : ℤ) : GaussianInt) * (π ^ 4 * χ ^ 4)
      - ((c1 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 4
      + ((c1 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4) := by
    rw [hQ2]
    exact ⟨((c2 : ℤ) : GaussianInt) * (π ^ 4 * χ ^ 3)
      - ((c1 : ℤ) : GaussianInt) * (χ * (star χ) ^ 2) * π ^ 4
      + ((c1 : ℤ) : GaussianInt) * (χ * (star χ) ^ 2) * (star π) ^ 4, by ring⟩
  have hrem : χ ∣ (((c2 : ℤ) : GaussianInt) * ((star π) ^ 4 * (star χ) ^ 4)) := by
    have heq : ((c2 : ℤ) : GaussianInt) * ((star π) ^ 4 * (star χ) ^ 4)
        = (((c2 : ℤ) : GaussianInt) * (π ^ 4 * χ ^ 4)
            - ((c1 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 4
            + ((c1 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4)
          - (G - star G) := by
      rw [hGdef, hstarG]; ring
    rw [heq]
    exact dvd_sub hDpart hGsG
  rcases hχprime.dvd_mul.mp hrem with h1 | h1
  · exact chi_not_dvd_intcast q C D hqCD c2 hc2 h1
  · rcases hχprime.dvd_mul.mp h1 with h2 | h2
    · exact hχsπ (hχprime.dvd_of_dvd_pow h2)
    · exact hχnb (hχprime.dvd_of_dvd_pow h2)

/-- Two-term kill, p-side mirror: c₁·p²·Im χ⁴ = c₂·Im(π⁴χ⁴) impossible when p ∤ c₂. -/
theorem twoterm_p_mixed
    (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (c1 c2 : ℤ) (hc2 : ¬ (p : ℤ) ∣ c2)
    (h : c1 * ((p : ℤ) ^ 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).im))
       = c2 * ((((⟨A, B⟩ : GaussianInt) ^ 4) * ((⟨C, D⟩ : GaussianInt) ^ 4)).im)) :
    False := by
  set π : GaussianInt := ⟨A, B⟩ with hπdef
  set χ : GaussianInt := ⟨C, D⟩ with hχdef
  have hπprime : Prime π := prime_pi p A B hpAB
  have hπnb : ¬ π ∣ star π := pi_not_dvd_star p hpodd A B hpAB
  have hπsχ : ¬ π ∣ star χ := by
    have := not_dvd_other p q hpq A B C (-D) hpAB
      (by rw [neg_pow]; ring_nf; linarith [hqCD])
    simpa [hχdef, Zsqrtd.star_mk] using this
  have hππb : π * star π = ((p : ℤ) : GaussianInt) := by
    rw [hπdef, pi_mul_star, hpAB]
  have hP2 : (((p : ℤ) ^ 2 : ℤ) : GaussianInt) = π ^ 2 * (star π) ^ 2 := by
    have hcast : (((p : ℤ) ^ 2 : ℤ) : GaussianInt) = ((p : ℤ) : GaussianInt) ^ 2 := by
      push_cast; ring
    rw [hcast, ← hππb]; ring
  set G : GaussianInt := ((c2 : ℤ) : GaussianInt) * (π ^ 4 * χ ^ 4)
      - ((c1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * χ ^ 4 with hGdef
  have h0 : G.im = 0 := by
    rw [hGdef]
    simp only [Zsqrtd.im_sub, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast,
      Zsqrtd.im_intCast]
    have h' := h
    simp only [Zsqrtd.im_mul, Zsqrtd.re_mul] at h'
    linear_combination -h'
  have hy : G = (((G.re : ℤ)) : GaussianInt) := by
    ext
    · simp
    · simp [h0]
  have hself : star G = G := by rw [hy, star_intCast]
  have hstarG : star G = ((c2 : ℤ) : GaussianInt) * ((star π) ^ 4 * (star χ) ^ 4)
      - ((c1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star χ) ^ 4 := by
    rw [hGdef]
    simp only [star_sub, star_mul, star_pow, star_intCast]
    ring
  have hGsG : π ∣ (G - star G) := by
    rw [hself, sub_self]; exact dvd_zero π
  have hDpart : π ∣ (((c2 : ℤ) : GaussianInt) * (π ^ 4 * χ ^ 4)
      - ((c1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * χ ^ 4
      + ((c1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star χ) ^ 4) := by
    rw [hP2]
    exact ⟨((c2 : ℤ) : GaussianInt) * (π ^ 3 * χ ^ 4)
      - ((c1 : ℤ) : GaussianInt) * (π * (star π) ^ 2) * χ ^ 4
      + ((c1 : ℤ) : GaussianInt) * (π * (star π) ^ 2) * (star χ) ^ 4, by ring⟩
  have hrem : π ∣ (((c2 : ℤ) : GaussianInt) * ((star π) ^ 4 * (star χ) ^ 4)) := by
    have heq : ((c2 : ℤ) : GaussianInt) * ((star π) ^ 4 * (star χ) ^ 4)
        = (((c2 : ℤ) : GaussianInt) * (π ^ 4 * χ ^ 4)
            - ((c1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * χ ^ 4
            + ((c1 : ℤ) : GaussianInt) * (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star χ) ^ 4)
          - (G - star G) := by
      rw [hGdef, hstarG]; ring
    rw [heq]
    exact dvd_sub hDpart hGsG
  rcases hπprime.dvd_mul.mp hrem with h1 | h1
  · exact chi_not_dvd_intcast p A B hpAB c2 hc2 h1
  · rcases hπprime.dvd_mul.mp h1 with h2 | h2
    · exact hπnb (hπprime.dvd_of_dvd_pow h2)
    · exact hπsχ (hπprime.dvd_of_dvd_pow h2)

/-- Two-term kill: c₁·q²·Im π⁴ = c₂·p²·Im χ⁴ impossible when q ∤ c₂. -/
theorem twoterm_qI_pY
    (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (c1 c2 : ℤ) (hc2 : ¬ (q : ℤ) ∣ c2)
    (h : c1 * ((q : ℤ) ^ 2 * (((⟨A, B⟩ : GaussianInt) ^ 4).im))
       = c2 * ((p : ℤ) ^ 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).im))) :
    False := by
  have hqP : Prime (q : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hq.out
  have hdvd : (q : ℤ) ∣ c2 * ((p : ℤ) ^ 2 * (((⟨C, D⟩ : GaussianInt) ^ 4).im)) :=
    ⟨c1 * (q : ℤ) * (((⟨A, B⟩ : GaussianInt) ^ 4).im), by linear_combination -h⟩
  rcases hqP.dvd_mul.mp hdvd with h1 | h1
  · exact hc2 h1
  · rcases hqP.dvd_mul.mp h1 with h2 | h2
    · have hqp : (q : ℤ) ∣ (p : ℤ) := hqP.dvd_of_dvd_pow h2
      have : q ∣ p := by exact_mod_cast hqp
      exact hpq ((Nat.prime_dvd_prime_iff_eq hq.out hp.out).mp this).symm
    · exact (p_not_dvd_re4_im4 q hqodd C D hqCD).2 h2

/-- Generalized two-term kill, χ-regroup side: for ANY Gaussian z with
χ ∤ z̄, the relation c₁·q^{2(t+1)}·Im z = c₂·Im(z·χ⁴) is impossible
when q ∤ c₂. Subsumes the π⁴ version and covers all π-power classes. -/
theorem twoterm_q_gen
    (q : ℕ) [hq : Fact (Nat.Prime q)] (hqodd : q % 2 = 1)
    (C D : ℤ) (hqCD : C ^ 2 + D ^ 2 = q)
    (z : GaussianInt) (t : ℕ) (c1 c2 : ℤ) (hc2 : ¬ (q : ℤ) ∣ c2)
    (hzs : ¬ (⟨C, D⟩ : GaussianInt) ∣ star z)
    (h : c1 * ((q : ℤ) ^ (2 * (t + 1)) * z.im)
       = c2 * ((z * ((⟨C, D⟩ : GaussianInt) ^ 4)).im)) : False := by
  set χ : GaussianInt := ⟨C, D⟩ with hχdef
  have hχprime : Prime χ := prime_pi q C D hqCD
  have hχnb : ¬ χ ∣ star χ := pi_not_dvd_star q hqodd C D hqCD
  have hχχb : χ * star χ = ((q : ℤ) : GaussianInt) := by
    rw [hχdef, pi_mul_star, hqCD]
  have hQt : ((((q : ℤ) ^ (2 * (t + 1)) : ℤ)) : GaussianInt)
      = (χ * star χ) ^ (2 * (t + 1)) := by
    rw [hχχb]; push_cast; ring
  set G : GaussianInt := ((c2 : ℤ) : GaussianInt) * (z * χ ^ 4)
      - ((c1 : ℤ) : GaussianInt) * ((((q : ℤ) ^ (2 * (t + 1)) : ℤ)) : GaussianInt) * z
      with hGdef
  have h0 : G.im = 0 := by
    rw [hGdef]
    simp only [Zsqrtd.im_sub, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast,
      Zsqrtd.im_intCast]
    have h' := h
    simp only [Zsqrtd.im_mul, Zsqrtd.re_mul] at h'
    linear_combination -h'
  have hy : G = (((G.re : ℤ)) : GaussianInt) := by
    ext
    · simp
    · simp [h0]
  have hself : star G = G := by rw [hy, star_intCast]
  have hstarG : star G = ((c2 : ℤ) : GaussianInt) * (star z * (star χ) ^ 4)
      - ((c1 : ℤ) : GaussianInt) * ((((q : ℤ) ^ (2 * (t + 1)) : ℤ)) : GaussianInt)
        * star z := by
    rw [hGdef]
    simp only [star_sub, star_mul, star_pow, star_intCast]
    ring
  have hGsG : χ ∣ (G - star G) := by
    rw [hself, sub_self]; exact dvd_zero χ
  have hDpart : χ ∣ (((c2 : ℤ) : GaussianInt) * (z * χ ^ 4)
      - ((c1 : ℤ) : GaussianInt) * ((((q : ℤ) ^ (2 * (t + 1)) : ℤ)) : GaussianInt) * z
      + ((c1 : ℤ) : GaussianInt) * ((((q : ℤ) ^ (2 * (t + 1)) : ℤ)) : GaussianInt)
        * star z) := by
    rw [hQt]
    refine dvd_add (dvd_sub ⟨((c2 : ℤ) : GaussianInt) * (z * χ ^ 3), by ring⟩ ?_) ?_
    · exact ⟨((c1 : ℤ) : GaussianInt) * (star χ * (χ * star χ) ^ (2 * t + 1)) * z, by ring⟩
    · exact ⟨((c1 : ℤ) : GaussianInt) * (star χ * (χ * star χ) ^ (2 * t + 1)) * star z,
        by ring⟩
  have hrem : χ ∣ (((c2 : ℤ) : GaussianInt) * (star z * (star χ) ^ 4)) := by
    have heq : ((c2 : ℤ) : GaussianInt) * (star z * (star χ) ^ 4)
        = (((c2 : ℤ) : GaussianInt) * (z * χ ^ 4)
            - ((c1 : ℤ) : GaussianInt) * ((((q : ℤ) ^ (2 * (t + 1)) : ℤ)) : GaussianInt) * z
            + ((c1 : ℤ) : GaussianInt) * ((((q : ℤ) ^ (2 * (t + 1)) : ℤ)) : GaussianInt)
              * star z)
          - (G - star G) := by
      rw [hGdef, hstarG]; ring
    rw [heq]
    exact dvd_sub hDpart hGsG
  rcases hχprime.dvd_mul.mp hrem with h1 | h1
  · exact chi_not_dvd_intcast q C D hqCD c2 hc2 h1
  · rcases hχprime.dvd_mul.mp h1 with h2 | h2
    · exact hzs h2
    · exact hχnb (hχprime.dvd_of_dvd_pow h2)

/-- Generalized two-term kill, π-regroup side: for a π-divisible u with
π ∤ ū and any w with π ∤ w̄, the relation
c₁·p^{2(t+1)}·Im w = c₂·Im(u·w) is impossible when p ∤ c₂. -/
theorem twoterm_p_gen
    (p : ℕ) [hp : Fact (Nat.Prime p)] (hpodd : p % 2 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p)
    (u w : GaussianInt) (t : ℕ) (c1 c2 : ℤ) (hc2 : ¬ (p : ℤ) ∣ c2)
    (hu : (⟨A, B⟩ : GaussianInt) ∣ u)
    (hus : ¬ (⟨A, B⟩ : GaussianInt) ∣ star u)
    (hws : ¬ (⟨A, B⟩ : GaussianInt) ∣ star w)
    (h : c1 * ((p : ℤ) ^ (2 * (t + 1)) * w.im) = c2 * ((u * w).im)) : False := by
  set π : GaussianInt := ⟨A, B⟩ with hπdef
  have hπprime : Prime π := prime_pi p A B hpAB
  have hππb : π * star π = ((p : ℤ) : GaussianInt) := by
    rw [hπdef, pi_mul_star, hpAB]
  have hPt : ((((p : ℤ) ^ (2 * (t + 1)) : ℤ)) : GaussianInt)
      = (π * star π) ^ (2 * (t + 1)) := by
    rw [hππb]; push_cast; ring
  set G : GaussianInt := ((c2 : ℤ) : GaussianInt) * (u * w)
      - ((c1 : ℤ) : GaussianInt) * ((((p : ℤ) ^ (2 * (t + 1)) : ℤ)) : GaussianInt) * w
      with hGdef
  have h0 : G.im = 0 := by
    rw [hGdef]
    simp only [Zsqrtd.im_sub, Zsqrtd.im_mul, Zsqrtd.re_mul, Zsqrtd.re_intCast,
      Zsqrtd.im_intCast]
    have h' := h
    simp only [Zsqrtd.im_mul, Zsqrtd.re_mul] at h'
    linear_combination -h'
  have hy : G = (((G.re : ℤ)) : GaussianInt) := by
    ext
    · simp
    · simp [h0]
  have hself : star G = G := by rw [hy, star_intCast]
  have hstarG : star G = ((c2 : ℤ) : GaussianInt) * (star u * star w)
      - ((c1 : ℤ) : GaussianInt) * ((((p : ℤ) ^ (2 * (t + 1)) : ℤ)) : GaussianInt)
        * star w := by
    rw [hGdef]
    simp only [star_sub, star_mul, star_pow, star_intCast]
    ring
  have hGsG : π ∣ (G - star G) := by
    rw [hself, sub_self]; exact dvd_zero π
  obtain ⟨u', hu'⟩ := hu
  have hDpart : π ∣ (((c2 : ℤ) : GaussianInt) * (u * w)
      - ((c1 : ℤ) : GaussianInt) * ((((p : ℤ) ^ (2 * (t + 1)) : ℤ)) : GaussianInt) * w
      + ((c1 : ℤ) : GaussianInt) * ((((p : ℤ) ^ (2 * (t + 1)) : ℤ)) : GaussianInt)
        * star w) := by
    rw [hPt, hu']
    refine dvd_add (dvd_sub ⟨((c2 : ℤ) : GaussianInt) * (u' * w), by ring⟩ ?_) ?_
    · exact ⟨((c1 : ℤ) : GaussianInt) * (star π * (π * star π) ^ (2 * t + 1)) * w, by ring⟩
    · exact ⟨((c1 : ℤ) : GaussianInt) * (star π * (π * star π) ^ (2 * t + 1)) * star w,
        by ring⟩
  have hrem : π ∣ (((c2 : ℤ) : GaussianInt) * (star u * star w)) := by
    have heq : ((c2 : ℤ) : GaussianInt) * (star u * star w)
        = (((c2 : ℤ) : GaussianInt) * (u * w)
            - ((c1 : ℤ) : GaussianInt) * ((((p : ℤ) ^ (2 * (t + 1)) : ℤ)) : GaussianInt) * w
            + ((c1 : ℤ) : GaussianInt) * ((((p : ℤ) ^ (2 * (t + 1)) : ℤ)) : GaussianInt)
              * star w)
          - (G - star G) := by
      rw [hGdef, hstarG]; ring
    rw [heq]
    exact dvd_sub hDpart hGsG
  rcases hπprime.dvd_mul.mp hrem with h1 | h1
  · exact chi_not_dvd_intcast p A B hpAB c2 hc2 h1
  · rcases hπprime.dvd_mul.mp h1 with h2 | h2
    · exact hus h2
    · exact hws h2
