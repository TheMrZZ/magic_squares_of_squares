/- Generated: the pair layer of grid 2_2. Two vanishing cores
   drive the elimination chain into a certified nonzero endpoint. -/
import MsqLean.ChainCert_2_2
import MsqLean.CertForms_2_2
import MsqLean.GaussData
import MsqLean.CertKit

set_option maxRecDepth 100000
set_option maxHeartbeats 2000000

namespace PairCert
open ChainCert CertKit

def core0_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 4 (1), PolyRefl.mkT 0 4 0 2 2 (-1), PolyRefl.mkT 1 3 0 4 0 (2), PolyRefl.mkT 3 1 0 0 4 (-2), PolyRefl.mkT 4 0 0 2 2 (1), PolyRefl.mkT 4 0 0 4 0 (-1)]
def core1_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (-1), PolyRefl.mkT 0 4 0 2 0 (-2), PolyRefl.mkT 4 0 0 0 2 (-2), PolyRefl.mkT 4 0 0 2 0 (-1)]
def core2_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (-1), PolyRefl.mkT 0 4 0 2 0 (-1), PolyRefl.mkT 2 2 0 1 1 (-2), PolyRefl.mkT 4 0 0 0 2 (-1), PolyRefl.mkT 4 0 0 2 0 (-1)]
def core3_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 4 (1), PolyRefl.mkT 0 2 0 4 0 (1), PolyRefl.mkT 1 1 0 2 2 (-2), PolyRefl.mkT 2 0 0 0 4 (1), PolyRefl.mkT 2 0 0 4 0 (1)]
def core4_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 4 (1), PolyRefl.mkT 0 4 0 2 2 (1), PolyRefl.mkT 1 3 0 0 4 (2), PolyRefl.mkT 3 1 0 4 0 (-2), PolyRefl.mkT 4 0 0 2 2 (-1), PolyRefl.mkT 4 0 0 4 0 (-1)]
def core5_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (-1), PolyRefl.mkT 0 4 0 2 0 (2), PolyRefl.mkT 4 0 0 0 2 (-2), PolyRefl.mkT 4 0 0 2 0 (1)]
def core6_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (2), PolyRefl.mkT 0 4 0 2 0 (-1), PolyRefl.mkT 4 0 0 0 2 (1), PolyRefl.mkT 4 0 0 2 0 (-2)]
def core7_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 2 2 (-1), PolyRefl.mkT 0 4 0 4 0 (-1), PolyRefl.mkT 1 3 0 0 4 (2), PolyRefl.mkT 3 1 0 4 0 (-2), PolyRefl.mkT 4 0 0 0 4 (1), PolyRefl.mkT 4 0 0 2 2 (1)]
def core8_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (1), PolyRefl.mkT 0 4 0 2 0 (1), PolyRefl.mkT 2 2 0 1 1 (-2), PolyRefl.mkT 4 0 0 0 2 (1), PolyRefl.mkT 4 0 0 2 0 (1)]
def core9_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 4 (1), PolyRefl.mkT 0 4 0 4 0 (1), PolyRefl.mkT 2 2 0 0 4 (2), PolyRefl.mkT 2 2 0 4 0 (-2), PolyRefl.mkT 4 0 0 0 4 (-1), PolyRefl.mkT 4 0 0 4 0 (-1)]
def core10_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 1 (-1), PolyRefl.mkT 0 4 0 1 0 (2), PolyRefl.mkT 4 0 0 0 1 (-2), PolyRefl.mkT 4 0 0 1 0 (1)]
def core11_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (1), PolyRefl.mkT 0 4 0 1 1 (1), PolyRefl.mkT 1 3 0 0 2 (2), PolyRefl.mkT 3 1 0 2 0 (-2), PolyRefl.mkT 4 0 0 1 1 (-1), PolyRefl.mkT 4 0 0 2 0 (-1)]
def core12_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (2), PolyRefl.mkT 0 4 0 2 0 (1), PolyRefl.mkT 4 0 0 0 2 (1), PolyRefl.mkT 4 0 0 2 0 (2)]
def core13_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 2 2 (1), PolyRefl.mkT 0 4 0 4 0 (-1), PolyRefl.mkT 1 3 0 4 0 (2), PolyRefl.mkT 3 1 0 0 4 (-2), PolyRefl.mkT 4 0 0 0 4 (1), PolyRefl.mkT 4 0 0 2 2 (-1)]
def core14_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 4 (-1), PolyRefl.mkT 0 4 0 4 0 (-1), PolyRefl.mkT 1 3 0 0 4 (2), PolyRefl.mkT 3 1 0 4 0 (-2), PolyRefl.mkT 4 0 0 0 4 (1), PolyRefl.mkT 4 0 0 4 0 (1)]
def core15_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 4 (1), PolyRefl.mkT 0 4 0 4 0 (1), PolyRefl.mkT 1 3 0 4 0 (2), PolyRefl.mkT 3 1 0 0 4 (-2), PolyRefl.mkT 4 0 0 0 4 (-1), PolyRefl.mkT 4 0 0 4 0 (-1)]
def core16_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 2 (1), PolyRefl.mkT 0 2 0 2 0 (1), PolyRefl.mkT 1 1 0 1 1 (-2), PolyRefl.mkT 2 0 0 0 2 (1), PolyRefl.mkT 2 0 0 2 0 (1)]
def core17_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 4 (-1), PolyRefl.mkT 0 2 0 4 0 (-1), PolyRefl.mkT 1 1 0 0 4 (2), PolyRefl.mkT 1 1 0 4 0 (-2), PolyRefl.mkT 2 0 0 0 4 (1), PolyRefl.mkT 2 0 0 4 0 (1)]
def core18_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 4 (-1), PolyRefl.mkT 0 4 0 4 0 (-1), PolyRefl.mkT 1 3 0 4 0 (2), PolyRefl.mkT 3 1 0 0 4 (-2), PolyRefl.mkT 4 0 0 0 4 (1), PolyRefl.mkT 4 0 0 4 0 (1)]
def core19_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 4 (-1), PolyRefl.mkT 0 2 0 4 0 (-1), PolyRefl.mkT 1 1 0 2 2 (-2), PolyRefl.mkT 2 0 0 0 4 (-1), PolyRefl.mkT 2 0 0 4 0 (-1)]
def core20_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 1 (2), PolyRefl.mkT 0 4 0 1 0 (1), PolyRefl.mkT 4 0 0 0 1 (1), PolyRefl.mkT 4 0 0 1 0 (2)]
def core21_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (1), PolyRefl.mkT 0 4 0 2 0 (-1), PolyRefl.mkT 1 3 0 2 0 (2), PolyRefl.mkT 3 1 0 0 2 (-2), PolyRefl.mkT 4 0 0 0 2 (1), PolyRefl.mkT 4 0 0 1 1 (-1)]
def core22_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 4 (-1), PolyRefl.mkT 0 4 0 2 2 (-1), PolyRefl.mkT 1 3 0 4 0 (2), PolyRefl.mkT 3 1 0 0 4 (-2), PolyRefl.mkT 4 0 0 2 2 (1), PolyRefl.mkT 4 0 0 4 0 (1)]
def core23_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (-1), PolyRefl.mkT 0 4 0 1 1 (1), PolyRefl.mkT 1 3 0 2 0 (2), PolyRefl.mkT 3 1 0 0 2 (-2), PolyRefl.mkT 4 0 0 1 1 (-1), PolyRefl.mkT 4 0 0 2 0 (1)]
def core24_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 1 (-1), PolyRefl.mkT 0 4 0 1 0 (-2), PolyRefl.mkT 4 0 0 0 1 (-2), PolyRefl.mkT 4 0 0 1 0 (-1)]
def core25_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 4 (1), PolyRefl.mkT 0 4 0 4 0 (1), PolyRefl.mkT 1 3 0 0 4 (2), PolyRefl.mkT 3 1 0 4 0 (-2), PolyRefl.mkT 4 0 0 0 4 (-1), PolyRefl.mkT 4 0 0 4 0 (-1)]
def core26_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 4 (1), PolyRefl.mkT 0 4 0 2 2 (1), PolyRefl.mkT 1 3 0 4 0 (2), PolyRefl.mkT 3 1 0 0 4 (-2), PolyRefl.mkT 4 0 0 2 2 (-1), PolyRefl.mkT 4 0 0 4 0 (-1)]
def core27_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-1), PolyRefl.mkT 0 4 0 2 0 (-1), PolyRefl.mkT 1 3 0 2 0 (2), PolyRefl.mkT 3 1 0 0 2 (-2), PolyRefl.mkT 4 0 0 0 2 (1), PolyRefl.mkT 4 0 0 1 1 (1)]
def core28_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 1 (2), PolyRefl.mkT 0 4 0 1 0 (-1), PolyRefl.mkT 4 0 0 0 1 (1), PolyRefl.mkT 4 0 0 1 0 (-2)]
def core29_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 2 2 (-1), PolyRefl.mkT 0 4 0 4 0 (-1), PolyRefl.mkT 1 3 0 4 0 (2), PolyRefl.mkT 3 1 0 0 4 (-2), PolyRefl.mkT 4 0 0 0 4 (1), PolyRefl.mkT 4 0 0 2 2 (1)]
def core30_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 4 (1), PolyRefl.mkT 0 4 0 2 2 (-1), PolyRefl.mkT 1 3 0 0 4 (2), PolyRefl.mkT 3 1 0 4 0 (-2), PolyRefl.mkT 4 0 0 2 2 (1), PolyRefl.mkT 4 0 0 4 0 (-1)]
def core31_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (1), PolyRefl.mkT 0 4 0 1 1 (-1), PolyRefl.mkT 1 3 0 2 0 (2), PolyRefl.mkT 3 1 0 0 2 (-2), PolyRefl.mkT 4 0 0 1 1 (1), PolyRefl.mkT 4 0 0 2 0 (-1)]
def core32_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (1), PolyRefl.mkT 0 4 0 1 1 (1), PolyRefl.mkT 1 3 0 2 0 (2), PolyRefl.mkT 3 1 0 0 2 (-2), PolyRefl.mkT 4 0 0 1 1 (-1), PolyRefl.mkT 4 0 0 2 0 (-1)]
def core33_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 2 (-1), PolyRefl.mkT 0 2 0 2 0 (-1), PolyRefl.mkT 1 1 0 1 1 (-2), PolyRefl.mkT 2 0 0 0 2 (-1), PolyRefl.mkT 2 0 0 2 0 (-1)]
def core34_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 4 (1), PolyRefl.mkT 0 2 0 4 0 (1), PolyRefl.mkT 1 1 0 0 4 (2), PolyRefl.mkT 1 1 0 4 0 (-2), PolyRefl.mkT 2 0 0 0 4 (-1), PolyRefl.mkT 2 0 0 4 0 (-1)]
def core35_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-1), PolyRefl.mkT 0 4 0 2 0 (1), PolyRefl.mkT 1 3 0 2 0 (2), PolyRefl.mkT 3 1 0 0 2 (-2), PolyRefl.mkT 4 0 0 0 2 (-1), PolyRefl.mkT 4 0 0 1 1 (1)]
def core36_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-1), PolyRefl.mkT 0 4 0 2 0 (1), PolyRefl.mkT 1 3 0 0 2 (2), PolyRefl.mkT 3 1 0 2 0 (-2), PolyRefl.mkT 4 0 0 0 2 (-1), PolyRefl.mkT 4 0 0 1 1 (1)]
def core37_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-1), PolyRefl.mkT 0 4 0 2 0 (-1), PolyRefl.mkT 1 3 0 0 2 (2), PolyRefl.mkT 3 1 0 2 0 (-2), PolyRefl.mkT 4 0 0 0 2 (1), PolyRefl.mkT 4 0 0 1 1 (1)]
def core38_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 4 (-1), PolyRefl.mkT 0 4 0 2 2 (-1), PolyRefl.mkT 1 3 0 0 4 (2), PolyRefl.mkT 3 1 0 4 0 (-2), PolyRefl.mkT 4 0 0 2 2 (1), PolyRefl.mkT 4 0 0 4 0 (1)]
def core39_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 2 2 (1), PolyRefl.mkT 0 4 0 4 0 (1), PolyRefl.mkT 1 3 0 0 4 (2), PolyRefl.mkT 3 1 0 4 0 (-2), PolyRefl.mkT 4 0 0 0 4 (-1), PolyRefl.mkT 4 0 0 2 2 (-1)]
def core40_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (1), PolyRefl.mkT 0 4 0 2 0 (1), PolyRefl.mkT 1 3 0 2 0 (2), PolyRefl.mkT 3 1 0 0 2 (-2), PolyRefl.mkT 4 0 0 0 2 (-1), PolyRefl.mkT 4 0 0 1 1 (-1)]
def core41_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (1), PolyRefl.mkT 0 4 0 2 0 (-1), PolyRefl.mkT 1 3 0 0 2 (2), PolyRefl.mkT 3 1 0 2 0 (-2), PolyRefl.mkT 4 0 0 0 2 (1), PolyRefl.mkT 4 0 0 1 1 (-1)]
def core42_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (1), PolyRefl.mkT 0 4 0 2 0 (1), PolyRefl.mkT 1 3 0 0 2 (2), PolyRefl.mkT 3 1 0 2 0 (-2), PolyRefl.mkT 4 0 0 0 2 (-1), PolyRefl.mkT 4 0 0 1 1 (-1)]
def core43_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 4 (-1), PolyRefl.mkT 0 4 0 4 0 (-1), PolyRefl.mkT 2 2 0 0 4 (2), PolyRefl.mkT 2 2 0 4 0 (-2), PolyRefl.mkT 4 0 0 0 4 (1), PolyRefl.mkT 4 0 0 4 0 (1)]
def core44_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 2 2 (-1), PolyRefl.mkT 0 4 0 4 0 (1), PolyRefl.mkT 1 3 0 0 4 (2), PolyRefl.mkT 3 1 0 4 0 (-2), PolyRefl.mkT 4 0 0 0 4 (-1), PolyRefl.mkT 4 0 0 2 2 (1)]
def core45_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 4 (-1), PolyRefl.mkT 0 4 0 2 2 (1), PolyRefl.mkT 1 3 0 0 4 (2), PolyRefl.mkT 3 1 0 4 0 (-2), PolyRefl.mkT 4 0 0 2 2 (-1), PolyRefl.mkT 4 0 0 4 0 (1)]
def core46_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (-1), PolyRefl.mkT 0 4 0 1 1 (1), PolyRefl.mkT 1 3 0 0 2 (2), PolyRefl.mkT 3 1 0 2 0 (-2), PolyRefl.mkT 4 0 0 1 1 (-1), PolyRefl.mkT 4 0 0 2 0 (1)]
def core47_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 4 (-1), PolyRefl.mkT 0 4 0 2 2 (1), PolyRefl.mkT 1 3 0 4 0 (2), PolyRefl.mkT 3 1 0 0 4 (-2), PolyRefl.mkT 4 0 0 2 2 (-1), PolyRefl.mkT 4 0 0 4 0 (1)]
def core48_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 2 2 (1), PolyRefl.mkT 0 4 0 4 0 (1), PolyRefl.mkT 1 3 0 4 0 (2), PolyRefl.mkT 3 1 0 0 4 (-2), PolyRefl.mkT 4 0 0 0 4 (-1), PolyRefl.mkT 4 0 0 2 2 (-1)]
def core49_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 2 2 (-1), PolyRefl.mkT 0 4 0 4 0 (1), PolyRefl.mkT 1 3 0 4 0 (2), PolyRefl.mkT 3 1 0 0 4 (-2), PolyRefl.mkT 4 0 0 0 4 (-1), PolyRefl.mkT 4 0 0 2 2 (1)]
def core50_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (-1), PolyRefl.mkT 0 4 0 1 1 (-1), PolyRefl.mkT 1 3 0 2 0 (2), PolyRefl.mkT 3 1 0 0 2 (-2), PolyRefl.mkT 4 0 0 1 1 (1), PolyRefl.mkT 4 0 0 2 0 (1)]
def core51_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (1), PolyRefl.mkT 0 4 0 1 1 (-1), PolyRefl.mkT 1 3 0 0 2 (2), PolyRefl.mkT 3 1 0 2 0 (-2), PolyRefl.mkT 4 0 0 1 1 (1), PolyRefl.mkT 4 0 0 2 0 (-1)]
def core52_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (-1), PolyRefl.mkT 0 4 0 1 1 (-1), PolyRefl.mkT 1 3 0 0 2 (2), PolyRefl.mkT 3 1 0 2 0 (-2), PolyRefl.mkT 4 0 0 1 1 (1), PolyRefl.mkT 4 0 0 2 0 (1)]
def core53_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 2 2 (1), PolyRefl.mkT 0 4 0 4 0 (-1), PolyRefl.mkT 1 3 0 0 4 (2), PolyRefl.mkT 3 1 0 4 0 (-2), PolyRefl.mkT 4 0 0 0 4 (1), PolyRefl.mkT 4 0 0 2 2 (-1)]

theorem pair_0_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core0_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core1_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp2_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp2_2_2 = PolyRefl.normalizeFast (GaussData.imOf core0_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core0_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp9_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp9_2_2 = PolyRefl.normalizeFast (GaussData.reOf core1_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core1_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf0_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp0_2_2 CertForms.f_2_2_6
    2 2 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_6 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_6 r s hr hs hco)

theorem pair_1_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core2_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core3_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp18_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp18_2_2 = PolyRefl.normalizeFast (GaussData.reOf core2_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core2_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp21_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp21_2_2 = PolyRefl.normalizeFast (GaussData.reOf core3_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core3_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf1_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp17_2_2 CertForms.f_2_2_8
    2 0 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_8 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_8 r s hr hs hco)

theorem pair_2_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core4_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core5_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp27_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp27_2_2 = PolyRefl.normalizeFast (GaussData.imOf core4_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core4_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp33_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp33_2_2 = PolyRefl.normalizeFast (GaussData.imOf core5_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core5_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf2_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp26_2_2 CertForms.f_2_2_0
    2 2 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_0 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_0 r s hr hs hco)

theorem pair_3_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core6_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core7_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp42_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp42_2_2 = PolyRefl.normalizeFast (GaussData.imOf core6_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core6_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp45_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp45_2_2 = PolyRefl.normalizeFast (GaussData.imOf core7_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core7_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf3_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp41_2_2 CertForms.f_2_2_2
    2 2 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_2 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_2 r s hr hs hco)

theorem pair_4_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core8_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core9_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp52_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp52_2_2 = PolyRefl.normalizeFast (GaussData.reOf core8_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core8_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp55_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp55_2_2 = PolyRefl.normalizeFast (GaussData.imOf core9_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core9_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf4_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp51_2_2 CertForms.f_2_2_9
    0 0 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_9 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_9 r s hr hs hco)

theorem pair_5_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core10_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core11_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp65_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp65_2_2 = PolyRefl.normalizeFast (GaussData.imOf core10_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core10_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp68_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp68_2_2 = PolyRefl.normalizeFast (GaussData.imOf core11_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core11_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf5_2_2 (R := ℤ) r s ((q : ℤ)) X Y hcirc0 hin1 hin2
  exact CertKit.endpoint_split cp63_2_2 CertForms.f_2_2_11
    2 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_11 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_11 r s hr hs hco)

theorem pair_6_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core12_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core13_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp77_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp77_2_2 = PolyRefl.normalizeFast (GaussData.reOf core12_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core12_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp79_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp79_2_2 = PolyRefl.normalizeFast (GaussData.imOf core13_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core13_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf6_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp76_2_2 CertForms.f_2_2_7
    2 2 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_7 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_7 r s hr hs hco)

theorem pair_7_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core14_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core8_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp86_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp86_2_2 = PolyRefl.normalizeFast (GaussData.imOf core14_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core14_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp52_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp52_2_2 = PolyRefl.normalizeFast (GaussData.reOf core8_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core8_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf7_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp85_2_2 CertForms.f_2_2_13
    0 0 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_13 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_13 r s hr hs hco)

theorem pair_8_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core3_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core8_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp21_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp21_2_2 = PolyRefl.normalizeFast (GaussData.reOf core3_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core3_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp52_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp52_2_2 = PolyRefl.normalizeFast (GaussData.reOf core8_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core8_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf8_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp17_2_2 CertForms.f_2_2_8
    2 0 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_8 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_8 r s hr hs hco)

theorem pair_9_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core2_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core14_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp18_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp18_2_2 = PolyRefl.normalizeFast (GaussData.reOf core2_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core2_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp86_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp86_2_2 = PolyRefl.normalizeFast (GaussData.imOf core14_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core14_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf9_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp85_2_2 CertForms.f_2_2_13
    0 0 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_13 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_13 r s hr hs hco)

theorem pair_10_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core8_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core3_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp52_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp52_2_2 = PolyRefl.normalizeFast (GaussData.reOf core8_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core8_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp21_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp21_2_2 = PolyRefl.normalizeFast (GaussData.reOf core3_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core3_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf10_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp17_2_2 CertForms.f_2_2_8
    2 0 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_8 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_8 r s hr hs hco)

theorem pair_11_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core2_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core15_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp18_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp18_2_2 = PolyRefl.normalizeFast (GaussData.reOf core2_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core2_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp96_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp96_2_2 = PolyRefl.normalizeFast (GaussData.imOf core15_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core15_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf11_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp95_2_2 CertForms.f_2_2_5
    0 0 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_5 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_5 r s hr hs hco)

theorem pair_12_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core16_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core17_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp103_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp103_2_2 = PolyRefl.normalizeFast (GaussData.reOf core16_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core16_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp106_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp106_2_2 = PolyRefl.normalizeFast (GaussData.imOf core17_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core17_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf12_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp102_2_2 CertForms.f_2_2_12
    0 0 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_12 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_12 r s hr hs hco)

theorem pair_13_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core2_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core18_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp18_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp18_2_2 = PolyRefl.normalizeFast (GaussData.reOf core2_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core2_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp114_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp114_2_2 = PolyRefl.normalizeFast (GaussData.imOf core18_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core18_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf13_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp85_2_2 CertForms.f_2_2_13
    0 0 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_13 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_13 r s hr hs hco)

theorem pair_14_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core19_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core8_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp119_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp119_2_2 = PolyRefl.normalizeFast (GaussData.reOf core19_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core19_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp52_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp52_2_2 = PolyRefl.normalizeFast (GaussData.reOf core8_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core8_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf14_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp118_2_2 CertForms.f_2_2_3
    0 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_3 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_3 r s hr hs hco)

theorem pair_15_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core20_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core21_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp125_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp125_2_2 = PolyRefl.normalizeFast (GaussData.reOf core20_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core20_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp128_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp128_2_2 = PolyRefl.normalizeFast (GaussData.imOf core21_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core21_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf15_2_2 (R := ℤ) r s ((q : ℤ)) X Y hcirc0 hin1 hin2
  exact CertKit.endpoint_split cp123_2_2 CertForms.f_2_2_1
    2 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_1 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_1 r s hr hs hco)

theorem pair_16_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core22_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core5_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp135_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp135_2_2 = PolyRefl.normalizeFast (GaussData.imOf core22_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core22_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp33_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp33_2_2 = PolyRefl.normalizeFast (GaussData.imOf core5_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core5_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf16_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp41_2_2 CertForms.f_2_2_2
    2 2 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_2 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_2 r s hr hs hco)

theorem pair_17_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core23_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core24_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp140_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp140_2_2 = PolyRefl.normalizeFast (GaussData.imOf core23_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core23_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp126_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp126_2_2 = PolyRefl.normalizeFast (GaussData.reOf core24_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core24_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf17_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp139_2_2 CertForms.f_2_2_10
    2 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_10 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_10 r s hr hs hco)

theorem pair_18_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core8_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core15_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp52_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp52_2_2 = PolyRefl.normalizeFast (GaussData.reOf core8_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core8_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp96_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp96_2_2 = PolyRefl.normalizeFast (GaussData.imOf core15_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core15_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf18_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp95_2_2 CertForms.f_2_2_5
    0 0 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_5 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_5 r s hr hs hco)

theorem pair_19_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core8_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core25_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp52_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp52_2_2 = PolyRefl.normalizeFast (GaussData.reOf core8_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core8_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp146_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp146_2_2 = PolyRefl.normalizeFast (GaussData.imOf core25_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core25_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf19_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp95_2_2 CertForms.f_2_2_5
    0 0 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_5 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_5 r s hr hs hco)

theorem pair_20_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core26_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core5_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp150_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp150_2_2 = PolyRefl.normalizeFast (GaussData.imOf core26_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core26_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp33_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp33_2_2 = PolyRefl.normalizeFast (GaussData.imOf core5_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core5_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf20_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp0_2_2 CertForms.f_2_2_6
    2 2 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_6 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_6 r s hr hs hco)

theorem pair_21_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core27_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core28_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp156_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp156_2_2 = PolyRefl.normalizeFast (GaussData.imOf core27_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core27_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp160_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp160_2_2 = PolyRefl.normalizeFast (GaussData.imOf core28_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core28_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf21_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp123_2_2 CertForms.f_2_2_1
    2 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_1 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_1 r s hr hs hco)

theorem pair_22_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core29_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core6_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp163_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp163_2_2 = PolyRefl.normalizeFast (GaussData.imOf core29_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core29_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp42_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp42_2_2 = PolyRefl.normalizeFast (GaussData.imOf core6_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core6_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf22_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp76_2_2 CertForms.f_2_2_7
    2 2 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_7 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_7 r s hr hs hco)

theorem pair_23_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core30_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core1_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp169_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp169_2_2 = PolyRefl.normalizeFast (GaussData.imOf core30_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core30_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp9_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp9_2_2 = PolyRefl.normalizeFast (GaussData.reOf core1_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core1_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf23_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp26_2_2 CertForms.f_2_2_0
    2 2 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_0 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_0 r s hr hs hco)

theorem pair_24_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core24_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core31_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp126_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp126_2_2 = PolyRefl.normalizeFast (GaussData.reOf core24_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core24_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp176_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp176_2_2 = PolyRefl.normalizeFast (GaussData.imOf core31_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core31_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf24_2_2 (R := ℤ) r s ((q : ℤ)) X Y hcirc0 hin1 hin2
  exact CertKit.endpoint_split cp175_2_2 CertForms.f_2_2_4
    2 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_4 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_4 r s hr hs hco)

theorem pair_25_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core10_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core32_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp65_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp65_2_2 = PolyRefl.normalizeFast (GaussData.imOf core10_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core10_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp182_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp182_2_2 = PolyRefl.normalizeFast (GaussData.imOf core32_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core32_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf25_2_2 (R := ℤ) r s ((q : ℤ)) X Y hcirc0 hin1 hin2
  exact CertKit.endpoint_split cp175_2_2 CertForms.f_2_2_4
    2 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_4 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_4 r s hr hs hco)

theorem pair_26_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core33_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core17_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp187_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp187_2_2 = PolyRefl.normalizeFast (GaussData.reOf core33_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core33_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp106_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp106_2_2 = PolyRefl.normalizeFast (GaussData.imOf core17_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core17_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf26_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp102_2_2 CertForms.f_2_2_12
    0 0 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_12 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_12 r s hr hs hco)

theorem pair_27_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core34_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core16_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp191_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp191_2_2 = PolyRefl.normalizeFast (GaussData.imOf core34_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core34_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp103_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp103_2_2 = PolyRefl.normalizeFast (GaussData.reOf core16_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core16_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf27_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp102_2_2 CertForms.f_2_2_12
    0 0 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_12 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_12 r s hr hs hco)

theorem pair_28_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core35_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core20_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp193_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp193_2_2 = PolyRefl.normalizeFast (GaussData.imOf core35_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core35_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp125_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp125_2_2 = PolyRefl.normalizeFast (GaussData.reOf core20_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core20_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf28_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp63_2_2 CertForms.f_2_2_11
    2 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_11 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_11 r s hr hs hco)

theorem pair_29_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core6_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core29_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp42_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp42_2_2 = PolyRefl.normalizeFast (GaussData.imOf core6_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core6_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp163_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp163_2_2 = PolyRefl.normalizeFast (GaussData.imOf core29_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core29_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf29_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp76_2_2 CertForms.f_2_2_7
    2 2 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_7 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_7 r s hr hs hco)

theorem pair_30_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core20_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core36_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp125_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp125_2_2 = PolyRefl.normalizeFast (GaussData.reOf core20_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core20_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp198_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp198_2_2 = PolyRefl.normalizeFast (GaussData.imOf core36_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core36_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf30_2_2 (R := ℤ) r s ((q : ℤ)) X Y hcirc0 hin1 hin2
  exact CertKit.endpoint_split cp175_2_2 CertForms.f_2_2_4
    2 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_4 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_4 r s hr hs hco)

theorem pair_31_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core8_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core14_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp52_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp52_2_2 = PolyRefl.normalizeFast (GaussData.reOf core8_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core8_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp86_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp86_2_2 = PolyRefl.normalizeFast (GaussData.imOf core14_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core14_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf31_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp85_2_2 CertForms.f_2_2_13
    0 0 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_13 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_13 r s hr hs hco)

theorem pair_32_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core28_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core27_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp160_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp160_2_2 = PolyRefl.normalizeFast (GaussData.imOf core28_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core28_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp156_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp156_2_2 = PolyRefl.normalizeFast (GaussData.imOf core27_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core27_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf32_2_2 (R := ℤ) r s ((q : ℤ)) X Y hcirc0 hin1 hin2
  exact CertKit.endpoint_split cp123_2_2 CertForms.f_2_2_1
    2 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_1 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_1 r s hr hs hco)

theorem pair_33_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core28_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core37_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp160_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp160_2_2 = PolyRefl.normalizeFast (GaussData.imOf core28_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core28_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp201_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp201_2_2 = PolyRefl.normalizeFast (GaussData.imOf core37_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core37_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf33_2_2 (R := ℤ) r s ((q : ℤ)) X Y hcirc0 hin1 hin2
  exact CertKit.endpoint_split cp139_2_2 CertForms.f_2_2_10
    2 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_10 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_10 r s hr hs hco)

theorem pair_34_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core38_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core5_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp206_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp206_2_2 = PolyRefl.normalizeFast (GaussData.imOf core38_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core38_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp33_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp33_2_2 = PolyRefl.normalizeFast (GaussData.imOf core5_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core5_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf34_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp76_2_2 CertForms.f_2_2_7
    2 2 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_7 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_7 r s hr hs hco)

theorem pair_35_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core17_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core33_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp106_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp106_2_2 = PolyRefl.normalizeFast (GaussData.imOf core17_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core17_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp187_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp187_2_2 = PolyRefl.normalizeFast (GaussData.reOf core33_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core33_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf35_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp102_2_2 CertForms.f_2_2_12
    0 0 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_12 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_12 r s hr hs hco)

theorem pair_36_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core1_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core30_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp9_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp9_2_2 = PolyRefl.normalizeFast (GaussData.reOf core1_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core1_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp169_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp169_2_2 = PolyRefl.normalizeFast (GaussData.imOf core30_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core30_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf36_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp26_2_2 CertForms.f_2_2_0
    2 2 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_0 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_0 r s hr hs hco)

theorem pair_37_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core6_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core39_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp42_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp42_2_2 = PolyRefl.normalizeFast (GaussData.imOf core6_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core6_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp210_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp210_2_2 = PolyRefl.normalizeFast (GaussData.imOf core39_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core39_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf37_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp0_2_2 CertForms.f_2_2_6
    2 2 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_6 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_6 r s hr hs hco)

theorem pair_38_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core24_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core23_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp126_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp126_2_2 = PolyRefl.normalizeFast (GaussData.reOf core24_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core24_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp140_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp140_2_2 = PolyRefl.normalizeFast (GaussData.imOf core23_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core23_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf38_2_2 (R := ℤ) r s ((q : ℤ)) X Y hcirc0 hin1 hin2
  exact CertKit.endpoint_split cp139_2_2 CertForms.f_2_2_10
    2 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_10 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_10 r s hr hs hco)

theorem pair_39_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core5_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core4_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp33_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp33_2_2 = PolyRefl.normalizeFast (GaussData.imOf core5_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core5_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp27_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp27_2_2 = PolyRefl.normalizeFast (GaussData.imOf core4_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core4_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf39_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp26_2_2 CertForms.f_2_2_0
    2 2 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_0 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_0 r s hr hs hco)

theorem pair_40_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core40_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core28_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp214_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp214_2_2 = PolyRefl.normalizeFast (GaussData.imOf core40_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core40_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp160_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp160_2_2 = PolyRefl.normalizeFast (GaussData.imOf core28_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core28_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf40_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp63_2_2 CertForms.f_2_2_11
    2 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_11 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_11 r s hr hs hco)

theorem pair_41_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core36_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core20_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp198_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp198_2_2 = PolyRefl.normalizeFast (GaussData.imOf core36_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core36_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp125_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp125_2_2 = PolyRefl.normalizeFast (GaussData.reOf core20_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core20_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf41_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp175_2_2 CertForms.f_2_2_4
    2 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_4 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_4 r s hr hs hco)

theorem pair_42_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core41_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core20_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp217_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp217_2_2 = PolyRefl.normalizeFast (GaussData.imOf core41_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core41_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp125_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp125_2_2 = PolyRefl.normalizeFast (GaussData.reOf core20_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core20_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf42_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp139_2_2 CertForms.f_2_2_10
    2 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_10 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_10 r s hr hs hco)

theorem pair_43_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core21_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core20_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp128_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp128_2_2 = PolyRefl.normalizeFast (GaussData.imOf core21_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core21_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp125_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp125_2_2 = PolyRefl.normalizeFast (GaussData.reOf core20_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core20_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf43_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp123_2_2 CertForms.f_2_2_1
    2 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_1 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_1 r s hr hs hco)

theorem pair_44_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core42_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core28_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp220_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp220_2_2 = PolyRefl.normalizeFast (GaussData.imOf core42_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core42_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp160_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp160_2_2 = PolyRefl.normalizeFast (GaussData.imOf core28_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core28_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf44_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp175_2_2 CertForms.f_2_2_4
    2 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_4 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_4 r s hr hs hco)

theorem pair_45_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core17_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core16_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp106_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp106_2_2 = PolyRefl.normalizeFast (GaussData.imOf core17_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core17_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp103_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp103_2_2 = PolyRefl.normalizeFast (GaussData.reOf core16_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core16_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf45_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp102_2_2 CertForms.f_2_2_12
    0 0 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_12 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_12 r s hr hs hco)

theorem pair_46_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core34_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core33_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp191_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp191_2_2 = PolyRefl.normalizeFast (GaussData.imOf core34_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core34_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp187_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp187_2_2 = PolyRefl.normalizeFast (GaussData.reOf core33_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core33_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf46_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp102_2_2 CertForms.f_2_2_12
    0 0 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_12 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_12 r s hr hs hco)

theorem pair_47_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core18_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core2_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp114_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp114_2_2 = PolyRefl.normalizeFast (GaussData.imOf core18_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core18_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp18_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp18_2_2 = PolyRefl.normalizeFast (GaussData.reOf core2_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core2_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf47_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp85_2_2 CertForms.f_2_2_13
    0 0 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_13 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_13 r s hr hs hco)

theorem pair_48_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core7_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core6_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp45_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp45_2_2 = PolyRefl.normalizeFast (GaussData.imOf core7_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core7_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp42_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp42_2_2 = PolyRefl.normalizeFast (GaussData.imOf core6_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core6_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf48_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp41_2_2 CertForms.f_2_2_2
    2 2 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_2 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_2 r s hr hs hco)

theorem pair_49_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core2_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core43_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp18_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp18_2_2 = PolyRefl.normalizeFast (GaussData.reOf core2_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core2_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp223_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp223_2_2 = PolyRefl.normalizeFast (GaussData.imOf core43_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core43_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf49_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp51_2_2 CertForms.f_2_2_9
    0 0 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_9 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_9 r s hr hs hco)

theorem pair_50_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core11_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core10_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp68_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp68_2_2 = PolyRefl.normalizeFast (GaussData.imOf core11_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core11_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp65_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp65_2_2 = PolyRefl.normalizeFast (GaussData.imOf core10_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core10_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf50_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp63_2_2 CertForms.f_2_2_11
    2 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_11 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_11 r s hr hs hco)

theorem pair_51_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core44_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core12_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp226_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp226_2_2 = PolyRefl.normalizeFast (GaussData.imOf core44_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core44_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp77_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp77_2_2 = PolyRefl.normalizeFast (GaussData.reOf core12_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core12_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf51_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp0_2_2 CertForms.f_2_2_6
    2 2 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_6 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_6 r s hr hs hco)

theorem pair_52_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core1_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core45_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp9_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp9_2_2 = PolyRefl.normalizeFast (GaussData.reOf core1_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core1_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp230_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp230_2_2 = PolyRefl.normalizeFast (GaussData.imOf core45_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core45_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf52_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp76_2_2 CertForms.f_2_2_7
    2 2 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_7 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_7 r s hr hs hco)

theorem pair_53_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core5_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core26_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp33_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp33_2_2 = PolyRefl.normalizeFast (GaussData.imOf core5_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core5_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp150_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp150_2_2 = PolyRefl.normalizeFast (GaussData.imOf core26_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core26_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf53_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp0_2_2 CertForms.f_2_2_6
    2 2 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_6 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_6 r s hr hs hco)

theorem pair_54_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core24_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core46_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp126_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp126_2_2 = PolyRefl.normalizeFast (GaussData.reOf core24_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core24_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp234_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp234_2_2 = PolyRefl.normalizeFast (GaussData.imOf core46_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core46_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf54_2_2 (R := ℤ) r s ((q : ℤ)) X Y hcirc0 hin1 hin2
  exact CertKit.endpoint_split cp123_2_2 CertForms.f_2_2_1
    2 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_1 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_1 r s hr hs hco)

theorem pair_55_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core9_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core2_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp55_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp55_2_2 = PolyRefl.normalizeFast (GaussData.imOf core9_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core9_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp18_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp18_2_2 = PolyRefl.normalizeFast (GaussData.reOf core2_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core2_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf55_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp51_2_2 CertForms.f_2_2_9
    0 0 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_9 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_9 r s hr hs hco)

theorem pair_56_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core47_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core1_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp237_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp237_2_2 = PolyRefl.normalizeFast (GaussData.imOf core47_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core47_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp9_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp9_2_2 = PolyRefl.normalizeFast (GaussData.reOf core1_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core1_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf56_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp41_2_2 CertForms.f_2_2_2
    2 2 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_2 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_2 r s hr hs hco)

theorem pair_57_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core25_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core8_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp146_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp146_2_2 = PolyRefl.normalizeFast (GaussData.imOf core25_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core25_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp52_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp52_2_2 = PolyRefl.normalizeFast (GaussData.reOf core8_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core8_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf57_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp95_2_2 CertForms.f_2_2_5
    0 0 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_5 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_5 r s hr hs hco)

theorem pair_58_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core20_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core35_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp125_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp125_2_2 = PolyRefl.normalizeFast (GaussData.reOf core20_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core20_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp193_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp193_2_2 = PolyRefl.normalizeFast (GaussData.imOf core35_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core35_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf58_2_2 (R := ℤ) r s ((q : ℤ)) X Y hcirc0 hin1 hin2
  exact CertKit.endpoint_split cp63_2_2 CertForms.f_2_2_11
    2 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_11 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_11 r s hr hs hco)

theorem pair_59_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core6_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core48_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp42_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp42_2_2 = PolyRefl.normalizeFast (GaussData.imOf core6_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core6_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp243_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp243_2_2 = PolyRefl.normalizeFast (GaussData.imOf core48_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core48_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf59_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp26_2_2 CertForms.f_2_2_0
    2 2 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_0 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_0 r s hr hs hco)

theorem pair_60_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core2_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core19_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp18_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp18_2_2 = PolyRefl.normalizeFast (GaussData.reOf core2_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core2_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp119_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp119_2_2 = PolyRefl.normalizeFast (GaussData.reOf core19_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core19_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf60_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp118_2_2 CertForms.f_2_2_3
    0 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_3 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_3 r s hr hs hco)

theorem pair_61_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core16_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core34_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp103_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp103_2_2 = PolyRefl.normalizeFast (GaussData.reOf core16_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core16_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp191_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp191_2_2 = PolyRefl.normalizeFast (GaussData.imOf core34_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core34_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf61_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp102_2_2 CertForms.f_2_2_12
    0 0 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_12 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_12 r s hr hs hco)

theorem pair_62_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core45_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core1_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp230_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp230_2_2 = PolyRefl.normalizeFast (GaussData.imOf core45_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core45_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp9_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp9_2_2 = PolyRefl.normalizeFast (GaussData.reOf core1_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core1_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf62_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp76_2_2 CertForms.f_2_2_7
    2 2 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_7 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_7 r s hr hs hco)

theorem pair_63_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core2_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core9_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp18_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp18_2_2 = PolyRefl.normalizeFast (GaussData.reOf core2_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core2_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp55_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp55_2_2 = PolyRefl.normalizeFast (GaussData.imOf core9_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core9_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf63_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp51_2_2 CertForms.f_2_2_9
    0 0 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_9 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_9 r s hr hs hco)

theorem pair_64_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core33_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core34_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp187_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp187_2_2 = PolyRefl.normalizeFast (GaussData.reOf core33_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core33_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp191_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp191_2_2 = PolyRefl.normalizeFast (GaussData.imOf core34_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core34_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf64_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp102_2_2 CertForms.f_2_2_12
    0 0 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_12 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_12 r s hr hs hco)

theorem pair_65_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core46_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core24_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp234_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp234_2_2 = PolyRefl.normalizeFast (GaussData.imOf core46_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core46_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp126_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp126_2_2 = PolyRefl.normalizeFast (GaussData.reOf core24_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core24_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf65_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp123_2_2 CertForms.f_2_2_1
    2 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_1 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_1 r s hr hs hco)

theorem pair_66_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core1_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core47_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp9_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp9_2_2 = PolyRefl.normalizeFast (GaussData.reOf core1_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core1_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp237_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp237_2_2 = PolyRefl.normalizeFast (GaussData.imOf core47_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core47_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf66_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp41_2_2 CertForms.f_2_2_2
    2 2 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_2 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_2 r s hr hs hco)

theorem pair_67_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core12_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core49_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp77_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp77_2_2 = PolyRefl.normalizeFast (GaussData.reOf core12_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core12_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp248_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp248_2_2 = PolyRefl.normalizeFast (GaussData.imOf core49_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core49_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf67_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp26_2_2 CertForms.f_2_2_0
    2 2 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_0 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_0 r s hr hs hco)

theorem pair_68_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core18_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core8_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp114_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp114_2_2 = PolyRefl.normalizeFast (GaussData.imOf core18_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core18_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp52_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp52_2_2 = PolyRefl.normalizeFast (GaussData.reOf core8_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core8_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf68_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp85_2_2 CertForms.f_2_2_13
    0 0 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_13 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_13 r s hr hs hco)

theorem pair_69_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core28_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core40_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp160_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp160_2_2 = PolyRefl.normalizeFast (GaussData.imOf core28_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core28_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp214_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp214_2_2 = PolyRefl.normalizeFast (GaussData.imOf core40_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core40_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf69_2_2 (R := ℤ) r s ((q : ℤ)) X Y hcirc0 hin1 hin2
  exact CertKit.endpoint_split cp63_2_2 CertForms.f_2_2_11
    2 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_11 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_11 r s hr hs hco)

theorem pair_70_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core5_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core22_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp33_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp33_2_2 = PolyRefl.normalizeFast (GaussData.imOf core5_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core5_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp135_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp135_2_2 = PolyRefl.normalizeFast (GaussData.imOf core22_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core22_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf70_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp41_2_2 CertForms.f_2_2_2
    2 2 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_2 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_2 r s hr hs hco)

theorem pair_71_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core10_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core50_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp65_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp65_2_2 = PolyRefl.normalizeFast (GaussData.imOf core10_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core10_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp252_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp252_2_2 = PolyRefl.normalizeFast (GaussData.imOf core50_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core50_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf71_2_2 (R := ℤ) r s ((q : ℤ)) X Y hcirc0 hin1 hin2
  exact CertKit.endpoint_split cp139_2_2 CertForms.f_2_2_10
    2 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_10 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_10 r s hr hs hco)

theorem pair_72_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core51_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core24_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp255_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp255_2_2 = PolyRefl.normalizeFast (GaussData.imOf core51_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core51_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp126_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp126_2_2 = PolyRefl.normalizeFast (GaussData.reOf core24_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core24_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf72_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp63_2_2 CertForms.f_2_2_11
    2 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_11 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_11 r s hr hs hco)

theorem pair_73_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core43_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core2_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp223_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp223_2_2 = PolyRefl.normalizeFast (GaussData.imOf core43_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core43_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp18_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp18_2_2 = PolyRefl.normalizeFast (GaussData.reOf core2_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core2_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf73_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp51_2_2 CertForms.f_2_2_9
    0 0 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_9 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_9 r s hr hs hco)

theorem pair_74_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core52_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core10_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp258_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp258_2_2 = PolyRefl.normalizeFast (GaussData.imOf core52_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core52_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp65_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp65_2_2 = PolyRefl.normalizeFast (GaussData.imOf core10_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core10_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf74_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp123_2_2 CertForms.f_2_2_1
    2 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_1 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_1 r s hr hs hco)

theorem pair_75_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core53_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core12_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp261_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp261_2_2 = PolyRefl.normalizeFast (GaussData.imOf core53_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core53_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp77_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp77_2_2 = PolyRefl.normalizeFast (GaussData.reOf core12_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core12_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf75_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp41_2_2 CertForms.f_2_2_2
    2 2 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_2 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_2 r s hr hs hco)

theorem pair_76_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core1_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core0_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp9_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp9_2_2 = PolyRefl.normalizeFast (GaussData.reOf core1_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core1_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp2_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp2_2_2 = PolyRefl.normalizeFast (GaussData.imOf core0_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core0_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf76_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp0_2_2 CertForms.f_2_2_6
    2 2 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_6 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_6 r s hr hs hco)

theorem pair_77_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core8_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core43_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp52_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp52_2_2 = PolyRefl.normalizeFast (GaussData.reOf core8_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core8_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp223_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp223_2_2 = PolyRefl.normalizeFast (GaussData.imOf core43_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core43_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf77_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp51_2_2 CertForms.f_2_2_9
    0 0 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_9 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_9 r s hr hs hco)

theorem pair_78_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core24_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core51_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp126_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp126_2_2 = PolyRefl.normalizeFast (GaussData.reOf core24_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core24_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp255_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp255_2_2 = PolyRefl.normalizeFast (GaussData.imOf core51_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core51_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf78_2_2 (R := ℤ) r s ((q : ℤ)) X Y hcirc0 hin1 hin2
  exact CertKit.endpoint_split cp63_2_2 CertForms.f_2_2_11
    2 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_11 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_11 r s hr hs hco)

theorem pair_79_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core31_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core24_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp176_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp176_2_2 = PolyRefl.normalizeFast (GaussData.imOf core31_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core31_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp126_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp126_2_2 = PolyRefl.normalizeFast (GaussData.reOf core24_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core24_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf79_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp175_2_2 CertForms.f_2_2_4
    2 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_4 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_4 r s hr hs hco)

theorem pair_80_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core20_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core41_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp125_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp125_2_2 = PolyRefl.normalizeFast (GaussData.reOf core20_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core20_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp217_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp217_2_2 = PolyRefl.normalizeFast (GaussData.imOf core41_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core41_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf80_2_2 (R := ℤ) r s ((q : ℤ)) X Y hcirc0 hin1 hin2
  exact CertKit.endpoint_split cp139_2_2 CertForms.f_2_2_10
    2 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_10 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_10 r s hr hs hco)

theorem pair_81_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core15_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core8_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp96_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp96_2_2 = PolyRefl.normalizeFast (GaussData.imOf core15_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core15_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp52_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp52_2_2 = PolyRefl.normalizeFast (GaussData.reOf core8_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core8_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf81_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp95_2_2 CertForms.f_2_2_5
    0 0 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_5 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_5 r s hr hs hco)

theorem pair_82_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core3_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core2_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp21_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp21_2_2 = PolyRefl.normalizeFast (GaussData.reOf core3_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core3_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp18_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp18_2_2 = PolyRefl.normalizeFast (GaussData.reOf core2_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core2_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf82_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp17_2_2 CertForms.f_2_2_8
    2 0 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_8 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_8 r s hr hs hco)

theorem pair_83_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core13_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core12_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp79_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp79_2_2 = PolyRefl.normalizeFast (GaussData.imOf core13_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core13_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp77_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp77_2_2 = PolyRefl.normalizeFast (GaussData.reOf core12_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core12_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf83_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp76_2_2 CertForms.f_2_2_7
    2 2 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_7 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_7 r s hr hs hco)

theorem pair_84_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core12_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core53_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp77_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp77_2_2 = PolyRefl.normalizeFast (GaussData.reOf core12_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core12_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp261_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp261_2_2 = PolyRefl.normalizeFast (GaussData.imOf core53_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core53_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf84_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp41_2_2 CertForms.f_2_2_2
    2 2 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_2 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_2 r s hr hs hco)

theorem pair_85_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core49_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core12_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp248_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp248_2_2 = PolyRefl.normalizeFast (GaussData.imOf core49_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core49_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp77_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp77_2_2 = PolyRefl.normalizeFast (GaussData.reOf core12_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core12_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf85_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp26_2_2 CertForms.f_2_2_0
    2 2 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_0 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_0 r s hr hs hco)

theorem pair_86_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core8_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core18_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp52_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp52_2_2 = PolyRefl.normalizeFast (GaussData.reOf core8_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core8_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp114_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp114_2_2 = PolyRefl.normalizeFast (GaussData.imOf core18_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core18_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf86_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp85_2_2 CertForms.f_2_2_13
    0 0 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_13 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_13 r s hr hs hco)

theorem pair_87_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core14_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core2_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp86_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp86_2_2 = PolyRefl.normalizeFast (GaussData.imOf core14_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core14_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp18_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp18_2_2 = PolyRefl.normalizeFast (GaussData.reOf core2_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core2_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf87_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp85_2_2 CertForms.f_2_2_13
    0 0 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_13 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_13 r s hr hs hco)

theorem pair_88_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core19_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core2_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp119_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp119_2_2 = PolyRefl.normalizeFast (GaussData.reOf core19_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core19_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp18_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp18_2_2 = PolyRefl.normalizeFast (GaussData.reOf core2_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core2_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf88_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp118_2_2 CertForms.f_2_2_3
    0 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_3 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_3 r s hr hs hco)

theorem pair_89_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core48_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core6_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp243_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp243_2_2 = PolyRefl.normalizeFast (GaussData.imOf core48_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core48_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp42_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp42_2_2 = PolyRefl.normalizeFast (GaussData.imOf core6_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core6_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf89_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp26_2_2 CertForms.f_2_2_0
    2 2 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_0 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_0 r s hr hs hco)

theorem pair_90_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core25_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core2_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp146_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp146_2_2 = PolyRefl.normalizeFast (GaussData.imOf core25_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core25_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp18_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp18_2_2 = PolyRefl.normalizeFast (GaussData.reOf core2_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core2_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf90_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp95_2_2 CertForms.f_2_2_5
    0 0 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_5 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_5 r s hr hs hco)

theorem pair_91_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core12_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core44_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp77_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp77_2_2 = PolyRefl.normalizeFast (GaussData.reOf core12_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core12_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp226_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp226_2_2 = PolyRefl.normalizeFast (GaussData.imOf core44_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core44_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf91_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp0_2_2 CertForms.f_2_2_6
    2 2 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_6 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_6 r s hr hs hco)

theorem pair_92_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core39_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core6_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp210_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp210_2_2 = PolyRefl.normalizeFast (GaussData.imOf core39_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core39_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp42_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp42_2_2 = PolyRefl.normalizeFast (GaussData.imOf core6_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core6_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf92_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp0_2_2 CertForms.f_2_2_6
    2 2 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_6 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_6 r s hr hs hco)

theorem pair_93_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core10_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core52_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp65_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp65_2_2 = PolyRefl.normalizeFast (GaussData.imOf core10_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core10_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp258_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp258_2_2 = PolyRefl.normalizeFast (GaussData.imOf core52_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core52_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf93_2_2 (R := ℤ) r s ((q : ℤ)) X Y hcirc0 hin1 hin2
  exact CertKit.endpoint_split cp123_2_2 CertForms.f_2_2_1
    2 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_1 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_1 r s hr hs hco)

theorem pair_94_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core32_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core10_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp182_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp182_2_2 = PolyRefl.normalizeFast (GaussData.imOf core32_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core32_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp65_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp65_2_2 = PolyRefl.normalizeFast (GaussData.imOf core10_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core10_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf94_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp175_2_2 CertForms.f_2_2_4
    2 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_4 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_4 r s hr hs hco)

theorem pair_95_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core2_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core25_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp18_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp18_2_2 = PolyRefl.normalizeFast (GaussData.reOf core2_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core2_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp146_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp146_2_2 = PolyRefl.normalizeFast (GaussData.imOf core25_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core25_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf95_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp95_2_2 CertForms.f_2_2_5
    0 0 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_5 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_5 r s hr hs hco)

theorem pair_96_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core37_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core28_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp201_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp201_2_2 = PolyRefl.normalizeFast (GaussData.imOf core37_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core37_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp160_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp160_2_2 = PolyRefl.normalizeFast (GaussData.imOf core28_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core28_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf96_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp139_2_2 CertForms.f_2_2_10
    2 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_10 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_10 r s hr hs hco)

theorem pair_97_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core5_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core38_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp33_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp33_2_2 = PolyRefl.normalizeFast (GaussData.imOf core5_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core5_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp206_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp206_2_2 = PolyRefl.normalizeFast (GaussData.imOf core38_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core38_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf97_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp76_2_2 CertForms.f_2_2_7
    2 2 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_7 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_7 r s hr hs hco)

theorem pair_98_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core50_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core10_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp252_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp252_2_2 = PolyRefl.normalizeFast (GaussData.imOf core50_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core50_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp65_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp65_2_2 = PolyRefl.normalizeFast (GaussData.imOf core10_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core10_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf98_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp139_2_2 CertForms.f_2_2_10
    2 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_10 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_10 r s hr hs hco)

theorem pair_99_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core8_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core19_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp52_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp52_2_2 = PolyRefl.normalizeFast (GaussData.reOf core8_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core8_2_2 r s q X Y).1, h1]
    rfl
  have hin2 : PolyRefl.eval cp119_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp119_2_2 = PolyRefl.normalizeFast (GaussData.reOf core19_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core19_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf99_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp118_2_2 CertForms.f_2_2_3
    0 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_3 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_3 r s hr hs hco)

theorem pair_100_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core15_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core2_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp96_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp96_2_2 = PolyRefl.normalizeFast (GaussData.imOf core15_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core15_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp18_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp18_2_2 = PolyRefl.normalizeFast (GaussData.reOf core2_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core2_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf100_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp95_2_2 CertForms.f_2_2_5
    0 0 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_5 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_5 r s hr hs hco)

theorem pair_101_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core28_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core42_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp160_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp160_2_2 = PolyRefl.normalizeFast (GaussData.imOf core28_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core28_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp220_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp220_2_2 = PolyRefl.normalizeFast (GaussData.imOf core42_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core42_2_2 r s q X Y).2, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf101_2_2 (R := ℤ) r s ((q : ℤ)) X Y hcirc0 hin1 hin2
  exact CertKit.endpoint_split cp175_2_2 CertForms.f_2_2_4
    2 2 4 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_4 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_4 r s hr hs hco)

theorem pair_102_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core43_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core8_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp223_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp223_2_2 = PolyRefl.normalizeFast (GaussData.imOf core43_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core43_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp52_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp52_2_2 = PolyRefl.normalizeFast (GaussData.reOf core8_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core8_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf102_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp51_2_2 CertForms.f_2_2_9
    0 0 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_9 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_9 r s hr hs hco)

theorem pair_103_2_2 (q : ℕ) [Fact (Nat.Prime q)]
    (r s X Y : ℤ)
    (hr : Odd r) (hs : Even s) (hco : IsCoprime r s)
    (hr0 : r ≠ 0) (hs0 : s ≠ 0) (hq0 : (q : ℤ) ≠ 0)
    (hcirc : X ^ 2 + Y ^ 2 = (q : ℤ) ^ 2)
    (h1 : PolyRefl.eval core9_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0)
    (h2 : PolyRefl.eval core8_2_2 (⟨r, s⟩ : GaussianInt) (⟨r, -s⟩ : GaussianInt) (((q : ℤ)) : GaussianInt) (⟨X, Y⟩ : GaussianInt) (⟨X, -Y⟩ : GaussianInt) = 0) : False := by
  have hin1 : PolyRefl.eval cp55_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp55_2_2 = PolyRefl.normalizeFast (GaussData.imOf core9_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core9_2_2 r s q X Y).2, h1]
    rfl
  have hin2 : PolyRefl.eval cp52_2_2 r s (q : ℤ) X Y = 0 := by
    rw [PolyRefl.eval_eq_of_normalizeFast_eq
      (show PolyRefl.normalizeFast cp52_2_2 = PolyRefl.normalizeFast (GaussData.reOf core8_2_2) from by decide +kernel)]
    rw [← (GaussData.re_im_of_bridge core8_2_2 r s q X Y).1, h2]
    rfl
  have hcirc0 : PolyRefl.eval cp3_2_2 r s (q : ℤ) X Y = 0 := by
    simp only [cp3_2_2, PolyRefl.eval, PolyRefl.mkT, PolyRefl.powF_eq, List.foldr]
    push_cast
    linarith [hcirc]
  have hend := leaf103_2_2 (R := ℤ) r s ((q : ℤ)) X Y hin1 hcirc0 hin2
  exact CertKit.endpoint_split cp51_2_2 CertForms.f_2_2_9
    0 0 8 (2 ^ 0) (by decide +kernel) r s (q : ℤ) X Y hend
    (by norm_num) hr0 hs0 hq0
    (by rw [PolyRefl.eval_qxy_free CertForms.f_2_2_9 (by decide +kernel) r s ((q : ℤ)) X Y 1 1 1]
        exact CertForms.form_2_2_9 r s hr hs hco)

