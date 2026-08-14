/-
The D(e) reduction, machine-checked (over ℤ, which is the natural home:
entries are squares either way and subtraction is total).

Forward: four Pythagorean representations of e² whose products satisfy the
additive relation give a fully magic 3×3 square all of whose entries are
perfect squares.

Converse: a fully magic 3×3 square of perfect squares with center e² yields
four such representations.  Together: the exhaustive computer search over
centers e is exhaustive over ALL magic squares of squares.
-/
import Mathlib

/-- A cell value is a perfect square. -/
def IsSq (z : ℤ) : Prop := ∃ t : ℤ, z = t ^ 2

/-- **Forward direction.**  Given four representations
`xᵢ² + yᵢ² = e²` with `2x₁y₁ = u`, `2x₂y₂ = v`, `2x₃y₃ = u + v`,
`2x₄y₄ = u − v`, the standard grid built from `c = e²`, `u`, `v` is fully
magic (all eight lines sum to `3c`) and consists of nine perfect squares. -/
theorem forward_reduction
    (e x1 y1 x2 y2 x3 y3 x4 y4 u v : ℤ)
    (h1 : x1 ^ 2 + y1 ^ 2 = e ^ 2) (h2 : x2 ^ 2 + y2 ^ 2 = e ^ 2)
    (h3 : x3 ^ 2 + y3 ^ 2 = e ^ 2) (h4 : x4 ^ 2 + y4 ^ 2 = e ^ 2)
    (hu : 2 * x1 * y1 = u) (hv : 2 * x2 * y2 = v)
    (hs : 2 * x3 * y3 = u + v) (hd : 2 * x4 * y4 = u - v) :
    -- the grid  [c+u, c−u−v, c+v; c−u+v, c, c+u−v; c−v, c+u+v, c−u], c = e²
    (∀ z ∈ [e^2 + u, e^2 - u - v, e^2 + v,
            e^2 - u + v, e^2, e^2 + u - v,
            e^2 - v, e^2 + u + v, e^2 - u], IsSq z) ∧
    ((e^2 + u) + (e^2 - u - v) + (e^2 + v) = 3 * e^2 ∧
     (e^2 - u + v) + e^2 + (e^2 + u - v) = 3 * e^2 ∧
     (e^2 - v) + (e^2 + u + v) + (e^2 - u) = 3 * e^2 ∧
     (e^2 + u) + (e^2 - u + v) + (e^2 - v) = 3 * e^2 ∧
     (e^2 - u - v) + e^2 + (e^2 + u + v) = 3 * e^2 ∧
     (e^2 + v) + (e^2 + u - v) + (e^2 - u) = 3 * e^2 ∧
     (e^2 + u) + e^2 + (e^2 - u) = 3 * e^2 ∧
     (e^2 - v) + e^2 + (e^2 + v) = 3 * e^2) := by
  constructor
  · intro z hz
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hz
    rcases hz with h|h|h|h|h|h|h|h|h <;> subst h
    · exact ⟨x1 + y1, by nlinarith⟩
    · exact ⟨x3 - y3, by nlinarith⟩
    · exact ⟨x2 + y2, by nlinarith⟩
    · exact ⟨x4 - y4, by nlinarith⟩
    · exact ⟨e, rfl⟩
    · exact ⟨x4 + y4, by nlinarith⟩
    · exact ⟨x2 - y2, by nlinarith⟩
    · exact ⟨x3 + y3, by nlinarith⟩
    · exact ⟨x1 - y1, by nlinarith⟩
  · refine ⟨by ring, by ring, by ring, by ring, by ring, by ring, by ring, by ring⟩

/-- Center-line lemma: two squares averaging to a square give a Pythagorean
representation whose product term is half their difference.  (`a² + i² = 2e²`
⇒ `x = (i−a)/2`, `y = (i+a)/2` works, parity coming for free from the sum
being even.) -/
theorem centerline_to_rep (a i e : ℤ) (h : a ^ 2 + i ^ 2 = 2 * e ^ 2) :
    ∃ x y : ℤ, x ^ 2 + y ^ 2 = e ^ 2 ∧ 4 * x * y = 2 * (i ^ 2 - e ^ 2) := by
  have hpar : (2 : ℤ) ∣ (i - a) := by
    rcases Int.even_or_odd i with ⟨k, hk⟩ | ⟨k, hk⟩ <;>
      rcases Int.even_or_odd a with ⟨l, hl⟩ | ⟨l, hl⟩
    · exact ⟨k - l, by omega⟩
    · exfalso
      have hmod : a ^ 2 + i ^ 2 = 4 * (l ^ 2 + l + k ^ 2) + 1 := by
        subst hk hl; ring
      omega
    · exfalso
      have hmod : a ^ 2 + i ^ 2 = 4 * (k ^ 2 + k + l ^ 2) + 1 := by
        subst hk hl; ring
      omega
    · exact ⟨k - l, by omega⟩
  obtain ⟨x, hx⟩ := hpar
  have ha : a = i - 2 * x := by omega
  subst ha
  refine ⟨x, i - x, ?_, by linear_combination -h⟩
  have h2 : 2 * (x ^ 2 + (i - x) ^ 2) = 2 * e ^ 2 := by linear_combination h
  linarith

/-- **Converse direction.**  A fully magic 3×3 square of perfect squares with
center `E = e²` yields four Pythagorean representations of `e²` whose product
terms are `u`, `v`, `u+v`, `u−v` where `u = A − e²`, `v = C − e²`.
Hence the center-root search over `D(e)` is exhaustive over ALL magic squares
of squares. -/
theorem converse_reduction
    (A B C D E F G H I S : ℤ)
    (sqA : IsSq A) (sqB : IsSq B) (sqC : IsSq C) (sqD : IsSq D) (sqE : IsSq E)
    (sqF : IsSq F) (sqG : IsSq G) (sqH : IsSq H) (sqI : IsSq I)
    (r1 : A + B + C = S) (r2 : D + E + F = S) (r3 : G + H + I = S)
    (c1 : A + D + G = S) (c2 : B + E + H = S) (c3 : C + F + I = S)
    (d1 : A + E + I = S) (d2 : C + E + G = S) :
    ∃ (e u v x1 y1 x2 y2 x3 y3 x4 y4 : ℤ),
      E = e ^ 2 ∧ A = e ^ 2 + u ∧ C = e ^ 2 + v ∧
      x1 ^ 2 + y1 ^ 2 = e ^ 2 ∧ 2 * x1 * y1 = u ∧
      x2 ^ 2 + y2 ^ 2 = e ^ 2 ∧ 2 * x2 * y2 = v ∧
      x3 ^ 2 + y3 ^ 2 = e ^ 2 ∧ 2 * x3 * y3 = u + v ∧
      x4 ^ 2 + y4 ^ 2 = e ^ 2 ∧ 2 * x4 * y4 = u - v := by
  obtain ⟨e, he⟩ := sqE
  obtain ⟨tA, hA⟩ := sqA
  obtain ⟨tB, hB⟩ := sqB
  obtain ⟨tC, hC⟩ := sqC
  obtain ⟨tD, hD⟩ := sqD
  obtain ⟨tF, hF⟩ := sqF
  obtain ⟨tG, hG⟩ := sqG
  obtain ⟨tH, hH⟩ := sqH
  obtain ⟨tI, hI⟩ := sqI
  have hS : S = 3 * E := by omega
  -- the four center lines are square pairs averaging to e²
  obtain ⟨x1, y1, hxy1, hp1⟩ := centerline_to_rep tI tA e (by omega)
  obtain ⟨x2, y2, hxy2, hp2⟩ := centerline_to_rep tG tC e (by omega)
  obtain ⟨x3, y3, hxy3, hp3⟩ := centerline_to_rep tB tH e (by omega)
  obtain ⟨x4, y4, hxy4, hp4⟩ := centerline_to_rep tD tF e (by omega)
  refine ⟨e, A - e ^ 2, C - e ^ 2, x1, y1, x2, y2, x3, y3, x4, y4,
    by omega, by ring_nf, by ring_nf, hxy1, ?_, hxy2, ?_, hxy3, ?_, hxy4, ?_⟩
  · linarith [hp1]
  · linarith [hp2]
  · -- 2 x₃ y₃ = (A − e²) + (C − e²):  H − E = u + v
    have hH2E : tH ^ 2 = 2 * E - tB ^ 2 := by omega
    have hBval : tB ^ 2 = 3 * E - A - C := by omega
    linarith [hp3]
  · -- 2 x₄ y₄ = (A − e²) − (C − e²):  F − E = u − v
    have hDval : tD ^ 2 = E - A + C := by omega
    have hFval : tF ^ 2 = E + A - C := by omega
    linarith [hp4]
