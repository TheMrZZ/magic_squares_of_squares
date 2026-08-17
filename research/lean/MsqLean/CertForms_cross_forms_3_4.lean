/- Generated: nonvanishing of the certifier's minimal-layer forms
   at grid cross_forms_3_4, via the parity gate. -/
import MsqLean.CertKit
import MsqLean.PolyRefl

namespace CertForms
open CertKit

def rest_cross_forms_3_4_0 : PolyRefl.SPoly := [((0, 9, 0, 0), -1), ((2, 7, 0, 0), 1), ((4, 5, 0, 0), 54), ((6, 3, 0, 0), -14), ((8, 1, 0, 0), -53)]
lemma form_cross_forms_3_4_0 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (13) * r ^ 10 + s * PolyRefl.eval rest_cross_forms_3_4_0 r s 1 1 ≠ 0 :=
  parity_gate 10 hr hs (by decide) rfl

def rest_cross_forms_3_4_1 : PolyRefl.SPoly := [((0, 5, 0, 0), -1), ((2, 3, 0, 0), 9), ((4, 1, 0, 0), 5)]
lemma form_cross_forms_3_4_1 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-5) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_3_4_1 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_3_4_2 : PolyRefl.SPoly := [((0, 5, 0, 0), -1), ((2, 3, 0, 0), 1), ((4, 1, 0, 0), 5)]
lemma form_cross_forms_3_4_2 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (3) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_3_4_2 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_3_4_3 : PolyRefl.SPoly := [((0, 9, 0, 0), 1), ((2, 7, 0, 0), -35), ((4, 5, 0, 0), 90), ((6, 3, 0, 0), 42), ((8, 1, 0, 0), -75)]
lemma form_cross_forms_3_4_3 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (9) * r ^ 10 + s * PolyRefl.eval rest_cross_forms_3_4_3 r s 1 1 ≠ 0 :=
  parity_gate 10 hr hs (by decide) rfl

def rest_cross_forms_3_4_4 : PolyRefl.SPoly := [((0, 5, 0, 0), -1), ((2, 3, 0, 0), -15), ((4, 1, 0, 0), 13)]
lemma form_cross_forms_3_4_4 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-5) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_3_4_4 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_3_4_5 : PolyRefl.SPoly := [((0, 5, 0, 0), 1), ((2, 3, 0, 0), 19), ((4, 1, 0, 0), -13)]
lemma form_cross_forms_3_4_5 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (1) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_3_4_5 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_3_4_6 : PolyRefl.SPoly := [((0, 7, 0, 0), 1), ((2, 5, 0, 0), -24), ((4, 3, 0, 0), 2), ((6, 1, 0, 0), 16)]
lemma form_cross_forms_3_4_6 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-11) * r ^ 8 + s * PolyRefl.eval rest_cross_forms_3_4_6 r s 1 1 ≠ 0 :=
  parity_gate 8 hr hs (by decide) rfl

def rest_cross_forms_3_4_8 : PolyRefl.SPoly := [((0, 5, 0, 0), 1), ((2, 3, 0, 0), -9), ((4, 1, 0, 0), 19)]
lemma form_cross_forms_3_4_8 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-3) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_3_4_8 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_3_4_9 : PolyRefl.SPoly := [((0, 7, 0, 0), -7), ((2, 5, 0, 0), -4), ((4, 3, 0, 0), 14), ((6, 1, 0, 0), 12)]
lemma form_cross_forms_3_4_9 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (1) * r ^ 8 + s * PolyRefl.eval rest_cross_forms_3_4_9 r s 1 1 ≠ 0 :=
  parity_gate 8 hr hs (by decide) rfl

def rest_cross_forms_3_4_10 : PolyRefl.SPoly := [((0, 9, 0, 0), 5), ((2, 7, 0, 0), -67), ((4, 5, 0, 0), 178), ((6, 3, 0, 0), -198), ((8, 1, 0, 0), 57)]
lemma form_cross_forms_3_4_10 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-7) * r ^ 10 + s * PolyRefl.eval rest_cross_forms_3_4_10 r s 1 1 ≠ 0 :=
  parity_gate 10 hr hs (by decide) rfl

def rest_cross_forms_3_4_11 : PolyRefl.SPoly := [((0, 9, 0, 0), 1), ((2, 7, 0, 0), -11), ((4, 5, 0, 0), 10), ((6, 3, 0, 0), 42), ((8, 1, 0, 0), 5)]
lemma form_cross_forms_3_4_11 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-15) * r ^ 10 + s * PolyRefl.eval rest_cross_forms_3_4_11 r s 1 1 ≠ 0 :=
  parity_gate 10 hr hs (by decide) rfl

def rest_cross_forms_3_4_12 : PolyRefl.SPoly := [((0, 7, 0, 0), -1), ((2, 5, 0, 0), -22), ((4, 3, 0, 0), 60), ((6, 1, 0, 0), -42)]
lemma form_cross_forms_3_4_12 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (5) * r ^ 8 + s * PolyRefl.eval rest_cross_forms_3_4_12 r s 1 1 ≠ 0 :=
  parity_gate 8 hr hs (by decide) rfl

def rest_cross_forms_3_4_13 : PolyRefl.SPoly := [((0, 9, 0, 0), -1), ((2, 7, 0, 0), 11), ((4, 5, 0, 0), -10), ((6, 3, 0, 0), -42), ((8, 1, 0, 0), -5)]
lemma form_cross_forms_3_4_13 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (15) * r ^ 10 + s * PolyRefl.eval rest_cross_forms_3_4_13 r s 1 1 ≠ 0 :=
  parity_gate 10 hr hs (by decide) rfl

def rest_cross_forms_3_4_15 : PolyRefl.SPoly := [((0, 7, 0, 0), 1), ((2, 5, 0, 0), 8), ((4, 3, 0, 0), -30), ((6, 1, 0, 0), -16)]
lemma form_cross_forms_3_4_15 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (21) * r ^ 8 + s * PolyRefl.eval rest_cross_forms_3_4_15 r s 1 1 ≠ 0 :=
  parity_gate 8 hr hs (by decide) rfl

def rest_cross_forms_3_4_16 : PolyRefl.SPoly := [((0, 9, 0, 0), -1), ((2, 7, 0, 0), 17), ((4, 5, 0, 0), -42), ((6, 3, 0, 0), -14), ((8, 1, 0, 0), 43)]
lemma form_cross_forms_3_4_16 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-3) * r ^ 10 + s * PolyRefl.eval rest_cross_forms_3_4_16 r s 1 1 ≠ 0 :=
  parity_gate 10 hr hs (by decide) rfl

def rest_cross_forms_3_4_17 : PolyRefl.SPoly := [((0, 9, 0, 0), -5), ((2, 7, 0, 0), 67), ((4, 5, 0, 0), -178), ((6, 3, 0, 0), 198), ((8, 1, 0, 0), -57)]
lemma form_cross_forms_3_4_17 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (7) * r ^ 10 + s * PolyRefl.eval rest_cross_forms_3_4_17 r s 1 1 ≠ 0 :=
  parity_gate 10 hr hs (by decide) rfl

def rest_cross_forms_3_4_18 : PolyRefl.SPoly := [((0, 9, 0, 0), 1), ((2, 7, 0, 0), -1), ((4, 5, 0, 0), -54), ((6, 3, 0, 0), 14), ((8, 1, 0, 0), 53)]
lemma form_cross_forms_3_4_18 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-13) * r ^ 10 + s * PolyRefl.eval rest_cross_forms_3_4_18 r s 1 1 ≠ 0 :=
  parity_gate 10 hr hs (by decide) rfl

def rest_cross_forms_3_4_19 : PolyRefl.SPoly := [((0, 9, 0, 0), -3), ((2, 7, 0, 0), 37), ((4, 5, 0, 0), -150), ((6, 3, 0, 0), 226), ((8, 1, 0, 0), -87)]
lemma form_cross_forms_3_4_19 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (9) * r ^ 10 + s * PolyRefl.eval rest_cross_forms_3_4_19 r s 1 1 ≠ 0 :=
  parity_gate 10 hr hs (by decide) rfl

def rest_cross_forms_3_4_20 : PolyRefl.SPoly := [((0, 7, 0, 0), -1), ((2, 5, 0, 0), 18), ((4, 3, 0, 0), -60), ((6, 1, 0, 0), 46)]
lemma form_cross_forms_3_4_20 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-3) * r ^ 8 + s * PolyRefl.eval rest_cross_forms_3_4_20 r s 1 1 ≠ 0 :=
  parity_gate 8 hr hs (by decide) rfl

def rest_cross_forms_3_4_21 : PolyRefl.SPoly := [((0, 5, 0, 0), 1), ((2, 3, 0, 0), 3), ((4, 1, 0, 0), -5)]
lemma form_cross_forms_3_4_21 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-7) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_3_4_21 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_3_4_22 : PolyRefl.SPoly := [((0, 9, 0, 0), -1), ((2, 7, 0, 0), -11), ((4, 5, 0, 0), 82), ((6, 3, 0, 0), -130), ((8, 1, 0, 0), 31)]
lemma form_cross_forms_3_4_22 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-3) * r ^ 10 + s * PolyRefl.eval rest_cross_forms_3_4_22 r s 1 1 ≠ 0 :=
  parity_gate 10 hr hs (by decide) rfl

def rest_cross_forms_3_4_23 : PolyRefl.SPoly := [((0, 7, 0, 0), -9), ((2, 5, 0, 0), 60), ((4, 3, 0, 0), -118), ((6, 1, 0, 0), 60)]
lemma form_cross_forms_3_4_23 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-9) * r ^ 8 + s * PolyRefl.eval rest_cross_forms_3_4_23 r s 1 1 ≠ 0 :=
  parity_gate 8 hr hs (by decide) rfl

def rest_cross_forms_3_4_24 : PolyRefl.SPoly := [((0, 7, 0, 0), 1), ((2, 5, 0, 0), 24), ((4, 3, 0, 0), -14), ((6, 1, 0, 0), -32)]
lemma form_cross_forms_3_4_24 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (5) * r ^ 8 + s * PolyRefl.eval rest_cross_forms_3_4_24 r s 1 1 ≠ 0 :=
  parity_gate 8 hr hs (by decide) rfl

def rest_cross_forms_3_4_25 : PolyRefl.SPoly := [((0, 9, 0, 0), 3), ((2, 7, 0, 0), -37), ((4, 5, 0, 0), 150), ((6, 3, 0, 0), -226), ((8, 1, 0, 0), 87)]
lemma form_cross_forms_3_4_25 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-9) * r ^ 10 + s * PolyRefl.eval rest_cross_forms_3_4_25 r s 1 1 ≠ 0 :=
  parity_gate 10 hr hs (by decide) rfl

def rest_cross_forms_3_4_26 : PolyRefl.SPoly := [((0, 7, 0, 0), 3), ((2, 5, 0, 0), -4), ((4, 3, 0, 0), -14), ((6, 1, 0, 0), -4)]
lemma form_cross_forms_3_4_26 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (3) * r ^ 8 + s * PolyRefl.eval rest_cross_forms_3_4_26 r s 1 1 ≠ 0 :=
  parity_gate 8 hr hs (by decide) rfl

def rest_cross_forms_3_4_27 : PolyRefl.SPoly := [((0, 9, 0, 0), 7), ((2, 7, 0, 0), -57), ((4, 5, 0, 0), 198), ((6, 3, 0, 0), -178), ((8, 1, 0, 0), 67)]
lemma form_cross_forms_3_4_27 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-5) * r ^ 10 + s * PolyRefl.eval rest_cross_forms_3_4_27 r s 1 1 ≠ 0 :=
  parity_gate 10 hr hs (by decide) rfl

def rest_cross_forms_3_4_28 : PolyRefl.SPoly := [((0, 7, 0, 0), -1), ((2, 5, 0, 0), -24), ((4, 3, 0, 0), 14), ((6, 1, 0, 0), 32)]
lemma form_cross_forms_3_4_28 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-5) * r ^ 8 + s * PolyRefl.eval rest_cross_forms_3_4_28 r s 1 1 ≠ 0 :=
  parity_gate 8 hr hs (by decide) rfl

def rest_cross_forms_3_4_29 : PolyRefl.SPoly := [((0, 7, 0, 0), 9), ((2, 5, 0, 0), -60), ((4, 3, 0, 0), 118), ((6, 1, 0, 0), -60)]
lemma form_cross_forms_3_4_29 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (9) * r ^ 8 + s * PolyRefl.eval rest_cross_forms_3_4_29 r s 1 1 ≠ 0 :=
  parity_gate 8 hr hs (by decide) rfl

def rest_cross_forms_3_4_30 : PolyRefl.SPoly := [((0, 9, 0, 0), 1), ((2, 7, 0, 0), 11), ((4, 5, 0, 0), -82), ((6, 3, 0, 0), 130), ((8, 1, 0, 0), -31)]
lemma form_cross_forms_3_4_30 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (3) * r ^ 10 + s * PolyRefl.eval rest_cross_forms_3_4_30 r s 1 1 ≠ 0 :=
  parity_gate 10 hr hs (by decide) rfl

def rest_cross_forms_3_4_31 : PolyRefl.SPoly := [((0, 7, 0, 0), -1), ((2, 5, 0, 0), 24), ((4, 3, 0, 0), -2), ((6, 1, 0, 0), -16)]
lemma form_cross_forms_3_4_31 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (11) * r ^ 8 + s * PolyRefl.eval rest_cross_forms_3_4_31 r s 1 1 ≠ 0 :=
  parity_gate 8 hr hs (by decide) rfl

def rest_cross_forms_3_4_32 : PolyRefl.SPoly := [((0, 7, 0, 0), 7), ((2, 5, 0, 0), 4), ((4, 3, 0, 0), -14), ((6, 1, 0, 0), -12)]
lemma form_cross_forms_3_4_32 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-1) * r ^ 8 + s * PolyRefl.eval rest_cross_forms_3_4_32 r s 1 1 ≠ 0 :=
  parity_gate 8 hr hs (by decide) rfl

def rest_cross_forms_3_4_33 : PolyRefl.SPoly := [((0, 7, 0, 0), -3), ((2, 5, 0, 0), 16), ((4, 3, 0, 0), -14), ((6, 1, 0, 0), -24)]
lemma form_cross_forms_3_4_33 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (9) * r ^ 8 + s * PolyRefl.eval rest_cross_forms_3_4_33 r s 1 1 ≠ 0 :=
  parity_gate 8 hr hs (by decide) rfl

def rest_cross_forms_3_4_34 : PolyRefl.SPoly := [((0, 9, 0, 0), -1), ((2, 7, 0, 0), 35), ((4, 5, 0, 0), -90), ((6, 3, 0, 0), -42), ((8, 1, 0, 0), 75)]
lemma form_cross_forms_3_4_34 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-9) * r ^ 10 + s * PolyRefl.eval rest_cross_forms_3_4_34 r s 1 1 ≠ 0 :=
  parity_gate 10 hr hs (by decide) rfl

def rest_cross_forms_3_4_35 : PolyRefl.SPoly := [((0, 9, 0, 0), -7), ((2, 7, 0, 0), 57), ((4, 5, 0, 0), -198), ((6, 3, 0, 0), 178), ((8, 1, 0, 0), -67)]
lemma form_cross_forms_3_4_35 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (5) * r ^ 10 + s * PolyRefl.eval rest_cross_forms_3_4_35 r s 1 1 ≠ 0 :=
  parity_gate 10 hr hs (by decide) rfl

def rest_cross_forms_3_4_37 : PolyRefl.SPoly := [((0, 7, 0, 0), 5), ((2, 5, 0, 0), -32), ((4, 3, 0, 0), -14), ((6, 1, 0, 0), 24)]
lemma form_cross_forms_3_4_37 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (1) * r ^ 8 + s * PolyRefl.eval rest_cross_forms_3_4_37 r s 1 1 ≠ 0 :=
  parity_gate 8 hr hs (by decide) rfl

def rest_cross_forms_3_4_38 : PolyRefl.SPoly := [((0, 5, 0, 0), -1), ((2, 3, 0, 0), 9), ((4, 1, 0, 0), -19)]
lemma form_cross_forms_3_4_38 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (3) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_3_4_38 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_3_4_39 : PolyRefl.SPoly := [((0, 5, 0, 0), 1), ((2, 3, 0, 0), -5), ((4, 1, 0, 0), 19)]
lemma form_cross_forms_3_4_39 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-7) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_3_4_39 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_3_4_40 : PolyRefl.SPoly := [((0, 9, 0, 0), -3), ((2, 7, 0, 0), 55), ((4, 5, 0, 0), -198), ((6, 3, 0, 0), 198), ((8, 1, 0, 0), -55)]
lemma form_cross_forms_3_4_40 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (3) * r ^ 10 + s * PolyRefl.eval rest_cross_forms_3_4_40 r s 1 1 ≠ 0 :=
  parity_gate 10 hr hs (by decide) rfl

def rest_cross_forms_3_4_41 : PolyRefl.SPoly := [((0, 9, 0, 0), 1), ((2, 7, 0, 0), 5), ((4, 5, 0, 0), -62), ((6, 3, 0, 0), -14), ((8, 1, 0, 0), 45)]
lemma form_cross_forms_3_4_41 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-7) * r ^ 10 + s * PolyRefl.eval rest_cross_forms_3_4_41 r s 1 1 ≠ 0 :=
  parity_gate 10 hr hs (by decide) rfl

def rest_cross_forms_3_4_42 : PolyRefl.SPoly := [((0, 5, 0, 0), 1), ((2, 3, 0, 0), -5), ((4, 1, 0, 0), -5)]
lemma form_cross_forms_3_4_42 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (1) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_3_4_42 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_3_4_43 : PolyRefl.SPoly := [((0, 5, 0, 0), -1), ((2, 3, 0, 0), 5), ((4, 1, 0, 0), 5)]
lemma form_cross_forms_3_4_43 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-1) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_3_4_43 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_3_4_45 : PolyRefl.SPoly := [((0, 9, 0, 0), 1), ((2, 7, 0, 0), -19), ((4, 5, 0, 0), 18), ((6, 3, 0, 0), -14), ((8, 1, 0, 0), -35)]
lemma form_cross_forms_3_4_45 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (17) * r ^ 10 + s * PolyRefl.eval rest_cross_forms_3_4_45 r s 1 1 ≠ 0 :=
  parity_gate 10 hr hs (by decide) rfl

def rest_cross_forms_3_4_46 : PolyRefl.SPoly := [((0, 7, 0, 0), -3), ((2, 5, 0, 0), 4), ((4, 3, 0, 0), 14), ((6, 1, 0, 0), 4)]
lemma form_cross_forms_3_4_46 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-3) * r ^ 8 + s * PolyRefl.eval rest_cross_forms_3_4_46 r s 1 1 ≠ 0 :=
  parity_gate 8 hr hs (by decide) rfl

def rest_cross_forms_3_4_47 : PolyRefl.SPoly := [((0, 9, 0, 0), -1), ((2, 7, 0, 0), -5), ((4, 5, 0, 0), 62), ((6, 3, 0, 0), 14), ((8, 1, 0, 0), -45)]
lemma form_cross_forms_3_4_47 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (7) * r ^ 10 + s * PolyRefl.eval rest_cross_forms_3_4_47 r s 1 1 ≠ 0 :=
  parity_gate 10 hr hs (by decide) rfl

def rest_cross_forms_3_4_48 : PolyRefl.SPoly := [((0, 9, 0, 0), 1), ((2, 7, 0, 0), -31), ((4, 5, 0, 0), 178), ((6, 3, 0, 0), -198), ((8, 1, 0, 0), 93)]
lemma form_cross_forms_3_4_48 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-11) * r ^ 10 + s * PolyRefl.eval rest_cross_forms_3_4_48 r s 1 1 ≠ 0 :=
  parity_gate 10 hr hs (by decide) rfl

def rest_cross_forms_3_4_49 : PolyRefl.SPoly := [((0, 7, 0, 0), 1), ((2, 5, 0, 0), -18), ((4, 3, 0, 0), 60), ((6, 1, 0, 0), -46)]
lemma form_cross_forms_3_4_49 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (3) * r ^ 8 + s * PolyRefl.eval rest_cross_forms_3_4_49 r s 1 1 ≠ 0 :=
  parity_gate 8 hr hs (by decide) rfl

def rest_cross_forms_3_4_50 : PolyRefl.SPoly := [((0, 7, 0, 0), 1), ((2, 5, 0, 0), 20), ((4, 3, 0, 0), -106), ((6, 1, 0, 0), 116)]
lemma form_cross_forms_3_4_50 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-15) * r ^ 8 + s * PolyRefl.eval rest_cross_forms_3_4_50 r s 1 1 ≠ 0 :=
  parity_gate 8 hr hs (by decide) rfl

def rest_cross_forms_3_4_51 : PolyRefl.SPoly := [((0, 7, 0, 0), -5), ((2, 5, 0, 0), 32), ((4, 3, 0, 0), 14), ((6, 1, 0, 0), -24)]
lemma form_cross_forms_3_4_51 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-1) * r ^ 8 + s * PolyRefl.eval rest_cross_forms_3_4_51 r s 1 1 ≠ 0 :=
  parity_gate 8 hr hs (by decide) rfl

def rest_cross_forms_3_4_52 : PolyRefl.SPoly := [((0, 9, 0, 0), 9), ((2, 7, 0, 0), -87), ((4, 5, 0, 0), 226), ((6, 3, 0, 0), -150), ((8, 1, 0, 0), 37)]
lemma form_cross_forms_3_4_52 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-3) * r ^ 10 + s * PolyRefl.eval rest_cross_forms_3_4_52 r s 1 1 ≠ 0 :=
  parity_gate 10 hr hs (by decide) rfl

def rest_cross_forms_3_4_53 : PolyRefl.SPoly := [((0, 7, 0, 0), 1), ((2, 5, 0, 0), 12), ((4, 3, 0, 0), 14), ((6, 1, 0, 0), -4)]
lemma form_cross_forms_3_4_53 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-7) * r ^ 8 + s * PolyRefl.eval rest_cross_forms_3_4_53 r s 1 1 ≠ 0 :=
  parity_gate 8 hr hs (by decide) rfl

def rest_cross_forms_3_4_54 : PolyRefl.SPoly := [((0, 7, 0, 0), 9), ((2, 5, 0, 0), -24), ((4, 3, 0, 0), -14), ((6, 1, 0, 0), 16)]
lemma form_cross_forms_3_4_54 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-3) * r ^ 8 + s * PolyRefl.eval rest_cross_forms_3_4_54 r s 1 1 ≠ 0 :=
  parity_gate 8 hr hs (by decide) rfl

def rest_cross_forms_3_4_55 : PolyRefl.SPoly := [((0, 9, 0, 0), -1), ((2, 7, 0, 0), 19), ((4, 5, 0, 0), -18), ((6, 3, 0, 0), 14), ((8, 1, 0, 0), 35)]
lemma form_cross_forms_3_4_55 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-17) * r ^ 10 + s * PolyRefl.eval rest_cross_forms_3_4_55 r s 1 1 ≠ 0 :=
  parity_gate 10 hr hs (by decide) rfl

def rest_cross_forms_3_4_56 : PolyRefl.SPoly := [((0, 9, 0, 0), -11), ((2, 7, 0, 0), 93), ((4, 5, 0, 0), -198), ((6, 3, 0, 0), 178), ((8, 1, 0, 0), -31)]
lemma form_cross_forms_3_4_56 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (1) * r ^ 10 + s * PolyRefl.eval rest_cross_forms_3_4_56 r s 1 1 ≠ 0 :=
  parity_gate 10 hr hs (by decide) rfl

def rest_cross_forms_3_4_57 : PolyRefl.SPoly := [((0, 7, 0, 0), -9), ((2, 5, 0, 0), 24), ((4, 3, 0, 0), 14), ((6, 1, 0, 0), -16)]
lemma form_cross_forms_3_4_57 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (3) * r ^ 8 + s * PolyRefl.eval rest_cross_forms_3_4_57 r s 1 1 ≠ 0 :=
  parity_gate 8 hr hs (by decide) rfl

def rest_cross_forms_3_4_58 : PolyRefl.SPoly := [((0, 7, 0, 0), 3), ((2, 5, 0, 0), -16), ((4, 3, 0, 0), 14), ((6, 1, 0, 0), 24)]
lemma form_cross_forms_3_4_58 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-9) * r ^ 8 + s * PolyRefl.eval rest_cross_forms_3_4_58 r s 1 1 ≠ 0 :=
  parity_gate 8 hr hs (by decide) rfl

def rest_cross_forms_3_4_59 : PolyRefl.SPoly := [((0, 5, 0, 0), -1), ((2, 3, 0, 0), -3), ((4, 1, 0, 0), 5)]
lemma form_cross_forms_3_4_59 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (7) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_3_4_59 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_3_4_60 : PolyRefl.SPoly := [((0, 5, 0, 0), 1), ((2, 3, 0, 0), -9), ((4, 1, 0, 0), -5)]
lemma form_cross_forms_3_4_60 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (5) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_3_4_60 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_3_4_61 : PolyRefl.SPoly := [((0, 9, 0, 0), -1), ((2, 7, 0, 0), 9), ((4, 5, 0, 0), -78), ((6, 3, 0, 0), 134), ((8, 1, 0, 0), -33)]
lemma form_cross_forms_3_4_61 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (1) * r ^ 10 + s * PolyRefl.eval rest_cross_forms_3_4_61 r s 1 1 ≠ 0 :=
  parity_gate 10 hr hs (by decide) rfl

def rest_cross_forms_3_4_63 : PolyRefl.SPoly := [((0, 9, 0, 0), -9), ((2, 7, 0, 0), 87), ((4, 5, 0, 0), -226), ((6, 3, 0, 0), 150), ((8, 1, 0, 0), -37)]
lemma form_cross_forms_3_4_63 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (3) * r ^ 10 + s * PolyRefl.eval rest_cross_forms_3_4_63 r s 1 1 ≠ 0 :=
  parity_gate 10 hr hs (by decide) rfl

def rest_cross_forms_3_4_64 : PolyRefl.SPoly := [((0, 5, 0, 0), -1), ((2, 3, 0, 0), 5), ((4, 1, 0, 0), -19)]
lemma form_cross_forms_3_4_64 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (7) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_3_4_64 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_3_4_66 : PolyRefl.SPoly := [((0, 5, 0, 0), 1), ((2, 3, 0, 0), -1), ((4, 1, 0, 0), -5)]
lemma form_cross_forms_3_4_66 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-3) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_3_4_66 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_3_4_67 : PolyRefl.SPoly := [((0, 9, 0, 0), 1), ((2, 7, 0, 0), -17), ((4, 5, 0, 0), 42), ((6, 3, 0, 0), 14), ((8, 1, 0, 0), -43)]
lemma form_cross_forms_3_4_67 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (3) * r ^ 10 + s * PolyRefl.eval rest_cross_forms_3_4_67 r s 1 1 ≠ 0 :=
  parity_gate 10 hr hs (by decide) rfl

def rest_cross_forms_3_4_68 : PolyRefl.SPoly := [((0, 5, 0, 0), -1), ((2, 3, 0, 0), -19), ((4, 1, 0, 0), 13)]
lemma form_cross_forms_3_4_68 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-1) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_3_4_68 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_3_4_69 : PolyRefl.SPoly := [((0, 7, 0, 0), -1), ((2, 5, 0, 0), -12), ((4, 3, 0, 0), -14), ((6, 1, 0, 0), 4)]
lemma form_cross_forms_3_4_69 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (7) * r ^ 8 + s * PolyRefl.eval rest_cross_forms_3_4_69 r s 1 1 ≠ 0 :=
  parity_gate 8 hr hs (by decide) rfl

def rest_cross_forms_3_4_70 : PolyRefl.SPoly := [((0, 9, 0, 0), 3), ((2, 7, 0, 0), -55), ((4, 5, 0, 0), 198), ((6, 3, 0, 0), -198), ((8, 1, 0, 0), 55)]
lemma form_cross_forms_3_4_70 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-3) * r ^ 10 + s * PolyRefl.eval rest_cross_forms_3_4_70 r s 1 1 ≠ 0 :=
  parity_gate 10 hr hs (by decide) rfl

def rest_cross_forms_3_4_71 : PolyRefl.SPoly := [((0, 7, 0, 0), -1), ((2, 5, 0, 0), -20), ((4, 3, 0, 0), 106), ((6, 1, 0, 0), -116)]
lemma form_cross_forms_3_4_71 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (15) * r ^ 8 + s * PolyRefl.eval rest_cross_forms_3_4_71 r s 1 1 ≠ 0 :=
  parity_gate 8 hr hs (by decide) rfl

def rest_cross_forms_3_4_72 : PolyRefl.SPoly := [((0, 7, 0, 0), -1), ((2, 5, 0, 0), -8), ((4, 3, 0, 0), 30), ((6, 1, 0, 0), 16)]
lemma form_cross_forms_3_4_72 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-21) * r ^ 8 + s * PolyRefl.eval rest_cross_forms_3_4_72 r s 1 1 ≠ 0 :=
  parity_gate 8 hr hs (by decide) rfl

def rest_cross_forms_3_4_73 : PolyRefl.SPoly := [((0, 5, 0, 0), 1), ((2, 3, 0, 0), 15), ((4, 1, 0, 0), -13)]
lemma form_cross_forms_3_4_73 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (5) * r ^ 6 + s * PolyRefl.eval rest_cross_forms_3_4_73 r s 1 1 ≠ 0 :=
  parity_gate 6 hr hs (by decide) rfl

def rest_cross_forms_3_4_74 : PolyRefl.SPoly := [((0, 9, 0, 0), 1), ((2, 7, 0, 0), -9), ((4, 5, 0, 0), 78), ((6, 3, 0, 0), -134), ((8, 1, 0, 0), 33)]
lemma form_cross_forms_3_4_74 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-1) * r ^ 10 + s * PolyRefl.eval rest_cross_forms_3_4_74 r s 1 1 ≠ 0 :=
  parity_gate 10 hr hs (by decide) rfl

def rest_cross_forms_3_4_75 : PolyRefl.SPoly := [((0, 9, 0, 0), -1), ((2, 7, 0, 0), 31), ((4, 5, 0, 0), -178), ((6, 3, 0, 0), 198), ((8, 1, 0, 0), -93)]
lemma form_cross_forms_3_4_75 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (11) * r ^ 10 + s * PolyRefl.eval rest_cross_forms_3_4_75 r s 1 1 ≠ 0 :=
  parity_gate 10 hr hs (by decide) rfl

def rest_cross_forms_3_4_76 : PolyRefl.SPoly := [((0, 9, 0, 0), 11), ((2, 7, 0, 0), -93), ((4, 5, 0, 0), 198), ((6, 3, 0, 0), -178), ((8, 1, 0, 0), 31)]
lemma form_cross_forms_3_4_76 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-1) * r ^ 10 + s * PolyRefl.eval rest_cross_forms_3_4_76 r s 1 1 ≠ 0 :=
  parity_gate 10 hr hs (by decide) rfl

def rest_cross_forms_3_4_77 : PolyRefl.SPoly := [((0, 7, 0, 0), 1), ((2, 5, 0, 0), 22), ((4, 3, 0, 0), -60), ((6, 1, 0, 0), 42)]
lemma form_cross_forms_3_4_77 (r s : ℤ) (hr : Odd r) (hs : Even s) :
    (-5) * r ^ 8 + s * PolyRefl.eval rest_cross_forms_3_4_77 r s 1 1 ≠ 0 :=
  parity_gate 8 hr hs (by decide) rfl

end CertForms
