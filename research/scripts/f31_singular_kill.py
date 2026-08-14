from sympy import symbols, sympify, factor, expand, Poly, rem, solve, I, cancel, together, fraction
import pickle
from collections import Counter

RA, IA, P, Qv, RB, IB = symbols('RA IA P Q RB IB', real=True)
NORM = IA**2 + RA**2 - P**2
def rednorm(f): return expand(rem(Poly(f, IA), Poly(NORM, IA)).as_expr())
def eliminate_IA(g):
    g = rednorm(g)
    pol = Poly(g, IA)
    if pol.degree() <= 0: return expand(g)
    return expand((P**2 - RA**2)*pol.nth(1)**2 - pol.nth(0)**2)

def kill_2var(h):
    h = expand(h)
    if h == 0: return None
    pieces = []
    def collect(e):
        if e.is_Mul:
            for x in e.args: collect(x)
        elif e.is_Pow: collect(e.args[0])
        elif not e.is_number: pieces.append(e)
    collect(factor(h))
    vs = []
    for f in pieces:
        pol = Poly(f, RA, P); d = pol.as_dict()
        if pol.total_degree() == 1 and d.get((0,0),0) == 0:
            b, aa = d.get((1,0),0), -d.get((0,1),0)
            if (aa - b) % 2 == 1: vs.append("par"); continue
            if b != 0 and abs(b) < 25 and all(abs(b) % l for l in (5,13,17) if l <= abs(b)):
                vs.append("p2b"); continue
            if b == 0 and aa != 0: vs.append("Pnz"); continue
        if f in (RA, -RA): vs.append("RAodd"); continue
        if f in (P, -P): vs.append("Ppos"); continue
        degs = {sum(m) for m in d}
        if len(degs) == 1:
            xs = symbols('x')
            phi = Poly(sum(c*xs**m[0] for m, c in d.items()), xs)
            if phi.nth(0) != 0 and not any(l*l <= abs(phi.LC()) and abs(phi.LC()) % (l*l) == 0
                                           for l in (5,13,17,29,37,41)):
                vs.append("homrr"); continue
        killed = None
        for m in (16, 32, 3, 5, 7, 9, 64):
            allnz = True
            for ra in range(m):
                if m % 2 == 0 and ra % 2 == 0: continue
                for pp in range(m):
                    if m % 2 == 0 and pp % 2 == 0: continue
                    if int(f.subs([(RA, ra), (P, pp)])) % m == 0:
                        allnz = False; break
                if not allnz: break
            if allnz: killed = f"mod{m}"; break
        vs.append(killed)
    return "+".join(vs) if all(vs) else None

def kill_relation(Rl):
    """Rl(RA,IA,P,Q) = 0 must be impossible.  Strip Q factors, then treat.
    Q may appear inside; handle by solving for Q if present."""
    Rl = expand(Rl)
    if Rl == 0: return None
    pieces = []
    def collect(e):
        if e.is_Mul:
            for x in e.args: collect(x)
        elif e.is_Pow: collect(e.args[0])
        elif not e.is_number: pieces.append(e)
    collect(factor(Rl))
    vs = []
    for f in pieces:
        if f == Qv or f == -Qv: vs.append("Qpos"); continue
        if Qv not in f.free_symbols:
            g = rednorm(f)
            if g == 0: vs.append(None); continue
            try:
                if int(expand(g.subs([(RA,1),(IA,0),(P,1)]))) % 2 == 1: vs.append("mod2"); continue
            except Exception: pass
            if g in (IA, -IA, P, -P): vs.append("pos"); continue
            r = kill_2var(eliminate_IA(g))
            vs.append(r); continue
        # solve for Q
        try: roots = solve(f, Qv)
        except Exception: vs.append(None); continue
        if not roots: vs.append("noroot"); continue
        rvs = []
        for root in roots:
            root = cancel(together(root))
            N, D = fraction(root); N, D = expand(rednorm(N)), expand(rednorm(D))
            if expand(N.subs([(RA, I*IA), (P, 0)])) == 0 and expand(D.subs([(RA, I*IA), (P, 0)])) != 0:
                rvs.append("padic"); continue
            try:
                ok = False
                for ra in (1,3,5,7):
                    for pp in (1,3,5,7):
                        if int(expand((N-D).subs([(IA,0),(RA,ra),(P,pp)]))) % 8 == 0:
                            ok = True; break
                    if ok: break
                if not ok: rvs.append("mod8"); continue
            except Exception: pass
            try:
                if int(expand(N.subs([(RA,1),(IA,0),(P,1)]))) % 2 == 0 and \
                   int(expand(D.subs([(RA,1),(IA,0),(P,1)]))) % 2 == 1:
                    rvs.append("parity"); continue
            except Exception: pass
            rvs.append(None)
        vs.append("+".join(sorted(set(x for x in rvs if x))) if all(rvs) else None)
    return "+".join(v for v in vs if v) if all(vs) else None

pure_const, rank1 = pickle.load(open('f31_singular_split.pkl','rb'))
dead = flagged = 0
flag_examples = []
n = 0
for E1, E2, leaves in rank1:
    n += 1
    if n % 200 == 0: print(f"...{n}/{len(rank1)} dead={dead} flag={flagged}", flush=True)
    # find the constant relation: if one Ei constant use it; else cross-eliminate
    c1 = {RB, IB} & E1.free_symbols
    c2 = {RB, IB} & E2.free_symbols
    if not c1: R = E1
    elif not c2: R = E2
    else:
        p1, p2 = Poly(E1, RB, IB), Poly(E2, RB, IB)
        a1, b1 = p1.as_dict().get((1,0),0), p1.as_dict().get((0,1),0)
        a2, b2 = p2.as_dict().get((1,0),0), p2.as_dict().get((0,1),0)
        if a1 != 0 or a2 != 0:
            R = expand(a2*E1 - a1*E2)
        else:
            R = expand(b2*E1 - b1*E2)
        # R should be RB,IB-free after rednorm of coefficients; verify
        if {RB, IB} & R.free_symbols:
            # coefficients only proportional modulo NORM: reduce
            R = expand(rednorm(R))
            if {RB, IB} & R.free_symbols:
                pol = Poly(R, RB, IB)
                if all(rednorm(c) == 0 for (m, c) in pol.as_dict().items() if sum(m) > 0):
                    R = pol.as_dict().get((0,0), 0)
                else:
                    flagged += 1; flag_examples.append(("NONPROP", E1, E2)); continue
    r = kill_relation(R)
    if r: dead += 1
    else:
        flagged += 1
        if len(flag_examples) < 12: flag_examples.append((factor(rednorm(R)) if not ({RB,IB} & sympify(R).free_symbols) else R, leaves[:1]))
print(f"singular rank-1: dead={dead} flagged={flagged} / {len(rank1)+len(pure_const)}")
import pickle as pk
pk.dump(flag_examples, open('f31_sing_flagged.pkl','wb'))
for fe in flag_examples[:10]:
    print("FLAG:", str(fe)[:160])
