/- Generated: the PRS elimination chains of grid 2_2 as
   vanishing-propagation certificates (CertKit.prs_step). -/
import MsqLean.CertKit
import MsqLean.PolyRefl

set_option maxRecDepth 100000
set_option maxHeartbeats 2000000

namespace ChainCert
open CertKit

def cp0_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 2 30 8 0 0 (-2187), PolyRefl.mkT 4 28 8 0 0 (55566), PolyRefl.mkT 6 26 8 0 0 (-538785), PolyRefl.mkT 8 24 8 0 0 (2013580), PolyRefl.mkT 10 22 8 0 0 (4095149), PolyRefl.mkT 12 20 8 0 0 (-70985678), PolyRefl.mkT 14 18 8 0 0 (301658575), PolyRefl.mkT 16 16 8 0 0 (-650387800), PolyRefl.mkT 18 14 8 0 0 (752137879), PolyRefl.mkT 20 12 8 0 0 (-451794542), PolyRefl.mkT 22 10 8 0 0 (152953205), PolyRefl.mkT 24 8 8 0 0 (-30655988), PolyRefl.mkT 26 6 8 0 0 (3621447), PolyRefl.mkT 28 4 8 0 0 (-232722), PolyRefl.mkT 30 2 8 0 0 (6237)]
def cp1_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (1)]
def cp2_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (24), PolyRefl.mkT 0 4 0 3 1 (-24), PolyRefl.mkT 1 3 0 0 4 (-8), PolyRefl.mkT 1 3 0 2 2 (-16), PolyRefl.mkT 1 3 0 4 0 (-8), PolyRefl.mkT 2 2 0 1 3 (-48), PolyRefl.mkT 2 2 0 3 1 (48), PolyRefl.mkT 3 1 0 0 4 (-8), PolyRefl.mkT 3 1 0 2 2 (112), PolyRefl.mkT 3 1 0 4 0 (-8), PolyRefl.mkT 4 0 0 1 3 (-8), PolyRefl.mkT 4 0 0 3 1 (8)]
def cp3_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 2 (1), PolyRefl.mkT 0 0 0 2 0 (1), PolyRefl.mkT 0 0 2 0 0 (-1)]
def cp4_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (24), PolyRefl.mkT 1 3 0 0 2 (-8), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 1 3 2 0 0 (-8), PolyRefl.mkT 2 2 0 1 1 (-48), PolyRefl.mkT 3 1 0 0 2 (-8), PolyRefl.mkT 3 1 0 2 0 (120), PolyRefl.mkT 3 1 2 0 0 (-8), PolyRefl.mkT 4 0 0 1 1 (-8)]
def cp5_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-6), PolyRefl.mkT 0 4 2 1 1 (3), PolyRefl.mkT 1 3 4 0 0 (-1), PolyRefl.mkT 2 2 0 3 1 (12), PolyRefl.mkT 2 2 2 1 1 (-6), PolyRefl.mkT 3 1 0 4 0 (-16), PolyRefl.mkT 3 1 2 2 0 (16), PolyRefl.mkT 3 1 4 0 0 (-1), PolyRefl.mkT 4 0 0 3 1 (2), PolyRefl.mkT 4 0 2 1 1 (-1)]
def cp6_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 6 0 (36), PolyRefl.mkT 0 8 2 4 0 (-36), PolyRefl.mkT 0 8 4 2 0 (9), PolyRefl.mkT 2 6 0 6 0 (-144), PolyRefl.mkT 2 6 2 4 0 (144), PolyRefl.mkT 2 6 4 2 0 (-36), PolyRefl.mkT 4 4 0 6 0 (120), PolyRefl.mkT 4 4 2 4 0 (-120), PolyRefl.mkT 4 4 4 2 0 (30), PolyRefl.mkT 6 2 0 6 0 (48), PolyRefl.mkT 6 2 2 4 0 (-48), PolyRefl.mkT 6 2 4 2 0 (12), PolyRefl.mkT 8 0 0 6 0 (4), PolyRefl.mkT 8 0 2 4 0 (-4), PolyRefl.mkT 8 0 4 2 0 (1)]
def cp7_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-6), PolyRefl.mkT 0 4 2 1 1 (3), PolyRefl.mkT 1 3 4 0 0 (1), PolyRefl.mkT 2 2 0 3 1 (12), PolyRefl.mkT 2 2 2 1 1 (-6), PolyRefl.mkT 3 1 0 4 0 (16), PolyRefl.mkT 3 1 2 2 0 (-16), PolyRefl.mkT 3 1 4 0 0 (1), PolyRefl.mkT 4 0 0 3 1 (2), PolyRefl.mkT 4 0 2 1 1 (-1)]
def cp8_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 8 0 (36), PolyRefl.mkT 0 8 2 6 0 (-72), PolyRefl.mkT 0 8 4 4 0 (45), PolyRefl.mkT 0 8 6 2 0 (-9), PolyRefl.mkT 2 6 0 8 0 (-144), PolyRefl.mkT 2 6 2 6 0 (288), PolyRefl.mkT 2 6 4 4 0 (-180), PolyRefl.mkT 2 6 6 2 0 (36), PolyRefl.mkT 2 6 8 0 0 (1), PolyRefl.mkT 4 4 0 8 0 (120), PolyRefl.mkT 4 4 2 6 0 (-240), PolyRefl.mkT 4 4 4 4 0 (182), PolyRefl.mkT 4 4 6 2 0 (-62), PolyRefl.mkT 4 4 8 0 0 (2), PolyRefl.mkT 6 2 0 8 0 (304), PolyRefl.mkT 6 2 2 6 0 (-608), PolyRefl.mkT 6 2 4 4 0 (348), PolyRefl.mkT 6 2 6 2 0 (-44), PolyRefl.mkT 6 2 8 0 0 (1), PolyRefl.mkT 8 0 0 8 0 (4), PolyRefl.mkT 8 0 2 6 0 (-8), PolyRefl.mkT 8 0 4 4 0 (5), PolyRefl.mkT 8 0 6 2 0 (-1)]
def cp9_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (6), PolyRefl.mkT 0 4 0 2 0 (-6), PolyRefl.mkT 1 3 0 1 1 (16), PolyRefl.mkT 2 2 0 0 2 (-36), PolyRefl.mkT 2 2 0 2 0 (36), PolyRefl.mkT 3 1 0 1 1 (-16), PolyRefl.mkT 4 0 0 0 2 (6), PolyRefl.mkT 4 0 0 2 0 (-6)]
def cp10_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 0 (6), PolyRefl.mkT 2 2 0 0 0 (-36), PolyRefl.mkT 4 0 0 0 0 (6)]
def cp11_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 2 0 (-6), PolyRefl.mkT 0 4 2 0 0 (3), PolyRefl.mkT 1 3 0 1 1 (8), PolyRefl.mkT 2 2 0 2 0 (36), PolyRefl.mkT 2 2 2 0 0 (-18), PolyRefl.mkT 3 1 0 1 1 (-8), PolyRefl.mkT 4 0 0 2 0 (-6), PolyRefl.mkT 4 0 2 0 0 (3)]
def cp12_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 2 6 0 2 0 (64), PolyRefl.mkT 4 4 0 2 0 (-128), PolyRefl.mkT 6 2 0 2 0 (64)]
def cp13_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 2 0 (6), PolyRefl.mkT 0 4 2 0 0 (-3), PolyRefl.mkT 1 3 0 1 1 (8), PolyRefl.mkT 2 2 0 2 0 (-36), PolyRefl.mkT 2 2 2 0 0 (18), PolyRefl.mkT 3 1 0 1 1 (-8), PolyRefl.mkT 4 0 0 2 0 (6), PolyRefl.mkT 4 0 2 0 0 (-3)]
def cp14_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 4 0 (36), PolyRefl.mkT 0 8 2 2 0 (-36), PolyRefl.mkT 0 8 4 0 0 (9), PolyRefl.mkT 2 6 0 4 0 (-368), PolyRefl.mkT 2 6 2 2 0 (368), PolyRefl.mkT 2 6 4 0 0 (-108), PolyRefl.mkT 4 4 0 4 0 (1240), PolyRefl.mkT 4 4 2 2 0 (-1240), PolyRefl.mkT 4 4 4 0 0 (342), PolyRefl.mkT 6 2 0 4 0 (-368), PolyRefl.mkT 6 2 2 2 0 (368), PolyRefl.mkT 6 2 4 0 0 (-108), PolyRefl.mkT 8 0 0 4 0 (36), PolyRefl.mkT 8 0 2 2 0 (-36), PolyRefl.mkT 8 0 4 0 0 (9)]
def cp15_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 0 0 (46656), PolyRefl.mkT 2 22 0 0 0 (-1430784), PolyRefl.mkT 4 20 0 0 0 (19446912), PolyRefl.mkT 6 18 0 0 0 (-149831936), PolyRefl.mkT 8 16 0 0 0 (699229632), PolyRefl.mkT 10 14 0 0 0 (-1948445184), PolyRefl.mkT 12 12 0 0 0 (2953072384), PolyRefl.mkT 14 10 0 0 0 (-1948445184), PolyRefl.mkT 16 8 0 0 0 (699229632), PolyRefl.mkT 18 6 0 0 0 (-149831936), PolyRefl.mkT 20 4 0 0 0 (19446912), PolyRefl.mkT 22 2 0 0 0 (-1430784), PolyRefl.mkT 24 0 0 0 0 (46656)]
def cp16_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 4 0 (46656), PolyRefl.mkT 0 24 2 2 0 (-46656), PolyRefl.mkT 2 22 0 4 0 (-1140480), PolyRefl.mkT 2 22 2 2 0 (1140480), PolyRefl.mkT 2 22 4 0 0 (20736), PolyRefl.mkT 4 20 0 4 0 (12060288), PolyRefl.mkT 4 20 2 2 0 (-12060288), PolyRefl.mkT 4 20 4 0 0 (-294912), PolyRefl.mkT 6 18 0 4 0 (-68951808), PolyRefl.mkT 6 18 2 2 0 (68951808), PolyRefl.mkT 6 18 4 0 0 (1352448), PolyRefl.mkT 8 16 0 4 0 (219347904), PolyRefl.mkT 8 16 2 2 0 (-219347904), PolyRefl.mkT 8 16 4 0 0 (880640), PolyRefl.mkT 10 14 0 4 0 (-339090944), PolyRefl.mkT 10 14 2 2 0 (339090944), PolyRefl.mkT 10 14 4 0 0 (-26949120), PolyRefl.mkT 12 12 0 4 0 (76051200), PolyRefl.mkT 12 12 2 2 0 (-76051200), PolyRefl.mkT 12 12 4 0 0 (86700032), PolyRefl.mkT 14 10 0 4 0 (400792064), PolyRefl.mkT 14 10 2 2 0 (-400792064), PolyRefl.mkT 14 10 4 0 0 (-98621952), PolyRefl.mkT 16 8 0 4 0 (-247426624), PolyRefl.mkT 16 8 2 2 0 (247426624), PolyRefl.mkT 16 8 4 0 0 (45895680), PolyRefl.mkT 18 6 0 4 0 (61187328), PolyRefl.mkT 18 6 2 2 0 (-61187328), PolyRefl.mkT 18 6 4 0 0 (-9980672), PolyRefl.mkT 20 4 0 4 0 (-7000448), PolyRefl.mkT 20 4 2 2 0 (7000448), PolyRefl.mkT 20 4 4 0 0 (1036288), PolyRefl.mkT 22 2 0 4 0 (288000), PolyRefl.mkT 22 2 2 2 0 (-288000), PolyRefl.mkT 22 2 4 0 0 (-39168), PolyRefl.mkT 24 0 0 4 0 (5184), PolyRefl.mkT 24 0 2 2 0 (-5184)]
def cp17_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 2 8 4 0 0 (-9), PolyRefl.mkT 4 6 4 0 0 (36), PolyRefl.mkT 6 4 4 0 0 (-62), PolyRefl.mkT 8 2 4 0 0 (20), PolyRefl.mkT 10 0 4 0 0 (-1)]
def cp18_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (2), PolyRefl.mkT 0 4 0 2 0 (-6), PolyRefl.mkT 2 2 0 0 2 (-28), PolyRefl.mkT 2 2 0 2 0 (20), PolyRefl.mkT 4 0 0 0 2 (2), PolyRefl.mkT 4 0 0 2 0 (-6)]
def cp19_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 0 (2), PolyRefl.mkT 2 2 0 0 0 (-28), PolyRefl.mkT 4 0 0 0 0 (2)]
def cp20_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 2 0 (-4), PolyRefl.mkT 0 4 2 0 0 (1), PolyRefl.mkT 2 2 0 2 0 (24), PolyRefl.mkT 2 2 2 0 0 (-14), PolyRefl.mkT 4 0 0 2 0 (-4), PolyRefl.mkT 4 0 2 0 0 (1)]
def cp21_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 4 (-6), PolyRefl.mkT 0 2 0 2 2 (20), PolyRefl.mkT 0 2 0 4 0 (-6), PolyRefl.mkT 2 0 0 0 4 (2), PolyRefl.mkT 2 0 0 2 2 (-28), PolyRefl.mkT 2 0 0 4 0 (2)]
def cp22_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 2 (-6), PolyRefl.mkT 0 2 0 2 0 (26), PolyRefl.mkT 0 2 2 0 0 (-6), PolyRefl.mkT 2 0 0 0 2 (2), PolyRefl.mkT 2 0 0 2 0 (-30), PolyRefl.mkT 2 0 2 0 0 (2)]
def cp23_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 4 0 (-16), PolyRefl.mkT 0 2 2 2 0 (16), PolyRefl.mkT 0 2 4 0 0 (-3), PolyRefl.mkT 2 0 0 4 0 (16), PolyRefl.mkT 2 0 2 2 0 (-16), PolyRefl.mkT 2 0 4 0 0 (1)]
def cp24_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (16), PolyRefl.mkT 2 6 0 0 0 (-192), PolyRefl.mkT 4 4 0 0 0 (608), PolyRefl.mkT 6 2 0 0 0 (-192), PolyRefl.mkT 8 0 0 0 0 (16)]
def cp25_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 2 0 (64), PolyRefl.mkT 0 6 2 0 0 (-48), PolyRefl.mkT 2 4 0 2 0 (-448), PolyRefl.mkT 2 4 2 0 0 (208), PolyRefl.mkT 4 2 0 2 0 (448), PolyRefl.mkT 4 2 2 0 0 (-208), PolyRefl.mkT 6 0 0 2 0 (-64), PolyRefl.mkT 6 0 2 0 0 (48)]
def cp26_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 2 30 8 0 0 (405), PolyRefl.mkT 4 28 8 0 0 (-22770), PolyRefl.mkT 6 26 8 0 0 (461439), PolyRefl.mkT 8 24 8 0 0 (-4916852), PolyRefl.mkT 10 22 8 0 0 (31756109), PolyRefl.mkT 12 20 8 0 0 (-132387278), PolyRefl.mkT 14 18 8 0 0 (364651375), PolyRefl.mkT 16 16 8 0 0 (-650387800), PolyRefl.mkT 18 14 8 0 0 (689145079), PolyRefl.mkT 20 12 8 0 0 (-390392942), PolyRefl.mkT 22 10 8 0 0 (125292245), PolyRefl.mkT 24 8 8 0 0 (-23725556), PolyRefl.mkT 26 6 8 0 0 (2621223), PolyRefl.mkT 28 4 8 0 0 (-154386), PolyRefl.mkT 30 2 8 0 0 (3645)]
def cp27_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-8), PolyRefl.mkT 0 4 0 3 1 (8), PolyRefl.mkT 1 3 0 0 4 (8), PolyRefl.mkT 1 3 0 2 2 (16), PolyRefl.mkT 1 3 0 4 0 (8), PolyRefl.mkT 2 2 0 1 3 (-48), PolyRefl.mkT 2 2 0 3 1 (48), PolyRefl.mkT 3 1 0 0 4 (-24), PolyRefl.mkT 3 1 0 2 2 (80), PolyRefl.mkT 3 1 0 4 0 (-24), PolyRefl.mkT 4 0 0 1 3 (24), PolyRefl.mkT 4 0 0 3 1 (-24)]
def cp28_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-8), PolyRefl.mkT 1 3 0 0 2 (8), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 1 3 2 0 0 (8), PolyRefl.mkT 2 2 0 1 1 (-48), PolyRefl.mkT 3 1 0 0 2 (-24), PolyRefl.mkT 3 1 0 2 0 (104), PolyRefl.mkT 3 1 2 0 0 (-24), PolyRefl.mkT 4 0 0 1 1 (24)]
def cp29_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (2), PolyRefl.mkT 0 4 2 1 1 (-1), PolyRefl.mkT 1 3 4 0 0 (1), PolyRefl.mkT 2 2 0 3 1 (12), PolyRefl.mkT 2 2 2 1 1 (-6), PolyRefl.mkT 3 1 0 4 0 (-16), PolyRefl.mkT 3 1 2 2 0 (16), PolyRefl.mkT 3 1 4 0 0 (-3), PolyRefl.mkT 4 0 0 3 1 (-6), PolyRefl.mkT 4 0 2 1 1 (3)]
def cp30_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 6 0 (4), PolyRefl.mkT 0 8 2 4 0 (-4), PolyRefl.mkT 0 8 4 2 0 (1), PolyRefl.mkT 2 6 0 6 0 (48), PolyRefl.mkT 2 6 2 4 0 (-48), PolyRefl.mkT 2 6 4 2 0 (12), PolyRefl.mkT 4 4 0 6 0 (120), PolyRefl.mkT 4 4 2 4 0 (-120), PolyRefl.mkT 4 4 4 2 0 (30), PolyRefl.mkT 6 2 0 6 0 (-144), PolyRefl.mkT 6 2 2 4 0 (144), PolyRefl.mkT 6 2 4 2 0 (-36), PolyRefl.mkT 8 0 0 6 0 (36), PolyRefl.mkT 8 0 2 4 0 (-36), PolyRefl.mkT 8 0 4 2 0 (9)]
def cp31_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (2), PolyRefl.mkT 0 4 2 1 1 (-1), PolyRefl.mkT 1 3 4 0 0 (-1), PolyRefl.mkT 2 2 0 3 1 (12), PolyRefl.mkT 2 2 2 1 1 (-6), PolyRefl.mkT 3 1 0 4 0 (16), PolyRefl.mkT 3 1 2 2 0 (-16), PolyRefl.mkT 3 1 4 0 0 (3), PolyRefl.mkT 4 0 0 3 1 (-6), PolyRefl.mkT 4 0 2 1 1 (3)]
def cp32_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 8 0 (4), PolyRefl.mkT 0 8 2 6 0 (-8), PolyRefl.mkT 0 8 4 4 0 (5), PolyRefl.mkT 0 8 6 2 0 (-1), PolyRefl.mkT 2 6 0 8 0 (48), PolyRefl.mkT 2 6 2 6 0 (-96), PolyRefl.mkT 2 6 4 4 0 (60), PolyRefl.mkT 2 6 6 2 0 (-12), PolyRefl.mkT 2 6 8 0 0 (1), PolyRefl.mkT 4 4 0 8 0 (120), PolyRefl.mkT 4 4 2 6 0 (-240), PolyRefl.mkT 4 4 4 4 0 (118), PolyRefl.mkT 4 4 6 2 0 (2), PolyRefl.mkT 4 4 8 0 0 (-6), PolyRefl.mkT 6 2 0 8 0 (112), PolyRefl.mkT 6 2 2 6 0 (-224), PolyRefl.mkT 6 2 4 4 0 (172), PolyRefl.mkT 6 2 6 2 0 (-60), PolyRefl.mkT 6 2 8 0 0 (9), PolyRefl.mkT 8 0 0 8 0 (36), PolyRefl.mkT 8 0 2 6 0 (-72), PolyRefl.mkT 8 0 4 4 0 (45), PolyRefl.mkT 8 0 6 2 0 (-9)]
def cp33_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (12), PolyRefl.mkT 1 3 0 0 2 (-8), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 2 2 0 1 1 (-72), PolyRefl.mkT 3 1 0 0 2 (8), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 4 0 0 1 1 (12)]
def cp34_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 1 3 0 0 0 (-8), PolyRefl.mkT 3 1 0 0 0 (8)]
def cp35_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (3), PolyRefl.mkT 1 3 0 2 0 (4), PolyRefl.mkT 1 3 2 0 0 (-2), PolyRefl.mkT 2 2 0 1 1 (-18), PolyRefl.mkT 3 1 0 2 0 (-4), PolyRefl.mkT 3 1 2 0 0 (2), PolyRefl.mkT 4 0 0 1 1 (3)]
def cp36_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 2 0 (9), PolyRefl.mkT 2 6 0 2 0 (-108), PolyRefl.mkT 4 4 0 2 0 (342), PolyRefl.mkT 6 2 0 2 0 (-108), PolyRefl.mkT 8 0 0 2 0 (9)]
def cp37_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (3), PolyRefl.mkT 1 3 0 2 0 (-4), PolyRefl.mkT 1 3 2 0 0 (2), PolyRefl.mkT 2 2 0 1 1 (-18), PolyRefl.mkT 3 1 0 2 0 (4), PolyRefl.mkT 3 1 2 0 0 (-2), PolyRefl.mkT 4 0 0 1 1 (3)]
def cp38_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 4 0 (9), PolyRefl.mkT 0 8 2 2 0 (-9), PolyRefl.mkT 2 6 0 4 0 (-92), PolyRefl.mkT 2 6 2 2 0 (92), PolyRefl.mkT 2 6 4 0 0 (4), PolyRefl.mkT 4 4 0 4 0 (310), PolyRefl.mkT 4 4 2 2 0 (-310), PolyRefl.mkT 4 4 4 0 0 (-8), PolyRefl.mkT 6 2 0 4 0 (-92), PolyRefl.mkT 6 2 2 2 0 (92), PolyRefl.mkT 6 2 4 0 0 (4), PolyRefl.mkT 8 0 0 4 0 (9), PolyRefl.mkT 8 0 2 2 0 (-9)]
def cp39_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 0 0 (729), PolyRefl.mkT 2 22 0 0 0 (-22356), PolyRefl.mkT 4 20 0 0 0 (303858), PolyRefl.mkT 6 18 0 0 0 (-2341124), PolyRefl.mkT 8 16 0 0 0 (10925463), PolyRefl.mkT 10 14 0 0 0 (-30444456), PolyRefl.mkT 12 12 0 0 0 (46141756), PolyRefl.mkT 14 10 0 0 0 (-30444456), PolyRefl.mkT 16 8 0 0 0 (10925463), PolyRefl.mkT 18 6 0 0 0 (-2341124), PolyRefl.mkT 20 4 0 0 0 (303858), PolyRefl.mkT 22 2 0 0 0 (-22356), PolyRefl.mkT 24 0 0 0 0 (729)]
def cp40_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 4 0 (324), PolyRefl.mkT 0 24 2 2 0 (-324), PolyRefl.mkT 0 24 4 0 0 (81), PolyRefl.mkT 2 22 0 4 0 (-2736), PolyRefl.mkT 2 22 2 2 0 (2736), PolyRefl.mkT 2 22 4 0 0 (-828), PolyRefl.mkT 4 20 0 4 0 (-13592), PolyRefl.mkT 4 20 2 2 0 (13592), PolyRefl.mkT 4 20 4 0 0 (-5958), PolyRefl.mkT 6 18 0 4 0 (249680), PolyRefl.mkT 6 18 2 2 0 (-249680), PolyRefl.mkT 6 18 4 0 0 (126756), PolyRefl.mkT 8 16 0 4 0 (-861924), PolyRefl.mkT 8 16 2 2 0 (861924), PolyRefl.mkT 8 16 4 0 0 (-752825), PolyRefl.mkT 10 14 0 4 0 (-331872), PolyRefl.mkT 10 14 2 2 0 (331872), PolyRefl.mkT 10 14 4 0 0 (2197576), PolyRefl.mkT 12 12 0 4 0 (4753200), PolyRefl.mkT 12 12 2 2 0 (-4753200), PolyRefl.mkT 12 12 4 0 0 (-4230452), PolyRefl.mkT 14 10 0 4 0 (4188192), PolyRefl.mkT 14 10 2 2 0 (-4188192), PolyRefl.mkT 14 10 4 0 0 (6614696), PolyRefl.mkT 16 8 0 4 0 (-892996), PolyRefl.mkT 16 8 2 2 0 (892996), PolyRefl.mkT 16 8 4 0 0 (-2609425), PolyRefl.mkT 18 6 0 4 0 (-734960), PolyRefl.mkT 18 6 2 2 0 (734960), PolyRefl.mkT 18 6 4 0 0 (291188), PolyRefl.mkT 20 4 0 4 0 (329832), PolyRefl.mkT 20 4 2 2 0 (-329832), PolyRefl.mkT 20 4 4 0 0 (38682), PolyRefl.mkT 22 2 0 4 0 (-50544), PolyRefl.mkT 22 2 2 2 0 (50544), PolyRefl.mkT 22 2 4 0 0 (-11340), PolyRefl.mkT 24 0 0 4 0 (2916), PolyRefl.mkT 24 0 2 2 0 (-2916), PolyRefl.mkT 24 0 4 0 0 (729)]
def cp41_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 2 30 8 0 0 (6237), PolyRefl.mkT 4 28 8 0 0 (-232722), PolyRefl.mkT 6 26 8 0 0 (3621447), PolyRefl.mkT 8 24 8 0 0 (-30655988), PolyRefl.mkT 10 22 8 0 0 (152953205), PolyRefl.mkT 12 20 8 0 0 (-451794542), PolyRefl.mkT 14 18 8 0 0 (752137879), PolyRefl.mkT 16 16 8 0 0 (-650387800), PolyRefl.mkT 18 14 8 0 0 (301658575), PolyRefl.mkT 20 12 8 0 0 (-70985678), PolyRefl.mkT 22 10 8 0 0 (4095149), PolyRefl.mkT 24 8 8 0 0 (2013580), PolyRefl.mkT 26 6 8 0 0 (-538785), PolyRefl.mkT 28 4 8 0 0 (55566), PolyRefl.mkT 30 2 8 0 0 (-2187)]
def cp42_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-12), PolyRefl.mkT 1 3 0 0 2 (-8), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 2 2 0 1 1 (72), PolyRefl.mkT 3 1 0 0 2 (8), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 4 0 0 1 1 (-12)]
def cp43_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-3), PolyRefl.mkT 1 3 0 2 0 (4), PolyRefl.mkT 1 3 2 0 0 (-2), PolyRefl.mkT 2 2 0 1 1 (18), PolyRefl.mkT 3 1 0 2 0 (-4), PolyRefl.mkT 3 1 2 0 0 (2), PolyRefl.mkT 4 0 0 1 1 (-3)]
def cp44_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-3), PolyRefl.mkT 1 3 0 2 0 (-4), PolyRefl.mkT 1 3 2 0 0 (2), PolyRefl.mkT 2 2 0 1 1 (18), PolyRefl.mkT 3 1 0 2 0 (4), PolyRefl.mkT 3 1 2 0 0 (-2), PolyRefl.mkT 4 0 0 1 1 (-3)]
def cp45_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-8), PolyRefl.mkT 0 4 0 3 1 (8), PolyRefl.mkT 1 3 0 0 4 (-24), PolyRefl.mkT 1 3 0 2 2 (80), PolyRefl.mkT 1 3 0 4 0 (-24), PolyRefl.mkT 2 2 0 1 3 (-48), PolyRefl.mkT 2 2 0 3 1 (48), PolyRefl.mkT 3 1 0 0 4 (8), PolyRefl.mkT 3 1 0 2 2 (16), PolyRefl.mkT 3 1 0 4 0 (8), PolyRefl.mkT 4 0 0 1 3 (24), PolyRefl.mkT 4 0 0 3 1 (-24)]
def cp46_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-8), PolyRefl.mkT 1 3 0 0 2 (-24), PolyRefl.mkT 1 3 0 2 0 (104), PolyRefl.mkT 1 3 2 0 0 (-24), PolyRefl.mkT 2 2 0 1 1 (-48), PolyRefl.mkT 3 1 0 0 2 (8), PolyRefl.mkT 3 1 0 2 0 (8), PolyRefl.mkT 3 1 2 0 0 (8), PolyRefl.mkT 4 0 0 1 1 (24)]
def cp47_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (2), PolyRefl.mkT 0 4 2 1 1 (-1), PolyRefl.mkT 1 3 0 4 0 (-16), PolyRefl.mkT 1 3 2 2 0 (16), PolyRefl.mkT 1 3 4 0 0 (-3), PolyRefl.mkT 2 2 0 3 1 (12), PolyRefl.mkT 2 2 2 1 1 (-6), PolyRefl.mkT 3 1 4 0 0 (1), PolyRefl.mkT 4 0 0 3 1 (-6), PolyRefl.mkT 4 0 2 1 1 (3)]
def cp48_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (2), PolyRefl.mkT 0 4 2 1 1 (-1), PolyRefl.mkT 1 3 0 4 0 (16), PolyRefl.mkT 1 3 2 2 0 (-16), PolyRefl.mkT 1 3 4 0 0 (3), PolyRefl.mkT 2 2 0 3 1 (12), PolyRefl.mkT 2 2 2 1 1 (-6), PolyRefl.mkT 3 1 4 0 0 (-1), PolyRefl.mkT 4 0 0 3 1 (-6), PolyRefl.mkT 4 0 2 1 1 (3)]
def cp49_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 8 0 (4), PolyRefl.mkT 0 8 2 6 0 (-8), PolyRefl.mkT 0 8 4 4 0 (5), PolyRefl.mkT 0 8 6 2 0 (-1), PolyRefl.mkT 2 6 0 8 0 (304), PolyRefl.mkT 2 6 2 6 0 (-608), PolyRefl.mkT 2 6 4 4 0 (412), PolyRefl.mkT 2 6 6 2 0 (-108), PolyRefl.mkT 2 6 8 0 0 (9), PolyRefl.mkT 4 4 0 8 0 (120), PolyRefl.mkT 4 4 2 6 0 (-240), PolyRefl.mkT 4 4 4 4 0 (118), PolyRefl.mkT 4 4 6 2 0 (2), PolyRefl.mkT 4 4 8 0 0 (-6), PolyRefl.mkT 6 2 0 8 0 (-144), PolyRefl.mkT 6 2 2 6 0 (288), PolyRefl.mkT 6 2 4 4 0 (-180), PolyRefl.mkT 6 2 6 2 0 (36), PolyRefl.mkT 6 2 8 0 0 (1), PolyRefl.mkT 8 0 0 8 0 (36), PolyRefl.mkT 8 0 2 6 0 (-72), PolyRefl.mkT 8 0 4 4 0 (45), PolyRefl.mkT 8 0 6 2 0 (-9)]
def cp50_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 4 0 (324), PolyRefl.mkT 0 24 2 2 0 (-324), PolyRefl.mkT 0 24 4 0 0 (81), PolyRefl.mkT 2 22 0 4 0 (18000), PolyRefl.mkT 2 22 2 2 0 (-18000), PolyRefl.mkT 2 22 4 0 0 (6948), PolyRefl.mkT 4 20 0 4 0 (-437528), PolyRefl.mkT 4 20 2 2 0 (437528), PolyRefl.mkT 4 20 4 0 0 (-174150), PolyRefl.mkT 6 18 0 4 0 (3824208), PolyRefl.mkT 6 18 2 2 0 (-3824208), PolyRefl.mkT 6 18 4 0 0 (1579844), PolyRefl.mkT 8 16 0 4 0 (-15464164), PolyRefl.mkT 8 16 2 2 0 (15464164), PolyRefl.mkT 8 16 4 0 0 (-6734521), PolyRefl.mkT 10 14 0 4 0 (25049504), PolyRefl.mkT 10 14 2 2 0 (-25049504), PolyRefl.mkT 10 14 4 0 0 (12426248), PolyRefl.mkT 12 12 0 4 0 (4753200), PolyRefl.mkT 12 12 2 2 0 (-4753200), PolyRefl.mkT 12 12 4 0 0 (-4230452), PolyRefl.mkT 14 10 0 4 0 (-21193184), PolyRefl.mkT 14 10 2 2 0 (21193184), PolyRefl.mkT 14 10 4 0 0 (-3613976), PolyRefl.mkT 16 8 0 4 0 (13709244), PolyRefl.mkT 16 8 2 2 0 (-13709244), PolyRefl.mkT 16 8 4 0 0 (3372271), PolyRefl.mkT 18 6 0 4 0 (-4309488), PolyRefl.mkT 18 6 2 2 0 (4309488), PolyRefl.mkT 18 6 4 0 0 (-1161900), PolyRefl.mkT 20 4 0 4 0 (753768), PolyRefl.mkT 20 4 2 2 0 (-753768), PolyRefl.mkT 20 4 4 0 0 (206874), PolyRefl.mkT 22 2 0 4 0 (-71280), PolyRefl.mkT 22 2 2 2 0 (71280), PolyRefl.mkT 22 2 4 0 0 (-19116), PolyRefl.mkT 24 0 0 4 0 (2916), PolyRefl.mkT 24 0 2 2 0 (-2916), PolyRefl.mkT 24 0 4 0 0 (729)]
def cp51_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 8 0 0 (-3), PolyRefl.mkT 2 22 8 0 0 (44), PolyRefl.mkT 4 20 8 0 0 (-742), PolyRefl.mkT 6 18 8 0 0 (16764), PolyRefl.mkT 8 16 8 0 0 (-95053), PolyRefl.mkT 10 14 8 0 0 (242264), PolyRefl.mkT 12 12 8 0 0 (-338836), PolyRefl.mkT 14 10 8 0 0 (242264), PolyRefl.mkT 16 8 8 0 0 (-95053), PolyRefl.mkT 18 6 8 0 0 (16764), PolyRefl.mkT 20 4 8 0 0 (-742), PolyRefl.mkT 22 2 8 0 0 (44), PolyRefl.mkT 24 0 8 0 0 (-3)]
def cp52_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (-6), PolyRefl.mkT 0 4 0 2 0 (2), PolyRefl.mkT 2 2 0 0 2 (20), PolyRefl.mkT 2 2 0 2 0 (-28), PolyRefl.mkT 4 0 0 0 2 (-6), PolyRefl.mkT 4 0 0 2 0 (2)]
def cp53_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 0 (-6), PolyRefl.mkT 2 2 0 0 0 (20), PolyRefl.mkT 4 0 0 0 0 (-6)]
def cp54_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 2 0 (4), PolyRefl.mkT 0 4 2 0 0 (-3), PolyRefl.mkT 2 2 0 2 0 (-24), PolyRefl.mkT 2 2 2 0 0 (10), PolyRefl.mkT 4 0 0 2 0 (4), PolyRefl.mkT 4 0 2 0 0 (-3)]
def cp55_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (16), PolyRefl.mkT 0 4 0 3 1 (-16), PolyRefl.mkT 1 3 0 0 4 (16), PolyRefl.mkT 1 3 0 2 2 (-96), PolyRefl.mkT 1 3 0 4 0 (16), PolyRefl.mkT 2 2 0 1 3 (32), PolyRefl.mkT 2 2 0 3 1 (-32), PolyRefl.mkT 3 1 0 0 4 (-16), PolyRefl.mkT 3 1 0 2 2 (96), PolyRefl.mkT 3 1 0 4 0 (-16), PolyRefl.mkT 4 0 0 1 3 (16), PolyRefl.mkT 4 0 0 3 1 (-16)]
def cp56_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (16), PolyRefl.mkT 1 3 0 0 2 (16), PolyRefl.mkT 1 3 0 2 0 (-112), PolyRefl.mkT 1 3 2 0 0 (16), PolyRefl.mkT 2 2 0 1 1 (32), PolyRefl.mkT 3 1 0 0 2 (-16), PolyRefl.mkT 3 1 0 2 0 (112), PolyRefl.mkT 3 1 2 0 0 (-16), PolyRefl.mkT 4 0 0 1 1 (16)]
def cp57_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-2), PolyRefl.mkT 0 4 2 1 1 (1), PolyRefl.mkT 1 3 0 4 0 (8), PolyRefl.mkT 1 3 2 2 0 (-8), PolyRefl.mkT 1 3 4 0 0 (1), PolyRefl.mkT 2 2 0 3 1 (-4), PolyRefl.mkT 2 2 2 1 1 (2), PolyRefl.mkT 3 1 0 4 0 (-8), PolyRefl.mkT 3 1 2 2 0 (8), PolyRefl.mkT 3 1 4 0 0 (-1), PolyRefl.mkT 4 0 0 3 1 (-2), PolyRefl.mkT 4 0 2 1 1 (1)]
def cp58_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 6 0 (4), PolyRefl.mkT 0 8 2 4 0 (-4), PolyRefl.mkT 0 8 4 2 0 (1), PolyRefl.mkT 2 6 0 6 0 (16), PolyRefl.mkT 2 6 2 4 0 (-16), PolyRefl.mkT 2 6 4 2 0 (4), PolyRefl.mkT 4 4 0 6 0 (24), PolyRefl.mkT 4 4 2 4 0 (-24), PolyRefl.mkT 4 4 4 2 0 (6), PolyRefl.mkT 6 2 0 6 0 (16), PolyRefl.mkT 6 2 2 4 0 (-16), PolyRefl.mkT 6 2 4 2 0 (4), PolyRefl.mkT 8 0 0 6 0 (4), PolyRefl.mkT 8 0 2 4 0 (-4), PolyRefl.mkT 8 0 4 2 0 (1)]
def cp59_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-2), PolyRefl.mkT 0 4 2 1 1 (1), PolyRefl.mkT 1 3 0 4 0 (-8), PolyRefl.mkT 1 3 2 2 0 (8), PolyRefl.mkT 1 3 4 0 0 (-1), PolyRefl.mkT 2 2 0 3 1 (-4), PolyRefl.mkT 2 2 2 1 1 (2), PolyRefl.mkT 3 1 0 4 0 (8), PolyRefl.mkT 3 1 2 2 0 (-8), PolyRefl.mkT 3 1 4 0 0 (1), PolyRefl.mkT 4 0 0 3 1 (-2), PolyRefl.mkT 4 0 2 1 1 (1)]
def cp60_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 8 0 (4), PolyRefl.mkT 0 8 2 6 0 (-8), PolyRefl.mkT 0 8 4 4 0 (5), PolyRefl.mkT 0 8 6 2 0 (-1), PolyRefl.mkT 2 6 0 8 0 (80), PolyRefl.mkT 2 6 2 6 0 (-160), PolyRefl.mkT 2 6 4 4 0 (100), PolyRefl.mkT 2 6 6 2 0 (-20), PolyRefl.mkT 2 6 8 0 0 (1), PolyRefl.mkT 4 4 0 8 0 (-104), PolyRefl.mkT 4 4 2 6 0 (208), PolyRefl.mkT 4 4 4 4 0 (-130), PolyRefl.mkT 4 4 6 2 0 (26), PolyRefl.mkT 4 4 8 0 0 (-2), PolyRefl.mkT 6 2 0 8 0 (80), PolyRefl.mkT 6 2 2 6 0 (-160), PolyRefl.mkT 6 2 4 4 0 (100), PolyRefl.mkT 6 2 6 2 0 (-20), PolyRefl.mkT 6 2 8 0 0 (1), PolyRefl.mkT 8 0 0 8 0 (4), PolyRefl.mkT 8 0 2 6 0 (-8), PolyRefl.mkT 8 0 4 4 0 (5), PolyRefl.mkT 8 0 6 2 0 (-1)]
def cp61_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 16 0 0 0 (256), PolyRefl.mkT 2 14 0 0 0 (-6144), PolyRefl.mkT 4 12 0 0 0 (56320), PolyRefl.mkT 6 10 0 0 0 (-239616), PolyRefl.mkT 8 8 0 0 0 (443904), PolyRefl.mkT 10 6 0 0 0 (-239616), PolyRefl.mkT 12 4 0 0 0 (56320), PolyRefl.mkT 14 2 0 0 0 (-6144), PolyRefl.mkT 16 0 0 0 0 (256)]
def cp62_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 20 0 6 0 (256), PolyRefl.mkT 0 20 2 4 0 (-320), PolyRefl.mkT 0 20 4 2 0 (80), PolyRefl.mkT 0 20 6 0 0 (-4), PolyRefl.mkT 2 18 0 6 0 (512), PolyRefl.mkT 2 18 2 4 0 (-128), PolyRefl.mkT 2 18 4 2 0 (-96), PolyRefl.mkT 2 18 6 0 0 (-40), PolyRefl.mkT 4 16 0 6 0 (-70400), PolyRefl.mkT 4 16 2 4 0 (92096), PolyRefl.mkT 4 16 4 2 0 (-23024), PolyRefl.mkT 4 16 6 0 0 (1100), PolyRefl.mkT 6 14 0 6 0 (628736), PolyRefl.mkT 6 14 2 4 0 (-902656), PolyRefl.mkT 6 14 4 2 0 (269184), PolyRefl.mkT 6 14 6 0 0 (3104), PolyRefl.mkT 8 12 0 6 0 (-2092544), PolyRefl.mkT 8 12 2 4 0 (3168640), PolyRefl.mkT 8 12 4 2 0 (-1078880), PolyRefl.mkT 8 12 6 0 0 (1976), PolyRefl.mkT 10 10 0 6 0 (2804736), PolyRefl.mkT 10 10 2 4 0 (-4256512), PolyRefl.mkT 10 10 4 2 0 (1452480), PolyRefl.mkT 10 10 6 0 0 (16), PolyRefl.mkT 12 8 0 6 0 (-2092544), PolyRefl.mkT 12 8 2 4 0 (3168640), PolyRefl.mkT 12 8 4 2 0 (-1078880), PolyRefl.mkT 12 8 6 0 0 (1976), PolyRefl.mkT 14 6 0 6 0 (628736), PolyRefl.mkT 14 6 2 4 0 (-902656), PolyRefl.mkT 14 6 4 2 0 (269184), PolyRefl.mkT 14 6 6 0 0 (3104), PolyRefl.mkT 16 4 0 6 0 (-70400), PolyRefl.mkT 16 4 2 4 0 (92096), PolyRefl.mkT 16 4 4 2 0 (-23024), PolyRefl.mkT 16 4 6 0 0 (1100), PolyRefl.mkT 18 2 0 6 0 (512), PolyRefl.mkT 18 2 2 4 0 (-128), PolyRefl.mkT 18 2 4 2 0 (-96), PolyRefl.mkT 18 2 6 0 0 (-40), PolyRefl.mkT 20 0 0 6 0 (256), PolyRefl.mkT 20 0 2 4 0 (-320), PolyRefl.mkT 20 0 4 2 0 (80), PolyRefl.mkT 20 0 6 0 0 (-4)]
def cp63_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 2 22 4 0 0 (45), PolyRefl.mkT 4 20 4 0 0 (-2070), PolyRefl.mkT 6 18 4 0 0 (28561), PolyRefl.mkT 8 16 4 0 0 (-182600), PolyRefl.mkT 10 14 4 0 0 (656906), PolyRefl.mkT 12 12 4 0 0 (-1411076), PolyRefl.mkT 14 10 4 0 0 (1570586), PolyRefl.mkT 16 8 4 0 0 (-709064), PolyRefl.mkT 18 6 4 0 0 (144265), PolyRefl.mkT 20 4 4 0 0 (-13014), PolyRefl.mkT 22 2 4 0 0 (405)]
def cp64_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (36), PolyRefl.mkT 2 6 0 0 0 (-432), PolyRefl.mkT 4 4 0 0 0 (1368), PolyRefl.mkT 6 2 0 0 0 (-432), PolyRefl.mkT 8 0 0 0 0 (36)]
def cp65_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 1 (6), PolyRefl.mkT 1 3 0 1 0 (8), PolyRefl.mkT 2 2 0 0 1 (-36), PolyRefl.mkT 3 1 0 1 0 (-8), PolyRefl.mkT 4 0 0 0 1 (6)]
def cp66_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 1 (6), PolyRefl.mkT 1 3 0 1 0 (-8), PolyRefl.mkT 2 2 0 0 1 (-36), PolyRefl.mkT 3 1 0 1 0 (8), PolyRefl.mkT 4 0 0 0 1 (6)]
def cp67_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 2 0 (9), PolyRefl.mkT 0 8 2 0 0 (-9), PolyRefl.mkT 2 6 0 2 0 (-92), PolyRefl.mkT 2 6 2 0 0 (108), PolyRefl.mkT 4 4 0 2 0 (310), PolyRefl.mkT 4 4 2 0 0 (-342), PolyRefl.mkT 6 2 0 2 0 (-92), PolyRefl.mkT 6 2 2 0 0 (108), PolyRefl.mkT 8 0 0 2 0 (9), PolyRefl.mkT 8 0 2 0 0 (-9)]
def cp68_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (4), PolyRefl.mkT 1 3 0 0 2 (8), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 2 2 0 1 1 (24), PolyRefl.mkT 3 1 0 0 2 (8), PolyRefl.mkT 3 1 0 2 0 (-24), PolyRefl.mkT 4 0 0 1 1 (-12)]
def cp69_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 1 3 0 0 0 (8), PolyRefl.mkT 3 1 0 0 0 (8)]
def cp70_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (1), PolyRefl.mkT 1 3 2 0 0 (2), PolyRefl.mkT 2 2 0 1 1 (6), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 3 1 2 0 0 (2), PolyRefl.mkT 4 0 0 1 1 (-3)]
def cp71_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 2 0 (1), PolyRefl.mkT 2 6 0 2 0 (12), PolyRefl.mkT 4 4 0 2 0 (30), PolyRefl.mkT 6 2 0 2 0 (-36), PolyRefl.mkT 8 0 0 2 0 (9)]
def cp72_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (1), PolyRefl.mkT 1 3 2 0 0 (-2), PolyRefl.mkT 2 2 0 1 1 (6), PolyRefl.mkT 3 1 0 2 0 (8), PolyRefl.mkT 3 1 2 0 0 (-2), PolyRefl.mkT 4 0 0 1 1 (-3)]
def cp73_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 4 0 (1), PolyRefl.mkT 0 8 2 2 0 (-1), PolyRefl.mkT 2 6 0 4 0 (12), PolyRefl.mkT 2 6 2 2 0 (-12), PolyRefl.mkT 2 6 4 0 0 (4), PolyRefl.mkT 4 4 0 4 0 (30), PolyRefl.mkT 4 4 2 2 0 (-62), PolyRefl.mkT 4 4 4 0 0 (8), PolyRefl.mkT 6 2 0 4 0 (28), PolyRefl.mkT 6 2 2 2 0 (4), PolyRefl.mkT 6 2 4 0 0 (4), PolyRefl.mkT 8 0 0 4 0 (9), PolyRefl.mkT 8 0 2 2 0 (-9)]
def cp74_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 16 0 0 0 (81), PolyRefl.mkT 2 14 0 0 0 (-1656), PolyRefl.mkT 4 12 0 0 0 (14044), PolyRefl.mkT 6 10 0 0 0 (-58696), PolyRefl.mkT 8 8 0 0 0 (113190), PolyRefl.mkT 10 6 0 0 0 (-58696), PolyRefl.mkT 12 4 0 0 0 (14044), PolyRefl.mkT 14 2 0 0 0 (-1656), PolyRefl.mkT 16 0 0 0 0 (81)]
def cp75_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 16 0 2 0 (9), PolyRefl.mkT 2 14 0 2 0 (16), PolyRefl.mkT 2 14 2 0 0 (-16), PolyRefl.mkT 4 12 0 2 0 (-524), PolyRefl.mkT 4 12 2 0 0 (-448), PolyRefl.mkT 6 10 0 2 0 (1120), PolyRefl.mkT 6 10 2 0 0 (3120), PolyRefl.mkT 8 8 0 2 0 (5710), PolyRefl.mkT 8 8 2 0 0 (-12544), PolyRefl.mkT 10 6 0 2 0 (5200), PolyRefl.mkT 10 6 2 0 0 (13136), PolyRefl.mkT 12 4 0 2 0 (484), PolyRefl.mkT 12 4 2 0 0 (-3392), PolyRefl.mkT 14 2 0 2 0 (-576), PolyRefl.mkT 14 2 2 0 0 (144), PolyRefl.mkT 16 0 0 2 0 (81)]
def cp76_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 2 30 8 0 0 (3645), PolyRefl.mkT 4 28 8 0 0 (-154386), PolyRefl.mkT 6 26 8 0 0 (2621223), PolyRefl.mkT 8 24 8 0 0 (-23725556), PolyRefl.mkT 10 22 8 0 0 (125292245), PolyRefl.mkT 12 20 8 0 0 (-390392942), PolyRefl.mkT 14 18 8 0 0 (689145079), PolyRefl.mkT 16 16 8 0 0 (-650387800), PolyRefl.mkT 18 14 8 0 0 (364651375), PolyRefl.mkT 20 12 8 0 0 (-132387278), PolyRefl.mkT 22 10 8 0 0 (31756109), PolyRefl.mkT 24 8 8 0 0 (-4916852), PolyRefl.mkT 26 6 8 0 0 (461439), PolyRefl.mkT 28 4 8 0 0 (-22770), PolyRefl.mkT 30 2 8 0 0 (405)]
def cp77_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (-6), PolyRefl.mkT 0 4 0 2 0 (6), PolyRefl.mkT 1 3 0 1 1 (16), PolyRefl.mkT 2 2 0 0 2 (36), PolyRefl.mkT 2 2 0 2 0 (-36), PolyRefl.mkT 3 1 0 1 1 (-16), PolyRefl.mkT 4 0 0 0 2 (-6), PolyRefl.mkT 4 0 0 2 0 (6)]
def cp78_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 0 (-6), PolyRefl.mkT 2 2 0 0 0 (36), PolyRefl.mkT 4 0 0 0 0 (-6)]
def cp79_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (24), PolyRefl.mkT 0 4 0 3 1 (-24), PolyRefl.mkT 1 3 0 0 4 (-8), PolyRefl.mkT 1 3 0 2 2 (112), PolyRefl.mkT 1 3 0 4 0 (-8), PolyRefl.mkT 2 2 0 1 3 (-48), PolyRefl.mkT 2 2 0 3 1 (48), PolyRefl.mkT 3 1 0 0 4 (-8), PolyRefl.mkT 3 1 0 2 2 (-16), PolyRefl.mkT 3 1 0 4 0 (-8), PolyRefl.mkT 4 0 0 1 3 (-8), PolyRefl.mkT 4 0 0 3 1 (8)]
def cp80_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (24), PolyRefl.mkT 1 3 0 0 2 (-8), PolyRefl.mkT 1 3 0 2 0 (120), PolyRefl.mkT 1 3 2 0 0 (-8), PolyRefl.mkT 2 2 0 1 1 (-48), PolyRefl.mkT 3 1 0 0 2 (-8), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 3 1 2 0 0 (-8), PolyRefl.mkT 4 0 0 1 1 (-8)]
def cp81_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-6), PolyRefl.mkT 0 4 2 1 1 (3), PolyRefl.mkT 1 3 0 4 0 (-16), PolyRefl.mkT 1 3 2 2 0 (16), PolyRefl.mkT 1 3 4 0 0 (-1), PolyRefl.mkT 2 2 0 3 1 (12), PolyRefl.mkT 2 2 2 1 1 (-6), PolyRefl.mkT 3 1 4 0 0 (-1), PolyRefl.mkT 4 0 0 3 1 (2), PolyRefl.mkT 4 0 2 1 1 (-1)]
def cp82_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-6), PolyRefl.mkT 0 4 2 1 1 (3), PolyRefl.mkT 1 3 0 4 0 (16), PolyRefl.mkT 1 3 2 2 0 (-16), PolyRefl.mkT 1 3 4 0 0 (1), PolyRefl.mkT 2 2 0 3 1 (12), PolyRefl.mkT 2 2 2 1 1 (-6), PolyRefl.mkT 3 1 4 0 0 (1), PolyRefl.mkT 4 0 0 3 1 (2), PolyRefl.mkT 4 0 2 1 1 (-1)]
def cp83_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 8 0 (36), PolyRefl.mkT 0 8 2 6 0 (-72), PolyRefl.mkT 0 8 4 4 0 (45), PolyRefl.mkT 0 8 6 2 0 (-9), PolyRefl.mkT 2 6 0 8 0 (112), PolyRefl.mkT 2 6 2 6 0 (-224), PolyRefl.mkT 2 6 4 4 0 (108), PolyRefl.mkT 2 6 6 2 0 (4), PolyRefl.mkT 2 6 8 0 0 (1), PolyRefl.mkT 4 4 0 8 0 (120), PolyRefl.mkT 4 4 2 6 0 (-240), PolyRefl.mkT 4 4 4 4 0 (182), PolyRefl.mkT 4 4 6 2 0 (-62), PolyRefl.mkT 4 4 8 0 0 (2), PolyRefl.mkT 6 2 0 8 0 (48), PolyRefl.mkT 6 2 2 6 0 (-96), PolyRefl.mkT 6 2 4 4 0 (60), PolyRefl.mkT 6 2 6 2 0 (-12), PolyRefl.mkT 6 2 8 0 0 (1), PolyRefl.mkT 8 0 0 8 0 (4), PolyRefl.mkT 8 0 2 6 0 (-8), PolyRefl.mkT 8 0 4 4 0 (5), PolyRefl.mkT 8 0 6 2 0 (-1)]
def cp84_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 4 0 (46656), PolyRefl.mkT 0 24 2 2 0 (-46656), PolyRefl.mkT 2 22 0 4 0 (-808704), PolyRefl.mkT 2 22 2 2 0 (808704), PolyRefl.mkT 2 22 4 0 0 (-20736), PolyRefl.mkT 4 20 0 4 0 (5277312), PolyRefl.mkT 4 20 2 2 0 (-5277312), PolyRefl.mkT 4 20 4 0 0 (700416), PolyRefl.mkT 6 18 0 4 0 (-11759360), PolyRefl.mkT 6 18 2 2 0 (11759360), PolyRefl.mkT 6 18 4 0 0 (-7598848), PolyRefl.mkT 8 16 0 4 0 (-14287936), PolyRefl.mkT 8 16 2 2 0 (14287936), PolyRefl.mkT 8 16 4 0 0 (38178816), PolyRefl.mkT 10 14 0 4 0 (67011072), PolyRefl.mkT 10 14 2 2 0 (-67011072), PolyRefl.mkT 10 14 4 0 0 (-89082368), PolyRefl.mkT 12 12 0 4 0 (76051200), PolyRefl.mkT 12 12 2 2 0 (-76051200), PolyRefl.mkT 12 12 4 0 0 (86700032), PolyRefl.mkT 14 10 0 4 0 (-5309952), PolyRefl.mkT 14 10 2 2 0 (5309952), PolyRefl.mkT 14 10 4 0 0 (-36488704), PolyRefl.mkT 16 8 0 4 0 (-13790784), PolyRefl.mkT 16 8 2 2 0 (13790784), PolyRefl.mkT 16 8 4 0 0 (8597504), PolyRefl.mkT 18 6 0 4 0 (3994880), PolyRefl.mkT 18 6 2 2 0 (-3994880), PolyRefl.mkT 18 6 4 0 0 (-1029376), PolyRefl.mkT 20 4 0 4 0 (-217472), PolyRefl.mkT 20 4 2 2 0 (217472), PolyRefl.mkT 20 4 4 0 0 (40960), PolyRefl.mkT 22 2 0 4 0 (-43776), PolyRefl.mkT 22 2 2 2 0 (43776), PolyRefl.mkT 22 2 4 0 0 (2304), PolyRefl.mkT 24 0 0 4 0 (5184), PolyRefl.mkT 24 0 2 2 0 (-5184)]
def cp85_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 8 0 0 (-3), PolyRefl.mkT 2 22 8 0 0 (76), PolyRefl.mkT 4 20 8 0 0 (-1990), PolyRefl.mkT 6 18 8 0 0 (34300), PolyRefl.mkT 8 16 8 0 0 (-166093), PolyRefl.mkT 10 14 8 0 0 (332312), PolyRefl.mkT 12 12 8 0 0 (-313300), PolyRefl.mkT 14 10 8 0 0 (154840), PolyRefl.mkT 16 8 8 0 0 (-40653), PolyRefl.mkT 18 6 8 0 0 (4764), PolyRefl.mkT 20 4 8 0 0 (-198), PolyRefl.mkT 22 2 8 0 0 (44), PolyRefl.mkT 24 0 8 0 0 (-3)]
def cp86_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-16), PolyRefl.mkT 0 4 0 3 1 (16), PolyRefl.mkT 1 3 0 0 4 (-24), PolyRefl.mkT 1 3 0 2 2 (144), PolyRefl.mkT 1 3 0 4 0 (-24), PolyRefl.mkT 3 1 0 0 4 (8), PolyRefl.mkT 3 1 0 2 2 (-48), PolyRefl.mkT 3 1 0 4 0 (8), PolyRefl.mkT 4 0 0 1 3 (16), PolyRefl.mkT 4 0 0 3 1 (-16)]
def cp87_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-16), PolyRefl.mkT 1 3 0 0 2 (-24), PolyRefl.mkT 1 3 0 2 0 (168), PolyRefl.mkT 1 3 2 0 0 (-24), PolyRefl.mkT 3 1 0 0 2 (8), PolyRefl.mkT 3 1 0 2 0 (-56), PolyRefl.mkT 3 1 2 0 0 (8), PolyRefl.mkT 4 0 0 1 1 (16)]
def cp88_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (4), PolyRefl.mkT 0 4 2 1 1 (-2), PolyRefl.mkT 1 3 0 4 0 (-24), PolyRefl.mkT 1 3 2 2 0 (24), PolyRefl.mkT 1 3 4 0 0 (-3), PolyRefl.mkT 3 1 0 4 0 (8), PolyRefl.mkT 3 1 2 2 0 (-8), PolyRefl.mkT 3 1 4 0 0 (1), PolyRefl.mkT 4 0 0 3 1 (-4), PolyRefl.mkT 4 0 2 1 1 (2)]
def cp89_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 6 0 (16), PolyRefl.mkT 0 8 2 4 0 (-16), PolyRefl.mkT 0 8 4 2 0 (4), PolyRefl.mkT 4 4 0 6 0 (-32), PolyRefl.mkT 4 4 2 4 0 (32), PolyRefl.mkT 4 4 4 2 0 (-8), PolyRefl.mkT 8 0 0 6 0 (16), PolyRefl.mkT 8 0 2 4 0 (-16), PolyRefl.mkT 8 0 4 2 0 (4)]
def cp90_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (4), PolyRefl.mkT 0 4 2 1 1 (-2), PolyRefl.mkT 1 3 0 4 0 (24), PolyRefl.mkT 1 3 2 2 0 (-24), PolyRefl.mkT 1 3 4 0 0 (3), PolyRefl.mkT 3 1 0 4 0 (-8), PolyRefl.mkT 3 1 2 2 0 (8), PolyRefl.mkT 3 1 4 0 0 (-1), PolyRefl.mkT 4 0 0 3 1 (-4), PolyRefl.mkT 4 0 2 1 1 (2)]
def cp91_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 8 0 (16), PolyRefl.mkT 0 8 2 6 0 (-32), PolyRefl.mkT 0 8 4 4 0 (20), PolyRefl.mkT 0 8 6 2 0 (-4), PolyRefl.mkT 2 6 0 8 0 (576), PolyRefl.mkT 2 6 2 6 0 (-1152), PolyRefl.mkT 2 6 4 4 0 (720), PolyRefl.mkT 2 6 6 2 0 (-144), PolyRefl.mkT 2 6 8 0 0 (9), PolyRefl.mkT 4 4 0 8 0 (-416), PolyRefl.mkT 4 4 2 6 0 (832), PolyRefl.mkT 4 4 4 4 0 (-520), PolyRefl.mkT 4 4 6 2 0 (104), PolyRefl.mkT 4 4 8 0 0 (-6), PolyRefl.mkT 6 2 0 8 0 (64), PolyRefl.mkT 6 2 2 6 0 (-128), PolyRefl.mkT 6 2 4 4 0 (80), PolyRefl.mkT 6 2 6 2 0 (-16), PolyRefl.mkT 6 2 8 0 0 (1), PolyRefl.mkT 8 0 0 8 0 (16), PolyRefl.mkT 8 0 2 6 0 (-32), PolyRefl.mkT 8 0 4 4 0 (20), PolyRefl.mkT 8 0 6 2 0 (-4)]
def cp92_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 20 0 6 0 (1024), PolyRefl.mkT 0 20 2 4 0 (-1280), PolyRefl.mkT 0 20 4 2 0 (320), PolyRefl.mkT 0 20 6 0 0 (-16), PolyRefl.mkT 2 18 0 6 0 (18432), PolyRefl.mkT 2 18 2 4 0 (-20992), PolyRefl.mkT 2 18 4 2 0 (4736), PolyRefl.mkT 2 18 6 0 0 (-416), PolyRefl.mkT 4 16 0 6 0 (-576512), PolyRefl.mkT 4 16 2 4 0 (769792), PolyRefl.mkT 4 16 4 2 0 (-200640), PolyRefl.mkT 4 16 6 0 0 (6960), PolyRefl.mkT 6 14 0 6 0 (4317184), PolyRefl.mkT 6 14 2 4 0 (-6256640), PolyRefl.mkT 6 14 4 2 0 (1902080), PolyRefl.mkT 6 14 6 0 0 (25216), PolyRefl.mkT 8 12 0 6 0 (-12204032), PolyRefl.mkT 8 12 2 4 0 (18679296), PolyRefl.mkT 8 12 4 2 0 (-6513024), PolyRefl.mkT 8 12 6 0 0 (24800), PolyRefl.mkT 10 10 0 6 0 (11218944), PolyRefl.mkT 10 10 2 4 0 (-17026048), PolyRefl.mkT 10 10 4 2 0 (5809920), PolyRefl.mkT 10 10 6 0 0 (64), PolyRefl.mkT 12 8 0 6 0 (-4536320), PolyRefl.mkT 12 8 2 4 0 (6669824), PolyRefl.mkT 12 8 4 2 0 (-2118016), PolyRefl.mkT 12 8 6 0 0 (-8992), PolyRefl.mkT 14 6 0 6 0 (712704), PolyRefl.mkT 14 6 2 4 0 (-964608), PolyRefl.mkT 14 6 4 2 0 (251392), PolyRefl.mkT 14 6 6 0 0 (-384), PolyRefl.mkT 16 4 0 6 0 (13312), PolyRefl.mkT 16 4 2 4 0 (-33024), PolyRefl.mkT 16 4 4 2 0 (16448), PolyRefl.mkT 16 4 6 0 0 (1840), PolyRefl.mkT 18 2 0 6 0 (-14336), PolyRefl.mkT 18 2 2 4 0 (19968), PolyRefl.mkT 18 2 4 2 0 (-5504), PolyRefl.mkT 18 2 6 0 0 (96), PolyRefl.mkT 20 0 0 6 0 (1024), PolyRefl.mkT 20 0 2 4 0 (-1280), PolyRefl.mkT 20 0 4 2 0 (320), PolyRefl.mkT 20 0 6 0 0 (-16)]
def cp93_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 2 0 (-64), PolyRefl.mkT 0 6 2 0 0 (16), PolyRefl.mkT 2 4 0 2 0 (448), PolyRefl.mkT 2 4 2 0 0 (-240), PolyRefl.mkT 4 2 0 2 0 (-448), PolyRefl.mkT 4 2 2 0 0 (240), PolyRefl.mkT 6 0 0 2 0 (64), PolyRefl.mkT 6 0 2 0 0 (-16)]
def cp94_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 20 0 6 0 (-1024), PolyRefl.mkT 0 20 2 4 0 (1792), PolyRefl.mkT 0 20 4 2 0 (-832), PolyRefl.mkT 0 20 6 0 0 (48), PolyRefl.mkT 2 18 0 6 0 (-18432), PolyRefl.mkT 2 18 2 4 0 (34304), PolyRefl.mkT 2 18 4 2 0 (-18048), PolyRefl.mkT 2 18 6 0 0 (1760), PolyRefl.mkT 4 16 0 6 0 (576512), PolyRefl.mkT 4 16 2 4 0 (-959744), PolyRefl.mkT 4 16 4 2 0 (390592), PolyRefl.mkT 4 16 6 0 0 (-400), PolyRefl.mkT 6 14 0 6 0 (-4317184), PolyRefl.mkT 6 14 2 4 0 (6694912), PolyRefl.mkT 6 14 4 2 0 (-2340352), PolyRefl.mkT 6 14 6 0 0 (-12160), PolyRefl.mkT 8 12 0 6 0 (12204032), PolyRefl.mkT 8 12 2 4 0 (-17932800), PolyRefl.mkT 8 12 4 2 0 (5766528), PolyRefl.mkT 8 12 6 0 0 (-12960), PolyRefl.mkT 10 10 0 6 0 (-11218944), PolyRefl.mkT 10 10 2 4 0 (16630784), PolyRefl.mkT 10 10 4 2 0 (-5414656), PolyRefl.mkT 10 10 6 0 0 (2880), PolyRefl.mkT 12 8 0 6 0 (4536320), PolyRefl.mkT 12 8 2 4 0 (-6939136), PolyRefl.mkT 12 8 4 2 0 (2387328), PolyRefl.mkT 12 8 6 0 0 (6496), PolyRefl.mkT 14 6 0 6 0 (-712704), PolyRefl.mkT 14 6 2 4 0 (1173504), PolyRefl.mkT 14 6 4 2 0 (-460288), PolyRefl.mkT 14 6 6 0 0 (-896), PolyRefl.mkT 16 4 0 6 0 (-13312), PolyRefl.mkT 16 4 2 4 0 (6912), PolyRefl.mkT 16 4 4 2 0 (9664), PolyRefl.mkT 16 4 6 0 0 (-1424), PolyRefl.mkT 18 2 0 6 0 (14336), PolyRefl.mkT 18 2 2 4 0 (-23040), PolyRefl.mkT 18 2 4 2 0 (8576), PolyRefl.mkT 18 2 6 0 0 (224), PolyRefl.mkT 20 0 0 6 0 (-1024), PolyRefl.mkT 20 0 2 4 0 (1792), PolyRefl.mkT 20 0 4 2 0 (-832), PolyRefl.mkT 20 0 6 0 0 (48)]
def cp95_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 8 0 0 (-3), PolyRefl.mkT 2 22 8 0 0 (44), PolyRefl.mkT 4 20 8 0 0 (-198), PolyRefl.mkT 6 18 8 0 0 (4764), PolyRefl.mkT 8 16 8 0 0 (-40653), PolyRefl.mkT 10 14 8 0 0 (154840), PolyRefl.mkT 12 12 8 0 0 (-313300), PolyRefl.mkT 14 10 8 0 0 (332312), PolyRefl.mkT 16 8 8 0 0 (-166093), PolyRefl.mkT 18 6 8 0 0 (34300), PolyRefl.mkT 20 4 8 0 0 (-1990), PolyRefl.mkT 22 2 8 0 0 (76), PolyRefl.mkT 24 0 8 0 0 (-3)]
def cp96_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (16), PolyRefl.mkT 0 4 0 3 1 (-16), PolyRefl.mkT 1 3 0 0 4 (8), PolyRefl.mkT 1 3 0 2 2 (-48), PolyRefl.mkT 1 3 0 4 0 (8), PolyRefl.mkT 3 1 0 0 4 (-24), PolyRefl.mkT 3 1 0 2 2 (144), PolyRefl.mkT 3 1 0 4 0 (-24), PolyRefl.mkT 4 0 0 1 3 (-16), PolyRefl.mkT 4 0 0 3 1 (16)]
def cp97_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (16), PolyRefl.mkT 1 3 0 0 2 (8), PolyRefl.mkT 1 3 0 2 0 (-56), PolyRefl.mkT 1 3 2 0 0 (8), PolyRefl.mkT 3 1 0 0 2 (-24), PolyRefl.mkT 3 1 0 2 0 (168), PolyRefl.mkT 3 1 2 0 0 (-24), PolyRefl.mkT 4 0 0 1 1 (-16)]
def cp98_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-4), PolyRefl.mkT 0 4 2 1 1 (2), PolyRefl.mkT 1 3 0 4 0 (8), PolyRefl.mkT 1 3 2 2 0 (-8), PolyRefl.mkT 1 3 4 0 0 (1), PolyRefl.mkT 3 1 0 4 0 (-24), PolyRefl.mkT 3 1 2 2 0 (24), PolyRefl.mkT 3 1 4 0 0 (-3), PolyRefl.mkT 4 0 0 3 1 (4), PolyRefl.mkT 4 0 2 1 1 (-2)]
def cp99_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-4), PolyRefl.mkT 0 4 2 1 1 (2), PolyRefl.mkT 1 3 0 4 0 (-8), PolyRefl.mkT 1 3 2 2 0 (8), PolyRefl.mkT 1 3 4 0 0 (-1), PolyRefl.mkT 3 1 0 4 0 (24), PolyRefl.mkT 3 1 2 2 0 (-24), PolyRefl.mkT 3 1 4 0 0 (3), PolyRefl.mkT 4 0 0 3 1 (4), PolyRefl.mkT 4 0 2 1 1 (-2)]
def cp100_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 8 0 (16), PolyRefl.mkT 0 8 2 6 0 (-32), PolyRefl.mkT 0 8 4 4 0 (20), PolyRefl.mkT 0 8 6 2 0 (-4), PolyRefl.mkT 2 6 0 8 0 (64), PolyRefl.mkT 2 6 2 6 0 (-128), PolyRefl.mkT 2 6 4 4 0 (80), PolyRefl.mkT 2 6 6 2 0 (-16), PolyRefl.mkT 2 6 8 0 0 (1), PolyRefl.mkT 4 4 0 8 0 (-416), PolyRefl.mkT 4 4 2 6 0 (832), PolyRefl.mkT 4 4 4 4 0 (-520), PolyRefl.mkT 4 4 6 2 0 (104), PolyRefl.mkT 4 4 8 0 0 (-6), PolyRefl.mkT 6 2 0 8 0 (576), PolyRefl.mkT 6 2 2 6 0 (-1152), PolyRefl.mkT 6 2 4 4 0 (720), PolyRefl.mkT 6 2 6 2 0 (-144), PolyRefl.mkT 6 2 8 0 0 (9), PolyRefl.mkT 8 0 0 8 0 (16), PolyRefl.mkT 8 0 2 6 0 (-32), PolyRefl.mkT 8 0 4 4 0 (20), PolyRefl.mkT 8 0 6 2 0 (-4)]
def cp101_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 20 0 6 0 (-1024), PolyRefl.mkT 0 20 2 4 0 (1792), PolyRefl.mkT 0 20 4 2 0 (-832), PolyRefl.mkT 0 20 6 0 0 (48), PolyRefl.mkT 2 18 0 6 0 (14336), PolyRefl.mkT 2 18 2 4 0 (-23040), PolyRefl.mkT 2 18 4 2 0 (8576), PolyRefl.mkT 2 18 6 0 0 (224), PolyRefl.mkT 4 16 0 6 0 (-13312), PolyRefl.mkT 4 16 2 4 0 (6912), PolyRefl.mkT 4 16 4 2 0 (9664), PolyRefl.mkT 4 16 6 0 0 (-1424), PolyRefl.mkT 6 14 0 6 0 (-712704), PolyRefl.mkT 6 14 2 4 0 (1173504), PolyRefl.mkT 6 14 4 2 0 (-460288), PolyRefl.mkT 6 14 6 0 0 (-896), PolyRefl.mkT 8 12 0 6 0 (4536320), PolyRefl.mkT 8 12 2 4 0 (-6939136), PolyRefl.mkT 8 12 4 2 0 (2387328), PolyRefl.mkT 8 12 6 0 0 (6496), PolyRefl.mkT 10 10 0 6 0 (-11218944), PolyRefl.mkT 10 10 2 4 0 (16630784), PolyRefl.mkT 10 10 4 2 0 (-5414656), PolyRefl.mkT 10 10 6 0 0 (2880), PolyRefl.mkT 12 8 0 6 0 (12204032), PolyRefl.mkT 12 8 2 4 0 (-17932800), PolyRefl.mkT 12 8 4 2 0 (5766528), PolyRefl.mkT 12 8 6 0 0 (-12960), PolyRefl.mkT 14 6 0 6 0 (-4317184), PolyRefl.mkT 14 6 2 4 0 (6694912), PolyRefl.mkT 14 6 4 2 0 (-2340352), PolyRefl.mkT 14 6 6 0 0 (-12160), PolyRefl.mkT 16 4 0 6 0 (576512), PolyRefl.mkT 16 4 2 4 0 (-959744), PolyRefl.mkT 16 4 4 2 0 (390592), PolyRefl.mkT 16 4 6 0 0 (-400), PolyRefl.mkT 18 2 0 6 0 (-18432), PolyRefl.mkT 18 2 2 4 0 (34304), PolyRefl.mkT 18 2 4 2 0 (-18048), PolyRefl.mkT 18 2 6 0 0 (1760), PolyRefl.mkT 20 0 0 6 0 (-1024), PolyRefl.mkT 20 0 2 4 0 (1792), PolyRefl.mkT 20 0 4 2 0 (-832), PolyRefl.mkT 20 0 6 0 0 (48)]
def cp102_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 12 8 0 0 (-3), PolyRefl.mkT 2 10 8 0 0 (2), PolyRefl.mkT 4 8 8 0 0 (-29), PolyRefl.mkT 6 6 8 0 0 (188), PolyRefl.mkT 8 4 8 0 0 (-29), PolyRefl.mkT 10 2 8 0 0 (2), PolyRefl.mkT 12 0 8 0 0 (-3)]
def cp103_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 2 (2), PolyRefl.mkT 0 2 0 2 0 (-6), PolyRefl.mkT 2 0 0 0 2 (-6), PolyRefl.mkT 2 0 0 2 0 (2)]
def cp104_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 0 (2), PolyRefl.mkT 2 0 0 0 0 (-6)]
def cp105_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 2 0 (-4), PolyRefl.mkT 0 2 2 0 0 (1), PolyRefl.mkT 2 0 0 2 0 (4), PolyRefl.mkT 2 0 2 0 0 (-3)]
def cp106_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 1 3 (16), PolyRefl.mkT 0 2 0 3 1 (-16), PolyRefl.mkT 1 1 0 0 4 (8), PolyRefl.mkT 1 1 0 2 2 (-48), PolyRefl.mkT 1 1 0 4 0 (8), PolyRefl.mkT 2 0 0 1 3 (16), PolyRefl.mkT 2 0 0 3 1 (-16)]
def cp107_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 1 1 (16), PolyRefl.mkT 1 1 0 0 2 (8), PolyRefl.mkT 1 1 0 2 0 (-56), PolyRefl.mkT 1 1 2 0 0 (8), PolyRefl.mkT 2 0 0 1 1 (16)]
def cp108_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 3 1 (-4), PolyRefl.mkT 0 2 2 1 1 (2), PolyRefl.mkT 1 1 0 4 0 (8), PolyRefl.mkT 1 1 2 2 0 (-8), PolyRefl.mkT 1 1 4 0 0 (1), PolyRefl.mkT 2 0 0 3 1 (-4), PolyRefl.mkT 2 0 2 1 1 (2)]
def cp109_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 6 0 (16), PolyRefl.mkT 0 4 2 4 0 (-16), PolyRefl.mkT 0 4 4 2 0 (4), PolyRefl.mkT 2 2 0 6 0 (32), PolyRefl.mkT 2 2 2 4 0 (-32), PolyRefl.mkT 2 2 4 2 0 (8), PolyRefl.mkT 4 0 0 6 0 (16), PolyRefl.mkT 4 0 2 4 0 (-16), PolyRefl.mkT 4 0 4 2 0 (4)]
def cp110_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 3 1 (-4), PolyRefl.mkT 0 2 2 1 1 (2), PolyRefl.mkT 1 1 0 4 0 (-8), PolyRefl.mkT 1 1 2 2 0 (8), PolyRefl.mkT 1 1 4 0 0 (-1), PolyRefl.mkT 2 0 0 3 1 (-4), PolyRefl.mkT 2 0 2 1 1 (2)]
def cp111_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 8 0 (16), PolyRefl.mkT 0 4 2 6 0 (-32), PolyRefl.mkT 0 4 4 4 0 (20), PolyRefl.mkT 0 4 6 2 0 (-4), PolyRefl.mkT 2 2 0 8 0 (96), PolyRefl.mkT 2 2 2 6 0 (-192), PolyRefl.mkT 2 2 4 4 0 (120), PolyRefl.mkT 2 2 6 2 0 (-24), PolyRefl.mkT 2 2 8 0 0 (1), PolyRefl.mkT 4 0 0 8 0 (16), PolyRefl.mkT 4 0 2 6 0 (-32), PolyRefl.mkT 4 0 4 4 0 (20), PolyRefl.mkT 4 0 6 2 0 (-4)]
def cp112_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (256), PolyRefl.mkT 2 6 0 0 0 (-1024), PolyRefl.mkT 4 4 0 0 0 (1536), PolyRefl.mkT 6 2 0 0 0 (-1024), PolyRefl.mkT 8 0 0 0 0 (256)]
def cp113_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 6 0 (-1024), PolyRefl.mkT 0 10 2 4 0 (1792), PolyRefl.mkT 0 10 4 2 0 (-832), PolyRefl.mkT 0 10 6 0 0 (48), PolyRefl.mkT 2 8 0 6 0 (-3072), PolyRefl.mkT 2 8 2 4 0 (5888), PolyRefl.mkT 2 8 4 2 0 (-3264), PolyRefl.mkT 2 8 6 0 0 (368), PolyRefl.mkT 4 6 0 6 0 (14336), PolyRefl.mkT 4 6 2 4 0 (-23040), PolyRefl.mkT 4 6 4 2 0 (8320), PolyRefl.mkT 4 6 6 0 0 (544), PolyRefl.mkT 6 4 0 6 0 (-14336), PolyRefl.mkT 6 4 2 4 0 (19968), PolyRefl.mkT 6 4 4 2 0 (-5248), PolyRefl.mkT 6 4 6 0 0 (160), PolyRefl.mkT 8 2 0 6 0 (3072), PolyRefl.mkT 8 2 2 4 0 (-3328), PolyRefl.mkT 8 2 4 2 0 (704), PolyRefl.mkT 8 2 6 0 0 (-80), PolyRefl.mkT 10 0 0 6 0 (1024), PolyRefl.mkT 10 0 2 4 0 (-1280), PolyRefl.mkT 10 0 4 2 0 (320), PolyRefl.mkT 10 0 6 0 0 (-16)]
def cp114_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (16), PolyRefl.mkT 0 4 0 3 1 (-16), PolyRefl.mkT 1 3 0 0 4 (-24), PolyRefl.mkT 1 3 0 2 2 (144), PolyRefl.mkT 1 3 0 4 0 (-24), PolyRefl.mkT 3 1 0 0 4 (8), PolyRefl.mkT 3 1 0 2 2 (-48), PolyRefl.mkT 3 1 0 4 0 (8), PolyRefl.mkT 4 0 0 1 3 (-16), PolyRefl.mkT 4 0 0 3 1 (16)]
def cp115_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (16), PolyRefl.mkT 1 3 0 0 2 (-24), PolyRefl.mkT 1 3 0 2 0 (168), PolyRefl.mkT 1 3 2 0 0 (-24), PolyRefl.mkT 3 1 0 0 2 (8), PolyRefl.mkT 3 1 0 2 0 (-56), PolyRefl.mkT 3 1 2 0 0 (8), PolyRefl.mkT 4 0 0 1 1 (-16)]
def cp116_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-4), PolyRefl.mkT 0 4 2 1 1 (2), PolyRefl.mkT 1 3 0 4 0 (-24), PolyRefl.mkT 1 3 2 2 0 (24), PolyRefl.mkT 1 3 4 0 0 (-3), PolyRefl.mkT 3 1 0 4 0 (8), PolyRefl.mkT 3 1 2 2 0 (-8), PolyRefl.mkT 3 1 4 0 0 (1), PolyRefl.mkT 4 0 0 3 1 (4), PolyRefl.mkT 4 0 2 1 1 (-2)]
def cp117_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-4), PolyRefl.mkT 0 4 2 1 1 (2), PolyRefl.mkT 1 3 0 4 0 (24), PolyRefl.mkT 1 3 2 2 0 (-24), PolyRefl.mkT 1 3 4 0 0 (3), PolyRefl.mkT 3 1 0 4 0 (-8), PolyRefl.mkT 3 1 2 2 0 (8), PolyRefl.mkT 3 1 4 0 0 (-1), PolyRefl.mkT 4 0 0 3 1 (4), PolyRefl.mkT 4 0 2 1 1 (-2)]
def cp118_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 4 0 0 (-1), PolyRefl.mkT 2 8 4 0 0 (20), PolyRefl.mkT 4 6 4 0 0 (-62), PolyRefl.mkT 6 4 4 0 0 (36), PolyRefl.mkT 8 2 4 0 0 (-9)]
def cp119_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 4 (2), PolyRefl.mkT 0 2 0 2 2 (-28), PolyRefl.mkT 0 2 0 4 0 (2), PolyRefl.mkT 2 0 0 0 4 (-6), PolyRefl.mkT 2 0 0 2 2 (20), PolyRefl.mkT 2 0 0 4 0 (-6)]
def cp120_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 2 (2), PolyRefl.mkT 0 2 0 2 0 (-30), PolyRefl.mkT 0 2 2 0 0 (2), PolyRefl.mkT 2 0 0 0 2 (-6), PolyRefl.mkT 2 0 0 2 0 (26), PolyRefl.mkT 2 0 2 0 0 (-6)]
def cp121_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 4 0 (16), PolyRefl.mkT 0 2 2 2 0 (-16), PolyRefl.mkT 0 2 4 0 0 (1), PolyRefl.mkT 2 0 0 4 0 (-16), PolyRefl.mkT 2 0 2 2 0 (16), PolyRefl.mkT 2 0 4 0 0 (-3)]
def cp122_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 2 0 (64), PolyRefl.mkT 0 6 2 0 0 (-16), PolyRefl.mkT 2 4 0 2 0 (-448), PolyRefl.mkT 2 4 2 0 0 (240), PolyRefl.mkT 4 2 0 2 0 (448), PolyRefl.mkT 4 2 2 0 0 (-240), PolyRefl.mkT 6 0 0 2 0 (-64), PolyRefl.mkT 6 0 2 0 0 (16)]
def cp123_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 2 22 4 0 0 (405), PolyRefl.mkT 4 20 4 0 0 (-13014), PolyRefl.mkT 6 18 4 0 0 (144265), PolyRefl.mkT 8 16 4 0 0 (-709064), PolyRefl.mkT 10 14 4 0 0 (1570586), PolyRefl.mkT 12 12 4 0 0 (-1411076), PolyRefl.mkT 14 10 4 0 0 (656906), PolyRefl.mkT 16 8 4 0 0 (-182600), PolyRefl.mkT 18 6 4 0 0 (28561), PolyRefl.mkT 20 4 4 0 0 (-2070), PolyRefl.mkT 22 2 4 0 0 (45)]
def cp124_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 2 6 0 0 0 (64), PolyRefl.mkT 4 4 0 0 0 (-128), PolyRefl.mkT 6 2 0 0 0 (64)]
def cp125_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 0 (6), PolyRefl.mkT 1 3 0 0 1 (8), PolyRefl.mkT 2 2 0 1 0 (-36), PolyRefl.mkT 3 1 0 0 1 (-8), PolyRefl.mkT 4 0 0 1 0 (6)]
def cp126_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 0 (-6), PolyRefl.mkT 1 3 0 0 1 (8), PolyRefl.mkT 2 2 0 1 0 (36), PolyRefl.mkT 3 1 0 0 1 (-8), PolyRefl.mkT 4 0 0 1 0 (-6)]
def cp127_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 2 0 (9), PolyRefl.mkT 2 6 0 2 0 (-92), PolyRefl.mkT 2 6 2 0 0 (-16), PolyRefl.mkT 4 4 0 2 0 (310), PolyRefl.mkT 4 4 2 0 0 (32), PolyRefl.mkT 6 2 0 2 0 (-92), PolyRefl.mkT 6 2 2 0 0 (-16), PolyRefl.mkT 8 0 0 2 0 (9)]
def cp128_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-12), PolyRefl.mkT 1 3 0 0 2 (24), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 2 2 0 1 1 (24), PolyRefl.mkT 3 1 0 0 2 (-8), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 4 0 0 1 1 (4)]
def cp129_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 1 3 0 0 0 (24), PolyRefl.mkT 3 1 0 0 0 (-8)]
def cp130_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-3), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 1 3 2 0 0 (6), PolyRefl.mkT 2 2 0 1 1 (6), PolyRefl.mkT 3 1 2 0 0 (-2), PolyRefl.mkT 4 0 0 1 1 (1)]
def cp131_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 2 0 (9), PolyRefl.mkT 2 6 0 2 0 (-36), PolyRefl.mkT 4 4 0 2 0 (30), PolyRefl.mkT 6 2 0 2 0 (12), PolyRefl.mkT 8 0 0 2 0 (1)]
def cp132_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-3), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 1 3 2 0 0 (-6), PolyRefl.mkT 2 2 0 1 1 (6), PolyRefl.mkT 3 1 2 0 0 (2), PolyRefl.mkT 4 0 0 1 1 (1)]
def cp133_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 4 0 (9), PolyRefl.mkT 0 8 2 2 0 (-9), PolyRefl.mkT 2 6 0 4 0 (28), PolyRefl.mkT 2 6 2 2 0 (-60), PolyRefl.mkT 2 6 4 0 0 (36), PolyRefl.mkT 4 4 0 4 0 (30), PolyRefl.mkT 4 4 2 2 0 (2), PolyRefl.mkT 4 4 4 0 0 (-24), PolyRefl.mkT 6 2 0 4 0 (12), PolyRefl.mkT 6 2 2 2 0 (-12), PolyRefl.mkT 6 2 4 0 0 (4), PolyRefl.mkT 8 0 0 4 0 (1), PolyRefl.mkT 8 0 2 2 0 (-1)]
def cp134_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 16 0 2 0 (81), PolyRefl.mkT 0 16 2 0 0 (-81), PolyRefl.mkT 2 14 0 2 0 (-576), PolyRefl.mkT 2 14 2 0 0 (432), PolyRefl.mkT 4 12 0 2 0 (484), PolyRefl.mkT 4 12 2 0 0 (2908), PolyRefl.mkT 6 10 0 2 0 (5200), PolyRefl.mkT 6 10 2 0 0 (-18336), PolyRefl.mkT 8 8 0 2 0 (5710), PolyRefl.mkT 8 8 2 0 0 (6834), PolyRefl.mkT 10 6 0 2 0 (1120), PolyRefl.mkT 10 6 2 0 0 (-4240), PolyRefl.mkT 12 4 0 2 0 (-524), PolyRefl.mkT 12 4 2 0 0 (972), PolyRefl.mkT 14 2 0 2 0 (16), PolyRefl.mkT 16 0 0 2 0 (9), PolyRefl.mkT 16 0 2 0 0 (-9)]
def cp135_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (8), PolyRefl.mkT 0 4 0 3 1 (-8), PolyRefl.mkT 1 3 0 0 4 (-24), PolyRefl.mkT 1 3 0 2 2 (80), PolyRefl.mkT 1 3 0 4 0 (-24), PolyRefl.mkT 2 2 0 1 3 (48), PolyRefl.mkT 2 2 0 3 1 (-48), PolyRefl.mkT 3 1 0 0 4 (8), PolyRefl.mkT 3 1 0 2 2 (16), PolyRefl.mkT 3 1 0 4 0 (8), PolyRefl.mkT 4 0 0 1 3 (-24), PolyRefl.mkT 4 0 0 3 1 (24)]
def cp136_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (8), PolyRefl.mkT 1 3 0 0 2 (-24), PolyRefl.mkT 1 3 0 2 0 (104), PolyRefl.mkT 1 3 2 0 0 (-24), PolyRefl.mkT 2 2 0 1 1 (48), PolyRefl.mkT 3 1 0 0 2 (8), PolyRefl.mkT 3 1 0 2 0 (8), PolyRefl.mkT 3 1 2 0 0 (8), PolyRefl.mkT 4 0 0 1 1 (-24)]
def cp137_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-2), PolyRefl.mkT 0 4 2 1 1 (1), PolyRefl.mkT 1 3 0 4 0 (-16), PolyRefl.mkT 1 3 2 2 0 (16), PolyRefl.mkT 1 3 4 0 0 (-3), PolyRefl.mkT 2 2 0 3 1 (-12), PolyRefl.mkT 2 2 2 1 1 (6), PolyRefl.mkT 3 1 4 0 0 (1), PolyRefl.mkT 4 0 0 3 1 (6), PolyRefl.mkT 4 0 2 1 1 (-3)]
def cp138_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-2), PolyRefl.mkT 0 4 2 1 1 (1), PolyRefl.mkT 1 3 0 4 0 (16), PolyRefl.mkT 1 3 2 2 0 (-16), PolyRefl.mkT 1 3 4 0 0 (3), PolyRefl.mkT 2 2 0 3 1 (-12), PolyRefl.mkT 2 2 2 1 1 (6), PolyRefl.mkT 3 1 4 0 0 (-1), PolyRefl.mkT 4 0 0 3 1 (6), PolyRefl.mkT 4 0 2 1 1 (-3)]
def cp139_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 2 22 4 0 0 (693), PolyRefl.mkT 4 20 4 0 0 (-18774), PolyRefl.mkT 6 18 4 0 0 (186601), PolyRefl.mkT 8 16 4 0 0 (-845000), PolyRefl.mkT 10 14 4 0 0 (1737050), PolyRefl.mkT 12 12 4 0 0 (-1411076), PolyRefl.mkT 14 10 4 0 0 (490442), PolyRefl.mkT 16 8 4 0 0 (-46664), PolyRefl.mkT 18 6 4 0 0 (-13775), PolyRefl.mkT 20 4 4 0 0 (3690), PolyRefl.mkT 22 2 4 0 0 (-243)]
def cp140_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-4), PolyRefl.mkT 1 3 0 0 2 (24), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 2 2 0 1 1 (-24), PolyRefl.mkT 3 1 0 0 2 (-8), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 4 0 0 1 1 (12)]
def cp141_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-1), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 1 3 2 0 0 (6), PolyRefl.mkT 2 2 0 1 1 (-6), PolyRefl.mkT 3 1 2 0 0 (-2), PolyRefl.mkT 4 0 0 1 1 (3)]
def cp142_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-1), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 1 3 2 0 0 (-6), PolyRefl.mkT 2 2 0 1 1 (-6), PolyRefl.mkT 3 1 2 0 0 (2), PolyRefl.mkT 4 0 0 1 1 (3)]
def cp143_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 4 0 (1), PolyRefl.mkT 0 8 2 2 0 (-1), PolyRefl.mkT 2 6 0 4 0 (76), PolyRefl.mkT 2 6 2 2 0 (-108), PolyRefl.mkT 2 6 4 0 0 (36), PolyRefl.mkT 4 4 0 4 0 (30), PolyRefl.mkT 4 4 2 2 0 (2), PolyRefl.mkT 4 4 4 0 0 (-24), PolyRefl.mkT 6 2 0 4 0 (-36), PolyRefl.mkT 6 2 2 2 0 (36), PolyRefl.mkT 6 2 4 0 0 (4), PolyRefl.mkT 8 0 0 4 0 (9), PolyRefl.mkT 8 0 2 2 0 (-9)]
def cp144_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 16 0 2 0 (9), PolyRefl.mkT 0 16 2 0 0 (-9), PolyRefl.mkT 2 14 0 2 0 (592), PolyRefl.mkT 2 14 2 0 0 (-864), PolyRefl.mkT 4 12 0 2 0 (-6412), PolyRefl.mkT 4 12 2 0 0 (10828), PolyRefl.mkT 6 10 0 2 0 (20384), PolyRefl.mkT 6 10 2 0 0 (-35184), PolyRefl.mkT 8 8 0 2 0 (5710), PolyRefl.mkT 8 8 2 0 0 (6834), PolyRefl.mkT 10 6 0 2 0 (-14064), PolyRefl.mkT 10 6 2 0 0 (12608), PolyRefl.mkT 12 4 0 2 0 (6372), PolyRefl.mkT 12 4 2 0 0 (-6948), PolyRefl.mkT 14 2 0 2 0 (-1152), PolyRefl.mkT 14 2 2 0 0 (1296), PolyRefl.mkT 16 0 0 2 0 (81), PolyRefl.mkT 16 0 2 0 0 (-81)]
def cp145_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 20 0 6 0 (1024), PolyRefl.mkT 0 20 2 4 0 (-1280), PolyRefl.mkT 0 20 4 2 0 (320), PolyRefl.mkT 0 20 6 0 0 (-16), PolyRefl.mkT 2 18 0 6 0 (-14336), PolyRefl.mkT 2 18 2 4 0 (19968), PolyRefl.mkT 2 18 4 2 0 (-5504), PolyRefl.mkT 2 18 6 0 0 (96), PolyRefl.mkT 4 16 0 6 0 (13312), PolyRefl.mkT 4 16 2 4 0 (-33024), PolyRefl.mkT 4 16 4 2 0 (16448), PolyRefl.mkT 4 16 6 0 0 (1840), PolyRefl.mkT 6 14 0 6 0 (712704), PolyRefl.mkT 6 14 2 4 0 (-964608), PolyRefl.mkT 6 14 4 2 0 (251392), PolyRefl.mkT 6 14 6 0 0 (-384), PolyRefl.mkT 8 12 0 6 0 (-4536320), PolyRefl.mkT 8 12 2 4 0 (6669824), PolyRefl.mkT 8 12 4 2 0 (-2118016), PolyRefl.mkT 8 12 6 0 0 (-8992), PolyRefl.mkT 10 10 0 6 0 (11218944), PolyRefl.mkT 10 10 2 4 0 (-17026048), PolyRefl.mkT 10 10 4 2 0 (5809920), PolyRefl.mkT 10 10 6 0 0 (64), PolyRefl.mkT 12 8 0 6 0 (-12204032), PolyRefl.mkT 12 8 2 4 0 (18679296), PolyRefl.mkT 12 8 4 2 0 (-6513024), PolyRefl.mkT 12 8 6 0 0 (24800), PolyRefl.mkT 14 6 0 6 0 (4317184), PolyRefl.mkT 14 6 2 4 0 (-6256640), PolyRefl.mkT 14 6 4 2 0 (1902080), PolyRefl.mkT 14 6 6 0 0 (25216), PolyRefl.mkT 16 4 0 6 0 (-576512), PolyRefl.mkT 16 4 2 4 0 (769792), PolyRefl.mkT 16 4 4 2 0 (-200640), PolyRefl.mkT 16 4 6 0 0 (6960), PolyRefl.mkT 18 2 0 6 0 (18432), PolyRefl.mkT 18 2 2 4 0 (-20992), PolyRefl.mkT 18 2 4 2 0 (4736), PolyRefl.mkT 18 2 6 0 0 (-416), PolyRefl.mkT 20 0 0 6 0 (1024), PolyRefl.mkT 20 0 2 4 0 (-1280), PolyRefl.mkT 20 0 4 2 0 (320), PolyRefl.mkT 20 0 6 0 0 (-16)]
def cp146_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-16), PolyRefl.mkT 0 4 0 3 1 (16), PolyRefl.mkT 1 3 0 0 4 (8), PolyRefl.mkT 1 3 0 2 2 (-48), PolyRefl.mkT 1 3 0 4 0 (8), PolyRefl.mkT 3 1 0 0 4 (-24), PolyRefl.mkT 3 1 0 2 2 (144), PolyRefl.mkT 3 1 0 4 0 (-24), PolyRefl.mkT 4 0 0 1 3 (16), PolyRefl.mkT 4 0 0 3 1 (-16)]
def cp147_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-16), PolyRefl.mkT 1 3 0 0 2 (8), PolyRefl.mkT 1 3 0 2 0 (-56), PolyRefl.mkT 1 3 2 0 0 (8), PolyRefl.mkT 3 1 0 0 2 (-24), PolyRefl.mkT 3 1 0 2 0 (168), PolyRefl.mkT 3 1 2 0 0 (-24), PolyRefl.mkT 4 0 0 1 1 (16)]
def cp148_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (4), PolyRefl.mkT 0 4 2 1 1 (-2), PolyRefl.mkT 1 3 0 4 0 (8), PolyRefl.mkT 1 3 2 2 0 (-8), PolyRefl.mkT 1 3 4 0 0 (1), PolyRefl.mkT 3 1 0 4 0 (-24), PolyRefl.mkT 3 1 2 2 0 (24), PolyRefl.mkT 3 1 4 0 0 (-3), PolyRefl.mkT 4 0 0 3 1 (-4), PolyRefl.mkT 4 0 2 1 1 (2)]
def cp149_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (4), PolyRefl.mkT 0 4 2 1 1 (-2), PolyRefl.mkT 1 3 0 4 0 (-8), PolyRefl.mkT 1 3 2 2 0 (8), PolyRefl.mkT 1 3 4 0 0 (-1), PolyRefl.mkT 3 1 0 4 0 (24), PolyRefl.mkT 3 1 2 2 0 (-24), PolyRefl.mkT 3 1 4 0 0 (3), PolyRefl.mkT 4 0 0 3 1 (-4), PolyRefl.mkT 4 0 2 1 1 (2)]
def cp150_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (24), PolyRefl.mkT 0 4 0 3 1 (-24), PolyRefl.mkT 1 3 0 0 4 (8), PolyRefl.mkT 1 3 0 2 2 (16), PolyRefl.mkT 1 3 0 4 0 (8), PolyRefl.mkT 2 2 0 1 3 (-48), PolyRefl.mkT 2 2 0 3 1 (48), PolyRefl.mkT 3 1 0 0 4 (-24), PolyRefl.mkT 3 1 0 2 2 (80), PolyRefl.mkT 3 1 0 4 0 (-24), PolyRefl.mkT 4 0 0 1 3 (-8), PolyRefl.mkT 4 0 0 3 1 (8)]
def cp151_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (24), PolyRefl.mkT 1 3 0 0 2 (8), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 1 3 2 0 0 (8), PolyRefl.mkT 2 2 0 1 1 (-48), PolyRefl.mkT 3 1 0 0 2 (-24), PolyRefl.mkT 3 1 0 2 0 (104), PolyRefl.mkT 3 1 2 0 0 (-24), PolyRefl.mkT 4 0 0 1 1 (-8)]
def cp152_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-6), PolyRefl.mkT 0 4 2 1 1 (3), PolyRefl.mkT 1 3 4 0 0 (1), PolyRefl.mkT 2 2 0 3 1 (12), PolyRefl.mkT 2 2 2 1 1 (-6), PolyRefl.mkT 3 1 0 4 0 (-16), PolyRefl.mkT 3 1 2 2 0 (16), PolyRefl.mkT 3 1 4 0 0 (-3), PolyRefl.mkT 4 0 0 3 1 (2), PolyRefl.mkT 4 0 2 1 1 (-1)]
def cp153_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-6), PolyRefl.mkT 0 4 2 1 1 (3), PolyRefl.mkT 1 3 4 0 0 (-1), PolyRefl.mkT 2 2 0 3 1 (12), PolyRefl.mkT 2 2 2 1 1 (-6), PolyRefl.mkT 3 1 0 4 0 (16), PolyRefl.mkT 3 1 2 2 0 (-16), PolyRefl.mkT 3 1 4 0 0 (3), PolyRefl.mkT 4 0 0 3 1 (2), PolyRefl.mkT 4 0 2 1 1 (-1)]
def cp154_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 8 0 (36), PolyRefl.mkT 0 8 2 6 0 (-72), PolyRefl.mkT 0 8 4 4 0 (45), PolyRefl.mkT 0 8 6 2 0 (-9), PolyRefl.mkT 2 6 0 8 0 (-144), PolyRefl.mkT 2 6 2 6 0 (288), PolyRefl.mkT 2 6 4 4 0 (-180), PolyRefl.mkT 2 6 6 2 0 (36), PolyRefl.mkT 2 6 8 0 0 (1), PolyRefl.mkT 4 4 0 8 0 (120), PolyRefl.mkT 4 4 2 6 0 (-240), PolyRefl.mkT 4 4 4 4 0 (118), PolyRefl.mkT 4 4 6 2 0 (2), PolyRefl.mkT 4 4 8 0 0 (-6), PolyRefl.mkT 6 2 0 8 0 (304), PolyRefl.mkT 6 2 2 6 0 (-608), PolyRefl.mkT 6 2 4 4 0 (412), PolyRefl.mkT 6 2 6 2 0 (-108), PolyRefl.mkT 6 2 8 0 0 (9), PolyRefl.mkT 8 0 0 8 0 (4), PolyRefl.mkT 8 0 2 6 0 (-8), PolyRefl.mkT 8 0 4 4 0 (5), PolyRefl.mkT 8 0 6 2 0 (-1)]
def cp155_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 4 0 (2916), PolyRefl.mkT 0 24 2 2 0 (-2916), PolyRefl.mkT 0 24 4 0 0 (729), PolyRefl.mkT 2 22 0 4 0 (-71280), PolyRefl.mkT 2 22 2 2 0 (71280), PolyRefl.mkT 2 22 4 0 0 (-19116), PolyRefl.mkT 4 20 0 4 0 (753768), PolyRefl.mkT 4 20 2 2 0 (-753768), PolyRefl.mkT 4 20 4 0 0 (206874), PolyRefl.mkT 6 18 0 4 0 (-4309488), PolyRefl.mkT 6 18 2 2 0 (4309488), PolyRefl.mkT 6 18 4 0 0 (-1161900), PolyRefl.mkT 8 16 0 4 0 (13709244), PolyRefl.mkT 8 16 2 2 0 (-13709244), PolyRefl.mkT 8 16 4 0 0 (3372271), PolyRefl.mkT 10 14 0 4 0 (-21193184), PolyRefl.mkT 10 14 2 2 0 (21193184), PolyRefl.mkT 10 14 4 0 0 (-3613976), PolyRefl.mkT 12 12 0 4 0 (4753200), PolyRefl.mkT 12 12 2 2 0 (-4753200), PolyRefl.mkT 12 12 4 0 0 (-4230452), PolyRefl.mkT 14 10 0 4 0 (25049504), PolyRefl.mkT 14 10 2 2 0 (-25049504), PolyRefl.mkT 14 10 4 0 0 (12426248), PolyRefl.mkT 16 8 0 4 0 (-15464164), PolyRefl.mkT 16 8 2 2 0 (15464164), PolyRefl.mkT 16 8 4 0 0 (-6734521), PolyRefl.mkT 18 6 0 4 0 (3824208), PolyRefl.mkT 18 6 2 2 0 (-3824208), PolyRefl.mkT 18 6 4 0 0 (1579844), PolyRefl.mkT 20 4 0 4 0 (-437528), PolyRefl.mkT 20 4 2 2 0 (437528), PolyRefl.mkT 20 4 4 0 0 (-174150), PolyRefl.mkT 22 2 0 4 0 (18000), PolyRefl.mkT 22 2 2 2 0 (-18000), PolyRefl.mkT 22 2 4 0 0 (6948), PolyRefl.mkT 24 0 0 4 0 (324), PolyRefl.mkT 24 0 2 2 0 (-324), PolyRefl.mkT 24 0 4 0 0 (81)]
def cp156_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-12), PolyRefl.mkT 1 3 0 0 2 (8), PolyRefl.mkT 1 3 0 2 0 (-24), PolyRefl.mkT 2 2 0 1 1 (24), PolyRefl.mkT 3 1 0 0 2 (8), PolyRefl.mkT 3 1 0 2 0 (8), PolyRefl.mkT 4 0 0 1 1 (4)]
def cp157_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-3), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 1 3 2 0 0 (2), PolyRefl.mkT 2 2 0 1 1 (6), PolyRefl.mkT 3 1 2 0 0 (2), PolyRefl.mkT 4 0 0 1 1 (1)]
def cp158_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-3), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 1 3 2 0 0 (-2), PolyRefl.mkT 2 2 0 1 1 (6), PolyRefl.mkT 3 1 2 0 0 (-2), PolyRefl.mkT 4 0 0 1 1 (1)]
def cp159_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 4 0 (9), PolyRefl.mkT 0 8 2 2 0 (-9), PolyRefl.mkT 2 6 0 4 0 (28), PolyRefl.mkT 2 6 2 2 0 (4), PolyRefl.mkT 2 6 4 0 0 (4), PolyRefl.mkT 4 4 0 4 0 (30), PolyRefl.mkT 4 4 2 2 0 (-62), PolyRefl.mkT 4 4 4 0 0 (8), PolyRefl.mkT 6 2 0 4 0 (12), PolyRefl.mkT 6 2 2 2 0 (-12), PolyRefl.mkT 6 2 4 0 0 (4), PolyRefl.mkT 8 0 0 4 0 (1), PolyRefl.mkT 8 0 2 2 0 (-1)]
def cp160_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 1 (-6), PolyRefl.mkT 1 3 0 1 0 (8), PolyRefl.mkT 2 2 0 0 1 (36), PolyRefl.mkT 3 1 0 1 0 (-8), PolyRefl.mkT 4 0 0 0 1 (-6)]
def cp161_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 1 (-6), PolyRefl.mkT 1 3 0 1 0 (-8), PolyRefl.mkT 2 2 0 0 1 (36), PolyRefl.mkT 3 1 0 1 0 (8), PolyRefl.mkT 4 0 0 0 1 (-6)]
def cp162_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 16 0 2 0 (81), PolyRefl.mkT 2 14 0 2 0 (-576), PolyRefl.mkT 2 14 2 0 0 (144), PolyRefl.mkT 4 12 0 2 0 (484), PolyRefl.mkT 4 12 2 0 0 (-3392), PolyRefl.mkT 6 10 0 2 0 (5200), PolyRefl.mkT 6 10 2 0 0 (13136), PolyRefl.mkT 8 8 0 2 0 (5710), PolyRefl.mkT 8 8 2 0 0 (-12544), PolyRefl.mkT 10 6 0 2 0 (1120), PolyRefl.mkT 10 6 2 0 0 (3120), PolyRefl.mkT 12 4 0 2 0 (-524), PolyRefl.mkT 12 4 2 0 0 (-448), PolyRefl.mkT 14 2 0 2 0 (16), PolyRefl.mkT 14 2 2 0 0 (-16), PolyRefl.mkT 16 0 0 2 0 (9)]
def cp163_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (24), PolyRefl.mkT 0 4 0 3 1 (-24), PolyRefl.mkT 1 3 0 0 4 (-24), PolyRefl.mkT 1 3 0 2 2 (80), PolyRefl.mkT 1 3 0 4 0 (-24), PolyRefl.mkT 2 2 0 1 3 (-48), PolyRefl.mkT 2 2 0 3 1 (48), PolyRefl.mkT 3 1 0 0 4 (8), PolyRefl.mkT 3 1 0 2 2 (16), PolyRefl.mkT 3 1 0 4 0 (8), PolyRefl.mkT 4 0 0 1 3 (-8), PolyRefl.mkT 4 0 0 3 1 (8)]
def cp164_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (24), PolyRefl.mkT 1 3 0 0 2 (-24), PolyRefl.mkT 1 3 0 2 0 (104), PolyRefl.mkT 1 3 2 0 0 (-24), PolyRefl.mkT 2 2 0 1 1 (-48), PolyRefl.mkT 3 1 0 0 2 (8), PolyRefl.mkT 3 1 0 2 0 (8), PolyRefl.mkT 3 1 2 0 0 (8), PolyRefl.mkT 4 0 0 1 1 (-8)]
def cp165_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-6), PolyRefl.mkT 0 4 2 1 1 (3), PolyRefl.mkT 1 3 0 4 0 (-16), PolyRefl.mkT 1 3 2 2 0 (16), PolyRefl.mkT 1 3 4 0 0 (-3), PolyRefl.mkT 2 2 0 3 1 (12), PolyRefl.mkT 2 2 2 1 1 (-6), PolyRefl.mkT 3 1 4 0 0 (1), PolyRefl.mkT 4 0 0 3 1 (2), PolyRefl.mkT 4 0 2 1 1 (-1)]
def cp166_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-6), PolyRefl.mkT 0 4 2 1 1 (3), PolyRefl.mkT 1 3 0 4 0 (16), PolyRefl.mkT 1 3 2 2 0 (-16), PolyRefl.mkT 1 3 4 0 0 (3), PolyRefl.mkT 2 2 0 3 1 (12), PolyRefl.mkT 2 2 2 1 1 (-6), PolyRefl.mkT 3 1 4 0 0 (-1), PolyRefl.mkT 4 0 0 3 1 (2), PolyRefl.mkT 4 0 2 1 1 (-1)]
def cp167_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 8 0 (36), PolyRefl.mkT 0 8 2 6 0 (-72), PolyRefl.mkT 0 8 4 4 0 (45), PolyRefl.mkT 0 8 6 2 0 (-9), PolyRefl.mkT 2 6 0 8 0 (112), PolyRefl.mkT 2 6 2 6 0 (-224), PolyRefl.mkT 2 6 4 4 0 (172), PolyRefl.mkT 2 6 6 2 0 (-60), PolyRefl.mkT 2 6 8 0 0 (9), PolyRefl.mkT 4 4 0 8 0 (120), PolyRefl.mkT 4 4 2 6 0 (-240), PolyRefl.mkT 4 4 4 4 0 (118), PolyRefl.mkT 4 4 6 2 0 (2), PolyRefl.mkT 4 4 8 0 0 (-6), PolyRefl.mkT 6 2 0 8 0 (48), PolyRefl.mkT 6 2 2 6 0 (-96), PolyRefl.mkT 6 2 4 4 0 (60), PolyRefl.mkT 6 2 6 2 0 (-12), PolyRefl.mkT 6 2 8 0 0 (1), PolyRefl.mkT 8 0 0 8 0 (4), PolyRefl.mkT 8 0 2 6 0 (-8), PolyRefl.mkT 8 0 4 4 0 (5), PolyRefl.mkT 8 0 6 2 0 (-1)]
def cp168_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 4 0 (2916), PolyRefl.mkT 0 24 2 2 0 (-2916), PolyRefl.mkT 0 24 4 0 0 (729), PolyRefl.mkT 2 22 0 4 0 (-50544), PolyRefl.mkT 2 22 2 2 0 (50544), PolyRefl.mkT 2 22 4 0 0 (-11340), PolyRefl.mkT 4 20 0 4 0 (329832), PolyRefl.mkT 4 20 2 2 0 (-329832), PolyRefl.mkT 4 20 4 0 0 (38682), PolyRefl.mkT 6 18 0 4 0 (-734960), PolyRefl.mkT 6 18 2 2 0 (734960), PolyRefl.mkT 6 18 4 0 0 (291188), PolyRefl.mkT 8 16 0 4 0 (-892996), PolyRefl.mkT 8 16 2 2 0 (892996), PolyRefl.mkT 8 16 4 0 0 (-2609425), PolyRefl.mkT 10 14 0 4 0 (4188192), PolyRefl.mkT 10 14 2 2 0 (-4188192), PolyRefl.mkT 10 14 4 0 0 (6614696), PolyRefl.mkT 12 12 0 4 0 (4753200), PolyRefl.mkT 12 12 2 2 0 (-4753200), PolyRefl.mkT 12 12 4 0 0 (-4230452), PolyRefl.mkT 14 10 0 4 0 (-331872), PolyRefl.mkT 14 10 2 2 0 (331872), PolyRefl.mkT 14 10 4 0 0 (2197576), PolyRefl.mkT 16 8 0 4 0 (-861924), PolyRefl.mkT 16 8 2 2 0 (861924), PolyRefl.mkT 16 8 4 0 0 (-752825), PolyRefl.mkT 18 6 0 4 0 (249680), PolyRefl.mkT 18 6 2 2 0 (-249680), PolyRefl.mkT 18 6 4 0 0 (126756), PolyRefl.mkT 20 4 0 4 0 (-13592), PolyRefl.mkT 20 4 2 2 0 (13592), PolyRefl.mkT 20 4 4 0 0 (-5958), PolyRefl.mkT 22 2 0 4 0 (-2736), PolyRefl.mkT 22 2 2 2 0 (2736), PolyRefl.mkT 22 2 4 0 0 (-828), PolyRefl.mkT 24 0 0 4 0 (324), PolyRefl.mkT 24 0 2 2 0 (-324), PolyRefl.mkT 24 0 4 0 0 (81)]
def cp169_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-8), PolyRefl.mkT 0 4 0 3 1 (8), PolyRefl.mkT 1 3 0 0 4 (-8), PolyRefl.mkT 1 3 0 2 2 (-16), PolyRefl.mkT 1 3 0 4 0 (-8), PolyRefl.mkT 2 2 0 1 3 (-48), PolyRefl.mkT 2 2 0 3 1 (48), PolyRefl.mkT 3 1 0 0 4 (-8), PolyRefl.mkT 3 1 0 2 2 (112), PolyRefl.mkT 3 1 0 4 0 (-8), PolyRefl.mkT 4 0 0 1 3 (24), PolyRefl.mkT 4 0 0 3 1 (-24)]
def cp170_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-8), PolyRefl.mkT 1 3 0 0 2 (-8), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 1 3 2 0 0 (-8), PolyRefl.mkT 2 2 0 1 1 (-48), PolyRefl.mkT 3 1 0 0 2 (-8), PolyRefl.mkT 3 1 0 2 0 (120), PolyRefl.mkT 3 1 2 0 0 (-8), PolyRefl.mkT 4 0 0 1 1 (24)]
def cp171_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (2), PolyRefl.mkT 0 4 2 1 1 (-1), PolyRefl.mkT 1 3 4 0 0 (-1), PolyRefl.mkT 2 2 0 3 1 (12), PolyRefl.mkT 2 2 2 1 1 (-6), PolyRefl.mkT 3 1 0 4 0 (-16), PolyRefl.mkT 3 1 2 2 0 (16), PolyRefl.mkT 3 1 4 0 0 (-1), PolyRefl.mkT 4 0 0 3 1 (-6), PolyRefl.mkT 4 0 2 1 1 (3)]
def cp172_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (2), PolyRefl.mkT 0 4 2 1 1 (-1), PolyRefl.mkT 1 3 4 0 0 (1), PolyRefl.mkT 2 2 0 3 1 (12), PolyRefl.mkT 2 2 2 1 1 (-6), PolyRefl.mkT 3 1 0 4 0 (16), PolyRefl.mkT 3 1 2 2 0 (-16), PolyRefl.mkT 3 1 4 0 0 (1), PolyRefl.mkT 4 0 0 3 1 (-6), PolyRefl.mkT 4 0 2 1 1 (3)]
def cp173_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 8 0 (4), PolyRefl.mkT 0 8 2 6 0 (-8), PolyRefl.mkT 0 8 4 4 0 (5), PolyRefl.mkT 0 8 6 2 0 (-1), PolyRefl.mkT 2 6 0 8 0 (48), PolyRefl.mkT 2 6 2 6 0 (-96), PolyRefl.mkT 2 6 4 4 0 (60), PolyRefl.mkT 2 6 6 2 0 (-12), PolyRefl.mkT 2 6 8 0 0 (1), PolyRefl.mkT 4 4 0 8 0 (120), PolyRefl.mkT 4 4 2 6 0 (-240), PolyRefl.mkT 4 4 4 4 0 (182), PolyRefl.mkT 4 4 6 2 0 (-62), PolyRefl.mkT 4 4 8 0 0 (2), PolyRefl.mkT 6 2 0 8 0 (112), PolyRefl.mkT 6 2 2 6 0 (-224), PolyRefl.mkT 6 2 4 4 0 (108), PolyRefl.mkT 6 2 6 2 0 (4), PolyRefl.mkT 6 2 8 0 0 (1), PolyRefl.mkT 8 0 0 8 0 (36), PolyRefl.mkT 8 0 2 6 0 (-72), PolyRefl.mkT 8 0 4 4 0 (45), PolyRefl.mkT 8 0 6 2 0 (-9)]
def cp174_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 4 0 (5184), PolyRefl.mkT 0 24 2 2 0 (-5184), PolyRefl.mkT 2 22 0 4 0 (-43776), PolyRefl.mkT 2 22 2 2 0 (43776), PolyRefl.mkT 2 22 4 0 0 (2304), PolyRefl.mkT 4 20 0 4 0 (-217472), PolyRefl.mkT 4 20 2 2 0 (217472), PolyRefl.mkT 4 20 4 0 0 (40960), PolyRefl.mkT 6 18 0 4 0 (3994880), PolyRefl.mkT 6 18 2 2 0 (-3994880), PolyRefl.mkT 6 18 4 0 0 (-1029376), PolyRefl.mkT 8 16 0 4 0 (-13790784), PolyRefl.mkT 8 16 2 2 0 (13790784), PolyRefl.mkT 8 16 4 0 0 (8597504), PolyRefl.mkT 10 14 0 4 0 (-5309952), PolyRefl.mkT 10 14 2 2 0 (5309952), PolyRefl.mkT 10 14 4 0 0 (-36488704), PolyRefl.mkT 12 12 0 4 0 (76051200), PolyRefl.mkT 12 12 2 2 0 (-76051200), PolyRefl.mkT 12 12 4 0 0 (86700032), PolyRefl.mkT 14 10 0 4 0 (67011072), PolyRefl.mkT 14 10 2 2 0 (-67011072), PolyRefl.mkT 14 10 4 0 0 (-89082368), PolyRefl.mkT 16 8 0 4 0 (-14287936), PolyRefl.mkT 16 8 2 2 0 (14287936), PolyRefl.mkT 16 8 4 0 0 (38178816), PolyRefl.mkT 18 6 0 4 0 (-11759360), PolyRefl.mkT 18 6 2 2 0 (11759360), PolyRefl.mkT 18 6 4 0 0 (-7598848), PolyRefl.mkT 20 4 0 4 0 (5277312), PolyRefl.mkT 20 4 2 2 0 (-5277312), PolyRefl.mkT 20 4 4 0 0 (700416), PolyRefl.mkT 22 2 0 4 0 (-808704), PolyRefl.mkT 22 2 2 2 0 (808704), PolyRefl.mkT 22 2 4 0 0 (-20736), PolyRefl.mkT 24 0 0 4 0 (46656), PolyRefl.mkT 24 0 2 2 0 (-46656)]
def cp175_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 2 22 4 0 0 (-243), PolyRefl.mkT 4 20 4 0 0 (3690), PolyRefl.mkT 6 18 4 0 0 (-13775), PolyRefl.mkT 8 16 4 0 0 (-46664), PolyRefl.mkT 10 14 4 0 0 (490442), PolyRefl.mkT 12 12 4 0 0 (-1411076), PolyRefl.mkT 14 10 4 0 0 (1737050), PolyRefl.mkT 16 8 4 0 0 (-845000), PolyRefl.mkT 18 6 4 0 0 (186601), PolyRefl.mkT 20 4 4 0 0 (-18774), PolyRefl.mkT 22 2 4 0 0 (693)]
def cp176_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-12), PolyRefl.mkT 1 3 0 0 2 (-8), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 2 2 0 1 1 (24), PolyRefl.mkT 3 1 0 0 2 (24), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 4 0 0 1 1 (4)]
def cp177_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 1 3 0 0 0 (-8), PolyRefl.mkT 3 1 0 0 0 (24)]
def cp178_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-3), PolyRefl.mkT 1 3 2 0 0 (-2), PolyRefl.mkT 2 2 0 1 1 (6), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 3 1 2 0 0 (6), PolyRefl.mkT 4 0 0 1 1 (1)]
def cp179_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-3), PolyRefl.mkT 1 3 2 0 0 (2), PolyRefl.mkT 2 2 0 1 1 (6), PolyRefl.mkT 3 1 0 2 0 (8), PolyRefl.mkT 3 1 2 0 0 (-6), PolyRefl.mkT 4 0 0 1 1 (1)]
def cp180_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 4 0 (9), PolyRefl.mkT 0 8 2 2 0 (-9), PolyRefl.mkT 2 6 0 4 0 (-36), PolyRefl.mkT 2 6 2 2 0 (36), PolyRefl.mkT 2 6 4 0 0 (4), PolyRefl.mkT 4 4 0 4 0 (30), PolyRefl.mkT 4 4 2 2 0 (2), PolyRefl.mkT 4 4 4 0 0 (-24), PolyRefl.mkT 6 2 0 4 0 (76), PolyRefl.mkT 6 2 2 2 0 (-108), PolyRefl.mkT 6 2 4 0 0 (36), PolyRefl.mkT 8 0 0 4 0 (1), PolyRefl.mkT 8 0 2 2 0 (-1)]
def cp181_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 16 0 2 0 (81), PolyRefl.mkT 0 16 2 0 0 (-81), PolyRefl.mkT 2 14 0 2 0 (-1152), PolyRefl.mkT 2 14 2 0 0 (1296), PolyRefl.mkT 4 12 0 2 0 (6372), PolyRefl.mkT 4 12 2 0 0 (-6948), PolyRefl.mkT 6 10 0 2 0 (-14064), PolyRefl.mkT 6 10 2 0 0 (12608), PolyRefl.mkT 8 8 0 2 0 (5710), PolyRefl.mkT 8 8 2 0 0 (6834), PolyRefl.mkT 10 6 0 2 0 (20384), PolyRefl.mkT 10 6 2 0 0 (-35184), PolyRefl.mkT 12 4 0 2 0 (-6412), PolyRefl.mkT 12 4 2 0 0 (10828), PolyRefl.mkT 14 2 0 2 0 (592), PolyRefl.mkT 14 2 2 0 0 (-864), PolyRefl.mkT 16 0 0 2 0 (9), PolyRefl.mkT 16 0 2 0 0 (-9)]
def cp182_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-12), PolyRefl.mkT 1 3 0 0 2 (8), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 2 2 0 1 1 (24), PolyRefl.mkT 3 1 0 0 2 (8), PolyRefl.mkT 3 1 0 2 0 (-24), PolyRefl.mkT 4 0 0 1 1 (4)]
def cp183_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-3), PolyRefl.mkT 1 3 2 0 0 (2), PolyRefl.mkT 2 2 0 1 1 (6), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 3 1 2 0 0 (2), PolyRefl.mkT 4 0 0 1 1 (1)]
def cp184_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-3), PolyRefl.mkT 1 3 2 0 0 (-2), PolyRefl.mkT 2 2 0 1 1 (6), PolyRefl.mkT 3 1 0 2 0 (8), PolyRefl.mkT 3 1 2 0 0 (-2), PolyRefl.mkT 4 0 0 1 1 (1)]
def cp185_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 4 0 (9), PolyRefl.mkT 0 8 2 2 0 (-9), PolyRefl.mkT 2 6 0 4 0 (-36), PolyRefl.mkT 2 6 2 2 0 (36), PolyRefl.mkT 2 6 4 0 0 (4), PolyRefl.mkT 4 4 0 4 0 (30), PolyRefl.mkT 4 4 2 2 0 (-62), PolyRefl.mkT 4 4 4 0 0 (8), PolyRefl.mkT 6 2 0 4 0 (76), PolyRefl.mkT 6 2 2 2 0 (-44), PolyRefl.mkT 6 2 4 0 0 (4), PolyRefl.mkT 8 0 0 4 0 (1), PolyRefl.mkT 8 0 2 2 0 (-1)]
def cp186_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 16 0 2 0 (81), PolyRefl.mkT 2 14 0 2 0 (-1152), PolyRefl.mkT 2 14 2 0 0 (-144), PolyRefl.mkT 4 12 0 2 0 (6372), PolyRefl.mkT 4 12 2 0 0 (576), PolyRefl.mkT 6 10 0 2 0 (-14064), PolyRefl.mkT 6 10 2 0 0 (1456), PolyRefl.mkT 8 8 0 2 0 (5710), PolyRefl.mkT 8 8 2 0 0 (-12544), PolyRefl.mkT 10 6 0 2 0 (20384), PolyRefl.mkT 10 6 2 0 0 (14800), PolyRefl.mkT 12 4 0 2 0 (-6412), PolyRefl.mkT 12 4 2 0 0 (-4416), PolyRefl.mkT 14 2 0 2 0 (592), PolyRefl.mkT 14 2 2 0 0 (272), PolyRefl.mkT 16 0 0 2 0 (9)]
def cp187_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 2 (-6), PolyRefl.mkT 0 2 0 2 0 (2), PolyRefl.mkT 2 0 0 0 2 (2), PolyRefl.mkT 2 0 0 2 0 (-6)]
def cp188_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 0 (-6), PolyRefl.mkT 2 0 0 0 0 (2)]
def cp189_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 2 0 (4), PolyRefl.mkT 0 2 2 0 0 (-3), PolyRefl.mkT 2 0 0 2 0 (-4), PolyRefl.mkT 2 0 2 0 0 (1)]
def cp190_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 6 0 (1024), PolyRefl.mkT 0 10 2 4 0 (-1280), PolyRefl.mkT 0 10 4 2 0 (320), PolyRefl.mkT 0 10 6 0 0 (-16), PolyRefl.mkT 2 8 0 6 0 (3072), PolyRefl.mkT 2 8 2 4 0 (-3328), PolyRefl.mkT 2 8 4 2 0 (704), PolyRefl.mkT 2 8 6 0 0 (-80), PolyRefl.mkT 4 6 0 6 0 (-14336), PolyRefl.mkT 4 6 2 4 0 (19968), PolyRefl.mkT 4 6 4 2 0 (-5248), PolyRefl.mkT 4 6 6 0 0 (160), PolyRefl.mkT 6 4 0 6 0 (14336), PolyRefl.mkT 6 4 2 4 0 (-23040), PolyRefl.mkT 6 4 4 2 0 (8320), PolyRefl.mkT 6 4 6 0 0 (544), PolyRefl.mkT 8 2 0 6 0 (-3072), PolyRefl.mkT 8 2 2 4 0 (5888), PolyRefl.mkT 8 2 4 2 0 (-3264), PolyRefl.mkT 8 2 6 0 0 (368), PolyRefl.mkT 10 0 0 6 0 (-1024), PolyRefl.mkT 10 0 2 4 0 (1792), PolyRefl.mkT 10 0 4 2 0 (-832), PolyRefl.mkT 10 0 6 0 0 (48)]
def cp191_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 1 3 (16), PolyRefl.mkT 0 2 0 3 1 (-16), PolyRefl.mkT 1 1 0 0 4 (-8), PolyRefl.mkT 1 1 0 2 2 (48), PolyRefl.mkT 1 1 0 4 0 (-8), PolyRefl.mkT 2 0 0 1 3 (16), PolyRefl.mkT 2 0 0 3 1 (-16)]
def cp192_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 1 1 (16), PolyRefl.mkT 1 1 0 0 2 (-8), PolyRefl.mkT 1 1 0 2 0 (56), PolyRefl.mkT 1 1 2 0 0 (-8), PolyRefl.mkT 2 0 0 1 1 (16)]
def cp193_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-4), PolyRefl.mkT 1 3 0 0 2 (-8), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 2 2 0 1 1 (-24), PolyRefl.mkT 3 1 0 0 2 (24), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 4 0 0 1 1 (12)]
def cp194_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-1), PolyRefl.mkT 1 3 2 0 0 (-2), PolyRefl.mkT 2 2 0 1 1 (-6), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 3 1 2 0 0 (6), PolyRefl.mkT 4 0 0 1 1 (3)]
def cp195_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-1), PolyRefl.mkT 1 3 2 0 0 (2), PolyRefl.mkT 2 2 0 1 1 (-6), PolyRefl.mkT 3 1 0 2 0 (8), PolyRefl.mkT 3 1 2 0 0 (-6), PolyRefl.mkT 4 0 0 1 1 (3)]
def cp196_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 4 0 (1), PolyRefl.mkT 0 8 2 2 0 (-1), PolyRefl.mkT 2 6 0 4 0 (12), PolyRefl.mkT 2 6 2 2 0 (-12), PolyRefl.mkT 2 6 4 0 0 (4), PolyRefl.mkT 4 4 0 4 0 (30), PolyRefl.mkT 4 4 2 2 0 (2), PolyRefl.mkT 4 4 4 0 0 (-24), PolyRefl.mkT 6 2 0 4 0 (28), PolyRefl.mkT 6 2 2 2 0 (-60), PolyRefl.mkT 6 2 4 0 0 (36), PolyRefl.mkT 8 0 0 4 0 (9), PolyRefl.mkT 8 0 2 2 0 (-9)]
def cp197_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 16 0 2 0 (9), PolyRefl.mkT 0 16 2 0 0 (-9), PolyRefl.mkT 2 14 0 2 0 (16), PolyRefl.mkT 4 12 0 2 0 (-524), PolyRefl.mkT 4 12 2 0 0 (972), PolyRefl.mkT 6 10 0 2 0 (1120), PolyRefl.mkT 6 10 2 0 0 (-4240), PolyRefl.mkT 8 8 0 2 0 (5710), PolyRefl.mkT 8 8 2 0 0 (6834), PolyRefl.mkT 10 6 0 2 0 (5200), PolyRefl.mkT 10 6 2 0 0 (-18336), PolyRefl.mkT 12 4 0 2 0 (484), PolyRefl.mkT 12 4 2 0 0 (2908), PolyRefl.mkT 14 2 0 2 0 (-576), PolyRefl.mkT 14 2 2 0 0 (432), PolyRefl.mkT 16 0 0 2 0 (81), PolyRefl.mkT 16 0 2 0 0 (-81)]
def cp198_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (12), PolyRefl.mkT 1 3 0 0 2 (-8), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 2 2 0 1 1 (-24), PolyRefl.mkT 3 1 0 0 2 (24), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 4 0 0 1 1 (-4)]
def cp199_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (3), PolyRefl.mkT 1 3 2 0 0 (-2), PolyRefl.mkT 2 2 0 1 1 (-6), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 3 1 2 0 0 (6), PolyRefl.mkT 4 0 0 1 1 (-1)]
def cp200_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (3), PolyRefl.mkT 1 3 2 0 0 (2), PolyRefl.mkT 2 2 0 1 1 (-6), PolyRefl.mkT 3 1 0 2 0 (8), PolyRefl.mkT 3 1 2 0 0 (-6), PolyRefl.mkT 4 0 0 1 1 (-1)]
def cp201_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (4), PolyRefl.mkT 1 3 0 0 2 (8), PolyRefl.mkT 1 3 0 2 0 (-24), PolyRefl.mkT 2 2 0 1 1 (24), PolyRefl.mkT 3 1 0 0 2 (8), PolyRefl.mkT 3 1 0 2 0 (8), PolyRefl.mkT 4 0 0 1 1 (-12)]
def cp202_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (1), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 1 3 2 0 0 (2), PolyRefl.mkT 2 2 0 1 1 (6), PolyRefl.mkT 3 1 2 0 0 (2), PolyRefl.mkT 4 0 0 1 1 (-3)]
def cp203_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (1), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 1 3 2 0 0 (-2), PolyRefl.mkT 2 2 0 1 1 (6), PolyRefl.mkT 3 1 2 0 0 (-2), PolyRefl.mkT 4 0 0 1 1 (-3)]
def cp204_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 4 0 (1), PolyRefl.mkT 0 8 2 2 0 (-1), PolyRefl.mkT 2 6 0 4 0 (76), PolyRefl.mkT 2 6 2 2 0 (-44), PolyRefl.mkT 2 6 4 0 0 (4), PolyRefl.mkT 4 4 0 4 0 (30), PolyRefl.mkT 4 4 2 2 0 (-62), PolyRefl.mkT 4 4 4 0 0 (8), PolyRefl.mkT 6 2 0 4 0 (-36), PolyRefl.mkT 6 2 2 2 0 (36), PolyRefl.mkT 6 2 4 0 0 (4), PolyRefl.mkT 8 0 0 4 0 (9), PolyRefl.mkT 8 0 2 2 0 (-9)]
def cp205_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 16 0 2 0 (9), PolyRefl.mkT 2 14 0 2 0 (592), PolyRefl.mkT 2 14 2 0 0 (272), PolyRefl.mkT 4 12 0 2 0 (-6412), PolyRefl.mkT 4 12 2 0 0 (-4416), PolyRefl.mkT 6 10 0 2 0 (20384), PolyRefl.mkT 6 10 2 0 0 (14800), PolyRefl.mkT 8 8 0 2 0 (5710), PolyRefl.mkT 8 8 2 0 0 (-12544), PolyRefl.mkT 10 6 0 2 0 (-14064), PolyRefl.mkT 10 6 2 0 0 (1456), PolyRefl.mkT 12 4 0 2 0 (6372), PolyRefl.mkT 12 4 2 0 0 (576), PolyRefl.mkT 14 2 0 2 0 (-1152), PolyRefl.mkT 14 2 2 0 0 (-144), PolyRefl.mkT 16 0 0 2 0 (81)]
def cp206_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-24), PolyRefl.mkT 0 4 0 3 1 (24), PolyRefl.mkT 1 3 0 0 4 (-24), PolyRefl.mkT 1 3 0 2 2 (80), PolyRefl.mkT 1 3 0 4 0 (-24), PolyRefl.mkT 2 2 0 1 3 (48), PolyRefl.mkT 2 2 0 3 1 (-48), PolyRefl.mkT 3 1 0 0 4 (8), PolyRefl.mkT 3 1 0 2 2 (16), PolyRefl.mkT 3 1 0 4 0 (8), PolyRefl.mkT 4 0 0 1 3 (8), PolyRefl.mkT 4 0 0 3 1 (-8)]
def cp207_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-24), PolyRefl.mkT 1 3 0 0 2 (-24), PolyRefl.mkT 1 3 0 2 0 (104), PolyRefl.mkT 1 3 2 0 0 (-24), PolyRefl.mkT 2 2 0 1 1 (48), PolyRefl.mkT 3 1 0 0 2 (8), PolyRefl.mkT 3 1 0 2 0 (8), PolyRefl.mkT 3 1 2 0 0 (8), PolyRefl.mkT 4 0 0 1 1 (8)]
def cp208_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (6), PolyRefl.mkT 0 4 2 1 1 (-3), PolyRefl.mkT 1 3 0 4 0 (-16), PolyRefl.mkT 1 3 2 2 0 (16), PolyRefl.mkT 1 3 4 0 0 (-3), PolyRefl.mkT 2 2 0 3 1 (-12), PolyRefl.mkT 2 2 2 1 1 (6), PolyRefl.mkT 3 1 4 0 0 (1), PolyRefl.mkT 4 0 0 3 1 (-2), PolyRefl.mkT 4 0 2 1 1 (1)]
def cp209_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (6), PolyRefl.mkT 0 4 2 1 1 (-3), PolyRefl.mkT 1 3 0 4 0 (16), PolyRefl.mkT 1 3 2 2 0 (-16), PolyRefl.mkT 1 3 4 0 0 (3), PolyRefl.mkT 2 2 0 3 1 (-12), PolyRefl.mkT 2 2 2 1 1 (6), PolyRefl.mkT 3 1 4 0 0 (-1), PolyRefl.mkT 4 0 0 3 1 (-2), PolyRefl.mkT 4 0 2 1 1 (1)]
def cp210_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-24), PolyRefl.mkT 0 4 0 3 1 (24), PolyRefl.mkT 1 3 0 0 4 (8), PolyRefl.mkT 1 3 0 2 2 (16), PolyRefl.mkT 1 3 0 4 0 (8), PolyRefl.mkT 2 2 0 1 3 (48), PolyRefl.mkT 2 2 0 3 1 (-48), PolyRefl.mkT 3 1 0 0 4 (-24), PolyRefl.mkT 3 1 0 2 2 (80), PolyRefl.mkT 3 1 0 4 0 (-24), PolyRefl.mkT 4 0 0 1 3 (8), PolyRefl.mkT 4 0 0 3 1 (-8)]
def cp211_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-24), PolyRefl.mkT 1 3 0 0 2 (8), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 1 3 2 0 0 (8), PolyRefl.mkT 2 2 0 1 1 (48), PolyRefl.mkT 3 1 0 0 2 (-24), PolyRefl.mkT 3 1 0 2 0 (104), PolyRefl.mkT 3 1 2 0 0 (-24), PolyRefl.mkT 4 0 0 1 1 (8)]
def cp212_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (6), PolyRefl.mkT 0 4 2 1 1 (-3), PolyRefl.mkT 1 3 4 0 0 (1), PolyRefl.mkT 2 2 0 3 1 (-12), PolyRefl.mkT 2 2 2 1 1 (6), PolyRefl.mkT 3 1 0 4 0 (-16), PolyRefl.mkT 3 1 2 2 0 (16), PolyRefl.mkT 3 1 4 0 0 (-3), PolyRefl.mkT 4 0 0 3 1 (-2), PolyRefl.mkT 4 0 2 1 1 (1)]
def cp213_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (6), PolyRefl.mkT 0 4 2 1 1 (-3), PolyRefl.mkT 1 3 4 0 0 (-1), PolyRefl.mkT 2 2 0 3 1 (-12), PolyRefl.mkT 2 2 2 1 1 (6), PolyRefl.mkT 3 1 0 4 0 (16), PolyRefl.mkT 3 1 2 2 0 (-16), PolyRefl.mkT 3 1 4 0 0 (3), PolyRefl.mkT 4 0 0 3 1 (-2), PolyRefl.mkT 4 0 2 1 1 (1)]
def cp214_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-4), PolyRefl.mkT 1 3 0 0 2 (8), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 2 2 0 1 1 (-24), PolyRefl.mkT 3 1 0 0 2 (8), PolyRefl.mkT 3 1 0 2 0 (-24), PolyRefl.mkT 4 0 0 1 1 (12)]
def cp215_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-1), PolyRefl.mkT 1 3 2 0 0 (2), PolyRefl.mkT 2 2 0 1 1 (-6), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 3 1 2 0 0 (2), PolyRefl.mkT 4 0 0 1 1 (3)]
def cp216_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-1), PolyRefl.mkT 1 3 2 0 0 (-2), PolyRefl.mkT 2 2 0 1 1 (-6), PolyRefl.mkT 3 1 0 2 0 (8), PolyRefl.mkT 3 1 2 0 0 (-2), PolyRefl.mkT 4 0 0 1 1 (3)]
def cp217_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (4), PolyRefl.mkT 1 3 0 0 2 (24), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 2 2 0 1 1 (24), PolyRefl.mkT 3 1 0 0 2 (-8), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 4 0 0 1 1 (-12)]
def cp218_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (1), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 1 3 2 0 0 (6), PolyRefl.mkT 2 2 0 1 1 (6), PolyRefl.mkT 3 1 2 0 0 (-2), PolyRefl.mkT 4 0 0 1 1 (-3)]
def cp219_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (1), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 1 3 2 0 0 (-6), PolyRefl.mkT 2 2 0 1 1 (6), PolyRefl.mkT 3 1 2 0 0 (2), PolyRefl.mkT 4 0 0 1 1 (-3)]
def cp220_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (12), PolyRefl.mkT 1 3 0 0 2 (8), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 2 2 0 1 1 (-24), PolyRefl.mkT 3 1 0 0 2 (8), PolyRefl.mkT 3 1 0 2 0 (-24), PolyRefl.mkT 4 0 0 1 1 (-4)]
def cp221_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (3), PolyRefl.mkT 1 3 2 0 0 (2), PolyRefl.mkT 2 2 0 1 1 (-6), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 3 1 2 0 0 (2), PolyRefl.mkT 4 0 0 1 1 (-1)]
def cp222_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (3), PolyRefl.mkT 1 3 2 0 0 (-2), PolyRefl.mkT 2 2 0 1 1 (-6), PolyRefl.mkT 3 1 0 2 0 (8), PolyRefl.mkT 3 1 2 0 0 (-2), PolyRefl.mkT 4 0 0 1 1 (-1)]
def cp223_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (16), PolyRefl.mkT 0 4 0 3 1 (-16), PolyRefl.mkT 1 3 0 0 4 (-16), PolyRefl.mkT 1 3 0 2 2 (96), PolyRefl.mkT 1 3 0 4 0 (-16), PolyRefl.mkT 2 2 0 1 3 (32), PolyRefl.mkT 2 2 0 3 1 (-32), PolyRefl.mkT 3 1 0 0 4 (16), PolyRefl.mkT 3 1 0 2 2 (-96), PolyRefl.mkT 3 1 0 4 0 (16), PolyRefl.mkT 4 0 0 1 3 (16), PolyRefl.mkT 4 0 0 3 1 (-16)]
def cp224_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (16), PolyRefl.mkT 1 3 0 0 2 (-16), PolyRefl.mkT 1 3 0 2 0 (112), PolyRefl.mkT 1 3 2 0 0 (-16), PolyRefl.mkT 2 2 0 1 1 (32), PolyRefl.mkT 3 1 0 0 2 (16), PolyRefl.mkT 3 1 0 2 0 (-112), PolyRefl.mkT 3 1 2 0 0 (16), PolyRefl.mkT 4 0 0 1 1 (16)]
def cp225_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 20 0 6 0 (-256), PolyRefl.mkT 0 20 2 4 0 (448), PolyRefl.mkT 0 20 4 2 0 (-208), PolyRefl.mkT 0 20 6 0 0 (12), PolyRefl.mkT 2 18 0 6 0 (-512), PolyRefl.mkT 2 18 2 4 0 (1408), PolyRefl.mkT 2 18 4 2 0 (-1184), PolyRefl.mkT 2 18 6 0 0 (248), PolyRefl.mkT 4 16 0 6 0 (70400), PolyRefl.mkT 4 16 2 4 0 (-119104), PolyRefl.mkT 4 16 4 2 0 (50032), PolyRefl.mkT 4 16 6 0 0 (-228), PolyRefl.mkT 6 14 0 6 0 (-628736), PolyRefl.mkT 6 14 2 4 0 (983552), PolyRefl.mkT 6 14 4 2 0 (-350080), PolyRefl.mkT 6 14 6 0 0 (-1632), PolyRefl.mkT 8 12 0 6 0 (2092544), PolyRefl.mkT 8 12 2 4 0 (-3108992), PolyRefl.mkT 8 12 4 2 0 (1019232), PolyRefl.mkT 8 12 6 0 0 (-808), PolyRefl.mkT 10 10 0 6 0 (-2804736), PolyRefl.mkT 10 10 2 4 0 (4157696), PolyRefl.mkT 10 10 4 2 0 (-1353664), PolyRefl.mkT 10 10 6 0 0 (720), PolyRefl.mkT 12 8 0 6 0 (2092544), PolyRefl.mkT 12 8 2 4 0 (-3108992), PolyRefl.mkT 12 8 4 2 0 (1019232), PolyRefl.mkT 12 8 6 0 0 (-808), PolyRefl.mkT 14 6 0 6 0 (-628736), PolyRefl.mkT 14 6 2 4 0 (983552), PolyRefl.mkT 14 6 4 2 0 (-350080), PolyRefl.mkT 14 6 6 0 0 (-1632), PolyRefl.mkT 16 4 0 6 0 (70400), PolyRefl.mkT 16 4 2 4 0 (-119104), PolyRefl.mkT 16 4 4 2 0 (50032), PolyRefl.mkT 16 4 6 0 0 (-228), PolyRefl.mkT 18 2 0 6 0 (-512), PolyRefl.mkT 18 2 2 4 0 (1408), PolyRefl.mkT 18 2 4 2 0 (-1184), PolyRefl.mkT 18 2 6 0 0 (248), PolyRefl.mkT 20 0 0 6 0 (-256), PolyRefl.mkT 20 0 2 4 0 (448), PolyRefl.mkT 20 0 4 2 0 (-208), PolyRefl.mkT 20 0 6 0 0 (12)]
def cp226_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-24), PolyRefl.mkT 0 4 0 3 1 (24), PolyRefl.mkT 1 3 0 0 4 (-8), PolyRefl.mkT 1 3 0 2 2 (-16), PolyRefl.mkT 1 3 0 4 0 (-8), PolyRefl.mkT 2 2 0 1 3 (48), PolyRefl.mkT 2 2 0 3 1 (-48), PolyRefl.mkT 3 1 0 0 4 (-8), PolyRefl.mkT 3 1 0 2 2 (112), PolyRefl.mkT 3 1 0 4 0 (-8), PolyRefl.mkT 4 0 0 1 3 (8), PolyRefl.mkT 4 0 0 3 1 (-8)]
def cp227_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-24), PolyRefl.mkT 1 3 0 0 2 (-8), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 1 3 2 0 0 (-8), PolyRefl.mkT 2 2 0 1 1 (48), PolyRefl.mkT 3 1 0 0 2 (-8), PolyRefl.mkT 3 1 0 2 0 (120), PolyRefl.mkT 3 1 2 0 0 (-8), PolyRefl.mkT 4 0 0 1 1 (8)]
def cp228_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (6), PolyRefl.mkT 0 4 2 1 1 (-3), PolyRefl.mkT 1 3 4 0 0 (-1), PolyRefl.mkT 2 2 0 3 1 (-12), PolyRefl.mkT 2 2 2 1 1 (6), PolyRefl.mkT 3 1 0 4 0 (-16), PolyRefl.mkT 3 1 2 2 0 (16), PolyRefl.mkT 3 1 4 0 0 (-1), PolyRefl.mkT 4 0 0 3 1 (-2), PolyRefl.mkT 4 0 2 1 1 (1)]
def cp229_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (6), PolyRefl.mkT 0 4 2 1 1 (-3), PolyRefl.mkT 1 3 4 0 0 (1), PolyRefl.mkT 2 2 0 3 1 (-12), PolyRefl.mkT 2 2 2 1 1 (6), PolyRefl.mkT 3 1 0 4 0 (16), PolyRefl.mkT 3 1 2 2 0 (-16), PolyRefl.mkT 3 1 4 0 0 (1), PolyRefl.mkT 4 0 0 3 1 (-2), PolyRefl.mkT 4 0 2 1 1 (1)]
def cp230_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-24), PolyRefl.mkT 0 4 0 3 1 (24), PolyRefl.mkT 1 3 0 0 4 (-8), PolyRefl.mkT 1 3 0 2 2 (112), PolyRefl.mkT 1 3 0 4 0 (-8), PolyRefl.mkT 2 2 0 1 3 (48), PolyRefl.mkT 2 2 0 3 1 (-48), PolyRefl.mkT 3 1 0 0 4 (-8), PolyRefl.mkT 3 1 0 2 2 (-16), PolyRefl.mkT 3 1 0 4 0 (-8), PolyRefl.mkT 4 0 0 1 3 (8), PolyRefl.mkT 4 0 0 3 1 (-8)]
def cp231_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-24), PolyRefl.mkT 1 3 0 0 2 (-8), PolyRefl.mkT 1 3 0 2 0 (120), PolyRefl.mkT 1 3 2 0 0 (-8), PolyRefl.mkT 2 2 0 1 1 (48), PolyRefl.mkT 3 1 0 0 2 (-8), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 3 1 2 0 0 (-8), PolyRefl.mkT 4 0 0 1 1 (8)]
def cp232_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (6), PolyRefl.mkT 0 4 2 1 1 (-3), PolyRefl.mkT 1 3 0 4 0 (-16), PolyRefl.mkT 1 3 2 2 0 (16), PolyRefl.mkT 1 3 4 0 0 (-1), PolyRefl.mkT 2 2 0 3 1 (-12), PolyRefl.mkT 2 2 2 1 1 (6), PolyRefl.mkT 3 1 4 0 0 (-1), PolyRefl.mkT 4 0 0 3 1 (-2), PolyRefl.mkT 4 0 2 1 1 (1)]
def cp233_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (6), PolyRefl.mkT 0 4 2 1 1 (-3), PolyRefl.mkT 1 3 0 4 0 (16), PolyRefl.mkT 1 3 2 2 0 (-16), PolyRefl.mkT 1 3 4 0 0 (1), PolyRefl.mkT 2 2 0 3 1 (-12), PolyRefl.mkT 2 2 2 1 1 (6), PolyRefl.mkT 3 1 4 0 0 (1), PolyRefl.mkT 4 0 0 3 1 (-2), PolyRefl.mkT 4 0 2 1 1 (1)]
def cp234_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (12), PolyRefl.mkT 1 3 0 0 2 (24), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 2 2 0 1 1 (-24), PolyRefl.mkT 3 1 0 0 2 (-8), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 4 0 0 1 1 (-4)]
def cp235_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (3), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 1 3 2 0 0 (6), PolyRefl.mkT 2 2 0 1 1 (-6), PolyRefl.mkT 3 1 2 0 0 (-2), PolyRefl.mkT 4 0 0 1 1 (-1)]
def cp236_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (3), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 1 3 2 0 0 (-6), PolyRefl.mkT 2 2 0 1 1 (-6), PolyRefl.mkT 3 1 2 0 0 (2), PolyRefl.mkT 4 0 0 1 1 (-1)]
def cp237_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (8), PolyRefl.mkT 0 4 0 3 1 (-8), PolyRefl.mkT 1 3 0 0 4 (-8), PolyRefl.mkT 1 3 0 2 2 (112), PolyRefl.mkT 1 3 0 4 0 (-8), PolyRefl.mkT 2 2 0 1 3 (48), PolyRefl.mkT 2 2 0 3 1 (-48), PolyRefl.mkT 3 1 0 0 4 (-8), PolyRefl.mkT 3 1 0 2 2 (-16), PolyRefl.mkT 3 1 0 4 0 (-8), PolyRefl.mkT 4 0 0 1 3 (-24), PolyRefl.mkT 4 0 0 3 1 (24)]
def cp238_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (8), PolyRefl.mkT 1 3 0 0 2 (-8), PolyRefl.mkT 1 3 0 2 0 (120), PolyRefl.mkT 1 3 2 0 0 (-8), PolyRefl.mkT 2 2 0 1 1 (48), PolyRefl.mkT 3 1 0 0 2 (-8), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 3 1 2 0 0 (-8), PolyRefl.mkT 4 0 0 1 1 (-24)]
def cp239_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-2), PolyRefl.mkT 0 4 2 1 1 (1), PolyRefl.mkT 1 3 0 4 0 (-16), PolyRefl.mkT 1 3 2 2 0 (16), PolyRefl.mkT 1 3 4 0 0 (-1), PolyRefl.mkT 2 2 0 3 1 (-12), PolyRefl.mkT 2 2 2 1 1 (6), PolyRefl.mkT 3 1 4 0 0 (-1), PolyRefl.mkT 4 0 0 3 1 (6), PolyRefl.mkT 4 0 2 1 1 (-3)]
def cp240_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-2), PolyRefl.mkT 0 4 2 1 1 (1), PolyRefl.mkT 1 3 0 4 0 (16), PolyRefl.mkT 1 3 2 2 0 (-16), PolyRefl.mkT 1 3 4 0 0 (1), PolyRefl.mkT 2 2 0 3 1 (-12), PolyRefl.mkT 2 2 2 1 1 (6), PolyRefl.mkT 3 1 4 0 0 (1), PolyRefl.mkT 4 0 0 3 1 (6), PolyRefl.mkT 4 0 2 1 1 (-3)]
def cp241_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 8 0 (4), PolyRefl.mkT 0 8 2 6 0 (-8), PolyRefl.mkT 0 8 4 4 0 (5), PolyRefl.mkT 0 8 6 2 0 (-1), PolyRefl.mkT 2 6 0 8 0 (304), PolyRefl.mkT 2 6 2 6 0 (-608), PolyRefl.mkT 2 6 4 4 0 (348), PolyRefl.mkT 2 6 6 2 0 (-44), PolyRefl.mkT 2 6 8 0 0 (1), PolyRefl.mkT 4 4 0 8 0 (120), PolyRefl.mkT 4 4 2 6 0 (-240), PolyRefl.mkT 4 4 4 4 0 (182), PolyRefl.mkT 4 4 6 2 0 (-62), PolyRefl.mkT 4 4 8 0 0 (2), PolyRefl.mkT 6 2 0 8 0 (-144), PolyRefl.mkT 6 2 2 6 0 (288), PolyRefl.mkT 6 2 4 4 0 (-180), PolyRefl.mkT 6 2 6 2 0 (36), PolyRefl.mkT 6 2 8 0 0 (1), PolyRefl.mkT 8 0 0 8 0 (36), PolyRefl.mkT 8 0 2 6 0 (-72), PolyRefl.mkT 8 0 4 4 0 (45), PolyRefl.mkT 8 0 6 2 0 (-9)]
def cp242_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 4 0 (5184), PolyRefl.mkT 0 24 2 2 0 (-5184), PolyRefl.mkT 2 22 0 4 0 (288000), PolyRefl.mkT 2 22 2 2 0 (-288000), PolyRefl.mkT 2 22 4 0 0 (-39168), PolyRefl.mkT 4 20 0 4 0 (-7000448), PolyRefl.mkT 4 20 2 2 0 (7000448), PolyRefl.mkT 4 20 4 0 0 (1036288), PolyRefl.mkT 6 18 0 4 0 (61187328), PolyRefl.mkT 6 18 2 2 0 (-61187328), PolyRefl.mkT 6 18 4 0 0 (-9980672), PolyRefl.mkT 8 16 0 4 0 (-247426624), PolyRefl.mkT 8 16 2 2 0 (247426624), PolyRefl.mkT 8 16 4 0 0 (45895680), PolyRefl.mkT 10 14 0 4 0 (400792064), PolyRefl.mkT 10 14 2 2 0 (-400792064), PolyRefl.mkT 10 14 4 0 0 (-98621952), PolyRefl.mkT 12 12 0 4 0 (76051200), PolyRefl.mkT 12 12 2 2 0 (-76051200), PolyRefl.mkT 12 12 4 0 0 (86700032), PolyRefl.mkT 14 10 0 4 0 (-339090944), PolyRefl.mkT 14 10 2 2 0 (339090944), PolyRefl.mkT 14 10 4 0 0 (-26949120), PolyRefl.mkT 16 8 0 4 0 (219347904), PolyRefl.mkT 16 8 2 2 0 (-219347904), PolyRefl.mkT 16 8 4 0 0 (880640), PolyRefl.mkT 18 6 0 4 0 (-68951808), PolyRefl.mkT 18 6 2 2 0 (68951808), PolyRefl.mkT 18 6 4 0 0 (1352448), PolyRefl.mkT 20 4 0 4 0 (12060288), PolyRefl.mkT 20 4 2 2 0 (-12060288), PolyRefl.mkT 20 4 4 0 0 (-294912), PolyRefl.mkT 22 2 0 4 0 (-1140480), PolyRefl.mkT 22 2 2 2 0 (1140480), PolyRefl.mkT 22 2 4 0 0 (20736), PolyRefl.mkT 24 0 0 4 0 (46656), PolyRefl.mkT 24 0 2 2 0 (-46656)]
def cp243_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (8), PolyRefl.mkT 0 4 0 3 1 (-8), PolyRefl.mkT 1 3 0 0 4 (8), PolyRefl.mkT 1 3 0 2 2 (16), PolyRefl.mkT 1 3 0 4 0 (8), PolyRefl.mkT 2 2 0 1 3 (48), PolyRefl.mkT 2 2 0 3 1 (-48), PolyRefl.mkT 3 1 0 0 4 (-24), PolyRefl.mkT 3 1 0 2 2 (80), PolyRefl.mkT 3 1 0 4 0 (-24), PolyRefl.mkT 4 0 0 1 3 (-24), PolyRefl.mkT 4 0 0 3 1 (24)]
def cp244_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (8), PolyRefl.mkT 1 3 0 0 2 (8), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 1 3 2 0 0 (8), PolyRefl.mkT 2 2 0 1 1 (48), PolyRefl.mkT 3 1 0 0 2 (-24), PolyRefl.mkT 3 1 0 2 0 (104), PolyRefl.mkT 3 1 2 0 0 (-24), PolyRefl.mkT 4 0 0 1 1 (-24)]
def cp245_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-2), PolyRefl.mkT 0 4 2 1 1 (1), PolyRefl.mkT 1 3 4 0 0 (1), PolyRefl.mkT 2 2 0 3 1 (-12), PolyRefl.mkT 2 2 2 1 1 (6), PolyRefl.mkT 3 1 0 4 0 (-16), PolyRefl.mkT 3 1 2 2 0 (16), PolyRefl.mkT 3 1 4 0 0 (-3), PolyRefl.mkT 4 0 0 3 1 (6), PolyRefl.mkT 4 0 2 1 1 (-3)]
def cp246_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-2), PolyRefl.mkT 0 4 2 1 1 (1), PolyRefl.mkT 1 3 4 0 0 (-1), PolyRefl.mkT 2 2 0 3 1 (-12), PolyRefl.mkT 2 2 2 1 1 (6), PolyRefl.mkT 3 1 0 4 0 (16), PolyRefl.mkT 3 1 2 2 0 (-16), PolyRefl.mkT 3 1 4 0 0 (3), PolyRefl.mkT 4 0 0 3 1 (6), PolyRefl.mkT 4 0 2 1 1 (-3)]
def cp247_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 2 0 (-64), PolyRefl.mkT 0 6 2 0 0 (48), PolyRefl.mkT 2 4 0 2 0 (448), PolyRefl.mkT 2 4 2 0 0 (-208), PolyRefl.mkT 4 2 0 2 0 (-448), PolyRefl.mkT 4 2 2 0 0 (208), PolyRefl.mkT 6 0 0 2 0 (64), PolyRefl.mkT 6 0 2 0 0 (-48)]
def cp248_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (8), PolyRefl.mkT 0 4 0 3 1 (-8), PolyRefl.mkT 1 3 0 0 4 (-8), PolyRefl.mkT 1 3 0 2 2 (-16), PolyRefl.mkT 1 3 0 4 0 (-8), PolyRefl.mkT 2 2 0 1 3 (48), PolyRefl.mkT 2 2 0 3 1 (-48), PolyRefl.mkT 3 1 0 0 4 (-8), PolyRefl.mkT 3 1 0 2 2 (112), PolyRefl.mkT 3 1 0 4 0 (-8), PolyRefl.mkT 4 0 0 1 3 (-24), PolyRefl.mkT 4 0 0 3 1 (24)]
def cp249_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (8), PolyRefl.mkT 1 3 0 0 2 (-8), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 1 3 2 0 0 (-8), PolyRefl.mkT 2 2 0 1 1 (48), PolyRefl.mkT 3 1 0 0 2 (-8), PolyRefl.mkT 3 1 0 2 0 (120), PolyRefl.mkT 3 1 2 0 0 (-8), PolyRefl.mkT 4 0 0 1 1 (-24)]
def cp250_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-2), PolyRefl.mkT 0 4 2 1 1 (1), PolyRefl.mkT 1 3 4 0 0 (-1), PolyRefl.mkT 2 2 0 3 1 (-12), PolyRefl.mkT 2 2 2 1 1 (6), PolyRefl.mkT 3 1 0 4 0 (-16), PolyRefl.mkT 3 1 2 2 0 (16), PolyRefl.mkT 3 1 4 0 0 (-1), PolyRefl.mkT 4 0 0 3 1 (6), PolyRefl.mkT 4 0 2 1 1 (-3)]
def cp251_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-2), PolyRefl.mkT 0 4 2 1 1 (1), PolyRefl.mkT 1 3 4 0 0 (1), PolyRefl.mkT 2 2 0 3 1 (-12), PolyRefl.mkT 2 2 2 1 1 (6), PolyRefl.mkT 3 1 0 4 0 (16), PolyRefl.mkT 3 1 2 2 0 (-16), PolyRefl.mkT 3 1 4 0 0 (1), PolyRefl.mkT 4 0 0 3 1 (6), PolyRefl.mkT 4 0 2 1 1 (-3)]
def cp252_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-4), PolyRefl.mkT 1 3 0 0 2 (8), PolyRefl.mkT 1 3 0 2 0 (-24), PolyRefl.mkT 2 2 0 1 1 (-24), PolyRefl.mkT 3 1 0 0 2 (8), PolyRefl.mkT 3 1 0 2 0 (8), PolyRefl.mkT 4 0 0 1 1 (12)]
def cp253_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-1), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 1 3 2 0 0 (2), PolyRefl.mkT 2 2 0 1 1 (-6), PolyRefl.mkT 3 1 2 0 0 (2), PolyRefl.mkT 4 0 0 1 1 (3)]
def cp254_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-1), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 1 3 2 0 0 (-2), PolyRefl.mkT 2 2 0 1 1 (-6), PolyRefl.mkT 3 1 2 0 0 (-2), PolyRefl.mkT 4 0 0 1 1 (3)]
def cp255_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (4), PolyRefl.mkT 1 3 0 0 2 (-8), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 2 2 0 1 1 (24), PolyRefl.mkT 3 1 0 0 2 (24), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 4 0 0 1 1 (-12)]
def cp256_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (1), PolyRefl.mkT 1 3 2 0 0 (-2), PolyRefl.mkT 2 2 0 1 1 (6), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 3 1 2 0 0 (6), PolyRefl.mkT 4 0 0 1 1 (-3)]
def cp257_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (1), PolyRefl.mkT 1 3 2 0 0 (2), PolyRefl.mkT 2 2 0 1 1 (6), PolyRefl.mkT 3 1 0 2 0 (8), PolyRefl.mkT 3 1 2 0 0 (-6), PolyRefl.mkT 4 0 0 1 1 (-3)]
def cp258_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (12), PolyRefl.mkT 1 3 0 0 2 (8), PolyRefl.mkT 1 3 0 2 0 (-24), PolyRefl.mkT 2 2 0 1 1 (-24), PolyRefl.mkT 3 1 0 0 2 (8), PolyRefl.mkT 3 1 0 2 0 (8), PolyRefl.mkT 4 0 0 1 1 (-4)]
def cp259_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (3), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 1 3 2 0 0 (2), PolyRefl.mkT 2 2 0 1 1 (-6), PolyRefl.mkT 3 1 2 0 0 (2), PolyRefl.mkT 4 0 0 1 1 (-1)]
def cp260_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (3), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 1 3 2 0 0 (-2), PolyRefl.mkT 2 2 0 1 1 (-6), PolyRefl.mkT 3 1 2 0 0 (-2), PolyRefl.mkT 4 0 0 1 1 (-1)]
def cp261_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-8), PolyRefl.mkT 0 4 0 3 1 (8), PolyRefl.mkT 1 3 0 0 4 (-8), PolyRefl.mkT 1 3 0 2 2 (112), PolyRefl.mkT 1 3 0 4 0 (-8), PolyRefl.mkT 2 2 0 1 3 (-48), PolyRefl.mkT 2 2 0 3 1 (48), PolyRefl.mkT 3 1 0 0 4 (-8), PolyRefl.mkT 3 1 0 2 2 (-16), PolyRefl.mkT 3 1 0 4 0 (-8), PolyRefl.mkT 4 0 0 1 3 (24), PolyRefl.mkT 4 0 0 3 1 (-24)]
def cp262_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-8), PolyRefl.mkT 1 3 0 0 2 (-8), PolyRefl.mkT 1 3 0 2 0 (120), PolyRefl.mkT 1 3 2 0 0 (-8), PolyRefl.mkT 2 2 0 1 1 (-48), PolyRefl.mkT 3 1 0 0 2 (-8), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 3 1 2 0 0 (-8), PolyRefl.mkT 4 0 0 1 1 (24)]
def cp263_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (2), PolyRefl.mkT 0 4 2 1 1 (-1), PolyRefl.mkT 1 3 0 4 0 (-16), PolyRefl.mkT 1 3 2 2 0 (16), PolyRefl.mkT 1 3 4 0 0 (-1), PolyRefl.mkT 2 2 0 3 1 (12), PolyRefl.mkT 2 2 2 1 1 (-6), PolyRefl.mkT 3 1 4 0 0 (-1), PolyRefl.mkT 4 0 0 3 1 (-6), PolyRefl.mkT 4 0 2 1 1 (3)]
def cp264_2_2 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (2), PolyRefl.mkT 0 4 2 1 1 (-1), PolyRefl.mkT 1 3 0 4 0 (16), PolyRefl.mkT 1 3 2 2 0 (-16), PolyRefl.mkT 1 3 4 0 0 (1), PolyRefl.mkT 2 2 0 3 1 (12), PolyRefl.mkT 2 2 2 1 1 (-6), PolyRefl.mkT 3 1 4 0 0 (1), PolyRefl.mkT 4 0 0 3 1 (-6), PolyRefl.mkT 4 0 2 1 1 (3)]

lemma st0_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp2_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp5_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp4_2_2) (ct := 8)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st1_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp5_2_2 u v x y z = 0) :
    PolyRefl.eval cp8_2_2 u v x y z = 0 :=
  prs_step (L := cp6_2_2) (q := cp7_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st2_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp9_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp11_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp10_2_2) (ct := 2)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st3_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp11_2_2 u v x y z = 0) :
    PolyRefl.eval cp14_2_2 u v x y z = 0 :=
  prs_step (L := cp12_2_2) (q := cp13_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st4_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp8_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp14_2_2 u v x y z = 0) :
    PolyRefl.eval cp0_2_2 u v x y z = 0 :=
  prs_step (L := cp15_2_2) (q := cp16_2_2) (ct := 64)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st5_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp18_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp20_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp19_2_2) (ct := 2)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st6_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp21_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp23_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp22_2_2) (ct := 2)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st7_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp23_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp20_2_2 u v x y z = 0) :
    PolyRefl.eval cp17_2_2 u v x y z = 0 :=
  prs_step (L := cp24_2_2) (q := cp25_2_2) (ct := 32)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st8_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp27_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp29_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp28_2_2) (ct := 8)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st9_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp29_2_2 u v x y z = 0) :
    PolyRefl.eval cp32_2_2 u v x y z = 0 :=
  prs_step (L := cp30_2_2) (q := cp31_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st10_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp33_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp35_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp34_2_2) (ct := 4)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st11_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp35_2_2 u v x y z = 0) :
    PolyRefl.eval cp38_2_2 u v x y z = 0 :=
  prs_step (L := cp36_2_2) (q := cp37_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st12_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp32_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp38_2_2 u v x y z = 0) :
    PolyRefl.eval cp26_2_2 u v x y z = 0 :=
  prs_step (L := cp39_2_2) (q := cp40_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st13_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp42_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp43_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp34_2_2) (ct := 4)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st14_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp43_2_2 u v x y z = 0) :
    PolyRefl.eval cp38_2_2 u v x y z = 0 :=
  prs_step (L := cp36_2_2) (q := cp44_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st15_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp45_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp47_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp46_2_2) (ct := 8)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st16_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp47_2_2 u v x y z = 0) :
    PolyRefl.eval cp49_2_2 u v x y z = 0 :=
  prs_step (L := cp30_2_2) (q := cp48_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st17_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp49_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp38_2_2 u v x y z = 0) :
    PolyRefl.eval cp41_2_2 u v x y z = 0 :=
  prs_step (L := cp39_2_2) (q := cp50_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st18_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp52_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp54_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp53_2_2) (ct := 2)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st19_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp55_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp57_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp56_2_2) (ct := 16)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st20_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp57_2_2 u v x y z = 0) :
    PolyRefl.eval cp60_2_2 u v x y z = 0 :=
  prs_step (L := cp58_2_2) (q := cp59_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st21_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp60_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp54_2_2 u v x y z = 0) :
    PolyRefl.eval cp51_2_2 u v x y z = 0 :=
  prs_step (L := cp61_2_2) (q := cp62_2_2) (ct := 4)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st22_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp65_2_2 u v x y z = 0) :
    PolyRefl.eval cp67_2_2 u v x y z = 0 :=
  prs_step (L := cp64_2_2) (q := cp66_2_2) (ct := 4)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st23_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp68_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp70_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp69_2_2) (ct := 4)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st24_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp70_2_2 u v x y z = 0) :
    PolyRefl.eval cp73_2_2 u v x y z = 0 :=
  prs_step (L := cp71_2_2) (q := cp72_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st25_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp73_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp67_2_2 u v x y z = 0) :
    PolyRefl.eval cp63_2_2 u v x y z = 0 :=
  prs_step (L := cp74_2_2) (q := cp75_2_2) (ct := 4)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st26_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp77_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp13_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp78_2_2) (ct := 2)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st27_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp13_2_2 u v x y z = 0) :
    PolyRefl.eval cp14_2_2 u v x y z = 0 :=
  prs_step (L := cp12_2_2) (q := cp11_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st28_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp79_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp81_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp80_2_2) (ct := 8)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st29_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp81_2_2 u v x y z = 0) :
    PolyRefl.eval cp83_2_2 u v x y z = 0 :=
  prs_step (L := cp6_2_2) (q := cp82_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st30_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp83_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp14_2_2 u v x y z = 0) :
    PolyRefl.eval cp76_2_2 u v x y z = 0 :=
  prs_step (L := cp15_2_2) (q := cp84_2_2) (ct := 64)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st31_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp86_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp88_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp87_2_2) (ct := 8)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st32_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp88_2_2 u v x y z = 0) :
    PolyRefl.eval cp91_2_2 u v x y z = 0 :=
  prs_step (L := cp89_2_2) (q := cp90_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st33_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp91_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp54_2_2 u v x y z = 0) :
    PolyRefl.eval cp85_2_2 u v x y z = 0 :=
  prs_step (L := cp61_2_2) (q := cp92_2_2) (ct := 16)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st34_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp23_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp54_2_2 u v x y z = 0) :
    PolyRefl.eval cp17_2_2 u v x y z = 0 :=
  prs_step (L := cp24_2_2) (q := cp93_2_2) (ct := 32)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st35_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp91_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp20_2_2 u v x y z = 0) :
    PolyRefl.eval cp85_2_2 u v x y z = 0 :=
  prs_step (L := cp61_2_2) (q := cp94_2_2) (ct := 16)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st36_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp96_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp98_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp97_2_2) (ct := 8)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st37_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp98_2_2 u v x y z = 0) :
    PolyRefl.eval cp100_2_2 u v x y z = 0 :=
  prs_step (L := cp89_2_2) (q := cp99_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st38_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp100_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp20_2_2 u v x y z = 0) :
    PolyRefl.eval cp95_2_2 u v x y z = 0 :=
  prs_step (L := cp61_2_2) (q := cp101_2_2) (ct := 16)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st39_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp103_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp105_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp104_2_2) (ct := 2)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st40_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp106_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp108_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp107_2_2) (ct := 8)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st41_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp108_2_2 u v x y z = 0) :
    PolyRefl.eval cp111_2_2 u v x y z = 0 :=
  prs_step (L := cp109_2_2) (q := cp110_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st42_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp111_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp105_2_2 u v x y z = 0) :
    PolyRefl.eval cp102_2_2 u v x y z = 0 :=
  prs_step (L := cp112_2_2) (q := cp113_2_2) (ct := 16)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st43_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp114_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp116_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp115_2_2) (ct := 8)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st44_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp116_2_2 u v x y z = 0) :
    PolyRefl.eval cp91_2_2 u v x y z = 0 :=
  prs_step (L := cp89_2_2) (q := cp117_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st45_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp119_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp121_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp120_2_2) (ct := 2)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st46_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp121_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp54_2_2 u v x y z = 0) :
    PolyRefl.eval cp118_2_2 u v x y z = 0 :=
  prs_step (L := cp24_2_2) (q := cp122_2_2) (ct := 32)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st47_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp125_2_2 u v x y z = 0) :
    PolyRefl.eval cp127_2_2 u v x y z = 0 :=
  prs_step (L := cp124_2_2) (q := cp126_2_2) (ct := 4)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st48_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp128_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp130_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp129_2_2) (ct := 4)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st49_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp130_2_2 u v x y z = 0) :
    PolyRefl.eval cp133_2_2 u v x y z = 0 :=
  prs_step (L := cp131_2_2) (q := cp132_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st50_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp133_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp127_2_2 u v x y z = 0) :
    PolyRefl.eval cp123_2_2 u v x y z = 0 :=
  prs_step (L := cp74_2_2) (q := cp134_2_2) (ct := 4)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st51_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp135_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp137_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp136_2_2) (ct := 8)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st52_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp137_2_2 u v x y z = 0) :
    PolyRefl.eval cp49_2_2 u v x y z = 0 :=
  prs_step (L := cp30_2_2) (q := cp138_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st53_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp140_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp141_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp129_2_2) (ct := 4)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st54_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp141_2_2 u v x y z = 0) :
    PolyRefl.eval cp143_2_2 u v x y z = 0 :=
  prs_step (L := cp71_2_2) (q := cp142_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st55_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp126_2_2 u v x y z = 0) :
    PolyRefl.eval cp127_2_2 u v x y z = 0 :=
  prs_step (L := cp124_2_2) (q := cp125_2_2) (ct := 4)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st56_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp143_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp127_2_2 u v x y z = 0) :
    PolyRefl.eval cp139_2_2 u v x y z = 0 :=
  prs_step (L := cp74_2_2) (q := cp144_2_2) (ct := 4)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st57_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp100_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp54_2_2 u v x y z = 0) :
    PolyRefl.eval cp95_2_2 u v x y z = 0 :=
  prs_step (L := cp61_2_2) (q := cp145_2_2) (ct := 16)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st58_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp146_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp148_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp147_2_2) (ct := 8)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st59_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp148_2_2 u v x y z = 0) :
    PolyRefl.eval cp100_2_2 u v x y z = 0 :=
  prs_step (L := cp89_2_2) (q := cp149_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st60_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp150_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp152_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp151_2_2) (ct := 8)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st61_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp152_2_2 u v x y z = 0) :
    PolyRefl.eval cp154_2_2 u v x y z = 0 :=
  prs_step (L := cp6_2_2) (q := cp153_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st62_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp154_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp38_2_2 u v x y z = 0) :
    PolyRefl.eval cp0_2_2 u v x y z = 0 :=
  prs_step (L := cp39_2_2) (q := cp155_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st63_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp156_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp157_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp69_2_2) (ct := 4)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st64_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp157_2_2 u v x y z = 0) :
    PolyRefl.eval cp159_2_2 u v x y z = 0 :=
  prs_step (L := cp131_2_2) (q := cp158_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st65_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp160_2_2 u v x y z = 0) :
    PolyRefl.eval cp67_2_2 u v x y z = 0 :=
  prs_step (L := cp64_2_2) (q := cp161_2_2) (ct := 4)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st66_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp159_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp67_2_2 u v x y z = 0) :
    PolyRefl.eval cp123_2_2 u v x y z = 0 :=
  prs_step (L := cp74_2_2) (q := cp162_2_2) (ct := 4)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st67_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp163_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp165_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp164_2_2) (ct := 8)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st68_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp165_2_2 u v x y z = 0) :
    PolyRefl.eval cp167_2_2 u v x y z = 0 :=
  prs_step (L := cp6_2_2) (q := cp166_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st69_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp167_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp38_2_2 u v x y z = 0) :
    PolyRefl.eval cp76_2_2 u v x y z = 0 :=
  prs_step (L := cp39_2_2) (q := cp168_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st70_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp169_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp171_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp170_2_2) (ct := 8)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st71_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp171_2_2 u v x y z = 0) :
    PolyRefl.eval cp173_2_2 u v x y z = 0 :=
  prs_step (L := cp30_2_2) (q := cp172_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st72_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp173_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp14_2_2 u v x y z = 0) :
    PolyRefl.eval cp26_2_2 u v x y z = 0 :=
  prs_step (L := cp15_2_2) (q := cp174_2_2) (ct := 64)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st73_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp176_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp178_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp177_2_2) (ct := 4)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st74_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp178_2_2 u v x y z = 0) :
    PolyRefl.eval cp180_2_2 u v x y z = 0 :=
  prs_step (L := cp131_2_2) (q := cp179_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st75_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp180_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp127_2_2 u v x y z = 0) :
    PolyRefl.eval cp175_2_2 u v x y z = 0 :=
  prs_step (L := cp74_2_2) (q := cp181_2_2) (ct := 4)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st76_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp182_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp183_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp69_2_2) (ct := 4)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st77_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp183_2_2 u v x y z = 0) :
    PolyRefl.eval cp185_2_2 u v x y z = 0 :=
  prs_step (L := cp131_2_2) (q := cp184_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st78_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp185_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp67_2_2 u v x y z = 0) :
    PolyRefl.eval cp175_2_2 u v x y z = 0 :=
  prs_step (L := cp74_2_2) (q := cp186_2_2) (ct := 4)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st79_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp187_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp189_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp188_2_2) (ct := 2)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st80_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp111_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp189_2_2 u v x y z = 0) :
    PolyRefl.eval cp102_2_2 u v x y z = 0 :=
  prs_step (L := cp112_2_2) (q := cp190_2_2) (ct := 16)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st81_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp191_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp110_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp192_2_2) (ct := 8)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st82_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp110_2_2 u v x y z = 0) :
    PolyRefl.eval cp111_2_2 u v x y z = 0 :=
  prs_step (L := cp109_2_2) (q := cp108_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st83_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp193_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp194_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp177_2_2) (ct := 4)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st84_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp194_2_2 u v x y z = 0) :
    PolyRefl.eval cp196_2_2 u v x y z = 0 :=
  prs_step (L := cp71_2_2) (q := cp195_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st85_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp196_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp127_2_2 u v x y z = 0) :
    PolyRefl.eval cp63_2_2 u v x y z = 0 :=
  prs_step (L := cp74_2_2) (q := cp197_2_2) (ct := 4)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st86_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp198_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp199_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp177_2_2) (ct := 4)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st87_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp199_2_2 u v x y z = 0) :
    PolyRefl.eval cp180_2_2 u v x y z = 0 :=
  prs_step (L := cp131_2_2) (q := cp200_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st88_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp201_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp202_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp69_2_2) (ct := 4)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st89_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp202_2_2 u v x y z = 0) :
    PolyRefl.eval cp204_2_2 u v x y z = 0 :=
  prs_step (L := cp71_2_2) (q := cp203_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st90_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp204_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp67_2_2 u v x y z = 0) :
    PolyRefl.eval cp139_2_2 u v x y z = 0 :=
  prs_step (L := cp74_2_2) (q := cp205_2_2) (ct := 4)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st91_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp206_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp208_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp207_2_2) (ct := 8)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st92_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp208_2_2 u v x y z = 0) :
    PolyRefl.eval cp167_2_2 u v x y z = 0 :=
  prs_step (L := cp6_2_2) (q := cp209_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st93_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp210_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp212_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp211_2_2) (ct := 8)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st94_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp212_2_2 u v x y z = 0) :
    PolyRefl.eval cp154_2_2 u v x y z = 0 :=
  prs_step (L := cp6_2_2) (q := cp213_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st95_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp214_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp215_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp69_2_2) (ct := 4)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st96_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp215_2_2 u v x y z = 0) :
    PolyRefl.eval cp73_2_2 u v x y z = 0 :=
  prs_step (L := cp71_2_2) (q := cp216_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st97_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp217_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp218_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp129_2_2) (ct := 4)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st98_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp218_2_2 u v x y z = 0) :
    PolyRefl.eval cp143_2_2 u v x y z = 0 :=
  prs_step (L := cp71_2_2) (q := cp219_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st99_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp220_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp221_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp69_2_2) (ct := 4)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st100_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp221_2_2 u v x y z = 0) :
    PolyRefl.eval cp185_2_2 u v x y z = 0 :=
  prs_step (L := cp131_2_2) (q := cp222_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st101_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp223_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp59_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp224_2_2) (ct := 16)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st102_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp59_2_2 u v x y z = 0) :
    PolyRefl.eval cp60_2_2 u v x y z = 0 :=
  prs_step (L := cp58_2_2) (q := cp57_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st103_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp60_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp20_2_2 u v x y z = 0) :
    PolyRefl.eval cp51_2_2 u v x y z = 0 :=
  prs_step (L := cp61_2_2) (q := cp225_2_2) (ct := 4)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st104_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp226_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp228_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp227_2_2) (ct := 8)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st105_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp228_2_2 u v x y z = 0) :
    PolyRefl.eval cp8_2_2 u v x y z = 0 :=
  prs_step (L := cp6_2_2) (q := cp229_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st106_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp230_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp232_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp231_2_2) (ct := 8)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st107_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp232_2_2 u v x y z = 0) :
    PolyRefl.eval cp83_2_2 u v x y z = 0 :=
  prs_step (L := cp6_2_2) (q := cp233_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st108_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp234_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp235_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp129_2_2) (ct := 4)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st109_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp235_2_2 u v x y z = 0) :
    PolyRefl.eval cp133_2_2 u v x y z = 0 :=
  prs_step (L := cp131_2_2) (q := cp236_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st110_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp237_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp239_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp238_2_2) (ct := 8)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st111_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp239_2_2 u v x y z = 0) :
    PolyRefl.eval cp241_2_2 u v x y z = 0 :=
  prs_step (L := cp30_2_2) (q := cp240_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st112_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp241_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp14_2_2 u v x y z = 0) :
    PolyRefl.eval cp41_2_2 u v x y z = 0 :=
  prs_step (L := cp15_2_2) (q := cp242_2_2) (ct := 64)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st113_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp243_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp245_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp244_2_2) (ct := 8)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st114_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp245_2_2 u v x y z = 0) :
    PolyRefl.eval cp32_2_2 u v x y z = 0 :=
  prs_step (L := cp30_2_2) (q := cp246_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st115_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp121_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp20_2_2 u v x y z = 0) :
    PolyRefl.eval cp118_2_2 u v x y z = 0 :=
  prs_step (L := cp24_2_2) (q := cp247_2_2) (ct := 32)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st116_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp248_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp250_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp249_2_2) (ct := 8)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st117_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp250_2_2 u v x y z = 0) :
    PolyRefl.eval cp173_2_2 u v x y z = 0 :=
  prs_step (L := cp30_2_2) (q := cp251_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st118_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp252_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp253_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp69_2_2) (ct := 4)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st119_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp253_2_2 u v x y z = 0) :
    PolyRefl.eval cp204_2_2 u v x y z = 0 :=
  prs_step (L := cp71_2_2) (q := cp254_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st120_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp255_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp256_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp177_2_2) (ct := 4)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st121_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp256_2_2 u v x y z = 0) :
    PolyRefl.eval cp196_2_2 u v x y z = 0 :=
  prs_step (L := cp71_2_2) (q := cp257_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st122_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp258_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp259_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp69_2_2) (ct := 4)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st123_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp259_2_2 u v x y z = 0) :
    PolyRefl.eval cp159_2_2 u v x y z = 0 :=
  prs_step (L := cp131_2_2) (q := cp260_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st124_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp261_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_2 u v x y z = 0) :
    PolyRefl.eval cp263_2_2 u v x y z = 0 :=
  prs_step (L := cp1_2_2) (q := cp262_2_2) (ct := 8)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma st125_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (h1 : PolyRefl.eval cp263_2_2 u v x y z = 0) :
    PolyRefl.eval cp241_2_2 u v x y z = 0 :=
  prs_step (L := cp30_2_2) (q := cp264_2_2) (ct := 1)
    (by norm_num) (by decide +kernel) u v x y z h0 h1

lemma leaf0_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp2_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp9_2_2 u v x y z = 0)
    : PolyRefl.eval cp0_2_2 u v x y z = 0 := by
  have h0 := st0_2_2 u v x y z hin0 hin1
  have h1 := st1_2_2 u v x y z hin1 h0
  have h2 := st2_2_2 u v x y z hin2 hin1
  have h3 := st3_2_2 u v x y z hin1 h2
  have h4 := st4_2_2 u v x y z h1 h3
  exact h4

lemma leaf1_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp18_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp21_2_2 u v x y z = 0)
    : PolyRefl.eval cp17_2_2 u v x y z = 0 := by
  have h0 := st5_2_2 u v x y z hin0 hin1
  have h1 := st6_2_2 u v x y z hin2 hin1
  have h2 := st7_2_2 u v x y z h1 h0
  exact h2

lemma leaf2_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp27_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp33_2_2 u v x y z = 0)
    : PolyRefl.eval cp26_2_2 u v x y z = 0 := by
  have h0 := st8_2_2 u v x y z hin0 hin1
  have h1 := st9_2_2 u v x y z hin1 h0
  have h2 := st10_2_2 u v x y z hin2 hin1
  have h3 := st11_2_2 u v x y z hin1 h2
  have h4 := st12_2_2 u v x y z h1 h3
  exact h4

lemma leaf3_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp42_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp45_2_2 u v x y z = 0)
    : PolyRefl.eval cp41_2_2 u v x y z = 0 := by
  have h0 := st13_2_2 u v x y z hin0 hin1
  have h1 := st14_2_2 u v x y z hin1 h0
  have h2 := st15_2_2 u v x y z hin2 hin1
  have h3 := st16_2_2 u v x y z hin1 h2
  have h4 := st17_2_2 u v x y z h3 h1
  exact h4

lemma leaf4_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp52_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp55_2_2 u v x y z = 0)
    : PolyRefl.eval cp51_2_2 u v x y z = 0 := by
  have h0 := st18_2_2 u v x y z hin0 hin1
  have h1 := st19_2_2 u v x y z hin2 hin1
  have h2 := st20_2_2 u v x y z hin1 h1
  have h3 := st21_2_2 u v x y z h2 h0
  exact h3

lemma leaf5_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp65_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp68_2_2 u v x y z = 0)
    : PolyRefl.eval cp63_2_2 u v x y z = 0 := by
  have h0 := st22_2_2 u v x y z hin0 hin1
  have h1 := st23_2_2 u v x y z hin2 hin0
  have h2 := st24_2_2 u v x y z hin0 h1
  have h3 := st25_2_2 u v x y z h2 h0
  exact h3

lemma leaf6_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp77_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp79_2_2 u v x y z = 0)
    : PolyRefl.eval cp76_2_2 u v x y z = 0 := by
  have h0 := st26_2_2 u v x y z hin0 hin1
  have h1 := st27_2_2 u v x y z hin1 h0
  have h2 := st28_2_2 u v x y z hin2 hin1
  have h3 := st29_2_2 u v x y z hin1 h2
  have h4 := st30_2_2 u v x y z h3 h1
  exact h4

lemma leaf7_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp86_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp52_2_2 u v x y z = 0)
    : PolyRefl.eval cp85_2_2 u v x y z = 0 := by
  have h0 := st31_2_2 u v x y z hin0 hin1
  have h1 := st32_2_2 u v x y z hin1 h0
  have h2 := st18_2_2 u v x y z hin2 hin1
  have h3 := st33_2_2 u v x y z h1 h2
  exact h3

lemma leaf8_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp21_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp52_2_2 u v x y z = 0)
    : PolyRefl.eval cp17_2_2 u v x y z = 0 := by
  have h0 := st6_2_2 u v x y z hin0 hin1
  have h1 := st18_2_2 u v x y z hin2 hin1
  have h2 := st34_2_2 u v x y z h0 h1
  exact h2

lemma leaf9_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp18_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp86_2_2 u v x y z = 0)
    : PolyRefl.eval cp85_2_2 u v x y z = 0 := by
  have h0 := st5_2_2 u v x y z hin0 hin1
  have h1 := st31_2_2 u v x y z hin2 hin1
  have h2 := st32_2_2 u v x y z hin1 h1
  have h3 := st35_2_2 u v x y z h2 h0
  exact h3

lemma leaf10_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp52_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp21_2_2 u v x y z = 0)
    : PolyRefl.eval cp17_2_2 u v x y z = 0 := by
  have h0 := st18_2_2 u v x y z hin0 hin1
  have h1 := st6_2_2 u v x y z hin2 hin1
  have h2 := st34_2_2 u v x y z h1 h0
  exact h2

lemma leaf11_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp18_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp96_2_2 u v x y z = 0)
    : PolyRefl.eval cp95_2_2 u v x y z = 0 := by
  have h0 := st5_2_2 u v x y z hin0 hin1
  have h1 := st36_2_2 u v x y z hin2 hin1
  have h2 := st37_2_2 u v x y z hin1 h1
  have h3 := st38_2_2 u v x y z h2 h0
  exact h3

lemma leaf12_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp103_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp106_2_2 u v x y z = 0)
    : PolyRefl.eval cp102_2_2 u v x y z = 0 := by
  have h0 := st39_2_2 u v x y z hin0 hin1
  have h1 := st40_2_2 u v x y z hin2 hin1
  have h2 := st41_2_2 u v x y z hin1 h1
  have h3 := st42_2_2 u v x y z h2 h0
  exact h3

lemma leaf13_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp18_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp114_2_2 u v x y z = 0)
    : PolyRefl.eval cp85_2_2 u v x y z = 0 := by
  have h0 := st5_2_2 u v x y z hin0 hin1
  have h1 := st43_2_2 u v x y z hin2 hin1
  have h2 := st44_2_2 u v x y z hin1 h1
  have h3 := st35_2_2 u v x y z h2 h0
  exact h3

lemma leaf14_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp119_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp52_2_2 u v x y z = 0)
    : PolyRefl.eval cp118_2_2 u v x y z = 0 := by
  have h0 := st45_2_2 u v x y z hin0 hin1
  have h1 := st18_2_2 u v x y z hin2 hin1
  have h2 := st46_2_2 u v x y z h0 h1
  exact h2

lemma leaf15_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp125_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp128_2_2 u v x y z = 0)
    : PolyRefl.eval cp123_2_2 u v x y z = 0 := by
  have h0 := st47_2_2 u v x y z hin0 hin1
  have h1 := st48_2_2 u v x y z hin2 hin0
  have h2 := st49_2_2 u v x y z hin0 h1
  have h3 := st50_2_2 u v x y z h2 h0
  exact h3

lemma leaf16_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp135_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp33_2_2 u v x y z = 0)
    : PolyRefl.eval cp41_2_2 u v x y z = 0 := by
  have h0 := st51_2_2 u v x y z hin0 hin1
  have h1 := st52_2_2 u v x y z hin1 h0
  have h2 := st10_2_2 u v x y z hin2 hin1
  have h3 := st11_2_2 u v x y z hin1 h2
  have h4 := st17_2_2 u v x y z h1 h3
  exact h4

lemma leaf17_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp140_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp126_2_2 u v x y z = 0)
    : PolyRefl.eval cp139_2_2 u v x y z = 0 := by
  have h0 := st53_2_2 u v x y z hin0 hin1
  have h1 := st54_2_2 u v x y z hin1 h0
  have h2 := st55_2_2 u v x y z hin1 hin2
  have h3 := st56_2_2 u v x y z h1 h2
  exact h3

lemma leaf18_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp52_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp96_2_2 u v x y z = 0)
    : PolyRefl.eval cp95_2_2 u v x y z = 0 := by
  have h0 := st18_2_2 u v x y z hin0 hin1
  have h1 := st36_2_2 u v x y z hin2 hin1
  have h2 := st37_2_2 u v x y z hin1 h1
  have h3 := st57_2_2 u v x y z h2 h0
  exact h3

lemma leaf19_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp52_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp146_2_2 u v x y z = 0)
    : PolyRefl.eval cp95_2_2 u v x y z = 0 := by
  have h0 := st18_2_2 u v x y z hin0 hin1
  have h1 := st58_2_2 u v x y z hin2 hin1
  have h2 := st59_2_2 u v x y z hin1 h1
  have h3 := st57_2_2 u v x y z h2 h0
  exact h3

lemma leaf20_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp150_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp33_2_2 u v x y z = 0)
    : PolyRefl.eval cp0_2_2 u v x y z = 0 := by
  have h0 := st60_2_2 u v x y z hin0 hin1
  have h1 := st61_2_2 u v x y z hin1 h0
  have h2 := st10_2_2 u v x y z hin2 hin1
  have h3 := st11_2_2 u v x y z hin1 h2
  have h4 := st62_2_2 u v x y z h1 h3
  exact h4

lemma leaf21_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp156_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp160_2_2 u v x y z = 0)
    : PolyRefl.eval cp123_2_2 u v x y z = 0 := by
  have h0 := st63_2_2 u v x y z hin0 hin1
  have h1 := st64_2_2 u v x y z hin1 h0
  have h2 := st65_2_2 u v x y z hin1 hin2
  have h3 := st66_2_2 u v x y z h1 h2
  exact h3

lemma leaf22_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp163_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp42_2_2 u v x y z = 0)
    : PolyRefl.eval cp76_2_2 u v x y z = 0 := by
  have h0 := st67_2_2 u v x y z hin0 hin1
  have h1 := st68_2_2 u v x y z hin1 h0
  have h2 := st13_2_2 u v x y z hin2 hin1
  have h3 := st14_2_2 u v x y z hin1 h2
  have h4 := st69_2_2 u v x y z h1 h3
  exact h4

lemma leaf23_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp169_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp9_2_2 u v x y z = 0)
    : PolyRefl.eval cp26_2_2 u v x y z = 0 := by
  have h0 := st70_2_2 u v x y z hin0 hin1
  have h1 := st71_2_2 u v x y z hin1 h0
  have h2 := st2_2_2 u v x y z hin2 hin1
  have h3 := st3_2_2 u v x y z hin1 h2
  have h4 := st72_2_2 u v x y z h1 h3
  exact h4

lemma leaf24_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp126_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp176_2_2 u v x y z = 0)
    : PolyRefl.eval cp175_2_2 u v x y z = 0 := by
  have h0 := st55_2_2 u v x y z hin0 hin1
  have h1 := st73_2_2 u v x y z hin2 hin0
  have h2 := st74_2_2 u v x y z hin0 h1
  have h3 := st75_2_2 u v x y z h2 h0
  exact h3

lemma leaf25_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp65_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp182_2_2 u v x y z = 0)
    : PolyRefl.eval cp175_2_2 u v x y z = 0 := by
  have h0 := st22_2_2 u v x y z hin0 hin1
  have h1 := st76_2_2 u v x y z hin2 hin0
  have h2 := st77_2_2 u v x y z hin0 h1
  have h3 := st78_2_2 u v x y z h2 h0
  exact h3

lemma leaf26_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp187_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp106_2_2 u v x y z = 0)
    : PolyRefl.eval cp102_2_2 u v x y z = 0 := by
  have h0 := st79_2_2 u v x y z hin0 hin1
  have h1 := st40_2_2 u v x y z hin2 hin1
  have h2 := st41_2_2 u v x y z hin1 h1
  have h3 := st80_2_2 u v x y z h2 h0
  exact h3

lemma leaf27_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp191_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp103_2_2 u v x y z = 0)
    : PolyRefl.eval cp102_2_2 u v x y z = 0 := by
  have h0 := st81_2_2 u v x y z hin0 hin1
  have h1 := st82_2_2 u v x y z hin1 h0
  have h2 := st39_2_2 u v x y z hin2 hin1
  have h3 := st42_2_2 u v x y z h1 h2
  exact h3

lemma leaf28_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp193_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp125_2_2 u v x y z = 0)
    : PolyRefl.eval cp63_2_2 u v x y z = 0 := by
  have h0 := st83_2_2 u v x y z hin0 hin1
  have h1 := st84_2_2 u v x y z hin1 h0
  have h2 := st47_2_2 u v x y z hin1 hin2
  have h3 := st85_2_2 u v x y z h1 h2
  exact h3

lemma leaf29_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp42_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp163_2_2 u v x y z = 0)
    : PolyRefl.eval cp76_2_2 u v x y z = 0 := by
  have h0 := st13_2_2 u v x y z hin0 hin1
  have h1 := st14_2_2 u v x y z hin1 h0
  have h2 := st67_2_2 u v x y z hin2 hin1
  have h3 := st68_2_2 u v x y z hin1 h2
  have h4 := st69_2_2 u v x y z h3 h1
  exact h4

lemma leaf30_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp125_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp198_2_2 u v x y z = 0)
    : PolyRefl.eval cp175_2_2 u v x y z = 0 := by
  have h0 := st47_2_2 u v x y z hin0 hin1
  have h1 := st86_2_2 u v x y z hin2 hin0
  have h2 := st87_2_2 u v x y z hin0 h1
  have h3 := st75_2_2 u v x y z h2 h0
  exact h3

lemma leaf31_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp52_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp86_2_2 u v x y z = 0)
    : PolyRefl.eval cp85_2_2 u v x y z = 0 := by
  have h0 := st18_2_2 u v x y z hin0 hin1
  have h1 := st31_2_2 u v x y z hin2 hin1
  have h2 := st32_2_2 u v x y z hin1 h1
  have h3 := st33_2_2 u v x y z h2 h0
  exact h3

lemma leaf32_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp160_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp156_2_2 u v x y z = 0)
    : PolyRefl.eval cp123_2_2 u v x y z = 0 := by
  have h0 := st65_2_2 u v x y z hin0 hin1
  have h1 := st63_2_2 u v x y z hin2 hin0
  have h2 := st64_2_2 u v x y z hin0 h1
  have h3 := st66_2_2 u v x y z h2 h0
  exact h3

lemma leaf33_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp160_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp201_2_2 u v x y z = 0)
    : PolyRefl.eval cp139_2_2 u v x y z = 0 := by
  have h0 := st65_2_2 u v x y z hin0 hin1
  have h1 := st88_2_2 u v x y z hin2 hin0
  have h2 := st89_2_2 u v x y z hin0 h1
  have h3 := st90_2_2 u v x y z h2 h0
  exact h3

lemma leaf34_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp206_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp33_2_2 u v x y z = 0)
    : PolyRefl.eval cp76_2_2 u v x y z = 0 := by
  have h0 := st91_2_2 u v x y z hin0 hin1
  have h1 := st92_2_2 u v x y z hin1 h0
  have h2 := st10_2_2 u v x y z hin2 hin1
  have h3 := st11_2_2 u v x y z hin1 h2
  have h4 := st69_2_2 u v x y z h1 h3
  exact h4

lemma leaf35_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp106_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp187_2_2 u v x y z = 0)
    : PolyRefl.eval cp102_2_2 u v x y z = 0 := by
  have h0 := st40_2_2 u v x y z hin0 hin1
  have h1 := st41_2_2 u v x y z hin1 h0
  have h2 := st79_2_2 u v x y z hin2 hin1
  have h3 := st80_2_2 u v x y z h1 h2
  exact h3

lemma leaf36_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp9_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp169_2_2 u v x y z = 0)
    : PolyRefl.eval cp26_2_2 u v x y z = 0 := by
  have h0 := st2_2_2 u v x y z hin0 hin1
  have h1 := st3_2_2 u v x y z hin1 h0
  have h2 := st70_2_2 u v x y z hin2 hin1
  have h3 := st71_2_2 u v x y z hin1 h2
  have h4 := st72_2_2 u v x y z h3 h1
  exact h4

lemma leaf37_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp42_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp210_2_2 u v x y z = 0)
    : PolyRefl.eval cp0_2_2 u v x y z = 0 := by
  have h0 := st13_2_2 u v x y z hin0 hin1
  have h1 := st14_2_2 u v x y z hin1 h0
  have h2 := st93_2_2 u v x y z hin2 hin1
  have h3 := st94_2_2 u v x y z hin1 h2
  have h4 := st62_2_2 u v x y z h3 h1
  exact h4

lemma leaf38_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp126_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp140_2_2 u v x y z = 0)
    : PolyRefl.eval cp139_2_2 u v x y z = 0 := by
  have h0 := st55_2_2 u v x y z hin0 hin1
  have h1 := st53_2_2 u v x y z hin2 hin0
  have h2 := st54_2_2 u v x y z hin0 h1
  have h3 := st56_2_2 u v x y z h2 h0
  exact h3

lemma leaf39_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp33_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp27_2_2 u v x y z = 0)
    : PolyRefl.eval cp26_2_2 u v x y z = 0 := by
  have h0 := st10_2_2 u v x y z hin0 hin1
  have h1 := st11_2_2 u v x y z hin1 h0
  have h2 := st8_2_2 u v x y z hin2 hin1
  have h3 := st9_2_2 u v x y z hin1 h2
  have h4 := st12_2_2 u v x y z h3 h1
  exact h4

lemma leaf40_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp214_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp160_2_2 u v x y z = 0)
    : PolyRefl.eval cp63_2_2 u v x y z = 0 := by
  have h0 := st95_2_2 u v x y z hin0 hin1
  have h1 := st96_2_2 u v x y z hin1 h0
  have h2 := st65_2_2 u v x y z hin1 hin2
  have h3 := st25_2_2 u v x y z h1 h2
  exact h3

lemma leaf41_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp198_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp125_2_2 u v x y z = 0)
    : PolyRefl.eval cp175_2_2 u v x y z = 0 := by
  have h0 := st86_2_2 u v x y z hin0 hin1
  have h1 := st87_2_2 u v x y z hin1 h0
  have h2 := st47_2_2 u v x y z hin1 hin2
  have h3 := st75_2_2 u v x y z h1 h2
  exact h3

lemma leaf42_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp217_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp125_2_2 u v x y z = 0)
    : PolyRefl.eval cp139_2_2 u v x y z = 0 := by
  have h0 := st97_2_2 u v x y z hin0 hin1
  have h1 := st98_2_2 u v x y z hin1 h0
  have h2 := st47_2_2 u v x y z hin1 hin2
  have h3 := st56_2_2 u v x y z h1 h2
  exact h3

lemma leaf43_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp128_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp125_2_2 u v x y z = 0)
    : PolyRefl.eval cp123_2_2 u v x y z = 0 := by
  have h0 := st48_2_2 u v x y z hin0 hin1
  have h1 := st49_2_2 u v x y z hin1 h0
  have h2 := st47_2_2 u v x y z hin1 hin2
  have h3 := st50_2_2 u v x y z h1 h2
  exact h3

lemma leaf44_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp220_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp160_2_2 u v x y z = 0)
    : PolyRefl.eval cp175_2_2 u v x y z = 0 := by
  have h0 := st99_2_2 u v x y z hin0 hin1
  have h1 := st100_2_2 u v x y z hin1 h0
  have h2 := st65_2_2 u v x y z hin1 hin2
  have h3 := st78_2_2 u v x y z h1 h2
  exact h3

lemma leaf45_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp106_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp103_2_2 u v x y z = 0)
    : PolyRefl.eval cp102_2_2 u v x y z = 0 := by
  have h0 := st40_2_2 u v x y z hin0 hin1
  have h1 := st41_2_2 u v x y z hin1 h0
  have h2 := st39_2_2 u v x y z hin2 hin1
  have h3 := st42_2_2 u v x y z h1 h2
  exact h3

lemma leaf46_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp191_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp187_2_2 u v x y z = 0)
    : PolyRefl.eval cp102_2_2 u v x y z = 0 := by
  have h0 := st81_2_2 u v x y z hin0 hin1
  have h1 := st82_2_2 u v x y z hin1 h0
  have h2 := st79_2_2 u v x y z hin2 hin1
  have h3 := st80_2_2 u v x y z h1 h2
  exact h3

lemma leaf47_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp114_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp18_2_2 u v x y z = 0)
    : PolyRefl.eval cp85_2_2 u v x y z = 0 := by
  have h0 := st43_2_2 u v x y z hin0 hin1
  have h1 := st44_2_2 u v x y z hin1 h0
  have h2 := st5_2_2 u v x y z hin2 hin1
  have h3 := st35_2_2 u v x y z h1 h2
  exact h3

lemma leaf48_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp45_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp42_2_2 u v x y z = 0)
    : PolyRefl.eval cp41_2_2 u v x y z = 0 := by
  have h0 := st15_2_2 u v x y z hin0 hin1
  have h1 := st16_2_2 u v x y z hin1 h0
  have h2 := st13_2_2 u v x y z hin2 hin1
  have h3 := st14_2_2 u v x y z hin1 h2
  have h4 := st17_2_2 u v x y z h1 h3
  exact h4

lemma leaf49_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp18_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp223_2_2 u v x y z = 0)
    : PolyRefl.eval cp51_2_2 u v x y z = 0 := by
  have h0 := st5_2_2 u v x y z hin0 hin1
  have h1 := st101_2_2 u v x y z hin2 hin1
  have h2 := st102_2_2 u v x y z hin1 h1
  have h3 := st103_2_2 u v x y z h2 h0
  exact h3

lemma leaf50_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp68_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp65_2_2 u v x y z = 0)
    : PolyRefl.eval cp63_2_2 u v x y z = 0 := by
  have h0 := st23_2_2 u v x y z hin0 hin1
  have h1 := st24_2_2 u v x y z hin1 h0
  have h2 := st22_2_2 u v x y z hin1 hin2
  have h3 := st25_2_2 u v x y z h1 h2
  exact h3

lemma leaf51_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp226_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp77_2_2 u v x y z = 0)
    : PolyRefl.eval cp0_2_2 u v x y z = 0 := by
  have h0 := st104_2_2 u v x y z hin0 hin1
  have h1 := st105_2_2 u v x y z hin1 h0
  have h2 := st26_2_2 u v x y z hin2 hin1
  have h3 := st27_2_2 u v x y z hin1 h2
  have h4 := st4_2_2 u v x y z h1 h3
  exact h4

lemma leaf52_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp9_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp230_2_2 u v x y z = 0)
    : PolyRefl.eval cp76_2_2 u v x y z = 0 := by
  have h0 := st2_2_2 u v x y z hin0 hin1
  have h1 := st3_2_2 u v x y z hin1 h0
  have h2 := st106_2_2 u v x y z hin2 hin1
  have h3 := st107_2_2 u v x y z hin1 h2
  have h4 := st30_2_2 u v x y z h3 h1
  exact h4

lemma leaf53_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp33_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp150_2_2 u v x y z = 0)
    : PolyRefl.eval cp0_2_2 u v x y z = 0 := by
  have h0 := st10_2_2 u v x y z hin0 hin1
  have h1 := st11_2_2 u v x y z hin1 h0
  have h2 := st60_2_2 u v x y z hin2 hin1
  have h3 := st61_2_2 u v x y z hin1 h2
  have h4 := st62_2_2 u v x y z h3 h1
  exact h4

lemma leaf54_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp126_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp234_2_2 u v x y z = 0)
    : PolyRefl.eval cp123_2_2 u v x y z = 0 := by
  have h0 := st55_2_2 u v x y z hin0 hin1
  have h1 := st108_2_2 u v x y z hin2 hin0
  have h2 := st109_2_2 u v x y z hin0 h1
  have h3 := st50_2_2 u v x y z h2 h0
  exact h3

lemma leaf55_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp55_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp18_2_2 u v x y z = 0)
    : PolyRefl.eval cp51_2_2 u v x y z = 0 := by
  have h0 := st19_2_2 u v x y z hin0 hin1
  have h1 := st20_2_2 u v x y z hin1 h0
  have h2 := st5_2_2 u v x y z hin2 hin1
  have h3 := st103_2_2 u v x y z h1 h2
  exact h3

lemma leaf56_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp237_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp9_2_2 u v x y z = 0)
    : PolyRefl.eval cp41_2_2 u v x y z = 0 := by
  have h0 := st110_2_2 u v x y z hin0 hin1
  have h1 := st111_2_2 u v x y z hin1 h0
  have h2 := st2_2_2 u v x y z hin2 hin1
  have h3 := st3_2_2 u v x y z hin1 h2
  have h4 := st112_2_2 u v x y z h1 h3
  exact h4

lemma leaf57_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp146_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp52_2_2 u v x y z = 0)
    : PolyRefl.eval cp95_2_2 u v x y z = 0 := by
  have h0 := st58_2_2 u v x y z hin0 hin1
  have h1 := st59_2_2 u v x y z hin1 h0
  have h2 := st18_2_2 u v x y z hin2 hin1
  have h3 := st57_2_2 u v x y z h1 h2
  exact h3

lemma leaf58_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp125_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp193_2_2 u v x y z = 0)
    : PolyRefl.eval cp63_2_2 u v x y z = 0 := by
  have h0 := st47_2_2 u v x y z hin0 hin1
  have h1 := st83_2_2 u v x y z hin2 hin0
  have h2 := st84_2_2 u v x y z hin0 h1
  have h3 := st85_2_2 u v x y z h2 h0
  exact h3

lemma leaf59_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp42_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp243_2_2 u v x y z = 0)
    : PolyRefl.eval cp26_2_2 u v x y z = 0 := by
  have h0 := st13_2_2 u v x y z hin0 hin1
  have h1 := st14_2_2 u v x y z hin1 h0
  have h2 := st113_2_2 u v x y z hin2 hin1
  have h3 := st114_2_2 u v x y z hin1 h2
  have h4 := st12_2_2 u v x y z h3 h1
  exact h4

lemma leaf60_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp18_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp119_2_2 u v x y z = 0)
    : PolyRefl.eval cp118_2_2 u v x y z = 0 := by
  have h0 := st5_2_2 u v x y z hin0 hin1
  have h1 := st45_2_2 u v x y z hin2 hin1
  have h2 := st115_2_2 u v x y z h1 h0
  exact h2

lemma leaf61_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp103_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp191_2_2 u v x y z = 0)
    : PolyRefl.eval cp102_2_2 u v x y z = 0 := by
  have h0 := st39_2_2 u v x y z hin0 hin1
  have h1 := st81_2_2 u v x y z hin2 hin1
  have h2 := st82_2_2 u v x y z hin1 h1
  have h3 := st42_2_2 u v x y z h2 h0
  exact h3

lemma leaf62_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp230_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp9_2_2 u v x y z = 0)
    : PolyRefl.eval cp76_2_2 u v x y z = 0 := by
  have h0 := st106_2_2 u v x y z hin0 hin1
  have h1 := st107_2_2 u v x y z hin1 h0
  have h2 := st2_2_2 u v x y z hin2 hin1
  have h3 := st3_2_2 u v x y z hin1 h2
  have h4 := st30_2_2 u v x y z h1 h3
  exact h4

lemma leaf63_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp18_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp55_2_2 u v x y z = 0)
    : PolyRefl.eval cp51_2_2 u v x y z = 0 := by
  have h0 := st5_2_2 u v x y z hin0 hin1
  have h1 := st19_2_2 u v x y z hin2 hin1
  have h2 := st20_2_2 u v x y z hin1 h1
  have h3 := st103_2_2 u v x y z h2 h0
  exact h3

lemma leaf64_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp187_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp191_2_2 u v x y z = 0)
    : PolyRefl.eval cp102_2_2 u v x y z = 0 := by
  have h0 := st79_2_2 u v x y z hin0 hin1
  have h1 := st81_2_2 u v x y z hin2 hin1
  have h2 := st82_2_2 u v x y z hin1 h1
  have h3 := st80_2_2 u v x y z h2 h0
  exact h3

lemma leaf65_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp234_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp126_2_2 u v x y z = 0)
    : PolyRefl.eval cp123_2_2 u v x y z = 0 := by
  have h0 := st108_2_2 u v x y z hin0 hin1
  have h1 := st109_2_2 u v x y z hin1 h0
  have h2 := st55_2_2 u v x y z hin1 hin2
  have h3 := st50_2_2 u v x y z h1 h2
  exact h3

lemma leaf66_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp9_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp237_2_2 u v x y z = 0)
    : PolyRefl.eval cp41_2_2 u v x y z = 0 := by
  have h0 := st2_2_2 u v x y z hin0 hin1
  have h1 := st3_2_2 u v x y z hin1 h0
  have h2 := st110_2_2 u v x y z hin2 hin1
  have h3 := st111_2_2 u v x y z hin1 h2
  have h4 := st112_2_2 u v x y z h3 h1
  exact h4

lemma leaf67_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp77_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp248_2_2 u v x y z = 0)
    : PolyRefl.eval cp26_2_2 u v x y z = 0 := by
  have h0 := st26_2_2 u v x y z hin0 hin1
  have h1 := st27_2_2 u v x y z hin1 h0
  have h2 := st116_2_2 u v x y z hin2 hin1
  have h3 := st117_2_2 u v x y z hin1 h2
  have h4 := st72_2_2 u v x y z h3 h1
  exact h4

lemma leaf68_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp114_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp52_2_2 u v x y z = 0)
    : PolyRefl.eval cp85_2_2 u v x y z = 0 := by
  have h0 := st43_2_2 u v x y z hin0 hin1
  have h1 := st44_2_2 u v x y z hin1 h0
  have h2 := st18_2_2 u v x y z hin2 hin1
  have h3 := st33_2_2 u v x y z h1 h2
  exact h3

lemma leaf69_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp160_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp214_2_2 u v x y z = 0)
    : PolyRefl.eval cp63_2_2 u v x y z = 0 := by
  have h0 := st65_2_2 u v x y z hin0 hin1
  have h1 := st95_2_2 u v x y z hin2 hin0
  have h2 := st96_2_2 u v x y z hin0 h1
  have h3 := st25_2_2 u v x y z h2 h0
  exact h3

lemma leaf70_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp33_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp135_2_2 u v x y z = 0)
    : PolyRefl.eval cp41_2_2 u v x y z = 0 := by
  have h0 := st10_2_2 u v x y z hin0 hin1
  have h1 := st11_2_2 u v x y z hin1 h0
  have h2 := st51_2_2 u v x y z hin2 hin1
  have h3 := st52_2_2 u v x y z hin1 h2
  have h4 := st17_2_2 u v x y z h3 h1
  exact h4

lemma leaf71_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp65_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp252_2_2 u v x y z = 0)
    : PolyRefl.eval cp139_2_2 u v x y z = 0 := by
  have h0 := st22_2_2 u v x y z hin0 hin1
  have h1 := st118_2_2 u v x y z hin2 hin0
  have h2 := st119_2_2 u v x y z hin0 h1
  have h3 := st90_2_2 u v x y z h2 h0
  exact h3

lemma leaf72_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp255_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp126_2_2 u v x y z = 0)
    : PolyRefl.eval cp63_2_2 u v x y z = 0 := by
  have h0 := st120_2_2 u v x y z hin0 hin1
  have h1 := st121_2_2 u v x y z hin1 h0
  have h2 := st55_2_2 u v x y z hin1 hin2
  have h3 := st85_2_2 u v x y z h1 h2
  exact h3

lemma leaf73_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp223_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp18_2_2 u v x y z = 0)
    : PolyRefl.eval cp51_2_2 u v x y z = 0 := by
  have h0 := st101_2_2 u v x y z hin0 hin1
  have h1 := st102_2_2 u v x y z hin1 h0
  have h2 := st5_2_2 u v x y z hin2 hin1
  have h3 := st103_2_2 u v x y z h1 h2
  exact h3

lemma leaf74_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp258_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp65_2_2 u v x y z = 0)
    : PolyRefl.eval cp123_2_2 u v x y z = 0 := by
  have h0 := st122_2_2 u v x y z hin0 hin1
  have h1 := st123_2_2 u v x y z hin1 h0
  have h2 := st22_2_2 u v x y z hin1 hin2
  have h3 := st66_2_2 u v x y z h1 h2
  exact h3

lemma leaf75_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp261_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp77_2_2 u v x y z = 0)
    : PolyRefl.eval cp41_2_2 u v x y z = 0 := by
  have h0 := st124_2_2 u v x y z hin0 hin1
  have h1 := st125_2_2 u v x y z hin1 h0
  have h2 := st26_2_2 u v x y z hin2 hin1
  have h3 := st27_2_2 u v x y z hin1 h2
  have h4 := st112_2_2 u v x y z h1 h3
  exact h4

lemma leaf76_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp9_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp2_2_2 u v x y z = 0)
    : PolyRefl.eval cp0_2_2 u v x y z = 0 := by
  have h0 := st2_2_2 u v x y z hin0 hin1
  have h1 := st3_2_2 u v x y z hin1 h0
  have h2 := st0_2_2 u v x y z hin2 hin1
  have h3 := st1_2_2 u v x y z hin1 h2
  have h4 := st4_2_2 u v x y z h3 h1
  exact h4

lemma leaf77_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp52_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp223_2_2 u v x y z = 0)
    : PolyRefl.eval cp51_2_2 u v x y z = 0 := by
  have h0 := st18_2_2 u v x y z hin0 hin1
  have h1 := st101_2_2 u v x y z hin2 hin1
  have h2 := st102_2_2 u v x y z hin1 h1
  have h3 := st21_2_2 u v x y z h2 h0
  exact h3

lemma leaf78_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp126_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp255_2_2 u v x y z = 0)
    : PolyRefl.eval cp63_2_2 u v x y z = 0 := by
  have h0 := st55_2_2 u v x y z hin0 hin1
  have h1 := st120_2_2 u v x y z hin2 hin0
  have h2 := st121_2_2 u v x y z hin0 h1
  have h3 := st85_2_2 u v x y z h2 h0
  exact h3

lemma leaf79_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp176_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp126_2_2 u v x y z = 0)
    : PolyRefl.eval cp175_2_2 u v x y z = 0 := by
  have h0 := st73_2_2 u v x y z hin0 hin1
  have h1 := st74_2_2 u v x y z hin1 h0
  have h2 := st55_2_2 u v x y z hin1 hin2
  have h3 := st75_2_2 u v x y z h1 h2
  exact h3

lemma leaf80_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp125_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp217_2_2 u v x y z = 0)
    : PolyRefl.eval cp139_2_2 u v x y z = 0 := by
  have h0 := st47_2_2 u v x y z hin0 hin1
  have h1 := st97_2_2 u v x y z hin2 hin0
  have h2 := st98_2_2 u v x y z hin0 h1
  have h3 := st56_2_2 u v x y z h2 h0
  exact h3

lemma leaf81_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp96_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp52_2_2 u v x y z = 0)
    : PolyRefl.eval cp95_2_2 u v x y z = 0 := by
  have h0 := st36_2_2 u v x y z hin0 hin1
  have h1 := st37_2_2 u v x y z hin1 h0
  have h2 := st18_2_2 u v x y z hin2 hin1
  have h3 := st57_2_2 u v x y z h1 h2
  exact h3

lemma leaf82_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp21_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp18_2_2 u v x y z = 0)
    : PolyRefl.eval cp17_2_2 u v x y z = 0 := by
  have h0 := st6_2_2 u v x y z hin0 hin1
  have h1 := st5_2_2 u v x y z hin2 hin1
  have h2 := st7_2_2 u v x y z h0 h1
  exact h2

lemma leaf83_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp79_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp77_2_2 u v x y z = 0)
    : PolyRefl.eval cp76_2_2 u v x y z = 0 := by
  have h0 := st28_2_2 u v x y z hin0 hin1
  have h1 := st29_2_2 u v x y z hin1 h0
  have h2 := st26_2_2 u v x y z hin2 hin1
  have h3 := st27_2_2 u v x y z hin1 h2
  have h4 := st30_2_2 u v x y z h1 h3
  exact h4

lemma leaf84_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp77_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp261_2_2 u v x y z = 0)
    : PolyRefl.eval cp41_2_2 u v x y z = 0 := by
  have h0 := st26_2_2 u v x y z hin0 hin1
  have h1 := st27_2_2 u v x y z hin1 h0
  have h2 := st124_2_2 u v x y z hin2 hin1
  have h3 := st125_2_2 u v x y z hin1 h2
  have h4 := st112_2_2 u v x y z h3 h1
  exact h4

lemma leaf85_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp248_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp77_2_2 u v x y z = 0)
    : PolyRefl.eval cp26_2_2 u v x y z = 0 := by
  have h0 := st116_2_2 u v x y z hin0 hin1
  have h1 := st117_2_2 u v x y z hin1 h0
  have h2 := st26_2_2 u v x y z hin2 hin1
  have h3 := st27_2_2 u v x y z hin1 h2
  have h4 := st72_2_2 u v x y z h1 h3
  exact h4

lemma leaf86_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp52_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp114_2_2 u v x y z = 0)
    : PolyRefl.eval cp85_2_2 u v x y z = 0 := by
  have h0 := st18_2_2 u v x y z hin0 hin1
  have h1 := st43_2_2 u v x y z hin2 hin1
  have h2 := st44_2_2 u v x y z hin1 h1
  have h3 := st33_2_2 u v x y z h2 h0
  exact h3

lemma leaf87_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp86_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp18_2_2 u v x y z = 0)
    : PolyRefl.eval cp85_2_2 u v x y z = 0 := by
  have h0 := st31_2_2 u v x y z hin0 hin1
  have h1 := st32_2_2 u v x y z hin1 h0
  have h2 := st5_2_2 u v x y z hin2 hin1
  have h3 := st35_2_2 u v x y z h1 h2
  exact h3

lemma leaf88_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp119_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp18_2_2 u v x y z = 0)
    : PolyRefl.eval cp118_2_2 u v x y z = 0 := by
  have h0 := st45_2_2 u v x y z hin0 hin1
  have h1 := st5_2_2 u v x y z hin2 hin1
  have h2 := st115_2_2 u v x y z h0 h1
  exact h2

lemma leaf89_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp243_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp42_2_2 u v x y z = 0)
    : PolyRefl.eval cp26_2_2 u v x y z = 0 := by
  have h0 := st113_2_2 u v x y z hin0 hin1
  have h1 := st114_2_2 u v x y z hin1 h0
  have h2 := st13_2_2 u v x y z hin2 hin1
  have h3 := st14_2_2 u v x y z hin1 h2
  have h4 := st12_2_2 u v x y z h1 h3
  exact h4

lemma leaf90_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp146_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp18_2_2 u v x y z = 0)
    : PolyRefl.eval cp95_2_2 u v x y z = 0 := by
  have h0 := st58_2_2 u v x y z hin0 hin1
  have h1 := st59_2_2 u v x y z hin1 h0
  have h2 := st5_2_2 u v x y z hin2 hin1
  have h3 := st38_2_2 u v x y z h1 h2
  exact h3

lemma leaf91_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp77_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp226_2_2 u v x y z = 0)
    : PolyRefl.eval cp0_2_2 u v x y z = 0 := by
  have h0 := st26_2_2 u v x y z hin0 hin1
  have h1 := st27_2_2 u v x y z hin1 h0
  have h2 := st104_2_2 u v x y z hin2 hin1
  have h3 := st105_2_2 u v x y z hin1 h2
  have h4 := st4_2_2 u v x y z h3 h1
  exact h4

lemma leaf92_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp210_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp42_2_2 u v x y z = 0)
    : PolyRefl.eval cp0_2_2 u v x y z = 0 := by
  have h0 := st93_2_2 u v x y z hin0 hin1
  have h1 := st94_2_2 u v x y z hin1 h0
  have h2 := st13_2_2 u v x y z hin2 hin1
  have h3 := st14_2_2 u v x y z hin1 h2
  have h4 := st62_2_2 u v x y z h1 h3
  exact h4

lemma leaf93_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp65_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp258_2_2 u v x y z = 0)
    : PolyRefl.eval cp123_2_2 u v x y z = 0 := by
  have h0 := st22_2_2 u v x y z hin0 hin1
  have h1 := st122_2_2 u v x y z hin2 hin0
  have h2 := st123_2_2 u v x y z hin0 h1
  have h3 := st66_2_2 u v x y z h2 h0
  exact h3

lemma leaf94_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp182_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp65_2_2 u v x y z = 0)
    : PolyRefl.eval cp175_2_2 u v x y z = 0 := by
  have h0 := st76_2_2 u v x y z hin0 hin1
  have h1 := st77_2_2 u v x y z hin1 h0
  have h2 := st22_2_2 u v x y z hin1 hin2
  have h3 := st78_2_2 u v x y z h1 h2
  exact h3

lemma leaf95_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp18_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp146_2_2 u v x y z = 0)
    : PolyRefl.eval cp95_2_2 u v x y z = 0 := by
  have h0 := st5_2_2 u v x y z hin0 hin1
  have h1 := st58_2_2 u v x y z hin2 hin1
  have h2 := st59_2_2 u v x y z hin1 h1
  have h3 := st38_2_2 u v x y z h2 h0
  exact h3

lemma leaf96_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp201_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp160_2_2 u v x y z = 0)
    : PolyRefl.eval cp139_2_2 u v x y z = 0 := by
  have h0 := st88_2_2 u v x y z hin0 hin1
  have h1 := st89_2_2 u v x y z hin1 h0
  have h2 := st65_2_2 u v x y z hin1 hin2
  have h3 := st90_2_2 u v x y z h1 h2
  exact h3

lemma leaf97_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp33_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp206_2_2 u v x y z = 0)
    : PolyRefl.eval cp76_2_2 u v x y z = 0 := by
  have h0 := st10_2_2 u v x y z hin0 hin1
  have h1 := st11_2_2 u v x y z hin1 h0
  have h2 := st91_2_2 u v x y z hin2 hin1
  have h3 := st92_2_2 u v x y z hin1 h2
  have h4 := st69_2_2 u v x y z h3 h1
  exact h4

lemma leaf98_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp252_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp65_2_2 u v x y z = 0)
    : PolyRefl.eval cp139_2_2 u v x y z = 0 := by
  have h0 := st118_2_2 u v x y z hin0 hin1
  have h1 := st119_2_2 u v x y z hin1 h0
  have h2 := st22_2_2 u v x y z hin1 hin2
  have h3 := st90_2_2 u v x y z h1 h2
  exact h3

lemma leaf99_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp52_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp119_2_2 u v x y z = 0)
    : PolyRefl.eval cp118_2_2 u v x y z = 0 := by
  have h0 := st18_2_2 u v x y z hin0 hin1
  have h1 := st45_2_2 u v x y z hin2 hin1
  have h2 := st46_2_2 u v x y z h1 h0
  exact h2

lemma leaf100_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp96_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp18_2_2 u v x y z = 0)
    : PolyRefl.eval cp95_2_2 u v x y z = 0 := by
  have h0 := st36_2_2 u v x y z hin0 hin1
  have h1 := st37_2_2 u v x y z hin1 h0
  have h2 := st5_2_2 u v x y z hin2 hin1
  have h3 := st38_2_2 u v x y z h1 h2
  exact h3

lemma leaf101_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp160_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp220_2_2 u v x y z = 0)
    : PolyRefl.eval cp175_2_2 u v x y z = 0 := by
  have h0 := st65_2_2 u v x y z hin0 hin1
  have h1 := st99_2_2 u v x y z hin2 hin0
  have h2 := st100_2_2 u v x y z hin0 h1
  have h3 := st78_2_2 u v x y z h2 h0
  exact h3

lemma leaf102_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp223_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp52_2_2 u v x y z = 0)
    : PolyRefl.eval cp51_2_2 u v x y z = 0 := by
  have h0 := st101_2_2 u v x y z hin0 hin1
  have h1 := st102_2_2 u v x y z hin1 h0
  have h2 := st18_2_2 u v x y z hin2 hin1
  have h3 := st21_2_2 u v x y z h1 h2
  exact h3

lemma leaf103_2_2 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp55_2_2 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_2 u v x y z = 0)
    (hin2 : PolyRefl.eval cp52_2_2 u v x y z = 0)
    : PolyRefl.eval cp51_2_2 u v x y z = 0 := by
  have h0 := st19_2_2 u v x y z hin0 hin1
  have h1 := st20_2_2 u v x y z hin1 h0
  have h2 := st18_2_2 u v x y z hin2 hin1
  have h3 := st21_2_2 u v x y z h1 h2
  exact h3

end ChainCert
