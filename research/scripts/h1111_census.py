"""Four-prime census: e = s p q r t. |D| = (3^4-1)/2 = 40. Grading kills."""
import itertools
elems = []
for c in itertools.product(range(2), repeat=4):
    if c == (0,0,0,0): continue
    first = next(i for i,x in enumerate(c) if x)
    signopts = [[1]]*4
    for i in range(4):
        if c[i] and i != first: signopts[i] = [1,-1]
    for sg in itertools.product(*signopts):
        elems.append((c, sg))
print("D size:", len(elems), flush=True)
def lone(rel):
    for i in range(4):
        gs = [2 - 2*x[0][i] for x in rel]
        if gs.count(min(gs)) == 1: return True
    return False
total = killed = resid = 0
n = len(elems)
for combo in itertools.permutations(range(n), 4):
    eu, ev, es, ed = [elems[k] for k in combo]
    total += 8
    if lone([es,eu,ev]) or lone([ed,eu,ev]): killed += 8
    else: resid += 8
print(f"leaves {total}, grading-killed {killed} ({100*killed/total:.1f}%), residual {resid}")
