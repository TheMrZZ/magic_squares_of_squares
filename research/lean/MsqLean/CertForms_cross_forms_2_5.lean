/- Generated: nonvanishing of the certifier's minimal-layer forms
   at grid cross_forms_2_5. Uniform statements: eval formData r s 1 1 ≠ 0. -/
import MsqLean.CertKit
import MsqLean.PolyRefl

set_option maxRecDepth 100000
set_option maxHeartbeats 2000000

namespace CertForms
open CertKit

def f_cross_forms_2_5_0 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 (1), PolyRefl.mkT 2 4 0 0 (-5), PolyRefl.mkT 4 2 0 0 (19), PolyRefl.mkT 6 0 0 0 (-7)]
def f_cross_forms_2_5_0_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 (1), PolyRefl.mkT 2 3 0 0 (-5), PolyRefl.mkT 4 1 0 0 (19)]
lemma form_cross_forms_2_5_0 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_5_0 r s 1 1 ≠ 0 :=
  parity_gate_eval 6 (-7) f_cross_forms_2_5_0 f_cross_forms_2_5_0_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_5_1 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 (-1), PolyRefl.mkT 2 4 0 0 (-3), PolyRefl.mkT 4 2 0 0 (5), PolyRefl.mkT 6 0 0 0 (7)]
def f_cross_forms_2_5_1_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 (-1), PolyRefl.mkT 2 3 0 0 (-3), PolyRefl.mkT 4 1 0 0 (5)]
lemma form_cross_forms_2_5_1 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_5_1 r s 1 1 ≠ 0 :=
  parity_gate_eval 6 (7) f_cross_forms_2_5_1 f_cross_forms_2_5_1_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_5_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 (1), PolyRefl.mkT 2 4 0 0 (-5), PolyRefl.mkT 4 2 0 0 (-5), PolyRefl.mkT 6 0 0 0 (1)]
def f_cross_forms_2_5_2_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 (1), PolyRefl.mkT 2 3 0 0 (-5), PolyRefl.mkT 4 1 0 0 (-5)]
lemma form_cross_forms_2_5_2 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_5_2 r s 1 1 ≠ 0 :=
  parity_gate_eval 6 (1) f_cross_forms_2_5_2 f_cross_forms_2_5_2_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_5_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 (1), PolyRefl.mkT 2 4 0 0 (3), PolyRefl.mkT 4 2 0 0 (-5), PolyRefl.mkT 6 0 0 0 (-7)]
def f_cross_forms_2_5_3_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 (1), PolyRefl.mkT 2 3 0 0 (3), PolyRefl.mkT 4 1 0 0 (-5)]
lemma form_cross_forms_2_5_3 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_5_3 r s 1 1 ≠ 0 :=
  parity_gate_eval 6 (-7) f_cross_forms_2_5_3 f_cross_forms_2_5_3_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_5_4 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 (-3), PolyRefl.mkT 2 0 0 0 (1)]
def f_cross_forms_2_5_4_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 (-3)]
lemma form_cross_forms_2_5_4 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_5_4 r s 1 1 ≠ 0 :=
  parity_gate_eval 2 (1) f_cross_forms_2_5_4 f_cross_forms_2_5_4_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_5_5 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 (-1), PolyRefl.mkT 2 4 0 0 (1), PolyRefl.mkT 4 2 0 0 (5), PolyRefl.mkT 6 0 0 0 (3)]
def f_cross_forms_2_5_5_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 (-1), PolyRefl.mkT 2 3 0 0 (1), PolyRefl.mkT 4 1 0 0 (5)]
lemma form_cross_forms_2_5_5 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_5_5 r s 1 1 ≠ 0 :=
  parity_gate_eval 6 (3) f_cross_forms_2_5_5 f_cross_forms_2_5_5_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_5_6 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 (-1), PolyRefl.mkT 2 4 0 0 (9), PolyRefl.mkT 4 2 0 0 (5), PolyRefl.mkT 6 0 0 0 (-5)]
def f_cross_forms_2_5_6_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 (-1), PolyRefl.mkT 2 3 0 0 (9), PolyRefl.mkT 4 1 0 0 (5)]
lemma form_cross_forms_2_5_6 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_5_6 r s 1 1 ≠ 0 :=
  parity_gate_eval 6 (-5) f_cross_forms_2_5_6 f_cross_forms_2_5_6_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_5_7 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 (3), PolyRefl.mkT 2 4 0 0 (-13), PolyRefl.mkT 4 2 0 0 (13), PolyRefl.mkT 6 0 0 0 (-3)]
def f_cross_forms_2_5_7_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 (3), PolyRefl.mkT 2 3 0 0 (-13), PolyRefl.mkT 4 1 0 0 (13)]
lemma form_cross_forms_2_5_7 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_5_7 r s 1 1 ≠ 0 :=
  parity_gate_eval 6 (-3) f_cross_forms_2_5_7 f_cross_forms_2_5_7_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_5_8 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 (-1), PolyRefl.mkT 2 4 0 0 (5), PolyRefl.mkT 4 2 0 0 (-19), PolyRefl.mkT 6 0 0 0 (7)]
def f_cross_forms_2_5_8_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 (-1), PolyRefl.mkT 2 3 0 0 (5), PolyRefl.mkT 4 1 0 0 (-19)]
lemma form_cross_forms_2_5_8 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_5_8 r s 1 1 ≠ 0 :=
  parity_gate_eval 6 (7) f_cross_forms_2_5_8 f_cross_forms_2_5_8_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_5_9 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 (-1), PolyRefl.mkT 2 4 0 0 (-15), PolyRefl.mkT 4 2 0 0 (13), PolyRefl.mkT 6 0 0 0 (-5)]
def f_cross_forms_2_5_9_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 (-1), PolyRefl.mkT 2 3 0 0 (-15), PolyRefl.mkT 4 1 0 0 (13)]
lemma form_cross_forms_2_5_9 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_5_9 r s 1 1 ≠ 0 :=
  parity_gate_eval 6 (-5) f_cross_forms_2_5_9 f_cross_forms_2_5_9_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_5_10 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 (1), PolyRefl.mkT 2 4 0 0 (-9), PolyRefl.mkT 4 2 0 0 (19), PolyRefl.mkT 6 0 0 0 (-3)]
def f_cross_forms_2_5_10_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 (1), PolyRefl.mkT 2 3 0 0 (-9), PolyRefl.mkT 4 1 0 0 (19)]
lemma form_cross_forms_2_5_10 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_5_10 r s 1 1 ≠ 0 :=
  parity_gate_eval 6 (-3) f_cross_forms_2_5_10 f_cross_forms_2_5_10_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_5_11 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 (1), PolyRefl.mkT 2 4 0 0 (19), PolyRefl.mkT 4 2 0 0 (-13), PolyRefl.mkT 6 0 0 0 (1)]
def f_cross_forms_2_5_11_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 (1), PolyRefl.mkT 2 3 0 0 (19), PolyRefl.mkT 4 1 0 0 (-13)]
lemma form_cross_forms_2_5_11 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_5_11 r s 1 1 ≠ 0 :=
  parity_gate_eval 6 (1) f_cross_forms_2_5_11 f_cross_forms_2_5_11_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_5_12 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 (-1), PolyRefl.mkT 2 4 0 0 (-19), PolyRefl.mkT 4 2 0 0 (13), PolyRefl.mkT 6 0 0 0 (-1)]
def f_cross_forms_2_5_12_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 (-1), PolyRefl.mkT 2 3 0 0 (-19), PolyRefl.mkT 4 1 0 0 (13)]
lemma form_cross_forms_2_5_12 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_5_12 r s 1 1 ≠ 0 :=
  parity_gate_eval 6 (-1) f_cross_forms_2_5_12 f_cross_forms_2_5_12_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_5_13 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 (1), PolyRefl.mkT 2 4 0 0 (15), PolyRefl.mkT 4 2 0 0 (-13), PolyRefl.mkT 6 0 0 0 (5)]
def f_cross_forms_2_5_13_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 (1), PolyRefl.mkT 2 3 0 0 (15), PolyRefl.mkT 4 1 0 0 (-13)]
lemma form_cross_forms_2_5_13 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_5_13 r s 1 1 ≠ 0 :=
  parity_gate_eval 6 (5) f_cross_forms_2_5_13 f_cross_forms_2_5_13_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_5_14 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 (1), PolyRefl.mkT 2 4 0 0 (-9), PolyRefl.mkT 4 2 0 0 (-5), PolyRefl.mkT 6 0 0 0 (5)]
def f_cross_forms_2_5_14_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 (1), PolyRefl.mkT 2 3 0 0 (-9), PolyRefl.mkT 4 1 0 0 (-5)]
lemma form_cross_forms_2_5_14 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_5_14 r s 1 1 ≠ 0 :=
  parity_gate_eval 6 (5) f_cross_forms_2_5_14 f_cross_forms_2_5_14_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_5_15 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 (-1), PolyRefl.mkT 2 4 0 0 (9), PolyRefl.mkT 4 2 0 0 (-19), PolyRefl.mkT 6 0 0 0 (3)]
def f_cross_forms_2_5_15_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 (-1), PolyRefl.mkT 2 3 0 0 (9), PolyRefl.mkT 4 1 0 0 (-19)]
lemma form_cross_forms_2_5_15 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_5_15 r s 1 1 ≠ 0 :=
  parity_gate_eval 6 (3) f_cross_forms_2_5_15 f_cross_forms_2_5_15_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_5_16 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 (-3), PolyRefl.mkT 2 4 0 0 (13), PolyRefl.mkT 4 2 0 0 (-13), PolyRefl.mkT 6 0 0 0 (3)]
def f_cross_forms_2_5_16_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 (-3), PolyRefl.mkT 2 3 0 0 (13), PolyRefl.mkT 4 1 0 0 (-13)]
lemma form_cross_forms_2_5_16 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_5_16 r s 1 1 ≠ 0 :=
  parity_gate_eval 6 (3) f_cross_forms_2_5_16 f_cross_forms_2_5_16_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_5_17 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 (-1), PolyRefl.mkT 2 4 0 0 (5), PolyRefl.mkT 4 2 0 0 (5), PolyRefl.mkT 6 0 0 0 (-1)]
def f_cross_forms_2_5_17_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 (-1), PolyRefl.mkT 2 3 0 0 (5), PolyRefl.mkT 4 1 0 0 (5)]
lemma form_cross_forms_2_5_17 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_5_17 r s 1 1 ≠ 0 :=
  parity_gate_eval 6 (-1) f_cross_forms_2_5_17 f_cross_forms_2_5_17_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_5_18 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 (1), PolyRefl.mkT 2 4 0 0 (-15), PolyRefl.mkT 4 2 0 0 (15), PolyRefl.mkT 6 0 0 0 (-1)]
def f_cross_forms_2_5_18_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 (1), PolyRefl.mkT 2 3 0 0 (-15), PolyRefl.mkT 4 1 0 0 (15)]
lemma form_cross_forms_2_5_18 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_5_18 r s 1 1 ≠ 0 :=
  parity_gate_eval 6 (-1) f_cross_forms_2_5_18 f_cross_forms_2_5_18_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_5_19 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 (-1), PolyRefl.mkT 2 0 0 0 (3)]
def f_cross_forms_2_5_19_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 (-1)]
lemma form_cross_forms_2_5_19 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_5_19 r s 1 1 ≠ 0 :=
  parity_gate_eval 2 (3) f_cross_forms_2_5_19 f_cross_forms_2_5_19_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_5_20 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 (3), PolyRefl.mkT 2 0 0 0 (-1)]
def f_cross_forms_2_5_20_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 (3)]
lemma form_cross_forms_2_5_20 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_5_20 r s 1 1 ≠ 0 :=
  parity_gate_eval 2 (-1) f_cross_forms_2_5_20 f_cross_forms_2_5_20_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_5_21 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 (-1), PolyRefl.mkT 2 4 0 0 (15), PolyRefl.mkT 4 2 0 0 (-15), PolyRefl.mkT 6 0 0 0 (1)]
def f_cross_forms_2_5_21_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 (-1), PolyRefl.mkT 2 3 0 0 (15), PolyRefl.mkT 4 1 0 0 (-15)]
lemma form_cross_forms_2_5_21 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_5_21 r s 1 1 ≠ 0 :=
  parity_gate_eval 6 (1) f_cross_forms_2_5_21 f_cross_forms_2_5_21_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_5_22 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 (1), PolyRefl.mkT 2 4 0 0 (-1), PolyRefl.mkT 4 2 0 0 (-5), PolyRefl.mkT 6 0 0 0 (-3)]
def f_cross_forms_2_5_22_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 (1), PolyRefl.mkT 2 3 0 0 (-1), PolyRefl.mkT 4 1 0 0 (-5)]
lemma form_cross_forms_2_5_22 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_5_22 r s 1 1 ≠ 0 :=
  parity_gate_eval 6 (-3) f_cross_forms_2_5_22 f_cross_forms_2_5_22_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_5_23 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 (1), PolyRefl.mkT 2 0 0 0 (-3)]
def f_cross_forms_2_5_23_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 1 0 0 (1)]
lemma form_cross_forms_2_5_23 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_5_23 r s 1 1 ≠ 0 :=
  parity_gate_eval 2 (-3) f_cross_forms_2_5_23 f_cross_forms_2_5_23_rest (by decide +kernel) (by decide +kernel) hr hs

end CertForms
