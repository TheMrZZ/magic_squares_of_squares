/- Generated: nonvanishing of the certifier's minimal-layer forms
   at grid cross_forms_2_4, via the parity gate. -/
import MsqLean.CertKit
import MsqLean.PolyRefl

namespace CertForms
open CertKit

def rest_cross_forms_2_4_0 : PolyRefl.SPoly := [((0, 5, 0, 0), 1), ((2, 3, 0, 0), 3), ((4, 1, 0, 0), -5)]
lemma form_cross_forms_2_4_0 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-7) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_4_0 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_4_1 : PolyRefl.SPoly := [((0, 5, 0, 0), -1), ((2, 3, 0, 0), -19), ((4, 1, 0, 0), 13)]
lemma form_cross_forms_2_4_1 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-1) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_4_1 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_4_2 : PolyRefl.SPoly := [((0, 5, 0, 0), -1), ((2, 3, 0, 0), -3), ((4, 1, 0, 0), 5)]
lemma form_cross_forms_2_4_2 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (7) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_4_2 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_4_3 : PolyRefl.SPoly := [((0, 5, 0, 0), 1), ((2, 3, 0, 0), -9), ((4, 1, 0, 0), 19)]
lemma form_cross_forms_2_4_3 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-3) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_4_3 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_4_4 : PolyRefl.SPoly := [((0, 5, 0, 0), -1), ((2, 3, 0, 0), -15), ((4, 1, 0, 0), 13)]
lemma form_cross_forms_2_4_4 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-5) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_4_4 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_4_5 : PolyRefl.SPoly := [((0, 5, 0, 0), -1), ((2, 3, 0, 0), 1), ((4, 1, 0, 0), 5)]
lemma form_cross_forms_2_4_5 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (3) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_4_5 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_4_6 : PolyRefl.SPoly := [((0, 5, 0, 0), -1), ((2, 3, 0, 0), 9), ((4, 1, 0, 0), 5)]
lemma form_cross_forms_2_4_6 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-5) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_4_6 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_4_7 : PolyRefl.SPoly := [((0, 5, 0, 0), 1), ((2, 3, 0, 0), 15), ((4, 1, 0, 0), -13)]
lemma form_cross_forms_2_4_7 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (5) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_4_7 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_4_8 : PolyRefl.SPoly := [((0, 5, 0, 0), -1), ((2, 3, 0, 0), 9), ((4, 1, 0, 0), -19)]
lemma form_cross_forms_2_4_8 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (3) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_4_8 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_4_9 : PolyRefl.SPoly := [((0, 5, 0, 0), -1), ((2, 3, 0, 0), 5), ((4, 1, 0, 0), -19)]
lemma form_cross_forms_2_4_9 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (7) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_4_9 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_4_10 : PolyRefl.SPoly := [((0, 5, 0, 0), -1), ((2, 3, 0, 0), 5), ((4, 1, 0, 0), 5)]
lemma form_cross_forms_2_4_10 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-1) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_4_10 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_4_11 : PolyRefl.SPoly := [((0, 5, 0, 0), 1), ((2, 3, 0, 0), -5), ((4, 1, 0, 0), 19)]
lemma form_cross_forms_2_4_11 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-7) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_4_11 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_4_12 : PolyRefl.SPoly := [((0, 5, 0, 0), 1), ((2, 3, 0, 0), -9), ((4, 1, 0, 0), -5)]
lemma form_cross_forms_2_4_12 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (5) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_4_12 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_4_13 : PolyRefl.SPoly := [((0, 5, 0, 0), 1), ((2, 3, 0, 0), -1), ((4, 1, 0, 0), -5)]
lemma form_cross_forms_2_4_13 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-3) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_4_13 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_4_14 : PolyRefl.SPoly := [((0, 5, 0, 0), 1), ((2, 3, 0, 0), 19), ((4, 1, 0, 0), -13)]
lemma form_cross_forms_2_4_14 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (1) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_4_14 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_2_4_15 : PolyRefl.SPoly := [((0, 5, 0, 0), 1), ((2, 3, 0, 0), -5), ((4, 1, 0, 0), -5)]
lemma form_cross_forms_2_4_15 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (1) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_2_4_15 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

end CertForms
