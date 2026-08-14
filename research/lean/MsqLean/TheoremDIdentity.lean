/-
The algebraic engine of Theorem D (two-prime rigidity):
for a conjugate pair of differences d = Im(AB), d′ = Im(A·star B), the sum
and difference collapse to products of single components:
  d + d′ = 2 · Re B · Im A,   d − d′ = 2 · Im B · Re A.
So when {u+v, u−v} is forced to be a conjugate pair (the generic two-prime
case), u and v are completely determined:
  u = scale · Re B · Im A,    v = scale · Im B · Re A.
Verified numerically on Bremner's center e = 425:
126480 = 240·527 and 54096 = 161·336.
-/
import Mathlib

open Zsqrtd

theorem conj_pair_sum (A B : GaussianInt) :
    (A * B).im + (A * star B).im = 2 * B.re * A.im := by
  simp [Zsqrtd.im_mul, Zsqrtd.re_star, Zsqrtd.im_star]
  ring

theorem conj_pair_diff (A B : GaussianInt) :
    (A * B).im - (A * star B).im = 2 * B.im * A.re := by
  simp [Zsqrtd.im_mul, Zsqrtd.re_star, Zsqrtd.im_star]
  ring

/-- The forced-value consequence: if u + v and u − v are (a scale times) a
conjugate pair, then u and v are the scale times the single-component
products.  This is the rigidity that closes the generic two-prime case. -/
theorem forced_uv (K u v : ℤ) (A B : GaussianInt)
    (hs : u + v = K * (A * B).im) (hd : u - v = K * (A * star B).im) :
    u = K * (B.re * A.im) ∧ v = K * (B.im * A.re) := by
  have h1 := conj_pair_sum A B
  have h2 := conj_pair_diff A B
  have h1K : K * ((A * B).im + (A * star B).im) = K * (2 * B.re * A.im) := by rw [h1]
  have h2K : K * ((A * B).im - (A * star B).im) = K * (2 * B.im * A.re) := by rw [h2]
  constructor
  · have h2u : 2 * u = 2 * (K * (B.re * A.im)) := by linear_combination hs + hd + h1K
    linarith
  · have h2v : 2 * v = 2 * (K * (B.im * A.re)) := by linear_combination hs - hd + h2K
    linarith
