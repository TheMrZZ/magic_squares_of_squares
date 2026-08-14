/-
The valuation engine of Theorem C.

If the difference set D(e) has pairwise distinct p-adic valuations — which
holds whenever the center root e has a single prime ≡ 1 (mod 4), by the
ℤ[i] classification of representations — then no u, v, u+v, u−v can all lie
in D(e), so no magic square of squares with that center exists.
-/
import Mathlib

/-- If ν_p(u) ≠ ν_p(v), then u+v and u−v have the same p-adic valuation
(both equal to the min). -/
theorem valuation_clash {p : ℕ} [Fact (Nat.Prime p)] (u v : ℚ)
    (hu : u ≠ 0) (hv : v ≠ 0) (hs : u + v ≠ 0) (hd : u - v ≠ 0)
    (hne : padicValRat p u ≠ padicValRat p v) :
    padicValRat p (u + v) = padicValRat p (u - v) := by
  have h1 := padicValRat.add_eq_min hs hu hv hne
  have hnv : (-v : ℚ) ≠ 0 := neg_ne_zero.mpr hv
  have hne' : padicValRat p u ≠ padicValRat p (-v) := by
    simpa [padicValRat.neg] using hne
  have h2 := padicValRat.add_eq_min (q := u) (r := -v)
    (by simpa [sub_eq_add_neg] using hd) hu hnv hne'
  rw [h1]
  rw [sub_eq_add_neg, h2, padicValRat.neg]

/-- **Theorem C, abstract engine.**  A set of nonzero rationals with pairwise
distinct p-adic valuations cannot contain u, v, u+v and u−v with u ≠ v.
Instantiated with D(e) for a center root e having exactly one prime ≡ 1
(mod 4), whose differences have pairwise distinct p-adic valuations
{0, 2, …, 2a−2}, this rules out every such center. -/
theorem no_magic_config_of_injective_valuation {p : ℕ} [Fact (Nat.Prime p)]
    (D : Finset ℚ) (h0 : (0 : ℚ) ∉ D)
    (hinj : Set.InjOn (padicValRat p) ↑D)
    (u v : ℚ) (hu : u ∈ D) (hv : v ∈ D) (huv : u ≠ v)
    (hs : u + v ∈ D) (hd : u - v ∈ D) : False := by
  have hu0 : u ≠ 0 := fun h => h0 (h ▸ hu)
  have hv0 : v ≠ 0 := fun h => h0 (h ▸ hv)
  have hs0 : u + v ≠ 0 := fun h => h0 (h ▸ hs)
  have hd0 : u - v ≠ 0 := fun h => h0 (h ▸ hd)
  have hne : padicValRat p u ≠ padicValRat p v :=
    fun h => huv (hinj (Finset.mem_coe.mpr hu) (Finset.mem_coe.mpr hv) h)
  have heq := valuation_clash (p := p) u v hu0 hv0 hs0 hd0 hne
  have hsame : u + v = u - v :=
    hinj (Finset.mem_coe.mpr hs) (Finset.mem_coe.mpr hd) heq
  have : v = 0 := by linarith
  exact hv0 this
