/-
The Gaussian-power data layer of the value bridge. `reP n`/`imP n` are
the real and imaginary parts of (r + i·s)^n as sparse polynomials in the
variable pair (r, s) (positions 1, 2); `reX n`/`imX n` are the same for
(X + i·Y)^n in the pair (X, Y) (positions 4, 5). `reProd`/`imProd`
combine them into the parts of (r + i·s)^m · (X + i·Y)^n. The eval
lemmas tie each data object to the corresponding `GaussianInt` power, so
every class value of the layered model becomes a data polynomial
evaluated at (Re π², Im π², q, Re χ², Im χ²).
-/
import Mathlib
import MsqLean.PolyRefl

namespace GaussData

open PolyRefl

mutual
/-- Real part of (r + i·s)^n, as data. -/
def reP : ℕ → SPoly
  | 0 => [mkT 0 0 0 0 0 1]
  | n + 1 =>
    normalizeFast (mulTerm ((1, 0, 0, 0, 0), 1) (reP n)
      ++ mulTerm ((0, 1, 0, 0, 0), -1) (imP n))

/-- Imaginary part of (r + i·s)^n, as data. -/
def imP : ℕ → SPoly
  | 0 => []
  | n + 1 =>
    normalizeFast (mulTerm ((0, 1, 0, 0, 0), 1) (reP n)
      ++ mulTerm ((1, 0, 0, 0, 0), 1) (imP n))
end

mutual
/-- Real part of (X + i·Y)^n, as data. -/
def reX : ℕ → SPoly
  | 0 => [mkT 0 0 0 0 0 1]
  | n + 1 =>
    normalizeFast (mulTerm ((0, 0, 0, 1, 0), 1) (reX n)
      ++ mulTerm ((0, 0, 0, 0, 1), -1) (imX n))

/-- Imaginary part of (X + i·Y)^n, as data. -/
def imX : ℕ → SPoly
  | 0 => []
  | n + 1 =>
    normalizeFast (mulTerm ((0, 0, 0, 0, 1), 1) (reX n)
      ++ mulTerm ((0, 0, 0, 1, 0), 1) (imX n))
end

/-- Real part of (r + i·s)^m · (X + i·Y)^n, as data. -/
def reProd (m n : ℕ) : SPoly :=
  normalizeFast (mul (reP m) (reX n) ++ mulTerm ((0, 0, 0, 0, 0), -1) (mul (imP m) (imX n)))

/-- Imaginary part of (r + i·s)^m · (X + i·Y)^n, as data. -/
def imProd (m n : ℕ) : SPoly :=
  normalizeFast (mul (reP m) (imX n) ++ mul (imP m) (reX n))

open GaussianInt in
/-- The eval bridge for powers of π² = ⟨r, s⟩. -/
lemma eval_reP_imP (n : ℕ) (r s q X Y : ℤ) :
    ((⟨r, s⟩ : GaussianInt) ^ n).re = eval (reP n) r s q X Y
    ∧ ((⟨r, s⟩ : GaussianInt) ^ n).im = eval (imP n) r s q X Y := by
  induction n with
  | zero =>
    constructor <;> simp [reP, imP, eval, mkT, powF]
  | succ n ih =>
    obtain ⟨ihre, ihim⟩ := ih
    have hmul : ((⟨r, s⟩ : GaussianInt) ^ (n + 1))
        = ((⟨r, s⟩ : GaussianInt) ^ n) * ⟨r, s⟩ := by ring
    constructor
    · rw [hmul]
      simp only [Zsqrtd.re_mul]
      simp only [reP]
      rw [eval_normalizeFast, eval_append, eval_mulTerm, eval_mulTerm]
      rw [← ihre, ← ihim]
      push_cast
      ring
    · rw [hmul]
      simp only [Zsqrtd.im_mul]
      simp only [imP]
      rw [eval_normalizeFast, eval_append, eval_mulTerm, eval_mulTerm]
      rw [← ihre, ← ihim]
      push_cast
      ring

open GaussianInt in
/-- The eval bridge for powers of χ² = ⟨X, Y⟩. -/
lemma eval_reX_imX (n : ℕ) (r s q X Y : ℤ) :
    ((⟨X, Y⟩ : GaussianInt) ^ n).re = eval (reX n) r s q X Y
    ∧ ((⟨X, Y⟩ : GaussianInt) ^ n).im = eval (imX n) r s q X Y := by
  induction n with
  | zero =>
    constructor <;> simp [reX, imX, eval, mkT, powF]
  | succ n ih =>
    obtain ⟨ihre, ihim⟩ := ih
    have hmul : ((⟨X, Y⟩ : GaussianInt) ^ (n + 1))
        = ((⟨X, Y⟩ : GaussianInt) ^ n) * ⟨X, Y⟩ := by ring
    constructor
    · rw [hmul]
      simp only [Zsqrtd.re_mul]
      simp only [reX]
      rw [eval_normalizeFast, eval_append, eval_mulTerm, eval_mulTerm]
      rw [← ihre, ← ihim]
      push_cast
      ring
    · rw [hmul]
      simp only [Zsqrtd.im_mul]
      simp only [imX]
      rw [eval_normalizeFast, eval_append, eval_mulTerm, eval_mulTerm]
      rw [← ihre, ← ihim]
      push_cast
      ring

open GaussianInt in
/-- The eval bridge for the mixed product. -/
lemma eval_prod (m n : ℕ) (r s q X Y : ℤ) :
    (((⟨r, s⟩ : GaussianInt) ^ m) * ((⟨X, Y⟩ : GaussianInt) ^ n)).re
      = eval (reProd m n) r s q X Y
    ∧ (((⟨r, s⟩ : GaussianInt) ^ m) * ((⟨X, Y⟩ : GaussianInt) ^ n)).im
      = eval (imProd m n) r s q X Y := by
  obtain ⟨hre1, him1⟩ := eval_reP_imP m r s q X Y
  obtain ⟨hre2, him2⟩ := eval_reX_imX n r s q X Y
  constructor
  · simp only [Zsqrtd.re_mul]
    rw [hre1, him1, hre2, him2]
    simp only [reProd]
    rw [eval_normalizeFast, eval_append, eval_mulTerm, eval_mul, eval_mul]
    push_cast
    ring
  · simp only [Zsqrtd.im_mul]
    rw [hre1, him1, hre2, him2]
    simp only [imProd]
    rw [eval_normalizeFast, eval_append, eval_mul, eval_mul]
    try ring

/-- Data-level power. -/
def spow (P : SPoly) : ℕ → SPoly
  | 0 => [mkT 0 0 0 0 0 1]
  | k + 1 => normalizeFast (mul P (spow P k))

lemma eval_spow (P : SPoly) (k : ℕ) (r s q X Y : ℤ) :
    eval (spow P k) r s q X Y = (eval P r s q X Y) ^ k := by
  induction k with
  | zero => simp [spow, eval, mkT, powF]
  | succ k ih =>
    simp only [spow]
    rw [eval_normalizeFast, eval_mul, ih, pow_succ]
    ring

/-- Sign flip on odd s-exponents: evaluation at −s (the π-conjugate). -/
def conjS (P : SPoly) : SPoly :=
  P.map (fun t => (t.1, if t.1.2.1 % 2 = 1 then -t.2 else t.2))

lemma eval_conjS (P : SPoly) (r s q X Y : ℤ) :
    eval (conjS P) r s q X Y = eval P r (-s) q X Y := by
  induction P with
  | nil => rfl
  | cons t rest ih =>
    simp only [conjS, List.map_cons, eval_cons] at *
    rw [ih]
    by_cases h : t.1.2.1 % 2 = 1
    · simp only [if_pos h]
      rw [Odd.neg_pow (Nat.odd_iff.mpr h)]
      push_cast
      ring
    · simp only [if_neg h]
      rw [Even.neg_pow (Nat.even_iff.mpr (by omega))]

/-- Sign flip on odd Y-exponents: evaluation at −Y (the χ-conjugate). -/
def conjY (P : SPoly) : SPoly :=
  P.map (fun t => (t.1, if t.1.2.2.2.2 % 2 = 1 then -t.2 else t.2))

lemma eval_conjY (P : SPoly) (r s q X Y : ℤ) :
    eval (conjY P) r s q X Y = eval P r s q X (-Y) := by
  induction P with
  | nil => rfl
  | cons t rest ih =>
    simp only [conjY, List.map_cons, eval_cons] at *
    rw [ih]
    by_cases h : t.1.2.2.2.2 % 2 = 1
    · simp only [if_pos h]
      rw [Odd.neg_pow (Nat.odd_iff.mpr h)]
      push_cast
      ring
    · simp only [if_neg h]
      rw [Even.neg_pow (Nat.even_iff.mpr (by omega))]

/-- p² = r² + s², as data. -/
def pSq : SPoly := [mkT 2 0 0 0 0 1, mkT 0 2 0 0 0 1]

lemma eval_pSq (r s q X Y : ℤ) : eval pSq r s q X Y = r ^ 2 + s ^ 2 := by
  simp [pSq, eval, mkT, powF]
  ring

/-- Data-level complex multiplication: real part. -/
def cmulRe (a b : SPoly × SPoly) : SPoly :=
  normalizeFast (mul a.1 b.1 ++ mulTerm ((0, 0, 0, 0, 0), -1) (mul a.2 b.2))

/-- Data-level complex multiplication: imaginary part. -/
def cmulIm (a b : SPoly × SPoly) : SPoly :=
  normalizeFast (mul a.1 b.2 ++ mul a.2 b.1)

/-- The compositional bridge: data pairs tracking (re, im) of Gaussian
integers stay in correspondence under multiplication. -/
lemma cmul_bridge {A B : GaussianInt} {a b : SPoly × SPoly}
    (r s q X Y : ℤ)
    (hA : A.re = eval a.1 r s q X Y ∧ A.im = eval a.2 r s q X Y)
    (hB : B.re = eval b.1 r s q X Y ∧ B.im = eval b.2 r s q X Y) :
    (A * B).re = eval (cmulRe a b) r s q X Y
    ∧ (A * B).im = eval (cmulIm a b) r s q X Y := by
  obtain ⟨hAre, hAim⟩ := hA
  obtain ⟨hBre, hBim⟩ := hB
  constructor
  · simp only [Zsqrtd.re_mul, cmulRe]
    rw [eval_normalizeFast, eval_append, eval_mulTerm, eval_mul, eval_mul,
        hAre, hAim, hBre, hBim]
    push_cast
    try ring
  · simp only [Zsqrtd.im_mul, cmulIm]
    rw [eval_normalizeFast, eval_append, eval_mul, eval_mul,
        hAre, hAim, hBre, hBim]
    try ring

/-- The (re, im) data pair of ⟨r, s⟩^n. -/
def pairP (n : ℕ) : SPoly × SPoly := (reP n, imP n)

/-- The (re, im) data pair of ⟨r, −s⟩^n (the conjugate power). -/
def pairPc (n : ℕ) : SPoly × SPoly := (conjS (reP n), conjS (imP n))

/-- The (re, im) data pair of ⟨X, Y⟩^n. -/
def pairX (n : ℕ) : SPoly × SPoly := (reX n, imX n)

/-- The (re, im) data pair of ⟨X, −Y⟩^n. -/
def pairXc (n : ℕ) : SPoly × SPoly := (conjY (reX n), conjY (imX n))

/-- The class-monomial data pair: w^j · w̄^j' · ξ^k · ξ̄^k'. -/
def classPair (j j' k k' : ℕ) : SPoly × SPoly :=
  let a := (cmulRe (pairP j) (pairPc j'), cmulIm (pairP j) (pairPc j'))
  let bp := (cmulRe (pairX k) (pairXc k'), cmulIm (pairX k) (pairXc k'))
  (cmulRe a bp, cmulIm a bp)

open GaussianInt in
/-- The class-value bridge: the imaginary (and real) part of every
half-level class monomial is its data polynomial evaluated at the
coordinates. -/
theorem class_value_bridge (j j' k k' : ℕ) (r s q X Y : ℤ) :
    (((⟨r, s⟩ : GaussianInt) ^ j * (⟨r, -s⟩ : GaussianInt) ^ j'
      * (⟨X, Y⟩ : GaussianInt) ^ k * (⟨X, -Y⟩ : GaussianInt) ^ k')).re
      = eval (classPair j j' k k').1 r s q X Y
    ∧ (((⟨r, s⟩ : GaussianInt) ^ j * (⟨r, -s⟩ : GaussianInt) ^ j'
      * (⟨X, Y⟩ : GaussianInt) ^ k * (⟨X, -Y⟩ : GaussianInt) ^ k')).im
      = eval (classPair j j' k k').2 r s q X Y := by
  have hP : ((⟨r, s⟩ : GaussianInt) ^ j).re = eval (pairP j).1 r s q X Y
      ∧ ((⟨r, s⟩ : GaussianInt) ^ j).im = eval (pairP j).2 r s q X Y :=
    eval_reP_imP j r s q X Y
  have hPc : ((⟨r, -s⟩ : GaussianInt) ^ j').re = eval (pairPc j').1 r s q X Y
      ∧ ((⟨r, -s⟩ : GaussianInt) ^ j').im = eval (pairPc j').2 r s q X Y := by
    obtain ⟨h1, h2⟩ := eval_reP_imP j' r (-s) q X Y
    exact ⟨by rw [h1, pairPc]; exact (eval_conjS (reP j') r s q X Y).symm,
           by rw [h2, pairPc]; exact (eval_conjS (imP j') r s q X Y).symm⟩
  have hX : ((⟨X, Y⟩ : GaussianInt) ^ k).re = eval (pairX k).1 r s q X Y
      ∧ ((⟨X, Y⟩ : GaussianInt) ^ k).im = eval (pairX k).2 r s q X Y :=
    eval_reX_imX k r s q X Y
  have hXc : ((⟨X, -Y⟩ : GaussianInt) ^ k').re = eval (pairXc k').1 r s q X Y
      ∧ ((⟨X, -Y⟩ : GaussianInt) ^ k').im = eval (pairXc k').2 r s q X Y := by
    obtain ⟨h1, h2⟩ := eval_reX_imX k' r s q X (-Y)
    exact ⟨by rw [h1, pairXc]; exact (eval_conjY (reX k') r s q X Y).symm,
           by rw [h2, pairXc]; exact (eval_conjY (imX k') r s q X Y).symm⟩
  have hA := cmul_bridge r s q X Y hP hPc
  have hB := cmul_bridge r s q X Y hX hXc
  have hAB := cmul_bridge
    (a := (cmulRe (pairP j) (pairPc j'), cmulIm (pairP j) (pairPc j')))
    (b := (cmulRe (pairX k) (pairXc k'), cmulIm (pairX k) (pairXc k')))
    r s q X Y hA hB
  have hassoc : (⟨r, s⟩ : GaussianInt) ^ j * (⟨r, -s⟩ : GaussianInt) ^ j'
      * (⟨X, Y⟩ : GaussianInt) ^ k * (⟨X, -Y⟩ : GaussianInt) ^ k'
      = ((⟨r, s⟩ : GaussianInt) ^ j * (⟨r, -s⟩ : GaussianInt) ^ j')
        * ((⟨X, Y⟩ : GaussianInt) ^ k * (⟨X, -Y⟩ : GaussianInt) ^ k') := by
    ring
  rw [hassoc]
  simp only [classPair]
  exact hAB

end GaussData
