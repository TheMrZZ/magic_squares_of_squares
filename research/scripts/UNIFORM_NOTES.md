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
