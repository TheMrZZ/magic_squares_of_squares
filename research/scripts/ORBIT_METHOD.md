# The exact-orbit method: soundness notes

## Setup

Fix p = 1 (mod 4) prime, pi a Gaussian prime over p. Choose omega in Z_p with
omega^2 = -1 such that the embedding phi: Z[i] -> Z_p, i |-> omega, sends
pi to a UNIT pi_+ (the other embedding i |-> -omega sends pi to pi_- with
v_p(pi_-) = 1; pi_+ pi_- = p).

For z = pi^{4j} with components (R_j, I_j):
  R_j = (phi(z) + phi(conj z))/2 = (pi_+^{4j} + pi_-^{4j})/2
  I_j = (pi_+^{4j} - pi_-^{4j})/(2 omega)
These are EXACT identities in Z_p (both sides are images of integers).

## The engine

Every candidate relation F = 0 (a polynomial identity over Z that a magic
square configuration at center s p^a q would force) is mapped through these
substitutions.  F becomes a finite Laurent polynomial in
  x = pi_+^{4j} (unit), y = pi_-^{4j} (v_p = 4j), and the chain analogues,
with rational coefficients whose denominators are powers of 2 (units).
Monomials acquire definite valuations, linear forms in (j, Delta_i).

## Kill criterion (sound)

If, for every realizable minimal-weight monomial set (all cells of the
weight arrangement are enumerated over a grid large enough to realize each
distinct cell — the arrangement is finite, cut out by finitely many linear
comparisons), the leading coefficient evaluates to a nonzero p-adic UNIT,
then v_p(F) equals the minimal weight — finite — so F != 0.  Leading
coefficients that are nonzero integers (times unit monomials in x, X_i)
are units for all p not dividing that integer; exceptional small primes are
closed by exact p-adic evaluation over one period of x mod p^2 (the
relevant dependence is through x mod p^2, whose orbit is finite; checked
over two periods).

If a leading coefficient is a nonconstant polynomial in the units (e.g.
X - c), the leaf survives only on the locus v_p(X - c) >= 1: an explicit
special-value congruence.  These loci are catalogued, not silently dropped.

## Grid sufficiency

The minimal-weight cell decomposition is determined by the relative order
of finitely many linear forms in (j, Delta_i) with small integer
coefficients (bounded by the polynomial degrees, <= 6).  A grid of values
1..13 (2-level) / {1,2,3,5,8}^3 (3-level) realizes every cell of such an
arrangement; this should be replaced by an exact cell enumeration in the
final write-up (a routine polyhedral computation).

## What remains conditional

Only the special-value loci: survival there needs v_p(pi_+^{4 Delta} - c)
to grow linearly in j, while p-adic linear-forms-in-logarithms bounds
(Yu's theorem) cap it at O(log^2 Delta).  Executing that comparison with
explicit constants, plus the finite verification below the resulting
bounds, is the outstanding step of the Theorem H program.
