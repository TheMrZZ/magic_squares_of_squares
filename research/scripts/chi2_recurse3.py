"""Recursive closure engine.  State: equality constraints E (list of j-forms
= 0) and set of deleted (identically-cancelled) groups.  At each level:
- collect candidate 'value forms' v_G,side = (form, group) for remaining groups;
- find all feasible minimal singletons -> those regions are CLOSED (unit coeff);
- find all feasible minimal TIES (pairs of value-forms tying below all others);
  for each: if the tied set is exactly two groups whose BOTH coordinates agree
  on the locus and coefficients sum to 0 -> exact cancellation: recurse with
  the new equality and those groups deleted;
  else if sum of coefficients != 0 (mod any p>3, i.e. sum not 0 and small) ->
  layer sum = (sum gamma) t^e != 0 -> CLOSED;
  else -> report UNRESOLVED.
Terminates when LP infeasible (empty locus).
"""
from chi2_recurse_lib import build, conj_expr, feasible, Qsym
from sympy import expand, Poly, re as sre, I as i_
from scipy.optimize import linprog
import itertools

def feasible_float(ineqs, eqs, n):
    A_ub = [[-a[t] for t in range(n)] for a, b in ineqs]
    b_ub = [-b for a, b in ineqs]
    A_eq = [list(e) for e in eqs] or None
    b_eq = [0]*len(eqs) or None
    r = linprog([0]*n, A_ub=A_ub or None, b_ub=b_ub or None,
                A_eq=A_eq, b_eq=b_eq, bounds=[(1, None)]*n, method='highs')
    return r.status == 0

def feasible2(ineqs, eqs, n):
    if not feasible_float(ineqs, eqs, n): return False
    return feasible(ineqs, eqs, n)

def forms_equal_on(f, g, eqs, n):
    # is f.j = g.j forced by eqs? check both f-g >= 0... simpler: infeasible(f.j > g.j) and infeasible(<)
    d = [f[t]-g[t] for t in range(n)]
    if all(x == 0 for x in d): return True
    # f.j - g.j can be nonzero on locus? test feasibility of d.j >= 1 and -d.j >= 1
    gt = feasible2([(d, 1)], eqs, n)
    lt = feasible2([([-x for x in d], 1)], eqs, n)
    return not gt and not lt

def analyze(live, eqs, n, depth, log, maxdepth=6):
    ind = "  "*depth
    if depth > maxdepth: log.append(ind+"MAXDEPTH"); return False
    # value forms
    vf = []
    for idx,(P,B,g) in enumerate(live):
        vf.append((P, idx)); 
        if B != P: vf.append((B, idx))
    # locus nonempty?
    if not feasible2([], eqs, n):
        log.append(ind+f"L{depth}: locus empty -> closed"); return True
    ok_all = True
    # singletons: any form that can be strictly minimal -> closed region (unit gammas assumed |g| small, g!=0)
    # ties: enumerate pairs of forms that can jointly minimize
    handled_any = False
    tie_pairs = []
    for (f1,i1),(f2,i2) in itertools.combinations(vf, 2):
        if [f1[t]-f2[t] for t in range(n)] == [0]*n and i1 == i2: continue
        cons = []
        for (f3,i3) in vf:
            if f3 == f1 or f3 == f2: continue
            cons.append(([f3[t]-f1[t] for t in range(n)], 0))
        if feasible2(cons, eqs+[[f1[t]-f2[t] for t in range(n)]], n):
            tie_pairs.append(((f1,i1),(f2,i2)))
    log.append(ind+f"L{depth}: {len(live)} groups, feasible tie-pairs: {len(tie_pairs)}")
    for (f1,i1),(f2,i2) in tie_pairs:
        eqs2 = eqs + [[f1[t]-f2[t] for t in range(n)]]
        if i1 == i2:
            # same group tying its own two coordinates: real value 2*Re, gamma unit -> nonzero (Re pi^m != 0)
            log.append(ind+f"  tie within group {i1} (P=B on locus): Re-value unit -> closed"); continue
        P1,B1,g1 = live[i1]; P2,B2,g2 = live[i2]
        # do BOTH coordinates of the two groups agree on the sub-locus?
        both = forms_equal_on(P1, P2, eqs2, n) and forms_equal_on(B1, B2, eqs2, n)
        if both and g1 + g2 == 0:
            log.append(ind+f"  groups {i1},{i2} cancel EXACTLY (g {g1}{g2:+d}); recurse")
            live2 = [live[k] for k in range(len(live)) if k not in (i1,i2)]
            ok_all &= analyze(live2, eqs2, n, depth+1, log, maxdepth)
        elif g1 + g2 != 0 and abs(g1+g2) <= 8:
            log.append(ind+f"  groups {i1},{i2} tie, coeff sum {g1+g2} != 0 -> layer unit -> closed")
        else:
            # order locus: try one-sided closure. On eqs2, check each side
            # (P-layers and B-layers separately): minimal-layer achievers.
            closed_one_sided = False
            for side in (0, 1):  # 0: P-forms, 1: B-forms
                fs = [ (live[k][side], k) for k in range(len(live)) ]
                # find all forms that can achieve the side-min on eqs2
                achievers = []
                for f, k in fs:
                    cons = [([f3[t]-f[t] for t in range(n)], 0) for f3, k3 in fs if f3 != f]
                    if feasible2(cons, eqs2, n):
                        achievers.append((f, k))
                # group identical forms
                by_form = {}
                for f, k in achievers: by_form.setdefault(tuple(f), []).append(k)
                # check: for EVERY feasible achiever form, the layer coefficient
                # (sum of gammas whose form equals it AND is min there)... conservative:
                # if all achiever forms are pairwise non-tie-able... simpler criterion:
                # unique achiever form overall with unit coeff-sum
                if len(by_form) == 1:
                    ks = list(by_form.values())[0]
                    gs = sum(live[k][2] for k in ks)
                    if gs != 0 and abs(gs) <= 8:
                        log.append(ind+f"  order tie {i1},{i2}: side {'PB'[side]} min-layer unique form, coeff sum {gs} -> CLOSED one-sided")
                        closed_one_sided = True
                        break
            if not closed_one_sided:
                log.append(ind+f"  UNRESOLVED tie {i1},{i2} coeffs {g1},{g2} both={both}")
                ok_all = False
    return ok_all

shapes = build(3, 'imb3_fails.pkl') + build(4, 'imb4_fails.pkl')
for nlev, shape, Np, Dp, gens in shapes:
    A = expand(Np.as_expr() / Qsym)
    c = expand(A*conj_expr(A, nlev) - Dp.as_expr()*conj_expr(Dp.as_expr(), nlev))
    cp = Poly(c, *[g for g in gens if str(g) != 'Q'])
    groups = {}
    for mono, coef in cp.as_dict().items():
        P = [0]*nlev; B = [0]*nlev
        for g, e in zip(cp.gens, mono):
            if e == 0: continue
            name = str(g)
            if name.startswith('Z'):
                k = int(name[1])
                if name.endswith('b'): B[k-1] += 4*e
                else: P[k-1] += 4*e
            elif name.startswith('N'):
                k = int(name[1]); P[k-1] += 2*e; B[k-1] += 2*e
        groups[(tuple(P), tuple(B))] = groups.get((tuple(P), tuple(B)), 0) + coef
    live = [(P, B, int(sre(v))) for (P, B), v in groups.items() if v != 0]
    log = []
    ok = analyze(live, [], nlev, 0, log)
    print(f"{nlev}-level {shape}: {'FULLY CLOSED' if ok else 'HAS UNRESOLVED'}", flush=True)
    for line in log: print("   "+line, flush=True)
