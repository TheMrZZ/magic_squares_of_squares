/-
Parity facts for fourth powers of Gaussian representations: if
p = A² + B² is odd then A, B have opposite parity, and for
π⁴ = (A+Bi)⁴ = R + I·i:
  R = A⁴ − 6A²B² + B⁴ is odd, and I = 4AB(A²−B²) ≡ 0 (mod 4).
These feed the parity certificates of the two-prime engines.
-/
import Mathlib

/-- If A² + B² is odd then A and B have opposite parity. -/
lemma opposite_parity {A B : ℤ} (h : Odd (A ^ 2 + B ^ 2)) :
    (Odd A ∧ Even B) ∨ (Even A ∧ Odd B) := by
  rcases Int.even_or_odd A with hA | hA <;> rcases Int.even_or_odd B with hB | hB
  · obtain ⟨a, rfl⟩ := hA; obtain ⟨b, rfl⟩ := hB
    obtain ⟨k, hk⟩ := h
    have h4 : (a + a) ^ 2 + (b + b) ^ 2 = 4 * (a ^ 2 + b ^ 2) := by ring
    rw [h4] at hk; omega
  · exact Or.inr ⟨hA, hB⟩
  · exact Or.inl ⟨hA, hB⟩
  · obtain ⟨a, rfl⟩ := hA; obtain ⟨b, rfl⟩ := hB
    obtain ⟨k, hk⟩ := h
    have h4 : (2 * a + 1) ^ 2 + (2 * b + 1) ^ 2
        = 4 * (a ^ 2 + a + b ^ 2 + b) + 2 := by ring
    rw [h4] at hk; omega

/-- Re(π⁴) = A⁴ − 6A²B² + B⁴ is odd when A, B have opposite parity. -/
lemma re4_odd {A B : ℤ} (h : Odd (A ^ 2 + B ^ 2)) :
    Odd (A ^ 4 - 6 * A ^ 2 * B ^ 2 + B ^ 4) := by
  rcases opposite_parity h with ⟨⟨a, rfl⟩, ⟨b, rfl⟩⟩ | ⟨⟨a, rfl⟩, ⟨b, rfl⟩⟩
  · exact ⟨8*a^4 + 16*a^3 + 12*a^2 + 4*a - 48*a^2*b^2 - 48*a*b^2 - 12*b^2 + 8*b^4,
      by ring⟩
  · exact ⟨8*b^4 + 16*b^3 + 12*b^2 + 4*b - 48*a^2*b^2 - 48*a^2*b - 12*a^2 + 8*a^4,
      by ring⟩

/-- Im(π⁴) = 4AB(A² − B²) is divisible by 4. -/
lemma im4_div4 (A B : ℤ) : (4 : ℤ) ∣ 4 * A * B * (A ^ 2 - B ^ 2) := ⟨A * B * (A ^ 2 - B ^ 2), by ring⟩
