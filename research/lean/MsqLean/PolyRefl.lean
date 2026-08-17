/-
Reflection core for the certificate pipeline: sparse integer polynomials
in four variables as data, with evaluation, addition and multiplication,
and the once-proved lemmas that let every Rust-computed identity be
checked by `decide` on data instead of `ring` on expressions.
-/
import Mathlib

namespace PolyRefl

/-- A monomial: exponents of the five variables (r, s, q, X, Y). -/
abbrev Mono := ℕ × ℕ × ℕ × ℕ × ℕ

/-- Literal-friendly constructor: one plain application per data entry,
so giant generated lists elaborate without tuple-sugar unification. -/
def mkT (a b c d e : ℕ) (co : ℤ) : (ℕ × ℕ × ℕ × ℕ × ℕ) × ℤ :=
  ((a, b, c, d, e), co)

/-- A sparse polynomial: a list of (monomial, coefficient) pairs.
The list need not be normalized; evaluation is the semantics. -/
abbrev SPoly := List (Mono × ℤ)

variable {R : Type*} [CommRing R]

/-- Fueled binary exponentiation: log-many kernel multiplications where
`Monoid.npow` needs linearly many. Fuel exhaustion falls back to `^`. -/
def powF : ℕ → R → ℕ → R
  | _, _, 0 => 1
  | 0, x, n => x ^ n
  | fuel + 1, x, n + 1 =>
    let h := powF fuel x ((n + 1) / 2)
    if (n + 1) % 2 = 0 then h * h else x * (h * h)

lemma powF_eq (fuel : ℕ) (x : R) (n : ℕ) : powF fuel x n = x ^ n := by
  induction fuel generalizing n with
  | zero => cases n <;> simp [powF]
  | succ fuel ih =>
    cases n with
    | zero => simp [powF]
    | succ m =>
      simp only [powF, ih]
      by_cases h : (m + 1) % 2 = 0
      · rw [if_pos h, ← pow_add]
        congr 1
        omega
      · rw [if_neg h, ← pow_add, ← pow_succ']
        congr 1
        omega

/-- Evaluation at a point of any commutative ring (coefficients cast). -/
def eval (P : SPoly) (u v x y z : R) : R :=
  P.foldr (fun t acc =>
    acc + (t.2 : R) * powF t.1.1 u t.1.1 * powF t.1.2.1 v t.1.2.1
        * powF t.1.2.2.1 x t.1.2.2.1 * powF t.1.2.2.2.1 y t.1.2.2.2.1
        * powF t.1.2.2.2.2 z t.1.2.2.2.2) 0

@[simp] lemma eval_nil (u v x y z : R) : eval ([] : SPoly) u v x y z = 0 := rfl

@[simp] lemma eval_cons (t : Mono × ℤ) (P : SPoly) (u v x y z : R) :
    eval (t :: P) u v x y z
      = eval P u v x y z + (t.2 : R) * u ^ t.1.1 * v ^ t.1.2.1 * x ^ t.1.2.2.1
        * y ^ t.1.2.2.2.1 * z ^ t.1.2.2.2.2 := by
  simp only [eval, List.foldr_cons, powF_eq]

/-- Concatenation evaluates to the sum. -/
lemma eval_append (P Q : SPoly) (u v x y z : R) :
    eval (P ++ Q) u v x y z = eval P u v x y z + eval Q u v x y z := by
  induction P with
  | nil => simp
  | cons t P ih => simp [ih]; ring

/-- Scalar-monomial multiple of a polynomial, as data. -/
def mulTerm (t : Mono × ℤ) (P : SPoly) : SPoly :=
  P.map (fun q => ((q.1.1 + t.1.1, q.1.2.1 + t.1.2.1, q.1.2.2.1 + t.1.2.2.1,
                    q.1.2.2.2.1 + t.1.2.2.2.1, q.1.2.2.2.2 + t.1.2.2.2.2), q.2 * t.2))

lemma eval_mulTerm (t : Mono × ℤ) (P : SPoly) (u v x y z : R) :
    eval (mulTerm t P) u v x y z
      = ((t.2 : R) * u ^ t.1.1 * v ^ t.1.2.1 * x ^ t.1.2.2.1
          * y ^ t.1.2.2.2.1 * z ^ t.1.2.2.2.2)
        * eval P u v x y z := by
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

lemma eval_mul (P Q : SPoly) (u v x y z : R) :
    eval (mul P Q) u v x y z = eval P u v x y z * eval Q u v x y z := by
  induction P with
  | nil => simp [mul]
  | cons t P ih =>
    simp only [mul, List.foldr_cons, eval_append, eval_cons]
    have : eval (P.foldr (fun t acc => mulTerm t Q ++ acc) []) u v x y z
        = eval P u v x y z * eval Q u v x y z := ih
    rw [eval_mulTerm, this]
    ring

/-- Lexicographic Bool comparison of monomials (any fixed total order
works; both sides of every identity use the same `normalize`). -/
def mlt (a b : Mono) : Bool :=
  if a.1 ≠ b.1 then a.1 < b.1
  else if a.2.1 ≠ b.2.1 then a.2.1 < b.2.1
  else if a.2.2.1 ≠ b.2.2.1 then a.2.2.1 < b.2.2.1
  else if a.2.2.2.1 ≠ b.2.2.2.1 then a.2.2.2.1 < b.2.2.2.1
  else a.2.2.2.2 < b.2.2.2.2

/-- Insert a term into a sorted-by-monomial list, merging coefficients. -/
def insertTerm (t : Mono × ℤ) : List (Mono × ℤ) → List (Mono × ℤ)
  | [] => [t]
  | q :: rest =>
    if t.1 = q.1 then (q.1, q.2 + t.2) :: rest
    else if mlt t.1 q.1 then t :: q :: rest
    else q :: insertTerm t rest

lemma eval_insertTerm (t : Mono × ℤ) (P : List (Mono × ℤ)) (u v x y z : R) :
    eval (insertTerm t P) u v x y z = eval (t :: P) u v x y z := by
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

lemma eval_filter_ne_zero (P : List (Mono × ℤ)) (u v x y z : R) :
    eval (P.filter (fun t => t.2 ≠ 0)) u v x y z = eval P u v x y z := by
  induction P with
  | nil => simp
  | cons t rest ih =>
    simp only [ne_eq, decide_not] at ih
    by_cases h : t.2 = 0
    · have hd : (decide ¬(t.2 = 0)) = false := by simp [h]
      simp [List.filter_cons, hd, ih, h]
    · simp [List.filter_cons, h, ih]

lemma eval_normalize (P : SPoly) (u v x y z : R) :
    eval (normalize P) u v x y z = eval P u v x y z := by
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
    (h : normalize P = normalize Q) (u v x y z : R) :
    eval P u v x y z = eval Q u v x y z := by
  rw [← eval_normalize P, ← eval_normalize Q, h]


/-- Total linear "≤" on monomials for mergesort. -/
def mle (a b : Mono) : Bool := mlt a b || a == b

/-- Alternating split (structural, kernel-reducible). -/
def split2 : List (Mono × ℤ) → List (Mono × ℤ) × List (Mono × ℤ)
  | [] => ([], [])
  | x :: rest => let (l, r) := split2 rest; (x :: r, l)

lemma eval_split2 (P : List (Mono × ℤ)) (u v x y z : R) :
    eval (split2 P).1 u v x y z + eval (split2 P).2 u v x y z = eval P u v x y z := by
  induction P with
  | nil => simp [split2]
  | cons t rest ih =>
    simp only [split2, eval_cons]
    rw [← ih]
    ring

/-- Fueled merge of two mle-sorted lists (structural, kernel-reducible). -/
def mergeF : ℕ → List (Mono × ℤ) → List (Mono × ℤ) → List (Mono × ℤ)
  | _, [], l2 => l2
  | _, l1, [] => l1
  | 0, l1, l2 => l1 ++ l2
  | fuel + 1, a :: l1, b :: l2 =>
    if mle a.1 b.1 then a :: mergeF fuel l1 (b :: l2)
    else b :: mergeF fuel (a :: l1) l2

lemma eval_mergeF (fuel : ℕ) (P Q : List (Mono × ℤ)) (u v x y z : R) :
    eval (mergeF fuel P Q) u v x y z = eval P u v x y z + eval Q u v x y z := by
  induction fuel generalizing P Q with
  | zero => cases P with
    | nil => simp [mergeF]
    | cons a l1 => cases Q with
      | nil => simp [mergeF]
      | cons b l2 => simp [mergeF, eval_append]; ring
  | succ fuel ih =>
    cases P with
    | nil => simp [mergeF]
    | cons a l1 => cases Q with
      | nil => simp [mergeF]
      | cons b l2 =>
        by_cases h : mle a.1 b.1
        · simp only [mergeF, if_pos h, eval_cons, ih]
          ring
        · simp only [mergeF, if_neg h, eval_cons, ih]
          ring

/-- Fueled mergesort (structural, kernel-reducible). -/
def msortF : ℕ → List (Mono × ℤ) → List (Mono × ℤ)
  | _, [] => []
  | _, [t] => [t]
  | 0, l => l
  | fuel + 1, l =>
    let (a, b) := split2 l
    mergeF (a.length + b.length) (msortF fuel a) (msortF fuel b)

lemma eval_msortF (fuel : ℕ) (P : List (Mono × ℤ)) (u v x y z : R) :
    eval (msortF fuel P) u v x y z = eval P u v x y z := by
  induction fuel generalizing P with
  | zero => cases P with
    | nil => rfl
    | cons t rest => cases rest <;> rfl
  | succ fuel ih =>
    cases hP : P with
    | nil => rfl
    | cons t rest =>
      cases rest with
      | nil => rfl
      | cons t2 rest2 =>
        show eval (mergeF _ (msortF fuel (split2 (t :: t2 :: rest2)).1)
                            (msortF fuel (split2 (t :: t2 :: rest2)).2)) u v x y z = _
        rw [eval_mergeF, ih, ih, eval_split2]

/-- Fueled adjacent-combine of equal monomials (structural). -/
def combineF : ℕ → List (Mono × ℤ) → List (Mono × ℤ)
  | _, [] => []
  | _, [t] => [t]
  | 0, l => l
  | fuel + 1, a :: b :: rest =>
    if a.1 = b.1 then combineF fuel ((a.1, a.2 + b.2) :: rest)
    else a :: combineF fuel (b :: rest)

lemma eval_combineF (fuel : ℕ) (P : List (Mono × ℤ)) (u v x y z : R) :
    eval (combineF fuel P) u v x y z = eval P u v x y z := by
  induction fuel generalizing P with
  | zero => cases P with
    | nil => rfl
    | cons t rest => cases rest <;> rfl
  | succ fuel ih =>
    cases P with
    | nil => rfl
    | cons a rest =>
      cases rest with
      | nil => rfl
      | cons b rest2 =>
        by_cases h : a.1 = b.1
        · simp only [combineF, if_pos h, ih, eval_cons]
          rw [← h]
          push_cast
          ring
        · simp only [combineF, if_neg h, eval_cons, ih]

/-- Mergesort-based normal form: n·log n in the kernel instead of the
insertion sort's n². Only soundness is used: equal fast normal forms
give equal evaluations. -/
def normalizeFast (P : SPoly) : List (Mono × ℤ) :=
  (combineF P.length (msortF P.length P)).filter (fun t => t.2 ≠ 0)

lemma eval_normalizeFast (P : SPoly) (u v x y z : R) :
    eval (normalizeFast P) u v x y z = eval P u v x y z := by
  unfold normalizeFast
  rw [eval_filter_ne_zero, eval_combineF, eval_msortF]

/-- The fast bridge: equal fast normal forms give equal evaluations. -/
lemma eval_eq_of_normalizeFast_eq {P Q : SPoly}
    (h : normalizeFast P = normalizeFast Q) (u v x y z : R) :
    eval P u v x y z = eval Q u v x y z := by
  rw [← eval_normalizeFast P, ← eval_normalizeFast Q, h]

/-- A ring homomorphism commutes with evaluation. -/
lemma eval_map {S : Type*} [CommRing S] (f : R →+* S) (P : SPoly) (u v x y z : R) :
    f (eval P u v x y z) = eval P (f u) (f v) (f x) (f y) (f z) := by
  induction P with
  | nil => simp
  | cons t P ih => simp [map_add, map_mul, map_pow, map_intCast, ih]


/-- A factorization certificate on data gives a factorization of values. -/
lemma eval_factor (P Q₁ Q₂ : SPoly) (h : normalizeFast (mul Q₁ Q₂) = normalizeFast P)
    (u v x y z : R) :
    eval P u v x y z = eval Q₁ u v x y z * eval Q₂ u v x y z := by
  rw [← eval_mul]
  exact (eval_eq_of_normalizeFast_eq h u v x y z).symm

/-- A Bezout certificate on data: A·F + B·G = C as normalized lists implies
the same identity of values. This is the shape of one elimination step of
the certifier (a resultant with its cofactors). -/
lemma eval_bezout (A F B G C : SPoly)
    (h : normalizeFast (mul A F ++ mul B G) = normalizeFast C) (u v x y z : R) :
    eval A u v x y z * eval F u v x y z + eval B u v x y z * eval G u v x y z
      = eval C u v x y z := by
  have h1 := eval_eq_of_normalizeFast_eq h u v x y z
  rwa [eval_append, eval_mul, eval_mul] at h1

/-- Two vanishing inputs and a Bezout certificate kill the output:
if F and G vanish at the point, the eliminant C vanishes too. Combined
with a certificate lemma `eval C ≠ 0`, this closes an elimination leaf. -/
lemma bezout_kill (A F B G C : SPoly) (u v x y z : R)
    (h : normalizeFast (mul A F ++ mul B G) = normalizeFast C)
    (hF : eval F u v x y z = 0) (hG : eval G u v x y z = 0) :
    eval C u v x y z = 0 := by
  have h1 := eval_bezout A F B G C h u v x y z
  rw [hF, hG] at h1
  simpa using h1.symm

/-- Positions 3, 4, 5 (q, X, Y) do not matter for a form whose data
carries zero exponents there. The router uses this to connect the
certificate statements (evaluated at 1) to the chain points. -/
lemma eval_qxy_free (P : SPoly)
    (h : P.all (fun t => t.1.2.2.1 == 0 && t.1.2.2.2.1 == 0 && t.1.2.2.2.2 == 0) = true)
    (u v x y z x' y' z' : R) :
    eval P u v x y z = eval P u v x' y' z' := by
  induction P with
  | nil => rfl
  | cons t rest ih =>
    simp only [List.all_cons, Bool.and_eq_true, beq_iff_eq] at h
    obtain ⟨⟨⟨h3, h4⟩, h5⟩, hrest⟩ := h
    rw [eval_cons, eval_cons, ih (by simpa using hrest), h3, h4, h5]
    simp

end PolyRefl
