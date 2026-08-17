/- Generated: nonvanishing of the certifier's minimal-layer forms
   at grid 2_2. Uniform statements: eval formData r s 1 1 ≠ 0. -/
import MsqLean.CertKit
import MsqLean.PolyRefl

set_option maxRecDepth 100000
set_option maxHeartbeats 2000000

namespace CertForms
open CertKit

def f_2_2_0 : PolyRefl.SPoly := [PolyRefl.mkT 0 28 0 0 (-2187), PolyRefl.mkT 2 26 0 0 (61398), PolyRefl.mkT 4 24 0 0 (-744201), PolyRefl.mkT 6 22 0 0 (5109436), PolyRefl.mkT 8 20 0 0 (-21993987), PolyRefl.mkT 10 18 0 0 (62251530), PolyRefl.mkT 12 16 0 0 (-114565673), PolyRefl.mkT 14 14 0 0 (112931784), PolyRefl.mkT 16 12 0 0 (-11181705), PolyRefl.mkT 18 10 0 0 (-35570294), PolyRefl.mkT 20 8 0 0 (19715997), PolyRefl.mkT 22 6 0 0 (-4566852), PolyRefl.mkT 24 4 0 0 (525591), PolyRefl.mkT 26 2 0 0 (-27306), PolyRefl.mkT 28 0 0 0 (405)]
def f_2_2_0_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 27 0 0 (-2187), PolyRefl.mkT 2 25 0 0 (61398), PolyRefl.mkT 4 23 0 0 (-744201), PolyRefl.mkT 6 21 0 0 (5109436), PolyRefl.mkT 8 19 0 0 (-21993987), PolyRefl.mkT 10 17 0 0 (62251530), PolyRefl.mkT 12 15 0 0 (-114565673), PolyRefl.mkT 14 13 0 0 (112931784), PolyRefl.mkT 16 11 0 0 (-11181705), PolyRefl.mkT 18 9 0 0 (-35570294), PolyRefl.mkT 20 7 0 0 (19715997), PolyRefl.mkT 22 5 0 0 (-4566852), PolyRefl.mkT 24 3 0 0 (525591), PolyRefl.mkT 26 1 0 0 (-27306)]
lemma form_2_2_0 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_2_2_0 r s 1 1 ≠ 0 :=
  parity_gate_eval 28 (405) f_2_2_0 f_2_2_0_rest (by decide +kernel) (by decide +kernel) hr hs

def f_2_2_1 : PolyRefl.SPoly := [PolyRefl.mkT 0 20 0 0 (693), PolyRefl.mkT 2 18 0 0 (-18774), PolyRefl.mkT 4 16 0 0 (186601), PolyRefl.mkT 6 14 0 0 (-845000), PolyRefl.mkT 8 12 0 0 (1737050), PolyRefl.mkT 10 10 0 0 (-1411076), PolyRefl.mkT 12 8 0 0 (490442), PolyRefl.mkT 14 6 0 0 (-46664), PolyRefl.mkT 16 4 0 0 (-13775), PolyRefl.mkT 18 2 0 0 (3690), PolyRefl.mkT 20 0 0 0 (-243)]
def f_2_2_1_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 19 0 0 (693), PolyRefl.mkT 2 17 0 0 (-18774), PolyRefl.mkT 4 15 0 0 (186601), PolyRefl.mkT 6 13 0 0 (-845000), PolyRefl.mkT 8 11 0 0 (1737050), PolyRefl.mkT 10 9 0 0 (-1411076), PolyRefl.mkT 12 7 0 0 (490442), PolyRefl.mkT 14 5 0 0 (-46664), PolyRefl.mkT 16 3 0 0 (-13775), PolyRefl.mkT 18 1 0 0 (3690)]
lemma form_2_2_1 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_2_2_1 r s 1 1 ≠ 0 :=
  parity_gate_eval 20 (-243) f_2_2_1 f_2_2_1_rest (by decide +kernel) (by decide +kernel) hr hs

def f_2_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 28 0 0 (405), PolyRefl.mkT 2 26 0 0 (-16938), PolyRefl.mkT 4 24 0 0 (256023), PolyRefl.mkT 6 22 0 0 (-1820996), PolyRefl.mkT 8 20 0 0 (5666973), PolyRefl.mkT 10 18 0 0 (849930), PolyRefl.mkT 12 16 0 0 (-51572873), PolyRefl.mkT 14 14 0 0 (112931784), PolyRefl.mkT 16 12 0 0 (-74174505), PolyRefl.mkT 18 10 0 0 (25831306), PolyRefl.mkT 20 8 0 0 (-7944963), PolyRefl.mkT 22 6 0 0 (2363580), PolyRefl.mkT 24 4 0 0 (-474633), PolyRefl.mkT 26 2 0 0 (51030), PolyRefl.mkT 28 0 0 0 (-2187)]
def f_2_2_2_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 27 0 0 (405), PolyRefl.mkT 2 25 0 0 (-16938), PolyRefl.mkT 4 23 0 0 (256023), PolyRefl.mkT 6 21 0 0 (-1820996), PolyRefl.mkT 8 19 0 0 (5666973), PolyRefl.mkT 10 17 0 0 (849930), PolyRefl.mkT 12 15 0 0 (-51572873), PolyRefl.mkT 14 13 0 0 (112931784), PolyRefl.mkT 16 11 0 0 (-74174505), PolyRefl.mkT 18 9 0 0 (25831306), PolyRefl.mkT 20 7 0 0 (-7944963), PolyRefl.mkT 22 5 0 0 (2363580), PolyRefl.mkT 24 3 0 0 (-474633), PolyRefl.mkT 26 1 0 0 (51030)]
lemma form_2_2_2 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_2_2_2 r s 1 1 ≠ 0 :=
  parity_gate_eval 28 (-2187) f_2_2_2 f_2_2_2_rest (by decide +kernel) (by decide +kernel) hr hs

def f_2_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 28 0 0 (-2187), PolyRefl.mkT 2 26 0 0 (51030), PolyRefl.mkT 4 24 0 0 (-474633), PolyRefl.mkT 6 22 0 0 (2363580), PolyRefl.mkT 8 20 0 0 (-7944963), PolyRefl.mkT 10 18 0 0 (25831306), PolyRefl.mkT 12 16 0 0 (-74174505), PolyRefl.mkT 14 14 0 0 (112931784), PolyRefl.mkT 16 12 0 0 (-51572873), PolyRefl.mkT 18 10 0 0 (849930), PolyRefl.mkT 20 8 0 0 (5666973), PolyRefl.mkT 22 6 0 0 (-1820996), PolyRefl.mkT 24 4 0 0 (256023), PolyRefl.mkT 26 2 0 0 (-16938), PolyRefl.mkT 28 0 0 0 (405)]
def f_2_2_3_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 27 0 0 (-2187), PolyRefl.mkT 2 25 0 0 (51030), PolyRefl.mkT 4 23 0 0 (-474633), PolyRefl.mkT 6 21 0 0 (2363580), PolyRefl.mkT 8 19 0 0 (-7944963), PolyRefl.mkT 10 17 0 0 (25831306), PolyRefl.mkT 12 15 0 0 (-74174505), PolyRefl.mkT 14 13 0 0 (112931784), PolyRefl.mkT 16 11 0 0 (-51572873), PolyRefl.mkT 18 9 0 0 (849930), PolyRefl.mkT 20 7 0 0 (5666973), PolyRefl.mkT 22 5 0 0 (-1820996), PolyRefl.mkT 24 3 0 0 (256023), PolyRefl.mkT 26 1 0 0 (-16938)]
lemma form_2_2_3 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_2_2_3 r s 1 1 ≠ 0 :=
  parity_gate_eval 28 (405) f_2_2_3 f_2_2_3_rest (by decide +kernel) (by decide +kernel) hr hs

def f_2_2_4 : PolyRefl.SPoly := [PolyRefl.mkT 0 28 0 0 (6237), PolyRefl.mkT 2 26 0 0 (-232722), PolyRefl.mkT 4 24 0 0 (3621447), PolyRefl.mkT 6 22 0 0 (-30655988), PolyRefl.mkT 8 20 0 0 (152953205), PolyRefl.mkT 10 18 0 0 (-451794542), PolyRefl.mkT 12 16 0 0 (752137879), PolyRefl.mkT 14 14 0 0 (-650387800), PolyRefl.mkT 16 12 0 0 (301658575), PolyRefl.mkT 18 10 0 0 (-70985678), PolyRefl.mkT 20 8 0 0 (4095149), PolyRefl.mkT 22 6 0 0 (2013580), PolyRefl.mkT 24 4 0 0 (-538785), PolyRefl.mkT 26 2 0 0 (55566), PolyRefl.mkT 28 0 0 0 (-2187)]
def f_2_2_4_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 27 0 0 (6237), PolyRefl.mkT 2 25 0 0 (-232722), PolyRefl.mkT 4 23 0 0 (3621447), PolyRefl.mkT 6 21 0 0 (-30655988), PolyRefl.mkT 8 19 0 0 (152953205), PolyRefl.mkT 10 17 0 0 (-451794542), PolyRefl.mkT 12 15 0 0 (752137879), PolyRefl.mkT 14 13 0 0 (-650387800), PolyRefl.mkT 16 11 0 0 (301658575), PolyRefl.mkT 18 9 0 0 (-70985678), PolyRefl.mkT 20 7 0 0 (4095149), PolyRefl.mkT 22 5 0 0 (2013580), PolyRefl.mkT 24 3 0 0 (-538785), PolyRefl.mkT 26 1 0 0 (55566)]
lemma form_2_2_4 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_2_2_4 r s 1 1 ≠ 0 :=
  parity_gate_eval 28 (-2187) f_2_2_4 f_2_2_4_rest (by decide +kernel) (by decide +kernel) hr hs

def f_2_2_5 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 0 (-3), PolyRefl.mkT 2 22 0 0 (44), PolyRefl.mkT 4 20 0 0 (-198), PolyRefl.mkT 6 18 0 0 (4764), PolyRefl.mkT 8 16 0 0 (-40653), PolyRefl.mkT 10 14 0 0 (154840), PolyRefl.mkT 12 12 0 0 (-313300), PolyRefl.mkT 14 10 0 0 (332312), PolyRefl.mkT 16 8 0 0 (-166093), PolyRefl.mkT 18 6 0 0 (34300), PolyRefl.mkT 20 4 0 0 (-1990), PolyRefl.mkT 22 2 0 0 (76), PolyRefl.mkT 24 0 0 0 (-3)]
def f_2_2_5_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 23 0 0 (-3), PolyRefl.mkT 2 21 0 0 (44), PolyRefl.mkT 4 19 0 0 (-198), PolyRefl.mkT 6 17 0 0 (4764), PolyRefl.mkT 8 15 0 0 (-40653), PolyRefl.mkT 10 13 0 0 (154840), PolyRefl.mkT 12 11 0 0 (-313300), PolyRefl.mkT 14 9 0 0 (332312), PolyRefl.mkT 16 7 0 0 (-166093), PolyRefl.mkT 18 5 0 0 (34300), PolyRefl.mkT 20 3 0 0 (-1990), PolyRefl.mkT 22 1 0 0 (76)]
lemma form_2_2_5 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_2_2_5 r s 1 1 ≠ 0 :=
  parity_gate_eval 24 (-3) f_2_2_5 f_2_2_5_rest (by decide +kernel) (by decide +kernel) hr hs

def f_2_2_6 : PolyRefl.SPoly := [PolyRefl.mkT 0 28 0 0 (405), PolyRefl.mkT 2 26 0 0 (-22770), PolyRefl.mkT 4 24 0 0 (461439), PolyRefl.mkT 6 22 0 0 (-4916852), PolyRefl.mkT 8 20 0 0 (31756109), PolyRefl.mkT 10 18 0 0 (-132387278), PolyRefl.mkT 12 16 0 0 (364651375), PolyRefl.mkT 14 14 0 0 (-650387800), PolyRefl.mkT 16 12 0 0 (689145079), PolyRefl.mkT 18 10 0 0 (-390392942), PolyRefl.mkT 20 8 0 0 (125292245), PolyRefl.mkT 22 6 0 0 (-23725556), PolyRefl.mkT 24 4 0 0 (2621223), PolyRefl.mkT 26 2 0 0 (-154386), PolyRefl.mkT 28 0 0 0 (3645)]
def f_2_2_6_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 27 0 0 (405), PolyRefl.mkT 2 25 0 0 (-22770), PolyRefl.mkT 4 23 0 0 (461439), PolyRefl.mkT 6 21 0 0 (-4916852), PolyRefl.mkT 8 19 0 0 (31756109), PolyRefl.mkT 10 17 0 0 (-132387278), PolyRefl.mkT 12 15 0 0 (364651375), PolyRefl.mkT 14 13 0 0 (-650387800), PolyRefl.mkT 16 11 0 0 (689145079), PolyRefl.mkT 18 9 0 0 (-390392942), PolyRefl.mkT 20 7 0 0 (125292245), PolyRefl.mkT 22 5 0 0 (-23725556), PolyRefl.mkT 24 3 0 0 (2621223), PolyRefl.mkT 26 1 0 0 (-154386)]
lemma form_2_2_6 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_2_2_6 r s 1 1 ≠ 0 :=
  parity_gate_eval 28 (3645) f_2_2_6 f_2_2_6_rest (by decide +kernel) (by decide +kernel) hr hs

def f_2_2_7 : PolyRefl.SPoly := [PolyRefl.mkT 0 28 0 0 (3645), PolyRefl.mkT 2 26 0 0 (-154386), PolyRefl.mkT 4 24 0 0 (2621223), PolyRefl.mkT 6 22 0 0 (-23725556), PolyRefl.mkT 8 20 0 0 (125292245), PolyRefl.mkT 10 18 0 0 (-390392942), PolyRefl.mkT 12 16 0 0 (689145079), PolyRefl.mkT 14 14 0 0 (-650387800), PolyRefl.mkT 16 12 0 0 (364651375), PolyRefl.mkT 18 10 0 0 (-132387278), PolyRefl.mkT 20 8 0 0 (31756109), PolyRefl.mkT 22 6 0 0 (-4916852), PolyRefl.mkT 24 4 0 0 (461439), PolyRefl.mkT 26 2 0 0 (-22770), PolyRefl.mkT 28 0 0 0 (405)]
def f_2_2_7_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 27 0 0 (3645), PolyRefl.mkT 2 25 0 0 (-154386), PolyRefl.mkT 4 23 0 0 (2621223), PolyRefl.mkT 6 21 0 0 (-23725556), PolyRefl.mkT 8 19 0 0 (125292245), PolyRefl.mkT 10 17 0 0 (-390392942), PolyRefl.mkT 12 15 0 0 (689145079), PolyRefl.mkT 14 13 0 0 (-650387800), PolyRefl.mkT 16 11 0 0 (364651375), PolyRefl.mkT 18 9 0 0 (-132387278), PolyRefl.mkT 20 7 0 0 (31756109), PolyRefl.mkT 22 5 0 0 (-4916852), PolyRefl.mkT 24 3 0 0 (461439), PolyRefl.mkT 26 1 0 0 (-22770)]
lemma form_2_2_7 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_2_2_7 r s 1 1 ≠ 0 :=
  parity_gate_eval 28 (405) f_2_2_7 f_2_2_7_rest (by decide +kernel) (by decide +kernel) hr hs

def f_2_2_8 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 0 (-3), PolyRefl.mkT 2 22 0 0 (76), PolyRefl.mkT 4 20 0 0 (-1990), PolyRefl.mkT 6 18 0 0 (34300), PolyRefl.mkT 8 16 0 0 (-166093), PolyRefl.mkT 10 14 0 0 (332312), PolyRefl.mkT 12 12 0 0 (-313300), PolyRefl.mkT 14 10 0 0 (154840), PolyRefl.mkT 16 8 0 0 (-40653), PolyRefl.mkT 18 6 0 0 (4764), PolyRefl.mkT 20 4 0 0 (-198), PolyRefl.mkT 22 2 0 0 (44), PolyRefl.mkT 24 0 0 0 (-3)]
def f_2_2_8_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 23 0 0 (-3), PolyRefl.mkT 2 21 0 0 (76), PolyRefl.mkT 4 19 0 0 (-1990), PolyRefl.mkT 6 17 0 0 (34300), PolyRefl.mkT 8 15 0 0 (-166093), PolyRefl.mkT 10 13 0 0 (332312), PolyRefl.mkT 12 11 0 0 (-313300), PolyRefl.mkT 14 9 0 0 (154840), PolyRefl.mkT 16 7 0 0 (-40653), PolyRefl.mkT 18 5 0 0 (4764), PolyRefl.mkT 20 3 0 0 (-198), PolyRefl.mkT 22 1 0 0 (44)]
lemma form_2_2_8 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_2_2_8 r s 1 1 ≠ 0 :=
  parity_gate_eval 24 (-3) f_2_2_8 f_2_2_8_rest (by decide +kernel) (by decide +kernel) hr hs

def f_2_2_9 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 0 (-3), PolyRefl.mkT 2 22 0 0 (44), PolyRefl.mkT 4 20 0 0 (-742), PolyRefl.mkT 6 18 0 0 (16764), PolyRefl.mkT 8 16 0 0 (-95053), PolyRefl.mkT 10 14 0 0 (242264), PolyRefl.mkT 12 12 0 0 (-338836), PolyRefl.mkT 14 10 0 0 (242264), PolyRefl.mkT 16 8 0 0 (-95053), PolyRefl.mkT 18 6 0 0 (16764), PolyRefl.mkT 20 4 0 0 (-742), PolyRefl.mkT 22 2 0 0 (44), PolyRefl.mkT 24 0 0 0 (-3)]
def f_2_2_9_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 23 0 0 (-3), PolyRefl.mkT 2 21 0 0 (44), PolyRefl.mkT 4 19 0 0 (-742), PolyRefl.mkT 6 17 0 0 (16764), PolyRefl.mkT 8 15 0 0 (-95053), PolyRefl.mkT 10 13 0 0 (242264), PolyRefl.mkT 12 11 0 0 (-338836), PolyRefl.mkT 14 9 0 0 (242264), PolyRefl.mkT 16 7 0 0 (-95053), PolyRefl.mkT 18 5 0 0 (16764), PolyRefl.mkT 20 3 0 0 (-742), PolyRefl.mkT 22 1 0 0 (44)]
lemma form_2_2_9 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_2_2_9 r s 1 1 ≠ 0 :=
  parity_gate_eval 24 (-3) f_2_2_9 f_2_2_9_rest (by decide +kernel) (by decide +kernel) hr hs

def f_2_2_10 : PolyRefl.SPoly := [PolyRefl.mkT 0 20 0 0 (45), PolyRefl.mkT 2 18 0 0 (-2574), PolyRefl.mkT 4 16 0 0 (30537), PolyRefl.mkT 6 14 0 0 (-106152), PolyRefl.mkT 8 12 0 0 (27370), PolyRefl.mkT 10 10 0 0 (298604), PolyRefl.mkT 12 8 0 0 (-248406), PolyRefl.mkT 14 6 0 0 (109400), PolyRefl.mkT 16 4 0 0 (-29975), PolyRefl.mkT 18 2 0 0 (4338), PolyRefl.mkT 20 0 0 0 (-243)]
def f_2_2_10_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 19 0 0 (45), PolyRefl.mkT 2 17 0 0 (-2574), PolyRefl.mkT 4 15 0 0 (30537), PolyRefl.mkT 6 13 0 0 (-106152), PolyRefl.mkT 8 11 0 0 (27370), PolyRefl.mkT 10 9 0 0 (298604), PolyRefl.mkT 12 7 0 0 (-248406), PolyRefl.mkT 14 5 0 0 (109400), PolyRefl.mkT 16 3 0 0 (-29975), PolyRefl.mkT 18 1 0 0 (4338)]
lemma form_2_2_10 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_2_2_10 r s 1 1 ≠ 0 :=
  parity_gate_eval 20 (-243) f_2_2_10 f_2_2_10_rest (by decide +kernel) (by decide +kernel) hr hs

def f_2_2_11 : PolyRefl.SPoly := [PolyRefl.mkT 0 12 0 0 (-3), PolyRefl.mkT 2 10 0 0 (2), PolyRefl.mkT 4 8 0 0 (-29), PolyRefl.mkT 6 6 0 0 (188), PolyRefl.mkT 8 4 0 0 (-29), PolyRefl.mkT 10 2 0 0 (2), PolyRefl.mkT 12 0 0 0 (-3)]
def f_2_2_11_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 11 0 0 (-3), PolyRefl.mkT 2 9 0 0 (2), PolyRefl.mkT 4 7 0 0 (-29), PolyRefl.mkT 6 5 0 0 (188), PolyRefl.mkT 8 3 0 0 (-29), PolyRefl.mkT 10 1 0 0 (2)]
lemma form_2_2_11 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_2_2_11 r s 1 1 ≠ 0 :=
  parity_gate_eval 12 (-3) f_2_2_11 f_2_2_11_rest (by decide +kernel) (by decide +kernel) hr hs

def f_2_2_12 : PolyRefl.SPoly := [PolyRefl.mkT 0 20 0 0 (-243), PolyRefl.mkT 2 18 0 0 (4338), PolyRefl.mkT 4 16 0 0 (-29975), PolyRefl.mkT 6 14 0 0 (109400), PolyRefl.mkT 8 12 0 0 (-248406), PolyRefl.mkT 10 10 0 0 (298604), PolyRefl.mkT 12 8 0 0 (27370), PolyRefl.mkT 14 6 0 0 (-106152), PolyRefl.mkT 16 4 0 0 (30537), PolyRefl.mkT 18 2 0 0 (-2574), PolyRefl.mkT 20 0 0 0 (45)]
def f_2_2_12_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 19 0 0 (-243), PolyRefl.mkT 2 17 0 0 (4338), PolyRefl.mkT 4 15 0 0 (-29975), PolyRefl.mkT 6 13 0 0 (109400), PolyRefl.mkT 8 11 0 0 (-248406), PolyRefl.mkT 10 9 0 0 (298604), PolyRefl.mkT 12 7 0 0 (27370), PolyRefl.mkT 14 5 0 0 (-106152), PolyRefl.mkT 16 3 0 0 (30537), PolyRefl.mkT 18 1 0 0 (-2574)]
lemma form_2_2_12 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_2_2_12 r s 1 1 ≠ 0 :=
  parity_gate_eval 20 (45) f_2_2_12 f_2_2_12_rest (by decide +kernel) (by decide +kernel) hr hs

def f_2_2_13 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 (-1), PolyRefl.mkT 2 6 0 0 (20), PolyRefl.mkT 4 4 0 0 (-62), PolyRefl.mkT 6 2 0 0 (36), PolyRefl.mkT 8 0 0 0 (-9)]
def f_2_2_13_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 7 0 0 (-1), PolyRefl.mkT 2 5 0 0 (20), PolyRefl.mkT 4 3 0 0 (-62), PolyRefl.mkT 6 1 0 0 (36)]
lemma form_2_2_13 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_2_2_13 r s 1 1 ≠ 0 :=
  parity_gate_eval 8 (-9) f_2_2_13 f_2_2_13_rest (by decide +kernel) (by decide +kernel) hr hs

def f_2_2_14 : PolyRefl.SPoly := [PolyRefl.mkT 0 20 0 0 (405), PolyRefl.mkT 2 18 0 0 (-13014), PolyRefl.mkT 4 16 0 0 (144265), PolyRefl.mkT 6 14 0 0 (-709064), PolyRefl.mkT 8 12 0 0 (1570586), PolyRefl.mkT 10 10 0 0 (-1411076), PolyRefl.mkT 12 8 0 0 (656906), PolyRefl.mkT 14 6 0 0 (-182600), PolyRefl.mkT 16 4 0 0 (28561), PolyRefl.mkT 18 2 0 0 (-2070), PolyRefl.mkT 20 0 0 0 (45)]
def f_2_2_14_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 19 0 0 (405), PolyRefl.mkT 2 17 0 0 (-13014), PolyRefl.mkT 4 15 0 0 (144265), PolyRefl.mkT 6 13 0 0 (-709064), PolyRefl.mkT 8 11 0 0 (1570586), PolyRefl.mkT 10 9 0 0 (-1411076), PolyRefl.mkT 12 7 0 0 (656906), PolyRefl.mkT 14 5 0 0 (-182600), PolyRefl.mkT 16 3 0 0 (28561), PolyRefl.mkT 18 1 0 0 (-2070)]
lemma form_2_2_14 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_2_2_14 r s 1 1 ≠ 0 :=
  parity_gate_eval 20 (45) f_2_2_14 f_2_2_14_rest (by decide +kernel) (by decide +kernel) hr hs

def f_2_2_15 : PolyRefl.SPoly := [PolyRefl.mkT 0 20 0 0 (-243), PolyRefl.mkT 2 18 0 0 (3186), PolyRefl.mkT 4 16 0 0 (-11799), PolyRefl.mkT 6 14 0 0 (29784), PolyRefl.mkT 8 12 0 0 (-139094), PolyRefl.mkT 10 10 0 0 (298604), PolyRefl.mkT 12 8 0 0 (-81942), PolyRefl.mkT 14 6 0 0 (-26536), PolyRefl.mkT 16 4 0 0 (12361), PolyRefl.mkT 18 2 0 0 (-1422), PolyRefl.mkT 20 0 0 0 (45)]
def f_2_2_15_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 19 0 0 (-243), PolyRefl.mkT 2 17 0 0 (3186), PolyRefl.mkT 4 15 0 0 (-11799), PolyRefl.mkT 6 13 0 0 (29784), PolyRefl.mkT 8 11 0 0 (-139094), PolyRefl.mkT 10 9 0 0 (298604), PolyRefl.mkT 12 7 0 0 (-81942), PolyRefl.mkT 14 5 0 0 (-26536), PolyRefl.mkT 16 3 0 0 (12361), PolyRefl.mkT 18 1 0 0 (-1422)]
lemma form_2_2_15 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_2_2_15 r s 1 1 ≠ 0 :=
  parity_gate_eval 20 (45) f_2_2_15 f_2_2_15_rest (by decide +kernel) (by decide +kernel) hr hs

def f_2_2_16 : PolyRefl.SPoly := [PolyRefl.mkT 0 20 0 0 (-243), PolyRefl.mkT 2 18 0 0 (3690), PolyRefl.mkT 4 16 0 0 (-13775), PolyRefl.mkT 6 14 0 0 (-46664), PolyRefl.mkT 8 12 0 0 (490442), PolyRefl.mkT 10 10 0 0 (-1411076), PolyRefl.mkT 12 8 0 0 (1737050), PolyRefl.mkT 14 6 0 0 (-845000), PolyRefl.mkT 16 4 0 0 (186601), PolyRefl.mkT 18 2 0 0 (-18774), PolyRefl.mkT 20 0 0 0 (693)]
def f_2_2_16_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 19 0 0 (-243), PolyRefl.mkT 2 17 0 0 (3690), PolyRefl.mkT 4 15 0 0 (-13775), PolyRefl.mkT 6 13 0 0 (-46664), PolyRefl.mkT 8 11 0 0 (490442), PolyRefl.mkT 10 9 0 0 (-1411076), PolyRefl.mkT 12 7 0 0 (1737050), PolyRefl.mkT 14 5 0 0 (-845000), PolyRefl.mkT 16 3 0 0 (186601), PolyRefl.mkT 18 1 0 0 (-18774)]
lemma form_2_2_16 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_2_2_16 r s 1 1 ≠ 0 :=
  parity_gate_eval 20 (693) f_2_2_16 f_2_2_16_rest (by decide +kernel) (by decide +kernel) hr hs

def f_2_2_17 : PolyRefl.SPoly := [PolyRefl.mkT 0 20 0 0 (45), PolyRefl.mkT 2 18 0 0 (-2070), PolyRefl.mkT 4 16 0 0 (28561), PolyRefl.mkT 6 14 0 0 (-182600), PolyRefl.mkT 8 12 0 0 (656906), PolyRefl.mkT 10 10 0 0 (-1411076), PolyRefl.mkT 12 8 0 0 (1570586), PolyRefl.mkT 14 6 0 0 (-709064), PolyRefl.mkT 16 4 0 0 (144265), PolyRefl.mkT 18 2 0 0 (-13014), PolyRefl.mkT 20 0 0 0 (405)]
def f_2_2_17_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 19 0 0 (45), PolyRefl.mkT 2 17 0 0 (-2070), PolyRefl.mkT 4 15 0 0 (28561), PolyRefl.mkT 6 13 0 0 (-182600), PolyRefl.mkT 8 11 0 0 (656906), PolyRefl.mkT 10 9 0 0 (-1411076), PolyRefl.mkT 12 7 0 0 (1570586), PolyRefl.mkT 14 5 0 0 (-709064), PolyRefl.mkT 16 3 0 0 (144265), PolyRefl.mkT 18 1 0 0 (-13014)]
lemma form_2_2_17 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_2_2_17 r s 1 1 ≠ 0 :=
  parity_gate_eval 20 (405) f_2_2_17 f_2_2_17_rest (by decide +kernel) (by decide +kernel) hr hs

def f_2_2_18 : PolyRefl.SPoly := [PolyRefl.mkT 0 28 0 0 (405), PolyRefl.mkT 2 26 0 0 (-27306), PolyRefl.mkT 4 24 0 0 (525591), PolyRefl.mkT 6 22 0 0 (-4566852), PolyRefl.mkT 8 20 0 0 (19715997), PolyRefl.mkT 10 18 0 0 (-35570294), PolyRefl.mkT 12 16 0 0 (-11181705), PolyRefl.mkT 14 14 0 0 (112931784), PolyRefl.mkT 16 12 0 0 (-114565673), PolyRefl.mkT 18 10 0 0 (62251530), PolyRefl.mkT 20 8 0 0 (-21993987), PolyRefl.mkT 22 6 0 0 (5109436), PolyRefl.mkT 24 4 0 0 (-744201), PolyRefl.mkT 26 2 0 0 (61398), PolyRefl.mkT 28 0 0 0 (-2187)]
def f_2_2_18_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 27 0 0 (405), PolyRefl.mkT 2 25 0 0 (-27306), PolyRefl.mkT 4 23 0 0 (525591), PolyRefl.mkT 6 21 0 0 (-4566852), PolyRefl.mkT 8 19 0 0 (19715997), PolyRefl.mkT 10 17 0 0 (-35570294), PolyRefl.mkT 12 15 0 0 (-11181705), PolyRefl.mkT 14 13 0 0 (112931784), PolyRefl.mkT 16 11 0 0 (-114565673), PolyRefl.mkT 18 9 0 0 (62251530), PolyRefl.mkT 20 7 0 0 (-21993987), PolyRefl.mkT 22 5 0 0 (5109436), PolyRefl.mkT 24 3 0 0 (-744201), PolyRefl.mkT 26 1 0 0 (61398)]
lemma form_2_2_18 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_2_2_18 r s 1 1 ≠ 0 :=
  parity_gate_eval 28 (-2187) f_2_2_18 f_2_2_18_rest (by decide +kernel) (by decide +kernel) hr hs

def f_2_2_19 : PolyRefl.SPoly := [PolyRefl.mkT 0 28 0 0 (-2187), PolyRefl.mkT 2 26 0 0 (55566), PolyRefl.mkT 4 24 0 0 (-538785), PolyRefl.mkT 6 22 0 0 (2013580), PolyRefl.mkT 8 20 0 0 (4095149), PolyRefl.mkT 10 18 0 0 (-70985678), PolyRefl.mkT 12 16 0 0 (301658575), PolyRefl.mkT 14 14 0 0 (-650387800), PolyRefl.mkT 16 12 0 0 (752137879), PolyRefl.mkT 18 10 0 0 (-451794542), PolyRefl.mkT 20 8 0 0 (152953205), PolyRefl.mkT 22 6 0 0 (-30655988), PolyRefl.mkT 24 4 0 0 (3621447), PolyRefl.mkT 26 2 0 0 (-232722), PolyRefl.mkT 28 0 0 0 (6237)]
def f_2_2_19_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 27 0 0 (-2187), PolyRefl.mkT 2 25 0 0 (55566), PolyRefl.mkT 4 23 0 0 (-538785), PolyRefl.mkT 6 21 0 0 (2013580), PolyRefl.mkT 8 19 0 0 (4095149), PolyRefl.mkT 10 17 0 0 (-70985678), PolyRefl.mkT 12 15 0 0 (301658575), PolyRefl.mkT 14 13 0 0 (-650387800), PolyRefl.mkT 16 11 0 0 (752137879), PolyRefl.mkT 18 9 0 0 (-451794542), PolyRefl.mkT 20 7 0 0 (152953205), PolyRefl.mkT 22 5 0 0 (-30655988), PolyRefl.mkT 24 3 0 0 (3621447), PolyRefl.mkT 26 1 0 0 (-232722)]
lemma form_2_2_19 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_2_2_19 r s 1 1 ≠ 0 :=
  parity_gate_eval 28 (6237) f_2_2_19 f_2_2_19_rest (by decide +kernel) (by decide +kernel) hr hs

def f_2_2_20 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 (-9), PolyRefl.mkT 2 6 0 0 (36), PolyRefl.mkT 4 4 0 0 (-62), PolyRefl.mkT 6 2 0 0 (20), PolyRefl.mkT 8 0 0 0 (-1)]
def f_2_2_20_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 7 0 0 (-9), PolyRefl.mkT 2 5 0 0 (36), PolyRefl.mkT 4 3 0 0 (-62), PolyRefl.mkT 6 1 0 0 (20)]
lemma form_2_2_20 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_2_2_20 r s 1 1 ≠ 0 :=
  parity_gate_eval 8 (-1) f_2_2_20 f_2_2_20_rest (by decide +kernel) (by decide +kernel) hr hs

def f_2_2_21 : PolyRefl.SPoly := [PolyRefl.mkT 0 20 0 0 (45), PolyRefl.mkT 2 18 0 0 (-1422), PolyRefl.mkT 4 16 0 0 (12361), PolyRefl.mkT 6 14 0 0 (-26536), PolyRefl.mkT 8 12 0 0 (-81942), PolyRefl.mkT 10 10 0 0 (298604), PolyRefl.mkT 12 8 0 0 (-139094), PolyRefl.mkT 14 6 0 0 (29784), PolyRefl.mkT 16 4 0 0 (-11799), PolyRefl.mkT 18 2 0 0 (3186), PolyRefl.mkT 20 0 0 0 (-243)]
def f_2_2_21_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 19 0 0 (45), PolyRefl.mkT 2 17 0 0 (-1422), PolyRefl.mkT 4 15 0 0 (12361), PolyRefl.mkT 6 13 0 0 (-26536), PolyRefl.mkT 8 11 0 0 (-81942), PolyRefl.mkT 10 9 0 0 (298604), PolyRefl.mkT 12 7 0 0 (-139094), PolyRefl.mkT 14 5 0 0 (29784), PolyRefl.mkT 16 3 0 0 (-11799), PolyRefl.mkT 18 1 0 0 (3186)]
lemma form_2_2_21 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_2_2_21 r s 1 1 ≠ 0 :=
  parity_gate_eval 20 (-243) f_2_2_21 f_2_2_21_rest (by decide +kernel) (by decide +kernel) hr hs

end CertForms
