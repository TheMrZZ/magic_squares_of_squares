"""(2,2) survivor-shape probe for the dispatcher-style attack.

Enumerate the 12 D-classes of s*p^2*q^2 in half-level coordinates:
  R, I = re/im(pi^4)   with R^2 + I^2 = p^4
  X, Y = re/im(chi^4)  with X^2 + Y^2 = q^4
  W, Z = re/im(chi^8)  = (X^2 - Y^2, 2*X*Y)
Class value (alpha, beta, sgn): p^(4-2a) * q^(4-2b) * Im(pi^{4a} chi^{4b*sgn}).

Enumerate leaves: 4 distinct classes (Ka..Kd) + signs (e1..e4 = +-1, e1 = +1
wlog) with
  e3*Kc + e4*Kd = 2*e1*Ka
  e3*Kc - e4*Kd = 2*e2*Kb
Kill 1 (grading): a lone minimal p-layer or q-layer in a three-term relation.
Collect the survivors and print their class-multiset shapes.
"""
import itertools, pickle
from collections import Counter
from sympy import symbols, expand

R, I, X, Y, W, Z, p, q = symbols('R I X Y W Z p q')

def im_val(a, b, sg):
    # Im(pi^{4a} chi^{4b*sg}) in the half-level coordinates
    if a == 0:
        return {0: 0, 1: Y, 2: Z}[b] * (1 if sg > 0 or b == 0 else -1)
    if a == 1:
        pr, pi_ = R, I
    else:
        pr, pi_ = R*R - I*I, 2*R*I
    if b == 0:
        return pi_
    cr, ci = (X, Y) if b == 1 else (W, Z)
    if sg < 0:
        ci = -ci
    return expand(pr*ci + pi_*cr)

elems = []
for a in range(3):
    for b in range(3):
        if (a, b) == (0, 0):
            continue
        sgs = (1,) if (a == 0 or b == 0) else (1, -1)
        for sg in sgs:
            elems.append((a, b, sg))
assert len(elems) == 12

def pexp(e): return 4 - 2*e[0]
def qexp(e): return 4 - 2*e[1]

def lone_min(rel_elems):
    # rel_elems: list of (elem, coeff-nonzero) triples of the 3-term relation
    for exp in (pexp, qexp):
        vs = [exp(e) for e in rel_elems]
        m = min(vs)
        if vs.count(m) == 1:
            return True
    return False

survivors = []
killed = 0
total = 0
for combo in itertools.combinations(range(12), 4):
    for perm in itertools.permutations(combo):
        ea, eb, ec, ed = [elems[k] for k in perm]
        for e2, e3, e4 in itertools.product((1, -1), repeat=3):
            total += 1
            # R1: e3 Kc + e4 Kd - 2 Ka = 0 ; R2: e3 Kc - e4 Kd - 2 e2 Kb = 0
            if lone_min([ec, ed, ea]) or lone_min([ec, ed, eb]):
                killed += 1
                continue
            survivors.append((perm, (1, e2, e3, e4)))
print(f"total leaves: {total}, grading-killed: {killed} ({100*killed/total:.1f}%), survivors: {len(survivors)}")
shapes = Counter()
for perm, sgns in survivors:
    key = tuple(sorted(elems[k] for k in perm))
    shapes[key] += 1
print(f"distinct class-multiset shapes among survivors: {len(shapes)}")
for k, v in shapes.most_common(40):
    print(v, k)
pickle.dump(survivors, open('u22_survivors.pkl', 'wb'))
