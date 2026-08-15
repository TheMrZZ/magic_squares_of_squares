import itertools
def gpow(z, n):
    r = (1, 0)
    for _ in range(n):
        r = (r[0]*z[0] - r[1]*z[1], r[0]*z[1] + r[1]*z[0])
    return r
def gmul(a,b): return (a[0]*b[0]-a[1]*b[1], a[0]*b[1]+a[1]*b[0])
def reps(p):
    return [(a,b) for a in range(1,p) for b in range(1,p) if a*a+b*b == p]
primes = [5,13,17,29,37,41,53,61]
hits = 0; checked = 0
for p, q in itertools.permutations(primes, 2):
    for (A,B) in reps(p)[:1]:
        for (C,D) in reps(q)[:1]:
            R4,I4 = gpow((A,B),4); R8,I8 = gpow((A,B),8); R12,I12 = gpow((A,B),12)
            X,Y = gpow((C,D),4)
            L = {'L0':p**4*Y,'L1':p**2*q**2*I4,'L2':q**2*I8,
                 'L3':p**2*(R4*Y+I4*X),'L4':p**2*(I4*X-R4*Y),
                 'L5':R8*Y+I8*X,'L6':I8*X-R8*Y}
            lows = {('p2'+k): p**2*v for k,v in L.items()}
            lows['M7'] = q**2*I12
            T = R12*Y; S = I12*X
            for (nb, Kb), (nd, Kd) in itertools.product(lows.items(), repeat=2):
                for f, e, g in itertools.product([1,-1], repeat=3):
                    checked += 2
                    # T-form: 2T = f*Kb and 3T + e*S = g*Kd
                    if 2*T == f*Kb and 3*T + e*S == g*Kd:
                        hits += 1; print("T-HIT", p,q,nb,nd,f,e,g)
                    # S-form
                    if 2*S == f*Kb and 3*S + e*T == g*Kd:
                        hits += 1; print("S-HIT", p,q,nb,nd,f,e,g)
# also single-equation census
single = {}
for p, q in itertools.permutations(primes, 2):
    for (A,B) in reps(p)[:1]:
        for (C,D) in reps(q)[:1]:
            R4,I4 = gpow((A,B),4); R8,I8 = gpow((A,B),8); R12,I12 = gpow((A,B),12)
            X,Y = gpow((C,D),4)
            L = {'L0':p**4*Y,'L1':p**2*q**2*I4,'L2':q**2*I8,
                 'L3':p**2*(R4*Y+I4*X),'L4':p**2*(I4*X-R4*Y),
                 'L5':R8*Y+I8*X,'L6':I8*X-R8*Y}
            lows = {('p2'+k): p**2*v for k,v in L.items()}
            lows['M7'] = q**2*I12
            T = R12*Y; S = I12*X
            for nk, K in lows.items():
                for f in (1,-1):
                    for tag, lhs in (('2T',2*T),('2S',2*S),('3T+S',3*T+S),('3T-S',3*T-S),('3S+T',3*S+T),('3S-T',3*S-T)):
                        if lhs == f*K:
                            single.setdefault((tag,nk),[]).append((p,q))
print("pair-hits:", hits, "checked:", checked)
print("single-eq families with solutions:", len(single), list(single)[:5])
