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
