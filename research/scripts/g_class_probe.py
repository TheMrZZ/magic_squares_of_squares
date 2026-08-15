import itertools
def gpow(z, n):
    r = (1, 0)
    for _ in range(n):
        r = (r[0]*z[0] - r[1]*z[1], r[0]*z[1] + r[1]*z[0])
    return r
def gmul(a,b): return (a[0]*b[0]-a[1]*b[1], a[0]*b[1]+a[1]*b[0])
def reps(p):
    return [(a,b) for a in range(1,p) for b in range(1,p) if a*a+b*b == p]
import math
for (p,q) in [(5,13),(13,5),(5,17),(17,5)]:
    A,B = reps(p)[0]; C,D = reps(q)[0]
    pi4 = gpow((A,B),4); pi8 = gpow((A,B),8); pi12 = gpow((A,B),12)
    chi4 = gpow((C,D),4); chi4b = (chi4[0],-chi4[1])
    R4,I4 = pi4; R8,I8 = pi8; R12,I12 = pi12
    X,Y = chi4
    classes = {
      'M0_p6Y': p**6*Y,
      'M1_p4q2I4': p**4*q**2*I4,
      'M2_p4_44': p**4*gmul(pi4,chi4)[1],
      'M3_p4_44b': p**4*gmul(pi4,chi4b)[1],
      'M4_p2q2I8': p**2*q**2*I8,
      'M5_p2_84': p**2*gmul(pi8,chi4)[1],
      'M6_p2_84b': p**2*gmul(pi8,chi4b)[1],
      'M7_q2I12': q**2*I12,
      'M8_124': gmul(pi12,chi4)[1],
      'M9_124b': gmul(pi12,chi4b)[1],
    }
    # brute-force D(p^3 q): e = p^3*q (s=1)
    e = p**3*q
    Dset = set()
    for x in range(1, e):
        y2 = e*e - x*x
        y = math.isqrt(y2)
        if y > 0 and y*y == y2:
            Dset.add(abs(2*x*y))
    predicted = set(abs(v) for v in classes.values())
    print(p, q, "D-values:", len(Dset), "predicted:", len(predicted),
          "match:", Dset == predicted,
          "missing:", sorted(Dset - predicted)[:3], "extra:", sorted(predicted - Dset)[:3])
