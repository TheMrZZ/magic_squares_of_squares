"""Enriched uniform (a,1) engine: two levels linked by a chain variable.

Primitives: S (=S_H), NL, ND positive; RL, IL, RD, ID circle components;
Q, RB, IB.  Derived: N_H = NL*ND, S_L = S*ND, M = S*NL*ND,
R_H = RL*RD - IL*ID, I_H = RL*ID + IL*RD.
Constraints: RL^2+IL^2 = NL^2, RD^2+ID^2 = ND^2, RB^2+IB^2 = Q^2,
RL,RD,RB odd; IL,ID,IB = 0 mod 8; S,NL,ND,Q = 1 mod 8 (p- resp. q-powers);
p-adic: NL = ND = 0, M = 0 mod p; S = 0 mod p OR S = 1 (top level j'=a);
p does not divide RL,IL,RD,ID,RB,IB,Q or the element cores.
"""
from sympy import symbols, expand, factor, Poly, fraction, together, cancel, solve, I as ii, sympify
import itertools, pickle
from collections import Counter

RB, IB, Q = symbols('RB IB Q', positive=True)
S, NL, ND = symbols('S NL ND', positive=True)
RL, IL, RD, ID = symbols('RL IL RD ID', real=True)
RH = RL*RD - IL*ID
IH = RL*ID + IL*RD
M  = S*NL*ND
SL = S*ND

elems = {
 'mLp': SL*(RL*IB + IL*RB), 'mLm': SL*(IL*RB - RL*IB), 'xL': SL*Q*IL,
 'mHp': S*(RH*IB + IH*RB),  'mHm': S*(IH*RB - RH*IB),  'xH': S*Q*IH,
 'y': M*IB,
}
names = list(elems)

def redI(f):
    """reduce IL^2 -> NL^2-RL^2, ID^2 -> ND^2-RD^2."""
    f = expand(f)
    for (Ivar, Nvar, Rvar) in ((IL, NL, RL), (ID, ND, RD)):
        p = Poly(f, Ivar)
        nf = 0
        for (k,), c in p.as_dict().items():
            q, r = divmod(k, 2)
            nf += c*(Nvar**2 - Rvar**2)**q * Ivar**r
        f = expand(nf)
    return f

def parity2(e):
    sub = [(RL,1),(RD,1),(RB,1),(IL,0),(ID,0),(IB,0),(S,1),(NL,1),(ND,1),(Q,1)]
    try: return int(expand(e.subs(sub))) % 2
    except Exception: return None

def mod16_kill(e):
    """e != 0 mod 16 for all: R's odd mod 16, I's in {0,8}, powers = 1 mod 8 -> {1,9}."""
    Rvals = (1,3,5,7,9,11,13,15); Ivals = (0,8); Pvals = (1,9)
    for rl in Rvals:
        for rd in (1,3,5,7):
            for il in Ivals:
                for idd in Ivals:
                    for s in Pvals:
                        v = e.subs([(RL,rl),(RD,rd),(RB,1),(IL,il),(ID,idd),(IB,0),
                                    (S,s),(NL,1),(ND,1),(Q,1)])
                        try:
                            if int(expand(v)) % 16 == 0: return False
                        except Exception: return False
    return True

def padic_kill(e):
    """e = 0 mod p impossible in both S-patterns => contradiction if e must be 0.
       Returns True if e != 0 mod p in ALL patterns (then relation e=0 dead)."""
    for stop in (0, 1):   # S = 0 mod p (j' < a)  or  S = 1 (j' = a)
        sub = [(NL, 0), (ND, 0), (S, stop), (RL, ii*IL), (RD, ii*ID)]
        v = expand(e.subs(sub))
        if v == 0: return False
    return True

def kill_factor(f):
    f = redI(f)
    if f == 0: return None
    pol = Poly(f, RL, RD, RB, IL, ID, IB, S, NL, ND, Q)
    monos = pol.as_dict()
    if all(all(m[i] == 0 for i in range(3)) for m in monos):  # no R's -> positives only? I's also positive ✓
        cs = list(monos.values())
        if all(c > 0 for c in cs) or all(c < 0 for c in cs): return "pos"
    if parity2(f) == 1: return "mod2"
    if padic_kill(f): return "padic"
    if mod16_kill(f): return "mod16"
    return None

def process(Fnum):
    F = redI(Fnum)
    if F == 0: return "TAUT"
    pieces = []
    def collect(e):
        if e.is_Mul:
            for x in e.args: collect(x)
        elif e.is_Pow: collect(e.args[0])
        elif not e.is_number: pieces.append(e)
    collect(factor(F))
    vs = [kill_factor(f) for f in pieces]
    return "+".join(vs) if all(vs) else None

if __name__ == '__main__':
    results = Counter(); flags = []; tauts = []
    count = 0
    for eu, ev, es, ed in itertools.permutations(names, 4):
        lv = {n[-2] if n != 'y' else None for n in (eu, ev, es, ed)}
        if not ({'L','H'} <= {n[1] if n != 'y' else '' for n in (eu,ev,es,ed)}):
            continue   # must use both levels (single-level handled by Theorem E shape)
        sn = [n for n in (eu, ev, es, ed) if n != 'y']
        for signs in itertools.product((1,-1), repeat=len(sn)):
            sg = dict(zip(sn, signs))
            val = lambda n: sg.get(n, 1)*elems[n]
            p1 = Poly(val(es) - val(eu) - val(ev), RB, IB)
            p2 = Poly(val(ed) - val(eu) + val(ev), RB, IB)
            a1,b1,c1 = p1.as_dict().get((1,0),0), p1.as_dict().get((0,1),0), p1.as_dict().get((0,0),0)
            a2,b2,c2 = p2.as_dict().get((1,0),0), p2.as_dict().get((0,1),0), p2.as_dict().get((0,0),0)
            det = expand(a1*b2 - a2*b1)
            count += 1
            if count % 2000 == 0: print(f"...{count} {dict(results)}", flush=True)
            if det == 0:
                if a1 != 0 or a2 != 0: Rl = expand(a2*(-c1) - a1*(-c2))
                else: Rl = expand(b2*(-c1) - b1*(-c2))
                r = process(Rl)
                if r == "TAUT": results['sing-taut'] += 1; tauts.append((eu,ev,es,ed,signs,'SING'))
                elif r: results['sing-killed'] += 1
                else: results['sing-flag'] += 1; flags.append(('SING',eu,ev,es,ed,signs,str(factor(redI(Rl)))[:200]))
                continue
            RBv = cancel((-c1*b2 + c2*b1)/det)
            IBv = cancel((a1*(-c2) - a2*(-c1))/det)
            num, den = fraction(together(RBv**2 + IBv**2 - Q**2))
            r = process(num)
            if r == "TAUT": results['taut'] += 1; tauts.append((eu,ev,es,ed,signs,'REG'))
            elif r: results['killed'] += 1
            else: results['flag'] += 1; flags.append(('REG',eu,ev,es,ed,signs,str(factor(redI(num)))[:200]))
    print("FINAL:", dict(results), f"total={count}")
    pickle.dump((flags, tauts), open('chain_flags.pkl','wb'))
    ded = Counter(x[6] for x in flags)
    print(f"distinct flagged relations: {len(ded)}")
    for k, c in ded.most_common(6): print(f"[{c}] {k[:150]}")
