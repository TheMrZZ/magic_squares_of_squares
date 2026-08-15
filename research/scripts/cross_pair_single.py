import itertools
def gpow(z, n):
    r = (1, 0)
    for _ in range(n):
        r = (r[0]*z[0] - r[1]*z[1], r[0]*z[1] + r[1]*z[0])
    return r
def reps(p):
    return [(a,b) for a in range(1,p) for b in range(1,p) if a*a+b*b == p]
primes = [5,13,17,29,37,41,53,61]
alive = {}
for p, q in itertools.permutations(primes, 2):
    for (A,B) in reps(p):
        for (C,D) in reps(q):
            R8, I8 = gpow((A,B), 8)
            X, Y = gpow((C,D), 4)
            T = R8*Y; S = I8*X
            r4, i4 = gpow((A,B), 4)
            lows = {'L0':p**4*Y,'L1':p**2*q**2*i4,'L2':q**2*I8,
                    'L3':p**2*(r4*Y+i4*X),'L4':p**2*(i4*X-r4*Y)}
            for nk, K in lows.items():
                for f in (1,-1):
                    for tag, lhs in (('2T',2*T),('2S',2*S),
                                     ('3T+S',3*T+S),('3T-S',3*T-S),
                                     ('3S+T',3*S+T),('3S-T',3*S-T)):
                        if lhs == f*K:
                            alive.setdefault((tag,nk),[]).append((p,q,A,B,C,D,f))
for k in sorted(alive):
    print(k, len(alive[k]), alive[k][:3])
print("families with single-eq solutions:", len(alive))
