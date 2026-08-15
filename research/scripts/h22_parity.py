"""(2,2) pass 2B: mod-32 solvability sieve on residual relations.

Element (a,b,sg) value: p^{4-2a} q^{4-2b} * Im(P^a * C^{b,sg}) where
P^1 = pi^4 = R+iI, P^2 = pi^8 = (R+iI)^2, C similarly with X,Y (conj for
sg=-1), P^0 = C^0 = 1.  Constraints mod 32: R,X odd; I,Y = 0 mod 4;
R^2+I^2 = p^4, X^2+Y^2 = q^4 mod 32; p,q odd.  s^2: odd square (s odd?
s can be even! s free of 1mod4 primes; s may contain 2. If 2|s the whole
element scales by s^2 -- common factor, cancels in relations. So wlog
gcd handled: relations are homogeneous in s^2 -> drop s.)
Check each distinct relation for solvability mod 32.
"""
import itertools
from collections import Counter

elems = []
for a in range(3):
    for b in range(3):
        if (a, b) == (0, 0): continue
        if a == 0 or b == 0: elems.append((a, b, 1))
        else: elems.append((a, b, 1)); elems.append((a, b, -1))
def pexp(e): return 4 - 2*e[0]
def qexp(e): return 4 - 2*e[1]
def lone(rel):
    ps = [pexp(e) for e in rel]; qs = [qexp(e) for e in rel]
    return ps.count(min(ps)) == 1 or qs.count(min(qs)) == 1

# distinct relations from residual leaves: (frozenset of (elem, sign)) with
# relation sigma_s E_s - E_u - sigma_v E_v = 0 -> normalize: set of 3 signed elems summing to 0
rels = set()
for combo in itertools.permutations(range(12), 4):
    eu, ev, es, ed = [elems[k] for k in combo]
    if lone([es, eu, ev]) or lone([ed, eu, ev]): continue
    for sv, ss, sd in itertools.product((1,-1), repeat=3):
        for trip, sgns in ((( es, eu, ev), (ss, -1, -sv)), ((ed, eu, ev), (sd, -1, sv))):
            key = frozenset(zip(trip, sgns))
            # normalize overall sign
            key2 = frozenset((t, -g) for t, g in key)
            rels.add(min(key, key2, key=lambda fs: sorted(str(x) for x in fs)))
print(f"distinct residual relations: {len(rels)}", flush=True)

M = 32
def im(z): return z[1] % M
def cmulm(u, v): return ((u[0]*v[0]-u[1]*v[1]) % M, (u[0]*v[1]+u[1]*v[0]) % M)

sols_cache = {}
killed = 0; alive = []
# precompute valid (R,I,p4) mod 32: R odd, I=0 mod 4, exists odd p with p^4 = R^2+I^2 mod 32
podd4 = {pow(p, 4, M) for p in range(1, M, 2)}
vals_pi = []
for R in range(1, M, 2):
    for I in range(0, M, 4):
        if (R*R + I*I) % M in podd4: vals_pi.append((R, I))
print(f"valid (R,I) mod 32: {len(vals_pi)}", flush=True)
for rel in rels:
    ok = False
    for R, I in vals_pi:
        P1 = (R, I); P2 = cmulm(P1, P1)
        for X, Y in vals_pi:
            C1 = (X, Y); C2 = cmulm(C1, C1)
            # p^exponents mod 32: p odd -> p^2 in {1,9,17,25}, p^4 in {1,17}... enumerate p,q mod 32? prefactor p^{4-2a}: enumerate pm in odd residues consistent? Use pm free odd:
            for pm in (1, 3, 5, 7, 9, 11, 13, 15):  # p mod 16 enough? use p mod 32 odd -> p^2 mod 32 covers {1,9,17,25}
                for qm in (1, 3, 5, 7):
                    tot = 0
                    good = True
                    for (a, b, sg), g in rel:
                        Pp = {0: (1,0), 1: P1, 2: P2}[a]
                        Cc = {0: (1,0), 1: C1, 2: C2}[b]
                        if sg < 0: Cc = (Cc[0], -Cc[1])
                        v = cmulm(Pp, Cc)[1] * pow(pm, 4-2*a, M) * pow(qm, 4-2*b, M)
                        tot = (tot + g*v) % M
                    if tot % M == 0: ok = True; break
                if ok: break
            if ok: break
        if ok: break
    if ok: alive.append(rel)
    else: killed += 1
print(f"relations killed mod 32: {killed} / {len(rels)}; alive: {len(alive)}")
import pickle; pickle.dump(alive, open('h22_alive_rels.pkl','wb'))
