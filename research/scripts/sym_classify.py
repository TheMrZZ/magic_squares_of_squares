"""Classify the 216 relations by two-sided residue structure:
 - BOTH-NONZERO: both first-order residues nonzero -> coupled divisibility
   conditions (q | h AND p | g) -> candidate two-sided pinch closure.
 - ONE-ZERO: one residue identically 0 -> needs mod-pi^2 on that side.
 - BOTH-ZERO: deep (16 relations).
Also extract the integer core of each nonzero condition by stripping
unit factors (p, q, 2, pibar^k, chibar^k powers)."""
import pickle
from sympy import factor, expand, Symbol, Mul, Pow, I as iu
data = pickle.load(open('sym22_residues.pkl','rb'))
from collections import Counter
cls = Counter()
examples = {}
for rel, gq, hp in data:
    g0 = expand(gq) == 0; h0 = expand(hp) == 0
    key = ('BOTH-ZERO' if (g0 and h0) else 'GQ-ZERO' if g0 else 'HP-ZERO' if h0 else 'BOTH-NONZERO')
    cls[key] += 1
    examples.setdefault(key, []).append((rel, gq, hp))
print(dict(cls))
# For BOTH-NONZERO: list the distinct condition pairs
pairs = Counter()
for rel, gq, hp in examples.get('BOTH-NONZERO', []):
    pairs[(str(factor(gq)), str(factor(hp)))] += 1
print("distinct BOTH-NONZERO condition pairs:", len(pairs))
for k, v in list(pairs.most_common(12)): print(v, k)
pickle.dump(examples, open('sym22_classes.pkl','wb'))
