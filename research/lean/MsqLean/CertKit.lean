/-
The certificate kit: the kill-primitive lemmas that the generated
certificate files apply. Each lemma proves a nonvanishing statement used
by the (a,b) certifier pipeline.

Admissible points: (r, s) = (Re π², Im π²) with r odd, s even, both
nonzero, coprime. The coordinate facts live in UniformAInt (re_2a_odd,
im_2a_even, coords_2a_ne_zero, coprime_2a).
-/
import Mathlib
import MsqLean.PolyRefl

namespace CertKit

/-- The parity gate. At an admissible point (r odd, s even), any integer
combination whose terms all carry an s-factor except one odd leading term
is odd, hence nonzero. Stated for the split the generator emits:
value = lead * r^N + s * rest, with lead odd. -/
lemma parity_gate {r s lead rest v : ℤ} (N : ℕ)
    (hr : Odd r) (hs : Even s) (hlead : Odd lead)
    (hv : v = lead * r ^ N + s * rest) : v ≠ 0 := by
  intro h0
  have hodd : Odd (lead * r ^ N) := hlead.mul hr.pow
  have heven : Even (s * rest) := hs.mul_right rest
  rw [hv] at h0
  rcases hodd with ⟨a, ha⟩
  rcases heven with ⟨b, hb⟩
  omega

/-- Two-adic valuation of a square is even; of 2^e times an odd number is
e. The gate: a square never equals 2^e times an odd number for odd e. -/
lemma two_adic_gate {x w : ℤ} (e : ℕ) (he : Odd e) (hw : Odd w) :
    x ^ 2 ≠ 2 ^ e * w := by
  intro h
  have hw0 : w ≠ 0 := by rcases hw with ⟨k, hk⟩; omega
  have hx0 : x ≠ 0 := by
    intro h0
    rw [h0] at h
    have hne := mul_ne_zero (pow_ne_zero e (two_ne_zero' ℤ)) hw0
    exact hne (by linarith [h])
  have hnat : x.natAbs ^ 2 = 2 ^ e * w.natAbs := by
    have hh := congrArg Int.natAbs h
    simpa [Int.natAbs_pow, Int.natAbs_mul] using hh
  have hwodd : ¬ 2 ∣ w.natAbs := by
    rcases hw with ⟨k, hk⟩
    omega
  have hxa : x.natAbs ≠ 0 := Int.natAbs_ne_zero.mpr hx0
  have hwa : w.natAbs ≠ 0 := Int.natAbs_ne_zero.mpr hw0
  have h1 : (x.natAbs ^ 2).factorization 2 = 2 * x.natAbs.factorization 2 := by
    simp [Nat.factorization_pow]
  have h2 : ((2 ^ e * w.natAbs)).factorization 2 = e := by
    rw [Nat.factorization_mul (pow_ne_zero e two_ne_zero) hwa]
    have hp : Nat.Prime 2 := Nat.prime_two
    simp [Nat.factorization_pow, hp.factorization_self,
          Nat.factorization_eq_zero_of_not_dvd hwodd]
  rw [hnat, h2] at h1
  rcases he with ⟨k, hk⟩
  omega

/-- A square never equals 2 times a nonzero square (√2 is irrational,
integer form), by the same valuation parity. -/
lemma sq_ne_two_sq {x y : ℤ} (hy : y ≠ 0) : x ^ 2 ≠ 2 * y ^ 2 := by
  intro h
  have hx0 : x ≠ 0 := by
    intro h0
    rw [h0] at h
    have : y ^ 2 = 0 := by linarith
    exact hy ((pow_eq_zero_iff two_ne_zero).mp this)
  have hnat : x.natAbs ^ 2 = 2 * y.natAbs ^ 2 := by
    have hh := congrArg Int.natAbs h
    simpa [Int.natAbs_pow, Int.natAbs_mul] using hh
  have hxa : x.natAbs ≠ 0 := Int.natAbs_ne_zero.mpr hx0
  have hya : y.natAbs ≠ 0 := Int.natAbs_ne_zero.mpr hy
  have h1 : (x.natAbs ^ 2).factorization 2 = 2 * x.natAbs.factorization 2 := by
    simp [Nat.factorization_pow]
  have h2 : ((2 * y.natAbs ^ 2)).factorization 2
      = 1 + 2 * y.natAbs.factorization 2 := by
    rw [Nat.factorization_mul two_ne_zero (pow_ne_zero 2 hya)]
    have hp : Nat.Prime 2 := Nat.prime_two
    simp [Nat.factorization_pow, hp.factorization_self]
  rw [hnat, h2] at h1
  omega


/-- The projective mod-l sieve gate. If the form has no nonzero root over
`ZMod l`, then coprime integers cannot make it vanish: a zero would force
`l` to divide both coordinates. Primality is not needed; `2 <= l` is. -/
lemma sieve_gate (l : ℕ) [NeZero l] (hl : 2 ≤ l) (P : PolyRefl.SPoly)
    (hno : ∀ a b : ZMod l, PolyRefl.eval P a b 1 1 = 0 → a = 0 ∧ b = 0)
    {r s : ℤ} (hco : IsCoprime r s) :
    PolyRefl.eval P r s 1 1 ≠ 0 := by
  intro h0
  have hcast : PolyRefl.eval P (r : ZMod l) (s : ZMod l) 1 1 = 0 := by
    have h := congrArg (Int.castRingHom (ZMod l)) h0
    rw [PolyRefl.eval_map] at h
    simpa using h
  obtain ⟨ha, hb⟩ := hno _ _ hcast
  have hr : (l : ℤ) ∣ r := by
    exact_mod_cast (ZMod.intCast_zmod_eq_zero_iff_dvd r l).mp ha
  have hs : (l : ℤ) ∣ s := by
    exact_mod_cast (ZMod.intCast_zmod_eq_zero_iff_dvd s l).mp hb
  have hu := Int.isUnit_iff.mp (hco.isUnit_of_dvd' hr hs)
  rcases hu with h1 | h1 <;>
    [exact absurd (by exact_mod_cast h1 : l = 1) (by omega);
     (have := Int.natCast_nonneg l; omega)]


/-- The dyadic gate: v = 2^e·c₀·r^N + s^(e+1)·rest with c₀ odd, r odd,
s even has 2-adic valuation exactly e, so v ≠ 0. The parity gate is the
case e = 0. -/
lemma dyadic_gate (N e : ℕ) {c0 r s rest v : ℤ} (hr : Odd r) (hs : Even s)
    (hc : Odd c0) (hv : v = 2 ^ e * c0 * r ^ N + s ^ (e + 1) * rest) : v ≠ 0 := by
  obtain ⟨m, rfl⟩ := hs
  have hodd : Odd (c0 * r ^ N + 2 * m ^ (e + 1) * rest) := by
    have h1 : Odd (c0 * r ^ N) := hc.mul (hr.pow)
    obtain ⟨t, ht⟩ := h1
    exact ⟨t + m ^ (e + 1) * rest, by linarith⟩
  have hne : c0 * r ^ N + 2 * m ^ (e + 1) * rest ≠ 0 := by
    intro h; rw [h] at hodd; simp [Int.odd_iff] at hodd
  have hv2 : v = 2 ^ e * (c0 * r ^ N + 2 * m ^ (e + 1) * rest) := by
    rw [hv, show m + m = 2 * m by ring]
    rw [mul_pow, pow_succ]
    ring
  rw [hv2]
  exact mul_ne_zero (pow_ne_zero e two_ne_zero) hne

end CertKit
