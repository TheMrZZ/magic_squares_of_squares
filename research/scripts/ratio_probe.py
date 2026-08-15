import itertools
def gpow(z, n):
    r = (1, 0)
    for _ in range(n):
        r = (r[0]*z[0] - r[1]*z[1], r[0]*z[1] + r[1]*z[0])
    return r
def reps(p):
    return [(a,b) for a in range(1,p) for b in range(1,p) if a*a+b*b == p]
primes = [5,13,17,29,37,41,53,61,73,89,97,101]
hits = []
for p, q in itertools.permutations(primes, 2):
    for (A,B) in reps(p)[:1]:
        for (C,D) in reps(q)[:1]:
            R, I = gpow((A,B), 4); R8, I8 = gpow((A,B), 8)
            X, Y = gpow((C,D), 4)
            vals = {'L0':p**4*Y,'L1':p**2*q**2*I,'L2':q**2*I8,
                    'L3':p**2*(R*Y+I*X),'L4':p**2*(I*X-R*Y),
                    'L5':R8*Y+I8*X,'L6':I8*X-R8*Y}
            for (n1,v1),(n2,v2) in itertools.product(vals.items(), repeat=2):
                for r in (2,-2,3,-3):
                    if v1 == r*v2:
                        hits.append((p,q,n1,n2,r))
print("ratio hits:", len(hits), hits[:10])
