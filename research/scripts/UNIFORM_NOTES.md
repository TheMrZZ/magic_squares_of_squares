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

The D-set for e = s p^a q^b is always
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
- Every cofactor is 2·(integer) − p^aq^b, odd hence nonzero — the
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
  the p^aq^b coefficient pattern).
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
