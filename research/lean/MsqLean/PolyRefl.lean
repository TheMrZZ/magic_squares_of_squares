/-
Reflection core for the certificate pipeline: sparse integer polynomials
in four variables as data, with evaluation, addition and multiplication,
and the once-proved lemmas that let every Rust-computed identity be
checked by `decide` on data instead of `ring` on expressions.
-/
import Mathlib

namespace PolyRefl

/-- A monomial: exponents of the four variables. -/
abbrev Mono := ℕ × ℕ × ℕ × ℕ

/-- A sparse polynomial: a list of (monomial, coefficient) pairs.
The list need not be normalized; evaluation is the semantics. -/
abbrev SPoly := List (Mono × ℤ)

variable {R : Type*} [CommRing R]

/-- Evaluation at a point of any commutative ring (coefficients cast). -/
def eval (P : SPoly) (u v x y : R) : R :=
  P.foldr (fun t acc =>
    acc + (t.2 : R) * u ^ t.1.1 * v ^ t.1.2.1 * x ^ t.1.2.2.1 * y ^ t.1.2.2.2) 0

@[simp] lemma eval_nil (u v x y : R) : eval ([] : SPoly) u v x y = 0 := rfl

@[simp] lemma eval_cons (t : Mono × ℤ) (P : SPoly) (u v x y : R) :
    eval (t :: P) u v x y
      = eval P u v x y + (t.2 : R) * u ^ t.1.1 * v ^ t.1.2.1 * x ^ t.1.2.2.1 * y ^ t.1.2.2.2 :=
  rfl

/-- Concatenation evaluates to the sum. -/
lemma eval_append (P Q : SPoly) (u v x y : R) :
    eval (P ++ Q) u v x y = eval P u v x y + eval Q u v x y := by
  induction P with
  | nil => simp
  | cons t P ih => simp [ih]; ring

/-- Scalar-monomial multiple of a polynomial, as data. -/
def mulTerm (t : Mono × ℤ) (P : SPoly) : SPoly :=
  P.map (fun q => ((q.1.1 + t.1.1, q.1.2.1 + t.1.2.1,
                    q.1.2.2.1 + t.1.2.2.1, q.1.2.2.2 + t.1.2.2.2), q.2 * t.2))

lemma eval_mulTerm (t : Mono × ℤ) (P : SPoly) (u v x y : R) :
    eval (mulTerm t P) u v x y
      = ((t.2 : R) * u ^ t.1.1 * v ^ t.1.2.1 * x ^ t.1.2.2.1 * y ^ t.1.2.2.2)
        * eval P u v x y := by
  induction P with
  | nil => simp [mulTerm]
  | cons q P ih =>
    simp only [mulTerm, List.map_cons, eval_cons] at *
    rw [ih]
    push_cast
    simp only [pow_add]
    ring

/-- Product of two polynomials, as data. -/
def mul (P Q : SPoly) : SPoly :=
  P.foldr (fun t acc => mulTerm t Q ++ acc) []

lemma eval_mul (P Q : SPoly) (u v x y : R) :
    eval (mul P Q) u v x y = eval P u v x y * eval Q u v x y := by
  induction P with
  | nil => simp [mul]
  | cons t P ih =>
    simp only [mul, List.foldr_cons, eval_append, eval_cons]
    have : eval (P.foldr (fun t acc => mulTerm t Q ++ acc) []) u v x y
        = eval P u v x y * eval Q u v x y := ih
    rw [eval_mulTerm, this]
    ring

/-- Lexicographic Bool comparison of monomials (any fixed total order
works; both sides of every identity use the same `normalize`). -/
def mlt (a b : Mono) : Bool :=
  if a.1 ≠ b.1 then a.1 < b.1
  else if a.2.1 ≠ b.2.1 then a.2.1 < b.2.1
  else if a.2.2.1 ≠ b.2.2.1 then a.2.2.1 < b.2.2.1
  else a.2.2.2 < b.2.2.2

/-- Insert a term into a sorted-by-monomial list, merging coefficients. -/
def insertTerm (t : Mono × ℤ) : List (Mono × ℤ) → List (Mono × ℤ)
  | [] => [t]
  | q :: rest =>
    if t.1 = q.1 then (q.1, q.2 + t.2) :: rest
    else if mlt t.1 q.1 then t :: q :: rest
    else q :: insertTerm t rest

lemma eval_insertTerm (t : Mono × ℤ) (P : List (Mono × ℤ)) (u v x y : R) :
    eval (insertTerm t P) u v x y = eval (t :: P) u v x y := by
  induction P with
  | nil => simp [insertTerm]
  | cons q rest ih =>
    by_cases h1 : t.1 = q.1
    · simp only [insertTerm, if_pos h1, eval_cons]
      rw [h1]
      push_cast
      ring
    · by_cases h2 : mlt t.1 q.1
      · simp only [insertTerm, if_neg h1, if_pos h2, eval_cons]
        try ring
      · simp only [insertTerm, if_neg h1, if_neg h2, eval_cons]
        rw [ih]
        simp only [eval_cons]
        ring

/-- Normal form: sorted, merged; then zero coefficients dropped. -/
def normalize (P : SPoly) : List (Mono × ℤ) :=
  (P.foldr insertTerm []).filter (fun t => t.2 ≠ 0)

lemma eval_filter_ne_zero (P : List (Mono × ℤ)) (u v x y : R) :
    eval (P.filter (fun t => t.2 ≠ 0)) u v x y = eval P u v x y := by
  induction P with
  | nil => simp
  | cons t rest ih =>
    simp only [ne_eq, decide_not] at ih
    by_cases h : t.2 = 0
    · have hd : (decide ¬(t.2 = 0)) = false := by simp [h]
      simp [List.filter_cons, hd, ih, h]
    · simp [List.filter_cons, h, ih]

lemma eval_normalize (P : SPoly) (u v x y : R) :
    eval (normalize P) u v x y = eval P u v x y := by
  unfold normalize
  rw [eval_filter_ne_zero]
  induction P with
  | nil => simp
  | cons t rest ih =>
    simp only [List.foldr_cons]
    rw [eval_insertTerm]
    simp only [eval_cons, ih]

/-- The bridge: equal normal forms give equal evaluations everywhere.
Certificate files check `normalize P = normalize Q` by `decide`. -/
lemma eval_eq_of_normalize_eq {P Q : SPoly}
    (h : normalize P = normalize Q) (u v x y : R) :
    eval P u v x y = eval Q u v x y := by
  rw [← eval_normalize P, ← eval_normalize Q, h]


/-- A ring homomorphism commutes with evaluation. -/
lemma eval_map {S : Type*} [CommRing S] (f : R →+* S) (P : SPoly) (u v x y : R) :
    f (eval P u v x y) = eval P (f u) (f v) (f x) (f y) := by
  induction P with
  | nil => simp
  | cons t P ih => simp [map_add, map_mul, map_pow, map_intCast, ih]


/-- A factorization certificate on data gives a factorization of values. -/
lemma eval_factor (P Q₁ Q₂ : SPoly) (h : normalize (mul Q₁ Q₂) = normalize P)
    (u v x y : R) :
    eval P u v x y = eval Q₁ u v x y * eval Q₂ u v x y := by
  rw [← eval_mul]
  exact (eval_eq_of_normalize_eq h u v x y).symm

/-- A Bezout certificate on data: A·F + B·G = C as normalized lists implies
the same identity of values. This is the shape of one elimination step of
the certifier (a resultant with its cofactors). -/
lemma eval_bezout (A F B G C : SPoly)
    (h : normalize (mul A F ++ mul B G) = normalize C) (u v x y : R) :
    eval A u v x y * eval F u v x y + eval B u v x y * eval G u v x y
      = eval C u v x y := by
  have h1 := eval_eq_of_normalize_eq h u v x y
  rwa [eval_append, eval_mul, eval_mul] at h1

/-- Two vanishing inputs and a Bezout certificate kill the output:
if F and G vanish at the point, the eliminant C vanishes too. Combined
with a certificate lemma `eval C ≠ 0`, this closes an elimination leaf. -/
lemma bezout_kill (A F B G C : SPoly) (u v x y : R)
    (h : normalize (mul A F ++ mul B G) = normalize C)
    (hF : eval F u v x y = 0) (hG : eval G u v x y = 0) :
    eval C u v x y = 0 := by
  have h1 := eval_bezout A F B G C h u v x y
  rw [hF, hG] at h1
  simpa using h1.symm

end PolyRefl
