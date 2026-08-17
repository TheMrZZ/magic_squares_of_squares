/-
The router dispatchers: the once-proved lemmas that interpret the
certifier's verdicts. `lone_kill` is the phase-2 workhorse (the unique
minimal valuation layer of a three-term relation survives modulo the
next power, by the grading lemma), in a p-side and a q-side version.
-/
import Mathlib
import MsqLean.GradingLemma
import MsqLean.CertKit
import MsqLean.SimplestRelation

namespace Router

/-- The lone-valuation kill, p-side: a three-term relation whose first
term has strictly smaller p-content than the other two, unit-like
leading coefficient, and a π-power times a p-coprime cofactor in the
imaginary part, is nonzero. -/
theorem lone_kill (p : ℕ) [hp : Fact (Nat.Prime p)] (hp4 : p % 4 = 1)
    (A B : ℤ) (hpAB : A ^ 2 + B ^ 2 = p)
    (c1 : ℤ) (hc1 : ¬ (p : ℤ) ∣ c1)
    (jj : ℕ) (hj : 1 ≤ jj)
    (V : GaussianInt) (hV : ¬ ((p : ℤ) ∣ V.norm))
    (m1 m2 m3 : ℕ) (h12 : m1 < m2) (h13 : m1 < m3)
    (c2 c3 T2 T3 R : ℤ)
    (hR : R = c1 * (p : ℤ) ^ (2 * m1)
          * ((((⟨A, B⟩ : GaussianInt)) ^ jj * V).im)
        + c2 * (p : ℤ) ^ (2 * m2) * T2 + c3 * (p : ℤ) ^ (2 * m3) * T3) :
    R ≠ 0 := by
  have hT : ¬ (p : ℤ) ∣ c1 * ((((⟨A, B⟩ : GaussianInt)) ^ jj * V).im) := by
    intro hd
    rcases (Int.Prime.dvd_mul' (by exact_mod_cast hp.out) hd) with h | h
    · exact hc1 h
    · exact im_pipow_mul_not_dvd p hp4 A B hpAB jj hj V hV h
  obtain ⟨d2, hd2⟩ : ∃ d2, 2 * m2 = 2 * m1 + 1 + d2 := ⟨2 * m2 - 2 * m1 - 1, by omega⟩
  obtain ⟨d3, hd3⟩ : ∃ d3, 2 * m3 = 2 * m1 + 1 + d3 := ⟨2 * m3 - 2 * m1 - 1, by omega⟩
  refine CertKit.grading_kill p (2 * m1)
    (T := c1 * ((((⟨A, B⟩ : GaussianInt)) ^ jj * V).im))
    (R := c2 * (p : ℤ) ^ d2 * T2 + c3 * (p : ℤ) ^ d3 * T3) ?_ hT
  rw [hR, hd2, hd3, pow_add, pow_add, pow_add, pow_add]
  push_cast
  ring

/-- The Gaussian lone-layer kill: E = π^e·(T + π·R) with π prime and
π ∤ T is nonzero. The dispatcher for the certifier's unit-core
verdicts (the minimal π-adic layer of the core has a unit
coefficient). -/
theorem gauss_lone_kill (π : GaussianInt) (hπ : Prime π) (e : ℕ)
    (T R E : GaussianInt) (hE : E = π ^ e * (T + π * R))
    (hT : ¬ π ∣ T) : E ≠ 0 := by
  intro h0
  rw [hE] at h0
  rcases mul_eq_zero.mp h0 with h | h
  · exact hπ.ne_zero (pow_eq_zero_iff'.mp h).1
  · exact hT ⟨-R, by linear_combination h⟩

/-- A product of powers of nonzero elements of a domain is nonzero. -/
lemma mono_ne_zero {R : Type*} [CommRing R] [IsDomain R]
    (z1 z2 z3 z4 : R) (h1 : z1 ≠ 0) (h2 : z2 ≠ 0) (h3 : z3 ≠ 0) (h4 : z4 ≠ 0)
    (a b c d : ℕ) : z1 ^ a * z2 ^ b * z3 ^ c * z4 ^ d ≠ 0 :=
  mul_ne_zero (mul_ne_zero (mul_ne_zero (pow_ne_zero _ h1) (pow_ne_zero _ h2))
    (pow_ne_zero _ h3)) (pow_ne_zero _ h4)

/-- A prime that divides none of three elements does not divide a unit
times a product of their powers. -/
lemma prime_not_dvd_unit_mono (π : GaussianInt) (hπ : Prime π)
    (w1 w2 w3 : GaussianInt) (h1 : ¬ π ∣ w1) (h2 : ¬ π ∣ w2) (h3 : ¬ π ∣ w3)
    (c0 : ℤ) (hc0 : c0 = 1 ∨ c0 = -1) (a b c : ℕ) :
    ¬ π ∣ ((c0 : GaussianInt)) * w1 ^ a * w2 ^ b * w3 ^ c := by
  intro hd
  have hu : IsUnit ((c0 : GaussianInt)) := by
    rcases hc0 with rfl | rfl
    · simpa using isUnit_one
    · exact ⟨⟨-1, -1, by ext <;> simp, by ext <;> simp⟩, by push_cast; rfl⟩
  have h1' : ¬ π ∣ w1 ^ a := fun h => h1 (hπ.dvd_of_dvd_pow h)
  have h2' : ¬ π ∣ w2 ^ b := fun h => h2 (hπ.dvd_of_dvd_pow h)
  have h3' : ¬ π ∣ w3 ^ c := fun h => h3 (hπ.dvd_of_dvd_pow h)
  have hX : π ∣ ((c0 : GaussianInt)) * (w1 ^ a * w2 ^ b * w3 ^ c) := by
    have hassoc : ((c0 : GaussianInt)) * w1 ^ a * w2 ^ b * w3 ^ c
        = ((c0 : GaussianInt)) * (w1 ^ a * w2 ^ b * w3 ^ c) := by ring
    rwa [hassoc] at hd
  rcases hπ.dvd_mul.mp hX with hd1 | hd1
  · exact hπ.not_unit (isUnit_of_dvd_unit hd1 hu)
  · rcases hπ.dvd_mul.mp hd1 with hd2 | hd2
    · rcases hπ.dvd_mul.mp hd2 with hd3 | hd3
      · exact h1' hd3
      · exact h2' hd3
    · exact h3' hd2

section AtomPack
/- The atom pack: the four Gaussian primes of the setup and the twelve
pairwise nondivisibility facts, with star written literally so the
generated certificates can name them. All hypotheses are explicit. -/

lemma star_mk (A B : ℤ) : star (⟨A, B⟩ : GaussianInt) = (⟨A, -B⟩ : GaussianInt) := by
  ext <;> simp

lemma pr_pi (p : ℕ) [Fact (Nat.Prime p)] (A B : ℤ)
    (hpAB : A ^ 2 + B ^ 2 = p) : Prime (⟨A, B⟩ : GaussianInt) :=
  prime_pi p A B hpAB

lemma pr_pis (p : ℕ) [Fact (Nat.Prime p)] (A B : ℤ)
    (hpAB : A ^ 2 + B ^ 2 = p) : Prime (star (⟨A, B⟩ : GaussianInt)) := by
  rw [star_mk]
  exact prime_pi p A (-B) (by nlinarith)

lemma nd_pi_pis (p : ℕ) [Fact (Nat.Prime p)] (hpodd : p % 2 = 1) (A B : ℤ)
    (hpAB : A ^ 2 + B ^ 2 = p) :
    ¬ (⟨A, B⟩ : GaussianInt) ∣ star (⟨A, B⟩ : GaussianInt) :=
  pi_not_dvd_star p hpodd A B hpAB

lemma nd_pis_pi (p : ℕ) [Fact (Nat.Prime p)] (hpodd : p % 2 = 1) (A B : ℤ)
    (hpAB : A ^ 2 + B ^ 2 = p) :
    ¬ star (⟨A, B⟩ : GaussianInt) ∣ (⟨A, B⟩ : GaussianInt) := by
  rw [star_mk]
  have h := pi_not_dvd_star p hpodd A (-B) (by nlinarith)
  rwa [show star (⟨A, -B⟩ : GaussianInt) = (⟨A, B⟩ : GaussianInt) from by ext <;> simp] at h

lemma nd_pi_chi (p q : ℕ) [Fact (Nat.Prime p)] [Fact (Nat.Prime q)]
    (hpq : p ≠ q) (A B C D : ℤ)
    (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :
    ¬ (⟨A, B⟩ : GaussianInt) ∣ (⟨C, D⟩ : GaussianInt) :=
  not_dvd_other p q hpq A B C D hpAB hqCD

lemma nd_pi_chis (p q : ℕ) [Fact (Nat.Prime p)] [Fact (Nat.Prime q)]
    (hpq : p ≠ q) (A B C D : ℤ)
    (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :
    ¬ (⟨A, B⟩ : GaussianInt) ∣ star (⟨C, D⟩ : GaussianInt) := by
  rw [star_mk]
  exact not_dvd_other p q hpq A B C (-D) hpAB (by nlinarith)

lemma nd_pis_chi (p q : ℕ) [Fact (Nat.Prime p)] [Fact (Nat.Prime q)]
    (hpq : p ≠ q) (A B C D : ℤ)
    (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :
    ¬ star (⟨A, B⟩ : GaussianInt) ∣ (⟨C, D⟩ : GaussianInt) := by
  rw [star_mk]
  exact not_dvd_other p q hpq A (-B) C D (by nlinarith) hqCD

lemma nd_pis_chis (p q : ℕ) [Fact (Nat.Prime p)] [Fact (Nat.Prime q)]
    (hpq : p ≠ q) (A B C D : ℤ)
    (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :
    ¬ star (⟨A, B⟩ : GaussianInt) ∣ star (⟨C, D⟩ : GaussianInt) := by
  rw [star_mk, star_mk]
  exact not_dvd_other p q hpq A (-B) C (-D) (by nlinarith) (by nlinarith)

lemma pr_chi (q : ℕ) [Fact (Nat.Prime q)] (C D : ℤ)
    (hqCD : C ^ 2 + D ^ 2 = q) : Prime (⟨C, D⟩ : GaussianInt) :=
  prime_pi q C D hqCD

lemma pr_chis (q : ℕ) [Fact (Nat.Prime q)] (C D : ℤ)
    (hqCD : C ^ 2 + D ^ 2 = q) : Prime (star (⟨C, D⟩ : GaussianInt)) := by
  rw [star_mk]
  exact prime_pi q C (-D) (by nlinarith)

lemma nd_chi_chis (q : ℕ) [Fact (Nat.Prime q)] (hqodd : q % 2 = 1) (C D : ℤ)
    (hqCD : C ^ 2 + D ^ 2 = q) :
    ¬ (⟨C, D⟩ : GaussianInt) ∣ star (⟨C, D⟩ : GaussianInt) :=
  pi_not_dvd_star q hqodd C D hqCD

lemma nd_chis_chi (q : ℕ) [Fact (Nat.Prime q)] (hqodd : q % 2 = 1) (C D : ℤ)
    (hqCD : C ^ 2 + D ^ 2 = q) :
    ¬ star (⟨C, D⟩ : GaussianInt) ∣ (⟨C, D⟩ : GaussianInt) := by
  rw [star_mk]
  have h := pi_not_dvd_star q hqodd C (-D) (by nlinarith)
  rwa [show star (⟨C, -D⟩ : GaussianInt) = (⟨C, D⟩ : GaussianInt) from by ext <;> simp] at h

lemma nd_chi_pi (p q : ℕ) [Fact (Nat.Prime p)] [Fact (Nat.Prime q)]
    (hpq : p ≠ q) (A B C D : ℤ)
    (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :
    ¬ (⟨C, D⟩ : GaussianInt) ∣ (⟨A, B⟩ : GaussianInt) :=
  not_dvd_other q p (Ne.symm hpq) C D A B hqCD hpAB

lemma nd_chi_pis (p q : ℕ) [Fact (Nat.Prime p)] [Fact (Nat.Prime q)]
    (hpq : p ≠ q) (A B C D : ℤ)
    (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :
    ¬ (⟨C, D⟩ : GaussianInt) ∣ star (⟨A, B⟩ : GaussianInt) := by
  rw [star_mk]
  exact not_dvd_other q p (Ne.symm hpq) C D A (-B) hqCD (by nlinarith)

lemma nd_chis_pi (p q : ℕ) [Fact (Nat.Prime p)] [Fact (Nat.Prime q)]
    (hpq : p ≠ q) (A B C D : ℤ)
    (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :
    ¬ star (⟨C, D⟩ : GaussianInt) ∣ (⟨A, B⟩ : GaussianInt) := by
  rw [star_mk]
  exact not_dvd_other q p (Ne.symm hpq) C (-D) A B (by nlinarith) hpAB

lemma nd_chis_pis (p q : ℕ) [Fact (Nat.Prime p)] [Fact (Nat.Prime q)]
    (hpq : p ≠ q) (A B C D : ℤ)
    (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q) :
    ¬ star (⟨C, D⟩ : GaussianInt) ∣ star (⟨A, B⟩ : GaussianInt) := by
  rw [star_mk, star_mk]
  exact not_dvd_other q p (Ne.symm hpq) C (-D) A (-B) (by nlinarith) (by nlinarith)

end AtomPack

/-- An odd prime does not divide the norm of a power of the other
split prime's Gaussian factor. -/
lemma p_ndvd_chi_pow_norm (p q : ℕ) [hp : Fact (Nat.Prime p)]
    [hq : Fact (Nat.Prime q)] (hpq : p ≠ q) (C D : ℤ)
    (hqCD : C ^ 2 + D ^ 2 = q) (k : ℕ) :
    ¬ (p : ℤ) ∣ ((⟨C, D⟩ : GaussianInt) ^ k).norm := by
  intro hd
  have hnorm : ((⟨C, D⟩ : GaussianInt) ^ k).norm = (q : ℤ) ^ k := by
    have h1 : ((⟨C, D⟩ : GaussianInt) ^ k).norm
        = ((⟨C, D⟩ : GaussianInt).norm) ^ k :=
      map_pow Zsqrtd.normMonoidHom _ k
    have h2 : (⟨C, D⟩ : GaussianInt).norm = (q : ℤ) := by
      have : (⟨C, D⟩ : GaussianInt).norm = C * C + D * D := by simp [Zsqrtd.norm]
      rw [this]; nlinarith
    rw [h1, h2]
  rw [hnorm] at hd
  have hpZ : Prime ((p : ℕ) : ℤ) := Nat.prime_iff_prime_int.mp hp.out
  have := hpZ.dvd_of_dvd_pow hd
  have hnat : p ∣ q := by exact_mod_cast this
  exact hpq ((Nat.prime_dvd_prime_iff_eq hp.out hq.out).mp hnat)

/-- The star variant. -/
lemma p_ndvd_chis_pow_norm (p q : ℕ) [hp : Fact (Nat.Prime p)]
    [hq : Fact (Nat.Prime q)] (hpq : p ≠ q) (C D : ℤ)
    (hqCD : C ^ 2 + D ^ 2 = q) (k : ℕ) :
    ¬ (p : ℤ) ∣ ((star (⟨C, D⟩ : GaussianInt)) ^ k).norm := by
  rw [star_mk]
  exact p_ndvd_chi_pow_norm p q hpq C (-D) (by nlinarith) k

/-- An odd prime divides neither 1, 2, nor their negatives. -/
lemma odd_prime_ndvd_small (p : ℕ) [hp : Fact (Nat.Prime p)]
    (hpodd : p % 2 = 1) (c : ℤ)
    (hc : c = 1 ∨ c = -1 ∨ c = 2 ∨ c = -2) : ¬ (p : ℤ) ∣ c := by
  intro hd
  have h2 := hp.out.two_le
  have hdn : (p : ℤ) ∣ c.natAbs := (Int.dvd_natAbs).mpr hd
  have hnat : p ∣ c.natAbs := by exact_mod_cast hdn
  have hle : c.natAbs ≤ 2 := by rcases hc with rfl | rfl | rfl | rfl <;> simp
  have hpos : 0 < c.natAbs := by rcases hc with rfl | rfl | rfl | rfl <;> simp
  have hle2 := Nat.le_of_dvd hpos hnat
  have h2 := hp.out.two_le
  omega

end Router
