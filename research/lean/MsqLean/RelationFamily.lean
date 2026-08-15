/-
Parametric family theorem: all sign-variants of the conjugation-aligned
(2,2) double-pinch relations at once.  For ε₂, ε₃ ∈ {±1},
  G = −p²·π⁴·χ̄⁸ + ε₂·q²·π⁸·χ̄⁴ + ε₃·π⁸·χ̄⁸
has Im G ≠ 0 (distinct odd primes p, q).  The chain is the verified
double-pinch: self-conjugacy, π ∣ G, extraction π ∣ (ε₂·q² + ε₃·χ⁴),
then a case split on the signs reduces to the Re-core (2(C²−D²)) or the
Im-core (4CD) pinch.  Covers 4 of the 32 double-pinch relations; the
star-swapped and D↦−D mirrored companions cover 12 more.
-/
import MsqLean.SimplestRelation

open Zsqrtd

theorem relation_family_aligned
    (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (e2 e3 : ℤ) (he2 : e2 = 1 ∨ e2 = -1) (he3 : e3 = 1 ∨ e3 = -1) :
    (-(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 4 * (star (⟨C, D⟩ : GaussianInt)) ^ 8
      + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 8 * (star (⟨C, D⟩ : GaussianInt)) ^ 4
      + ((e3 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 8 * (star (⟨C, D⟩ : GaussianInt)) ^ 8).im ≠ 0 := by
  rcases he2 with rfl | rfl <;> rcases he3 with rfl | rfl
  · intro h0
    apply third_relation_nonzero p q hpodd hqodd hpq A B C D hpAB hqCD
    convert h0 using 2
    push_cast
    ring
  · intro h0
    apply fourth_relation_nonzero p q hpodd hqodd hpq A B C D hpAB hqCD
    convert h0 using 2
    push_cast
    ring
  · intro h0
    apply second_relation_nonzero p q hpodd hqodd hpq A B C D hpAB hqCD
    convert h0 using 2
    push_cast
    ring
  · intro h0
    apply simplest_relation_nonzero p q hpodd hqodd hpq A B C D hpAB hqCD
    convert h0 using 2
    push_cast
    ring

/-- Mirror corollary (D ↦ −D): the same family with the χ-part
unconjugated.  Covers 4 more of the 32 double-pinch relations. -/
theorem relation_family_aligned_mirror
    (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (e2 e3 : ℤ) (he2 : e2 = 1 ∨ e2 = -1) (he3 : e3 = 1 ∨ e3 = -1) :
    (-(((p : ℤ) ^ 2 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 4 * (⟨C, D⟩ : GaussianInt) ^ 8
      + ((e2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 8 * (⟨C, D⟩ : GaussianInt) ^ 4
      + ((e3 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 8 * (⟨C, D⟩ : GaussianInt) ^ 8).im ≠ 0 := by
  have hqCD' : C ^ 2 + (-D) ^ 2 = q := by
    have : (-D) ^ 2 = D ^ 2 := by ring
    rw [this]; exact hqCD
  have := relation_family_aligned p q hpodd hqodd hpq A B C (-D) hpAB hqCD' e2 e3 he2 he3
  have hstar : star (⟨C, -D⟩ : GaussianInt) = (⟨C, D⟩ : GaussianInt) := by
    ext <;> simp
  rwa [hstar] at this
