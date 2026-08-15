"""Probe the coupled band systems: for primes p,q < 5000 (both 1 mod 4),
does there exist a pair with
  p = k * F(C,D), C^2+D^2 = q   AND   q = l * G(A,B), A^2+B^2 = p
for F,G in the three form families and small |k|,|l| <= 3?
Count co-occurrences per (F,G) pair."""
import math
from itertools import product

def gauss_rep(n):
    for a in range(1, math.isqrt(n)+1):
        b2 = n - a*a; b = math.isqrt(b2)
        if b*b == b2: return (a, b)
    return None

FORMS = {
    'disc8':  lambda x, y: x*x - 2*x*y - y*y,
    'disc8b': lambda x, y: x*x + 2*x*y - y*y,
    'disc12a': lambda x, y: x*x - 4*x*y + y*y,
    'disc12b': lambda x, y: x*x + 4*x*y + y*y,
    'disc12c': lambda x, y: 3*x*x - y*y,
    'disc12d': lambda x, y: x*x - 3*y*y,
}
primes = [n for n in range(5, 5000) if all(n % k for k in range(2, math.isqrt(n)+1)) and n % 4 == 1]
reps = {pr: gauss_rep(pr) for pr in primes}
# for each prime q with rep (C,D), which values k*p (p prime) does each form hit?
hits = {}
for pr in primes:
    C, D = reps[pr]
    for fn, f in FORMS.items():
        for sx, sy in ((C,D),(D,C)):
            v = abs(f(sx, sy))
            hits.setdefault((pr, fn), set()).add(v)
from collections import Counter
cooc = Counter()
pairs_found = []
pset = set(primes)
for pq in primes:
    for fn in FORMS:
        for v in hits[(pq, fn)]:
            for k in (1, 2, 3):
                if v % k: continue
                cand = v // k
                if cand in pset and cand != pq:
                    # p = cand represented; now check reverse: q = l*G(A,B), A^2+B^2 = p
                    for gn in FORMS:
                        for w in hits[(cand, gn)]:
                            for l in (1, 2, 3):
                                if w % l: continue
                                if w // l == pq:
                                    cooc[(fn, gn)] += 1
                                    if len(pairs_found) < 8:
                                        pairs_found.append((cand, pq, fn, k, gn, l))
print("coupled-system co-occurrences (p,q < 5000):", sum(cooc.values()))
for kk, v in cooc.most_common(10): print(v, kk)
print("examples:", pairs_found)
