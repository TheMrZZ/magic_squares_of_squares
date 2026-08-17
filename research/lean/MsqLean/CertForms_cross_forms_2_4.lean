/- Generated: nonvanishing of the certifier's minimal-layer forms
   at grid cross_forms_2_4. Uniform statements: eval formData r s 1 1 1 ≠ 0. -/
import MsqLean.CertKit
import MsqLean.PolyRefl

set_option maxRecDepth 100000
set_option maxHeartbeats 2000000

namespace CertForms
open CertKit

def f_cross_forms_2_4_0 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (1), PolyRefl.mkT 2 4 0 0 0 (-5), PolyRefl.mkT 4 2 0 0 0 (19), PolyRefl.mkT 6 0 0 0 0 (-7)]
def f_cross_forms_2_4_0_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 0 (1), PolyRefl.mkT 2 3 0 0 0 (-5), PolyRefl.mkT 4 1 0 0 0 (19)]
lemma form_cross_forms_2_4_0 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_4_0 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 6 (-7) f_cross_forms_2_4_0 f_cross_forms_2_4_0_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_4_1 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (1), PolyRefl.mkT 2 4 0 0 0 (19), PolyRefl.mkT 4 2 0 0 0 (-13), PolyRefl.mkT 6 0 0 0 0 (1)]
def f_cross_forms_2_4_1_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 0 (1), PolyRefl.mkT 2 3 0 0 0 (19), PolyRefl.mkT 4 1 0 0 0 (-13)]
lemma form_cross_forms_2_4_1 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_4_1 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 6 (1) f_cross_forms_2_4_1 f_cross_forms_2_4_1_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_4_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (-1), PolyRefl.mkT 2 4 0 0 0 (1), PolyRefl.mkT 4 2 0 0 0 (5), PolyRefl.mkT 6 0 0 0 0 (3)]
def f_cross_forms_2_4_2_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 0 (-1), PolyRefl.mkT 2 3 0 0 0 (1), PolyRefl.mkT 4 1 0 0 0 (5)]
lemma form_cross_forms_2_4_2 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_4_2 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 6 (3) f_cross_forms_2_4_2 f_cross_forms_2_4_2_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_4_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (1), PolyRefl.mkT 2 4 0 0 0 (15), PolyRefl.mkT 4 2 0 0 0 (-13), PolyRefl.mkT 6 0 0 0 0 (5)]
def f_cross_forms_2_4_3_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 0 (1), PolyRefl.mkT 2 3 0 0 0 (15), PolyRefl.mkT 4 1 0 0 0 (-13)]
lemma form_cross_forms_2_4_3 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_4_3 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 6 (5) f_cross_forms_2_4_3 f_cross_forms_2_4_3_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_4_4 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (1), PolyRefl.mkT 2 4 0 0 0 (-5), PolyRefl.mkT 4 2 0 0 0 (-5), PolyRefl.mkT 6 0 0 0 0 (1)]
def f_cross_forms_2_4_4_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 0 (1), PolyRefl.mkT 2 3 0 0 0 (-5), PolyRefl.mkT 4 1 0 0 0 (-5)]
lemma form_cross_forms_2_4_4 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_4_4 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 6 (1) f_cross_forms_2_4_4 f_cross_forms_2_4_4_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_4_5 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (1), PolyRefl.mkT 2 4 0 0 0 (-1), PolyRefl.mkT 4 2 0 0 0 (-5), PolyRefl.mkT 6 0 0 0 0 (-3)]
def f_cross_forms_2_4_5_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 0 (1), PolyRefl.mkT 2 3 0 0 0 (-1), PolyRefl.mkT 4 1 0 0 0 (-5)]
lemma form_cross_forms_2_4_5 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_4_5 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 6 (-3) f_cross_forms_2_4_5 f_cross_forms_2_4_5_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_4_6 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (-1), PolyRefl.mkT 2 4 0 0 0 (-3), PolyRefl.mkT 4 2 0 0 0 (5), PolyRefl.mkT 6 0 0 0 0 (7)]
def f_cross_forms_2_4_6_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 0 (-1), PolyRefl.mkT 2 3 0 0 0 (-3), PolyRefl.mkT 4 1 0 0 0 (5)]
lemma form_cross_forms_2_4_6 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_4_6 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 6 (7) f_cross_forms_2_4_6 f_cross_forms_2_4_6_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_4_7 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (1), PolyRefl.mkT 2 4 0 0 0 (-9), PolyRefl.mkT 4 2 0 0 0 (19), PolyRefl.mkT 6 0 0 0 0 (-3)]
def f_cross_forms_2_4_7_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 0 (1), PolyRefl.mkT 2 3 0 0 0 (-9), PolyRefl.mkT 4 1 0 0 0 (19)]
lemma form_cross_forms_2_4_7 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_4_7 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 6 (-3) f_cross_forms_2_4_7 f_cross_forms_2_4_7_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_4_8 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (1), PolyRefl.mkT 2 4 0 0 0 (3), PolyRefl.mkT 4 2 0 0 0 (-5), PolyRefl.mkT 6 0 0 0 0 (-7)]
def f_cross_forms_2_4_8_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 0 (1), PolyRefl.mkT 2 3 0 0 0 (3), PolyRefl.mkT 4 1 0 0 0 (-5)]
lemma form_cross_forms_2_4_8 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_4_8 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 6 (-7) f_cross_forms_2_4_8 f_cross_forms_2_4_8_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_4_9 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (-1), PolyRefl.mkT 2 4 0 0 0 (5), PolyRefl.mkT 4 2 0 0 0 (5), PolyRefl.mkT 6 0 0 0 0 (-1)]
def f_cross_forms_2_4_9_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 0 (-1), PolyRefl.mkT 2 3 0 0 0 (5), PolyRefl.mkT 4 1 0 0 0 (5)]
lemma form_cross_forms_2_4_9 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_4_9 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 6 (-1) f_cross_forms_2_4_9 f_cross_forms_2_4_9_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_4_10 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (-1), PolyRefl.mkT 2 4 0 0 0 (5), PolyRefl.mkT 4 2 0 0 0 (-19), PolyRefl.mkT 6 0 0 0 0 (7)]
def f_cross_forms_2_4_10_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 0 (-1), PolyRefl.mkT 2 3 0 0 0 (5), PolyRefl.mkT 4 1 0 0 0 (-19)]
lemma form_cross_forms_2_4_10 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_4_10 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 6 (7) f_cross_forms_2_4_10 f_cross_forms_2_4_10_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_4_11 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (-1), PolyRefl.mkT 2 4 0 0 0 (-15), PolyRefl.mkT 4 2 0 0 0 (13), PolyRefl.mkT 6 0 0 0 0 (-5)]
def f_cross_forms_2_4_11_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 0 (-1), PolyRefl.mkT 2 3 0 0 0 (-15), PolyRefl.mkT 4 1 0 0 0 (13)]
lemma form_cross_forms_2_4_11 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_4_11 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 6 (-5) f_cross_forms_2_4_11 f_cross_forms_2_4_11_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_4_12 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (1), PolyRefl.mkT 2 4 0 0 0 (-9), PolyRefl.mkT 4 2 0 0 0 (-5), PolyRefl.mkT 6 0 0 0 0 (5)]
def f_cross_forms_2_4_12_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 0 (1), PolyRefl.mkT 2 3 0 0 0 (-9), PolyRefl.mkT 4 1 0 0 0 (-5)]
lemma form_cross_forms_2_4_12 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_4_12 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 6 (5) f_cross_forms_2_4_12 f_cross_forms_2_4_12_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_4_13 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (-1), PolyRefl.mkT 2 4 0 0 0 (-19), PolyRefl.mkT 4 2 0 0 0 (13), PolyRefl.mkT 6 0 0 0 0 (-1)]
def f_cross_forms_2_4_13_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 0 (-1), PolyRefl.mkT 2 3 0 0 0 (-19), PolyRefl.mkT 4 1 0 0 0 (13)]
lemma form_cross_forms_2_4_13 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_4_13 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 6 (-1) f_cross_forms_2_4_13 f_cross_forms_2_4_13_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_4_14 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (-1), PolyRefl.mkT 2 4 0 0 0 (9), PolyRefl.mkT 4 2 0 0 0 (-19), PolyRefl.mkT 6 0 0 0 0 (3)]
def f_cross_forms_2_4_14_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 0 (-1), PolyRefl.mkT 2 3 0 0 0 (9), PolyRefl.mkT 4 1 0 0 0 (-19)]
lemma form_cross_forms_2_4_14 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_4_14 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 6 (3) f_cross_forms_2_4_14 f_cross_forms_2_4_14_rest (by decide +kernel) (by decide +kernel) hr hs

def f_cross_forms_2_4_15 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (-1), PolyRefl.mkT 2 4 0 0 0 (9), PolyRefl.mkT 4 2 0 0 0 (5), PolyRefl.mkT 6 0 0 0 0 (-5)]
def f_cross_forms_2_4_15_rest : PolyRefl.SPoly := [PolyRefl.mkT 0 5 0 0 0 (-1), PolyRefl.mkT 2 3 0 0 0 (9), PolyRefl.mkT 4 1 0 0 0 (5)]
lemma form_cross_forms_2_4_15 (r s : ℤ) (hr : Odd r) (hs : Even s)
    (hco : IsCoprime r s) :
    PolyRefl.eval f_cross_forms_2_4_15 r s 1 1 1 ≠ 0 :=
  parity_gate_eval 6 (-5) f_cross_forms_2_4_15 f_cross_forms_2_4_15_rest (by decide +kernel) (by decide +kernel) hr hs

end CertForms
