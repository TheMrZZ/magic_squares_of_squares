/- Generated: nonvanishing of the certifier's minimal-layer forms
   at grid cross_forms_2_5, via the parity gate. -/
import MsqLean.CertKit
import MsqLean.PolyRefl

namespace CertForms
open CertKit

def rest_cross_forms_2_5_0 : PolyRefl.SPoly := [((0, 1, 0, 0), -3)]
lemma form_cross_forms_2_5_0 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (1) * r ^ 2 + s * PolyRefl.eval rest_cross_forms_2_5_0 r s 1 1 ≠ 0 :=
  parity_gate 2 hr hs (by decide) rfl

def rest_cross_forms_2_5_1 : PolyRefl.SPoly := [((0, 1, 0, 0), 3)]
lemma form_cross_forms_2_5_1 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-1) * r ^ 2 + s * PolyRefl.eval rest_cross_forms_2_5_1 r s 1 1 ≠ 0 :=
  parity_gate 2 hr hs (by decide) rfl

def rest_cross_forms_2_5_2 : PolyRefl.SPoly := [((0, 5, 0, 0), 1), ((2, 3, 0, 0), 15), ((4, 1, 0, 0), -13)]
lemma form_cross_forms_2_5_2 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (5) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_5_2 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_5_3 : PolyRefl.SPoly := [((0, 5, 0, 0), 1), ((2, 3, 0, 0), -9), ((4, 1, 0, 0), 19)]
lemma form_cross_forms_2_5_3 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-3) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_5_3 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_5_4 : PolyRefl.SPoly := [((0, 5, 0, 0), -1), ((2, 3, 0, 0), -19), ((4, 1, 0, 0), 13)]
lemma form_cross_forms_2_5_4 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-1) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_5_4 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_5_5 : PolyRefl.SPoly := [((0, 5, 0, 0), -1), ((2, 3, 0, 0), 5), ((4, 1, 0, 0), -19)]
lemma form_cross_forms_2_5_5 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (7) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_5_5 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_5_6 : PolyRefl.SPoly := [((0, 5, 0, 0), -1), ((2, 3, 0, 0), 1), ((4, 1, 0, 0), 5)]
lemma form_cross_forms_2_5_6 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (3) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_5_6 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_5_7 : PolyRefl.SPoly := [((0, 5, 0, 0), -1), ((2, 3, 0, 0), -15), ((4, 1, 0, 0), 13)]
lemma form_cross_forms_2_5_7 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-5) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_5_7 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_5_8 : PolyRefl.SPoly := [((0, 5, 0, 0), -3), ((2, 3, 0, 0), 13), ((4, 1, 0, 0), -13)]
lemma form_cross_forms_2_5_8 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (3) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_5_8 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_5_9 : PolyRefl.SPoly := [((0, 5, 0, 0), 1), ((2, 3, 0, 0), 3), ((4, 1, 0, 0), -5)]
lemma form_cross_forms_2_5_9 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-7) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_5_9 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_5_10 : PolyRefl.SPoly := [((0, 5, 0, 0), 1), ((2, 3, 0, 0), -5), ((4, 1, 0, 0), -5)]
lemma form_cross_forms_2_5_10 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (1) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_5_10 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_5_11 : PolyRefl.SPoly := [((0, 5, 0, 0), 1), ((2, 3, 0, 0), -15), ((4, 1, 0, 0), 15)]
lemma form_cross_forms_2_5_11 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-1) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_5_11 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_5_12 : PolyRefl.SPoly := [((0, 1, 0, 0), 1)]
lemma form_cross_forms_2_5_12 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-3) * r ^ 2 + s * PolyRefl.eval rest_cross_forms_2_5_12 r s 1 1 ≠ 0 :=
  parity_gate 2 hr hs (by decide) rfl

def rest_cross_forms_2_5_13 : PolyRefl.SPoly := [((0, 5, 0, 0), 3), ((2, 3, 0, 0), -13), ((4, 1, 0, 0), 13)]
lemma form_cross_forms_2_5_13 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-3) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_5_13 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_5_14 : PolyRefl.SPoly := [((0, 5, 0, 0), -1), ((2, 3, 0, 0), 15), ((4, 1, 0, 0), -15)]
lemma form_cross_forms_2_5_14 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (1) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_5_14 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_5_15 : PolyRefl.SPoly := [((0, 5, 0, 0), -1), ((2, 3, 0, 0), 9), ((4, 1, 0, 0), -19)]
lemma form_cross_forms_2_5_15 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (3) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_5_15 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_5_16 : PolyRefl.SPoly := [((0, 5, 0, 0), 1), ((2, 3, 0, 0), -1), ((4, 1, 0, 0), -5)]
lemma form_cross_forms_2_5_16 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-3) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_5_16 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_5_17 : PolyRefl.SPoly := [((0, 5, 0, 0), 1), ((2, 3, 0, 0), -9), ((4, 1, 0, 0), -5)]
lemma form_cross_forms_2_5_17 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (5) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_5_17 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_5_18 : PolyRefl.SPoly := [((0, 5, 0, 0), -1), ((2, 3, 0, 0), -3), ((4, 1, 0, 0), 5)]
lemma form_cross_forms_2_5_18 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (7) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_5_18 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_5_19 : PolyRefl.SPoly := [((0, 5, 0, 0), 1), ((2, 3, 0, 0), -5), ((4, 1, 0, 0), 19)]
lemma form_cross_forms_2_5_19 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-7) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_5_19 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_5_20 : PolyRefl.SPoly := [((0, 5, 0, 0), -1), ((2, 3, 0, 0), 5), ((4, 1, 0, 0), 5)]
lemma form_cross_forms_2_5_20 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-1) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_5_20 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_5_21 : PolyRefl.SPoly := [((0, 5, 0, 0), 1), ((2, 3, 0, 0), 19), ((4, 1, 0, 0), -13)]
lemma form_cross_forms_2_5_21 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (1) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_5_21 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_5_22 : PolyRefl.SPoly := [((0, 1, 0, 0), -1)]
lemma form_cross_forms_2_5_22 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (3) * r ^ 2 + s * PolyRefl.eval rest_cross_forms_2_5_22 r s 1 1 ≠ 0 :=
  parity_gate 2 hr hs (by decide) rfl

def rest_cross_forms_2_5_23 : PolyRefl.SPoly := [((0, 5, 0, 0), -1), ((2, 3, 0, 0), 9), ((4, 1, 0, 0), 5)]
lemma form_cross_forms_2_5_23 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-5) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_5_23 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

end CertForms
