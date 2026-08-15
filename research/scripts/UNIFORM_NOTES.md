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
