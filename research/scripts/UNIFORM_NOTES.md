# Uniform (a,1) attempt — state and roadmap (2026-08-15)

The naive relaxation (free circle variables (R_i, I_i) per level, S_i N_i = M)
kills only ~7% of template relations: it forgets that the levels are powers of
one Gaussian prime. Findings:

- Flagged relations like I2*S2 = ±2*I1*S1 are satisfiable in the relaxation but
  die in the true structure via the doubling relations R_{2j} = R_j^2 - I_j^2,
  I_{2j} = 2 R_j I_j (yields |R_j| = N_j, killed by the strict pinch).
- Uniform 2-adic fact (lifting the exponent, Re odd, 4 | Im):
  v2(Im pi^{4j}) = v2(j) + v2(Im pi^4). Gives level-dependent parities.
- Required enrichment: chain variables (R_D, I_D) for each level gap D with
  R_D^2 + I_D^2 = N_D^2, N_j N_D = N_{j'}, S_j = S_{j'} N_D, plus the
  multiplication relations R_{j'} = R_j R_D - I_j I_D, I_{j'} = R_j I_D + I_j R_D.
  With these, all known flagged classes for 2-level templates die by the
  standard mechanisms (verified by hand on samples).

Next: rebuild the template engine over the enriched relaxation; the template
count grows (chain patterns) but stays finite. If all die: Theorem H
(no center s*p^a*q for any a), closing an infinite family uniformly.

## Chain-engine results (2-level uniform templates)

9,216 leaf systems; 8,832 killed by the enriched relaxation (chain variables,
positivity, mod-2, p-adic patterns, mod-16). Residue: 384 leaves in exactly
24 distinct relations (chain_flags.pkl), all of shape {m, xL, y}-mixed
templates. Structure of the residue:

- Pure circle-geometry conditions on (pi^{4j}, pi^{4D}) — independent of a.
- Leading-order p-adic analysis kills the anti-aligned sign patterns; the
  aligned patterns (the true ones — all powers of one pi share a Gaussian
  phase mod p) survive to the next p-adic order: this is the uniform shadow
  of the axis-excess coincidence ladder seen in Theorems D/E/F.
- Next weapons: LTE 2-adics (v2(Im pi^{4j}) = v2(j) + v2(Im pi^4)),
  second-order p-adic expansion, or per-(j,D) concrete kills (each is a
  finite check; the (2,1)/(3,1) certificates already cover j+D <= 3).

If the 24 die uniformly: Theorem H (no center s p^a q for any a).

## Final frontier characterization (leading-order analysis)

The 24 residual relations, rewritten in H-variables (rh, ih, nh) via the
inverse chain map, were subjected to a full weight-regime analysis
(w(NL) = 2j, w(nh) = 2(j+Delta), all realizable minima enumerated) with
phase-aligned substitutions RL -> ±i IL, rh -> ±i ih.  Result: in every
regime the aligned leading form CANCELS IDENTICALLY.  So the uniform
obstruction survives all first-order p-adic tools; resolving the 24 needs
second-order lifts (expanding RL = ±i IL + p*(...) on the actual pi-power
orbit) or per-(j, Delta) concrete certificates (each finite; (2,1)/(3,1)
already done).  This is the precise uniform incarnation of the coincidence
ladder — the same structure that makes Bremner's near-miss possible.

## Exact-orbit analysis (breakthrough of the residue)

The p-adic embeddings give EXACT substitutions (no truncation):
R_j - w*I_j = pi_-^{4j} with pi_+ unit, nu_p(pi_-) = 1.  Every relation
becomes a finite Laurent polynomial in (x, y, X, Y, w, W) with definite
monomial valuations. Results:

- 2-level templates (24 residual relations): NO regime cancels. Leading
  coefficients are either nonzero numerics times Q^2 (dead for all p) or
  Q^2*X*x^3*(X - c) with c in {±1, ±2, ±1/4}: dead UNLESS
  pi_+^{4*Delta} = c (mod p) — six explicit special-value congruences.
- 1-level templates: 144 leaves dead by unit leading coefficients
  (-3, ±1, -2, -5 times Q^2); the -5 cases need p = 5 separately;
  48 tautological leaves need the integrality layer (solved (RB, IB)
  forms; expected to die by the p | Q argument as in Theorem F).

Remaining for full Theorem H (uniform s p^a q): (i) second-coefficient
ladder on the special-value loci, (ii) p = 5 ladder, (iii) tautological
integrality layer, (iv) 3- and 4-level chain templates (2-3 chain vars).
All are bounded, mechanical extensions of the same exact-orbit machinery.

## Round 8: 1-level closed; Theorem H endgame identified

- Tautological 1-level leaves (48): all solve to (RB, IB) = (±Q, 0); but
  IB = Im chi^4 != 0 by the bridge lemma. Dead in one line.
- p = 5 shapes (16, leading coeff -5*Q^2): exact 5-adic evaluation with
  pi+ = 184, pi- = 445 (mod 625); nonvanishing for j over two full periods
  of x mod 25 (period 5), which decides all j by periodicity. Dead.
- Special-value loci endgame: survival at the loci needs
  v_p(pi_+^{4 Delta} - c) >= kappa * j for c in {±1, ±2, ±1/4}; equality
  pi_+^{4 Delta} = c exactly is impossible (norms: p^{2 Delta} = c^2).
  Effective bounds on v_p(pi_+^{4 Delta} - c) are p-adic linear forms in
  logarithms (Yu's theorem): v_p << log^2(Delta), whence j << log^2(Delta)
  and a complete effective finiteness program for Theorem H:
  all s p^a q centers, modulo executing the Baker-bound bookkeeping and the
  resulting finite verification, plus the 3/4-level chain templates.

Status: 1-level uniform DONE; 2-level uniform done off the six loci; loci
reduced to an effective-finiteness program. This is the precise remaining
gap between the certificates (F, G) and uniform Theorem H.

## 3-level chain results (complete)

36,288 leaf systems (all 3-level uniform templates): 26,880 regular + 2,496
singular dead unconditionally via the exact-orbit leading-unit criterion;
6,912 on special-value loci; ZERO cancellations, ZERO tautologies.
Only 42 distinct locus signatures, all of the same family as 2-level:
two-term leading forms  c*Q^2 * (unit monomial) * (X_i - kappa), i.e.
pi_+^{4 Delta_i} = kappa (mod p) for small rational kappa.  The uniform
(a,1) landscape is structurally identical at every level count; the entire
Theorem H program now rests on the single special-value phenomenon
addressed by the Baker-bound step.  Remaining elementary layer: 4-level
templates (expected to mirror).

## The imbalance theorem (2-level case of Theorem H CLOSED)

Master argument: any configuration's chi^4 equals the solved value
zeta = Q*N/D, where N, D lie in the pi-orbit algebra (chi-free except Q).
In Gaussian coordinates (Z = pi-power variables):

- D is purely imaginary => pi/pibar-BALANCED: v_pi(D) = v_pibar(D).
- N has a UNIQUE monomial of pibar-valuation zero (coefficient ±1, ±2 —
  a unit for every odd p), while every monomial has pi-valuation >= 2.
  Hence v_pibar(N) = 0 exactly and v_pi(N) >= 2, for ALL j, Delta >= 1.

Then v_pibar(chi^4) = 0 forces v_pi(chi^4) >= 2, contradicting that chi^4
is coprime to p.  This kills all 24 residual 2-level relations — including
every special-value locus — with NO Baker input, NO second-order lifts.
Verified symbolically for all 24 (script: the imbalance check).  Combined
with the earlier 1-level closure: **all 1- and 2-level uniform templates
for centers s p^a q are impossible, for every a, p, q, s.**

## Merged engines (3- and 4-level, running)

Per-leaf battery: ZERO-KILL (solved (RB,IB) = (0,0), dead by IB != 0),
IMB-KILL (imbalance), RESID-KILL (norm residual unit-leading — cannot
vanish), SING (separately closed).  Interim: >93% killed; FAILs are
balanced-zeta locus leaves, for which the chi-adic constraint applies:
chi^4 = Q N / D with N,D chi-free integers forces chi^2 | N — only
finitely many q per (p, j, Delta), each an exact finite check.  Uniformity
of that last class is the remaining question for 3+ levels.

## 3-level merged sweep COMPLETE; the eight deep shapes

36,288 leaves: 34,720 dead (ZERO 6,144 + IMB 13,440 + RESID 12,640 +
SING 2,496 = 95.7%). The 1,568 residual leaves collapse to EIGHT element-set
shapes, all same-orientation interior triples across three levels plus axis
elements (e.g. {m1p, m2p, m3p, x1}). For each, N*conj(D) is factored
explicitly (fail8_analysis.py): a bare pi-bar power, balanced imaginary
factors, and mixed brackets with EVEN pi/pi-bar valuation differences —
precisely why the imbalance theorem cannot reach them. Survival requires
N*conj(D) = ± real * (Gaussian square): the chi-square criterion, a
pointwise-decidable Diophantine condition (candidate q determined by the
factorization). These eight shapes are the true 3-level frontier of
Theorem H, one layer deeper than the 2-level special-value loci.

## 4-level merged sweep COMPLETE; the twelve deep shapes

31,104 leaves: 28,416 dead (ZERO 6,144 + RESID 10,368 + IMB 8,448 +
SING 3,456 = 91.4%). The 2,688 residual leaves collapse to TWELVE
element-set shapes, each with exactly 224 leaves — the same structural
family as at 3 levels: same-orientation interior elements across levels
plus one axis element per shape (e.g. {m1p, m2p, m4p, x3}).
For each shape, N*conj(D) factors explicitly (fail12_analysis.py) into

  (monomial in Q, N_i, and a BARE pi- or pi-bar power)
  x (purely imaginary difference bracket, Z... - Zbar...)
  x (two mixed brackets whose pi/pi-bar valuation differences are even),

identical in kind to the 3-level fail8 factorizations. So the survival
condition at 4 levels is again the chi-square criterion:
N*conj(D) = ± real * (Gaussian square), pointwise decidable with the
candidate q pinned by the factorization. Conclusion: the deep-shape
frontier is STABLE across levels — levels 3 and 4 produce no new
obstruction type, only more copies of the same chi-square locus. The
uniform-in-level question for Theorem H now reduces entirely to closing
this single criterion class.

## Chi-square criterion sweep: ZERO survivors (chi2_engine.py)

For every one of the 20 deep shapes (8 at 3 levels + 12 at 4 levels),
chi^4 = Q Nz / Dz forces the norm condition |Nz|^2 = Q^2 |Dz|^2 at
Q = q^2, and any root must additionally make Q Nz / Dz an exact 4th
power of a norm-q^2 Gaussian integer.  Exact-integer sweep over
p < 200 (p = 1 mod 4), all orbit index tuples j in {1..4}^n, and
q < 500 (q = 1 mod 4, q != p): 3,236,352 checks, ZERO norm-roots —
the norm equation |Nz|^2 = Q^2 |Dz|^2 never even holds, so no leaf
reaches the 4th-power test.  Every 3- and 4-level deep-shape leaf in
this range is impossible.  Combined with the merged-engine kills, the
3- and 4-level uniform templates are now fully closed over this range,
matching the unconditional 1- and 2-level closure.  Remaining gap for
a fully uniform Theorem H: prove |Nz|^2 - Q^2 |Dz|^2 != 0 uniformly
(the polynomial identity route: both sides have distinct leading
behavior in the dominant orbit weight — candidate next argument).

## Q-collapse and the leading-pair theorem (deep shapes, levels 3-4)

Structural collapse (chi2_qdeg.py, symbolic, all 20 shapes): Nz has
Q-degree EXACTLY {1} and Dz exactly {0}.  Writing Nz = Q*A, the whole
chi-square survival condition loses q entirely:

  |chi^4| = Q^2 |A|/|D| = q^4  <=>  c := |A|^2 - |D|^2 = 0,

ONE integer orbit-algebra identity per shape, independent of q.  (This
also explains the sweep's zero norm-roots: F(Q) = c*Q^2 with c != 0 on
the whole grid.)

Leading-pair theorem (chi2_pairlead.py, verified for all 20 shapes and
all strong-separation orderings — 6 per 3-level, 24 per 4-level shape):
c is real, so its monomial valuation groups pair off conjugately
((P,B) <-> (B,P) under pi <-> pibar).  In EVERY strongly-separated
regime the minimal-valuation set is EXACTLY ONE conjugate pair whose
coefficient gamma is REAL and in {±1, ±2} — a unit for every odd p.
The pair sums to 2*gamma*p^a*Re(pibar^{4M}) with v_p(Re(pibar^{4M})) = 0
(pi does not divide pibar^{4M}: the bridge-lemma mechanism), hence
v_p(c) = a exactly, strictly below every remaining group.  Therefore:

  THEOREM (off-hyperplane death): for every deep shape, every p >= 5,
  and every orbit index tuple j avoiding a finite explicit union of
  valuation-tie hyperplanes {W.j = W'.j}, the leaf is impossible.

The 3/4-level frontier is now reduced to lattice points ON the tie
hyperplanes, where >= 2 valuation groups share the minimum and the
leading sum becomes a phase polynomial (residues are powers of a single
t = (2B)^4 mod p) — vanishing forces bounded multiplicative order of t,
a finite per-p condition.  Next: enumerate the hyperplane arrangement
and run the tie (second-order) analysis.

## Phase-sum reduction and exception closure

Layering c by pi-exponent: c = sum_e c_e pi^e with c_e = sum of
gamma_i pibar^{B_i.j} over groups with P_i.j = e.  Mod pi, pibar = 2A,
so c_e = S_e(j) := sum gamma_i (2A)^{B_i.j} — an ordinary integer.  If
S_{e_min} != 0 mod p then v_pi(c) = e_min is finite, hence c != 0.
Symmetrically on the pibar side.  So a deep-shape leaf can survive ONLY
at points where p | S_pi(j) AND p | S_pibar(j) simultaneously — two
multiplicative-order conditions on t = 2A mod p (all group coefficients
are REAL, in {±1, ±2, ±4, ±6, ±8}; verified 0 nonreal across all 20
shapes).  Grid census (chi2_phasesum.py, p < 200, j in {1..6}^n):
1,806 such double-vanishing points out of 362,880 (0.5%), concentrated
in the x-heavy shapes.  Exact evaluation of c at ALL 1,806 points
(chi2_exceptions.py, group-sum c = sum gamma pi^{P.j} pibar^{B.j}):
ZERO have c = 0.  Conclusion: every 3- and 4-level deep-shape leaf
with p < 200, orbit indices <= 6 is impossible; beyond the grid,
survival requires the double phase-sum vanishing — an explicit thin
(codimension-2-like) set where second-order (mod p^2) analysis applies.
Baker-style bookkeeping is fully superseded by this valuation pipeline.

## Escape-depth census at the 1,806 double-vanishing points

Delta := v_p(c) - e_min measured exactly (chi2_depth.py):
{2: 504, 4: 588, 6: 210, 8: 252, 12: 126, 16: 84, 20: 42}.
All depths EVEN (consistent with realness of c), bounded on the grid
but growing with j: deep sinking occurs precisely when t = 2A mod p
has small multiplicative order, which collapses many valuation layers
simultaneously — these are the special-value loci in their exact
arithmetic clothing.  Consequence: no fixed-order Hensel cutoff closes
the thin set uniformly; the degenerate sub-polynomial at small-order t
needs its own leading-pair analysis (expected self-similar, one level
down).  Even so, c != 0 at every grid point — the empirical record
remains unbroken across 3.2M+ direct checks and all structured probes.

## All degeneration points are TRIVIAL: no mod-p accidents

Classification of the 1,806 double-vanishing points (chi2_orderclass.py):
at EVERY one, the phase-sum vanishing is trivial — the integer gamma-sums
cancel per congruence class of exponents mod d = ord(2A mod p), on both
the pi and pibar sides.  Zero genuine mod-p accidents.  Order
distribution is uniform (86 points per participating order).  Hence the
escape set is a FINITE UNION OF COMBINATORIAL CANCELLATION PATTERNS,
independent of p: congruence families in the orbit indices j paired with
primes whose t-order matches.  On such a family the minimal layer
vanishes identically as integers, so c's leading part moves to the next
valuation layer with an exact combinatorial quotient — the recursion is
now well-defined (self-similar leading-pair analysis at level 2).  If
level-2 leading groups are again unique unit conjugate pairs for every
pattern, escape requires a second independent cancellation; termination
of this recursion = full uniform closure of levels 3-4.

## The tie-structure dichotomy: 8 of 20 deep shapes closed unconditionally

LP certificates over the valuation-group forms (chi2_tielemma*.py,
chi2_pform.py), for every one of the 20 deep shapes:
  - every P-form is a SINGLETON (no two live groups share a pi-weight);
  - NO triple of distinct P-forms can jointly achieve the minimum
    (all 3-subsets LP-infeasible, all shapes);
  - exactly ONE pair of P-forms is jointly-minimal-feasible: the
    shape's unique tie hyperplane.
Hence for every real weight j >= 1 the minimal pi-layer of c is either a
single group (unit coefficient => v finite => c != 0) or that one pair.
On the tie locus, conjugation symmetry (P-attainers {P1,P2} tied at e)
makes the minimal PIBAR-layer sum to (gamma1+gamma2) * t^e mod pi:
  - 8 shapes have (gamma1,gamma2) = (1,2): the layer is 3 t^e, nonzero
    mod p for every p >= 5.  So v_pibar(c) = e is finite ALWAYS:
    THESE 8 SHAPES ARE IMPOSSIBLE UNCONDITIONALLY — all p >= 5, all
    orbit indices, all q.  (Exactly the 8 shapes with zero census
    exceptions — perfect agreement.)
  - 12 shapes have (gamma1,gamma2) = (-1,1): the layer vanishes
    IDENTICALLY (trivial cancellation).  Their surviving locus is
    exactly the single tie hyperplane, where the leading contribution
    is pi^e pibar^{b}(pibar^{Db} - 1) and lifting-the-exponent gives
    the exact escape depth: v = v_pi(pibar^d - 1) + v_p(Db/d) when
    ord(2A mod p) = d | Db, else depth 0 (dead).
Status: the 3/4-level uniform frontier is now 12 shapes x 1 hyperplane
each, LTE-governed.  (LP feasibility currently float-verified via HiGHS;
exact rational re-certification is a mechanical follow-up.)

## Exact rational certification of the tie structure

chi2_exactlp2.py re-proves the entire tie-structure dichotomy with an
exact phase-1 simplex over Fractions (no floating point anywhere):
for every one of the 20 deep shapes, EXACTLY one feasible leading pair,
ZERO feasible triples, coefficient pairs identical to the float run
((1,2) for the 8 unconditionally-closed shapes, (-1,1) for the 12
hyperplane-locus shapes).  ALL EXACT-CERTIFIED.  The 8-shape
unconditional closure is now fully rigorous at the certificate level.

## Correction: the degeneration cancellation is EXACT (Delta b = 0)

Debugging the degeneration points (chi2_debug.py) shows the (-1,+1)
minimal pair always has IDENTICAL B-exponents on the tie locus: the
pair is {(P,B,+1),(B,P,-1)}-type, and the tie P.j = B.j forces both
weight coordinates equal, so the pair annihilates identically as
Gaussian integers — not merely mod p.  (This also explains the
"trivial" classification: Delta b = 0.)  No lifting-the-exponent input
is needed anywhere.  Consequence: on each of the 12 hyperplane loci,
c equals the SUM OF THE REMAINING GROUPS exactly, and the frontier is
a level-2 leading analysis: delete the cancelling pair, re-run the
minimal-set LP restricted to the hyperplane.  Unit-leading survivors
at level 2 for all 12 shapes would close levels 3-4 completely.
The measured even escape depths (2..20) are the layer gaps to the
first surviving level-2 group, linear in the orbit indices.

## The recursion tree: complete closure structure of levels 3-4

chi2_recurse2.py runs the full self-similar leading analysis: at each
level, enumerate (exact simplex + float prefilter) all feasible minimal
tie-pairs of value forms; unit-coefficient singletons and nonzero-sum
ties close their regions; exactly-cancelling pairs (both coordinates
tied, coefficients summing to zero) are deleted and the analysis recurses
on the sub-locus.  The recursion terminates by dimension exhaustion
(each level adds an independent equality; max depth observed 2).

RESULT: the 8 shapes with the (1,2) leading pair are FULLY CLOSED by
the tree alone — impossible for all p >= 5, all orbit indices, all q,
with every branch ending in a unit layer.  The 12 cancelling shapes
close everywhere EXCEPT on ~19 distinct explicit ORDER LOCI (48 tie
instances): pairs with opposite coefficients (+-1 or +-2) tying in ONE
coordinate with distinct exponents b1 != b2.  There the layer sum is
gamma(t^{b1} - t^{b2}), zero iff ord_p(2A) | (b1 - b2); when it divides,
v_pi(c) deepens by exactly v_pi(pibar^{Db} - 1) — a Fermat-quotient /
Wieferich-type quantity.  Survival would need this deepening to
outrun every remaining layer: an explicit, pointwise-checkable
condition, refuted at every grid point by the exact censuses
(c != 0 at all 1,806 double-vanishing points; no chi-square roots in
3.2M checks).  This is the exact, final characterization of the
uniform s p^a q frontier at 3 and 4 levels: finitely many
Wieferich-type loci per shape, everything else proven impossible.

## One-sided closure attempt: the order loci are irreducibly two-sided

chi2_recurse3.py tests whether the ~19 order loci close by a one-sided
(single-coordinate) layer analysis: NO closure fires anywhere (0/48
instances).  The reason is structural: one-sided layer coefficients
sum gamma_i pibar^{b_i} reduce mod pi back to the integer phase sums
sum gamma_i (2A)^{b_i}, so the multiplicative-order condition reappears
on either side.  FINAL CHARACTERIZATION of the s p^a q uniform frontier
at levels 3-4: a hypothetical solution must sit on one of finitely many
explicit order loci and satisfy, SIMULTANEOUSLY ON BOTH SIDES,
ord_p(2A) | (explicit exponent gaps) together with Fermat-quotient
deepenings v_pi(pibar^{Db}-1), v_pibar(pi^{Da}-1) each outrunning the
next valuation layer — a double Wieferich-type coincidence, analogous
in spirit to Wieferich-prime conditions, refuted at every point of the
computed censuses and heuristically of density zero.  Everything else
at 3 and 4 levels is proven impossible.

## New frontier: (2,2) centers s p^2 q^2 — Theorem H' program

D(e) for e = s p^2 q^2 has exactly 12 elements with a clean 2-D grading
(h22_enum.py):  D = { p^{4-2a} q^{4-2b} s^2 Im(pi^{4a} chi^{±4b}) },
(a,b) in {0,1,2}^2 \ {(0,0)}.  Leaves: ordered distinct (u,v,s,d) with
sign patterns = 95,040.  TWO-PRIME GRADING LEMMA (h22_engine.py): a
relation whose minimal p-layer (or q-layer) holds a single term is
impossible — that term is a p-unit (mod pi, Im(pi^{4a}chi^{4b}) is a
unit times pibar^{4a}chibar^{4b}) times p^m against p^{m+2} | rest.
This kills 88,832 / 95,040 leaves (93.5%) outright.  The 6,208 residual
leaves have >= 2 terms in every minimal layer of both relations and both
gradings: next pass = mod-p^2 / mod-q^2 phase-sum analysis (gaps 2 or 4),
mirroring the s p^a q pipeline.

## (2,2) pass 2A: exact sweep — zero satisfiable residual leaves

h22_sweep.py evaluates all 6,208 residual (2,2) leaves exactly over
every ordered pair of primes p != q, both = 1 mod 4, below 200
(21 x 20 pairs; 2,607,360 checks): ZERO leaves satisfiable.  Combined
with the two-prime grading lemma (93.5% killed structurally), this
gives: NO magic square of squares has center root s p^2 q^2 with
p, q < 200 — Bremner's-type squared, closed in range for every s.
Remaining for the full Theorem H': symbolic mod-p^2 / mod-q^2 phase
analysis of the 6,208 residual relation classes (collapse by symmetry
first — expect a few hundred distinct classes).

## (2,2) status: 216 residual relations; p,q < 1000 fully excluded

The 6,208 residual leaves collapse to 216 distinct 3-term relations
(h22_parity.py); the mod-32 two-adic sieve kills none (all relations
2-adically solvable — unlike the solved-form relations of Theorem F,
raw D-relations are too soft mod 2^k).  Extended exact sweep
(h22_sweep2.py): all residual leaves over every ordered pair of primes
p != q = 1 mod 4 below 1000 (78 primes; 39,234,560 checks): ZERO
satisfiable.  THEOREM H' (range form): no magic square of squares has
center root s p^2 q^2 with p, q < 1000, for any s.  Uniform closure of
the 216 relations = mod-p^2/mod-q^2 coupled residue conditions on
(chi mod pi, pi mod chi) — same Wieferich-flavored endpoint as the
s p^a q deep loci; characterization in place of unconditional closure.

## Uniform two-prime structure: the grading lemma for ALL (a,b)

The D-set for e = s p^a qᵇ is always
  { p^{2a-2al} q^{2b-2be} s^2 Im(pi^{4al} chi^{±4be}) },
0<=al<=a, 0<=be<=b, (al,be)!=(0,0) — |D| = ((2a+1)(2b+1)-1)/2 — and the
two-prime grading lemma applies verbatim for every (a,b).  Census
(h_ab_census.py):
  (2,2): 95k leaves, 93.5% killed, 216 residual relations
  (3,2): 457k, 96.2%, 468        (4,2): 1.40M, 97.4%, 816
  (3,3): 2.04M, 97.7%, 1008      (4,3): 6.04M, 98.4%, 1752
  (4,4): 17.5M, 98.9%, 3040
The kill fraction INCREASES with the exponents; residual relations grow
only polynomially.  Uniform statement: for every (a,b), every leaf whose
relation triples are not doubly balanced (min p-layer and min q-layer
each held by >= 2 terms in both relations) is impossible.  The entire
two-prime landscape thus reduces, uniformly in (a,b), to explicit
balanced families with coupled-residue survival conditions.

## Three primes: the wall breached (range form)

The grading machinery extends verbatim to >= 3 primes: for
e = s p q r (all = 1 mod 4, distinct), D(e) is 13 elements
p^{2-2al} q^{2-2be} r^{2-2ga} Im(pi^{4al} chi^{±4be} psi^{±4ga}) with a
3-D grading; the lone-minimal-layer kill applies in any of the three
gradings.  h111_engine.py: 137,280 leaves, 68.4% grading-killed,
43,392 residual; exact sweep over ALL ordered triples of distinct
primes below 120 (94,768,128 checks): ZERO satisfiable.  FIRST
EXCLUSION IN THE >=3-PRIME LANDSCAPE: no magic square of squares has
center root s p q r with p, q, r < 120, for any s.  The "positive-
dimensional wall" applied to the solved-form approach; the raw-relation
grading bypasses it entirely — the same doubly/triply-balanced
characterization governs every number of primes.

## Grading lemma machine-checked

MsqLean/GradingLemma.lean (`im_pipow_mul_not_dvd`, zero sorries):
for p = a^2 + b^2 prime, k >= 1, and any Gaussian W with p coprime to
N(W): p never divides Im((a+bi)^k * W).  This is the exact statement
powering every lone-minimal-layer kill in the two- and three-prime
engines; the computational range theorems now rest on a formally
verified core lemma.

## Mixed three primes: (2,1,1) also excluded in range

h211_engine.py: e = s p^2 q r has |D| = 22 with the 3-D grading;
1,404,480 leaves, 86.9% grading-killed, 183,360 residual; exact sweep
over all ordered triples of distinct primes = 1 mod 4 below 75
(92,413,440 checks): ZERO satisfiable.  No magic square of squares has
center root s p^2 q r with p, q, r < 75, for any s.  Every center-type
family the machinery has touched — s p^a q for a <= 4 levels, s p^2 q^2,
s p q r, s p^2 q r — is either unconditionally impossible or excluded
throughout the computed ranges.

## Four primes: (1,1,1,1) excluded in range

h1111_census.py / h1111_sweep.py: e = s p q r t has |D| = 40 with a
4-D grading; 17,546,880 leaves, 81.2% grading-killed, 3,305,472
residual; exact sweep over ALL ordered quadruples from
{5,13,17,29,37} (396,656,640 checks): ZERO satisfiable.  No magic
square of squares has center root s p q r t with p,q,r,t < 40, for
any s — the first four-prime exclusion.  The grading framework now
spans one, two, three and four primes uniformly.

## (1,1,1) residual structure: 600 relations, 23 grading classes

h111_rels.py: the 43,392 residual (1,1,1) leaves collapse to 600
distinct 3-term relations in 23 grading-shape classes (largest classes:
mixed-support triples like {(0,1,1),(1,1,0),(1,1,1)}).  Same compact
endpoint as two primes (216 relations): the entire multi-prime frontier
consists of small explicit relation families whose survival is a
coupled-residue condition across the primes involved.

## Three-prime bound raised: p,q,r < 300

h111_engine300.py: same (1,1,1) engine over all ordered triples of
distinct primes = 1 mod 4 below 300 (951,326,208 checks): ZERO
satisfiable.  No magic square of squares has center root s p q r with
p, q, r < 300, for any s.

## (2,1,1) bound raised: p,q,r < 150

h211_engine150.py: 616,089,600 checks over all ordered triples of
distinct primes = 1 mod 4 below 150: ZERO satisfiable.  No magic
square of squares has center root s p^2 q r with p, q, r < 150.

## Symbolic closure of (2,2) residual relations: 98/216 unconditional

Pivot from range sweeps to unconditional closure (sym_close.py,
sym_pinch.py, sym_linear.py).  Expanding each of the 216 residual
relations exactly in (R,I,X,Y):
 - 24 die by PARITY (the factored relation contains a factor that is
   always odd: R, X odd; I, Y = 0 mod 4; p, q odd).
 - Two-sided first-order residues: mod pi only the pibar^8-terms of
   Gbar survive, giving F == unit * gq(chi) mod pi; symmetrically
   F == unit * hp(pi) mod chi.  Re-expressing gq in (v,vb) = (chi^2,
   chibar^2) and hp in (u,ub) = (pi^2, pibar^2) and factoring:
   74 relations have BOTH residues nonzero with every non-unit factor
   of total degree <= 2 — i.e. size <= c*q resp. c*p (LINEAR).  The
   TWO-SIDED LINEAR PINCH closes them unconditionally: wlog p > q
   forces p | (factor of size < c*q), so the factor vanishes, which
   forces Re(chi^2) = 0 or Im(chi^2) = 0-type degeneracies impossible
   for an odd prime (q = C^2 or q = 2C^2); small-constant cases lie
   inside the already-swept p,q < 1000 range.
 - TOTAL: 98/216 relations now closed unconditionally.
 - Remaining 118: 44+44 with one residue identically zero (need
   mod-pi^2 second order), 16 with both zero (deep), and deg-4
   (q^2-size) wedge factors in 38.
Residue degree census: 74 lin-lin closable; (ZERO,max1) 32x2;
(max2,max2) 20; (max4,*) 38; (ZERO,ZERO) 16.

## CORRECTION to the previous section (linear pinch over-claim)

The degree census conflated sizes: |chi^2| = q, so a total-degree-d
factor in (v,vb) has magnitude up to c*q^d, and for factors with
genuinely complex coefficients the divisibility pi | F only yields
p | N(F) <= c^2 q^{2d}.  The clean pinch argument applies only to
factors of the special shape unit*(v ± vb) (= 2Re(chi^2) or
2i*Im(chi^2): real/imaginary integer-valued, |.| <= 2q, and = 0
impossible for an odd prime), and even there the unconditional closure
holds only OUTSIDE a bounded-ratio wedge (p <= c*q with small c needs
separate treatment: p | F with |F| <= 2q < 2cp leaves finitely many
possible values F = k*p, each an algebraic condition, not yet closed).
The claim "98/216 closed unconditionally" is therefore RETRACTED to:
24/216 closed by parity; the 74 all-sides-deg<=2 relations are closed
for prime ratios outside an explicit bounded wedge; full unconditional
closure requires the per-factor real/imaginary + wedge analysis, in
progress.  (The three-prime census: 600 relations, 0 parity kills, all
three residues nonzero everywhere, 140 with all sides deg<=2 — same
wedge caveat applies.)

## Rigorous per-factor certificates for (2,2): 56 relations, 96.1% of leaves

Replacing the flawed degree heuristic with per-factor certificates
(sym_unit2.py), each factor of each relation is closed by one of:
 - PARITY: the factor is an always-odd integer (32 factor uses);
 - UNIT-SIDE: its mod-pi (or mod-chi) reduction factors entirely into
   unit atoms {chi^2, chibar^2, I resp. Y} times a nonzero constant c,
   so p never divides it for p > |c| — and p never dividing F already
   gives F != 0 (24 uses);
 - DOUBLE-PINCH: mod-pi reduction = units x ONE small atom
   (2Re(chi^2) or 2Im(chi^2), strictly < 2q in absolute value, nonzero
   since q odd), and symmetrically mod-chi with < 2p.  For p > q the
   pi-side forces the small core C^2-D^2 or 2CD to vanish (impossible);
   for q > p the chi-side does (using q > sqrt(p) where needed).  No
   wedge remains (32 uses).
RESULT: 56 / 216 relations certified dead unconditionally.  At leaf
level a leaf dies if EITHER of its two relations is dead: 2,480 of the
6,208 residual leaves die, so together with the grading lemma
91,312 / 95,040 = 96.1% of ALL (2,2) leaves are closed
unconditionally; the 3,728 survivors live entirely inside the 160
uncertified relations, whose reductions decompose into explicit
cyclotomic cores (2R ± p^2 — odd hence nonzero; Re(chi^4), Re(chi^8)
nonzero by irrationality of the corresponding quartic/octic roots) of
quadratic-or-higher size, where first-order pinches leave prime-ratio
wedges — the precise remaining frontier.

## Three-sided certificates for (1,1,1): 36 relations, 71.4% of leaves

sym3_unit.py runs the same per-factor machinery with THREE reductions
(mod pi / mod chi / mod psi): 36 / 600 relations certified dead
(parity + unit-side; no triple-pinches fire — every surviving relation
has at least one side whose reduction contains deeper cyclotomic-style
irreducibles).  Leaf level: 4,176 of the 43,392 residual leaves die via
a dead relation, so 98,064 / 137,280 = 71.4% of ALL (1,1,1) leaves are
now closed unconditionally (grading lemma + certificates), the rest
confined to 564 explicit relations.

## Full-coordinate cores: 134/216 relations dead, 98.35% of (2,2) leaves

Working in full (C,D)/(A,B) coordinates (chi = C+Di, C^2+D^2 = q), the
cyclotomic cores FACTOR FURTHER: Re(chi^4) = (C^2-2CD-D^2)(C^2+2CD-D^2)
etc., so a factor's divisibility condition p | (product of cores)
localizes (p prime) to p | (single core), and the operative size is the
MAX core half-degree, not the sum.  Cores of half-degree 1/2 (C, D,
C±D <= sqrt(2q)) give p <= c*sqrt(q); combined with any opposite-side
exponent < 2 this BOUNDS BOTH PRIMES.  sym_bounds.py verifies the
explicit bounds: all 110 such relations have max prime bound <= 144,
comfortably inside the exhaustive p,q < 1000 sweep, so they are dead
UNCONDITIONALLY (degree-1 cores aC+bD can vanish only for the single
tiny prime q = (a^2+b^2)/g^2, also inside the sweep).  Union with the
earlier certificates: 134 / 216 relations dead; leaf level
93,468 / 95,040 = 98.35% of ALL (2,2) leaves closed unconditionally.
The 1,572 remaining leaves live in 82 relations: 18 reduce to explicit
Pell-band equations (core = ±kp inside a constant prime-ratio band) and
64 carry exponent >= 2 wedges; 24 have a vanishing first-order side.

## Three-prime full-coordinate profiles: 116 band-closable, power-law residue

sym3_unit3.py (with per-factor timeouts) profiles all 600 (1,1,1)
relations in full coordinates: each relation carries one nontrivial
factor with a triple of side max-core exponents (h_p, h_q, h_r).
Census highlights: (1,1,1) x32, (1,1/2,1/2)-family x84, then mixed
triples up to (4,4,4) x16.  Closure analysis: a slot's condition
p_i | core_i (|core_i| <= c * max(others)^{h_i}) pinches whenever
prime_i is the largest and h_i <= 1, so ALL-h<=1 relations (116 / 600)
are impossible outside constant prime-ratio bands.  For higher
exponents the three conditions chain into homogeneous log-inequalities
x_i <= h_i * max_j x_j whose unbounded rays are power-law curves
(e.g. r ~ p^2): survivors of those relations are confined to explicit
power-law prime families — a complete characterization of the
three-prime frontier's geometry, though not yet a closure.

## Zero-side reduction: no new kills (already covered)

sym_zeroside.py divides out the exact a=2 cancellation of the 104
relations with a vanishing relation-level residue and re-runs the
battery on the reduced relation: 72 certify — but all 72 were already
inside the 134-strong dead set (relation-level residues vanish while
factor-level certificates fire independently).  The (2,2) frontier is
confirmed stable at 82 relations / 1,572 leaves (1.65% of all leaves):
18 Pell-band, 64 exponent->=2 wedge relations.  This appears to be the
plateau for first-order elementary methods on (2,2).

## The 18 Pell-band relations = 9 coupled quadratic-form systems

sym_bands.py: every band relation's core pair is one of exactly three
classical binary quadratic forms per side —
  disc 8:  C^2 ± 2CD - D^2
  disc 12: C^2 ± 4CD + D^2  and  3C^2 - D^2 / C^2 - 3D^2
— giving 9 distinct coupled systems.  Inside the constant band the
survival condition reads: p = k * (disc-8 or disc-12 form in (C,D))
with C^2 + D^2 = q, and simultaneously q = l * (form in (A,B)) with
A^2 + B^2 = p, |k|,|l| <= 3.  For k = l = 1 this forces the classical
congruences p ≡ ±1 (mod 8) resp. (mod 12) and symmetrically for q:
the (2,2) frontier's band component is now a finite list of explicit
simultaneous-representation Diophantine systems — the precise
arithmetic objects whose emptiness (or not) decides those relations.

## Band-system census: sporadic vs. persistent families

band_probe2.py checks all prime pairs p,q < 50,000 for the coupled
band conditions (p = k*F(C_q, D_q), q = l*G(A_p, B_p), |k|,|l| <= 3):
30 co-occurrences total.  The disc-8-mixed systems are SPORADIC (one
tiny pair each, e.g. (13,17) — all deep inside the verified sweeps).
The disc12a <-> disc12b system persists (9 pairs by 50k, slowly
growing): likely an infinite family, so those two band relations
cannot be closed by emptiness of the coupled conditions; on their band
pairs the full relation must be refuted at second order (the sweeps
confirm it fails at every such pair in range).  The (2,2) frontier is
now calibrated down to which of its 82 relations rest on empty,
sporadic, or persistent Diophantine loci.

## Band relations fail at second order: v_p, v_q <= 1 at all band pairs

band_fail.py evaluates every band relation exactly at the persistent
and sporadic coupled pairs ((13,17),(37,13),(37,61),...): the relation
values are never zero and their joint valuations never exceed
(v_p, v_q) = (1,1).  So on the band loci the first-order layer
vanishes (as designed) but the SECOND-ORDER term is a p-unit at every
tested point.  The identified closing step for all 18 band relations:
a symbolic mod-p^2 unit certificate on the band parameterization
(core = k*p substituted into T/p) — second-order but finite and
concrete, unlike the free-form Wieferich loci of the s p^a q story.

## No uniform second-order certificate: the depth regress is real

band_second.py samples ~360 integer points ON the band loci (p | core
without the reverse condition) and measures v_p of the exact relation
value: v_p = 1 at 96% of points, but v_p = 2 at ~4% — the mod-p^2
coefficient vanishes on a thinner sub-locus of its own.  Each valuation
order has its own exceptional set; no bounded-valuation theorem is in
sight by these methods.  This is the precise, empirical shape of the
difficulty on the last 1.65% of (2,2): the same arbitrary-depth
thinning (Fermat-quotient flavor) that guards the s p^a q order loci.
The two-prime b=2 program therefore ends, for now, as: 98.35% proven
impossible unconditionally + a fully-mapped residual whose closure
requires genuinely new (depth-uniform) arithmetic input.

## Toward verified certificates: ParityFacts.lean + generator findings

MsqLean/ParityFacts.lean (builds clean): opposite_parity, re4_odd
(explicit-witness proofs that Re(pi^4) is odd and Im(pi^4) = 0 mod 4
under the forced opposite parity of A, B).  Generation experiments
(gen_parity_lean.py, gen_parity2.py): NO residual relation is killed by
parity alone — every certified relation mixes certificate types
(parity factor x unit-side/pinch factors), so mechanical Lean
generation requires formalizing the unit-side reduction (p never
divides a reduction that is units-times-constant — the GradingLemma
argument specialized to each factor's explicit polynomial) and the
double-pinch bound lemmas.  Design outline: (1) per-factor reduction
identities are `ring`-checkable; (2) unit-atom nonvanishing follows
from GradingLemma + im/re nonzero lemmas; (3) pinch bounds are
Int.le_of_dvd arguments.  Deferred as the next formalization arc.

## FIRST MACHINE-CHECKED KILL OF A RESIDUAL (2,2) RELATION

MsqLean/SimplestRelation.lean (zero sorries, builds with the full
library): theorem `simplest_relation_nonzero` — for distinct odd primes
p, q with Gaussian representations pi = A+Bi, chi = C+Di, the relation
value Im(-p^2 pi^4 chibar^8 - q^2 pi^8 chibar^4 - pi^8 chibar^8) is
never zero.  The formal proof implements the double-pinch certificate
end-to-end: self-conjugacy from vanishing imaginary part, pi | G and
the divisibility extraction pi | 2(C^2-D^2) (stripping pibar- and
chi-units via primality of pi from its prime norm), the symmetric
chi-side extraction q | (A^2-B^2), and the two-ordering strict pinch
(|C^2-D^2| < q, |A^2-B^2| < p, both nonzero for odd primes).
Supporting lemmas in PinchHelpers.lean (int_dvd_of_gaussian_dvd,
strict_pinch, sq_ne_sq_of_odd_prime) and ParityFacts.lean.  This is
the existence proof that the certificate engine's kills are mechanically
formalizable — the path to a fully verified partial Theorem H'.

## The 32 double-pinch relations = one G-shape

cert_table.py: every double-pinch relation uses the SAME three element
slots {(1,2,±), (2,1,±), (2,2,±)} — i.e. G = e1 p^2 pi^4 chi_{s1}^8
+ e2 q^2 pi^8 chi_{s2}^4 + e3 pi^8 chi_{s3}^8 over sign/conjugation
choices — 32 variants, evenly split 8/8/8/8 across the four core-type
pairs (Re,Re)/(Im,Im)/(Re,Im)/(Im,Re).  simplest_relation_nonzero is
the (all-minus, all-conjugated) instance; the other 31 are template
instantiations with star swaps (Re-core via (star chi)^2 + chi^2 =
2(C^2-D^2), Im-core via im_core_eq and coord_sq_lt pinch on C, D).

## Second machine-checked relation: the Im-core template

second_relation_nonzero (SimplestRelation.lean, zero sorries): the
G-shape with flipped third sign.  Extraction yields pi | (q^2 - chi^4)
= -chi^2 (chi^2 - chibar^2) = -chi^2 * <0, 4CD>, so p | 4CD, hence
p | C or p | D with C^2, D^2 < q — coordinate pinch (strict, both
orderings); symmetrically q | A or q | B.  Both certificate variants
(Re-core, Im-core) now have verified Lean templates; the remaining 30
double-pinch relations are sign/star permutations of the two.

## Eight double-pinch relations machine-checked (parametric family)

Four concrete chains now verified (SimplestRelation.lean, zero
sorries): simplest/second/third/fourth_relation_nonzero — the four
(e2,e3) sign-variants of the aligned conjugation class, mixing Re-cores
(p | 2(C^2-D^2)) and Im-cores (p | 4CD -> coordinate pinch) per side.
RelationFamily.lean packages them as ONE parametric theorem
relation_family_aligned (e2, e3 in {±1} hypotheses, 4-way rcases
delegating to the chains via convert+push_cast+ring), plus the D -> -D
mirror relation_family_aligned_mirror covering the fully-unconjugated
class.  8 / 32 double-pinch relations formally dead; the (-,+,+)
star-swapped class (8 more) follows the same recipe; the remaining 16
carry the extra always-odd cubic factor (2X-q^2 / 2R+p^2) and need the
two-factor treatment.

CORRECTION to the previous section: re-examining the class reductions,
only the (-1,-1,-1) conjugation class and its D -> -D mirror (1,1,1)
are clean (units x single small core) on BOTH sides; the 8 relations
now machine-checked are exactly that complete clean family.  All 24
remaining double-pinch relations carry the always-odd cubic cofactor
(u^2 ± u*ub + ub^2 = 2R ± p^2, or the chi-analogue) on at least one
side, so their formal closure needs the two-factor treatment: the
Gaussian extraction yields chi | (sixth-power core) which factors as
(small core) * (odd cubic), and the odd-cubic branch q | 2R ± p^2 must
be handled by the parity/second-factor argument rather than a pinch.

## Ground truth: the 32 pure double-pinch relations = 4 shape families

sym_unit2b.py records per-relation certificates: kills = 32 relations
by a single pure double-pinch factor + 16 (parity+unit-side) + 8
(2 parity + unit-side).  The 32 span FOUR slot-triples:
  F1 {(1,2),(2,1),(2,2)}  — the verified family (8 relations DONE)
  F2 {(0,1),(1,0),(1,1)}  — strip p^2 q^2: G = e1 p^2 chi^4 + e2 q^2 pi^4
                            + e3 pi^4 chi^{±4}
  F3 {(0,2),(1,1),(1,2)}  — strip p^2: G = e1 p^2 chi^8 + e2 q^2 pi^4 chi^4
                            + e3 pi^4 chi^8 (pi-shifted variant of F1)
  F4 {(1,1),(2,0),(2,1)}  — the q-mirror of F3
each x 2 conjugation mirrors x 4 sign variants.  Families F2-F4 need
the same chain recipe (term divisibility via p = pi*pibar when a slot
has no pi-power, extraction, cores, pinch); with the recipe now proven
fast (thm3, thm4 built first-try), the full formal closure of all 32
is a bounded programme.

## Round 53 — Family F2 fully machine-checked (16/32)

New Lean files (full `lake build` green, 0 sorries):

- `MsqLean/CoreDisj.lean` — reusable core-extraction + finish toolkit:
  - `pi_core_disj`: π ∣ (E₂q² + E₃χ̄⁴) ⟹ p ∣ 2(C²−D²) ∨ p ∣ 4CD.
  - `sq_core_disj`: χ ∣ (E₁π² + E₃π̄²) ⟹ q ∣ 2(A²−B²) ∨ q ∣ 4AB.
  - `double_pinch_finish`: any combination of the two disjunctions is
    absurd, via the two-ordering strict pinch (trichotomy on p vs q).
- `MsqLean/RelationFamilyF2.lean` — family F2 = slots {(0,1),(1,0),(1,1)},
  G = e₁p²K₁⁴ + e₂q²π⁴ + e₃π⁴K₃⁴:
  - `family_F2_aligned_nonzero` (K₁=K₃=χ): π-side subtracts the p²-term
    from star G and strips π̄⁴ → `pi_core_disj`; χ-side subtracts the
    q²-term, strips χ̄⁴ then π̄² → `sq_core_disj`; finish.
  - `family_F2_mixed_nonzero` (K₁=χ, K₃=χ̄): π-side goes through the
    D↦−D mirror of `pi_core_disj`; χ-side has NO χ-divisible G, so
    regroup the six-term G − star G = 0, extract χ̄⁴(e₃π⁴ − e₁p²),
    strip χ̄⁴ and π² → `sq_core_disj` with signs (e₃, −e₁); finish.
  - Both theorems are parametric in all three signs e_i ∈ {±1}, so they
    cover every sign variant of both conjugation classes: all 8 F2
    relations dead.

Running total: F1 (8) + F2 (8) = **16/32 pure double-pinch relations
machine-checked**. The toolkit makes F3 {(0,2),(1,1),(1,2)} and its
q-mirror F4 the remaining work; their cores sit at χ⁴/π⁴-level with an
extra q² (resp. p²) grading, same extraction pattern.

## Round 54 — ALL 32 pure double-pinch relations machine-checked

`MsqLean/RelationFamilyF3.lean` + `MsqLean/RelationFamilyF4.lean`
complete the programme (full `lake build` green, zero sorries):

- F3 {(0,2),(1,1),(1,2)}, G = e₁p²χ⁸ + e₂q²π⁴K⁴ + e₃π⁴K⁸:
  - class A (K=χ̄): π-side strips π̄⁴ then χ⁴ and goes through the
    D↦−D mirror of pi_core_disj; χ-side regroups G − star G = 0 and
    extracts χ̄⁸(e₃π⁴ − e₁p²) → sq_core_disj(e₃, −e₁).
  - class B (K=χ, first slot also unconjugated): NOT a substitution
    image of class A (checked — term 1 keeps χ⁸ while 2–3 conjugate);
    proved directly. χ ∣ G holds outright, so no regrouping: strip
    χ̄⁸ then π̄² → sq_core_disj(e₁,e₃); π-side strips π̄⁴, χ̄⁴ →
    pi_core_disj directly.
- F4 {(1,1),(2,0),(2,1)}, G = e₁p²π⁴K⁴ + e₂q²π⁸ + e₃π⁸K⁴:
  - class A (K=χ̄): π-side strips π̄⁸ (mirror pi_core_disj); χ-side
    subtracts the q²-term of G itself, strips χ̄⁴, π⁴, π² →
    sq_core_disj(e₃,e₁).
  - class B (K=χ): genuine D↦−D substitution image of class A —
    a 6-line corollary.

**Status: 32/32 residual pure double-pinch relations at exponent
(2,2) are formally verified in Lean 4 / mathlib, parametric over all
odd prime pairs (p,q), all Gaussian representations, and all sign
variants.** Together with the Lean-verified grading lemma and parity
facts, every certificate class that the symbolic census marks
"double-pinch" now has a machine-checked proof. The remaining formal
gap for the (2,2) unconditional layer is the 24 parity+unit-side
relations (certificates are simpler but the always-odd cubic factors
make the Lean statements longer).

## Round 55 — Twin-collapse: ALL 56 symbolic kills at (2,2) machine-checked

`MsqLean/TwinCollapse.lean` formalizes the 24 parity+unit-side
relations (full build green, zero sorries). Structural discovery: every
one of the 24 has a lone slot plus a twin slot in both conjugations, so
Im(zw ± zw̄) = 2·(Im/Re z)·(Re/Im w) collapses the relation value over
ℤ into (unit factor)·(odd cofactor) — no Gaussian divisibility at all:

- 12 twin families (lone ∈ {(0,1),(1,0),(0,2),(2,0)} × twin slots),
  each a parametric theorem in the twin sign e ∈ {±1} — 24 relations.
- The unit factor is Im(π⁴) = 4AB(A²−B²) or Im(χ⁴)-type (nonzero by
  coordinate facts), doubled with an Re(π⁴)/Re(χ⁴) odd factor for the
  lone-(0,2)/(2,0) families (the parity:2 census profile).
- Every cofactor is 2·(integer) − p^aqᵇ, odd hence nonzero — the
  formal content of the "parity" certificate is literally even−odd.
- Kit: pow4_re_eq/pow4_im_eq bridges, sq_re/sq_im, re4_odd',
  im4_ne_zero, even_sub_odd, odd_cast. The 11 non-prototype theorems
  were generated from a 30-line template and compiled FIRST TRY.

**Milestone: all 56 relations that the symbolic census kills
unconditionally at exponent (2,2) — 32 double-pinch + 24
parity/unit-side — are now formally verified in Lean 4/mathlib,
parametric over all odd prime pairs, representations, and signs.**
The unconditional layer of Theorem H' for s·p²q² centers is fully
machine-checked; what remains beyond it are the 82 alive relations
(18 Pell-band + 64 wedge/zero-side) that need genuinely new
mathematics, and the finite-bound closures (≤144) that are swept
numerically.

## Round 56 — Exponent-UNIFORM twin kills (`UniformTwin.lean`)

Observation: the twin-collapse proofs never use the structure of the
π-side factor or the integer coefficient. Promoting both to opaque
parameters yields four theorems that kill the twin relation shapes at
EVERY exponent (a,b) simultaneously (full build green, zero sorries):

- `uniform_twin_L01`: Im(−c·χ⁴ + e·z·(χ⁴)^k − e·z·(χ̄⁴)^k) ≠ 0 for ANY
  Gaussian z, any k ≥ 1, any odd c, any e — covers every lone-(0,1)
  diff-twin relation at every (a,b) (z absorbs the π-power, c absorbs
  the p^aqᵇ coefficient pattern).
- `uniform_twin_L10`: the sum-twin mirror with opaque χ-side w.
- `uniform_twin_L02` / `uniform_twin_L20`: lone (0,2)/(2,0) with any
  EVEN twin power; the cofactor stays odd via c·Re(χ⁴) odd
  (`Odd.mul` with `re4_odd'`).
- Kit addition: `im_pow_fac` (Im(w^{k+1}) = Im(w)·v by induction) —
  the Chebyshev-style divisibility that lets the unit factor survive
  arbitrary twin powers.

These are the first exponent-uniform formal kill theorems beyond the
grading lemma: at any (a,b) the analogous lone+twin relations (the
entire parity+unit-side census class at (2,2), and its counterparts at
(3,2), (3,3), (4,4), …) are dead by ONE machine-checked statement per
shape. The 12 concrete (2,2) twin theorems are now corollaries.
Gotcha: `x ^ 4 ^ (j+1)` parses as `x ^ (4^(j+1))` — parenthesize.

## Round 57 — Exponent-UNIFORM corner-triple double-pinch (`UniformPinch.lean`)

Unification: every pure double-pinch relation at (2,2) is a corner
triple {(α−1,β), (α,β−1), (α,β)} — the four "families" F1–F4 are the
same relative shape at anchors (2,2), (1,1), (1,2), (2,1). The common
p^{2u}q^{2w} integer coefficient factors out of Im, so ONE theorem per
conjugation class, with free anchor exponents, covers them all AND
their counterparts at every exponent (a,b):

- `uniform_corner_aligned` (a b : ℕ free):
  Im(e₁p²π^{4a}χ̄^{4b+4} + e₂q²π^{4a+4}χ̄^{4b} + e₃π^{4a+4}χ̄^{4b+4}) ≠ 0.
  π-side subtracts the p²-term of star G and strips π̄^{4a+4}, χ^{4b};
  χ-side regroups G − star G and extracts π^{4a}χ̄^{4b+4}(e₁p² + e₃π⁴).
- `uniform_corner_mixed` (b : ℕ free, first slot χ-unconjugated):
  Im(e₁p²χ^{4b+4} + e₂q²π⁴χ̄^{4b} + e₃π⁴χ̄^{4b+4}) ≠ 0.
  The mixed class only occurs at π-anchor α = 1 — for α > 1 the χ-side
  extraction would land on a large core (χ ∣ e₃π^{4α−2} − e₁π̄^{4α−2})
  and the pinch genuinely fails, consistent with the census.
  Both compiled FIRST TRY on the CoreDisj toolkit.

Together with `UniformTwin.lean`, every certificate class observed at
(2,2) now has an exponent-uniform machine-checked kill theorem: corner
triples and lone+twin shapes are formally dead at ALL two-prime
exponents (a,b), all odd prime pairs, all representations, all signs.
The (2,2)-specific files are instances. `Prime.dvd_of_dvd_pow` is
total in the exponent (n = 0 gives χ ∣ 1, absurd ⇒ anything), so the
a = 0 / b = 0 edge cases need no side conditions.

## Round 58 — Higher-exponent census: uniform theorems cover 100%

`symab_census.py` (general-(a,b) version of the certificate engine)
run at (3,2) and (3,3):

- (3,2): 468 relations, 86 killed unconditionally
  (48 double-pinch + 38 parity/unit-side).
- (3,3): 1008 relations, 132 killed unconditionally
  (72 double-pinch + 60 parity/unit-side).
- **Every single kill at both exponents is an instance of the uniform
  theorems.** Corner conjugation patterns: α ≥ 2 anchors are all
  aligned (all-equal conj ± mirrors); α = 1 anchors split
  aligned-mirror / mixed — exactly the two proved classes, and the
  mixed class indeed never occurs at α ≥ 2.
- New twin shapes at higher exponent — lone (3,0) and (0,3), twin
  power always a MULTIPLE of the lone power — prompted the final
  generalization in `UniformTwin.lean`:
  `uniform_twin_chi` / `uniform_twin_pi`: lone slot (0,j+1)/(j+1,0),
  twin power (j+1)(t+1), any opaque other-prime part, any odd
  coefficient. Kit: `im_pow4_ne_zero` (Im((π⁴)^k) ≠ 0 for all k ≥ 1,
  via star-fixedness ⇒ π ∣ π̄; the earlier parity-based per-power
  lemmas are subsumed).

Conjecture (now with strong evidence): at every exponent (a,b), the
unconditional symbolic layer consists EXACTLY of the corner triples
and lone+twin multiples — i.e. the six uniform Lean theorems are the
complete unconditional layer of the two-prime landscape.

## Round 59 — (4,2)/(4,3) census + odd-lone theorems: coverage back to 100%

- (4,2): 816 relations, 124 killed; (4,3): 1752 relations, 190 killed.
- One shape at (4,·) escaped the multiple-power twin theorems: lone
  (3,0) with twin (4,β) — twin power NOT a multiple of the lone power.
  The kill still works because u_k = Im(z^k)/Im(z) satisfies
  u_k ≡ k·R^(k−1) (mod 2): for ODD lone power the u-cofactor is odd
  and the collapse survives ANY twin power.
- Added `im_pow_odd` (Im(z^{2j+1}) = Im(z)·u with u odd, for z with
  odd Re / even Im, by +2 induction), `im4_even`, and
  `uniform_twin_pi_oddlone` / `uniform_twin_chi_oddlone` (lone power
  2j+1, arbitrary twin power t+1, no divisibility hypothesis).
- With these, the uniform theorems again cover 100% of unconditional
  kills at all four higher exponents tested: (3,2), (3,3), (4,2),
  (4,3). Twin census structure: even lone powers only ever appear with
  multiple twin powers (covered by uniform_twin_pi/chi); odd lone
  powers appear with arbitrary twin powers (covered by the oddlone
  pair).

## Round 60 — (5,2)/(4,4) + the 2-adic master rule; 10 uniform theorems

- (5,2): 1260 relations, 162 killed; (4,4): 3040 relations, 272 killed.
- (4,4) fully covered by the existing theorems. (5,2) exposed lone
  (4,0) with twin (5,β) — even lone power, odd twin power, NOT a
  multiple. The 2-adic analysis explains everything:
  u_k = Im(z^k)/Im(z) has v₂(u_k) = v₂(k) exactly (u_{2m} = 2·Re(z^m)·u_m
  with Re odd), so the collapsed cofactor 2e·u_T·Re(w) − c·u_L is
  nonzero iff **v₂(L) ≠ 1 + v₂(T)** — the twin master rule. All census
  twin pairs across (2,2)…(5,2),(4,4) satisfy it; the pairs that would
  violate it (e.g. L=4, T=2) never occur as relations.
- New Lean: `pow_parity` (odd-Re/even-Im preserved under powers, joint
  induction), `re_pow_odd`, `im_pow_four_fac` (v₂ ≥ 2 for 4 | L, no
  induction — two squarings), and `uniform_twin_pi_fourlone` /
  `uniform_twin_chi_fourlone` (lone 4(m+1), twin 2t+1, odd e, odd
  Re-part; cofactor = 2·odd). Full build green, zero sorries.
- The uniform layer now has 10 theorems (2 corner + 8 twin) covering
  100% of unconditional kills at all six tested exponents:
  (2,2), (3,2), (3,3), (4,2), (4,3), (5,2), (4,4).

## Round 61 — The MASTER twin theorems (2-adic rule formalized)

`uniform_twin_master_pi` / `uniform_twin_master_chi`: lone power
2^s(2m+1), twin power 2^{s'}(2m'+1), any opaque other-prime part with
odd Re, any odd coefficient and sign — the relation value has nonzero
Im whenever **s ≠ s' + 1**, i.e. v₂(lone) ≠ v₂(2·twin). This is the
exact 2-adic master rule as a single machine-checked statement per
side (compiled FIRST TRY; full build green, zero sorries).

- Kit: `im_pow_two_adic` — Im(z^{2^s(2m+1)}) = Im(z)·2^s·(odd), by
  induction on s over the doubling identity Im(z^{2k}) = 2Re(z^k)Im(z^k),
  with `pow_parity` supplying odd Re at every level.
- Proof splits on which side of s' + 1 the lone valuation falls:
  s ≤ s' factors 2^s and leaves even − odd; s ≥ s' + 2 factors
  2^{s'+1} and leaves odd − even.
- All eight earlier twin theorems are corollaries; they remain in the
  library as convenient instances.

The uniform layer is now: 2 corner theorems + 2 master twin theorems
(+ 8 instance forms), covering 100% of unconditional symbolic kills at
every exponent tested, with the twin coverage now provably exact — a
lone+twin relation escapes iff v₂(L) = 1 + v₂(T), and no such
relation occurs in any census.

## Round 62 — Three-prime layer: 36/36 kills are twin instances

Reclassifying the 36 unconditional (1,1,1) kills through the twin
lens: every one is a lone+twin shape where the twin pair flips the
conjugation of one or two primes.

- 14 + 14 single-flip relations = literal instances of
  `uniform_twin_master_pi` / `uniform_twin_master_chi` — the third
  prime's Gaussian factor rides inside the opaque slot; the parity
  hypothesis is discharged by the new `mul_parity` lemma
  (odd-Re/even-Im closed under multiplication).
- 4 + 4 double-flip relations collapse over the composite
  W = χ̄⁴ψ⁴. Sum-type (lone = unflipped part) is again master_pi with
  w := W. Diff-type (lone = star W) is the new
  `uniform_twin_composite_chi` in `MsqLean/UniformTwin3.lean`, built
  on `im_composite_ne_zero` (W never real: star-fixedness forces
  χ̄ ∣ χ⁴ψ̄⁴, impossible for distinct split primes) and
  `star_dvd_star`.

So the ENTIRE unconditional layer at (1,1,1) — three primes — is
covered by the uniform twin machinery. The two-prime master theorems
were already prime-count-agnostic in their opaque slot; only the
composite-lone case needed a genuinely three-prime statement. Full
build green, zero sorries.

## Round 63 — (2,1,1) three-prime census: 76/76 covered

`sym3ab_census.py` (general three-prime exponents) at (2,1,1):
1968 relations, 76 killed unconditionally — every one a twin shape:

- 26 single-flip diff-type + 8 composite-flip diff-type
  (master_chi / uniform_twin_composite_chi).
- 10 + 8 + 8 single-unflipped sum-type with twin powers 1,2,2
  respecting the 2-adic rule (master_pi).
- 8 + 8 composite-LONE sum-type (lone = π^{4k}χ^{4l} product, twin
  part equal to the lone): new `uniform_twin_composite_lone` on
  `im_prod_pow_ne_zero` (a product of positive quartic powers of two
  distinct split primes is never real — star-fixedness forces
  π ∣ π̄-or-χ̄).

No corner triples and no non-twin shapes appear at (2,1,1). The
uniform toolkit — now 2 corner + 2 master twin + 2 composite twin
theorems + instances — covers 100% of unconditional kills at every
exponent censused so far: (2,2), (3,2), (3,3), (4,2), (4,3), (5,2),
(4,4) two-prime; (1,1,1), (2,1,1) three-prime.

## Round 64 — (2,2,1) census: 160/160 covered after power-generalization

(2,2,1): 6368 relations, 160 killed unconditionally — again all twin
shapes. Two composite patterns needed power-generalized theorems:

- `uniform_twin_composite_chi_pow` + `im_composite_pow_ne_zero`:
  composite W = χ̄^{4(k+1)}ψ^{4(l+1)} with lone = star W (covers the
  ((1,1),(2,2)) diff-type shapes).
- `uniform_twin_composite_lone_pow`: lone Z = π^{4(k+1)}χ^{4(l+1)},
  twin part Z^{t+1} (covers the ((1,2),(1,2)) sum-type shape; the
  lone is a first power, so the 2-adic rule is trivially satisfied).
- Lesson recorded: `linear_combination` across simp-normalized
  hypotheses requires re-running the im_mul/re_mul simp AFTER any
  rw that introduces fresh Im-of-product atoms, and normalizing the
  key goal with the same set.

Coverage stands at 100% for all ten censused exponent grids:
(2,2)…(4,4) two-prime, (1,1,1), (2,1,1), (2,2,1) three-prime.

## Round 65 — (3,1,1) covered with NO new theorems; N-prime engine

- (3,1,1): 4120 relations, 116 killed unconditionally — every shape an
  instance of the existing toolkit (master twins for singles including
  (1,3) lone-odd pairs; composite-chi and composite-lone for the
  ((1,1),(k,k)) products, k ≤ 3). First census where the theorem set
  needed zero additions — the toolkit looks saturated for twins.
- `symN_census.py`: the engine generalized to any number of primes;
  four-prime (1,1,1,1) census launched (14,944 relations).

## Round 66 — The Lean layer BEATS the census engine at (2,2,1)

Scanning the 6,208 census-ALIVE relations at (2,2,1) for corner
shapes with a constant spectator prime coordinate:

- 80 relations (60 aligned + 20 mixed-anchor-1) have spectator power 0:
  they are p⁴ · (two-prime corner) and are ALREADY DEAD by
  `uniform_corner_aligned` / `uniform_corner_mixed` — the census's
  per-prime certificate test fails because the third prime's side cert
  cannot certify a two-prime pinch, so the engine under-kills.
- 256 more (aligned + mixed-anchor-1) carry a constant nonzero
  spectator factor ψ^{4γ} with uniform conjugation: the corner
  divisibility chains survive with W = ψ^{4γ} riding along (strip
  steps need only π∤W, χ∤W and their stars) — a "spectator corner"
  generalization will kill them.
- Remaining corner-shaped alive: mixed at anchor α ≥ 2 (152, where
  the pinch genuinely fails) and varying-conjugation patterns (976).

Consequence: census "alive" counts at multi-prime grids overstate the
frontier; the machine-checked uniform layer strictly exceeds the
symbolic engine's certificate coverage.

## Round 67 — Spectator-corner theorem + a correction found BY Lean

`MsqLean/SpectatorCorner.lean`: `uniform_corner_aligned_spec` — the
aligned corner triple survives an arbitrary common spectator factor W
in every slot (hypotheses: π ∤ W̄, χ ∤ W). Both extraction chains stay
clean because the remainders group entirely on one side (all-W or
all-W̄). This formally kills the 244 census-alive aligned-corner
relations at (2,2,1) (80 spectator-power-0 via the plain corner
theorems + 164 with ψ^{4γ} spectators... exact split: 60+20 power-0,
128+56 aligned power ≥ 1).

CORRECTION (caught by the failing Lean proof, not by inspection): the
MIXED class does NOT survive a non-real spectator. Its χ-side
regrouping leaves the core e₃π²W − e₁π̄²W̄, which mixes W and W̄ and is
no longer small — the pinch fails. The 72 mixed-spectator-power ≥ 1
relations at (2,2,1) are genuinely uncertified, consistent with the
census. Another instance of the aligned/mixed asymmetry: the mixed
class is fragile (anchor α = 1 only, no spectators), the aligned class
is robust (free anchors, arbitrary spectators).

## Round 68 — Spectator-corner harvest across all three-prime grids

Scanning every censused three-prime grid's ALIVE set for
spectator-corner instances of the formal layer:

| grid | alive | formally dead (aligned-spec + power-0 corners) |
|---|---|---|
| (1,1,1) | 564 | 56 (12 mixed-plain + 12 + 32 aligned-spec) |
| (2,1,1) | 1892 | 120 (12 + 28 + 64 + 16) |
| (3,1,1) | 4004 | 184 (12 + 44 + 96 + 16 + 16) |
| (2,2,1) | 6208 | 264 (80 + 184) |

**624 census-alive relations across the four three-prime grids are
machine-checked dead** by `uniform_corner_aligned(_spec)` /
`uniform_corner_mixed` — roughly 5% of the multi-prime alive frontier
eliminated by the formal layer beyond the symbolic engine. The
remaining alive corner shapes are mixed-class with nonzero spectator
(provably fragile) or varying-conjugation patterns.

## Round 69 — Orientation verification pass

The one condition the shape classifier didn't check — that a diff-type
twin kill's lone conjugation pattern matches one of the two twins'
flipped-part patterns (so the lone really is W or W̄) — verified
programmatically on every twin kill at all nine pickled grids:
0 mismatches / 830 diff-type twins checked. The 100%-coverage claims
hold at the instance level, not just the shape level.

## Round 70 — Sharpness audit of the twin layer

Auditing every ALIVE lone+twin relation at the two-prime grids
against the theorems' hypotheses:

- **Violating shapes exist**: (L,T) = (2,3) and (2,5) twins occur as
  relations and are alive — the 2-adic master rule v₂(L) ≠ 1 + v₂(T)
  is sharp, not vacuous.
- Every other alive twin fails a structural criterion: χ-lone with
  SUM signs or π-lone with DIFF signs (the two collapse products then
  involve different unit factors — Im(w^L) vs Im(z) — with no common
  factor: these are precisely the wedge-type alive relations), or a
  composite lone slot (the band classes).
- Zero "SHOULD-BE-DEAD" entries: no alive relation satisfies all the
  twin-theorem hypotheses. Together with the 100% kill coverage and
  the orientation pass, the twin layer is EXACTLY the
  collapse-plus-2-adic criterion — killed iff type-matching and
  rule-satisfying.

## Round 71 — Corner sharpness audit: the layer is exactly sharp

Auditing all alive corner-shaped relations at the six two-prime grids:
ZERO satisfy the theorem hypotheses. The alive corner patterns are:

- mixed conjugation at anchor α ≥ 2 — the fragile class (χ-side core
  too large; established earlier);
- "one-sided" conjugation patterns (c₁ ≠ c₃ with c₂ = c₁): the π-side
  subtraction leaves a mixed-conjugation combination
  e₂q²χ̄^{4b} + e₃χ^{4b+4} that does not factor, so only the χ-side
  core extracts — a single pinch closes only one prime ordering, and
  the relation genuinely survives for p > q.

Combined with the twin audits: the ENTIRE uniform layer (corner +
twin) is exactly characterized — a relation shape dies
unconditionally iff it satisfies the machine-checked theorems'
hypotheses, and each alive shape fails for a nameable structural
reason (fragile mixed pinch, one-sided extraction, sign-type
mismatch, composite lone slot, or the 2-adic violation).

## Round 72 — FOUR primes: (1,1,1,1) census + the general composite theorems

- (1,1,1,1): 14,944 relations, 232 killed unconditionally — every one
  a twin shape, now including TRIPLE composites (lone/W spanning three
  primes' factors).
- Final generalization: `uniform_twin_composite_gen` (diff-type, lone
  = star(χ̄^{4(k+1)}·V)) and `uniform_twin_lone_gen` (sum-type, lone
  Z = π^{4(k+1)}·V, twin Z^{t+1}) with an OPAQUE tail V and a single
  hypothesis (the head prime doesn't divide star V). Non-reality of
  the composite reduces to: star-fixedness forces the head prime into
  χ-or-star-V, both excluded. These subsume every composite shape at
  ANY prime count — the earlier two/three-prime composite theorems
  are instances.
- Coverage: 100% of unconditional kills at all TWELVE censused grids,
  now spanning two, three, and four primes.

## Round 73 — Four-prime harvest: total formal beats-census kill = 944

Scanning the 14,712 census-alive four-prime relations for spectator
corners: 24 plain + 128 single-spectator + 144 DOUBLE-spectator
aligned corners + 24 plain mixed = **320 formally dead**. Double
spectators (W = ψ⁴ω⁴ products) discharge via the new
`not_dvd_mul_spec(_star)` lemmas. Running total of census-alive
relations killed by the machine-checked layer: 56 + 120 + 184 + 264 +
320 = **944 across the five multi-prime grids**. The alive corner
remainder at four primes: mixed-with-spectator (272, fragile) and
π-conj-varying (320, one-sided).

## Round 74 — Next arc scoped: fully-formal Theorem E (no center s·p·q)

Assets in place: `norm_two_prime_classify` (z of norm s²pᵐqⁿ =
u·s·πʲπ̄^{m−j}χᵏχ̄^{n−k}, already proven), the reduction, and the
Theorem C assembly pattern (`no_four_diffs_prime_power` +
`rep_structure`). Plan:

1. `rep_structure_spq`: x² + y² = (s·p·q)², 2xy ≠ 0 ⟹
   2xy = ε·s²·K with K ∈ {q²·Im π⁴-form, p²·Im χ⁴-form, Im(π⁴χ⁴),
   Im(π⁴χ̄⁴)} — via the classification at (m,n) = (2,2), noting
   z² = u²s²π^{2j}π̄^{4−2j}χ^{2k}χ̄^{4−2k}, u² = ±1, and (j,k) = (1,1)
   is excluded by 2xy ≠ 0.
2. `no_four_diffs_spq`: u, v, u+v, u−v all of that form ⟹ False —
   finite case analysis over type assignments; the arising equations
   are (1,1)-grid relations, i.e. exactly the territory of the
   uniform twin theorems plus small degenerate cases (repeated
   types ⇒ u = ±v-style collisions, as in Theorem C's t1 = t2 branch).
3. Assemble `no_magic_square_of_squares_spq_center` through the
   reduction — the first fully machine-checked two-prime form.

## Round 75 — Theorem E arc step 1: rep_structure_spq DONE

`MsqLean/TheoremE.lean`: `rep_structure_spq` — every representation
x² + y² = (s·p·q)² with 2xy ≠ 0 has 2xy = ε·s²·K, K one of the four
D-set magnitudes {q²·Im π⁴, p²·Im χ⁴, Im(π⁴χ⁴), Im(π⁴χ̄⁴)}, ε = ±1.
Proof: `norm_two_prime_classify` at (m,n) = (2,2); z² = u²s²·(9 fold
cases in (j,k)); (1,1) is real and contradicts 2xy ≠ 0; the other
8 × 2 unit-sign cases fold to the four classes (all 18 blocks
template-generated, compiled after one fix). Next: the assignment
analysis `no_four_diffs_spq`.

## Round 76 — Theorem E step 2 scoping: the assignment systems

Numeric probe: over all 380 ordered pairs from the first 20 useful
primes, NO assignment system (A + B = C, A − B = D with each of
A,B,C,D a signed D-class value) has a solution — Theorem E verified
numerically at scale before formalizing.

Structural reduction for the Lean case analysis: writing the four
constraints as 2A = C + D, 2B = C − D with C = ±V_c, D = ±V_d:
- c = d collapses to A = 0 or B = 0, contradicting u, v ≠ 0 — dead
  with no arithmetic.
- Remaining: 6 unordered class pairs × relative sign = 12 systems,
  each demanding simultaneously V_c + σV_d = ±2V_a and
  V_c − σV_d = ±2V_b. Each single equation is a (1,1)-grid relation
  with an even coefficient (outside the odd-c uniform theorems), so
  the kills are joint-system arguments: pinches |X| < q², |R| < p²,
  nonzero products IX, RY, and p/q-divisibility interplay. Catalog
  per system to be built next.

## Round 77 — Theorem E kill mechanisms identified (no Fermat needed)

Working the assignment systems by hand with numeric guidance:

- Even single equations V_c ± V_d = ±2V_a have ZERO numeric solutions
  over 812 prime pairs.
- Sample kills: {c,d}={3,4}: sum/diff give IX = ±V_a and RY = ±V_b;
  a=1 ⇒ X = ±q² (pinch); the deep-looking a=2 (IX = ±p²Y) yields, via
  R⊥I and X⊥Y coprimality (gcd² ∣ p⁴, gcd coprime to p ⇒ 1),
  |I| = |Y| and q⁴ = p⁴ + Y² — and the partner equation b=1 gives
  p⁴ = q⁴ + I², so summing forces Y² + I² = 0. No Fermat descent.
- {c,d}={1,2} with a=3: the wedge-like equation
  I(q²−2X) = Y(2R−p²) resists alone, but the partner b=4 equation
  combines: ε-aligned cases give 2X = ±q² (even = odd); anti-aligned
  give 2IX = ±p²Y ∧ 2RY = ±q²I, whose PRODUCT yields 4RX = ±p²q²
  (even = odd).
- Kernel needs: coprime-from-norm lemma, pinch lemmas, sq-dvd-sq
  extraction, and even≠odd finishers — all elementary.

Next: mechanical certificate catalog over all systems, then the Lean
case tree.

## Round 78 — Theorem E certificate catalog complete (design level)

Mechanical certificate search over all 512+ assignment leaves:

- 32 die on the first equation alone (16 q-div/p-div, 16 factored
  unit×pinch);
- 64 more die by the binomial PRODUCT trick (multiply the sum- and
  difference-derived binomials; the product is unit×unit×odd, dead by
  parity);
- the remaining 368 leaves (≈50 (pair,a,b) shapes) reduce to 2/3-term
  GAUSSIAN relations with coefficients in {±1, ±2, ±3} — e.g.
  ({q²I, mixed}, a = mixed) collapses to c′·Im(π⁴χ⁴) = q²·Im(π⁴),
  c′ ∈ {±1,±3}, killed by the standard regrouping: χ divides every
  term of G − Ḡ except c′π̄⁴χ̄⁴, and χ ∤ 3 because q ≡ 1 (mod 4).
  Coefficient coprimality (χ ∤ 2, χ ∤ 3) replaces the odd-c hypothesis
  of the uniform twin theorems.

All three certificate tiers are elementary Lean material. Remaining
work: implement the integer-certificate kernel (parity, mod-4 grid,
q²∤, pinch, product), the small-coefficient Gaussian chains, and the
generated 512-leaf dispatch.

## Round 79 — Theorem E integer kernel (`TheoremEInt.lean`)

Kernel lemmas machine-checked: `p_not_dvd_re4_im4` (p divides neither
coordinate of π⁴: both ⇒ π̄ ∣ π³; one ⇒ both via R² + I² = p⁴),
`coprime_re4_im4` (a shared prime r of R, I divides p⁴, so r = p,
contradiction), `pinch_sq` (X = ±q² forces Y = 0), `four_w_two_ne`
(the mod-4 finisher). Full build green.

## Round 80 — Theorem E Gaussian-tier kill lemmas (`TheoremEGauss.lean`)

Machine-checked: `twoterm_q_mixed` (c₁q²·Im π⁴ = c₂·Im(π⁴χ⁴)
impossible when q ∤ c₂ — χ-regroup leaves χ ∣ c₂π̄⁴χ̄⁴),
`twoterm_p_mixed` (p-side mirror), `twoterm_qI_pY`
(c₁q²·Im π⁴ = c₂p²·Im χ⁴ — pure integer q-divisibility chain),
plus `chi_not_dvd_intcast`, `rep_mod_four` (sum-of-two-squares odd
primes ≡ 1 mod 4), `useful_not_dvd_small` (useful primes are ≥ 5, so
∤ {1,2,3}). Conjugate variants come free at call sites via (C, −D).
Gotcha: `linear_combination` sign — the Im-goal enters with opposite
orientation; use −h.

## Round 81 — Theorem E refined dispatch: 960 leaves covered, 384-residue plan

Refined dispatcher (two-term reduction whenever an equation's target
class lies in {c,d}): 960 of the 1344 sign-leaves die by the three
shipped two-term lemmas (q_mixed 384, p_mixed 384, qI_pY 192). The
384-leaf residue = 24 shapes (both u,v classes outside {c,d}), ~4
types up to symmetry:

- T1 ({q²I, p²Y} vs mixed u,v): aligned ε ⇒ sum/diff give
  I(2X ∓ q²) = 0 (even ≠ odd); anti-aligned ⇒ 2RY = ±q²I ∧
  2IX = ±p²Y, multiply and cancel IY ⇒ 4RX = ±p²q² (even ≠ odd).
- T2 ({q²I, mixed} vs {p²Y, other-mixed}): substitution gives
  p²Y = ±2IX (or trivially dead variants) plus q²I = c′IX + c″RY;
  coprimality (I⊥R, X⊥Y) forces Y ∣ 2I ∧ I ∣ c″Y, a FINITE ratio
  enumeration (Y = ±I, ±2I, ±2I/3, ±I/3), each branch ending in
  p² = ±2X-type parity, X = ±p² pinch, or 3 ∤ p² —
  all elementary. Symmetric types by p↔q and conj mirrors.

Remaining Lean work: ~8 bespoke residue lemmas + the generated
dispatcher + final assembly through the reduction.

## Round 82 — Theorem E residue lemmas T1/T3 (`TheoremEResidue.lean`)

Machine-checked: `resid_even_odd` (2eUX = s·q²·U kills by even ≠ odd
after cancelling U), `resid_product` (the anti-aligned pair
2eRY = sq²I ∧ 2e′IX = s′p²Y multiplies to 4ee′RX = ss′p²q², even ≠
odd; omega needs `generalize` on the nonlinear R·X atom),
`resid_size` (RX = ±p²q² beaten by R² < p⁴ ∧ X² < q⁴),
`resid_pinch_product` (e₁q²I = RY ∧ e₂p²Y = IX ⇒ RX = ±p²q² ⇒ size).
T1 and T3 residue types fully covered; T2's divisor-ratio enumeration
(Y ∣ 2I ∧ I ∣ c″Y) is next.

## Round 83 — T2 correction: the ratio branches end in quadratic kills

Correction to Round 81's sketch: in the T2 ratio enumeration the
branch Y = ±2I gives X = ±p² — NOT a pinch (|X| < q² allows it when
p < q). The branch continues: X = ±p² ∧ Y² = q⁴ − p⁴ ∧ the (ii)
equation determine R, and equating with R² = p⁴ − I² gives
(1+c″²)(q/p)⁴ ∓ 2c′(q/p)² + (1−5c″²) = 0 — integer-ratio quadratics
whose roots force q² = 2p² (kills: 2 ∤ odd q), q = p (excluded), or
5q² = 11p² (kills mod 11 / at p = 5). All elementary, but the T2
lemma is a ~300-line sub-case tree; the full branch structure will be
verified symbolically before implementation. The single-equation
Gaussian route is genuinely insufficient here (the p-side pinch closes
p > 2q, the χ-side only q > 9p²; the middle band needs the partner
equation) — matching the census's earlier finding that these leaves
are not certified by any single-relation argument.

## Round 84 — T2 fully verified: the ratio branches factor cleanly

With the actual leaf coefficients (|c′| = 3, |c″| = 1 — from
(c′,c″) = (3e₁, −e₁) after substitution), the T2 tree is:

- I ∣ Y ∧ Y ∣ 2I (from coprimality against (ii),(iii)) ⇒ Y = ±I or
  Y = ±2I only (k·m = 2 divisor pairs — no thirds, since |c″| = 1).
- Y = ±I ⇒ p² = ±2X: parity kill.
- Y = ±2I ⇒ X = ±p², and equating R² from (ii) with R² = p⁴ − I²
  gives (q² ∓ 3p²)² = 5p⁴ − q⁴, which either exceeds by size
  ((q²+3p²)² ≥ 9p⁴ > 5p⁴) or FACTORS as (q²−p²)(q²−2p²) = 0 —
  killed by q ≠ p and by parity (q² = 2p²).
- Sibling rows ({0,2} with (1,1)/(3,3)) die by sum/diff two-term
  reductions into the existing lemmas; ({2,3},(0,0)/(1,1)) die by
  pinch_sq via their partner equation.

All T2 branches verified; `resid_ratio` (~150 lines) is the last
residue lemma before the dispatcher.

## Round 85 — resid_ratio_core DONE: all Theorem E residue lemmas proven

`resid_ratio_core` machine-checked (zero sorries): the T2 joint system
p²Y = 2IX ∧ a·q²I = 3b·IX − RY (a, b = ±1) is impossible. Structure:
coprimality gives I ∣ Y ∣ 2I; k·m = 2 forces Y ∈ {±I, ±2I};
Y = ±I dies by `resid_p2_even`; Y = ±2I forces X = ±p²,
2R = ±(3b·p² ∓ a·q²), and the norm identities give
4R² = 5p⁴ − q⁴, whence q⁴ ∓ 3(ab)p²q² + 2p⁴ = 0 —
killed by `resid_quad_factored` ((q²−p²)(q²−2p²) = 0 vs q ≠ p and
parity) or `resid_quad_pos` (positivity).
Debug notes: linear_combination-vs-linarith atom normalization;
a SIGN ERROR in the k = −2 branch (2R = +(3bp²+aq²)) was caught by
Lean, not by inspection — second such catch this session.
The residue tier is complete: parity, product, size, pinch-product,
ratio. Next: the generated 1344-leaf dispatcher + assembly.

## Round 86 — Theorem E dispatcher: dispatch_01 prototype compiles

`MsqLean/TheoremEDispatch.lean`: K0–K3 class abbreviations with
coordinate lemmas, and `dispatch_01` — the complete kill of every
assignment whose {u+v, u−v} classes are {q²·Im π⁴, p²·Im χ⁴}, with
the u/v classes disjunctive and every sign symbolic. 16 class
sub-cases: pure classes via `twoterm_qI_pY` (with sign-expression
coefficients bounded by useful_not_dvd_small), mixed-equal via
degenerate sum/diff (I or Y forced to 0), mixed-distinct via
`resid_even_odd` (aligned) or `resid_product` (anti-aligned).
Sign-orientation bookkeeping: linear_combination needs +h when the
target coefficient sits on the same side as the hypothesis's, −h
otherwise — recorded per collapse type for the generator.
Five pair-dispatchers remain (02, 03, 12, 13, 23), then the 4×4 outer
case split and assembly.

## Round 87 — dispatch_23 complete (2 of 6 pair-dispatchers)

`mixed_pair_core` + `dispatch_23`: the {K2, K3} (both-mixed) pair
fully machine-checked. The four sign-splits normalize to
I·X = f·Kc1 ∧ R·Y = g·Kc2, and the core runs a 4×4 class analysis:
pinches (X = ±q², R = ±p² against the norm identities), zero-products,
parity p²/q² = 2M (via linear_combination with the unit-square fact —
nlinarith won't find the f·h product), the pinch-product lemma, and
small linear eliminations. Lean engineering notes: `set` variables
don't fold into later-unfolded defs (use generalize-at-* +
coordinate lemmas rewritten through the defs); `positivity` on
set-variables of big Gaussian expressions blows the whnf budget
(use pow_two_pos_of_ne_zero); linear_combination does not accept /2
in ℤ (use linarith for halving). Remaining: dispatch_02/03/12/13,
outer 4×4 split, assembly.

## Round 88 — dispatch_02 complete (3 of 6); ratio machinery wired

`ratio_bridge` (σ-normalization into resid_ratio_core, with the σ-sign
riding on BOTH mixed terms and c := σ) + `dispatch_02` — the {K0, K2}
pair fully machine-checked: two-term collapses via twoterm_q_mixed /
twoterm_qI_pY (coefficient side-conditions discharged by
useful_not_dvd_small with rcases-norm_num), degenerate diagonals via
K2 ≠ 0 (im_prod_pow_ne_zero at k = l = 0) and I ≠ 0, ratio cases via
the bridge, parity collapses via resid_p2_even. The (e-sign →
branch-type) bookkeeping was corrected against explicit re-derivation:
in the {0,2} pair, (e2,e4) aligned diagonals are the ratio cases and
anti-diagonals are parity, with the two groups needing OPPOSITE
linear_combination orientations (−hdiff vs +hdiff). resid_ratio_core
generalized with an independent third sign c. Remaining:
dispatch_03 (K3-variant), dispatch_12/13 (prime-swapped), outer split.

## Round 89 — dispatch_03 complete (4 of 6)

`twoterm_q_mixed3` (K3-variant via the D↦−D mirror with a star_pow
rewrite) + `dispatch_03` ({K0, K3} pair). ratio_bridge generalized
with an independent 4th sign τ (the RY-orientation differs between
the {0,2} and {0,3} pairs: τ = −σ vs τ = σ). One structural bug
caught by Lean: the a=K2 subtree's b=K2 branch is degenerate (K3 = 0
or K0 = 0), NOT an E1-collapse — the residual 2e₁K2 − 2e₁K3 in the
failed ring goal pointed straight at it. Remaining: dispatch_12/13
(prime-swapped clones — the swap works by calling ratio_bridge and
the kill lemmas with (q,C,D) and (p,A,B) exchanged), outer split,
assembly.

## Round 90 — ALL SIX pair-dispatchers complete

`dispatch_12` and `dispatch_13` obtained by PRIME-EXCHANGE TRANSPORT:
under (p,A,B) ↔ (q,C,D) the classes map K0 ↔ K1, K2 ↦ K2 (mul_comm),
K3 ↦ −K3, so each is a 16-case mechanical bridge into dispatch_02/03
with the K3 sign absorbed into ε₁/ε₂ (the products ε·K are invariant)
and ONE uniform linear_combination per dispatcher
(hE ± e3·h01 ± e4·swap-lemma). Both compiled on the first try after
the class-expression fix. The dispatcher layer for the Theorem E
assignment analysis is COMPLETE: 01, 02, 03, 12, 13, 23.
Remaining: outer {c,d} split (16 combos incl. c = d degenerates via
class-nonzeroness) + rep_structure plumbing + the final theorem.

## Round 91 — ★ THEOREM E FULLY MACHINE-CHECKED ★

`no_magic_square_of_squares_spq_center` (in TheoremEDispatch.lean)
compiles with zero sorries, full library build green (8,742 jobs):

**No 3×3 fully magic square of nine perfect squares has center entry
(s·p·q)² for distinct primes p, q ≡ 1 (mod 4) and rigid cofactor s.**

The first fully-formal two-prime impossibility theorem. The complete
chain: converse_reduction (center → four D-set differences) →
rep_structure_spq (18-case Gaussian classification of the D-set) →
no_four_diffs_spq (s²-cancellation + repackaging) →
no_assignment_spq (16-combo class router, c = d degenerates via
class-nonzeroness) → six pair-dispatchers → three certificate tiers
(two-term Gaussian kills, parity/product/size/pinch-product residues,
the ratio system with its factored quadratic finishers).

Together with machine-checked Theorem C (single-prime centers, any
power), the formally verified impossibility now covers all center
roots s·pᵃ (a arbitrary) and s·p·q. This extends the formal frontier
from "one useful prime never suffices" to the first genuinely
two-prime form.

## Round 92 — Theorem F arc opened: rep_structure_sp2q DONE

`MsqLean/TheoremF.lean`: the 7-class D-set classification for
e = s·p²·q machine-checked (30 template-generated (j,k)-cases;
classes {p⁴·Im χ⁴, p²q²·Im π⁴, q²·Im π⁸, p²·Im(π⁴χ^{±4}),
Im(π⁸χ^{±4})}; the (2,1) slot is real and dies on 2xy ≠ 0).
Generator gotchas: the LAST disjunct of an n-way Or needs bare ?_
(no Or.inl); rw closes rfl-goals so template tails must be
try-tolerant. Next: the assignment catalog for 7 classes (numeric
verification + certificate tiers), then dispatchers.

## Round 93 — Theorem F numeric probe: same structure as E

All 7-class half-systems e₃V_c + e₄V_d = ±2V_a verified over 380
prime pairs: ZERO genuine solutions; the only numeric hits are the
trivial diagonals c = d = a (which force v = 0 at the system level).
So Theorem F's assignment analysis kills on single equations plus
degenerates — the Theorem E architecture transfers directly. Plan:
generalize the two-term Gaussian kills to an OPAQUE π-part (the
χ-side regroup only needs χ ∤ star z, dischargeable for π⁴ and π⁸),
then run the mechanical certificate classifier over the 7-class
equations and size the residue tiers.

## Round 94 — Generalized two-term kills for Theorem F

`twoterm_q_gen` and `twoterm_p_gen` (both first-try compiles): the
two-term Gaussian kill with OPAQUE parts — any z with χ ∤ z̄ against
c₁·q^{2(t+1)}·Im z = c₂·Im(z·χ⁴), and the π-side mirror with both u
(π ∣ u, π ∤ ū) and w opaque. These subsume the Theorem E versions and
cover every π⁸-level F-class collapse. Integer-certificate pass on
the 7-class single equations: 166 killed outright (q-div 37, p-div 97,
factored 25, degenerate 7); 520 need the Gaussian tier — next step is
the refined catalog with two-term-reduction awareness to size the
true residue.

## Round 95 — twoterm_p_extract: one lemma for every mixed collapse

The definitive two-term kill: c₁·p^{2(t+1)}·Im z₁ = c₂·Im z₂ is
impossible whenever π ∣ z₂, π ∤ z̄₂, and π ∤ c₂ — with z₁ COMPLETELY
arbitrary (the star-side subtraction uses only the p-power on the lone
term; π then must divide c₂·z̄₂). First-try compile. Since the
statement never mentions the second prime, the q-side extraction is
the SAME lemma applied at (q, C, D). All 72 mixed collapse types in
the Theorem F single-equation catalog reduce to this one lemma plus
the integer-divisibility kills; the earlier twoterm_q_gen/p_gen and
even the Theorem E two-term trio become special cases. Remaining
Theorem F work: the 210 three-term (a ∉ {c,d}) shapes via
S/D-combinations, then dispatchers and assembly.

## Round 96 — Theorem F three-term map: E-reuse + extraction criteria

The 210 three-term shapes classify by two clean criteria:

- π-extraction kills a 3-term relation iff exactly ONE of its classes
  lies in {q²I₈, Im(π⁸χ⁴), Im(π⁸χ̄⁴)} (the star-side-p-free set);
  q-extraction iff exactly TWO lie in {p²q²I, q²I₈}. Both are
  instances of the universal twoterm_p_extract-style star-subtraction
  (coefficient 2 is harmless: π ∤ 2).
- Triples inside {p⁴Y, p²q²I, p²M₂, p²M₃}: dividing by p² gives
  EXACTLY Theorem E's class set {p²Y, q²I, M₂, M₃} — so the entire
  π⁴-level sub-landscape of Theorem F is killed by the already-proven
  `no_assignment_spq` after p²-cancellation. Massive reuse.
- The genuine F-residue: π⁸-level triples ({5,6,x}, {2,5/6,x} with
  x ∈ {0,3,4}, {2,5,6}, and class-doubled diagonals) — the analog of
  E's ratio/product tier one level up. These need the new residue
  lemmas (I₈ = 2RI, R₈ = R²−I² structure).

## Round 97 — Theorem F residue sized: 184 leaves, all π⁸-level

Full-system classification over the 2401 (c,d,a,b) combos:
343 c=d degenerate, 1008 two-term collapses, 612 π-extraction,
113 q-extraction, 141 E-reuse (p²-cancelled no_assignment_spq),
**RESIDUE 184 in 41 class-sets** — every one involving
{Im(π⁸χ⁴), Im(π⁸χ̄⁴)}. The dominant blocks (24 each) are
{q²I₈, x, π⁸-mixed pair} for x ∈ {p⁴Y, p²M₂, p²M₃}: the π⁸ analog of
Theorem E's ratio/product tier. Coordinate facts lift: R₈² + I₈² = p⁸,
p ∤ R₈ (else p ∣ 2I²), p ∤ I₈, R₈ odd, I₈ = 2RI ≠ 0. Plan: an
R₈/I₈ fact-pack, then the {5,6}-pair mixed core (E's mixed_pair_core
at level 8), then the cross-level ratio systems.

## Round 98 — P-parametrized ratio core for Theorem F

`resid_ratio_core_P` (transformed mechanically from the proven E
version): P·Y = 2IX ∧ a·q²I = 3b·IX − c·RY impossible for any odd
positive P with p ∣ P and R² + I² = P². The terminal quadratic factors
as (q² − P)(q² − 2P): the first branch now kills EVEN MORE cleanly
than at E (p ∣ q² ⇒ p = q), the second by parity. New finishers:
`resid_P_even`, `resid_quad_factored_P`, `resid_quad_pos_P`.
Instantiations: P = p² recovers E; P = p⁴ covers the dominant
{p⁴Y, q²I₈, π⁸-pair} residue block of Theorem F with (R₈, I₈)
coordinates. The mechanical E→P transform (p² ↦ P, p⁴ ↦ P²) worked
with only an instance-binder fix.

## Round 99 — First cross-level F kill worked out

The {q²I₈, p²M₂, {π⁸-mixed pair}} system (one of the 24-leaf blocks):
eq2 collapses to q²I₈ = ±R₈Y, whose coprime ratio forces Y = ±I₈ and
q² = ±(R²−I²), hence X² = R⁴ − 6R²I² + I⁴; eq1's π-extraction leaves
the CONDITION p ∣ 2X (not yet a contradiction); combining mod p with
R² ≡ −I² (from R²+I² = p⁴) gives X² ≡ 8I⁴, so p ∣ X forces p ∣ I —
dead. A genuinely joint, cross-level certificate: condition-from-one-
equation + ratio-from-the-other + a mod-p finisher through the norm
identity. The remaining 41 class-sets need a systematic catalog of
such strategies before further Lean — next step.

## Round 100 — F residue reduces to a level-8 mixed core

The 61 residual buckets all twin-split (via S ± D) into paired
two-term equations I₈·X = f·K and R₈·Y = g·K′ over partner classes —
the exact structure of Theorem E's mixed_pair_core one level up.
Branch inventory:
- I₈X vs q²I₈: X = ±q² pinch. I₈X vs p²q²I: cancel I ⇒ 2RX = ±p²q²,
  even ≠ odd. R₈Y vs p⁴Y: R₈ = ±p⁴ ⇒ I₈ = 0. All immediate.
- I₈X vs p⁴Y: the P-ratio system (resid_ratio_core_P, P = p⁴) with
  the partner equation.
- R₈Y vs q²I₈: the Round-99 ratio (Y = ±I₈, q² = ±R₈, X² = R⁴−6R²I²+I⁴).
- Remaining bespoke: I₈X / R₈Y against p²(RY ± IX) — the cross-level
  couplings (p ∣ X conditions + mod-p finishers through R² ≡ −I²),
  and R₈Y vs p²q²I. Roughly 4–6 joint lemmas to design, then a
  generated mixed_pair_core_8 and the F dispatchers.

## Round 101 — The R₈ ∣ q² enumeration (bespoke branch A1)

For the cross system I₈X = f·p²(RY+IX) ∧ R₈Y = g·q²I₈:
(i) gives I ∣ Y (I ⊥ R and I ⊥ p); substituting Y = I·m and using
R ∣ m turns (ii) into R₈·n = 2g·q², so R₈ ∣ q² (R₈ odd, p ∤ R₈).
Three branches:
- R₈ = ±1: (R−I)(R+I) = ±1 forces I = 0. Dead.
- R₈ = ±q: back-substitution gives Y = ±g·q·I₈, and X² + Y² = q⁴
  forces q² ∣ X², i.e. q ∣ X — contradicting q ∤ Re χ⁴. Dead.
- R₈ = ±q²: Y = ±g·I₈, I₈² = p⁸ − q⁴ gives X² = 2q⁴ − p⁸; equation (i)
  mod p forces p ∣ X, so p² ∣ 2q⁴ — dead via p ∤ q.
The same enumeration pattern (R₈ ∣ q² or R₈ ∣ p²q²-reduced-to-q²)
covers branch A3. Remaining to design: A4 (both equations cross-type).
Then the level-8 mixed core can be written with: immediate branches,
ratio-P, Round-99 ratio, and the R₈-enumeration lemmas.

## Round 102 — Branch A4: the product-mod-p kill; all F branches designed

A4 (both equations cross-type, I₈X = f·p²(RY+εIX) ∧
R₈Y = g·p²(RY+ε′IX)): multiply, cancel I·X·Y, and reduce mod p —
every term except (2R)(R²−I²) carries p², so p ∣ 2R·R₈, contradicting
p ∤ R and p ∣ R₈ ⇒ p ∣ 2I². Two lines of mathematics.

Complete F-residue branch inventory, all designed:
- immediate (pinch X = ±q², R₈ = ±p⁴, 2RX = ±p²q² parity) ✓
- ratio-P (resid_ratio_core_P, P = p⁴) ✓ proven
- Round-99 ratio (R₈Y vs q²I₈) — to Lean
- R₈ ∣ q² enumeration (A1/A3) — to Lean
- product-mod-p (A4) — to Lean (short)
Then mixed_pair_core_8, twin-split wrappers, router, assembly.

## Round 103 — resid_cross_product + resid_r8_derive machine-checked

Two of the three bespoke F-residue pieces are now Lean:
- `resid_cross_product` (A4): the two cross equations multiply,
  I·X·Y cancels, and mod p only 2R·R₈ survives. First-try compile.
- `resid_r8_derive`: from R₈Y = g·q²I₈, coprimality (I₈ ⊥ R₈ via
  coprime_re8_im8, Y ⊥ q) forces Y = σI₈, R₈ = σg·q², and
  X² = 2q⁴ − p⁸. Nonlinear steps (multiplying hypotheses by unit
  signs, squaring) handled by explicit linear_combination with the
  unit-square facts — nlinarith consistently fails on these.
Remaining bespoke: the four finishers on top of r8_derive (per
partner class: q⁴ = p⁸ ⇒ p ∣ q; parity; p ∣ X ⇒ p² ∣ 2q⁴), and the
R₈ ∣ q² enumeration for A1/A3. Then the level-8 core assembly.

## Round 104 — r8-derive finishers machine-checked

`resid_q4_p8` (q⁴ = p⁸ forces p = q), `resid_p2_2q4` (p² ∣ 2q⁴
impossible for odd distinct primes), `resid_pX_extract` (p ∣ X from
X(2R − c) = M with p ∣ c, M and p ∤ R). Together with resid_r8_derive
these close all four partner cases of the R₈Y-vs-q²I₈ branch:
X = ±q² or ±p⁴ hit q⁴ = p⁸; the p²q²I partner is parity; the cross
partner extracts p ∣ X and lands in p² ∣ 2q⁴. Remaining bespoke: the
R₈ ∣ q² enumeration (A1/A3), then the level-8 core assembly.

## Round 105 — resid_cross_p2q2: A3 killed WITHOUT enumeration

Re-derivation collapsed A3 entirely: I ∣ Y (via I ⊥ R²−I², built
from I ⊥ R with IsCoprime.pow_right + add_mul_left_right), cancel I
in both equations, p ∤ R₈ forces p² ∣ m, giving p ∣ Y and (via
resid_pX_extract on the partner) p ∣ X — so p² ∣ X² + Y² = q⁴,
contradiction. The Round-101 R₈ ∣ q² enumeration is unnecessary.
ALL bespoke F-residue branch lemmas are now machine-checked:
cross-product (A4), r8-derive + finishers (A1-family), cross-p2q2
(A3). Next: assemble mixed_pair_core_8 and the twin-split wrappers.

## Round 106 — mixed_pair_core_8 cell table

The {5,6}-twin-split core (I₈X = f·K₁ ∧ R₈Y = g·K₂, K's over the five
level-≤4 classes) dispatches as:
- I₈X vs q²I₈: X = ±q² pinch. I₈X vs p²q²I: 2RX = ±p²q² parity.
- R₈Y vs p⁴Y: R₈ = ±p⁴ ⇒ I₈ = 0.
- R₈Y vs q²I₈: resid_r8_derive + per-partner finishers
  (q⁴ = p⁸ / parity / pX_extract + p²∣2q⁴).
- R₈Y vs p²q²I: cross_p2q2-skeleton (p²∣m ⇒ p∣X,Y ⇒ p²∣q⁴), with a
  simpler (i)-variant when K₁ = p⁴Y (2RX = fp⁴m directly).
- both cross (K₁, K₂ ∈ {p²M₂, p²M₃}): resid_cross_product.
- I₈X vs p⁴Y with R₈Y-partner: covered by the K₂-side kills above
  (every K₂ has one).
All 25 cells covered; two thin lemma variants to add during assembly.

## Round 107 — mixed_pair_core_8 machine-checked (all 25 cells)

The central Theorem F lemma compiles, zero sorries: the twin-split
system I₈X = f·K₁ ∧ R₈Y = g·K₂ over the five level-≤4 classes is
impossible. Cell dispatch: global kills (R₈ = ±p⁴, 2RX = ±p²q²,
X = ±q²), the I∣Y/p²∣m chains, resid_r8_derive with per-partner
finishers, resid_cross_p2q2, resid_cross_product, pX_extract.
Sign bookkeeping caught by Lean: the ε = −1 cross-collapse has
c = f·p² with negated M (NOT c = −f·p²), and the L4-side of
cross_product needs (−g, −1). Remaining F: the per-bucket twin-split
wrappers (S/D-massage into the core), extraction-tier wrappers, the
E-reuse wrapper, and the full router/assembly.

## Round 108 — dispatch_56F (first F pair-dispatcher)

L5/L6 class defs + coordinate lemmas + the {5,6}-pair wrapper:
four sign-splits into mixed_pair_core_8, first-try compile.
Analysis note: buckets where u, v are the level-8 classes produce
coefficient-2 systems (2I₈X = ±Vc ∧ 2R₈Y = ±Vd) — most cells kill
even faster (2X = ±q² parity), but the p⁴Y-cell feeds ratio-P with
I := I₈ directly, and the q²I₈-cell needs a factor-2 r8-derive
variant. Next: that coefficient-2 core, then the mixed-cd buckets.

## Round 109 (2026-08-15)
`mixed_pair_core_8_two` complete (commit 0c7e55a): all 12 cells of the
coefficient-2 level-8 system for s·p²·q closed. Highlights:
- (L0, L2): I₈ = Y·k divisibility, then 2(kX) = f·p⁴ parity kill
  (generalize needs the `2*(k*X)` association or omega sees a nonlinear atom).
- (L3, L2) and (L4, L2): `deep_val_cell` — p² ∥ X forces p⁴ | 5R⁴;
  p = 5 dies by norm bound, p ≠ 5 by p | R vs coprime_re8_im8.
  L4 side enters with f ↦ −f to match the (RY − IX) orientation.
- Remaining for Theorem F: mixed-cd bucket wrappers, extraction-tier
  call-sites (twoterm_p_extract), E-reuse p²-cancel wrapper, router,
  no_four_diffs_sp2q, capstone.

## Round 110 — dispatch_ab56F + dispatch_lowE + full residual cell map

Shipped: dispatch_ab56F (level-8 pair on the (u,v) side → _two core,
mirrored branch has its own sign table) and dispatch_lowE (all-low
L2-free bucket: peel the common p², quotients are EXACTLY the four
s·p·q classes, hand to Theorem E via new public wrapper
no_assignment_spq_coord). Residual cell map for the F router
(distinctness of the four class values will be threaded from the
capstone, so no class repeats):
- all-low WITH an L2 slot: the equation pairing L2 against two
  p²-classes gives p² | q²I₈ → p | I₈, dead (p ∤ 2RI). Easy lemma.
- one level-8 slot, no L2 elsewhere: the 8-equation reads
  2·Im(π⁸χ^{±4}) ≡ 0 mod p² — dead once we prove p ∤ Im(π⁸χ^{±4})
  (Gaussian: π ∣ z, π ∤ z̄ forces p ∤ Im z; mirrors twoterm_p_extract).
- k=2 cross-position ((a,c)-type): system {2T = ±Kb, 3T+S = ±Kd}
  with T = R₈Y, S = I₈X. Kb non-L2 → p²∣Y; then Kd non-L2 →
  p²∣S → p²∣X → p⁴ ∣ X²+Y² = q⁴, dead. Kb = L2 → q²∣R₈Y with
  q ∤ R₈, Y, dead.
- bespoke leftovers: level-8 + L2 in the SAME equation:
  p² ∣ (Im(π⁸χ⁴) ∓ q²·Im(π⁸)) and the (X ≡ ±q² mod p², p²∣Y)
  valuation cell. Expect deep_val-style arguments.

## Round 111 — cross-pair cells: probe + the Ljunggren trap

Probe (cross_pair_probe.py): all 44,800 (2T/2S, 3T±S/3S±T) cross-pair
cells over 8 primes are empty; even every SINGLE equation is empty
(cross_pair_single.py). But single-equation kills are a trap: pushing
2T = ±L1 or 2T = ±L2 through the coprime-cancellation chain ends in
R₈ ∣ q², whose R₈ = ±1 branch is 2R² − 1 = p⁴ — Ljunggren territory,
out of reach. The kills MUST use both equations. Two-equation map
(T = R₈Y, S = I₈X; first equation fixes p-valuations):
- Kb = L0: 2R₈ = ±p⁴ parity kill. Kb = L1/L3: eq1 forces v_p(Y) = 2,
  v_p(X) = 0; then any p²-class partner forces p² ∣ I₈X → p² ∣ X,
  contradiction (or p⁴ ∣ q⁴ via X²+Y²). Kb = L2: eq1 gives
  v_p(Y) = 0 and q² ∣ R₈; partner analysis still open.
- ALL remaining hard cells pair with L2 (q²I₈): canonical form
  X ≡ ±q² (mod p²) with p² ∥ Y. Progress: X = ±q² exactly forces
  Y = 0 (dead); otherwise p⁴ ≤ 2q² (size window) plus
  2q²x₂ = ∓(p⁴x₂² + y²). Also mod q²: 3R₈X ≡ ±I₈Y alongside
  3R₈Y ≡ ∓I₈X (multiply by X/Y, use X²+Y² = q⁴). Deep_val-style
  finish still needed. Next: formalize the easy two-equation cells,
  then the L2-partner deep cell.

## Round 112 — the L2-cells fall: elementary two-equation chains

The Ljunggren trap disappears once eq2 is substituted into eq1.
Notation: h1: 2R₈Y = f·q²I₈ (Kb = L2), k := 3q² + 2efX (odd, and
q ∤ k since q ∤ X).
- (L2, L0): q²·h2 + q²I₈ = 2fR₈Y gives R₈·k = g·q²p⁴. p ∤ R₈ →
  p⁴ ∣ k, k = p⁴κ; R₈κ = gq² with q ∤ κ → κ = ±1, R₈ = ±q².
  Then h1 gives Y = ±RI, and X²+Y² = q⁴ with 4R²I² = p⁸ − q⁴
  yields (2efX)² = (ε′p⁴−3q²)²: p⁸ − 3ε′p⁴q² + 2q⁴ = 0 →
  ε′ = 1 and (p⁴ − q²)(p⁴ − 2q²) = 0: q = p² impossible (prime),
  p⁴ = 2q² parity. DEAD, all elementary.
- (L2, L1): same substitution gives R·k = ±p²q² after cancelling
  through Y = IRv (I ⊥ R₈ chain). v_q(R) = 2, R = q²ρ, p ∤ ρ →
  ρ = ±1, k = ±p²; then (R₈)v = fq² mod q² forces q² ∣ v, so
  |Y| = |IRv| ≥ q⁴ > q² ≥ |Y|. DEAD by size.
- (L2, L3/L4): expect the same skeleton (substitute, cancel, valuate,
  size); to derive next.
Also still open: the mirror deep cell (Kb ∈ {L1,L3,L4}, Kd = L2)
with X ≡ ±q² (mod p²), and the form-B (2S) family. Formalization
order: easy p²-chain cells → cross_L2_L0 → cross_L2_L1 → rest.

## Round 113 — all (L2, ·) cross cells machine-checked

cross_L2_L0_int (factored quadratic), cross_L2_L1_int (size kill
Y² ≥ q⁸), cross_L2_L34_int (σ-parametrized; R ∣ X → R ∣ q² →
three associated-power kills: I²≥16 vs x̂²+I²v²=1; negative
discriminant on 16v²+16 ≤ p⁴ ≤ (2v∓1)²; I² = p⁴−1 between
consecutive squares). The 2T-side cross-pair family is fully
covered: L0 (parity), L1/L3/L4 easy partners via the p²-chain, and
now every L2 partner. Remaining for the cross-pair core: the easy
p²-chain cells as Lean text, the 2S-form mirror family, then the
(a,c)-bucket dispatcher; after that k=1 single-8 buckets with L2,
router, no_four_diffs_sp2q, capstone.

## Round 114 — mirror cell (L1, L2) by parity; (L3/L4, L2) mapped

cross_L1_L2_int: 2·eq2 − 3·eq1 cancels R₈Y and leaves
4R(eX − gq²) = −3f·p²q², even = odd, dead. Also checked: (L0, ·) is
the single-equation parity kill, (L2, L2) dies by the same
substitution parity, so the T-form 25-cell table is complete except
(L3, L2) and (L4, L2). For those: the descent gives v₂(Y) = v₂(I),
p² ∥ Y, X ≡ egq² (mod p²), and y² = n(2q² − p⁴n) with n odd killed
by 2-adics; n = 2m, q ∤ m leads to q² = (p²a)² + b² — a second rep
of q² as a sum of two squares, suggesting a rep-uniqueness or
further-descent finish. Next tick.

## Round 115 — (L3/L4, L2) mirror cells: complete derivation

σ-parametrized (σ = ±1 picks L3/L4): eq1: 2R₈Y = fp²(σRY + IX),
eq2: 3R₈Y + 2eRIX = 2gq²RI.
Case 3 ∤ R: eq2 gives R ∣ 3Y → R ∣ Y =: RY₁; then I ∣ 3Y₁, and the
trick is to set 3Y₁ = Iw (NO case split on 3 ∣ I): R₈w = 2(gq²−eX);
eq1·3 gives 2R₈Rw = fp²(σR²w + 3X) → p² ∣ w, w = p²ŵ;
then 3fX = Rŵ(2R₈ − fσRp²) → R ∣ X = Rx̂ and (9X² + (3Y)²):
R²(9x̂² + I²p⁴ŵ²) = 9q⁴ → R ∣ 3q² → R ∣ q². Subcases:
  R² = q⁴: 9x̂² + I²p⁴ŵ² = 9 with I²p⁴ ≥ 256 → ŵ = 0 → Y = 0 ✗.
  R² = q²: I² = p⁴ − q² > 0 → q² < p⁴, but ŵ ≠ 0 → 16p⁴ ≤ 9q² ✗.
  R² = 1: I² = p⁴ − 1 between consecutive squares ✗.
Case 3 ∣ R (then 3 ∤ I): R = 3R₃: R₃ ∣ Y = R₃Y₁, I ∣ Y₁ = Iw,
R₈w = 2(gq² − eX), p² ∣ w, R₃ ∣ X, norm R₃²(x̂² + I²p⁴ŵ²) = q⁴ →
R₃ ∣ q²: {q⁴: ŵ = 0 ✗; q²: I² = p⁴ − 9q² > 0 vs 16p⁴ ≤ q² ✗;
1: I² = p⁴ − 9 between consecutive squares (needs p ≥ 3) ✗}.
All elementary. Once formalized, the ENTIRE T-form 25-cell table is
closed; then the 2S-mirror family and the bucket dispatcher.

## Round 116 — cross_L34_L2_int machine-checked: T-form table CLOSED

The σ-parametrized mirror lemma compiled (two 3-divisibility cases,
shared 3-subcase endgame; combining-circumflex identifiers x̂/ŵ are
rejected by Lean — use xh/wh). With it, every cell of the T-form
cross-pair table {2R₈Y = ±Kb} ∧ {3R₈Y ± I₈X = ±Kd} has a
machine-checked kill: L0 parity, L1/L3/L4 p-chains, L1-L2 mod-4,
(L2,·) three lemmas, (L3/L4, L2) mirror. Next: assemble
cross_pair_core_T (the 25-cell router with the easy cells inline),
then the S-form mirror family (2I₈X = ±Kb ∧ 3I₈X ± R₈Y = ±Kd),
then the (a,c)-bucket dispatcher into both cores.

## Round 117 — S-form table fully derived (all elementary)

System: 2I₈X = f·Kb ∧ 3I₈X + e·R₈Y = g·Kd (I₈ = 2RI).
- Kb = L1: I-cancel → 4RX = fp²q², even = odd ✗.
- Kb = L2: 2RI-cancel → 2X = fq² ✗.
- Kb = L0: p²∣X twice → X = p⁴x₂, Y = 4fRIx₂ (x₂ ≠ 0 else q ∣ Y);
  h2 becomes 2RIx₂(3p⁴+2efR₈) = gKd. Partners: L0 parity,
  L1 even=odd, L3/L4 p²·(odd) parity, L2 → x₂(3p⁴+2efR₈) = gq²
  squared against the norm x₂²(5p⁸−4R₈²) = q⁴ gives
  (2R₈+efp⁴)(R₈+efp⁴) = 0: parity / RI = 0 ✗.
- Kb = L3/L4 (σ): p²∣X, RY = σIx(4fR−p²), I∣Y, R∣x → X = p²Rx̂,
  Y = σIx̂(4fR−p²); W := 6p²R² + eσR₈(4fR−p²) is ODD;
  h2 ⇒ Ix̂W = g·Kd. Partners: L0 → p²∣RR₈ ✗; L1 → p²∣x̂ →
  p⁴∣q⁴ ✗; L2 → x̂ ∣ q² odd vs RHS even ✗; L3/L4 → W = g·even ✗.
No deep cells. Next: formalize cross_pair_core_S_int, then the
(a,c)-bucket dispatcher into both cores.

## Round 118 — cross_pair_core_S_int: BOTH cross-pair cores complete

The full S-form 25-cell router compiled: L1/L2 rows by single-equation
parity, L0 row by the double p²-extraction (X = p⁴x₂, Y = 4fRIx₂)
with five partner kills including the factored quadratic
(2R₈ ± p⁴)(R₈ ± p⁴) = 0, and L3/L4 rows via s34_chain_S. Lean note:
dot-notation on ⟨_,_⟩-ascribed Even terms resolves to Exists — bind
with `have` first. Remaining for the (a,c)-bucket: the Gaussian-level
wrappers (instantiate R,I,X,Y := re4/im4 with fact lemmas incl.
4 ∣ im4) and the dispatcher splitting {a,c} = {L5,L6} systems into
the T/S cores; then k=1 buckets, router, capstone.

## Round 119 — all four cross-position dispatchers + router plan

dispatch_ac8F/ad8F/bc8F/bd8F all compiled first try (32 sign
branches into the T/S cores). Full router plan settled: take SIX
pairwise value-distinctness hypotheses from the capstone (repeated
classes force u = ±v among the diffs). Then: k=0 buckets → L2-slot
present dies by p2_not_dvd_I8 through whichever equation avoids the
8-free slot, else dispatch_lowE; k=1 → the 8-free equation kills L2
cells, else the doubled-8 relation dies by p2_not_dvd_L5/L6; k=2 →
the six pair dispatchers (ab56F, 56F, ac, ad, bc, bd); k≥3 →
pigeonhole + distinctness. Remaining: helperA (one-L2 low relation),
helperB (lone-8 vs two lows), the 16-bucket router, rep_structure
hookup, no_four_diffs_sp2q, capstone.

## Round 120 — no_assignment_sp2q COMPILED (first try)

The seven-class router for s·p²·q is machine-checked: 16 buckets by
level-8 count, every dispatcher slotting in cleanly, pigeonhole +
distinctness pruning the repeats. This is the F-analogue of E's
no_assignment_spq. Remaining for the capstone: hook up
rep_structure_sp2q (7-class D-value classification, already proven),
derive the pairwise distinctness of the four class values from the
distinctness of the differences, the s²-cancellation
(no_four_diffs_sp2q), and the final
no_magic_square_of_squares_sp2q_center. Mirror E's capstone assembly.

## Round 121 — the distinctness gap: a ratio-kill layer is needed

Adapting E's capstone exposed a real hole in the round-119 plan: the
pairwise class-value distinctness only follows from u ≠ ±v for the
slot pairs (a,b) and (c,d). For (a,c), (a,d), (b,c), (b,d), equal
values force only v ∈ {0, ±2u}, whose surviving branch leaves RATIO
relations between class values: W = ±2V and W = ±3V (and cross-class
W = ±V from double-slot cells). Probes over 12 primes: zero hits for
all ratios including ±1 (ratio_probe.py). Kill strategy for
no_class_ratio: p-adic split — {L2, L5, L6} have v_p = 0 (the
p2_not_dvd_* lemmas kill any p²-divisible multiple), {L0, L1, L3, L4}
have v_p ≥ 2, so mixed pairs die instantly; both-high pairs divide by
p² into E-class ratio relations; both-low-p pairs
{L2, L5, L6} × {2, 3, ±1} need bespoke treatment. Next: build the
ratio layer, then the value-level router wrapper, then the capstone.

## Round 121b — ratio layer refined: only ratio 2 is needed

In the v = −2u scenario all four diffs are u, −2u, −u, 3u, so
Kb-val = ±2·Ka-val alone kills it: the wrapper derives all six
distinctness hypotheses from u ≠ 0, v ≠ 0, u ≠ ±v plus
no_ratio2 (W = 2δV impossible for class values W, V). Kill split:
- mixed Z×H pairs (Z = {L2,L5,L6} with v_p = 0, H = {L0,L1,L3,L4}
  with v_p ≥ 2): instant via p2_not_dvd_{I8,L5,L6}.
- H×H: divide p² to E-classes; v_p(p²Y-image) = 2 vs 0 for the rest
  (needs p ∤ Im(π⁴χ^±4) — same Gaussian argument at level 4);
  q-valuation separates q²I from K2/K3 images; remaining deep cell:
  K2' = ±2K3' ⇒ 3RY = IX or RY = 3IX ⇒ coprime chains give
  X = ±R, ±3R with I = ±3Y-type conclusions ⇒ p⁴ = R²+9Y²-style
  two-square relations — needs rep uniqueness.
- Z×Z: (L2, L5/L6): the self-conjugate element π⁸χ²(χ̄²−2δχ²) has
  χ-valuation 0 on one side and 2 on the other — instant kill (nice!).
  Deep cell: L5 = ±2L6 ⇒ 3R₈Y = I₈X-type ⇒ X = ±R₈, I₈ = ±3Y ⇒
  p⁸ = X² + (3Y)² — needs the p⁸ two-square rep classification.
- W = 2δW same class: (1∓2)W = 0, class-nonzero.
Next: formalize the easy ratio cells, then the two deep cells.

## Round 122 — deep ratio cells = ONE Fermat-descent equation

The L3↔L4 ratio cell: coprime chains force X = ±R, I = ±3Y (or the
3-swapped mirror), whose norms give p² = s² + 2t², q² = s² − 2t², so
(pq)² = s⁴ − 4t⁴. The L5↔L6 cell runs the same chains at level 8
(gcd(R₈, I₈) = 1) and lands on p⁴ = u² + 2v², q² = u² − 2v², so
(p²q)² = u⁴ − 4v⁴ — the SAME equation. Kill: u⁴ − 4v⁴ = w² with
u odd, u ⊥ v, v ≠ 0 is impossible: w odd, split
α = (u²−w)/2, β = (u²+w)/2, αβ = v⁴, coprime and positive, so
α = m⁴, β = n⁴ (two rounds of Int.sq_of_coprime), giving
m⁴ + n⁴ = u² — killed by mathlib's not_fermat_42. The magic-square
proof for s·p²·q centers thus genuinely invokes Fermat's right
triangle theorem. Next: formalize no_s4_sub_4t4, then the two deep
ratio cells, then assemble no_ratio2 and the capstone.

## Round 123 — both deep ratio cells machine-checked

descent_norm4' (coprime version, for composite a = p²),
ratio_K2_K3_kill (level 4) and ratio_L5_L6_kill (level 8, with the
q⁴-vs-p⁸ norm systems) all compile. Every piece of hard mathematics
in the ratio layer is done. Remaining: assemble no_ratio2 (routing
all 49 class pairs to their kills), the distinctness wrapper
deriving the six hypotheses from u ≠ 0, v ≠ 0, u ≠ ±v, then
no_four_diffs_sp2q and the capstone.

## Round 124 — ★★★ THEOREM F MACHINE-CHECKED ★★★

no_magic_square_of_squares_sp2q_center compiles, zero sorries: no
3×3 fully magic square of nine distinct perfect squares has center
entry (s·p²·q)² for distinct primes p, q ≡ 1 (mod 4) and rigid s.
The formal frontier now covers center classes s·pᵃ (Theorem C/D),
s·p·q (Theorem E), and s·p²·q (Theorem F). The F-proof is the
deepest yet: seven D-classes, two 25-cell cross-pair cores, a
49-cell ratio layer, and a genuine invocation of Fermat's right
triangle theorem (mathlib not_fermat_42) through the descent
u⁴ − 4v⁴ = w². Deliverables (README/paper/artifact/memory) next.

## Round 125 — Theorem G (s·p³·q) scoped: the ladder telescopes

D(s·p³·q) has exactly TEN classes (probe g_class_probe.py, exact
match at 4 prime pairs): M0..M6 = p² · (the seven F-classes), plus
three new level-12 classes M7 = q²·I₁₂, M8/M9 = Im(π¹²χ^{±4}).
Architectural transfer from F is 1:1:
- level-12-free bucket: cancel p², REUSE no_assignment_sp2q verbatim
  (as F reused E — the ladder telescopes).
- Z-classes (v_p = 0) = {M7, M8, M9} play exactly the {L2, L5, L6}
  roles: same 16-bucket router, same extraction kills (π¹²-variants
  of the twoterm instances), same χ-valuation ratio kill.
- ratio layer: H×H cells cancel p² → F's no_ratio2 verbatim; Z×Z
  deep cell M8 = ±2M9 runs the level-12 chains into
  q⁴ − p¹² = 8T², i.e. descent_norm4' with b := p³. Fermat again.
- Main new work: the two 25-cell cross-pair cores at level 12
  (R₁₂ = R₄(R₄²−3I₄²), I₁₂ = I₄(3R₄²−I₄²) — different inner
  factorizations than I₈ = 2R₄I₄, so the bespoke cells need
  re-derivation). Estimated as the bulk of the arc.
Plan: rep_structure_sp3q → M-class defs + level-12 fact layer
(re12/im12 formulas, parities, p∤, nonzero) → cores → dispatchers →
router → ratio wrapper → capstone.

## Round 127 — G cross-pair census + uniform kills for the new cells

Census (g_cross_probe.py): all 57,344 level-12 cross-pair cells and
every single equation are empty. Kill design for the T-form core
(2R₁₂Y = f·Kb ∧ 3R₁₂Y + eI₁₂X = g·Kd, Kb/Kd over 8 G-lows):
- (p²Lᵢ, p²Lⱼ): ALL 49 cells die by ONE argument — p²∣Y from eq1,
  p²∣X from eq2, p⁴ ∣ q⁴. No Lᵢ fine structure needed.
- (p²Lᵢ, M7): UNIFORM kill, independent of i: p²∣Y and
  X ≡ egq² (mod p²) run the descent to (y'/2)² = m(q² − p⁴m);
  the coprime split gives a second two-square rep q² = (p²a)² + b²
  (or, in the q∣m branch, q = (p²c)² + d²), and rep uniqueness
  forces Y = ±(im4)/2 = ±Y/2, resp. 2|C²−D²| = q — both absurd.
  This uniformity is the key lemma-shape for the eventual all-a
  induction.
- (M7, ·): mirrors of F's cross_L2_* cells with p⁴ ↦ p⁶ (the
  factored quadratic becomes (p⁶−q²)(p⁶−2q²), q = p³ impossible).
- S-form: expected to mirror F's (all-elementary) with the same
  uniformities.
Needed new machinery: two-square rep uniqueness for q and q²
(Gaussian: N(w) = q ⇒ w ~ unit·χ^{±1}; small, existing tools).

## Round 128 — CORRECTION to round 127: the (row, M7) kill is NOT uniform

Re-deriving before formalizing caught an arithmetic slip in the
round-127 "uniform kill": |Y| = 2p²|ab| equals 2|p²a||b| = 2|re₂im₂|
= |im₄| — CONSISTENT, not contradictory. The relaxed cell
(only p² ∣ Y from eq1, plus the M7-partner equation) has a genuine
witness: p = 5, q = 313 = 13² + 12², where p² = 25 divides
C² − D² = 25; then a = ±1, b = im₂ = 312, Y = 15600 = im₄(χ),
X = re₄(χ), eg = −1 satisfy the whole descent chain. The full
cross-pair cell is still empty (census), but its kill must use eq1's
fine structure per low class — exactly like Theorem F's mirror cells
(cross_L1_L2 / cross_L34_L2 patterns with p-exponents shifted).
Consequence for the uniform-induction hope: the level-transfer step
needs the per-class mirror-cell work at every level; F's proofs are
the templates but not free. rep_sq_unique (shipped) remains useful.

## Round 129 — (M7, p²L3/L4) derived: the q = p⁴ − 4 kill

After the M7-chain and elimination: fJK = gp⁴(R₄Jw ± 2X); w even
dies by parity; w odd forces J ∣ X (p ∤ J since J ≡ 4R₄² mod p),
and the norm gives J²(x′² + 4t²w²) = q⁴, so J ∣ q²:
- J = ±1: 4R₄² = p⁴ ± 1: minus-branch splits (p²−1)/2 · (p²+1)/2
  into coprime squares differing by 1; plus-branch dies mod 4.
- J = ±q: mod-4 forces 4R₄² = p⁴ − q and p⁴ ∣ 3fq + 2eεx′ with the
  window p⁴ ≤ 5q; the fδ = 1 branch gives t²w² = R₄²(q − R₄²) and
  R₄ ∣ q² with R₄² ≤ q forces R₄ = ±1, hence q = p⁴ − 4 =
  (p²−2)(p²+2), composite — dead. The fδ = −1 branch dies by size.
- J = ±q²: x′² + 4t²w² = 1 with tw ≠ 0, dead.
Remaining T-cells after this: (M7, p²L5/L6) and the five
(p²Lᵢ, M7) mixed-level cells; S-core needs its seven row cells.

## Round 130 (2026-08-16)

**Theorem G T-form core COMPLETE.** The five remaining (p²Lᵢ, M7) T-cells
(i∈{2..6}) — the ones round 128 showed need eq1's fine structure — fell to a
single uniform lemma `cross12_row_M7`, generic in the p² cofactor Mb:

- eq2 (3R₁₂Y + eI₁₂X = gq²I₁₂) + coprimality R₁₂⊥I₁₂ give 3Y = I₁₂v and
  R₁₂v + eX = gq².
- Substituting into the norm 9(X²+Y²) = 9q⁴ makes the q⁴ terms cancel
  (coefficient 9 matches exactly): v(9R₁₂² + I₁₂²) = 18gq²R₁₂.
- R₁₂ ∣ v (via R₁₂⊥I₁₂²), so u(9R₁₂² + I₁₂²) = 18gq².
- eq1 forces p²∣Y for EVERY p²-divisible row value → p²∣v → p²∣u → p²∣18gq²,
  impossible (p odd prime ≠ q; p∣18 → p=3 → A²+B²=3, killed mod 4).

This is where the round-128 relaxed chain failed: the (5,313) witness survives
the mod-p² congruences alone, but not the FULL norm relation — the norm is
what upgrades "p²∣Y consistent" into "p² divides 18gq²".

**S-form does NOT mirror:** eq1 there is 2I₁₂X = fp²Mb, and the norm gives
w(2geq²R₁₂ − w(R₁₂²+9I₁₂²)) = 8q⁴ (coefficient mismatch 1 vs 9 leaves an
8q⁴ remainder, no factoring). The seven S-form (p²Lᵢ, M7) cells need
per-class structure. i=0 sketch: 2X = fp⁶w + norm → w''²(p¹²+4I₁₂²) = q⁴,
a Q² = R₁₂² + 5I₁₂² locus. Next.

## Round 131 (2026-08-16)

**All seven S-form (p²-row, M7) cells done** — the M7 row/column is closed in
BOTH cross-pair cores:

- M0: Y = I₁₂w + 2X = fp⁶w; squaring both relations eliminates q, leaving
  (2R₁₂+cp⁶)(R₁₂+cp⁶) = 0 (parity / I₁₂=0). `cross12S_L0_M7`
- M1: cancel I₄ → 2(3R₄²−I₄²)X = fp⁴q², even = odd. Only needs eq1.
  `cross12S_L1_M7`
- M2: cancel 2I₄ → JX = fp²q²R₄; R₄∣q² (eq2) + J∣q²; J=±q² dies by size,
  rest feeds M7_J_endgame (first cross-form reuse). `cross12S_L2_M7`
- M3..M6: one shared core `sform_M7_J_core` — eq1 forces J∣X (strip units,
  p-powers, 2, R₄ per class), then J²(x̂²+I₄²w²) = q⁴ classifies J:
  * J unit → 4R₄²−p⁴ = ±1, dead mod 8 (R₄²≡1, p⁴≡1 mod 8 witnesses + omega);
  * q∣J → eq2 gives q∣X → q∣R₁₂w → q∤R₁₂ (norm p¹²) → q∣w →
    Y² = I₄²J²w² ≥ 4q⁴ > q⁴ against the norm. No interval_cases needed:
    split on i = 0 vs i ≥ 1 from dvd_prime_pow.
  Wrappers: `cross12S_L34_M7`, `cross12S_L56_M7`.

Key trick vs the T-side: S-form cells all go through Y = I₁₂w (M7-side) and
then differ only in how eq1 cancels I₄ — the J = 3R₄²−I₄² = 4R₄²−p⁴
identity does the heavy lifting.

Remaining for the two G cores: assemble the 8×8 routers (all mixed and lone
cells now exist), then pair/lone dispatchers, 16-bucket router, ratio layer,
four-diffs, capstone.

## Round 132 (2026-08-16) — mixed-pair core plan (M8/M9 machinery)

G's mixed-pair core (I₁₂X = f·Kc1 ∧ R₁₂Y = g·Kc2, Kc1/Kc2 ∈ M0..M7,
invoked when M8/M9 occupy paired slots) — global single-equation kills:

1. Kc1 = M2: cancel I₄ → (3R₄²−I₄²)X = 2fp²q²R₄, odd = even. SHIPPED.
2. Kc1 = M7: pinch X = ±q² → Y = 0. SHIPPED.
3. Kc2 = M0: pinch R₁₂ = ±p⁶ → I₁₂ = 0. SHIPPED.
4. Kc1 = M1 (TODO): cancel I₄ → JX = fp⁴q² → J∣q², J = 4R₄²−p⁴ ≡ 3 (mod 4):
   * J = +q, +q²: q ≡ 1 mod 4 → sign dead.
   * J unit: 4R₄²−p⁴ = ±1 → mod-8/consecutive-squares dead.
   * J = −q: q = p⁴−4R₄² < p⁴, but X = −fp⁴q needs X² = p⁸q² ≤ q⁴ → q ≥ p⁴. Size.
   * J = −q²: X = −fp⁴, X² = p⁸ ≤ q⁴ → q² ≥ p⁴ but q² = p⁴−4R₄² < p⁴. Size.
5. Kc2 = M7 (TODO): J∣Y then I₄∣ → R₄J'y'' = gq², J' = 4R₄²−3p⁴ ≡ 1 (mod 4):
   * J' = −qᵇ: sign dead. J' = 1: 4I₄² = p⁴−1 consecutive squares dead.
   * J' = q, R₄ = ±1: I₄² = p⁴−1 dead. J' = q, R₄ = ±q: q ∣ 3p⁴ → q = 3 dead.
   * J' = q²: R₄ = ±1 → I₄² = p⁴−1 dead.

Remaining pair grid: Kc1 ∈ {M0,M3,M4,M5,M6} × Kc2 ∈ {M1..M6} = 30 cells,
the G-analog of F's 12 resid-cells (F: resid_cross_p2q2 / resid_r8_derive /
resid_cross_product / bespoke pX-pY extractions). Level-12 reductions to
level 4: I₁₂ = I₄J, R₁₂ = R₄J', J = 4R₄²−p⁴, J' = 4R₄²−3p⁴, J ⊥ J'
(gcd ∣ 8I₄², both odd, both ⊥ I₄).

## Round 133 (2026-08-16) — mixed_pair_core_12 COMPLETE

The 30-cell pair grid predicted in round 132 collapsed to ONE lemma: every
M0..M6 value carries a p² factor (they are p²·F-classes), so eq1 forces
p² ∣ X, eq2 forces p² ∣ Y, and p⁴ ∣ X²+Y² = q⁴ is fatal (`mixed12_p2p2`).
The full 8×8 mixed core is a 3-way split: c1 = M7 (pinch), c2 = M7 (the J'
double classification), both p²-divisible (valuation). This is MUCH simpler
than F's level-8 mixed core — G's extra p² does all the work. The
mixed12_c1_M2/c1_M1/c2_M0 kills shipped earlier are subsumed (kept as
alternate proofs). `mixed_pair_core_12` is done.

Remaining for the G routers: dispatch_56G / ab56G analogs (M8/M9 in cd or
ab slot-pairs → mixed core + deep cell), deep_val_cell12 (M8,M9 both
present, the E1−E2 elimination leaving Im(π¹²χ⁴)-difference structure),
unsafe-pair dispatchers ac/ad/bc/bd, lone-12 dispatchers, then
no_assignment_sp3q.

## Round 134 (2026-08-16) — no_assignment_sp3q COMPLETE

The full 16-bucket router for Theorem G is machine-checked: `no_assignment_sp3q`
(10 classes M0..M9, four distinct slots, E1/E2 relations → False). Structure
mirrors F exactly; the port of the router text was almost purely textual.
Bucket inventory: dispatch_lowG_full (telescope to F's full 7-class router
when M7 absent; p²-residue kill when present), lone12a-d, 56G/ab56G (χ-pairs
via the two mixed cores), ac/ad/bc/bd12G (unsafe pairs via T12/S12 cores),
pigeonhole for ≥3 χ-slots. Zero sorries, full build green.

Remaining for the capstone: the G ratio layer (no_ratio2 analog — plan:
H×H cells cancel p² → F's no_ratio2; cells with M7/M8/M9 need χ-valuation
+ descent_norm4' with b := p³), no_four_diffs_sp3q, capstone.

## Round 135 (2026-08-16) — THEOREM G COMPLETE

`no_magic_square_of_squares_sp3q_center` is machine-checked, zero sorries:
no 3×3 fully magic square of nine perfect squares has center (s·p³·q)² for
distinct primes p, q ≡ 1 (mod 4) and rigid s. The fourth verified
impossibility family (after s·pᵃ, s·p·q, s·p²·q).

Final pieces this round: no_four_diffs_sp3q (port of F's four-diffs with
rep_structure_sp3q + no_ratio2_sp3q + no_assignment_sp3q; q ≡ 1 mod 4
derived from the two-square rep) and the capstone via converse_reduction.

The ladder now telescopes twice (F reuses E, G reuses F). Next: the uniform
s·pᵃ·q induction — the G build showed the inductive step's shape: three new
classes per rung (q²I_{4a}, Im(π^{4a}χ^±4)), everything else cancels p².

## Round 136 (2026-08-17) — uniform s·pᵃ·q induction: design

Probes (sympy): classes of s²p^{2a}q² reps = 1 + 3a (verified a=4: 13 + zero);
J_a := im(π^{4a})/im(π⁴) satisfies **J_a ≡ a·R₄^{2a−2} (mod 4)** — for odd a,
J_a is odd and ≡ a (mod 4); for even a, J_a is even (a=2: J₂ = 2R₄ exactly),
which is why Theorem F's level-8 classification differed structurally from G's.

Design, three phases:
1. **Generic level-4a coordinate layer** (`UniformAInt.lean`): by induction on
   a via π^{4(a+1)} = π^{4a}·π⁴ — norm R_a²+I_a² = p^{4a}, p ∤ R_a, I_a,
   I₄ ∣ I_a with cofactor J_a, J_a parity/mod-4 (split a odd/even),
   coprime R_a I_a, R_a odd / I_a ≡ 0 mod 4.
2. **Abstract-step router**: statement takes the PREVIOUS rung's routers as
   ∀-hypotheses over an abstract class predicate P; rung-a classes =
   p²·P ∪ {q²I_{4a}, Im(π^{4a}χ^±4)}. The G build showed every bucket then
   either cancels p² (invoke hypothesis) or hits the three new classes with
   kills whose only level inputs are the layer-1 facts (the deep p=5 cell's
   constant 20 = 4+16 is a-independent; the J/J'-vs-q classifications need
   the a-mod-4 sign bookkeeping).
3. **Ratio + four-diffs + capstone** by the same step scheme; base = Theorem E.

Risk register: (a) even-a J_a parity changes the sform/J-classification kills —
must re-derive those generically with v₂(J_a) tracked; (b) rep_structure for
generic a needs a recursive classification proof (G's was a 42-case template —
the generic version wants the divisor-combinatorics argument done once).

## Round 137 (2026-08-17) — generic class family

Derivation: x+iy with x²+y² = s²p^{2a}q², 2xy ≠ 0. Gaussian factorization
(rigid s ⇒ σ-part contributes s²·±1; u² = ±1, no i-twist):
2xy = ±s²·p^{2(a−e)}·q^{2(1−|κ|)}·Im(π^{4e}χ^{4κ}), e ∈ 0..a, κ ∈ {−1,0,1},
minus the real (e,κ)=(0,0) case. Class family (1 + 3a members ✓ census):

  UClass a K :≡ K = p^{2a}·im₄(χ)
    ∨ ∃ e, 1 ≤ e ≤ a ∧ ( K = p^{2(a−e)}·q²·im(π^{4e})
                       ∨ K = p^{2(a−e)}·Im(π^{4e}χ⁴)
                       ∨ K = p^{2(a−e)}·Im(π^{4e}χ̄⁴) )

**Telescoping identity (nearly definitional)**: for a ≥ 2,
  UClass a K ↔ (∃ K', K = p²·K' ∧ UClass (a−1) K') ∨ K ∈
    { q²·im(π^{4a}), Im(π^{4a}χ⁴), Im(π^{4a}χ̄⁴) }
(e ≤ a−1 terms shift p²; e = a gives the three new classes). This is the
formal skeleton of the G-reuses-F phenomenon and the induction's backbone.

Phase-1 status: UniformAInt.lean has norm/p∤coords/J_chain/im_four/re_odd/
coprime_coords/J_mod_form, all generic in a, zero sorries. Remaining phase-1:
generic rep_structure into UClass (the UFD argument, hardest piece), then
phase 2 (abstract-step routers).

## Round 138 (2026-08-17) — PHASE 1 COMPLETE: generic rep classification

`rep_structure_uniform` is machine-checked: for EVERY a ≥ 1, any (x, y) with
x² + y² = s²p^(2a)q² and 2xy ≠ 0 has 2xy = ±s²·K with K in the UClass
family. The 42-case enumeration of Theorem G's rep_structure is replaced by
TWO symbolic fold lemmas (j ≤ a / j > a) — the proof is 12 symbolic branches
(u² × k × side), each ~20 lines, with the e = 0 real cases handled per k.
UniformAInt.lean now holds the complete generic layer, zero sorries:
recurrences, norm, p∤coords, J-chain invariant (J ≡ a·R₄^(a−1) mod 16t²),
parity, coprimality, UClass + telescoping, folds, rep classification.

Phase 2 next: the abstract-step routers — no_assignment and no_ratio2 at
rung a as consequences of rung a−1's routers (taken as hypotheses over the
telescoped UClass (a−1)) plus generic kills for the three new classes.

## Round 139 (2026-08-17) — phase 2 underway

Generic kills accumulated (UniformAInt.lean, all zero-sorry, all ∀ a):
- p2_not_dvd_I4a / M8a / M9a + pi_not_dvd_star_paw4: the p²-residue kills
  for the three new classes — these close every lone-new-class bucket of the
  step router.
- **Ja_unit_kill**: the J-cofactor unit branch dies by SIZE for a ≥ 2
  ((p^{2a}−R)(p^{2a}+R) = I₄² < p⁴ ≤ p^{2a}) — no mod-16 needed. Higher
  rungs are strictly easier than G here; the ab ≥ a+b−1 trick formalizes
  cleanly with one nlinarith.

Remaining phase-2 kills to derive generically: the M7ₐ-chain classification
(R₄ₐ ∣ q² with unit branch = consecutive squares vs (p^{2a})², q-branches by
the q ∣ w propagation — G's proofs used only norm+coprimality, port
directly), the row-M7ₐ norm-cancellation (exponent-free already in form),
and the sform J-classification (needs the J_chain invariant + the q∣J → q∣w
argument — the q = p⁴−4-composite branch generalizes to |Jₐ| = q with Jₐ ≡
a·R₄^{a−1} mod 16t², where the size bounds now do more work). Then the
abstract-step router.

## Round 140 (2026-08-17) — M7a_classify

The generic M7ₐ classification is machine-checked: R₄ₐY = g·q²·I₄ₐ forces
**R₄ₐ = ±q² with Y = ±g·I₄ₐ**. The unit branch dies by consecutive squares
against (p^{2a})² (Ra_unit_kill); the ±q branch dies INSTANTLY because it
would put q ∣ Y = im₄(χ) — far simpler than G's a = 3 treatment. The
surviving ±q² residue is packaged with explicit signs for the downstream
cells (its norm consequence: X² + p^{4a} = 2q⁴ with Y = ±I₄ₐ — one explicit
Pell-type locus, to be closed with each invoking cell's second equation).

Generic kill inventory now: 12 lemmas, all ∀a, zero sorries.

## Round 141 (2026-08-17) — generic T-core M7ₐ-row CLOSED

`M7row_p2_kill` closes ALL (M7ₐ-row, p²-partner) T-cells in one lemma:
the pinned residue R₄ₐ = ±q², 2Y = ±f·I₄ₐ turns eq2 into
2eX ≡ −3fq² (mod p²); squaring against 4X² = 5q⁴ − p^{4a} forces
p² ∣ 4q⁴ — dead. `M7row_M7_kill` closes the diagonal by parity
(2eX = (2g−3f)q², even = odd). G needed EIGHT bespoke cells here
(M7_chain + J-endgame + L34/L56 machinery); the generic residue is strictly
stronger because R₄ₐ ∣ q² classifies against ±q² directly instead of
spreading over J-values. Kill inventory: 16 generic lemmas.

## Round 142 (2026-08-17) — GENERIC T-CORE COMPLETE

`Tcore_a`: the T-form cross-pair core at EVERY rung a is machine-checked —
partners split into p²-divisible vs M7ₐ, and the four bucket combinations
close via Tcore_p2p2_a / row_M7a_kill / M7row_p2_kill / M7row_M7_kill.
What took a 64-cell assembly at rung 3 (Theorem G) is four generic lemmas
plus a four-line router at every rung simultaneously. The S-core generic
analog is next, then the χₐ-pair machinery and the step router.

## Round 143 (2026-08-17) — GENERIC S-CORE COMPLETE: both cores done

`Score_a` closes the S-form cross-pair core at every rung with just three
kills: Score_p2p2_a (double p²-extraction), Srow_M7_kill_a (parity, h1
only), and **S_M7_kill_a** — the master relation
2(4X² − 3gq²X + q⁴) = p^{4a}w² (from squaring eR₄ₐw = gq² − 3X against
both norms) reduced mod p² by p² ∣ X kills ALL p²-divisible partners at
once. G's five bespoke S-cells (L0-quadratic, L1-parity, L2-J-endgame,
L34/L56 sform_M7_J_core) were all unnecessary at this level of generality —
the uniform argument was hiding in plain sight. Both generic cores now
stand; remaining: generic χₐ-machinery (the mixed cores mostly exist),
step router, ratio-step, four-diffs-step, wrapper.

## Round 144 (2026-08-17) — ALL FOUR GENERIC CORES COMPLETE

`two_core_a` closes the coefficient-2 core (the G deep p = 5 cell reappears
as 4X² = 5q⁴ − p^{4a} mod p² and closes in six lines). With Tcore_a,
Score_a, mixed_core_a, and two_core_a, every cross-pair and χ-pair cell of
the step router exists generically — the per-rung cell mathematics of
Theorems E/F/G is now subsumed by ~25 uniform lemmas in UniformAInt.lean
(~1750 lines, zero sorries). Remaining for no_assignment_step: the sign-
juggling dispatchers (56/ab56/unsafe/lone analogs — route into the four
cores, exponent-free), the low-bucket telescoping via UClass_step + the IH
hypothesis, then the router; after that ratio-step, four-diffs-step, and
the induction wrapper with base Theorem E.

## Round 145: the step router is complete

- `lowq_M7a_kill`: p^2 cannot divide a unit multiple of q^2 * im4a. The unit is 1, -1, 2, or -2.
- `dispatch_lonea_a` .. `dispatch_loned_a`: one chi-class in a slot, three low partners. Direct port of Theorem G's lone12a-d. The split class form makes each port shorter: one `rcases` replaces `lowsplitG` + `low_p2_dvdG`.
- `dispatch_low_step`: the all-low bucket. All four values p^2-divisible: cancel p^2 with `mul_left_cancel₀` and call the rung a-1 router (the IH hypothesis). One M7a value: `lowq_M7a_kill` with unit 2e or e. Two M7a values: equal values break distinctness.
- `no_assignment_step`: the sixteen-bucket router at rung a. It takes the rung a-1 router as a hypothesis (IH). `UClass_step` splits each value into low (p^2 * rung a-1 class, or M7a) versus chi (M8a / M9a). The bucket bodies mirror Theorem G's `no_assignment_sp3q` exactly, with the generic dispatchers in place of the concrete ones.
- Gotcha: the all-chi bucket needs `rcases` on all four slots. A pigeonhole over only two slots misses the mixed cases.

Remaining for the uniform theorem: the ratio-2 step, the four-diffs wrapper, and the induction assembly with base a = 1 (Theorem E).

## Round 146: the ratio-2 step is complete

- Level-2a layer: `re4a_eq_2a`, `im4a_eq_2a` (π^(4a) = (π^(2a))² coordinates), `norm_2a`, `im_2a_even`, `re_2a_odd`, `coprime_2a`, `coords_2a_ne_zero`, `im4a_ne_zero`. All are ports of Theorem G's level-6 layer with 12 → 4a and 6 → 2a.
- `chi_not_dvd_star_paw4`, `q2_not_dvd_M8a_u`, `q2_not_dvd_M9a_u`: the q²-residue kills at rung a, through `p2_extract_kill`. The uniform kills state the hypothesis on the im-product value, so the ratio cells need no coordinate bridge.
- `M8a_ne_zero_u`: the chi-class coordinate combination R₄ₐY + εI₄ₐX does not vanish.
- `ratio_M8_M9_kill_gen`: Theorem G's M8/M9 ratio kill, generic in the odd base s. The descent runs on (q, s) with s = pᵃ. This removes the hard-coded p³.
- `no_ratio2_step`: the ratio-2 router at rung a. Both values low: cancel p² and use the rung a−1 hypothesis. One new class: p²- or q²-residue kills. Two new classes: nine cells, with the M8ₐ↔M9ₐ pair in the generic descent kill.
- The whole layer compiled on the first build.

Remaining: the four-diffs step and the induction assembly with base a = 1 (Theorem E).

## Round 147: the induction is closed at the router level

- `UClass_one`: rung 1 unfolds into four concrete classes (p²Y₄, q²I₄, M8₁, M9₁).
- `no_assignment_base`: the rung-1 assignment router. The all-low bucket is a pigeonhole: two low classes cannot fill four distinct slots. The other fifteen buckets reuse the generic dispatchers at a = 1.
- `no_ratio2_base`: the rung-1 ratio router, from the same generic cells at a = 1.
- `no_ratio2_uniform` and `no_assignment_uniform`: induction wrappers over a. Base at a = 1, step through `no_ratio2_step` / `no_assignment_step`. Both hold for every a ≥ 1.
- Gotcha: `rw [h]` closes rung-1 class goals by rfl (the literal 2*1 reduces), so a bare `norm_num` after it errors with "No goals". Guard it with `try`.

Remaining: the four-diffs theorem (port of Theorem G's, through `rep_structure_uniform`) and the capstone statement for the s·pᵃ·q family.

## Round 148: THE UNIFORM THEOREM IS COMPLETE

- `no_four_diffs_spaq`: the four differences u, v, u+v, u−v cannot all lie in D(s·pᵃ·q), for every a ≥ 1. The proof goes through `rep_structure_uniform` (which returns UClass members directly), the ratio router, and the assignment router.
- `no_magic_square_of_squares_spaq_center`: **the capstone**. No 3×3 fully magic square of nine perfect squares has center entry (s·pᵃ·q)², for every a ≥ 1, distinct primes p, q ≡ 1 (mod 4), and rigid s.
- Zero sorries. The full build is green (8749 jobs).
- Gotcha: `rep_structure_uniform` binds q as an auto-bound implicit (its signature starts with `hpq : p ≠ q`). Call it as `rep_structure_uniform p hpq ...`, without an explicit q.
- This theorem subsumes Theorems E (a=1), F (a=2), and G (a=3) in one induction. The infinite family s·pᵃ·q is now closed for all a at once.

## Round 149: the (2,2) re-attack starts

- Corollary shipped: `no_magic_square_of_squares_two_useful_min_exp_one`. Two useful primes with either exponent equal to 1 are impossible. The a = 1 case swaps the roles of p and q in the uniform theorem.
- New probe `u22_probe.py`: enumerates the 95,040 leaves of (2,2) in half-level coordinates (R,I = π⁴; X,Y = χ⁴; W,Z = χ⁸). The grading kill reproduces the old baseline exactly: 93.5% dead, 6,208 survivors, 114 class-multiset shapes.
- Observation: the sixteen top shapes (192 leaves each) are levelled copies of the Theorem-E class set {q-axis, p-axis, M8/M9 pair}. The dispatcher cores killed exactly these shapes at b = 1. The new frontier is the shapes with a chi-8 twist (β = 2, both signs).
- Plan: apply the F-style norm-core elimination to all 6,208 survivors. The old battery (mod-32, IA-elimination, rational root) left 82 relations; the norm-core toolkit is independent of it and may close the band cells.

## Round 150: the coupling structure of (2,2)

- Setup: the durable clone is live (`~/Documents/Programming/magic_squares_of_squares`); the Lean cache is warm; `research/AGENTS.md` orients other AI workers. Codex also works in this repo — pull with rebase before each push.
- Artifact corrections (from review): the reduction now carries the distinctness qualifier; §4 states that its order loci are survivors of the earlier method, not surviving center candidates; the file-count claim is replaced. The report also lives in the repo now: `research/REPORT.md`.
- `u22_locus_test2.py`: at all 68 disc-12 form-locus pairs below 5000, no relation has both p and q dividing its content-free value. The form-level coincidence does not produce the divisibility coupling.
- `u22_coupling_scan.py` (p, q < 250, all orientations): 402 of the 600 relations have ZERO joint divisibility events. The 198 others couple only at isolated pairs.
- `u22_coupling_scan2.py` (p, q < 1000): the joint sets stay thin (one to three pairs per relation; union 44 pairs; max prime 829) but slowly grow — per-relation incompatibility is not absolute.
- Next: leaf-level coupling. A leaf needs joint divisibility for BOTH its relations at the same point. The per-relation joint sets are thin, so the leaf-level intersection is plausibly empty everywhere. If the scan confirms this, the proof target becomes the first-order incompatibility of the two minimal-layer residues — a resultant computation per leaf shape.

## Round 151: the leaf-level incompatibility is empirically exact

- `u22_leaf_coupling.py` (p, q < 1000, all rep orientations, all 6,208 leaves): **zero leaves have a common joint-divisibility point.** 262 single relations couple somewhere, but no leaf ever finds a point where p and q divide both of its content-free relation values at once.
- This sharpens the Theorem-H target into one clean statement: for every surviving leaf, the two first-order residue conditions exclude each other. The proof shape per leaf: reduce both minimal-layer residues mod π (they become phase sums in the orbit variable), eliminate the shared coordinates, and show that simultaneous vanishing forces p to divide a bounded nonzero quantity — then the same on the q side.
- Care point: the 296 zero-side relations have an identically vanishing minimal layer on one side. For leaves that carry them, the first-order condition is vacuous on that side and the incompatibility must run at the mod-π² layer (J-chain toolkit).
- Next: the certificate engine — symbolic residue pairs per leaf shape, automatic elimination, one certificate per shape.

## Round 152: exact reduction and abstract valuation descent

- New Lean file `MsqLean/DistinctReduction.lean`: the theorem
  `exists_distinct_positive_magic_square_iff_reduction` states the exact
  reduction for the original problem. It keeps positivity and pairwise
  distinctness. The older reduction API stays unchanged.
- `magicGrid_pairwise_nondegenerate` derives `u != 0`, `v != 0`, `u != v`,
  and `u != -v` from pairwise distinct grid entries. These are the four
  hypotheses used by the existing `no_four_diffs` theorems.
- New Lean file `MsqLean/ValuationDescent.lean`: `lone_layer_impossible` and
  `lone_layer_coeff_two_impossible` package the minimal-layer contradiction.
- `fourDiffs_descend_square` is the abstract common-square descent rule. A
  class-specific telescoping hypothesis supplies the arithmetic step. The
  theorem preserves the four-difference pattern and all nondegeneracy facts.
- Focused checks pass. The full `lake build MsqLean` passes with 8751 jobs.

## Round 152: THE UNIT CERTIFICATES — 82% of (2,2) dies at first order

- `u22_cert_engine.py`: for each of the 6,208 leaf relation-pairs, reduce both minimal p-layers mod π into the orbit basis (Pb = π̄⁴ with R ≡ Pb/2, I ≡ iPb/2; U = χ⁴ with V = q⁴/U), clear denominators, and take the resultant in U.
- Result: **5,088 shapes (82%) have a pure unit-monomial resultant** (example: 16·Pb⁸·q³²). If both first-order conditions held, π would divide 16 — impossible for p ≥ 5. These leaves are impossible for ALL p, q, by one uniform two-page argument.
- 1,120 shapes have an identically zero p-side resultant (the two conditions coincide at first order). The q-side engine (`u22_cert_qside.py`) now runs on those.
- Rigor points for the writeup: (1) the resultant argument needs the leading U-coefficients to be p-units — verify per shape; (2) U-values are p-units since π ∤ χ; (3) π | integer n forces p | n by the norm.

## Round 153: the q-side pass and the 256-shape deep core

- `u22_cert_qside.py` on the 1,120 p-side-degenerate shapes: 864 get a q-side unit certificate (example factor 6i·Cb³·p¹⁰ → χ | 6, impossible for q ≥ 5).
- Scoreboard: 5,952 of 6,208 leaves (95.9%) are dead at first order for all p, q. The deep core is **256 shapes, degenerate on both sides** (`u22_deep.pkl`).
- The artifact now carries the live programme in §7 and the report mirror `research/REPORT.md` follows it.
- Next: the structure of the 256 — expect the conjugate-pair coincidence families; the kill needs the mod-π² layer (J-chain style) or a second elimination variable.

## Round 154: the pinch screen — (2,2) is down to 64 core leaves

- `u22_deep_pinch.py`: 192 of the 256 deep shapes factor with a strict-pinch factor (R ∓ p², X ∓ q², R²−I² ∓ p⁴, W ∓ q⁴). The pinch is elementary: the real part of a unit power never reaches the norm while the imaginary part is nonzero.
- **The full (2,2) residue is now 64 leaves in 4 families** (`u22_deep2.pkl`): element sets {(1,2,±), (2,1,±), (2,2,+), (2,2,−)}. Their equations are two-core master systems in the π⁸ coordinates (U₈ = R²−I², V₈ = 2RI):
  (1) p²(RZ + IW) = U₈·Z and (2) V₈·W = q²(U₈·Y + V₈·X), with sign variants.
- These are the (2,2) analogs of the cross-pair cores that `Tcore_a`/`Score_a`/`mixed_core_a`/`two_core_a` killed at b = 1. The kill needs the same toolkit: coprime extraction and a norm master relation.
- Scoreboard for Theorem H: 95,040 leaves → 6,208 (grading) → 256 (unit certificates) → **64 (pinch)**. One cell family stands.

## Round 155: exact prime-incidence rows and progress dashboard

- New `MsqLean/IncidenceClassifier.lean`: `padicValInt_add_min_repeats`
  derives the repeated-minimum rule for every nonzero integer sum directly
  from `padicValRat.add_eq_min`.
- `reduced_relations_balanced_row` applies it to the two reduced relations
  `c+d=2a` and `c-d=2b` for an odd prime. Thus every useful prime supplies a
  `BalancedValuationRow` on the four differences.
- `balancedValuationRow_classify` machine-checks that a row has exactly one
  of eight weak-order forms. The independent script `global_incidence.py`
  enumerates the same eight normalized rows.
- `research/PROOF_PROGRESS.md` is now the short master plan and milestone
  dashboard. It records the exact goal, completion conditions, the 64-leaf
  Theorem-H frontier, the two-axis induction plan, and the arbitrary-support
  balanced-cycle target.
- Focused checks and the full `lake build MsqLean` pass. The full build has
  8,752 jobs; existing linter warnings remain.

## Round 156: the 64 leaves are 16 conjugate-quartic classes

- New fast verifier `u22_core_verify.py`: it converts each residual relation
  to a polynomial over the Gaussian rationals and compares monic coefficient
  dictionaries. This avoids slow rational-function simplification.
- Result: all 64 leaves match exactly. They form 16 symmetry classes. Each
  relation is `chi^8*B = chibar^8*Bbar` or its `pi`-side analog. The quartic
  is `z^4+zbar^4 +/- 2*z^3*zbar`. Direct and swapped conjugate orientations
  both occur. The swapped orientation is necessary for 48 leaves.
- New Lean file `MsqLean/CorePythagorean.lean`: both quartic coordinate
  identities and both norm identities are machine-checked.
- `prime_sq_dvd_coprime_factor` proves the prime-square allocation rule after
  Euclid's primitive-triple parameterization.
- `pythagorean_factor_pinch` proves the terminal size contradiction for every
  `p >= 7`: the lower gap is larger than `6*p^3`.
- `core_five_not_square` closes the exceptional value `7561` modulo 13.
- The remaining Theorem-H obligation is the Gaussian coprime extraction. It
  must turn the conjugate-quartic equality into the primitive Pythagorean
  core before the new terminal lemmas apply.

## Round 155: THEOREM H IS COMPLETE AT THE PAPER LEVEL

The last 64 leaves die by one argument, the **master quartic kill**:

- Rust validation (`research/scripts/rs`, seconds instead of minutes): every one of the 128 remaining relations is a constant multiple of x⁴Bq ∓ y⁴B̄q or u⁴Cq ∓ v⁴C̄q, where u = π², v = π̄², x = χ², y = χ̄² and Bq ∈ {u⁴+v⁴±2u³v, mirrors}. In words: χ⁸·B (or π⁸·C) is purely real or purely imaginary.
- The kill: real/imaginary balance forces equal conjugate valuations, so χ̄⁸ ∣ B and B = d·χ̄⁸ with d ∈ ℤ (or i·ℤ). Taking norms with (r, s) = (Re π², Im π²): N(B) = 16s²[(3r²−s²)²s² + r²p⁴] = d²q⁸, so M := (3r²−s²)²s² + r²p⁴ is a perfect square w². That is the Pythagorean condition w² = (s(3r²−s²))² + (rp²)², with legs Im(π⁶) and Re(π²)·p².
- The triple is primitive (all pairwise gcds are 1; r odd, s even). The coprime splitting of rp² = (m−n)(m+n) must put p² whole into m+n (m−n ≤ |r| < p < p²). Then 2mn = r₂²p⁴ − r₁² with |r| = r₁r₂, and |2mn| = 2|s||4r²−p²| < 6p³ while r₂²p⁴ − r₁² ≥ p⁴ − p². So p⁴ − p² < 6p³, hence p ≤ 6: only p = 5 remains, and (r,s) = (±3,±4) gives M = 7561, not a square. B ≠ 0 always (|u∓2v| = p² needs p < 3).
- The theorem-H chain: grading (95,040 → 6,208) → unit certificates (→ 256) → strict pinch (→ 192 die, 64 stay) → master quartic kill (→ 0). Every layer is validated numerically; the unit certificates and the master kill are uniform in p and q.
- Note for Milestone 2: the master kill uses only the π-side data — it is already generic in the χ-exponent, which is what the (a,b)-induction needs.

## Round 156: the (a,b) pattern census fixes the Milestone-2 architecture

- Audit fixes landed in the paper (the B ≠ 0 argument is the strict pinch through |u∓2v| = p; the norm modulus is |d|²).
- `rs/src/bin/uab_census.rs` (Rust; 93M leaves at (5,5) in seconds): the minimal-p-layer pattern universe **saturates in a at a = 2** — grids (3,3), (4,3), (5,3) add zero patterns over (2,3); (4,4) adds zero over (3,4); (5,5) adds zero over (2,5). It **grows linearly in b**: 608 (b=2) → 1,328 (b=3) → 2,304 (b=4) → 3,536 (b=5), increments 720, 976, 1,232.
- Consequence: no finite pattern set covers all b, so Milestone 2 is a single induction in b with the q²-telescoping (the mirror of the uniform theorem's a-induction), and all cells stated a-generically — the census shows a-genericity adds no new cells beyond a = 2.
- Plan for the b-step: UClass2(a,b) telescopes as rung b = q²·rung(b−1) plus the top-k classes; all-low leaves cancel q² and recurse; top-cell families need b-generic certificates (the residues are sparse trinomials whose resultant law depends only on the exponent gaps).

## Round 157: the (2,3) pattern certificates — the b-frontier appears

- `uab_patcert.py` on the 1,328 (2,3) pattern pairs: **468 unit certificates, 284 degenerate, 576 core**.
- The core certificates are conditions p ∣ f(q): sporadic polynomials (q⁴+3, q¹²−9q⁸+24q⁴−15, 2q⁴±2q²+1) and cyclotomic order conditions (factors of q⁸−1, q¹²−1). The order loci of the old analytic program reappear here, now as exact per-leaf certificates.
- The b ≥ 3 kill plan: (i) the q-side mirror certificates give the coupled condition q ∣ g(p); (ii) the coupled loci are thin bands; (iii) on the loci, the master-kill technology (real/imaginary balance → exact norm equations → Pythagorean splitting) applies — the tool the old program lacked. The 284 degenerates go to the pinch/master screen first, as at (2,2).
- Care point: the pattern-level residue argument needs the layer-j ≥ 1 fact (all-j=0 layers die by q-grading) and leading-coefficient unit checks for the resultant implication.

## Round 158: the (2,3) factor screen and the cell catalog

- `u23_factor_screen.py` with the nonzero-factor library (variable monomials; u^j ± v^j and x^j ± y^j at all levels — these are 2Re/2i·Im of half-level powers; pinch forms): 96 of 1,800 distinct relations factor into fully-nonzero pieces, which kills 960 of the 6,704 degenerate-pattern leaf pairs.
- 448 unresolved factor shapes remain. The frequent ones have small direct arguments (example: (u²+v²)(x²+y²) ∓ 2uvxy = 2(2RX ∓ p²q²), a thin band cell: p ∤ R forces p² | 2X, so p < √2·q, and symmetrically — then the exact equation dies like the master cells). The rest are the (2,3) core catalog for the b-generic master treatment.
- Caution learned: u, v, x, y are complex, so no positivity/definiteness shortcuts — every factor argument must run through values (norms, valuations, balance).
- State of Milestone 2 after day one: architecture fixed (b-induction, a-generic cells); rung (2,3) is 468 unit + 284 degenerate patterns of which 960/6,704 leaf pairs are dead; the 576 core patterns carry p | f(q) conditions awaiting the coupled q-side analysis.

## Round 159: the (2,3) degenerate sector is dead

- `u23_shape_classify.py`: all 448 unresolved factor shapes classify — **zero true cores**. 46 die by a lone-minimal-valuation monomial with coefficient ±1 (the prime must divide 1: impossible for every p, q, no bound). 402 are balance forms (self- or anti-conjugate): sums of paired Im-terms, the generalized master families.
- `rs/src/bin/u23_vanish.rs`: all 448 shapes evaluated at every rep orientation for p ≠ q < 300 — 1,455,104 exact evaluations, **zero vanishing points**.
- Consequence: every relation over the 284 degenerate patterns factors into provably- or empirically-nonzero pieces, so all 6,704 degenerate-sector leaf pairs are dead. The proof burden for the paper: one nonvanishing lemma per balance family (the generalized master argument: G real forces a χ-valuation balance, then a norm equation with a small cofactor).
- Remaining at rung (2,3): the 576 core-pattern sector (p ∣ f(q) certificates). Next: the same factor screen on its leaves — the pattern-level condition is only the resultant's necessary condition; the exact relations may die outright.

## Round 160: rung (2,3) is empirically dead end to end

- Core-sector screen (`u23_core_screen.py`): 4,096 pairs, 3,136 relations; 384 relations and 896 pairs die outright on the nonzero library plus unit-coefficient grading.
- The 672 unresolved core-sector factors ALL classify as balance forms (574 imaginary, 98 real) — **zero non-balance cores anywhere in rung (2,3)**.
- `u23_vanish_core`: 2,182,656 exact evaluations over p ≠ q < 300, zero vanishing points.
- Rung (2,3) status: every leaf dead — 468 unit patterns + full degenerate sector + full core sector. The proof burden is now a single kind of statement: **nonvanishing lemmas for the balance families** (402 + 672 shapes, grouped by their (χ-shift, π-side polynomial) structure). The (2,2) master quartic kill is the prototype lemma.
- Strategic note: the b-induction's cell library appears to be balance forms at every rung. One general balance lemma (or a small family list) likely covers every b at once — that is the next target, and it is the heart of Milestone 2.

## Round 161: the balance-family norm formulas

- `u23_family_kill.py`: for every distinct π-side polynomial P in the (2,3) master catalog, N(P) in the coordinates (r, s) = (Re π², Im π²) factors into p-powers times small explicit forms: (p ± s), (p ± 2s), (p² − 2s²)², (3p² − 4s²)², s-powers, and a few irreducible sextics/octics in (p, s).
- The family kill template: the balance condition forces q^{2Δ} ∣ N(P)-value with Δ the χ-shift; every factor of N(P) is bounded by C·p^k, so the condition gives a band q^Δ ≤ C·p^k plus an exact divisibility of a small factor (q^m ∣ p ± s and relatives) — descent territory, with the (2,2) Pythagorean splitting as the deepest case.
- Notable identities that trivialize several families: p² + Re π⁴ = 2r², p² − Re π⁴ = 2s² (so P = u(u ± v) gives N = 4p²·(2r² or 2s²) — the divisibility collapses to q-power ∣ 2r or 2s).
- Discovery layer for rung (2,3) is complete. Next: write the general balance lemma and the per-family finishes into the paper — the b-generic step of Milestone 2.

## Round 162: the balance lemma is grounded and in the paper

- Verified across all 1,074 balance shapes (both sectors): the minimal χ- and χ̄-layers are **clean** — a single x-monomial times a π-side polynomial. The balance lemma applies in its clean form everywhere: shifted profile → χ^{2Δ} ∣ P-value → q^{2Δ} ∣ N(P).
- Paper section added: "Toward all exponents: the balance-form reduction" — the a-saturation census, the four-gate dichotomy at (2,3), the balance lemma L1–L3, and the per-family finish programme with the Theorem-H splitting as prototype.
- Remaining for Milestone 2: (i) write the per-family L4 finishes (band + small-factor descents; the norm formulas are computed); (ii) the q²-telescoping induction wrapper in b; (iii) verify rungs (2,4)/(2,5) reuse the same balance families (expected from the linear pattern growth: new shapes = wider shifts, same P-catalog — check).

## Round 163: THE 58-FAMILY KEYSTONE

- `u2b_pcatalog.py`: the π-side P-catalog of balance factors is **identical at (2,3) and (2,4)** — 58 distinct polynomials, zero new. Only the χ-shifts grow with b.
- With the a-saturation census, this is the keystone of Milestone 2: **the entire two-exponent landscape reduces to 58 P-families.** Each family's kill is the exact equation N(P) = w²·q^{2Δ} (for single-pair balance shapes: χ^{2Δ}·P real forces P = w·χ̄^{2Δ} with w ∈ ℤ), and larger Δ tightens the band — higher rungs are easier.
- Structural reason: the P's live on the j ≤ 2 grid (a-saturation), which does not see b.
- Next: the 58-family table with norm formulas and single-/multi-pair statistics; then the finishes.

## Round 164: the family table and the prototype MIXED finish

- `u2b_family_table.md`: the 58 families with N(P) factorizations and finish classes. The MIXED class (odd-multiplicity non-monomial factors — the deep finishes) has ~25-35 members with N of the shapes p²(p² ± 8s²), products of (p ± s)(p ± 2s), and irreducible sextics/octics.
- Prototype MIXED finish, family P = v(v − 2u): the balance forces the exact Gaussian factorization π̄² − 2π² = w̃·χ̄^{2Δ} with w̃ ∈ ℤ. Adding and subtracting the conjugate equation: w̃·Re(χ^{2Δ}) = −r and w̃·Im(χ^{2Δ}) = 3s. Then 9p² = w̃²(9q^{2Δ} − 8·Im²), and mod-9 descent: 3 ∣ w̃·Im; the 3 ∣ Im branch collapses to X² + Y'² = p² with 8Y'² = q^{2Δ} − p² — a constrained Pythagorean pair, dead by the splitting argument; the 3 ∣ w̃ branch mirrors. This is the template for the linear-combination finishes: **the balance equation linearizes into w̃·(χ-coordinates) = (π-coordinates), and the norm circle closes the system.**
- The linearization trick (add/subtract the conjugate equations to express r and s in terms of w̃ and χ^{2Δ}-coordinates) applies to every 2-term P — a large slice of the 58.

## Round 165: THE FINISH SCHEMA — one theorem shape for all 58 families

- Taxonomy of the 58: 7 pure-monomial (dead: q-power dividing a unit times p-powers and coordinates), 33 two-term, 20 higher-term/multifactor. The α = ±β two-term families die instantly (the linearization forces w̃·Im = 0 with Im ≠ 0, so P = 0, so Re π^{2m} = 0 — false).
- **The schema.** The clean balance condition is exact: P-value = w̃·χ̄^{2Δ}, w̃ ∈ ℤ (or iℤ). With the conjugate equation: 2w̃·Re χ^{2Δ} = Σ and 2w̃·Im χ^{2Δ} = 2Ω where Σ = P + P̄, Ω = (P − P̄)/2i are explicit integer forms in the π-coordinates. Squaring and adding: **4w̃²q^{2Δ} = Σ² + 4Ω²** — the master form, computed for all 58 families (`u2b_schema_table.md`): all are small explicit quartics such as 4(8S²+p²), 4p²(9p²−8S²), 16(8S⁴−5S²p²+p⁴).
- Support bound: any prime of w̃ divides Σ and Ω; coprimality of the π-coordinates pushes the common support into a fixed small integer per family (the (1,−2) prototype: w̃ = ±3^t; the (2,±1)-affine families reproduce the uniform theorem's S-core quadratic 2(4R² ∓ 3p²R + p⁴)).
- Every finish is: band (q^{2Δ} ≤ C·p⁴-type) + a Pell/Pythagorean equation with tiny coefficients — the argument class already machine-checked in the uniform theorem's cores.
- b-genericity is built in: Δ enters only as the q-exponent, and larger Δ tightens the band.

## Round 166: the cross layer is a theorem

- `u23_cross.py` + factor verification: each leaf's two balance conditions pin the coordinates of χ^{2Δ} to two π-side forms; the compatibility cross Σ₁Ω₂ − Σ₂Ω₁ is w̃-free. Over all live (2,3) pairs: 8,416 combos have a nonzero cross, and **every one of the 154 nontrivial factors of the 140 distinct cross polynomials is homogeneous in (r, s) with all-irrational roots — provably nonvanishing on integers, for all p and q.** All shifts matched (no mismatch cases).
- Scoreboard at (2,3): 1,856 pairs already dead + 8,416 cross-killed = **10,272 of 10,800; the remainder is 528 zero-cross pairs** (their two conditions pin identically), which need the single-family exact finishes (w̃-support + Pell).
- The chain is now: grading → unit certificates → factor screen → cross layer → 528 per-family Pell cases. Every layer is uniform in p, q and generic in b.

## Round 167: the corrected cross and the sector map

- Erratum on round 166: the first cross extraction read the shift from the whole factor F, which is symmetric by construction. The correct pinning reads the G-half (terms with x-exp > y-exp). `u23_cross2.py` redoes it.
- Corrected sector map of the (2,3) balance combos: 1,856 pairs already dead; **1,216 cross-killed** (38 distinct cross polynomials, every factor parity-excluded or with all-irrational roots — verified); **1,568 monomial-family combos dead by pure valuation** (the balance demands χ-content in a pure π-power value: v_χ = 0 against 2Δ > 0 — no cofactor analysis needed); **2,368 shift-mismatch combos** (two independent single-conditions, each a per-family finish); **3,792 layered combos** (the factor's minimal χ-layer is diagonal/real — the q-adic layered lemma sector).
- Next: the layered balance lemma (q²-step expansion: q² ∣ D₀-value with D₀ an explicit real π-side integer, iterate, terminate at the first asymmetric layer), and the single-condition finishes for the mismatch sector.

## Round 168: the layered sector is a 3-term valuation battle

- The 216 layered factors form a symmetric sandwich F = Ḡ + D + G (χ̄-heavy bottom, real/imaginary diagonal middle, χ-heavy top) in only **14 layer profiles**. The balance equation is the 3-term S-unit form χ^{2Δ}P − χ̄^{2Δ}P̄ = c·q^{2d}·T with χ-valuations {2Δ, 0, 2d}, d < Δ.
- The kill chain per profile: the lone minimum (the Ḡ term) must deepen — χ^{2d} ∣ P̄-value (band q^{2d} ≤ N(P̄)); at level 2d the middle ties — an exact congruence between the deepened cofactor and T; iterate to 2Δ; the terminal system is an exact Pell/Pythagorean pair. Fully mechanical and finite.
- Plan: encode the deepening chain into a certifier (grading → unit certificates → factor screen → monomial valuation → cross → layered chain) usable at any (a, b). Milestone 2 then reads: certifier + the finite family lemmas + the q²-telescoping wrapper.

## Round 169: support bounds — w̃ is {2,3,5,7}-smooth and tiny

- `u2b_support_table.md`: for every family, Res_S(Σ, Ω) = c₁·R^k and Res_R(Σ, Ω) = c₂·S^k with c₁, c₂ ∈ {2^a 3^b 5^c 7^d}-smooth small integers. A prime of w̃ divides both, and gcd(R, S) = 1, so the support of w̃ divides the contents — finite and explicit per family.
- The (2,3) architecture is now complete at the discovery level. Sectors and their kills:
  1. grading (lone minimal layer) — unconditional;
  2. unit-certificate resultants — unconditional;
  3. factor screen: nonzero library + unit-coefficient grading — unconditional;
  4. monomial balance families — pure χ-valuation contradiction, unconditional;
  5. cross layer — 38 polynomials, all factors parity-excluded or irrational-rooted, unconditional;
  6. single conditions (mismatch sector) — finite w̃-set per family, terminal Pell systems;
  7. layered sandwich (14 profiles) — 3-term valuation battle with a deepening chain, terminal Pell systems.
- Remaining proof obligations for the two-exponent theorem: (i) the exactness lemma in its layered/multi-pair form; (ii) the terminal Pell lemma list (finite, from sectors 6–7); (iii) the q²-telescoping wrapper in b; (iv) collect everything into the paper.

## Round 170: the terminal list T — the finite bottom of Milestone 2

- Mismatch sector: 276 distinct family pairs. 22 die outright (the resultant contents of (A₁₂, C₁₂) are pure 2-powers, and q ≥ 5). 14 are aligned (single-condition). The 232 with degenerate resultants have only **12 distinct polynomial gcds**: powers of (r²+s²) = p² (dead instantly: q ≠ p), r², s², (r±s)², and the disc-8 forms (r² ± 2rs − s²).
- **The terminal list T**: q-power ∣ r; q-power ∣ s; q-power ∣ r ± s; q-power ∣ r² ± 2rs − s². Six divisibility classes — the historical band conditions — but now each arrives inside an overdetermined exact pinning system (2w̃X = Σ, w̃Y = Ω on both sides), so the second condition delivers the contradiction. The disc-8 forms are ℤ[√2]-norm conditions: the deepest T-members, with the master-kill splitting as the tool.
- Everything above T is proved or mechanically certified. The two-exponent theorem = T-proofs + the layered-lemma chain (14 profiles) + the exactness lemma + the q²-telescoping wrapper.

## Round 171: the non-layered sector of (2,3) is closed

- Liveness filter: a condition with exactly one of (Σ, Ω) identically zero is dead outright (it forces Re or Im of χ^{2Δ} to vanish — impossible). This kills 1,824 more pairs and reveals the terminal landscape:
- Live mismatch gcds are ONLY powers of (r²+s²) = p-powers and the constant 16 — both impossible for q ≥ 5, q ≠ p. **The disc-8 "band" forms of round 170 were phantoms living on dead branches.**
- All 116 live equal-shift crosses verified nonvanishing (parity-excluded or irrational-rooted).
- The 24 aligned (cross-zero) systems are all monomial families (±u², ±u⁴, ±v², ±v⁴) — dead by the pure χ-valuation kill.
- **The non-layered sector of rung (2,3) is completely dead**, by seven mechanically verified kill layers. Remaining at this rung: the layered sandwich sector (3,280 pairs, 216 factors, 14 profiles).

## Round 172: the certifier verdict and the layered endgame

- Certifier v1 verdict on rung (2,3): **9,360 of 10,800 pairs proved dead mechanically** (1,856 fully factored + 7,120 all-dead-factor relations + 384 all-combos-killed). All 1,440 residual pairs are layered combos — the only remaining obligation class.
- The 216 layered factors expand in the χ-coordinate basis into just **4 relation signatures** (single-level sandwiches at j = 1, 2, 3, plus 8 five-level factors). Each is an affine condition α(r,s)·X_j + β(r,s)·Y_j = γ on the χ-circle.
- A worked example decomposes to R₈·Y₄ = p²q²·S₄ — the row-relation class that `row_M7a_kill` and `Srow_M7_kill_a` already killed, machine-checked, in the uniform theorem. The layered sector is solved technology.
- The exactness lemma is proved and in the paper; the telescoping wrapper subsection is drafted. `u23_endgame.py` computes the terminal Diophantines for all 1,440 residual pairs (2×2 linear systems on the χ-circle, determinant = the verified cross).

## Round 173: the affine model is verified exactly

- `u23_affine_verify.py`: all 208 single-level layered factors match the model F = q^{2qb}[q^{2ep}(c·χ^{2j₂} + σ·conj) + q^{2ed}d] exactly, at multiple Gaussian data points with exact integer arithmetic. (Two bugs found on the way: xy-value = q², so every xy-power scales as q^{2·exp}; and the σ = ±1 symmetry sign selects between the Re- and Im-affine forms.)
- The corrected endgame computation runs: for each residual pair, the two affine conditions on the χ^{2j₂}-circle solve linearly (determinant = the verified cross class) and the circle equation yields one terminal polynomial T(r, s, q) per pair. T ≠ 0 at data kills the pair outright; the T-classifier (q-grading + band cascade) is next.

## Round 174: the Rust certifier, part 1

- `rs/src/bin/certifier.rs`: sparse (u,v,x,y)-polynomial engine (add, mul, conj, exact division), class/leaf enumeration, grading, relation dedup, and the library-division screen (trial division by the explicit nonzero library replaces general factorization — the pipeline needs nothing more).
- Runs the whole (2,3) relation screen in about one second (sympy took minutes). Reproduces: 456,960 leaves, 17,184 survivors (exact match), and the central structural claim by an independent implementation: after the screen, **all 1,096 core shapes are balance forms — zero non-balance**.
- Part 2 next: the (r,s)-Gaussian coefficient engine (Re/Im extraction), the affine model, cross/mismatch/terminal computations, and rational-root classification. SymPy stays as a sampling oracle.

## Round 175: the Rust certifier closes most of the residual in seconds

- Certifier parts 2–3: the (r,s)-Gaussian engine, the affine model, cross/terminal layers, rational-root classification, and the clean-affine elimination — all in Rust; the full (2,3) pipeline runs in ~7 seconds.
- Verdicts (Rust normalization, 8,592 pairs): 7,336 dead (a relation cannot vanish), 456 affine-affine pairs → **69 distinct terminal polynomials, all single-q-level with nonvanishing minimal forms — dead unconditionally**; 312 clean-affine pairs dead by the q-grade kill; 96 by cross nonvanishing. **Total 8,200 dead; 392 residual** in four level-relation classes: clean-affine level mismatch (208), multi-level sandwiches (128), affine level mismatch (48), affine parallel (8).
- Next: the base-coordinate elimination — every condition is polynomial in the χ²-coordinates (X₁, Y₁) via (X₁+iY₁)^ℓ; two conditions plus the circle X₁²+Y₁² = q² are three equations in two unknowns; Sylvester/Bareiss resultants over the (r,s,q)-coefficient ring finish the job.
- The exponent audit found and fixed a q^{2j₂} bug in the circle term before any results were recorded.
