"""Pattern-level unit certificates for general (a,b), validated at (2,3).

Every surviving relation's minimal p-layer sits at one j >= 1, so its
mod-pi residue is a unit monomial times
  E = sum_{sg=+} g q^{4k} U^{M-k} + sum_{sg=-} g U^{M+k},
determined by the pattern alone (U = chi^4, M = max k). For each pattern
pair take Res_U(E1, E2) over Z[q] and classify: unit monomial (kill for
all p, q), degenerate (needs q-side/pinch/master layers), or core.
"""
import itertools, pickle
from collections import Counter
from sympy import symbols, expand, factor, Poly, resultant, Mul, Pow

q, U = symbols('q U')

def residue(pat):
    M = max(k for k, _, _ in pat)
    E = 0
    for k, sg, g in pat:
        if sg >= 0:
            E += g * q**(4*k) * U**(M - k)
        else:
            E += g * U**(M + k)
    return expand(E)

def run_patterns(a, b):
    els = []
    for j in range(a+1):
        for k in range(b+1):
            if (j, k) == (0, 0): continue
            sgs = (1,) if (j == 0 or k == 0) else (1, -1)
            for sg in sgs: els.append((j, k, sg))
    pexp = {e: 2*(a-e[0]) for e in els}
    qexp = {e: 2*(b-e[1]) for e in els}
    def lone(rel):
        for exp in (pexp, qexp):
            vs = [exp[e] for e, _ in rel]
            m = min(vs)
            if vs.count(m) == 1: return True
        return False
    def ppat(rel):
        m = min(pexp[e] for e, _ in rel)
        lay = sorted((e[1], e[2], g) for e, g in rel if pexp[e] == m)
        k0 = min(k for k, _, _ in lay)
        return tuple((k-k0, sg, g) for k, sg, g in lay)
    pats = set()
    n = len(els)
    for combo in itertools.permutations(range(n), 4):
        ea, eb, ec, ed = [els[i] for i in combo]
        for e2, e3, e4 in itertools.product((1,-1), repeat=3):
            r1 = [(ec, e3), (ed, e4), (ea, -2)]
            r2 = [(ec, e3), (ed, -e4), (eb, -2*e2)]
            if lone(r1) or lone(r2): continue
            pats.add((ppat(r1), ppat(r2)))
    return pats

pats = run_patterns(2, 3)
print(f"(2,3): {len(pats)} pattern pairs")
res = Counter()
degen, cores = [], []
for p1, p2 in pats:
    E1, E2 = residue(p1), residue(p2)
    Rr = expand(resultant(Poly(E1, U), Poly(E2, U)))
    if Rr == 0:
        res['degenerate'] += 1; degen.append((p1, p2)); continue
    fac = factor(Rr)
    core = []
    for fc in Mul.make_args(fac):
        b_, ex = (fc.base, int(fc.exp)) if isinstance(fc, Pow) else (fc, 1)
        if b_.is_number or b_ == q: continue
        core.append(b_)
    if not core:
        res['unit'] += 1
    else:
        res['core'] += 1; cores.append((p1, p2, fac))
print(dict(res))
for p1, p2, f in cores[:6]:
    print("CORE:", p1, "/", p2, "->", f)
pickle.dump((degen, cores), open('u23_pattern_residue.pkl', 'wb'))
