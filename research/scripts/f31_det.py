from sympy import symbols, factor, expand, Poly, rem, Matrix, sympify, I
import itertools, pickle

RA, IA, P, Qv, RB, IB = symbols('RA IA P Q RB IB', real=True)
R4, I4 = RA, IA
R8, I8 = expand(R4*R4 - I4*I4), expand(2*R4*I4)
R12, I12 = expand(R8*R4 - I8*I4), expand(R8*I4 + I8*R4)
NORM = IA**2 + RA**2 - P**2
def rednorm(f): return expand(rem(Poly(f, IA), Poly(NORM, IA)).as_expr())
PW = {1: P**2, 2: P, 3: 1}
PI = {1: (R4, I4), 2: (R8, I8), 3: (R12, I12)}
elems = {}
for j in (1,2,3):
    Rj, Ij = PI[j]
    elems[f'm{j}p'] = PW[j]*(Rj*IB + Ij*RB)
    elems[f'm{j}m'] = PW[j]*(Ij*RB - Rj*IB)
    elems[f'x{j}']  = PW[j]*Qv*Ij
elems['y'] = P**3*IB
signable = {n for n in elems if n != 'y'}
names = list(elems)

dets = set()
for eu, ev, es, ed in itertools.permutations(names, 4):
    sn = [n for n in (eu, ev, es, ed) if n in signable]
    for signs in itertools.product((1,-1), repeat=len(sn)):
        sg = dict(zip(sn, signs))
        val = lambda n: sg.get(n, 1)*elems[n]
        p1 = Poly(val(es) - val(eu) - val(ev), RB, IB)
        p2 = Poly(val(ed) - val(eu) + val(ev), RB, IB)
        M = Matrix([[p1.as_dict().get((1,0),0), p1.as_dict().get((0,1),0)],
                    [p2.as_dict().get((1,0),0), p2.as_dict().get((0,1),0)]])
        d = expand(M.det())
        if d == 0: continue           # singular classes handled separately
        dets.add(str(factor(rednorm(d))))
print(f"distinct nonzero determinant polys: {len(dets)}")

def eliminate_IA(g):
    g = rednorm(g)
    pol = Poly(g, IA)
    if pol.degree() <= 0: return expand(g)
    return expand((P**2 - RA**2)*pol.nth(1)**2 - pol.nth(0)**2)

def kill_nonvanishing(dstr):
    g0 = sympify(dstr, locals={'RA':RA,'IA':IA,'P':P,'Q':Qv})
    pieces = []
    def collect(e):
        if e.is_Mul:
            for x in e.args: collect(x)
        elif e.is_Pow: collect(e.args[0])
        elif not e.is_number: pieces.append(e)
    collect(factor(g0))
    for f in pieces:
        if f in (Qv, -Qv, P, -P, IA, -IA): continue
        g = rednorm(f) if Qv not in f.free_symbols else f
        if Qv in f.free_symbols:
            # dets are products of Q and q-free parts; a Q factor is fine (Q>0)
            fq = Poly(f, Qv)
            if fq.degree() == 1 and fq.nth(0) == 0: continue
            return False
        if g == 0: return False
        try:
            if int(expand(g.subs([(RA,1),(IA,0),(P,1)]))) % 2 == 1: continue
        except Exception: pass
        h = eliminate_IA(g)
        hf = factor(h)
        hp = []
        def coll2(e):
            if e.is_Mul:
                for x in e.args: coll2(x)
            elif e.is_Pow: coll2(e.args[0])
            elif not e.is_number: hp.append(e)
        coll2(hf)
        allok = True
        for hpp in hp:
            pol = Poly(hpp, RA, P); dd = pol.as_dict()
            ok = False
            if hpp in (RA, -RA, P, -P): ok = True
            if not ok and pol.total_degree() == 1 and dd.get((0,0),0) == 0:
                b, aa = dd.get((1,0),0), -dd.get((0,1),0)
                if (aa - b) % 2 == 1: ok = True
                elif b != 0 and abs(b) < 25 and all(abs(b) % l for l in (5,13,17) if l <= abs(b)): ok = True
                elif b == 0 and aa != 0: ok = True
            if not ok:
                degs = {sum(m) for m in dd}
                if len(degs) == 1:
                    xs = symbols('x')
                    phi = Poly(sum(c*xs**m[0] for m, c in dd.items()), xs)
                    if phi.nth(0) != 0 and not any(l*l <= abs(phi.LC()) and abs(phi.LC()) % (l*l) == 0
                                                   for l in (5,13,17,29,37,41)):
                        ok = True
            if not ok:
                for m in (16, 32, 3, 5, 7, 9, 64):
                    allnz = True
                    for ra in range(m):
                        if m % 2 == 0 and ra % 2 == 0: continue
                        for pp in range(m):
                            if m % 2 == 0 and pp % 2 == 0: continue
                            if int(hpp.subs([(RA, ra), (P, pp)])) % m == 0:
                                allnz = False; break
                        if not allnz: break
                    if allnz: ok = True; break
            if not ok: allok = False; break
        if not allok: return False
    return True

bad = [d for d in dets if not kill_nonvanishing(d)]
print(f"determinants proven nonzero: {len(dets)-len(bad)}/{len(dets)}")
for b in bad[:8]: print("UNPROVEN:", b[:130])
