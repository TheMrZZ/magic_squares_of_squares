/-
Reusable core-extraction and pinch-finish lemmas for the double-pinch
relation families.
-/
import MsqLean.SimplestRelation

open Zsqrtd

/-- From π ∣ (E₂·q² + E₃·χ̄⁴) with unit signs: p divides one of the two
χ²-level cores. -/
lemma pi_core_disj (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (E2 E3 : ℤ) (hE2 : E2 = 1 ∨ E2 = -1) (hE3 : E3 = 1 ∨ E3 = -1)
    (h : (⟨A, B⟩ : GaussianInt) ∣
      (((E2 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
        + ((E3 : ℤ) : GaussianInt) * (star (⟨C, D⟩ : GaussianInt)) ^ 4)) :
    (p : ℤ) ∣ 2 * (C ^ 2 - D ^ 2) ∨ (p : ℤ) ∣ 4 * C * D := by
  set π : GaussianInt := ⟨A, B⟩ with hπdef
  set χ : GaussianInt := ⟨C, D⟩ with hχdef
  have hχχb : χ * star χ = ((q : ℤ) : GaussianInt) := by
    rw [hχdef, pi_mul_star, hqCD]
  have hQ2 : (((q : ℤ) ^ 2 : ℤ) : GaussianInt) = χ ^ 2 * (star χ) ^ 2 := by
    have hcast : (((q : ℤ) ^ 2 : ℤ) : GaussianInt) = ((q : ℤ) : GaussianInt) ^ 2 := by
      push_cast; ring
    rw [hcast, ← hχχb]; ring
  have hπprime : Prime π := prime_pi p A B hpAB
  have hπχ : ¬ π ∣ χ := not_dvd_other p q hpq A B C D hpAB hqCD
  have hπsχ : ¬ π ∣ star χ := by
    intro hd
    have := not_dvd_other p q hpq A B C (-D) hpAB
      (by have : (-D) ^ 2 = D ^ 2 := by ring
          rw [this]; exact hqCD)
    apply this
    have hstar : (⟨C, -D⟩ : GaussianInt) = star χ := by rw [hχdef]; ext <;> simp
    rwa [hstar]
  rcases hE2 with rfl | rfl <;> rcases hE3 with rfl | rfl
  · -- q² + χ̄⁴ = χ̄²(χ̄² + χ²)
    left
    have hkey : ((1 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
        + ((1 : ℤ) : GaussianInt) * (star χ) ^ 4
        = (star χ) ^ 2 * ((star χ) ^ 2 + χ ^ 2) := by rw [hQ2]; ring
    have hcore : (star χ) ^ 2 + χ ^ 2 = ((2 * (C ^ 2 - D ^ 2) : ℤ) : GaussianInt) := by
      rw [hχdef]; ext
      · simp [sq]; ring
      · simp [sq]; ring
    have h2 : π ∣ (star χ) ^ 2 * ((star χ) ^ 2 + χ ^ 2) := hkey ▸ h
    rcases hπprime.dvd_mul.mp h2 with h3 | h3
    · exact absurd (hπprime.dvd_of_dvd_pow h3) hπsχ
    · exact int_dvd_of_gaussian_dvd p A B hpAB _ (hcore ▸ h3)
  · -- q² − χ̄⁴ = χ̄²(χ² − χ̄²) → Im-core
    right
    have hkey : ((1 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
        + ((-1 : ℤ) : GaussianInt) * (star χ) ^ 4
        = (star χ) ^ 2 * (χ ^ 2 - (star χ) ^ 2) := by rw [hQ2]; push_cast; ring
    have hcore : χ ^ 2 - (star χ) ^ 2 = (⟨0, 4 * C * D⟩ : GaussianInt) := by
      rw [hχdef]; exact im_core_eq C D
    have h2 : π ∣ (star χ) ^ 2 * (χ ^ 2 - (star χ) ^ 2) := hkey ▸ h
    rcases hπprime.dvd_mul.mp h2 with h3 | h3
    · exact absurd (hπprime.dvd_of_dvd_pow h3) hπsχ
    · exact int_dvd_of_gaussian_dvd_imag p A B hpAB _ (hcore ▸ h3)
  · -- −q² + χ̄⁴ = −(χ̄²(χ² − χ̄²))·(−1)... = χ̄²(χ̄²−χ²): Im-core (negated)
    right
    have hkey : ((-1 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
        + ((1 : ℤ) : GaussianInt) * (star χ) ^ 4
        = -((star χ) ^ 2 * (χ ^ 2 - (star χ) ^ 2)) := by rw [hQ2]; push_cast; ring
    have hcore : χ ^ 2 - (star χ) ^ 2 = (⟨0, 4 * C * D⟩ : GaussianInt) := by
      rw [hχdef]; exact im_core_eq C D
    have h2 : π ∣ (star χ) ^ 2 * (χ ^ 2 - (star χ) ^ 2) := by
      have := hkey ▸ h
      exact dvd_neg.mp this
    rcases hπprime.dvd_mul.mp h2 with h3 | h3
    · exact absurd (hπprime.dvd_of_dvd_pow h3) hπsχ
    · exact int_dvd_of_gaussian_dvd_imag p A B hpAB _ (hcore ▸ h3)
  · -- −q² − χ̄⁴ = −(χ̄²(χ̄² + χ²)): Re-core (negated)
    left
    have hkey : ((-1 : ℤ) : GaussianInt) * (((q : ℤ) ^ 2 : ℤ) : GaussianInt)
        + ((-1 : ℤ) : GaussianInt) * (star χ) ^ 4
        = -((star χ) ^ 2 * ((star χ) ^ 2 + χ ^ 2)) := by rw [hQ2]; push_cast; ring
    have hcore : (star χ) ^ 2 + χ ^ 2 = ((2 * (C ^ 2 - D ^ 2) : ℤ) : GaussianInt) := by
      rw [hχdef]; ext
      · simp [sq]; ring
      · simp [sq]; ring
    have h2 : π ∣ (star χ) ^ 2 * ((star χ) ^ 2 + χ ^ 2) := by
      have := hkey ▸ h
      exact dvd_neg.mp this
    rcases hπprime.dvd_mul.mp h2 with h3 | h3
    · exact absurd (hπprime.dvd_of_dvd_pow h3) hπsχ
    · exact int_dvd_of_gaussian_dvd p A B hpAB _ (hcore ▸ h3)

/-- From χ ∣ (E₁·π² + E₃·π̄²): q divides one of the two π²-level cores. -/
lemma sq_core_disj (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (E1 E3 : ℤ) (hE1 : E1 = 1 ∨ E1 = -1) (hE3 : E3 = 1 ∨ E3 = -1)
    (h : (⟨C, D⟩ : GaussianInt) ∣
      (((E1 : ℤ) : GaussianInt) * (⟨A, B⟩ : GaussianInt) ^ 2
        + ((E3 : ℤ) : GaussianInt) * (star (⟨A, B⟩ : GaussianInt)) ^ 2)) :
    (q : ℤ) ∣ 2 * (A ^ 2 - B ^ 2) ∨ (q : ℤ) ∣ 4 * A * B := by
  set π : GaussianInt := ⟨A, B⟩ with hπdef
  set χ : GaussianInt := ⟨C, D⟩ with hχdef
  have hcoreR : (star π) ^ 2 + π ^ 2 = ((2 * (A ^ 2 - B ^ 2) : ℤ) : GaussianInt) := by
    rw [hπdef]; ext
    · simp [sq]; ring
    · simp [sq]; ring
  have hcoreI : π ^ 2 - (star π) ^ 2 = (⟨0, 4 * A * B⟩ : GaussianInt) := by
    rw [hπdef]; exact im_core_eq A B
  rcases hE1 with rfl | rfl <;> rcases hE3 with rfl | rfl
  · left
    have hkey : ((1 : ℤ) : GaussianInt) * π ^ 2 + ((1 : ℤ) : GaussianInt) * (star π) ^ 2
        = (star π) ^ 2 + π ^ 2 := by push_cast; ring
    exact int_dvd_of_gaussian_dvd q C D hqCD _ (hcoreR ▸ hkey ▸ h)
  · right
    have hkey : ((1 : ℤ) : GaussianInt) * π ^ 2 + ((-1 : ℤ) : GaussianInt) * (star π) ^ 2
        = π ^ 2 - (star π) ^ 2 := by push_cast; ring
    exact int_dvd_of_gaussian_dvd_imag q C D hqCD _ (hcoreI ▸ hkey ▸ h)
  · right
    have hkey : ((-1 : ℤ) : GaussianInt) * π ^ 2 + ((1 : ℤ) : GaussianInt) * (star π) ^ 2
        = -(π ^ 2 - (star π) ^ 2) := by push_cast; ring
    have h2 : χ ∣ (π ^ 2 - (star π) ^ 2) := dvd_neg.mp (hkey ▸ h)
    exact int_dvd_of_gaussian_dvd_imag q C D hqCD _ (hcoreI ▸ h2)
  · left
    have hkey : ((-1 : ℤ) : GaussianInt) * π ^ 2 + ((-1 : ℤ) : GaussianInt) * (star π) ^ 2
        = -((star π) ^ 2 + π ^ 2) := by push_cast; ring
    have h2 : χ ∣ ((star π) ^ 2 + π ^ 2) := dvd_neg.mp (hkey ▸ h)
    exact int_dvd_of_gaussian_dvd q C D hqCD _ (hcoreR ▸ h2)

/-- Two-ordering strict pinch on any combination of core disjunctions. -/
lemma double_pinch_finish (p q : ℕ) [hp : Fact (Nat.Prime p)] [hq : Fact (Nat.Prime q)]
    (hpodd : p % 2 = 1) (hqodd : q % 2 = 1) (hpq : p ≠ q)
    (A B C D : ℤ) (hpAB : A ^ 2 + B ^ 2 = p) (hqCD : C ^ 2 + D ^ 2 = q)
    (hP : (p : ℤ) ∣ 2 * (C ^ 2 - D ^ 2) ∨ (p : ℤ) ∣ 4 * C * D)
    (hQ : (q : ℤ) ∣ 2 * (A ^ 2 - B ^ 2) ∨ (q : ℤ) ∣ 4 * A * B) : False := by
  have hpP : Prime (p : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hp.out
  have hqP : Prime (q : ℤ) := by
    rw [Int.prime_iff_natAbs_prime]; simpa using hq.out
  have hp2 : ¬ (p : ℤ) ∣ 2 := by
    intro hd
    have hle := Int.le_of_dvd (by norm_num) hd
    have := hp.out.two_le
    have h3 : 3 ≤ p := by omega
    have h4 : (3 : ℤ) ≤ (p : ℤ) := by exact_mod_cast h3
    omega
  have hq2 : ¬ (q : ℤ) ∣ 2 := by
    intro hd
    have hle := Int.le_of_dvd (by norm_num) hd
    have := hq.out.two_le
    have h3 : 3 ≤ q := by omega
    have h4 : (3 : ℤ) ≤ (q : ℤ) := by exact_mod_cast h3
    omega
  have hp4 : ¬ (p : ℤ) ∣ 4 := by
    intro hd
    have hn : p ∣ 4 := by
      have : ((4 : ℕ) : ℤ) = (4 : ℤ) := by norm_num
      exact_mod_cast hd
    have h2 := hp.out.two_le
    have hle : p ≤ 4 := Nat.le_of_dvd (by norm_num) hn
    interval_cases p <;> omega
  have hq4 : ¬ (q : ℤ) ∣ 4 := by
    intro hd
    have hn : q ∣ 4 := by
      have : ((4 : ℕ) : ℤ) = (4 : ℤ) := by norm_num
      exact_mod_cast hd
    have h2 := hq.out.two_le
    have hle : q ≤ 4 := Nat.le_of_dvd (by norm_num) hn
    interval_cases q <;> omega
  obtain ⟨hC2, hD2⟩ := coord_sq_lt q C D hqCD
  obtain ⟨hCne, hDne⟩ := coord_ne_zero q C D hqCD
  obtain ⟨hA2, hB2⟩ := coord_sq_lt p A B hpAB
  obtain ⟨hAne, hBne⟩ := coord_ne_zero p A B hpAB
  rcases Nat.lt_trichotomy p q with hlt | heq | hgt
  · -- p < q: use hQ
    have hq0 : (0 : ℤ) < (q : ℤ) := by exact_mod_cast hq.out.pos
    have hpq' : ((p : ℤ)) < (q : ℤ) := by exact_mod_cast hlt
    have hAB0 : A ^ 2 - B ^ 2 ≠ 0 := sq_ne_sq_of_odd_prime p hpodd A B hpAB
    have hABlt : |A ^ 2 - B ^ 2| < p := diff_sq_lt p A B hpAB
    rcases hQ with h | h
    · have h' : (q : ℤ) ∣ (A ^ 2 - B ^ 2) := (hqP.dvd_mul.mp h).resolve_left hq2
      exact strict_pinch_int (q : ℤ) (A ^ 2 - B ^ 2) hq0 h' hAB0 (by omega)
    · have h' : (q : ℤ) ∣ A ∨ (q : ℤ) ∣ B := by
        rcases hqP.dvd_mul.mp h with h1 | h1
        · rcases hqP.dvd_mul.mp h1 with h2 | h2
          · exact absurd h2 hq4
          · exact Or.inl h2
        · exact Or.inr h1
      rcases h' with h2 | h2
      · have : |A| < (q : ℤ) := by
          nlinarith [abs_nonneg A, sq_abs A, abs_pos.mpr hAne]
        exact strict_pinch_int (q : ℤ) A hq0 h2 hAne this
      · have : |B| < (q : ℤ) := by
          nlinarith [abs_nonneg B, sq_abs B, abs_pos.mpr hBne]
        exact strict_pinch_int (q : ℤ) B hq0 h2 hBne this
  · exact hpq heq
  · -- q < p: use hP
    have hp0 : (0 : ℤ) < (p : ℤ) := by exact_mod_cast hp.out.pos
    have hqp' : ((q : ℤ)) < (p : ℤ) := by exact_mod_cast hgt
    have hCD0 : C ^ 2 - D ^ 2 ≠ 0 := sq_ne_sq_of_odd_prime q hqodd C D hqCD
    have hCDlt : |C ^ 2 - D ^ 2| < q := diff_sq_lt q C D hqCD
    rcases hP with h | h
    · have h' : (p : ℤ) ∣ (C ^ 2 - D ^ 2) := (hpP.dvd_mul.mp h).resolve_left hp2
      exact strict_pinch_int (p : ℤ) (C ^ 2 - D ^ 2) hp0 h' hCD0 (by omega)
    · have h' : (p : ℤ) ∣ C ∨ (p : ℤ) ∣ D := by
        rcases hpP.dvd_mul.mp h with h1 | h1
        · rcases hpP.dvd_mul.mp h1 with h2 | h2
          · exact absurd h2 hp4
          · exact Or.inl h2
        · exact Or.inr h1
      rcases h' with h2 | h2
      · have : |C| < (p : ℤ) := by
          nlinarith [abs_nonneg C, sq_abs C, abs_pos.mpr hCne]
        exact strict_pinch_int (p : ℤ) C hp0 h2 hCne this
      · have : |D| < (p : ℤ) := by
          nlinarith [abs_nonneg D, sq_abs D, abs_pos.mpr hDne]
        exact strict_pinch_int (p : ℤ) D hp0 h2 hDne this
