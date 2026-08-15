import itertools
def gpow(z, n):
    r = (1, 0)
    for _ in range(n):
        r = (r[0]*z[0] - r[1]*z[1], r[0]*z[1] + r[1]*z[0])
    return r
def reps(p):
    return [(a,b) for a in range(1,p) for b in range(1,p) if a*a+b*b == p]
primes = [5,13,17,29,37,41,53,61]
hits = 0
checked = 0
for p, q in itertools.permutations(primes, 2):
    for (A,B) in reps(p):
        for (C,D) in reps(q):
            R8, I8 = gpow((A,B), 8)
            X, Y = gpow((C,D), 4)
            T = R8*Y; S = I8*X
            L0 = p**4 * Y
            L1 = p**2 * q**2 * gpow((A,B),4)[1]
            L2 = q**2 * I8
            r4, i4 = gpow((A,B), 4)
            L3 = p**2 * (r4*Y + i4*X)
            L4 = p**2 * (i4*X - r4*Y)
            lows = {'L0':L0,'L1':L1,'L2':L2,'L3':L3,'L4':L4}
            for (nb, Kb), (nd, Kd) in itertools.product(lows.items(), repeat=2):
                for f, e, g in itertools.product([1,-1], repeat=3):
                    checked += 1
                    # form A: 2T = f*Kb and 3T + e*S = g*Kd
                    if 2*T == f*Kb and 3*T + e*S == g*Kd:
                        hits += 1; print("A-HIT", p,q,A,B,C,D,nb,nd,f,e,g)
                    # form B: 2S = f*Kb and 3S + e*T = g*Kd
                    if 2*S == f*Kb and 3*S + e*T == g*Kd:
                        hits += 1; print("B-HIT", p,q,A,B,C,D,nb,nd,f,e,g)
print("checked", checked, "hits", hits)
