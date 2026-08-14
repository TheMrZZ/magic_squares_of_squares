from sympy import symbols, sympify, factor, solve, fraction, together, cancel, I, expand, Poly, rem
import pickle
from collections import Counter

RA, IA, P, Qv = symbols('RA IA P Q', real=True)
LOC = {'RA': RA, 'IA': IA, 'P': P, 'Q': Qv}
Fclasses = pickle.load(open('f31_classes.pkl','rb'))
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
            lead = phi.LC()
            if phi.nth(0) != 0 and not any(l*l <= abs(lead) and abs(lead) % (l*l) == 0
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
    return "2var:" + "+".join(vs) if all(vs) else None

def qfree_kill(f, depth=0):
    if depth > 4: return None
    g = rednorm(f)
    if g == 0: return "TAUT"
    try:
        if int(expand(g.subs([(RA,1),(IA,0),(P,1)]))) % 2 == 1: return "mod2"
    except Exception: pass
    if g in (IA, -IA, P, -P): return "pos"
    r = kill_2var(eliminate_IA(g))
    if r: return r
    return None

def kill_root(root):
    root = cancel(together(root))
    N, D = fraction(root)
    N, D = expand(rednorm(N)), expand(rednorm(D))
    Np = expand(N.subs([(RA, I*IA), (P, 0)]))
    Dp = expand(D.subs([(RA, I*IA), (P, 0)]))
    if Np == 0 and Dp != 0: return "padic"
    try:
        ok = False
        for ra in (1,3,5,7):
            for pp in (1,3,5,7):
                if int(expand((N - D).subs([(IA, 0), (RA, ra), (P, pp)]))) % 8 == 0:
                    ok = True; break
            if ok: break
        if not ok: return "mod8"
    except Exception: pass
    try:
        if int(expand(N.subs([(RA,1),(IA,0),(P,1)]))) % 2 == 0 and \
           int(expand(D.subs([(RA,1),(IA,0),(P,1)]))) % 2 == 1: return "parity"
    except Exception: pass
    return None

killed = taut = flagged = singular = 0
flagged_list, taut_list, sing_list = [], [], []
n = 0
for Fs, leaves in Fclasses.items():
    n += 1
    if n % 250 == 0: print(f"...{n}/{len(Fclasses)} killed={killed} taut={taut} flag={flagged} sing={singular}", flush=True)
    if isinstance(Fs, tuple):
        singular += 1; sing_list.append((Fs, leaves[:1])); continue
    F = sympify(Fs, locals=LOC)
    pieces = []
    def collect(e):
        if e.is_Mul:
            for x in e.args: collect(x)
        elif e.is_Pow: collect(e.args[0])
        elif not e.is_number: pieces.append(e)
    collect(factor(F))
    verdicts = []
    is_taut = False
    for f in pieces:
        if Qv not in f.free_symbols:
            r = qfree_kill(f)
            if r == "TAUT": is_taut = True
            verdicts.append(r)
        else:
            try: roots = solve(f, Qv)
            except Exception: verdicts.append(None); continue
            if not roots: verdicts.append("noroot"); continue
            rs = [kill_root(r) for r in roots]
            verdicts.append("+".join(sorted(set(x for x in rs if x))) if all(rs) else None)
    if is_taut:
        taut += 1; taut_list.append((Fs, leaves[:2]))
    elif all(verdicts):
        killed += 1
    else:
        flagged += 1; flagged_list.append((Fs, verdicts))
print(f"FINAL: killed={killed} taut={taut} flagged={flagged} singular={singular} / {len(Fclasses)}")
pickle.dump((flagged_list, taut_list, sing_list), open('f31_results.pkl','wb'))
