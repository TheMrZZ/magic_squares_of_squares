/- Generated: nonvanishing of the certifier's minimal-layer forms
   at grid cross_forms_3_4. Uniform statements: eval formData r s 1 1 1 ≠ 0. -/
import MsqLean.CertKit
import MsqLean.PolyRefl

set_option maxRecDepth 100000
set_option maxHeartbeats 2000000

namespace CertForms
open CertKit

def f_cross_forms_3_4_0 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (-1), PolyRefl.mkT 2 4 0 0 0 (-19), PolyRefl.mkT 4 2 0 0 0 (13), PolyRefl.mkT 6 0 0 0 0 (-1)]
def f_cross_forms_3_4_0_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 0 (-1), PolyRefl.mkT 2 3 0 0 0 (-19), PolyRefl.mkT 4 1 0 0 0 (13)]
lemma form_cross_forms_3_4_0 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_0 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 6 (-1) f_cross_forms_3_4_0 f_cross_forms_3_4_0_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_1 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (1), PolyRefl.mkT 2 4 0 0 0 (19), PolyRefl.mkT 4 2 0 0 0 (-13), PolyRefl.mkT 6 0 0 0 0 (1)]
def f_cross_forms_3_4_1_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 0 (1), PolyRefl.mkT 2 3 0 0 0 (19), PolyRefl.mkT 4 1 0 0 0 (-13)]
lemma form_cross_forms_3_4_1 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_1 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 6 (1) f_cross_forms_3_4_1 f_cross_forms_3_4_1_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (-3), PolyRefl.mkT 2 6 0 0 0 (16), PolyRefl.mkT 4 4 0 0 0 (-14), PolyRefl.mkT 6 2 0 0 0 (-24), PolyRefl.mkT 8 0 0 0 0 (9)]
def f_cross_forms_3_4_2_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 7 0 0 0 (-3), PolyRefl.mkT 2 5 0 0 0 (16), PolyRefl.mkT 4 3 0 0 0 (-14), PolyRefl.mkT 6 1 0 0 0 (-24)]
lemma form_cross_forms_3_4_2 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_2 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 8 (9) f_cross_forms_3_4_2 f_cross_forms_3_4_2_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (1), PolyRefl.mkT 2 8 0 0 0 (-31), PolyRefl.mkT 4 6 0 0 0 (178), PolyRefl.mkT 6 4 0 0 0 (-198), PolyRefl.mkT 8 2 0 0 0 (93), PolyRefl.mkT 10 0 0 0 0 (-11)]
def f_cross_forms_3_4_3_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 9 0 0 0 (1), PolyRefl.mkT 2 7 0 0 0 (-31), PolyRefl.mkT 4 5 0 0 0 (178), PolyRefl.mkT 6 3 0 0 0 (-198), PolyRefl.mkT 8 1 0 0 0 (93)]
lemma form_cross_forms_3_4_3 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_3 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 10 (-11) f_cross_forms_3_4_3 f_cross_forms_3_4_3_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_4 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (-1), PolyRefl.mkT 2 8 0 0 0 (10), PolyRefl.mkT 4 6 0 0 0 (-54), PolyRefl.mkT 6 4 0 0 0 (120), PolyRefl.mkT 8 2 0 0 0 (-65), PolyRefl.mkT 10 0 0 0 0 (6)]
def f_cross_forms_3_4_4_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (-1), PolyRefl.mkT 2 6 0 0 0 (10), PolyRefl.mkT 4 4 0 0 0 (-54), PolyRefl.mkT 6 2 0 0 0 (120), PolyRefl.mkT 8 0 0 0 0 (-65)]
lemma form_cross_forms_3_4_4 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_4 r s 1 1 1 ≠ 0 :=
  dyadic_gate_eval 10 1 (3) f_cross_forms_3_4_4 f_cross_forms_3_4_4_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_5 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (7), PolyRefl.mkT 2 8 0 0 0 (-57), PolyRefl.mkT 4 6 0 0 0 (198), PolyRefl.mkT 6 4 0 0 0 (-178), PolyRefl.mkT 8 2 0 0 0 (67), PolyRefl.mkT 10 0 0 0 0 (-5)]
def f_cross_forms_3_4_5_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 9 0 0 0 (7), PolyRefl.mkT 2 7 0 0 0 (-57), PolyRefl.mkT 4 5 0 0 0 (198), PolyRefl.mkT 6 3 0 0 0 (-178), PolyRefl.mkT 8 1 0 0 0 (67)]
lemma form_cross_forms_3_4_5 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_5 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 10 (-5) f_cross_forms_3_4_5 f_cross_forms_3_4_5_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_6 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (-1), PolyRefl.mkT 2 8 0 0 0 (12), PolyRefl.mkT 4 6 0 0 0 (-82), PolyRefl.mkT 6 4 0 0 0 (120), PolyRefl.mkT 8 2 0 0 0 (-37), PolyRefl.mkT 10 0 0 0 0 (4)]
lemma form_cross_forms_3_4_6 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_6 r s 1 1 1 ≠ 0 :=
  sieve_gate 3 (by norm_num) f_cross_forms_3_4_6 (by decide +kernel) hco

def f_cross_forms_3_4_7 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (-1), PolyRefl.mkT 2 8 0 0 0 (35), PolyRefl.mkT 4 6 0 0 0 (-90), PolyRefl.mkT 6 4 0 0 0 (-42), PolyRefl.mkT 8 2 0 0 0 (75), PolyRefl.mkT 10 0 0 0 0 (-9)]
def f_cross_forms_3_4_7_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 9 0 0 0 (-1), PolyRefl.mkT 2 7 0 0 0 (35), PolyRefl.mkT 4 5 0 0 0 (-90), PolyRefl.mkT 6 3 0 0 0 (-42), PolyRefl.mkT 8 1 0 0 0 (75)]
lemma form_cross_forms_3_4_7 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_7 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 10 (-9) f_cross_forms_3_4_7 f_cross_forms_3_4_7_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_8 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (-9), PolyRefl.mkT 2 6 0 0 0 (60), PolyRefl.mkT 4 4 0 0 0 (-118), PolyRefl.mkT 6 2 0 0 0 (60), PolyRefl.mkT 8 0 0 0 0 (-9)]
def f_cross_forms_3_4_8_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 7 0 0 0 (-9), PolyRefl.mkT 2 5 0 0 0 (60), PolyRefl.mkT 4 3 0 0 0 (-118), PolyRefl.mkT 6 1 0 0 0 (60)]
lemma form_cross_forms_3_4_8 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_8 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 8 (-9) f_cross_forms_3_4_8 f_cross_forms_3_4_8_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_9 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (11), PolyRefl.mkT 2 8 0 0 0 (-93), PolyRefl.mkT 4 6 0 0 0 (198), PolyRefl.mkT 6 4 0 0 0 (-178), PolyRefl.mkT 8 2 0 0 0 (31), PolyRefl.mkT 10 0 0 0 0 (-1)]
def f_cross_forms_3_4_9_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 9 0 0 0 (11), PolyRefl.mkT 2 7 0 0 0 (-93), PolyRefl.mkT 4 5 0 0 0 (198), PolyRefl.mkT 6 3 0 0 0 (-178), PolyRefl.mkT 8 1 0 0 0 (31)]
lemma form_cross_forms_3_4_9 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_9 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 10 (-1) f_cross_forms_3_4_9 f_cross_forms_3_4_9_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_10 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (-1), PolyRefl.mkT 2 6 0 0 0 (-12), PolyRefl.mkT 4 4 0 0 0 (-14), PolyRefl.mkT 6 2 0 0 0 (4), PolyRefl.mkT 8 0 0 0 0 (7)]
def f_cross_forms_3_4_10_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 7 0 0 0 (-1), PolyRefl.mkT 2 5 0 0 0 (-12), PolyRefl.mkT 4 3 0 0 0 (-14), PolyRefl.mkT 6 1 0 0 0 (4)]
lemma form_cross_forms_3_4_10 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_10 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 8 (7) f_cross_forms_3_4_10 f_cross_forms_3_4_10_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_11 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (5), PolyRefl.mkT 2 6 0 0 0 (-32), PolyRefl.mkT 4 4 0 0 0 (-14), PolyRefl.mkT 6 2 0 0 0 (24), PolyRefl.mkT 8 0 0 0 0 (1)]
def f_cross_forms_3_4_11_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 7 0 0 0 (5), PolyRefl.mkT 2 5 0 0 0 (-32), PolyRefl.mkT 4 3 0 0 0 (-14), PolyRefl.mkT 6 1 0 0 0 (24)]
lemma form_cross_forms_3_4_11 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_11 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 8 (1) f_cross_forms_3_4_11 f_cross_forms_3_4_11_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_12 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (1), PolyRefl.mkT 2 8 0 0 0 (-10), PolyRefl.mkT 4 6 0 0 0 (54), PolyRefl.mkT 6 4 0 0 0 (-120), PolyRefl.mkT 8 2 0 0 0 (65), PolyRefl.mkT 10 0 0 0 0 (-6)]
def f_cross_forms_3_4_12_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (1), PolyRefl.mkT 2 6 0 0 0 (-10), PolyRefl.mkT 4 4 0 0 0 (54), PolyRefl.mkT 6 2 0 0 0 (-120), PolyRefl.mkT 8 0 0 0 0 (65)]
lemma form_cross_forms_3_4_12 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_12 r s 1 1 1 ≠ 0 :=
  dyadic_gate_eval 10 1 (-3) f_cross_forms_3_4_12 f_cross_forms_3_4_12_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_13 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (3), PolyRefl.mkT 2 8 0 0 0 (-37), PolyRefl.mkT 4 6 0 0 0 (150), PolyRefl.mkT 6 4 0 0 0 (-226), PolyRefl.mkT 8 2 0 0 0 (87), PolyRefl.mkT 10 0 0 0 0 (-9)]
def f_cross_forms_3_4_13_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 9 0 0 0 (3), PolyRefl.mkT 2 7 0 0 0 (-37), PolyRefl.mkT 4 5 0 0 0 (150), PolyRefl.mkT 6 3 0 0 0 (-226), PolyRefl.mkT 8 1 0 0 0 (87)]
lemma form_cross_forms_3_4_13 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_13 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 10 (-9) f_cross_forms_3_4_13 f_cross_forms_3_4_13_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_14 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (3), PolyRefl.mkT 2 8 0 0 0 (-55), PolyRefl.mkT 4 6 0 0 0 (198), PolyRefl.mkT 6 4 0 0 0 (-198), PolyRefl.mkT 8 2 0 0 0 (55), PolyRefl.mkT 10 0 0 0 0 (-3)]
def f_cross_forms_3_4_14_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 9 0 0 0 (3), PolyRefl.mkT 2 7 0 0 0 (-55), PolyRefl.mkT 4 5 0 0 0 (198), PolyRefl.mkT 6 3 0 0 0 (-198), PolyRefl.mkT 8 1 0 0 0 (55)]
lemma form_cross_forms_3_4_14 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_14 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 10 (-3) f_cross_forms_3_4_14 f_cross_forms_3_4_14_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_15 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (-1), PolyRefl.mkT 2 8 0 0 0 (1), PolyRefl.mkT 4 6 0 0 0 (54), PolyRefl.mkT 6 4 0 0 0 (-14), PolyRefl.mkT 8 2 0 0 0 (-53), PolyRefl.mkT 10 0 0 0 0 (13)]
def f_cross_forms_3_4_15_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 9 0 0 0 (-1), PolyRefl.mkT 2 7 0 0 0 (1), PolyRefl.mkT 4 5 0 0 0 (54), PolyRefl.mkT 6 3 0 0 0 (-14), PolyRefl.mkT 8 1 0 0 0 (-53)]
lemma form_cross_forms_3_4_15 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_15 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 10 (13) f_cross_forms_3_4_15 f_cross_forms_3_4_15_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_16 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (1), PolyRefl.mkT 2 8 0 0 0 (5), PolyRefl.mkT 4 6 0 0 0 (-62), PolyRefl.mkT 6 4 0 0 0 (-14), PolyRefl.mkT 8 2 0 0 0 (45), PolyRefl.mkT 10 0 0 0 0 (-7)]
def f_cross_forms_3_4_16_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 9 0 0 0 (1), PolyRefl.mkT 2 7 0 0 0 (5), PolyRefl.mkT 4 5 0 0 0 (-62), PolyRefl.mkT 6 3 0 0 0 (-14), PolyRefl.mkT 8 1 0 0 0 (45)]
lemma form_cross_forms_3_4_16 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_16 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 10 (-7) f_cross_forms_3_4_16 f_cross_forms_3_4_16_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_17 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (1), PolyRefl.mkT 2 4 0 0 0 (-1), PolyRefl.mkT 4 2 0 0 0 (-5), PolyRefl.mkT 6 0 0 0 0 (-3)]
def f_cross_forms_3_4_17_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 0 (1), PolyRefl.mkT 2 3 0 0 0 (-1), PolyRefl.mkT 4 1 0 0 0 (-5)]
lemma form_cross_forms_3_4_17 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_17 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 6 (-3) f_cross_forms_3_4_17 f_cross_forms_3_4_17_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_18 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (1), PolyRefl.mkT 2 8 0 0 0 (-11), PolyRefl.mkT 4 6 0 0 0 (10), PolyRefl.mkT 6 4 0 0 0 (42), PolyRefl.mkT 8 2 0 0 0 (5), PolyRefl.mkT 10 0 0 0 0 (-15)]
def f_cross_forms_3_4_18_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 9 0 0 0 (1), PolyRefl.mkT 2 7 0 0 0 (-11), PolyRefl.mkT 4 5 0 0 0 (10), PolyRefl.mkT 6 3 0 0 0 (42), PolyRefl.mkT 8 1 0 0 0 (5)]
lemma form_cross_forms_3_4_18 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_18 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 10 (-15) f_cross_forms_3_4_18 f_cross_forms_3_4_18_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_19 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (1), PolyRefl.mkT 2 8 0 0 0 (-1), PolyRefl.mkT 4 6 0 0 0 (-54), PolyRefl.mkT 6 4 0 0 0 (14), PolyRefl.mkT 8 2 0 0 0 (53), PolyRefl.mkT 10 0 0 0 0 (-13)]
def f_cross_forms_3_4_19_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 9 0 0 0 (1), PolyRefl.mkT 2 7 0 0 0 (-1), PolyRefl.mkT 4 5 0 0 0 (-54), PolyRefl.mkT 6 3 0 0 0 (14), PolyRefl.mkT 8 1 0 0 0 (53)]
lemma form_cross_forms_3_4_19 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_19 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 10 (-13) f_cross_forms_3_4_19 f_cross_forms_3_4_19_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_20 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (-1), PolyRefl.mkT 2 8 0 0 0 (-11), PolyRefl.mkT 4 6 0 0 0 (82), PolyRefl.mkT 6 4 0 0 0 (-130), PolyRefl.mkT 8 2 0 0 0 (31), PolyRefl.mkT 10 0 0 0 0 (-3)]
def f_cross_forms_3_4_20_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 9 0 0 0 (-1), PolyRefl.mkT 2 7 0 0 0 (-11), PolyRefl.mkT 4 5 0 0 0 (82), PolyRefl.mkT 6 3 0 0 0 (-130), PolyRefl.mkT 8 1 0 0 0 (31)]
lemma form_cross_forms_3_4_20 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_20 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 10 (-3) f_cross_forms_3_4_20 f_cross_forms_3_4_20_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_21 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (-3), PolyRefl.mkT 2 8 0 0 0 (37), PolyRefl.mkT 4 6 0 0 0 (-150), PolyRefl.mkT 6 4 0 0 0 (226), PolyRefl.mkT 8 2 0 0 0 (-87), PolyRefl.mkT 10 0 0 0 0 (9)]
def f_cross_forms_3_4_21_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 9 0 0 0 (-3), PolyRefl.mkT 2 7 0 0 0 (37), PolyRefl.mkT 4 5 0 0 0 (-150), PolyRefl.mkT 6 3 0 0 0 (226), PolyRefl.mkT 8 1 0 0 0 (-87)]
lemma form_cross_forms_3_4_21 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_21 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 10 (9) f_cross_forms_3_4_21 f_cross_forms_3_4_21_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_22 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (-5), PolyRefl.mkT 2 8 0 0 0 (67), PolyRefl.mkT 4 6 0 0 0 (-178), PolyRefl.mkT 6 4 0 0 0 (198), PolyRefl.mkT 8 2 0 0 0 (-57), PolyRefl.mkT 10 0 0 0 0 (7)]
def f_cross_forms_3_4_22_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 9 0 0 0 (-5), PolyRefl.mkT 2 7 0 0 0 (67), PolyRefl.mkT 4 5 0 0 0 (-178), PolyRefl.mkT 6 3 0 0 0 (198), PolyRefl.mkT 8 1 0 0 0 (-57)]
lemma form_cross_forms_3_4_22 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_22 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 10 (7) f_cross_forms_3_4_22 f_cross_forms_3_4_22_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_23 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (-5), PolyRefl.mkT 2 6 0 0 0 (32), PolyRefl.mkT 4 4 0 0 0 (14), PolyRefl.mkT 6 2 0 0 0 (-24), PolyRefl.mkT 8 0 0 0 0 (-1)]
def f_cross_forms_3_4_23_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 7 0 0 0 (-5), PolyRefl.mkT 2 5 0 0 0 (32), PolyRefl.mkT 4 3 0 0 0 (14), PolyRefl.mkT 6 1 0 0 0 (-24)]
lemma form_cross_forms_3_4_23 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_23 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 8 (-1) f_cross_forms_3_4_23 f_cross_forms_3_4_23_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_24 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (1), PolyRefl.mkT 2 8 0 0 0 (-17), PolyRefl.mkT 4 6 0 0 0 (42), PolyRefl.mkT 6 4 0 0 0 (14), PolyRefl.mkT 8 2 0 0 0 (-43), PolyRefl.mkT 10 0 0 0 0 (3)]
def f_cross_forms_3_4_24_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 9 0 0 0 (1), PolyRefl.mkT 2 7 0 0 0 (-17), PolyRefl.mkT 4 5 0 0 0 (42), PolyRefl.mkT 6 3 0 0 0 (14), PolyRefl.mkT 8 1 0 0 0 (-43)]
lemma form_cross_forms_3_4_24 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_24 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 10 (3) f_cross_forms_3_4_24 f_cross_forms_3_4_24_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_25 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (-1), PolyRefl.mkT 2 6 0 0 0 (18), PolyRefl.mkT 4 4 0 0 0 (-60), PolyRefl.mkT 6 2 0 0 0 (46), PolyRefl.mkT 8 0 0 0 0 (-3)]
def f_cross_forms_3_4_25_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 7 0 0 0 (-1), PolyRefl.mkT 2 5 0 0 0 (18), PolyRefl.mkT 4 3 0 0 0 (-60), PolyRefl.mkT 6 1 0 0 0 (46)]
lemma form_cross_forms_3_4_25 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_25 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 8 (-3) f_cross_forms_3_4_25 f_cross_forms_3_4_25_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_26 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (1), PolyRefl.mkT 2 8 0 0 0 (11), PolyRefl.mkT 4 6 0 0 0 (-82), PolyRefl.mkT 6 4 0 0 0 (130), PolyRefl.mkT 8 2 0 0 0 (-31), PolyRefl.mkT 10 0 0 0 0 (3)]
def f_cross_forms_3_4_26_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 9 0 0 0 (1), PolyRefl.mkT 2 7 0 0 0 (11), PolyRefl.mkT 4 5 0 0 0 (-82), PolyRefl.mkT 6 3 0 0 0 (130), PolyRefl.mkT 8 1 0 0 0 (-31)]
lemma form_cross_forms_3_4_26 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_26 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 10 (3) f_cross_forms_3_4_26 f_cross_forms_3_4_26_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_27 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (9), PolyRefl.mkT 2 8 0 0 0 (-87), PolyRefl.mkT 4 6 0 0 0 (226), PolyRefl.mkT 6 4 0 0 0 (-150), PolyRefl.mkT 8 2 0 0 0 (37), PolyRefl.mkT 10 0 0 0 0 (-3)]
def f_cross_forms_3_4_27_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 9 0 0 0 (9), PolyRefl.mkT 2 7 0 0 0 (-87), PolyRefl.mkT 4 5 0 0 0 (226), PolyRefl.mkT 6 3 0 0 0 (-150), PolyRefl.mkT 8 1 0 0 0 (37)]
lemma form_cross_forms_3_4_27 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_27 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 10 (-3) f_cross_forms_3_4_27 f_cross_forms_3_4_27_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_28 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (1), PolyRefl.mkT 2 8 0 0 0 (-19), PolyRefl.mkT 4 6 0 0 0 (18), PolyRefl.mkT 6 4 0 0 0 (-14), PolyRefl.mkT 8 2 0 0 0 (-35), PolyRefl.mkT 10 0 0 0 0 (17)]
def f_cross_forms_3_4_28_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 9 0 0 0 (1), PolyRefl.mkT 2 7 0 0 0 (-19), PolyRefl.mkT 4 5 0 0 0 (18), PolyRefl.mkT 6 3 0 0 0 (-14), PolyRefl.mkT 8 1 0 0 0 (-35)]
lemma form_cross_forms_3_4_28 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_28 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 10 (17) f_cross_forms_3_4_28 f_cross_forms_3_4_28_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_29 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (1), PolyRefl.mkT 2 8 0 0 0 (-9), PolyRefl.mkT 4 6 0 0 0 (78), PolyRefl.mkT 6 4 0 0 0 (-134), PolyRefl.mkT 8 2 0 0 0 (33), PolyRefl.mkT 10 0 0 0 0 (-1)]
def f_cross_forms_3_4_29_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 9 0 0 0 (1), PolyRefl.mkT 2 7 0 0 0 (-9), PolyRefl.mkT 4 5 0 0 0 (78), PolyRefl.mkT 6 3 0 0 0 (-134), PolyRefl.mkT 8 1 0 0 0 (33)]
lemma form_cross_forms_3_4_29 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_29 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 10 (-1) f_cross_forms_3_4_29 f_cross_forms_3_4_29_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_30 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (-9), PolyRefl.mkT 2 6 0 0 0 (24), PolyRefl.mkT 4 4 0 0 0 (14), PolyRefl.mkT 6 2 0 0 0 (-16), PolyRefl.mkT 8 0 0 0 0 (3)]
def f_cross_forms_3_4_30_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 7 0 0 0 (-9), PolyRefl.mkT 2 5 0 0 0 (24), PolyRefl.mkT 4 3 0 0 0 (14), PolyRefl.mkT 6 1 0 0 0 (-16)]
lemma form_cross_forms_3_4_30 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_30 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 8 (3) f_cross_forms_3_4_30 f_cross_forms_3_4_30_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_31 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (1), PolyRefl.mkT 2 4 0 0 0 (15), PolyRefl.mkT 4 2 0 0 0 (-13), PolyRefl.mkT 6 0 0 0 0 (5)]
def f_cross_forms_3_4_31_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 0 (1), PolyRefl.mkT 2 3 0 0 0 (15), PolyRefl.mkT 4 1 0 0 0 (-13)]
lemma form_cross_forms_3_4_31 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_31 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 6 (5) f_cross_forms_3_4_31 f_cross_forms_3_4_31_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_32 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (-1), PolyRefl.mkT 2 6 0 0 0 (-20), PolyRefl.mkT 4 4 0 0 0 (106), PolyRefl.mkT 6 2 0 0 0 (-116), PolyRefl.mkT 8 0 0 0 0 (15)]
def f_cross_forms_3_4_32_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 7 0 0 0 (-1), PolyRefl.mkT 2 5 0 0 0 (-20), PolyRefl.mkT 4 3 0 0 0 (106), PolyRefl.mkT 6 1 0 0 0 (-116)]
lemma form_cross_forms_3_4_32 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_32 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 8 (15) f_cross_forms_3_4_32 f_cross_forms_3_4_32_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_33 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (-1), PolyRefl.mkT 2 4 0 0 0 (-15), PolyRefl.mkT 4 2 0 0 0 (13), PolyRefl.mkT 6 0 0 0 0 (-5)]
def f_cross_forms_3_4_33_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 0 (-1), PolyRefl.mkT 2 3 0 0 0 (-15), PolyRefl.mkT 4 1 0 0 0 (13)]
lemma form_cross_forms_3_4_33 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_33 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 6 (-5) f_cross_forms_3_4_33 f_cross_forms_3_4_33_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_34 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (-3), PolyRefl.mkT 2 8 0 0 0 (55), PolyRefl.mkT 4 6 0 0 0 (-198), PolyRefl.mkT 6 4 0 0 0 (198), PolyRefl.mkT 8 2 0 0 0 (-55), PolyRefl.mkT 10 0 0 0 0 (3)]
def f_cross_forms_3_4_34_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 9 0 0 0 (-3), PolyRefl.mkT 2 7 0 0 0 (55), PolyRefl.mkT 4 5 0 0 0 (-198), PolyRefl.mkT 6 3 0 0 0 (198), PolyRefl.mkT 8 1 0 0 0 (-55)]
lemma form_cross_forms_3_4_34 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_34 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 10 (3) f_cross_forms_3_4_34 f_cross_forms_3_4_34_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_35 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (-1), PolyRefl.mkT 2 8 0 0 0 (31), PolyRefl.mkT 4 6 0 0 0 (-178), PolyRefl.mkT 6 4 0 0 0 (198), PolyRefl.mkT 8 2 0 0 0 (-93), PolyRefl.mkT 10 0 0 0 0 (11)]
def f_cross_forms_3_4_35_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 9 0 0 0 (-1), PolyRefl.mkT 2 7 0 0 0 (31), PolyRefl.mkT 4 5 0 0 0 (-178), PolyRefl.mkT 6 3 0 0 0 (198), PolyRefl.mkT 8 1 0 0 0 (-93)]
lemma form_cross_forms_3_4_35 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_35 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 10 (11) f_cross_forms_3_4_35 f_cross_forms_3_4_35_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_36 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (-1), PolyRefl.mkT 2 6 0 0 0 (-22), PolyRefl.mkT 4 4 0 0 0 (60), PolyRefl.mkT 6 2 0 0 0 (-42), PolyRefl.mkT 8 0 0 0 0 (5)]
def f_cross_forms_3_4_36_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 7 0 0 0 (-1), PolyRefl.mkT 2 5 0 0 0 (-22), PolyRefl.mkT 4 3 0 0 0 (60), PolyRefl.mkT 6 1 0 0 0 (-42)]
lemma form_cross_forms_3_4_36 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_36 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 8 (5) f_cross_forms_3_4_36 f_cross_forms_3_4_36_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_37 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (1), PolyRefl.mkT 2 4 0 0 0 (3), PolyRefl.mkT 4 2 0 0 0 (-5), PolyRefl.mkT 6 0 0 0 0 (-7)]
def f_cross_forms_3_4_37_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 0 (1), PolyRefl.mkT 2 3 0 0 0 (3), PolyRefl.mkT 4 1 0 0 0 (-5)]
lemma form_cross_forms_3_4_37 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_37 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 6 (-7) f_cross_forms_3_4_37 f_cross_forms_3_4_37_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_38 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (-1), PolyRefl.mkT 2 8 0 0 0 (19), PolyRefl.mkT 4 6 0 0 0 (-18), PolyRefl.mkT 6 4 0 0 0 (14), PolyRefl.mkT 8 2 0 0 0 (35), PolyRefl.mkT 10 0 0 0 0 (-17)]
def f_cross_forms_3_4_38_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 9 0 0 0 (-1), PolyRefl.mkT 2 7 0 0 0 (19), PolyRefl.mkT 4 5 0 0 0 (-18), PolyRefl.mkT 6 3 0 0 0 (14), PolyRefl.mkT 8 1 0 0 0 (35)]
lemma form_cross_forms_3_4_38 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_38 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 10 (-17) f_cross_forms_3_4_38 f_cross_forms_3_4_38_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_39 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (-1), PolyRefl.mkT 2 6 0 0 0 (-8), PolyRefl.mkT 4 4 0 0 0 (30), PolyRefl.mkT 6 2 0 0 0 (16), PolyRefl.mkT 8 0 0 0 0 (-21)]
def f_cross_forms_3_4_39_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 7 0 0 0 (-1), PolyRefl.mkT 2 5 0 0 0 (-8), PolyRefl.mkT 4 3 0 0 0 (30), PolyRefl.mkT 6 1 0 0 0 (16)]
lemma form_cross_forms_3_4_39 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_39 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 8 (-21) f_cross_forms_3_4_39 f_cross_forms_3_4_39_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_40 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (1), PolyRefl.mkT 2 4 0 0 0 (-5), PolyRefl.mkT 4 2 0 0 0 (19), PolyRefl.mkT 6 0 0 0 0 (-7)]
def f_cross_forms_3_4_40_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 0 (1), PolyRefl.mkT 2 3 0 0 0 (-5), PolyRefl.mkT 4 1 0 0 0 (19)]
lemma form_cross_forms_3_4_40 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_40 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 6 (-7) f_cross_forms_3_4_40 f_cross_forms_3_4_40_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_41 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (1), PolyRefl.mkT 2 6 0 0 0 (-24), PolyRefl.mkT 4 4 0 0 0 (2), PolyRefl.mkT 6 2 0 0 0 (16), PolyRefl.mkT 8 0 0 0 0 (-11)]
def f_cross_forms_3_4_41_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 7 0 0 0 (1), PolyRefl.mkT 2 5 0 0 0 (-24), PolyRefl.mkT 4 3 0 0 0 (2), PolyRefl.mkT 6 1 0 0 0 (16)]
lemma form_cross_forms_3_4_41 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_41 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 8 (-11) f_cross_forms_3_4_41 f_cross_forms_3_4_41_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_42 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (1), PolyRefl.mkT 2 6 0 0 0 (20), PolyRefl.mkT 4 4 0 0 0 (-106), PolyRefl.mkT 6 2 0 0 0 (116), PolyRefl.mkT 8 0 0 0 0 (-15)]
def f_cross_forms_3_4_42_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 7 0 0 0 (1), PolyRefl.mkT 2 5 0 0 0 (20), PolyRefl.mkT 4 3 0 0 0 (-106), PolyRefl.mkT 6 1 0 0 0 (116)]
lemma form_cross_forms_3_4_42 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_42 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 8 (-15) f_cross_forms_3_4_42 f_cross_forms_3_4_42_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_43 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (-1), PolyRefl.mkT 2 6 0 0 0 (-24), PolyRefl.mkT 4 4 0 0 0 (14), PolyRefl.mkT 6 2 0 0 0 (32), PolyRefl.mkT 8 0 0 0 0 (-5)]
def f_cross_forms_3_4_43_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 7 0 0 0 (-1), PolyRefl.mkT 2 5 0 0 0 (-24), PolyRefl.mkT 4 3 0 0 0 (14), PolyRefl.mkT 6 1 0 0 0 (32)]
lemma form_cross_forms_3_4_43 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_43 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 8 (-5) f_cross_forms_3_4_43 f_cross_forms_3_4_43_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_44 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (1), PolyRefl.mkT 2 6 0 0 0 (22), PolyRefl.mkT 4 4 0 0 0 (-60), PolyRefl.mkT 6 2 0 0 0 (42), PolyRefl.mkT 8 0 0 0 0 (-5)]
def f_cross_forms_3_4_44_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 7 0 0 0 (1), PolyRefl.mkT 2 5 0 0 0 (22), PolyRefl.mkT 4 3 0 0 0 (-60), PolyRefl.mkT 6 1 0 0 0 (42)]
lemma form_cross_forms_3_4_44 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_44 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 8 (-5) f_cross_forms_3_4_44 f_cross_forms_3_4_44_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_45 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (-1), PolyRefl.mkT 2 8 0 0 0 (-18), PolyRefl.mkT 4 6 0 0 0 (78), PolyRefl.mkT 6 4 0 0 0 (-116), PolyRefl.mkT 8 2 0 0 0 (43), PolyRefl.mkT 10 0 0 0 0 (-2)]
def f_cross_forms_3_4_45_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (-1), PolyRefl.mkT 2 6 0 0 0 (-18), PolyRefl.mkT 4 4 0 0 0 (78), PolyRefl.mkT 6 2 0 0 0 (-116), PolyRefl.mkT 8 0 0 0 0 (43)]
lemma form_cross_forms_3_4_45 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_45 r s 1 1 1 ≠ 0 :=
  dyadic_gate_eval 10 1 (-1) f_cross_forms_3_4_45 f_cross_forms_3_4_45_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_46 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (-3), PolyRefl.mkT 2 6 0 0 0 (4), PolyRefl.mkT 4 4 0 0 0 (14), PolyRefl.mkT 6 2 0 0 0 (4), PolyRefl.mkT 8 0 0 0 0 (-3)]
def f_cross_forms_3_4_46_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 7 0 0 0 (-3), PolyRefl.mkT 2 5 0 0 0 (4), PolyRefl.mkT 4 3 0 0 0 (14), PolyRefl.mkT 6 1 0 0 0 (4)]
lemma form_cross_forms_3_4_46 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_46 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 8 (-3) f_cross_forms_3_4_46 f_cross_forms_3_4_46_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_47 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (-9), PolyRefl.mkT 2 8 0 0 0 (87), PolyRefl.mkT 4 6 0 0 0 (-226), PolyRefl.mkT 6 4 0 0 0 (150), PolyRefl.mkT 8 2 0 0 0 (-37), PolyRefl.mkT 10 0 0 0 0 (3)]
def f_cross_forms_3_4_47_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 9 0 0 0 (-9), PolyRefl.mkT 2 7 0 0 0 (87), PolyRefl.mkT 4 5 0 0 0 (-226), PolyRefl.mkT 6 3 0 0 0 (150), PolyRefl.mkT 8 1 0 0 0 (-37)]
lemma form_cross_forms_3_4_47 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_47 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 10 (3) f_cross_forms_3_4_47 f_cross_forms_3_4_47_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_48 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (9), PolyRefl.mkT 2 6 0 0 0 (-60), PolyRefl.mkT 4 4 0 0 0 (118), PolyRefl.mkT 6 2 0 0 0 (-60), PolyRefl.mkT 8 0 0 0 0 (9)]
def f_cross_forms_3_4_48_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 7 0 0 0 (9), PolyRefl.mkT 2 5 0 0 0 (-60), PolyRefl.mkT 4 3 0 0 0 (118), PolyRefl.mkT 6 1 0 0 0 (-60)]
lemma form_cross_forms_3_4_48 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_48 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 8 (9) f_cross_forms_3_4_48 f_cross_forms_3_4_48_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_49 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (-7), PolyRefl.mkT 2 6 0 0 0 (-4), PolyRefl.mkT 4 4 0 0 0 (14), PolyRefl.mkT 6 2 0 0 0 (12), PolyRefl.mkT 8 0 0 0 0 (1)]
def f_cross_forms_3_4_49_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 7 0 0 0 (-7), PolyRefl.mkT 2 5 0 0 0 (-4), PolyRefl.mkT 4 3 0 0 0 (14), PolyRefl.mkT 6 1 0 0 0 (12)]
lemma form_cross_forms_3_4_49 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_49 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 8 (1) f_cross_forms_3_4_49 f_cross_forms_3_4_49_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_50 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (1), PolyRefl.mkT 2 6 0 0 0 (-18), PolyRefl.mkT 4 4 0 0 0 (60), PolyRefl.mkT 6 2 0 0 0 (-46), PolyRefl.mkT 8 0 0 0 0 (3)]
def f_cross_forms_3_4_50_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 7 0 0 0 (1), PolyRefl.mkT 2 5 0 0 0 (-18), PolyRefl.mkT 4 3 0 0 0 (60), PolyRefl.mkT 6 1 0 0 0 (-46)]
lemma form_cross_forms_3_4_50 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_50 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 8 (3) f_cross_forms_3_4_50 f_cross_forms_3_4_50_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_51 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (-1), PolyRefl.mkT 2 4 0 0 0 (5), PolyRefl.mkT 4 2 0 0 0 (5), PolyRefl.mkT 6 0 0 0 0 (-1)]
def f_cross_forms_3_4_51_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 0 (-1), PolyRefl.mkT 2 3 0 0 0 (5), PolyRefl.mkT 4 1 0 0 0 (5)]
lemma form_cross_forms_3_4_51 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_51 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 6 (-1) f_cross_forms_3_4_51 f_cross_forms_3_4_51_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_52 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (5), PolyRefl.mkT 2 8 0 0 0 (-67), PolyRefl.mkT 4 6 0 0 0 (178), PolyRefl.mkT 6 4 0 0 0 (-198), PolyRefl.mkT 8 2 0 0 0 (57), PolyRefl.mkT 10 0 0 0 0 (-7)]
def f_cross_forms_3_4_52_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 9 0 0 0 (5), PolyRefl.mkT 2 7 0 0 0 (-67), PolyRefl.mkT 4 5 0 0 0 (178), PolyRefl.mkT 6 3 0 0 0 (-198), PolyRefl.mkT 8 1 0 0 0 (57)]
lemma form_cross_forms_3_4_52 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_52 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 10 (-7) f_cross_forms_3_4_52 f_cross_forms_3_4_52_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_53 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (1), PolyRefl.mkT 2 6 0 0 0 (24), PolyRefl.mkT 4 4 0 0 0 (-14), PolyRefl.mkT 6 2 0 0 0 (-32), PolyRefl.mkT 8 0 0 0 0 (5)]
def f_cross_forms_3_4_53_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 7 0 0 0 (1), PolyRefl.mkT 2 5 0 0 0 (24), PolyRefl.mkT 4 3 0 0 0 (-14), PolyRefl.mkT 6 1 0 0 0 (-32)]
lemma form_cross_forms_3_4_53 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_53 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 8 (5) f_cross_forms_3_4_53 f_cross_forms_3_4_53_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_54 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (1), PolyRefl.mkT 2 8 0 0 0 (-35), PolyRefl.mkT 4 6 0 0 0 (90), PolyRefl.mkT 6 4 0 0 0 (42), PolyRefl.mkT 8 2 0 0 0 (-75), PolyRefl.mkT 10 0 0 0 0 (9)]
def f_cross_forms_3_4_54_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 9 0 0 0 (1), PolyRefl.mkT 2 7 0 0 0 (-35), PolyRefl.mkT 4 5 0 0 0 (90), PolyRefl.mkT 6 3 0 0 0 (42), PolyRefl.mkT 8 1 0 0 0 (-75)]
lemma form_cross_forms_3_4_54 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_54 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 10 (9) f_cross_forms_3_4_54 f_cross_forms_3_4_54_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_55 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (-1), PolyRefl.mkT 2 6 0 0 0 (24), PolyRefl.mkT 4 4 0 0 0 (-2), PolyRefl.mkT 6 2 0 0 0 (-16), PolyRefl.mkT 8 0 0 0 0 (11)]
def f_cross_forms_3_4_55_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 7 0 0 0 (-1), PolyRefl.mkT 2 5 0 0 0 (24), PolyRefl.mkT 4 3 0 0 0 (-2), PolyRefl.mkT 6 1 0 0 0 (-16)]
lemma form_cross_forms_3_4_55 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_55 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 8 (11) f_cross_forms_3_4_55 f_cross_forms_3_4_55_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_56 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (3), PolyRefl.mkT 2 6 0 0 0 (-4), PolyRefl.mkT 4 4 0 0 0 (-14), PolyRefl.mkT 6 2 0 0 0 (-4), PolyRefl.mkT 8 0 0 0 0 (3)]
def f_cross_forms_3_4_56_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 7 0 0 0 (3), PolyRefl.mkT 2 5 0 0 0 (-4), PolyRefl.mkT 4 3 0 0 0 (-14), PolyRefl.mkT 6 1 0 0 0 (-4)]
lemma form_cross_forms_3_4_56 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_56 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 8 (3) f_cross_forms_3_4_56 f_cross_forms_3_4_56_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_57 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (3), PolyRefl.mkT 2 6 0 0 0 (-16), PolyRefl.mkT 4 4 0 0 0 (14), PolyRefl.mkT 6 2 0 0 0 (24), PolyRefl.mkT 8 0 0 0 0 (-9)]
def f_cross_forms_3_4_57_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 7 0 0 0 (3), PolyRefl.mkT 2 5 0 0 0 (-16), PolyRefl.mkT 4 3 0 0 0 (14), PolyRefl.mkT 6 1 0 0 0 (24)]
lemma form_cross_forms_3_4_57 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_57 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 8 (-9) f_cross_forms_3_4_57 f_cross_forms_3_4_57_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_58 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (-1), PolyRefl.mkT 2 8 0 0 0 (9), PolyRefl.mkT 4 6 0 0 0 (-78), PolyRefl.mkT 6 4 0 0 0 (134), PolyRefl.mkT 8 2 0 0 0 (-33), PolyRefl.mkT 10 0 0 0 0 (1)]
def f_cross_forms_3_4_58_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 9 0 0 0 (-1), PolyRefl.mkT 2 7 0 0 0 (9), PolyRefl.mkT 4 5 0 0 0 (-78), PolyRefl.mkT 6 3 0 0 0 (134), PolyRefl.mkT 8 1 0 0 0 (-33)]
lemma form_cross_forms_3_4_58 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_58 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 10 (1) f_cross_forms_3_4_58 f_cross_forms_3_4_58_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_59 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (-1), PolyRefl.mkT 2 4 0 0 0 (9), PolyRefl.mkT 4 2 0 0 0 (5), PolyRefl.mkT 6 0 0 0 0 (-5)]
def f_cross_forms_3_4_59_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 0 (-1), PolyRefl.mkT 2 3 0 0 0 (9), PolyRefl.mkT 4 1 0 0 0 (5)]
lemma form_cross_forms_3_4_59 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_59 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 6 (-5) f_cross_forms_3_4_59 f_cross_forms_3_4_59_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_60 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (-1), PolyRefl.mkT 2 8 0 0 0 (-5), PolyRefl.mkT 4 6 0 0 0 (62), PolyRefl.mkT 6 4 0 0 0 (14), PolyRefl.mkT 8 2 0 0 0 (-45), PolyRefl.mkT 10 0 0 0 0 (7)]
def f_cross_forms_3_4_60_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 9 0 0 0 (-1), PolyRefl.mkT 2 7 0 0 0 (-5), PolyRefl.mkT 4 5 0 0 0 (62), PolyRefl.mkT 6 3 0 0 0 (14), PolyRefl.mkT 8 1 0 0 0 (-45)]
lemma form_cross_forms_3_4_60 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_60 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 10 (7) f_cross_forms_3_4_60 f_cross_forms_3_4_60_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_61 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (7), PolyRefl.mkT 2 6 0 0 0 (4), PolyRefl.mkT 4 4 0 0 0 (-14), PolyRefl.mkT 6 2 0 0 0 (-12), PolyRefl.mkT 8 0 0 0 0 (-1)]
def f_cross_forms_3_4_61_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 7 0 0 0 (7), PolyRefl.mkT 2 5 0 0 0 (4), PolyRefl.mkT 4 3 0 0 0 (-14), PolyRefl.mkT 6 1 0 0 0 (-12)]
lemma form_cross_forms_3_4_61 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_61 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 8 (-1) f_cross_forms_3_4_61 f_cross_forms_3_4_61_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_62 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (-1), PolyRefl.mkT 2 8 0 0 0 (17), PolyRefl.mkT 4 6 0 0 0 (-42), PolyRefl.mkT 6 4 0 0 0 (-14), PolyRefl.mkT 8 2 0 0 0 (43), PolyRefl.mkT 10 0 0 0 0 (-3)]
def f_cross_forms_3_4_62_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 9 0 0 0 (-1), PolyRefl.mkT 2 7 0 0 0 (17), PolyRefl.mkT 4 5 0 0 0 (-42), PolyRefl.mkT 6 3 0 0 0 (-14), PolyRefl.mkT 8 1 0 0 0 (43)]
lemma form_cross_forms_3_4_62 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_62 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 10 (-3) f_cross_forms_3_4_62 f_cross_forms_3_4_62_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_63 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (1), PolyRefl.mkT 2 6 0 0 0 (8), PolyRefl.mkT 4 4 0 0 0 (-30), PolyRefl.mkT 6 2 0 0 0 (-16), PolyRefl.mkT 8 0 0 0 0 (21)]
def f_cross_forms_3_4_63_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 7 0 0 0 (1), PolyRefl.mkT 2 5 0 0 0 (8), PolyRefl.mkT 4 3 0 0 0 (-30), PolyRefl.mkT 6 1 0 0 0 (-16)]
lemma form_cross_forms_3_4_63 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_63 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 8 (21) f_cross_forms_3_4_63 f_cross_forms_3_4_63_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_64 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (1), PolyRefl.mkT 2 4 0 0 0 (-9), PolyRefl.mkT 4 2 0 0 0 (19), PolyRefl.mkT 6 0 0 0 0 (-3)]
def f_cross_forms_3_4_64_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 0 (1), PolyRefl.mkT 2 3 0 0 0 (-9), PolyRefl.mkT 4 1 0 0 0 (19)]
lemma form_cross_forms_3_4_64 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_64 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 6 (-3) f_cross_forms_3_4_64 f_cross_forms_3_4_64_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_65 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (-7), PolyRefl.mkT 2 8 0 0 0 (57), PolyRefl.mkT 4 6 0 0 0 (-198), PolyRefl.mkT 6 4 0 0 0 (178), PolyRefl.mkT 8 2 0 0 0 (-67), PolyRefl.mkT 10 0 0 0 0 (5)]
def f_cross_forms_3_4_65_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 9 0 0 0 (-7), PolyRefl.mkT 2 7 0 0 0 (57), PolyRefl.mkT 4 5 0 0 0 (-198), PolyRefl.mkT 6 3 0 0 0 (178), PolyRefl.mkT 8 1 0 0 0 (-67)]
lemma form_cross_forms_3_4_65 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_65 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 10 (5) f_cross_forms_3_4_65 f_cross_forms_3_4_65_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_66 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (1), PolyRefl.mkT 2 8 0 0 0 (18), PolyRefl.mkT 4 6 0 0 0 (-78), PolyRefl.mkT 6 4 0 0 0 (116), PolyRefl.mkT 8 2 0 0 0 (-43), PolyRefl.mkT 10 0 0 0 0 (2)]
def f_cross_forms_3_4_66_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (1), PolyRefl.mkT 2 6 0 0 0 (18), PolyRefl.mkT 4 4 0 0 0 (-78), PolyRefl.mkT 6 2 0 0 0 (116), PolyRefl.mkT 8 0 0 0 0 (-43)]
lemma form_cross_forms_3_4_66 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_66 r s 1 1 1 ≠ 0 :=
  dyadic_gate_eval 10 1 (1) f_cross_forms_3_4_66 f_cross_forms_3_4_66_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_67 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (-1), PolyRefl.mkT 2 8 0 0 0 (11), PolyRefl.mkT 4 6 0 0 0 (-10), PolyRefl.mkT 6 4 0 0 0 (-42), PolyRefl.mkT 8 2 0 0 0 (-5), PolyRefl.mkT 10 0 0 0 0 (15)]
def f_cross_forms_3_4_67_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 9 0 0 0 (-1), PolyRefl.mkT 2 7 0 0 0 (11), PolyRefl.mkT 4 5 0 0 0 (-10), PolyRefl.mkT 6 3 0 0 0 (-42), PolyRefl.mkT 8 1 0 0 0 (-5)]
lemma form_cross_forms_3_4_67 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_67 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 10 (15) f_cross_forms_3_4_67 f_cross_forms_3_4_67_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_68 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (-1), PolyRefl.mkT 2 4 0 0 0 (-3), PolyRefl.mkT 4 2 0 0 0 (5), PolyRefl.mkT 6 0 0 0 0 (7)]
def f_cross_forms_3_4_68_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 0 (-1), PolyRefl.mkT 2 3 0 0 0 (-3), PolyRefl.mkT 4 1 0 0 0 (5)]
lemma form_cross_forms_3_4_68 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_68 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 6 (7) f_cross_forms_3_4_68 f_cross_forms_3_4_68_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_69 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (-1), PolyRefl.mkT 2 4 0 0 0 (5), PolyRefl.mkT 4 2 0 0 0 (-19), PolyRefl.mkT 6 0 0 0 0 (7)]
def f_cross_forms_3_4_69_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 0 (-1), PolyRefl.mkT 2 3 0 0 0 (5), PolyRefl.mkT 4 1 0 0 0 (-19)]
lemma form_cross_forms_3_4_69 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_69 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 6 (7) f_cross_forms_3_4_69 f_cross_forms_3_4_69_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_70 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (-11), PolyRefl.mkT 2 8 0 0 0 (93), PolyRefl.mkT 4 6 0 0 0 (-198), PolyRefl.mkT 6 4 0 0 0 (178), PolyRefl.mkT 8 2 0 0 0 (-31), PolyRefl.mkT 10 0 0 0 0 (1)]
def f_cross_forms_3_4_70_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 9 0 0 0 (-11), PolyRefl.mkT 2 7 0 0 0 (93), PolyRefl.mkT 4 5 0 0 0 (-198), PolyRefl.mkT 6 3 0 0 0 (178), PolyRefl.mkT 8 1 0 0 0 (-31)]
lemma form_cross_forms_3_4_70 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_70 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 10 (1) f_cross_forms_3_4_70 f_cross_forms_3_4_70_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_71 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (1), PolyRefl.mkT 2 6 0 0 0 (12), PolyRefl.mkT 4 4 0 0 0 (14), PolyRefl.mkT 6 2 0 0 0 (-4), PolyRefl.mkT 8 0 0 0 0 (-7)]
def f_cross_forms_3_4_71_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 7 0 0 0 (1), PolyRefl.mkT 2 5 0 0 0 (12), PolyRefl.mkT 4 3 0 0 0 (14), PolyRefl.mkT 6 1 0 0 0 (-4)]
lemma form_cross_forms_3_4_71 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_71 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 8 (-7) f_cross_forms_3_4_71 f_cross_forms_3_4_71_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_72 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (1), PolyRefl.mkT 2 4 0 0 0 (-5), PolyRefl.mkT 4 2 0 0 0 (-5), PolyRefl.mkT 6 0 0 0 0 (1)]
def f_cross_forms_3_4_72_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 0 (1), PolyRefl.mkT 2 3 0 0 0 (-5), PolyRefl.mkT 4 1 0 0 0 (-5)]
lemma form_cross_forms_3_4_72 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_72 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 6 (1) f_cross_forms_3_4_72 f_cross_forms_3_4_72_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_73 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (1), PolyRefl.mkT 2 8 0 0 0 (-12), PolyRefl.mkT 4 6 0 0 0 (82), PolyRefl.mkT 6 4 0 0 0 (-120), PolyRefl.mkT 8 2 0 0 0 (37), PolyRefl.mkT 10 0 0 0 0 (-4)]
lemma form_cross_forms_3_4_73 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_73 r s 1 1 1 ≠ 0 :=
  sieve_gate 3 (by norm_num) f_cross_forms_3_4_73 (by decide +kernel) hco

def f_cross_forms_3_4_74 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (9), PolyRefl.mkT 2 6 0 0 0 (-24), PolyRefl.mkT 4 4 0 0 0 (-14), PolyRefl.mkT 6 2 0 0 0 (16), PolyRefl.mkT 8 0 0 0 0 (-3)]
def f_cross_forms_3_4_74_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 7 0 0 0 (9), PolyRefl.mkT 2 5 0 0 0 (-24), PolyRefl.mkT 4 3 0 0 0 (-14), PolyRefl.mkT 6 1 0 0 0 (16)]
lemma form_cross_forms_3_4_74 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_74 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 8 (-3) f_cross_forms_3_4_74 f_cross_forms_3_4_74_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_75 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (1), PolyRefl.mkT 2 4 0 0 0 (-9), PolyRefl.mkT 4 2 0 0 0 (-5), PolyRefl.mkT 6 0 0 0 0 (5)]
def f_cross_forms_3_4_75_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 0 (1), PolyRefl.mkT 2 3 0 0 0 (-9), PolyRefl.mkT 4 1 0 0 0 (-5)]
lemma form_cross_forms_3_4_75 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_75 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 6 (5) f_cross_forms_3_4_75 f_cross_forms_3_4_75_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_76 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (-1), PolyRefl.mkT 2 4 0 0 0 (1), PolyRefl.mkT 4 2 0 0 0 (5), PolyRefl.mkT 6 0 0 0 0 (3)]
def f_cross_forms_3_4_76_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 0 (-1), PolyRefl.mkT 2 3 0 0 0 (1), PolyRefl.mkT 4 1 0 0 0 (5)]
lemma form_cross_forms_3_4_76 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_76 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 6 (3) f_cross_forms_3_4_76 f_cross_forms_3_4_76_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_3_4_77 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (-1), PolyRefl.mkT 2 4 0 0 0 (9), PolyRefl.mkT 4 2 0 0 0 (-19), PolyRefl.mkT 6 0 0 0 0 (3)]
def f_cross_forms_3_4_77_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 0 (-1), PolyRefl.mkT 2 3 0 0 0 (9), PolyRefl.mkT 4 1 0 0 0 (-19)]
lemma form_cross_forms_3_4_77 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_3_4_77 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 6 (3) f_cross_forms_3_4_77 f_cross_forms_3_4_77_rest (by decide +kernel) (by decide +kernel) hr hs

end CertForms
