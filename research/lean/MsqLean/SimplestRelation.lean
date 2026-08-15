/-
End-to-end machine-checked kill of one residual (2,2) relation — the
existence proof that the double-pinch certificates formalize.

The relation is Im G = 0 for
  G = −p²·π⁴·(star χ)⁸ − q²·π⁸·(star χ)⁴ − π⁸·(star χ)⁸ ,
π, χ the Gaussian representations of p, q.  We prove Im G ≠ 0:
Im G = 0 makes G self-conjugate; π divides G (every term), hence π
divides star G, and stripping π-units leaves π ∣ 2·Re(χ²), so
p ∣ C²−D²; symmetrically q ∣ A²−B²; the strict two-sided pinch
(|C²−D²| < q, |A²−B²| < p, both nonzero) is absurd for p ≠ q.
-/
import MsqLean.PinchHelpers

open Zsqrtd

variable (p q : ℕ)

lemma pi_mul_star (a b : ℤ) :
    (⟨a, b⟩ : GaussianInt) * star ⟨a, b⟩ = ((a ^ 2 + b ^ 2 : ℤ) : GaussianInt) := by
  ext
  · simp only [Zsqrtd.re_mul, Zsqrtd.re_star, Zsqrtd.im_star, Zsqrtd.re_intCast]; ring
  · simp only [Zsqrtd.im_mul, Zsqrtd.re_star, Zsqrtd.im_star, Zsqrtd.im_intCast]; ring

lemma prime_pi (p : ℕ) [hp : Fact (Nat.Prime p)] (a b : ℤ)
    (hab : a ^ 2 + b ^ 2 = p) : Prime (⟨a, b⟩ : GaussianInt) := by
  have hnorm : (⟨a, b⟩ : GaussianInt).norm = (p : ℤ) := by
    have : (⟨a, b⟩ : GaussianInt).norm = a * a + b * b := by simp [Zsqrtd.norm]
    rw [this]; nlinarith [hab]
  have hirr : Irreducible (⟨a, b⟩ : GaussianInt) := by
    constructor
    · intro hu
      have h1 : (⟨a, b⟩ : GaussianInt).norm.natAbs = 1 := Zsqrtd.norm_eq_one_iff.mpr hu
      rw [hnorm] at h1
      have := hp.out.two_le
      simp [Int.natAbs_natCast] at h1
      omega
    · intro x y hxy
      have hn : x.norm * y.norm = (p : ℤ) := by
        rw [← Zsqrtd.norm_mul, ← hxy, hnorm]
      have hxnn : 0 ≤ x.norm := Zsqrtd.norm_nonneg (by norm_num) x
      have hynn : 0 ≤ y.norm := Zsqrtd.norm_nonneg (by norm_num) y
      have hnat : x.norm.natAbs * y.norm.natAbs = p := by
        have := congrArg Int.natAbs hn
        rwa [Int.natAbs_mul, Int.natAbs_natCast] at this
      rcases (Nat.Prime.eq_one_or_self_of_dvd hp.out x.norm.natAbs
          ⟨y.norm.natAbs, hnat.symm⟩) with h1 | hpp
      · exact Or.inl (Zsqrtd.norm_eq_one_iff.mp h1)
      · right
        have hy1 : y.norm.natAbs = 1 := by
          have hppos := hp.out.pos
          have := hnat
          rw [hpp] at this
          have hyle : p * y.norm.natAbs = p * 1 := by omega
          exact Nat.eq_of_mul_eq_mul_left hppos hyle
        exact Zsqrtd.norm_eq_one_iff.mp hy1
  exact hirr.prime

lemma pi_not_dvd_star (p : ℕ) [hp : Fact (Nat.Prime p)]
    (hodd : p % 2 = 1) (a b : ℤ) (hab : a ^ 2 + b ^ 2 = p) :
    ¬ (⟨a, b⟩ : GaussianInt) ∣ star ⟨a, b⟩ := by
  intro h
  -- π ∣ star π and π ∣ π gives π ∣ 2a and π ∣ 2b, hence p ∣ 2a, 2b, so
  -- p ∣ a and b (p odd), contradicting a² + b² = p.
  have h2a : (⟨a, b⟩ : GaussianInt) ∣ ((2 * a : ℤ) : GaussianInt) := by
    have : ((2 * a : ℤ) : GaussianInt) = ⟨a, b⟩ + star ⟨a, b⟩ := by
      ext
      · simp; ring
      · simp
    rw [this]; exact dvd_add dvd_rfl h
  have hpa := int_dvd_of_gaussian_dvd p a b hab (2 * a) h2a
  have h2b : (⟨a, b⟩ : GaussianInt) ∣ ((2 * b : ℤ) : GaussianInt) := by
    have key : ((2 * b : ℤ) : GaussianInt)
        = ⟨0, -1⟩ * (⟨a, b⟩ - star ⟨a, b⟩) := by
      ext
      · simp only [Zsqrtd.re_intCast, Zsqrtd.re_mul, Zsqrtd.im_mul,
          Zsqrtd.re_sub, Zsqrtd.im_sub, Zsqrtd.re_star, Zsqrtd.im_star]
        ring
      · simp only [Zsqrtd.im_intCast, Zsqrtd.re_mul, Zsqrtd.im_mul,
          Zsqrtd.re_sub, Zsqrtd.im_sub, Zsqrtd.re_star, Zsqrtd.im_star]
        ring
    rw [key]
    exact Dvd.dvd.mul_left (dvd_sub dvd_rfl h) _
  have hpb := int_dvd_of_gaussian_dvd p a b hab (2 * b) h2b
  -- p odd: p ∣ 2a → p ∣ a
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  have hp2 : ¬ (p : ℤ) ∣ 2 := by
    intro hd
    have hle := Int.le_of_dvd (by norm_num) hd
    have h2 := hp.out.two_le
    have h3 : 3 ≤ p := by omega
    have h4 : (3 : ℤ) ≤ (p : ℤ) := by exact_mod_cast h3
    omega
  have hpa' : (p : ℤ) ∣ a := (hpP.dvd_mul.mp hpa).resolve_left hp2
  have hpb' : (p : ℤ) ∣ b := (hpP.dvd_mul.mp hpb).resolve_left hp2
  obtain ⟨a', rfl⟩ := hpa'; obtain ⟨b', rfl⟩ := hpb'
  have h1 : (p : ℤ) * (p * (a' ^ 2 + b' ^ 2)) = p := by
    have hr : (p : ℤ) * (p * (a' ^ 2 + b' ^ 2)) = (p*a')^2 + (p*b')^2 := by ring
    rw [hr, hab]
  have hppos : (0 : ℤ) < p := by exact_mod_cast hp.out.pos
  have hfac : (p : ℤ) * (a' ^ 2 + b' ^ 2) = 1 :=
    mul_left_cancel₀ (by positivity) (by rw [mul_one]; exact h1)
  have hs0 : 0 ≤ a' ^ 2 + b' ^ 2 := by positivity
  have hp1 : (1 : ℤ) < p := by exact_mod_cast hp.out.one_lt
  rcases lt_or_eq_of_le hs0 with hpos | hzero
  · nlinarith
  · rw [← hzero] at hfac; simp at hfac

lemma coord_ne_zero (p : ℕ) [hp : Fact (Nat.Prime p)]
    (A B : ℤ) (hab : A ^ 2 + B ^ 2 = p) : A ≠ 0 ∧ B ≠ 0 := by
  constructor
  · rintro rfl
    have hB : B ^ 2 = p := by linarith
    have : B.natAbs * B.natAbs = p := by
      have := congrArg Int.natAbs hB
      rwa [show (B^2).natAbs = B.natAbs * B.natAbs by
        rw [sq]; exact Int.natAbs_mul B B, Int.natAbs_natCast] at this
    rcases (Nat.Prime.eq_one_or_self_of_dvd hp.out B.natAbs ⟨B.natAbs, this.symm⟩) with h | h
    · rw [h] at this; simp at this
      have := hp.out.two_le; omega
    · rw [h] at this
      have := hp.out.one_lt; nlinarith
  · rintro rfl
    have hA : A ^ 2 = p := by linarith
    have : A.natAbs * A.natAbs = p := by
      have := congrArg Int.natAbs hA
      rwa [show (A^2).natAbs = A.natAbs * A.natAbs by
        rw [sq]; exact Int.natAbs_mul A A, Int.natAbs_natCast] at this
    rcases (Nat.Prime.eq_one_or_self_of_dvd hp.out A.natAbs ⟨A.natAbs, this.symm⟩) with h | h
    · rw [h] at this; simp at this
      have := hp.out.two_le; omega
    · rw [h] at this
      have := hp.out.one_lt; nlinarith

lemma diff_sq_lt (p : ℕ) [hp : Fact (Nat.Prime p)]
    (A B : ℤ) (hab : A ^ 2 + B ^ 2 = p) : |A ^ 2 - B ^ 2| < p := by
  obtain ⟨hA, hB⟩ := coord_ne_zero p A B hab
  have hA1 : 1 ≤ A ^ 2 := by
    have : A ^ 2 ≠ 0 := pow_ne_zero _ hA
    have : 0 ≤ A ^ 2 := sq_nonneg A
    omega
  have hB1 : 1 ≤ B ^ 2 := by
    have : B ^ 2 ≠ 0 := pow_ne_zero _ hB
    have : 0 ≤ B ^ 2 := sq_nonneg B
    omega
  rw [abs_lt]; constructor <;> omega

/-- Norm divisibility along Gaussian divisibility. -/
lemma norm_dvd_of_dvd {x y : GaussianInt} (h : x ∣ y) : x.norm ∣ y.norm := by
  obtain ⟨c, hc⟩ := h
  exact ⟨c.norm, by rw [hc, Zsqrtd.norm_mul]⟩

lemma norm_mk (a b : ℤ) : (⟨a, b⟩ : GaussianInt).norm = a ^ 2 + b ^ 2 := by
  have : (⟨a, b⟩ : GaussianInt).norm = a * a + b * b := by simp [Zsqrtd.norm]
  rw [this]; ring

lemma not_dvd_other (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpq : p ≠ q) (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :
    ¬ (⟨A, B⟩ : GaussianInt) ∣ (⟨C, D⟩ : GaussianInt) := by
  intro h
  have hnd := norm_dvd_of_dvd h
  rw [norm_mk, norm_mk, hpAB, hqCD] at hnd
  have hnat : p ∣ q := by exact_mod_cast hnd
  rcases (Nat.Prime.eq_one_or_self_of_dvd hq.out p hnat) with h1 | h1
  · have := hp.out.one_lt; omega
  · exact hpq h1

/-- **A residual (2,2) relation, machine-checked dead.**
For distinct odd primes p, q with Gaussian representations
π = A+Bi, χ = C+Di, the relation value
Im(−p²·π⁴·χ̄⁸ − q²·π⁸·χ̄⁴ − π⁸·χ̄⁸) is never zero. -/
theorem simplest_relation_nonzero
    (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :
    (-(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 4 * (star (⟨C, D⟩ : GaussianInt)) ^ 8
      - (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 8 * (star (⟨C, D⟩ : GaussianInt)) ^ 4
      - (⟨A, B⟩ : GaussianInt) ^ 8 * (star (⟨C, D⟩ : GaussianInt)) ^ 8).im ≠ 0 := by
  intro h0
  set π : GaussianInt := ⟨A, B⟩ with hπdef
  set χ : GaussianInt := ⟨C, D⟩ with hχdef
  set G : GaussianInt :=
    -(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 4 * (star χ) ^ 8
      - (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 8 * (star χ) ^ 4
      - π ^ 8 * (star χ) ^ 8 with hGdef
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
  have hπsχ : ¬ π ∣ star χ := by
    have := not_dvd_other p q hpq A B C (-D) hpAB (by linarith [hqCD, sq_abs D]; )
    simpa [hχdef, Zsqrtd.star_mk] using this
  have hχsπ : ¬ χ ∣ star π := by
    have := not_dvd_other q p (fun h => hpq h.symm) C D A (-B) hqCD
      (by rw [neg_pow]; ring_nf; linarith [hpAB])
    simpa [hπdef, Zsqrtd.star_mk] using this
  -- casts of p², q² as Gaussian products
  have hP2 : (((p : ℤ) ^ 2 : ℤ) : GaussianInt) = π ^ 2 * (star π) ^ 2 := by
    have hcast : (((p : ℤ) ^ 2 : ℤ) : GaussianInt) = ((p : ℤ) : GaussianInt) ^ 2 := by
      push_cast; ring
    rw [hcast, ← hππb]; ring
  have hQ2 : (((q : ℤ) ^ 2 : ℤ) : GaussianInt) = χ ^ 2 * (star χ) ^ 2 := by
    have hcast : (((q : ℤ) ^ 2 : ℤ) : GaussianInt) = ((q : ℤ) : GaussianInt) ^ 2 := by
      push_cast; ring
    rw [hcast, ← hχχb]; ring
  -- π divides G (every term carries π⁴)
  have hπG : π ∣ G := by
    rw [hGdef]
    have h4 : π ∣ π ^ 4 := dvd_pow_self π (by norm_num)
    have h8 : π ∣ π ^ 8 := dvd_pow_self π (by norm_num)
    exact dvd_sub (dvd_sub ((h4.mul_left _).mul_right _) ((h8.mul_left _).mul_right _))
      (h8.mul_right _)
  -- explicit star G
  have hstarG : star G =
      -(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ 8
        - (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 8 * χ ^ 4
        - (star π) ^ 8 * χ ^ 8 := by
    rw [hGdef]
    simp only [star_sub, star_neg, star_mul, star_pow, star_star, star_intCast]
    ring
  have hπsG : π ∣ (-(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ 8
      - (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 8 * χ ^ 4
      - (star π) ^ 8 * χ ^ 8) := by
    rw [← hstarG, hself]; exact hπG
  -- subtract the π-divisible p²-term
  have hπrest : π ∣ ((((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 8 * χ ^ 4
      + (star π) ^ 8 * χ ^ 8) := by
    have hterm : π ∣ (-(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ 8) := by
      rw [hP2]
      have h2 : π ∣ π ^ 2 := dvd_pow_self π (by norm_num)
      have h3 : π ∣ π ^ 2 * (star π) ^ 2 := h2.mul_right _
      exact ((dvd_neg.mpr h3).mul_right _).mul_right _
    have := dvd_sub hterm hπsG
    have heq : -(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ 8
        - (-(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ 8
          - (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 8 * χ ^ 4
          - (star π) ^ 8 * χ ^ 8)
        = (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 8 * χ ^ 4
          + (star π) ^ 8 * χ ^ 8 := by ring
    rwa [heq] at this
  -- factor and strip units
  have hfact : ((((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 8 * χ ^ 4
      + (star π) ^ 8 * χ ^ 8)
      = (star π) ^ 8 * χ ^ 4 * ((((q : ℤ) ^ 2 : ℤ) : GaussianInt) + χ ^ 4) := by ring
  have hπfac : π ∣ (star π) ^ 8 * χ ^ 4 * ((((q : ℤ) ^ 2 : ℤ) : GaussianInt) + χ ^ 4) := by
    rw [← hfact]; exact hπrest
  have hπq4 : π ∣ ((((q : ℤ) ^ 2 : ℤ) : GaussianInt) + χ ^ 4) := by
    rcases hπprime.dvd_mul.mp hπfac with h1 | h1
    · rcases hπprime.dvd_mul.mp h1 with h2 | h2
      · exact absurd (hπprime.dvd_of_dvd_pow h2) hπnb
      · exact absurd (hπprime.dvd_of_dvd_pow h2) hπχ
    · exact h1
  have hsplit : ((((q : ℤ) ^ 2 : ℤ) : GaussianInt) + χ ^ 4)
      = χ ^ 2 * ((star χ) ^ 2 + χ ^ 2) := by rw [hQ2]; ring
  have hcore : (star χ) ^ 2 + χ ^ 2 = ((2 * (C ^ 2 - D ^ 2) : ℤ) : GaussianInt) := by
    rw [hχdef]
    ext
    · simp [Zsqrtd.star_mk, sq]; ring
    · simp [Zsqrtd.star_mk, sq]; ring
  have hπcore : π ∣ ((2 * (C ^ 2 - D ^ 2) : ℤ) : GaussianInt) := by
    rw [← hcore]
    rcases hπprime.dvd_mul.mp (hsplit ▸ hπq4) with h1 | h1
    · exact absurd (hπprime.dvd_of_dvd_pow h1) hπχ
    · exact h1
  have hpdvd2 : (p : ℤ) ∣ 2 * (C ^ 2 - D ^ 2) :=
    int_dvd_of_gaussian_dvd p A B hpAB _ hπcore
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  have hp2' : ¬ (p : ℤ) ∣ 2 := by
    intro hd
    have hle := Int.le_of_dvd (by norm_num) hd
    have := hp.out.two_le
    have h3 : 3 ≤ p := by omega
    have h4 : (3 : ℤ) ≤ (p : ℤ) := by exact_mod_cast h3
    omega
  have hpCD : (p : ℤ) ∣ (C ^ 2 - D ^ 2) := (hpP.dvd_mul.mp hpdvd2).resolve_left hp2'
  -- symmetric chain: χ ∣ (2(A²−B²))
  have hχsG : χ ∣ star G := by
    rw [hstarG]
    have h4 : χ ∣ χ ^ 4 := dvd_pow_self χ (by norm_num)
    have h8 : χ ∣ χ ^ 8 := dvd_pow_self χ (by norm_num)
    exact dvd_sub (dvd_sub (h8.mul_left _) (h4.mul_left _)) (h8.mul_left _)
  have hχG : χ ∣ G := hself ▸ hχsG
  have hχrest : χ ∣ ((((p : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 4 * (star χ) ^ 8
      + π ^ 8 * (star χ) ^ 8) := by
    have hterm : χ ∣ (-(((q : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 8 * (star χ) ^ 4) := by
      rw [hQ2]
      have h2 : χ ∣ χ ^ 2 := dvd_pow_self χ (by norm_num)
      have h3 : χ ∣ χ ^ 2 * (star χ) ^ 2 := h2.mul_right _
      exact ((dvd_neg.mpr h3).mul_right _).mul_right _
    have hG' : χ ∣ (-(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 4 * (star χ) ^ 8
        - (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 8 * (star χ) ^ 4
        - π ^ 8 * (star χ) ^ 8) := by rw [← hGdef]; exact hχG
    have := dvd_sub hterm hG'
    have heq : -(((q : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 8 * (star χ) ^ 4
        - (-(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 4 * (star χ) ^ 8
          - (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 8 * (star χ) ^ 4
          - π ^ 8 * (star χ) ^ 8)
        = (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 4 * (star χ) ^ 8
          + π ^ 8 * (star χ) ^ 8 := by ring
    rwa [heq] at this
  have hfact2 : ((((p : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 4 * (star χ) ^ 8
      + π ^ 8 * (star χ) ^ 8)
      = π ^ 4 * (star χ) ^ 8 * ((((p : ℤ) ^ 2 : ℤ) : GaussianInt) + π ^ 4) := by ring
  have hχp4 : χ ∣ ((((p : ℤ) ^ 2 : ℤ) : GaussianInt) + π ^ 4) := by
    rcases hχprime.dvd_mul.mp (hfact2 ▸ hχrest) with h1 | h1
    · rcases hχprime.dvd_mul.mp h1 with h2 | h2
      · exact absurd (hχprime.dvd_of_dvd_pow h2) hχπ
      · exact absurd (hχprime.dvd_of_dvd_pow h2) hχnb
    · exact h1
  have hsplit2 : ((((p : ℤ) ^ 2 : ℤ) : GaussianInt) + π ^ 4)
      = π ^ 2 * ((star π) ^ 2 + π ^ 2) := by rw [hP2]; ring
  have hcore2 : (star π) ^ 2 + π ^ 2 = ((2 * (A ^ 2 - B ^ 2) : ℤ) : GaussianInt) := by
    rw [hπdef]
    ext
    · simp [Zsqrtd.star_mk, sq]; ring
    · simp [Zsqrtd.star_mk, sq]; ring
  have hχcore : χ ∣ ((2 * (A ^ 2 - B ^ 2) : ℤ) : GaussianInt) := by
    rw [← hcore2]
    rcases hχprime.dvd_mul.mp (hsplit2 ▸ hχp4) with h1 | h1
    · exact absurd (hχprime.dvd_of_dvd_pow h1) hχπ
    · exact h1
  have hqdvd2 : (q : ℤ) ∣ 2 * (A ^ 2 - B ^ 2) :=
    int_dvd_of_gaussian_dvd q C D hqCD _ hχcore
  have hqP : Prime (q : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hq.out
  have hq2' : ¬ (q : ℤ) ∣ 2 := by
    intro hd
    have hle := Int.le_of_dvd (by norm_num) hd
    have := hq.out.two_le
    have h3 : 3 ≤ q := by omega
    have h4 : (3 : ℤ) ≤ (q : ℤ) := by exact_mod_cast h3
    omega
  have hqAB : (q : ℤ) ∣ (A ^ 2 - B ^ 2) := (hqP.dvd_mul.mp hqdvd2).resolve_left hq2'
  -- two-sided strict pinch
  have hCD0 : C ^ 2 - D ^ 2 ≠ 0 := sq_ne_sq_of_odd_prime q hqodd C D hqCD
  have hAB0 : A ^ 2 - B ^ 2 ≠ 0 := sq_ne_sq_of_odd_prime p hpodd A B hpAB
  have hCDlt : |C ^ 2 - D ^ 2| < q := diff_sq_lt q C D hqCD
  have hABlt : |A ^ 2 - B ^ 2| < p := diff_sq_lt p A B hpAB
  rcases Nat.lt_trichotomy p q with hlt | heq | hgt
  · -- p < q: pinch on q ∣ A²−B², |A²−B²| < p < q
    have hpq' : ((p : ℤ)) < (q : ℤ) := by exact_mod_cast hlt
    exact strict_pinch_int (q : ℤ) (A ^ 2 - B ^ 2) (by exact_mod_cast Int.natCast_pos.mpr hq.out.pos) hqAB hAB0 (by omega)
  · exact hpq heq
  · have hqp' : ((q : ℤ)) < (p : ℤ) := by exact_mod_cast hgt
    exact strict_pinch_int (p : ℤ) (C ^ 2 - D ^ 2) (by exact_mod_cast Int.natCast_pos.mpr hp.out.pos) hpCD hCD0 (by omega)

/-- **Second machine-checked relation (Im-core variant).**
Same G-shape with the third sign flipped:
Im(−p²·π⁴·χ̄⁸ − q²·π⁸·χ̄⁴ + π⁸·χ̄⁸) is never zero: the extraction now
yields π ∣ (q² − χ⁴) = χ²(χ̄² − χ²) = −χ²·⟨0, 4CD⟩, so p ∣ 4CD, hence
p ∣ C or p ∣ D with C², D² < q — pinched; symmetrically q ∣ 4AB. -/
theorem second_relation_nonzero
    (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :
    (-(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 4 * (star (⟨C, D⟩ : GaussianInt)) ^ 8
      - (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 8 * (star (⟨C, D⟩ : GaussianInt)) ^ 4
      + (⟨A, B⟩ : GaussianInt) ^ 8 * (star (⟨C, D⟩ : GaussianInt)) ^ 8).im ≠ 0 := by
  intro h0
  set π : GaussianInt := ⟨A, B⟩ with hπdef
  set χ : GaussianInt := ⟨C, D⟩ with hχdef
  set G : GaussianInt :=
    -(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 4 * (star χ) ^ 8
      - (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 8 * (star χ) ^ 4
      + π ^ 8 * (star χ) ^ 8 with hGdef
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
  have hπG : π ∣ G := by
    rw [hGdef]
    have h4 : π ∣ π ^ 4 := dvd_pow_self π (by norm_num)
    have h8 : π ∣ π ^ 8 := dvd_pow_self π (by norm_num)
    exact dvd_add (dvd_sub ((h4.mul_left _).mul_right _) ((h8.mul_left _).mul_right _))
      (h8.mul_right _)
  have hstarG : star G =
      -(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ 8
        - (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 8 * χ ^ 4
        + (star π) ^ 8 * χ ^ 8 := by
    rw [hGdef]
    simp only [star_add, star_sub, star_neg, star_mul, star_pow, star_star, star_intCast]
    ring
  have hπsG : π ∣ (-(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ 8
      - (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 8 * χ ^ 4
      + (star π) ^ 8 * χ ^ 8) := by
    rw [← hstarG, hself]; exact hπG
  have hπrest : π ∣ ((((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 8 * χ ^ 4
      - (star π) ^ 8 * χ ^ 8) := by
    have hterm : π ∣ (-(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ 8) := by
      rw [hP2]
      have h2 : π ∣ π ^ 2 := dvd_pow_self π (by norm_num)
      have h3 : π ∣ π ^ 2 * (star π) ^ 2 := h2.mul_right _
      exact ((dvd_neg.mpr h3).mul_right _).mul_right _
    have := dvd_sub hterm hπsG
    have heq : -(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ 8
        - (-(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ 8
          - (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 8 * χ ^ 4
          + (star π) ^ 8 * χ ^ 8)
        = (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 8 * χ ^ 4
          - (star π) ^ 8 * χ ^ 8 := by ring
    rwa [heq] at this
  have hfact : ((((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 8 * χ ^ 4
      - (star π) ^ 8 * χ ^ 8)
      = (star π) ^ 8 * χ ^ 4 * ((((q : ℤ) ^ 2 : ℤ) : GaussianInt) - χ ^ 4) := by ring
  have hπq4 : π ∣ ((((q : ℤ) ^ 2 : ℤ) : GaussianInt) - χ ^ 4) := by
    rcases hπprime.dvd_mul.mp (hfact ▸ hπrest) with h1 | h1
    · rcases hπprime.dvd_mul.mp h1 with h2 | h2
      · exact absurd (hπprime.dvd_of_dvd_pow h2) hπnb
      · exact absurd (hπprime.dvd_of_dvd_pow h2) hπχ
    · exact h1
  have hsplit : ((((q : ℤ) ^ 2 : ℤ) : GaussianInt) - χ ^ 4)
      = -(χ ^ 2 * (χ ^ 2 - (star χ) ^ 2)) := by rw [hQ2]; ring
  have hcoreχ : χ ^ 2 - (star χ) ^ 2 = (⟨0, 4 * C * D⟩ : GaussianInt) := by
    rw [hχdef]; exact im_core_eq C D
  have hπcore : π ∣ (⟨0, 4 * C * D⟩ : GaussianInt) := by
    rw [← hcoreχ]
    have hneg : π ∣ (χ ^ 2 * (χ ^ 2 - (star χ) ^ 2)) := by
      have := hsplit ▸ hπq4
      exact (dvd_neg.mp this)
    rcases hπprime.dvd_mul.mp hneg with h1 | h1
    · exact absurd (hπprime.dvd_of_dvd_pow h1) hπχ
    · exact h1
  have hpdvd : (p : ℤ) ∣ 4 * C * D :=
    int_dvd_of_gaussian_dvd_imag p A B hpAB _ hπcore
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  have hp2' : ¬ (p : ℤ) ∣ 4 := by
    intro hd
    have hn : p ∣ 4 := by
      have : ((4 : ℕ) : ℤ) = (4 : ℤ) := by norm_num
      exact_mod_cast hd
    have h2 := hp.out.two_le
    have hle : p ≤ 4 := Nat.le_of_dvd (by norm_num) hn
    interval_cases p <;> omega
  have hpCD : (p : ℤ) ∣ C ∨ (p : ℤ) ∣ D := by
    rcases hpP.dvd_mul.mp hpdvd with h1 | h1
    · rcases hpP.dvd_mul.mp h1 with h2 | h2
      · exact absurd h2 hp2'
      · exact Or.inl h2
    · exact Or.inr h1
  -- symmetric chain: q ∣ A or q ∣ B
  have hχsG : χ ∣ star G := by
    rw [hstarG]
    have h4 : χ ∣ χ ^ 4 := dvd_pow_self χ (by norm_num)
    have h8 : χ ∣ χ ^ 8 := dvd_pow_self χ (by norm_num)
    exact dvd_add (dvd_sub (h8.mul_left _) (h4.mul_left _)) (h8.mul_left _)
  have hχG : χ ∣ G := hself ▸ hχsG
  have hχrest : χ ∣ ((((p : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 4 * (star χ) ^ 8
      - π ^ 8 * (star χ) ^ 8) := by
    have hterm : χ ∣ (-(((q : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 8 * (star χ) ^ 4) := by
      rw [hQ2]
      have h2 : χ ∣ χ ^ 2 := dvd_pow_self χ (by norm_num)
      have h3 : χ ∣ χ ^ 2 * (star χ) ^ 2 := h2.mul_right _
      exact ((dvd_neg.mpr h3).mul_right _).mul_right _
    have hG' : χ ∣ (-(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 4 * (star χ) ^ 8
        - (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 8 * (star χ) ^ 4
        + π ^ 8 * (star χ) ^ 8) := by rw [← hGdef]; exact hχG
    have := dvd_sub hterm hG'
    have heq : -(((q : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 8 * (star χ) ^ 4
        - (-(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 4 * (star χ) ^ 8
          - (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 8 * (star χ) ^ 4
          + π ^ 8 * (star χ) ^ 8)
        = (((p : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 4 * (star χ) ^ 8
          - π ^ 8 * (star χ) ^ 8 := by ring
    rwa [heq] at this
  have hfact2 : ((((p : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 4 * (star χ) ^ 8
      - π ^ 8 * (star χ) ^ 8)
      = π ^ 4 * (star χ) ^ 8 * ((((p : ℤ) ^ 2 : ℤ) : GaussianInt) - π ^ 4) := by ring
  have hχp4 : χ ∣ ((((p : ℤ) ^ 2 : ℤ) : GaussianInt) - π ^ 4) := by
    rcases hχprime.dvd_mul.mp (hfact2 ▸ hχrest) with h1 | h1
    · rcases hχprime.dvd_mul.mp h1 with h2 | h2
      · exact absurd (hχprime.dvd_of_dvd_pow h2) hχπ
      · exact absurd (hχprime.dvd_of_dvd_pow h2) hχnb
    · exact h1
  have hsplit2 : ((((p : ℤ) ^ 2 : ℤ) : GaussianInt) - π ^ 4)
      = -(π ^ 2 * (π ^ 2 - (star π) ^ 2)) := by rw [hP2]; ring
  have hcoreπ : π ^ 2 - (star π) ^ 2 = (⟨0, 4 * A * B⟩ : GaussianInt) := by
    rw [hπdef]; exact im_core_eq A B
  have hχcore : χ ∣ (⟨0, 4 * A * B⟩ : GaussianInt) := by
    rw [← hcoreπ]
    have hneg : χ ∣ (π ^ 2 * (π ^ 2 - (star π) ^ 2)) := dvd_neg.mp (hsplit2 ▸ hχp4)
    rcases hχprime.dvd_mul.mp hneg with h1 | h1
    · exact absurd (hχprime.dvd_of_dvd_pow h1) hχπ
    · exact h1
  have hqdvd : (q : ℤ) ∣ 4 * A * B :=
    int_dvd_of_gaussian_dvd_imag q C D hqCD _ hχcore
  have hqP : Prime (q : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hq.out
  have hq2' : ¬ (q : ℤ) ∣ 4 := by
    intro hd
    have hn : q ∣ 4 := by
      have : ((4 : ℕ) : ℤ) = (4 : ℤ) := by norm_num
      exact_mod_cast hd
    have h2 := hq.out.two_le
    have hle : q ≤ 4 := Nat.le_of_dvd (by norm_num) hn
    interval_cases q <;> omega
  have hqAB : (q : ℤ) ∣ A ∨ (q : ℤ) ∣ B := by
    rcases hqP.dvd_mul.mp hqdvd with h1 | h1
    · rcases hqP.dvd_mul.mp h1 with h2 | h2
      · exact absurd h2 hq2'
      · exact Or.inl h2
    · exact Or.inr h1
  -- pinch: coordinates are strictly smaller than the OTHER prime once ordered
  obtain ⟨hA2, hB2⟩ := coord_sq_lt p A B hpAB
  obtain ⟨hC2, hD2⟩ := coord_sq_lt q C D hqCD
  obtain ⟨hAne, hBne⟩ := coord_ne_zero p A B hpAB
  obtain ⟨hCne, hDne⟩ := coord_ne_zero q C D hqCD
  rcases Nat.lt_trichotomy p q with hlt | heq | hgt
  · -- p < q: use q ∣ A or B, with A², B² < p ≤ q² but need |A| < q:
    -- A² < p < q so |A| < q since |A| ≤ A² for |A| ≥ 1
    have hq0 : (0 : ℤ) < (q : ℤ) := by exact_mod_cast hq.out.pos
    have hpq' : ((p : ℤ)) < (q : ℤ) := by exact_mod_cast hlt
    rcases hqAB with h | h
    · have hAabs : |A| < (q : ℤ) := by
        nlinarith [abs_nonneg A, sq_abs A, abs_pos.mpr hAne]
      exact strict_pinch_int (q : ℤ) A hq0 h hAne hAabs
    · have hBabs : |B| < (q : ℤ) := by
        nlinarith [abs_nonneg B, sq_abs B, abs_pos.mpr hBne]
      exact strict_pinch_int (q : ℤ) B hq0 h hBne hBabs
  · exact hpq heq
  · have hp0 : (0 : ℤ) < (p : ℤ) := by exact_mod_cast hp.out.pos
    have hqp' : ((q : ℤ)) < (p : ℤ) := by exact_mod_cast hgt
    rcases hpCD with h | h
    · have hCabs : |C| < (p : ℤ) := by
        nlinarith [abs_nonneg C, sq_abs C, abs_pos.mpr hCne]
      exact strict_pinch_int (p : ℤ) C hp0 h hCne hCabs
    · have hDabs : |D| < (p : ℤ) := by
        nlinarith [abs_nonneg D, sq_abs D, abs_pos.mpr hDne]
      exact strict_pinch_int (p : ℤ) D hp0 h hDne hDabs

/-- **Third relation (hybrid: Re-core on the π-side, Im-core on the χ-side).**
Im(−p²·π⁴·χ̄⁸ + q²·π⁸·χ̄⁴ + π⁸·χ̄⁸) is never zero. -/
theorem third_relation_nonzero
    (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :
    (-(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 4 * (star (⟨C, D⟩ : GaussianInt)) ^ 8
      + (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 8 * (star (⟨C, D⟩ : GaussianInt)) ^ 4
      + (⟨A, B⟩ : GaussianInt) ^ 8 * (star (⟨C, D⟩ : GaussianInt)) ^ 8).im ≠ 0 := by
  intro h0
  set π : GaussianInt := ⟨A, B⟩ with hπdef
  set χ : GaussianInt := ⟨C, D⟩ with hχdef
  set G : GaussianInt :=
    -(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 4 * (star χ) ^ 8
      + (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 8 * (star χ) ^ 4
      + π ^ 8 * (star χ) ^ 8 with hGdef
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
  have hπG : π ∣ G := by
    rw [hGdef]
    have h4 : π ∣ π ^ 4 := dvd_pow_self π (by norm_num)
    have h8 : π ∣ π ^ 8 := dvd_pow_self π (by norm_num)
    exact dvd_add (dvd_add ((h4.mul_left _).mul_right _) ((h8.mul_left _).mul_right _))
      (h8.mul_right _)
  have hstarG : star G =
      -(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ 8
        + (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 8 * χ ^ 4
        + (star π) ^ 8 * χ ^ 8 := by
    rw [hGdef]
    simp only [star_add, star_neg, star_mul, star_pow, star_star, star_intCast]
    ring
  have hπsG : π ∣ (-(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ 8
      + (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 8 * χ ^ 4
      + (star π) ^ 8 * χ ^ 8) := by
    rw [← hstarG, hself]; exact hπG
  have hπrest : π ∣ ((((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 8 * χ ^ 4
      + (star π) ^ 8 * χ ^ 8) := by
    have hterm : π ∣ (-(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ 8) := by
      rw [hP2]
      have h2 : π ∣ π ^ 2 := dvd_pow_self π (by norm_num)
      have h3 : π ∣ π ^ 2 * (star π) ^ 2 := h2.mul_right _
      exact ((dvd_neg.mpr h3).mul_right _).mul_right _
    have := dvd_sub hπsG hterm
    have heq : (-(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ 8
          + (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 8 * χ ^ 4
          + (star π) ^ 8 * χ ^ 8)
        - (-(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ 8)
        = (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 8 * χ ^ 4
          + (star π) ^ 8 * χ ^ 8 := by ring
    rwa [heq] at this
  have hfact : ((((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 8 * χ ^ 4
      + (star π) ^ 8 * χ ^ 8)
      = (star π) ^ 8 * χ ^ 4 * ((((q : ℤ) ^ 2 : ℤ) : GaussianInt) + χ ^ 4) := by ring
  have hπq4 : π ∣ ((((q : ℤ) ^ 2 : ℤ) : GaussianInt) + χ ^ 4) := by
    rcases hπprime.dvd_mul.mp (hfact ▸ hπrest) with h1 | h1
    · rcases hπprime.dvd_mul.mp h1 with h2 | h2
      · exact absurd (hπprime.dvd_of_dvd_pow h2) hπnb
      · exact absurd (hπprime.dvd_of_dvd_pow h2) hπχ
    · exact h1
  have hsplit : ((((q : ℤ) ^ 2 : ℤ) : GaussianInt) + χ ^ 4)
      = χ ^ 2 * ((star χ) ^ 2 + χ ^ 2) := by rw [hQ2]; ring
  have hcore : (star χ) ^ 2 + χ ^ 2 = ((2 * (C ^ 2 - D ^ 2) : ℤ) : GaussianInt) := by
    rw [hχdef]
    ext
    · simp [sq]; ring
    · simp [sq]; ring
  have hπcore : π ∣ ((2 * (C ^ 2 - D ^ 2) : ℤ) : GaussianInt) := by
    rw [← hcore]
    rcases hπprime.dvd_mul.mp (hsplit ▸ hπq4) with h1 | h1
    · exact absurd (hπprime.dvd_of_dvd_pow h1) hπχ
    · exact h1
  have hpdvd2 : (p : ℤ) ∣ 2 * (C ^ 2 - D ^ 2) :=
    int_dvd_of_gaussian_dvd p A B hpAB _ hπcore
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  have hp2' : ¬ (p : ℤ) ∣ 2 := by
    intro hd
    have hle := Int.le_of_dvd (by norm_num) hd
    have := hp.out.two_le
    have h3 : 3 ≤ p := by omega
    have h4 : (3 : ℤ) ≤ (p : ℤ) := by exact_mod_cast h3
    omega
  have hpCD : (p : ℤ) ∣ (C ^ 2 - D ^ 2) := (hpP.dvd_mul.mp hpdvd2).resolve_left hp2'
  -- χ-side (Im-core): subtract the q²-term
  have hχsG : χ ∣ star G := by
    rw [hstarG]
    have h4 : χ ∣ χ ^ 4 := dvd_pow_self χ (by norm_num)
    have h8 : χ ∣ χ ^ 8 := dvd_pow_self χ (by norm_num)
    exact dvd_add (dvd_add (h8.mul_left _) (h4.mul_left _)) (h8.mul_left _)
  have hχG : χ ∣ G := hself ▸ hχsG
  have hχrest : χ ∣ (-(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 4 * (star χ) ^ 8
      + π ^ 8 * (star χ) ^ 8) := by
    have hterm : χ ∣ ((((q : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 8 * (star χ) ^ 4) := by
      rw [hQ2]
      have h2 : χ ∣ χ ^ 2 := dvd_pow_self χ (by norm_num)
      have h3 : χ ∣ χ ^ 2 * (star χ) ^ 2 := h2.mul_right _
      exact (h3.mul_right _).mul_right _
    have hG' : χ ∣ (-(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 4 * (star χ) ^ 8
        + (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 8 * (star χ) ^ 4
        + π ^ 8 * (star χ) ^ 8) := by rw [← hGdef]; exact hχG
    have := dvd_sub hG' hterm
    have heq : (-(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 4 * (star χ) ^ 8
          + (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 8 * (star χ) ^ 4
          + π ^ 8 * (star χ) ^ 8)
        - ((((q : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 8 * (star χ) ^ 4)
        = -(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 4 * (star χ) ^ 8
          + π ^ 8 * (star χ) ^ 8 := by ring
    rwa [heq] at this
  have hfact2 : (-(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 4 * (star χ) ^ 8
      + π ^ 8 * (star χ) ^ 8)
      = π ^ 4 * (star χ) ^ 8 * (π ^ 4 - (((p : ℤ) ^ 2 : ℤ) : GaussianInt)) := by ring
  have hχp4 : χ ∣ (π ^ 4 - (((p : ℤ) ^ 2 : ℤ) : GaussianInt)) := by
    rcases hχprime.dvd_mul.mp (hfact2 ▸ hχrest) with h1 | h1
    · rcases hχprime.dvd_mul.mp h1 with h2 | h2
      · exact absurd (hχprime.dvd_of_dvd_pow h2) hχπ
      · exact absurd (hχprime.dvd_of_dvd_pow h2) hχnb
    · exact h1
  have hsplit2 : (π ^ 4 - (((p : ℤ) ^ 2 : ℤ) : GaussianInt))
      = π ^ 2 * (π ^ 2 - (star π) ^ 2) := by rw [hP2]; ring
  have hcoreπ : π ^ 2 - (star π) ^ 2 = (⟨0, 4 * A * B⟩ : GaussianInt) := by
    rw [hπdef]; exact im_core_eq A B
  have hχcore : χ ∣ (⟨0, 4 * A * B⟩ : GaussianInt) := by
    rw [← hcoreπ]
    rcases hχprime.dvd_mul.mp (hsplit2 ▸ hχp4) with h1 | h1
    · exact absurd (hχprime.dvd_of_dvd_pow h1) hχπ
    · exact h1
  have hqdvd : (q : ℤ) ∣ 4 * A * B :=
    int_dvd_of_gaussian_dvd_imag q C D hqCD _ hχcore
  have hqP : Prime (q : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hq.out
  have hq2' : ¬ (q : ℤ) ∣ 4 := by
    intro hd
    have hn : q ∣ 4 := by
      have : ((4 : ℕ) : ℤ) = (4 : ℤ) := by norm_num
      exact_mod_cast hd
    have h2 := hq.out.two_le
    have hle : q ≤ 4 := Nat.le_of_dvd (by norm_num) hn
    interval_cases q <;> omega
  have hqAB : (q : ℤ) ∣ A ∨ (q : ℤ) ∣ B := by
    rcases hqP.dvd_mul.mp hqdvd with h1 | h1
    · rcases hqP.dvd_mul.mp h1 with h2 | h2
      · exact absurd h2 hq2'
      · exact Or.inl h2
    · exact Or.inr h1
  -- pinch
  obtain ⟨hA2, hB2⟩ := coord_sq_lt p A B hpAB
  obtain ⟨hAne, hBne⟩ := coord_ne_zero p A B hpAB
  have hCD0 : C ^ 2 - D ^ 2 ≠ 0 := sq_ne_sq_of_odd_prime q hqodd C D hqCD
  have hCDlt : |C ^ 2 - D ^ 2| < q := diff_sq_lt q C D hqCD
  rcases Nat.lt_trichotomy p q with hlt | heq' | hgt
  · have hq0 : (0 : ℤ) < (q : ℤ) := by exact_mod_cast hq.out.pos
    have hpq' : ((p : ℤ)) < (q : ℤ) := by exact_mod_cast hlt
    rcases hqAB with h | h
    · have hAabs : |A| < (q : ℤ) := by
        nlinarith [abs_nonneg A, sq_abs A, abs_pos.mpr hAne]
      exact strict_pinch_int (q : ℤ) A hq0 h hAne hAabs
    · have hBabs : |B| < (q : ℤ) := by
        nlinarith [abs_nonneg B, sq_abs B, abs_pos.mpr hBne]
      exact strict_pinch_int (q : ℤ) B hq0 h hBne hBabs
  · exact hpq heq'
  · have hp0 : (0 : ℤ) < (p : ℤ) := by exact_mod_cast hp.out.pos
    have hqp' : ((q : ℤ)) < (p : ℤ) := by exact_mod_cast hgt
    exact strict_pinch_int (p : ℤ) (C ^ 2 - D ^ 2) hp0 hpCD hCD0 (by omega)

/-- **Fourth relation (hybrid: Im-core on the π-side, Re-core on the χ-side).**
Im(−p²·π⁴·χ̄⁸ + q²·π⁸·χ̄⁴ − π⁸·χ̄⁸) is never zero. -/
theorem fourth_relation_nonzero
    (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :
    (-(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 4 * (star (⟨C, D⟩ : GaussianInt)) ^ 8
      + (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 8 * (star (⟨C, D⟩ : GaussianInt)) ^ 4
      - (⟨A, B⟩ : GaussianInt) ^ 8 * (star (⟨C, D⟩ : GaussianInt)) ^ 8).im ≠ 0 := by
  intro h0
  set π : GaussianInt := ⟨A, B⟩ with hπdef
  set χ : GaussianInt := ⟨C, D⟩ with hχdef
  set G : GaussianInt :=
    -(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 4 * (star χ) ^ 8
      + (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 8 * (star χ) ^ 4
      - π ^ 8 * (star χ) ^ 8 with hGdef
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
  have hπG : π ∣ G := by
    rw [hGdef]
    have h4 : π ∣ π ^ 4 := dvd_pow_self π (by norm_num)
    have h8 : π ∣ π ^ 8 := dvd_pow_self π (by norm_num)
    exact dvd_sub (dvd_add ((h4.mul_left _).mul_right _) ((h8.mul_left _).mul_right _))
      (h8.mul_right _)
  have hstarG : star G =
      -(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ 8
        + (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 8 * χ ^ 4
        - (star π) ^ 8 * χ ^ 8 := by
    rw [hGdef]
    simp only [star_sub, star_add, star_neg, star_mul, star_pow, star_star, star_intCast]
    ring
  have hπsG : π ∣ (-(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ 8
      + (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 8 * χ ^ 4
      - (star π) ^ 8 * χ ^ 8) := by
    rw [← hstarG, hself]; exact hπG
  have hπrest : π ∣ ((((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 8 * χ ^ 4
      - (star π) ^ 8 * χ ^ 8) := by
    have hterm : π ∣ (-(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ 8) := by
      rw [hP2]
      have h2 : π ∣ π ^ 2 := dvd_pow_self π (by norm_num)
      have h3 : π ∣ π ^ 2 * (star π) ^ 2 := h2.mul_right _
      exact ((dvd_neg.mpr h3).mul_right _).mul_right _
    have := dvd_sub hπsG hterm
    have heq : (-(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ 8
          + (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 8 * χ ^ 4
          - (star π) ^ 8 * χ ^ 8)
        - (-(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 4 * χ ^ 8)
        = (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 8 * χ ^ 4
          - (star π) ^ 8 * χ ^ 8 := by ring
    rwa [heq] at this
  have hfact : ((((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (star π) ^ 8 * χ ^ 4
      - (star π) ^ 8 * χ ^ 8)
      = (star π) ^ 8 * χ ^ 4 * ((((q : ℤ) ^ 2 : ℤ) : GaussianInt) - χ ^ 4) := by ring
  have hπq4 : π ∣ ((((q : ℤ) ^ 2 : ℤ) : GaussianInt) - χ ^ 4) := by
    rcases hπprime.dvd_mul.mp (hfact ▸ hπrest) with h1 | h1
    · rcases hπprime.dvd_mul.mp h1 with h2 | h2
      · exact absurd (hπprime.dvd_of_dvd_pow h2) hπnb
      · exact absurd (hπprime.dvd_of_dvd_pow h2) hπχ
    · exact h1
  have hsplit : ((((q : ℤ) ^ 2 : ℤ) : GaussianInt) - χ ^ 4)
      = -(χ ^ 2 * (χ ^ 2 - (star χ) ^ 2)) := by rw [hQ2]; ring
  have hcoreχ : χ ^ 2 - (star χ) ^ 2 = (⟨0, 4 * C * D⟩ : GaussianInt) := by
    rw [hχdef]; exact im_core_eq C D
  have hπcore : π ∣ (⟨0, 4 * C * D⟩ : GaussianInt) := by
    rw [← hcoreχ]
    have hneg : π ∣ (χ ^ 2 * (χ ^ 2 - (star χ) ^ 2)) := dvd_neg.mp (hsplit ▸ hπq4)
    rcases hπprime.dvd_mul.mp hneg with h1 | h1
    · exact absurd (hπprime.dvd_of_dvd_pow h1) hπχ
    · exact h1
  have hpdvd : (p : ℤ) ∣ 4 * C * D :=
    int_dvd_of_gaussian_dvd_imag p A B hpAB _ hπcore
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  have hp2' : ¬ (p : ℤ) ∣ 4 := by
    intro hd
    have hn : p ∣ 4 := by
      have : ((4 : ℕ) : ℤ) = (4 : ℤ) := by norm_num
      exact_mod_cast hd
    have h2 := hp.out.two_le
    have hle : p ≤ 4 := Nat.le_of_dvd (by norm_num) hn
    interval_cases p <;> omega
  have hpCD : (p : ℤ) ∣ C ∨ (p : ℤ) ∣ D := by
    rcases hpP.dvd_mul.mp hpdvd with h1 | h1
    · rcases hpP.dvd_mul.mp h1 with h2 | h2
      · exact absurd h2 hp2'
      · exact Or.inl h2
    · exact Or.inr h1
  -- χ-side (Re-core): subtract the q²-term
  have hχsG : χ ∣ star G := by
    rw [hstarG]
    have h4 : χ ∣ χ ^ 4 := dvd_pow_self χ (by norm_num)
    have h8 : χ ∣ χ ^ 8 := dvd_pow_self χ (by norm_num)
    exact dvd_sub (dvd_add (h8.mul_left _) (h4.mul_left _)) (h8.mul_left _)
  have hχG : χ ∣ G := hself ▸ hχsG
  have hχrest : χ ∣ (-(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 4 * (star χ) ^ 8
      - π ^ 8 * (star χ) ^ 8) := by
    have hterm : χ ∣ ((((q : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 8 * (star χ) ^ 4) := by
      rw [hQ2]
      have h2 : χ ∣ χ ^ 2 := dvd_pow_self χ (by norm_num)
      have h3 : χ ∣ χ ^ 2 * (star χ) ^ 2 := h2.mul_right _
      exact (h3.mul_right _).mul_right _
    have hG' : χ ∣ (-(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 4 * (star χ) ^ 8
        + (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 8 * (star χ) ^ 4
        - π ^ 8 * (star χ) ^ 8) := by rw [← hGdef]; exact hχG
    have := dvd_sub hG' hterm
    have heq : (-(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 4 * (star χ) ^ 8
          + (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 8 * (star χ) ^ 4
          - π ^ 8 * (star χ) ^ 8)
        - ((((q : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 8 * (star χ) ^ 4)
        = -(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 4 * (star χ) ^ 8
          - π ^ 8 * (star χ) ^ 8 := by ring
    rwa [heq] at this
  have hfact2 : (-(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * π ^ 4 * (star χ) ^ 8
      - π ^ 8 * (star χ) ^ 8)
      = -(π ^ 4 * (star χ) ^ 8 * ((((p : ℤ) ^ 2 : ℤ) : GaussianInt) + π ^ 4)) := by ring
  have hχp4 : χ ∣ ((((p : ℤ) ^ 2 : ℤ) : GaussianInt) + π ^ 4) := by
    have hneg : χ ∣ (π ^ 4 * (star χ) ^ 8 * ((((p : ℤ) ^ 2 : ℤ) : GaussianInt) + π ^ 4)) :=
      dvd_neg.mp (hfact2 ▸ hχrest)
    rcases hχprime.dvd_mul.mp hneg with h1 | h1
    · rcases hχprime.dvd_mul.mp h1 with h2 | h2
      · exact absurd (hχprime.dvd_of_dvd_pow h2) hχπ
      · exact absurd (hχprime.dvd_of_dvd_pow h2) hχnb
    · exact h1
  have hsplit2 : ((((p : ℤ) ^ 2 : ℤ) : GaussianInt) + π ^ 4)
      = π ^ 2 * ((star π) ^ 2 + π ^ 2) := by rw [hP2]; ring
  have hcore2 : (star π) ^ 2 + π ^ 2 = ((2 * (A ^ 2 - B ^ 2) : ℤ) : GaussianInt) := by
    rw [hπdef]
    ext
    · simp [sq]; ring
    · simp [sq]; ring
  have hχcore : χ ∣ ((2 * (A ^ 2 - B ^ 2) : ℤ) : GaussianInt) := by
    rw [← hcore2]
    rcases hχprime.dvd_mul.mp (hsplit2 ▸ hχp4) with h1 | h1
    · exact absurd (hχprime.dvd_of_dvd_pow h1) hχπ
    · exact h1
  have hqdvd2 : (q : ℤ) ∣ 2 * (A ^ 2 - B ^ 2) :=
    int_dvd_of_gaussian_dvd q C D hqCD _ hχcore
  have hqP : Prime (q : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hq.out
  have hq2' : ¬ (q : ℤ) ∣ 2 := by
    intro hd
    have hle := Int.le_of_dvd (by norm_num) hd
    have := hq.out.two_le
    have h3 : 3 ≤ q := by omega
    have h4 : (3 : ℤ) ≤ (q : ℤ) := by exact_mod_cast h3
    omega
  have hqAB : (q : ℤ) ∣ (A ^ 2 - B ^ 2) := (hqP.dvd_mul.mp hqdvd2).resolve_left hq2'
  -- pinch
  obtain ⟨hC2, hD2⟩ := coord_sq_lt q C D hqCD
  obtain ⟨hCne, hDne⟩ := coord_ne_zero q C D hqCD
  have hAB0 : A ^ 2 - B ^ 2 ≠ 0 := sq_ne_sq_of_odd_prime p hpodd A B hpAB
  have hABlt : |A ^ 2 - B ^ 2| < p := diff_sq_lt p A B hpAB
  rcases Nat.lt_trichotomy p q with hlt | heq' | hgt
  · have hq0 : (0 : ℤ) < (q : ℤ) := by exact_mod_cast hq.out.pos
    have hpq' : ((p : ℤ)) < (q : ℤ) := by exact_mod_cast hlt
    exact strict_pinch_int (q : ℤ) (A ^ 2 - B ^ 2) hq0 hqAB hAB0 (by omega)
  · exact hpq heq'
  · have hp0 : (0 : ℤ) < (p : ℤ) := by exact_mod_cast hp.out.pos
    have hqp' : ((q : ℤ)) < (p : ℤ) := by exact_mod_cast hgt
    rcases hpCD with h | h
    · have hCabs : |C| < (p : ℤ) := by
        nlinarith [abs_nonneg C, sq_abs C, abs_pos.mpr hCne]
      exact strict_pinch_int (p : ℤ) C hp0 h hCne hCabs
    · have hDabs : |D| < (p : ℤ) := by
        nlinarith [abs_nonneg D, sq_abs D, abs_pos.mpr hDne]
      exact strict_pinch_int (p : ℤ) D hp0 h hDne hDabs
