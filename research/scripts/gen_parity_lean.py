import itertools
from sympy import symbols, I as iu, expand, im as sim, Poly, Integer

Asym, Bsym, Csym, Dsym, a, b, c, d = symbols('A B C D a b c d')
R = Asym**4 - 6*Asym**2*Bsym**2 + Bsym**4
I_ = 4*Asym*Bsym*(Asym**2 - Bsym**2)
X = Csym**4 - 6*Csym**2*Dsym**2 + Dsym**4
Y = 4*Csym*Dsym*(Csym**2 - Dsym**2)
p2 = Asym**2 + Bsym**2
q2 = Csym**2 + Dsym**2

elems = []
for aa in range(3):
    for bb in range(3):
        if (aa, bb) == (0, 0): continue
        if aa == 0 or bb == 0: elems.append((aa, bb, 1))
        else: elems.append((aa, bb, 1)); elems.append((aa, bb, -1))
Rs, Is, Xs, Ys, ps, qs = symbols('Rv Iv Xv Yv pv qv')
P1 = Rs + iu*Is; C1 = Xs + iu*Ys
def elem_expr(e):
    aa, bb, sg = e
    z = 1
    if aa: z *= P1**aa
    if bb:
        cc = C1**bb
        if sg < 0: cc = cc.conjugate()
        z *= cc
    return ps**(4-2*aa) * qs**(4-2*bb) * expand(sim(expand(z)))
def pexp(e): return 4 - 2*e[0]
def qexp(e): return 4 - 2*e[1]
def lone(rel):
    pss = [pexp(x) for x in rel]; qss = [qexp(x) for x in rel]
    return pss.count(min(pss)) == 1 or qss.count(min(qss)) == 1
rels = set()
for combo in itertools.permutations(range(12), 4):
    eu, ev, es, ed = [elems[k] for k in combo]
    if lone([es,eu,ev]) or lone([ed,eu,ev]): continue
    for sv, ss, sd in itertools.product((1,-1), repeat=3):
        for trip, sgns in (((es,eu,ev),(ss,-1,-sv)), ((ed,eu,ev),(sd,-1,sv))):
            key = frozenset(zip(trip, sgns))
            key2 = frozenset((t,-g) for t,g in key)
            rels.add(min(key, key2, key=lambda fs: sorted(str(x) for x in fs)))
rels = sorted(rels, key=lambda fs: sorted(str(x) for x in fs))
print(f"relations: {len(rels)}", flush=True)

def to_lean(e):
    return str(expand(e)).replace('**', '^')

CASES = [((2*a, 2*b+1), (2*c, 2*d+1)), ((2*a, 2*b+1), (2*c+1, 2*d)),
         ((2*a+1, 2*b), (2*c, 2*d+1)), ((2*a+1, 2*b), (2*c+1, 2*d))]

out = ["""/-
AUTO-GENERATED parity certificates for residual (2,2) relations.
Each theorem: the relation value is odd (explicit witness per parity
case, verified by `ring`), hence nonzero.  Generator:
research/scripts/gen_parity_lean.py.
-/
import Mathlib
set_option linter.style.longLine false
set_option maxHeartbeats 1600000
"""]
count = 0
def parity_ok(rel):
    for pa, pb in ((0,1),(1,0)):
        for pc, pd in ((0,1),(1,0)):
            Rv = pa**4 - 6*pa**2*pb**2 + pb**4
            Iv = 4*pa*pb*(pa**2-pb**2)
            Xv = pc**4 - 6*pc**2*pd**2 + pd**4
            Yv = 4*pc*pd*(pc**2-pd**2)
            pv = pa**2+pb**2; qv = pc**2+pd**2
            tot = 0
            for e, g in rel:
                aa, bb, sg = e
                z = complex(Rv, Iv)**aa * (complex(Xv, Yv) if sg>0 else complex(Xv,-Yv))**bb
                tot += g * pv**(4-2*aa) * qv**(4-2*bb) * round(z.imag)
            if int(tot) % 2 == 0: return False
    return True

for rel in rels:
    if not parity_ok(rel): continue
    T = expand(sum(g*elem_expr(e) for e, g in rel))
    T = expand(T.subs({ps**4: p2**2, ps**2: p2, qs**4: q2**2, qs**2: q2}))
    T = expand(T.subs({Rs: R, Is: I_, Xs: X, Ys: Y}))
    wits = []
    good = True
    for (sa, sc) in CASES:
        Ts = expand(T.subs({Asym: sa[0], Bsym: sa[1], Csym: sc[0], Dsym: sc[1]}))
        W = expand((Ts - 1) / 2)
        if any(co != int(co) for co in Poly(W, a, b, c, d).coeffs()): good = False; break
        wits.append(W)
    if not good: continue
    count += 1
    if count > 6: break
    tl = to_lean(T)
    thm = f"""theorem rel_parity_{count} (A B C D : ℤ)
    (hAB : (Even A ∧ Odd B) ∨ (Odd A ∧ Even B))
    (hCD : (Even C ∧ Odd D) ∨ (Odd C ∧ Even D)) :
    ({tl}) ≠ 0 := by
  have hodd : Odd ({tl}) := by
    rcases hAB with ⟨⟨a', rfl⟩, ⟨b', rfl⟩⟩ | ⟨⟨a', rfl⟩, ⟨b', rfl⟩⟩ <;>
      rcases hCD with ⟨⟨c', rfl⟩, ⟨d', rfl⟩⟩ | ⟨⟨c', rfl⟩, ⟨d', rfl⟩⟩
"""
    # branch order after the double rcases: (Ev,Ev),(Ev,Odd),(Odd,Ev),(Odd,Odd)
    # our CASES list matches: (A even,B odd)&(C even,D odd) etc.
    subsmap = [
        ("a'", "b'", "c'", "d'"),
    ]
    for W in wits:
        Wl = to_lean(W).replace('a','a\'').replace('b','b\'').replace('c','c\'').replace('d','d\'')
        thm += f"    · exact ⟨{Wl}, by push_cast; ring⟩\n"
    thm += "  intro h0; rw [h0] at hodd; simp [Int.not_odd_iff_even] at hodd\n"
    out.append(thm)
print(f"template theorems: {min(count,6)}")
open('ParityRelations_draft.lean','w').write("\n".join(out))
