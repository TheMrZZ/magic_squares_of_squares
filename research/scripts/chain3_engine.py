"""3-level uniform (a,1) engine with exact orbit substitution throughout."""
from sympy import symbols, expand, factor, Poly, together, fraction, cancel, I as om
import itertools, pickle
from collections import Counter

RB, IB, Q = symbols('RB IB Q', positive=True)
S = symbols('S', positive=True)
x, y = symbols('x y')          # level-1 orbit: pi+^{4j1}, pi-^{4j1}
X1, Y1 = symbols('X1 Y1')      # chain-1 orbit: pi±^{4D1}
X2, Y2 = symbols('X2 Y2')      # chain-2 orbit: pi±^{4D2}
w, w1, w2 = symbols('w w1 w2') # (pi+pi-)^{2j1}, ^{2D1}, ^{2D2}

# components via exact orbit
RL = (x + y)/2;        IL = (x - y)/(2*om);        NLu = w
RM = (x*X1 + y*Y1)/2;  IM = (x*X1 - y*Y1)/(2*om)
RH = (x*X1*X2 + y*Y1*Y2)/2; IH = (x*X1*X2 - y*Y1*Y2)/(2*om)
S1 = S*w1*w2*0 + S*w1**2*0  # placeholder; powers of p via N's:
# S_3 = S ; S_2 = S * N2 = S*w2^2/(X2*Y2)*... simpler: N2 = w2^2/(X2 Y2)?? no:
# N(chain-2) = p^{2 D2} = (pi+ pi-)^{2 D2} = w2 exactly. So S_2 = S*w2, S_1 = S*w2*w1.
S3, S2v, S1v = S, S*w2, S*w2*w1
Mv = S*w2*w1*w   # = S * N1chain*N2chain*Nlevel1 = p^{2a}... consistent

elems = {
 'm1p': S1v*(RL*IB + IL*RB), 'm1m': S1v*(IL*RB - RL*IB), 'x1': S1v*Q*IL,
 'm2p': S2v*(RM*IB + IM*RB), 'm2m': S2v*(IM*RB - RM*IB), 'x2': S2v*Q*IM,
 'm3p': S3*(RH*IB + IH*RB),  'm3m': S3*(IH*RB - RH*IB),  'x3': S3*Q*IH,
 'y': Mv*IB,
}
names = list(elems)
def lvl(n): return {'1':1,'2':2,'3':3}.get(n[1], 0) if n != 'y' else 0

def redw(f):
    for (var, val) in ((w, x*y), (w1, X1*Y1), (w2, X2*Y2)):
        p = Poly(f, var)
        nf = 0
        for (k,), c in p.as_dict().items():
            q2, r = divmod(k, 2)
            nf += c * val**q2 * var**r
        f = expand(nf)
    return f

def analyze(g):
    g = redw(expand(g))
    if g == 0: return ("TAUT", None)
    pol = Poly(g, y, Y1, Y2, w, w1, w2)
    monos = pol.as_dict()
    # weights: y:4j, Y1:4d1, Y2:4d2, w:2j, w1:2d1, w2:2d2
    wf = {k: (4*k[0]+2*k[3], 4*k[1]+2*k[4], 4*k[2]+2*k[5]) for k in monos}
    minima = set()
    for j in (1,2,3,5,8):
        for d1 in (1,2,3,5,8):
            for d2 in (1,2,3,5,8):
                wts = {k: wf[k][0]*j + wf[k][1]*d1 + wf[k][2]*d2 for k in monos}
                mw = min(wts.values())
                minima.add(frozenset(k for k in monos if wts[k] == mw))
    verdicts = []
    for pat in minima:
        lead = expand(sum(monos[k] for k in pat))
        if lead == 0: return ("CANCELS", pat)
        pl = Poly(lead, x, X1, X2)
        if len(pl.as_dict()) == 1:
            verdicts.append("unit")
        else:
            verdicts.append("locus:" + str(sorted(pl.as_dict().items()))[:80])
    loci = [v for v in verdicts if v.startswith("locus")]
    return (("LOCUS", tuple(sorted(set(loci)))) if loci else ("DEAD", None))

results = Counter(); loci_cat = Counter(); cancels = []
count = 0
for eu, ev, es, ed in itertools.permutations(names, 4):
    levels = {lvl(n) for n in (eu, ev, es, ed)} - {0}
    if levels != {1, 2, 3}: continue
    sn = [n for n in (eu, ev, es, ed) if n != 'y']
    for signs in itertools.product((1,-1), repeat=len(sn)):
        sg = dict(zip(sn, signs))
        val = lambda n: sg.get(n, 1)*elems[n]
        p1 = Poly(together(val(es) - val(eu) - val(ev)), RB, IB)
        p2 = Poly(together(val(ed) - val(eu) + val(ev)), RB, IB)
        a1,b1,c1 = [p1.as_dict().get(k,0) for k in ((1,0),(0,1),(0,0))]
        a2,b2,c2 = [p2.as_dict().get(k,0) for k in ((1,0),(0,1),(0,0))]
        det = expand(a1*b2 - a2*b1)
        count += 1
        if count % 500 == 0:
            print(f"...{count} {dict(results)}", flush=True)
            pickle.dump((cancels, loci_cat), open('chain3_results.pkl','wb'))
        if det == 0:
            if a1 != 0 or a2 != 0: Rl = expand(a2*(-c1) - a1*(-c2))
            else: Rl = expand(b2*(-c1) - b1*(-c2))
            r, info = analyze(Rl)
            results["S-" + r] += 1
            if r == "CANCELS": cancels.append((eu,ev,es,ed,signs,'SING'))
            if r == "LOCUS": loci_cat[info] += 1
            continue
        RBv = cancel((-c1*b2 + c2*b1)/det); IBv = cancel((a1*(-c2) - a2*(-c1))/det)
        num, _ = fraction(together(RBv**2 + IBv**2 - Q**2))
        r, info = analyze(num)
        results[r] += 1
        if r == "CANCELS": cancels.append((eu,ev,es,ed,signs,'REG'))
        if r == "LOCUS": loci_cat[info] += 1
print("FINAL:", dict(results), f"total={count}")
pickle.dump((cancels, loci_cat), open('chain3_results.pkl','wb'))
print(f"distinct locus signatures: {len(loci_cat)}")
for k, c in loci_cat.most_common(8): print(f"[{c}] {str(k)[:160]}")
