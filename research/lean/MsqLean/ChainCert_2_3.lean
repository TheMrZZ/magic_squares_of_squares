/- Generated: the PRS elimination chains of grid 2_3 as
   vanishing-propagation certificates (CertKit.prs_step). -/
import MsqLean.CertKit
import MsqLean.PolyRefl

set_option maxRecDepth 100000
set_option maxHeartbeats 2000000

namespace ChainCert
open CertKit

def cp0_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 12 8 0 0 (-3), PolyRefl.mkT 2 10 8 0 0 (2), PolyRefl.mkT 4 8 8 0 0 (-29), PolyRefl.mkT 6 6 8 0 0 (188), PolyRefl.mkT 8 4 8 0 0 (-29), PolyRefl.mkT 10 2 8 0 0 (2), PolyRefl.mkT 12 0 8 0 0 (-3)]
def cp1_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 0 (1)]
def cp2_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 2 (2), PolyRefl.mkT 0 2 0 2 0 (-6), PolyRefl.mkT 2 0 0 0 2 (-6), PolyRefl.mkT 2 0 0 2 0 (2)]
def cp3_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 0 0 0 2 (1), PolyRefl.mkT 0 0 0 2 0 (1), PolyRefl.mkT 0 0 2 0 0 (-1)]
def cp4_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 0 (2), PolyRefl.mkT 2 0 0 0 0 (-6)]
def cp5_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 2 0 (-4), PolyRefl.mkT 0 2 2 0 0 (1), PolyRefl.mkT 2 0 0 2 0 (4), PolyRefl.mkT 2 0 2 0 0 (-3)]
def cp6_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 1 3 (16), PolyRefl.mkT 0 2 0 3 1 (-16), PolyRefl.mkT 1 1 0 0 4 (8), PolyRefl.mkT 1 1 0 2 2 (-48), PolyRefl.mkT 1 1 0 4 0 (8), PolyRefl.mkT 2 0 0 1 3 (16), PolyRefl.mkT 2 0 0 3 1 (-16)]
def cp7_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 1 1 (16), PolyRefl.mkT 1 1 0 0 2 (8), PolyRefl.mkT 1 1 0 2 0 (-56), PolyRefl.mkT 1 1 2 0 0 (8), PolyRefl.mkT 2 0 0 1 1 (16)]
def cp8_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 3 1 (-4), PolyRefl.mkT 0 2 2 1 1 (2), PolyRefl.mkT 1 1 0 4 0 (8), PolyRefl.mkT 1 1 2 2 0 (-8), PolyRefl.mkT 1 1 4 0 0 (1), PolyRefl.mkT 2 0 0 3 1 (-4), PolyRefl.mkT 2 0 2 1 1 (2)]
def cp9_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 6 0 (16), PolyRefl.mkT 0 4 2 4 0 (-16), PolyRefl.mkT 0 4 4 2 0 (4), PolyRefl.mkT 2 2 0 6 0 (32), PolyRefl.mkT 2 2 2 4 0 (-32), PolyRefl.mkT 2 2 4 2 0 (8), PolyRefl.mkT 4 0 0 6 0 (16), PolyRefl.mkT 4 0 2 4 0 (-16), PolyRefl.mkT 4 0 4 2 0 (4)]
def cp10_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 3 1 (-4), PolyRefl.mkT 0 2 2 1 1 (2), PolyRefl.mkT 1 1 0 4 0 (-8), PolyRefl.mkT 1 1 2 2 0 (8), PolyRefl.mkT 1 1 4 0 0 (-1), PolyRefl.mkT 2 0 0 3 1 (-4), PolyRefl.mkT 2 0 2 1 1 (2)]
def cp11_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 8 0 (16), PolyRefl.mkT 0 4 2 6 0 (-32), PolyRefl.mkT 0 4 4 4 0 (20), PolyRefl.mkT 0 4 6 2 0 (-4), PolyRefl.mkT 2 2 0 8 0 (96), PolyRefl.mkT 2 2 2 6 0 (-192), PolyRefl.mkT 2 2 4 4 0 (120), PolyRefl.mkT 2 2 6 2 0 (-24), PolyRefl.mkT 2 2 8 0 0 (1), PolyRefl.mkT 4 0 0 8 0 (16), PolyRefl.mkT 4 0 2 6 0 (-32), PolyRefl.mkT 4 0 4 4 0 (20), PolyRefl.mkT 4 0 6 2 0 (-4)]
def cp12_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (256), PolyRefl.mkT 2 6 0 0 0 (-1024), PolyRefl.mkT 4 4 0 0 0 (1536), PolyRefl.mkT 6 2 0 0 0 (-1024), PolyRefl.mkT 8 0 0 0 0 (256)]
def cp13_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 6 0 (-1024), PolyRefl.mkT 0 10 2 4 0 (1792), PolyRefl.mkT 0 10 4 2 0 (-832), PolyRefl.mkT 0 10 6 0 0 (48), PolyRefl.mkT 2 8 0 6 0 (-3072), PolyRefl.mkT 2 8 2 4 0 (5888), PolyRefl.mkT 2 8 4 2 0 (-3264), PolyRefl.mkT 2 8 6 0 0 (368), PolyRefl.mkT 4 6 0 6 0 (14336), PolyRefl.mkT 4 6 2 4 0 (-23040), PolyRefl.mkT 4 6 4 2 0 (8320), PolyRefl.mkT 4 6 6 0 0 (544), PolyRefl.mkT 6 4 0 6 0 (-14336), PolyRefl.mkT 6 4 2 4 0 (19968), PolyRefl.mkT 6 4 4 2 0 (-5248), PolyRefl.mkT 6 4 6 0 0 (160), PolyRefl.mkT 8 2 0 6 0 (3072), PolyRefl.mkT 8 2 2 4 0 (-3328), PolyRefl.mkT 8 2 4 2 0 (704), PolyRefl.mkT 8 2 6 0 0 (-80), PolyRefl.mkT 10 0 0 6 0 (1024), PolyRefl.mkT 10 0 2 4 0 (-1280), PolyRefl.mkT 10 0 4 2 0 (320), PolyRefl.mkT 10 0 6 0 0 (-16)]
def cp14_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 22 4 0 0 (693), PolyRefl.mkT 4 20 4 0 0 (-18774), PolyRefl.mkT 6 18 4 0 0 (186601), PolyRefl.mkT 8 16 4 0 0 (-845000), PolyRefl.mkT 10 14 4 0 0 (1737050), PolyRefl.mkT 12 12 4 0 0 (-1411076), PolyRefl.mkT 14 10 4 0 0 (490442), PolyRefl.mkT 16 8 4 0 0 (-46664), PolyRefl.mkT 18 6 4 0 0 (-13775), PolyRefl.mkT 20 4 4 0 0 (3690), PolyRefl.mkT 22 2 4 0 0 (-243)]
def cp15_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 6 0 0 0 (64), PolyRefl.mkT 4 4 0 0 0 (-128), PolyRefl.mkT 6 2 0 0 0 (64)]
def cp16_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 0 (6), PolyRefl.mkT 1 3 0 0 1 (8), PolyRefl.mkT 2 2 0 1 0 (-36), PolyRefl.mkT 3 1 0 0 1 (-8), PolyRefl.mkT 4 0 0 1 0 (6)]
def cp17_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 0 (-6), PolyRefl.mkT 1 3 0 0 1 (8), PolyRefl.mkT 2 2 0 1 0 (36), PolyRefl.mkT 3 1 0 0 1 (-8), PolyRefl.mkT 4 0 0 1 0 (-6)]
def cp18_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 2 0 (9), PolyRefl.mkT 2 6 0 2 0 (-92), PolyRefl.mkT 2 6 2 0 0 (-16), PolyRefl.mkT 4 4 0 2 0 (310), PolyRefl.mkT 4 4 2 0 0 (32), PolyRefl.mkT 6 2 0 2 0 (-92), PolyRefl.mkT 6 2 2 0 0 (-16), PolyRefl.mkT 8 0 0 2 0 (9)]
def cp19_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (4), PolyRefl.mkT 1 3 0 0 2 (24), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 2 2 0 1 1 (24), PolyRefl.mkT 3 1 0 0 2 (-8), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 4 0 0 1 1 (-12)]
def cp20_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 1 3 0 0 0 (24), PolyRefl.mkT 3 1 0 0 0 (-8)]
def cp21_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (1), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 1 3 2 0 0 (6), PolyRefl.mkT 2 2 0 1 1 (6), PolyRefl.mkT 3 1 2 0 0 (-2), PolyRefl.mkT 4 0 0 1 1 (-3)]
def cp22_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 2 0 (1), PolyRefl.mkT 2 6 0 2 0 (12), PolyRefl.mkT 4 4 0 2 0 (30), PolyRefl.mkT 6 2 0 2 0 (-36), PolyRefl.mkT 8 0 0 2 0 (9)]
def cp23_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (1), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 1 3 2 0 0 (-6), PolyRefl.mkT 2 2 0 1 1 (6), PolyRefl.mkT 3 1 2 0 0 (2), PolyRefl.mkT 4 0 0 1 1 (-3)]
def cp24_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 4 0 (1), PolyRefl.mkT 0 8 2 2 0 (-1), PolyRefl.mkT 2 6 0 4 0 (76), PolyRefl.mkT 2 6 2 2 0 (-108), PolyRefl.mkT 2 6 4 0 0 (36), PolyRefl.mkT 4 4 0 4 0 (30), PolyRefl.mkT 4 4 2 2 0 (2), PolyRefl.mkT 4 4 4 0 0 (-24), PolyRefl.mkT 6 2 0 4 0 (-36), PolyRefl.mkT 6 2 2 2 0 (36), PolyRefl.mkT 6 2 4 0 0 (4), PolyRefl.mkT 8 0 0 4 0 (9), PolyRefl.mkT 8 0 2 2 0 (-9)]
def cp25_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 16 0 0 0 (81), PolyRefl.mkT 2 14 0 0 0 (-1656), PolyRefl.mkT 4 12 0 0 0 (14044), PolyRefl.mkT 6 10 0 0 0 (-58696), PolyRefl.mkT 8 8 0 0 0 (113190), PolyRefl.mkT 10 6 0 0 0 (-58696), PolyRefl.mkT 12 4 0 0 0 (14044), PolyRefl.mkT 14 2 0 0 0 (-1656), PolyRefl.mkT 16 0 0 0 0 (81)]
def cp26_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 16 0 2 0 (9), PolyRefl.mkT 0 16 2 0 0 (-9), PolyRefl.mkT 2 14 0 2 0 (592), PolyRefl.mkT 2 14 2 0 0 (-864), PolyRefl.mkT 4 12 0 2 0 (-6412), PolyRefl.mkT 4 12 2 0 0 (10828), PolyRefl.mkT 6 10 0 2 0 (20384), PolyRefl.mkT 6 10 2 0 0 (-35184), PolyRefl.mkT 8 8 0 2 0 (5710), PolyRefl.mkT 8 8 2 0 0 (6834), PolyRefl.mkT 10 6 0 2 0 (-14064), PolyRefl.mkT 10 6 2 0 0 (12608), PolyRefl.mkT 12 4 0 2 0 (6372), PolyRefl.mkT 12 4 2 0 0 (-6948), PolyRefl.mkT 14 2 0 2 0 (-1152), PolyRefl.mkT 14 2 2 0 0 (1296), PolyRefl.mkT 16 0 0 2 0 (81), PolyRefl.mkT 16 0 2 0 0 (-81)]
def cp27_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 102 32 0 0 (-27), PolyRefl.mkT 4 100 32 0 0 (3366), PolyRefl.mkT 6 98 32 0 0 (-156531), PolyRefl.mkT 8 96 32 0 0 (2085648), PolyRefl.mkT 10 94 32 0 0 (109457836), PolyRefl.mkT 12 92 32 0 0 (-6614102056), PolyRefl.mkT 14 90 32 0 0 (180104130652), PolyRefl.mkT 16 88 32 0 0 (-3036209861072), PolyRefl.mkT 18 86 32 0 0 (31996243523970), PolyRefl.mkT 20 84 32 0 0 (-146185713039060), PolyRefl.mkT 22 82 32 0 0 (-1596539209922206), PolyRefl.mkT 24 80 32 0 0 (42868161786915376), PolyRefl.mkT 26 78 32 0 0 (-526993691886789140), PolyRefl.mkT 28 76 32 0 0 (4526203644451661880), PolyRefl.mkT 30 74 32 0 0 (-29866513674669544580), PolyRefl.mkT 32 72 32 0 0 (157334178847959495568), PolyRefl.mkT 34 70 32 0 0 (-674687455071052931533), PolyRefl.mkT 36 68 32 0 0 (2381347772660895658394), PolyRefl.mkT 38 66 32 0 0 (-6964332848856184325765), PolyRefl.mkT 40 64 32 0 0 (16947066346007764753312), PolyRefl.mkT 42 62 32 0 0 (-34409209197026728701928), PolyRefl.mkT 44 60 32 0 0 (58410206547088040625328), PolyRefl.mkT 46 58 32 0 0 (-83028739110023946836488), PolyRefl.mkT 48 56 32 0 0 (98963505610473607084256), PolyRefl.mkT 50 54 32 0 0 (-99009924811210202300228), PolyRefl.mkT 52 52 32 0 0 (83187078140679439625448), PolyRefl.mkT 54 50 32 0 0 (-58668301635473835924804), PolyRefl.mkT 56 48 32 0 0 (34658036707314251906400), PolyRefl.mkT 58 46 32 0 0 (-17066025246488534587528), PolyRefl.mkT 60 44 32 0 0 (6936237266827215543856), PolyRefl.mkT 62 42 32 0 0 (-2281799154080008273512), PolyRefl.mkT 64 40 32 0 0 (582051259293207404064), PolyRefl.mkT 66 38 32 0 0 (-102009115091530186725), PolyRefl.mkT 68 36 32 0 0 (5668511552433940666), PolyRefl.mkT 70 34 32 0 0 (3580372540877169107), PolyRefl.mkT 72 32 32 0 0 (-1583940794377151920), PolyRefl.mkT 74 30 32 0 0 (381920061888914620), PolyRefl.mkT 76 28 32 0 0 (-62207471905280648), PolyRefl.mkT 78 26 32 0 0 (6514183138742060), PolyRefl.mkT 80 24 32 0 0 (-226719122787344), PolyRefl.mkT 82 22 32 0 0 (-63511184972318), PolyRefl.mkT 84 20 32 0 0 (15167790716076), PolyRefl.mkT 86 18 32 0 0 (-1872632314878), PolyRefl.mkT 88 16 32 0 0 (152174169968), PolyRefl.mkT 90 14 32 0 0 (-8051823588), PolyRefl.mkT 92 12 32 0 0 (214943640), PolyRefl.mkT 94 10 32 0 0 (3949932), PolyRefl.mkT 96 8 32 0 0 (-634032), PolyRefl.mkT 98 6 32 0 0 (27053), PolyRefl.mkT 100 4 32 0 0 (-570), PolyRefl.mkT 102 2 32 0 0 (5)]
def cp28_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 5 (24), PolyRefl.mkT 0 4 0 3 3 (-80), PolyRefl.mkT 0 4 0 5 1 (24), PolyRefl.mkT 1 3 0 0 6 (24), PolyRefl.mkT 1 3 0 2 4 (-360), PolyRefl.mkT 1 3 0 4 2 (360), PolyRefl.mkT 1 3 0 6 0 (-24), PolyRefl.mkT 3 1 0 0 6 (-8), PolyRefl.mkT 3 1 0 2 4 (120), PolyRefl.mkT 3 1 0 4 2 (-120), PolyRefl.mkT 3 1 0 6 0 (8), PolyRefl.mkT 4 0 0 1 5 (-24), PolyRefl.mkT 4 0 0 3 3 (80), PolyRefl.mkT 4 0 0 5 1 (-24)]
def cp29_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (24), PolyRefl.mkT 0 4 0 3 1 (-104), PolyRefl.mkT 0 4 2 1 1 (24), PolyRefl.mkT 1 3 0 0 4 (24), PolyRefl.mkT 1 3 0 2 2 (-384), PolyRefl.mkT 1 3 0 4 0 (744), PolyRefl.mkT 1 3 2 0 2 (24), PolyRefl.mkT 1 3 2 2 0 (-408), PolyRefl.mkT 1 3 4 0 0 (24), PolyRefl.mkT 3 1 0 0 4 (-8), PolyRefl.mkT 3 1 0 2 2 (128), PolyRefl.mkT 3 1 0 4 0 (-248), PolyRefl.mkT 3 1 2 0 2 (-8), PolyRefl.mkT 3 1 2 2 0 (136), PolyRefl.mkT 3 1 4 0 0 (-8), PolyRefl.mkT 4 0 0 1 3 (-24), PolyRefl.mkT 4 0 0 3 1 (104), PolyRefl.mkT 4 0 2 1 1 (-24)]
def cp30_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (16), PolyRefl.mkT 0 4 2 3 1 (-16), PolyRefl.mkT 0 4 4 1 1 (3), PolyRefl.mkT 1 3 0 6 0 (-96), PolyRefl.mkT 1 3 2 4 0 (144), PolyRefl.mkT 1 3 4 2 0 (-54), PolyRefl.mkT 1 3 6 0 0 (3), PolyRefl.mkT 3 1 0 6 0 (32), PolyRefl.mkT 3 1 2 4 0 (-48), PolyRefl.mkT 3 1 4 2 0 (18), PolyRefl.mkT 3 1 6 0 0 (-1), PolyRefl.mkT 4 0 0 5 1 (-16), PolyRefl.mkT 4 0 2 3 1 (16), PolyRefl.mkT 4 0 4 1 1 (-3)]
def cp31_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 10 0 (256), PolyRefl.mkT 0 8 2 8 0 (-512), PolyRefl.mkT 0 8 4 6 0 (352), PolyRefl.mkT 0 8 6 4 0 (-96), PolyRefl.mkT 0 8 8 2 0 (9), PolyRefl.mkT 4 4 0 10 0 (-512), PolyRefl.mkT 4 4 2 8 0 (1024), PolyRefl.mkT 4 4 4 6 0 (-704), PolyRefl.mkT 4 4 6 4 0 (192), PolyRefl.mkT 4 4 8 2 0 (-18), PolyRefl.mkT 8 0 0 10 0 (256), PolyRefl.mkT 8 0 2 8 0 (-512), PolyRefl.mkT 8 0 4 6 0 (352), PolyRefl.mkT 8 0 6 4 0 (-96), PolyRefl.mkT 8 0 8 2 0 (9)]
def cp32_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (16), PolyRefl.mkT 0 4 2 3 1 (-16), PolyRefl.mkT 0 4 4 1 1 (3), PolyRefl.mkT 1 3 0 6 0 (96), PolyRefl.mkT 1 3 2 4 0 (-144), PolyRefl.mkT 1 3 4 2 0 (54), PolyRefl.mkT 1 3 6 0 0 (-3), PolyRefl.mkT 3 1 0 6 0 (-32), PolyRefl.mkT 3 1 2 4 0 (48), PolyRefl.mkT 3 1 4 2 0 (-18), PolyRefl.mkT 3 1 6 0 0 (1), PolyRefl.mkT 4 0 0 5 1 (-16), PolyRefl.mkT 4 0 2 3 1 (16), PolyRefl.mkT 4 0 4 1 1 (-3)]
def cp33_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 12 0 (256), PolyRefl.mkT 0 8 2 10 0 (-768), PolyRefl.mkT 0 8 4 8 0 (864), PolyRefl.mkT 0 8 6 6 0 (-448), PolyRefl.mkT 0 8 8 4 0 (105), PolyRefl.mkT 0 8 10 2 0 (-9), PolyRefl.mkT 2 6 0 12 0 (9216), PolyRefl.mkT 2 6 2 10 0 (-27648), PolyRefl.mkT 2 6 4 8 0 (31104), PolyRefl.mkT 2 6 6 6 0 (-16128), PolyRefl.mkT 2 6 8 4 0 (3780), PolyRefl.mkT 2 6 10 2 0 (-324), PolyRefl.mkT 2 6 12 0 0 (9), PolyRefl.mkT 4 4 0 12 0 (-6656), PolyRefl.mkT 4 4 2 10 0 (19968), PolyRefl.mkT 4 4 4 8 0 (-22464), PolyRefl.mkT 4 4 6 6 0 (11648), PolyRefl.mkT 4 4 8 4 0 (-2730), PolyRefl.mkT 4 4 10 2 0 (234), PolyRefl.mkT 4 4 12 0 0 (-6), PolyRefl.mkT 6 2 0 12 0 (1024), PolyRefl.mkT 6 2 2 10 0 (-3072), PolyRefl.mkT 6 2 4 8 0 (3456), PolyRefl.mkT 6 2 6 6 0 (-1792), PolyRefl.mkT 6 2 8 4 0 (420), PolyRefl.mkT 6 2 10 2 0 (-36), PolyRefl.mkT 6 2 12 0 0 (1), PolyRefl.mkT 8 0 0 12 0 (256), PolyRefl.mkT 8 0 2 10 0 (-768), PolyRefl.mkT 8 0 4 8 0 (864), PolyRefl.mkT 8 0 6 6 0 (-448), PolyRefl.mkT 8 0 8 4 0 (105), PolyRefl.mkT 8 0 10 2 0 (-9)]
def cp34_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (16), PolyRefl.mkT 0 4 0 3 1 (-16), PolyRefl.mkT 1 3 0 0 4 (8), PolyRefl.mkT 1 3 0 2 2 (16), PolyRefl.mkT 1 3 0 4 0 (8), PolyRefl.mkT 2 2 0 1 3 (-96), PolyRefl.mkT 2 2 0 3 1 (96), PolyRefl.mkT 3 1 0 0 4 (-8), PolyRefl.mkT 3 1 0 2 2 (-16), PolyRefl.mkT 3 1 0 4 0 (-8), PolyRefl.mkT 4 0 0 1 3 (16), PolyRefl.mkT 4 0 0 3 1 (-16)]
def cp35_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (16), PolyRefl.mkT 1 3 0 0 2 (8), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 1 3 2 0 0 (8), PolyRefl.mkT 2 2 0 1 1 (-96), PolyRefl.mkT 3 1 0 0 2 (-8), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 3 1 2 0 0 (-8), PolyRefl.mkT 4 0 0 1 1 (16)]
def cp36_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-4), PolyRefl.mkT 0 4 2 1 1 (2), PolyRefl.mkT 1 3 4 0 0 (1), PolyRefl.mkT 2 2 0 3 1 (24), PolyRefl.mkT 2 2 2 1 1 (-12), PolyRefl.mkT 3 1 4 0 0 (-1), PolyRefl.mkT 4 0 0 3 1 (-4), PolyRefl.mkT 4 0 2 1 1 (2)]
def cp37_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 6 0 (16), PolyRefl.mkT 0 8 2 4 0 (-16), PolyRefl.mkT 0 8 4 2 0 (4), PolyRefl.mkT 2 6 0 6 0 (-192), PolyRefl.mkT 2 6 2 4 0 (192), PolyRefl.mkT 2 6 4 2 0 (-48), PolyRefl.mkT 4 4 0 6 0 (608), PolyRefl.mkT 4 4 2 4 0 (-608), PolyRefl.mkT 4 4 4 2 0 (152), PolyRefl.mkT 6 2 0 6 0 (-192), PolyRefl.mkT 6 2 2 4 0 (192), PolyRefl.mkT 6 2 4 2 0 (-48), PolyRefl.mkT 8 0 0 6 0 (16), PolyRefl.mkT 8 0 2 4 0 (-16), PolyRefl.mkT 8 0 4 2 0 (4)]
def cp38_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-4), PolyRefl.mkT 0 4 2 1 1 (2), PolyRefl.mkT 1 3 4 0 0 (-1), PolyRefl.mkT 2 2 0 3 1 (24), PolyRefl.mkT 2 2 2 1 1 (-12), PolyRefl.mkT 3 1 4 0 0 (1), PolyRefl.mkT 4 0 0 3 1 (-4), PolyRefl.mkT 4 0 2 1 1 (2)]
def cp39_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 8 0 (16), PolyRefl.mkT 0 8 2 6 0 (-32), PolyRefl.mkT 0 8 4 4 0 (20), PolyRefl.mkT 0 8 6 2 0 (-4), PolyRefl.mkT 2 6 0 8 0 (-192), PolyRefl.mkT 2 6 2 6 0 (384), PolyRefl.mkT 2 6 4 4 0 (-240), PolyRefl.mkT 2 6 6 2 0 (48), PolyRefl.mkT 2 6 8 0 0 (1), PolyRefl.mkT 4 4 0 8 0 (608), PolyRefl.mkT 4 4 2 6 0 (-1216), PolyRefl.mkT 4 4 4 4 0 (760), PolyRefl.mkT 4 4 6 2 0 (-152), PolyRefl.mkT 4 4 8 0 0 (-2), PolyRefl.mkT 6 2 0 8 0 (-192), PolyRefl.mkT 6 2 2 6 0 (384), PolyRefl.mkT 6 2 4 4 0 (-240), PolyRefl.mkT 6 2 6 2 0 (48), PolyRefl.mkT 6 2 8 0 0 (1), PolyRefl.mkT 8 0 0 8 0 (16), PolyRefl.mkT 8 0 2 6 0 (-32), PolyRefl.mkT 8 0 4 4 0 (20), PolyRefl.mkT 8 0 6 2 0 (-4)]
def cp40_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 0 0 (4096), PolyRefl.mkT 2 22 0 0 0 (-147456), PolyRefl.mkT 4 20 0 0 0 (2236416), PolyRefl.mkT 6 18 0 0 0 (-18432000), PolyRefl.mkT 8 16 0 0 0 (88535040), PolyRefl.mkT 10 14 0 0 0 (-245661696), PolyRefl.mkT 12 12 0 0 0 (363708416), PolyRefl.mkT 14 10 0 0 0 (-245661696), PolyRefl.mkT 16 8 0 0 0 (88535040), PolyRefl.mkT 18 6 0 0 0 (-18432000), PolyRefl.mkT 20 4 0 0 0 (2236416), PolyRefl.mkT 22 2 0 0 0 (-147456), PolyRefl.mkT 24 0 0 0 0 (4096)]
def cp41_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 4 0 (65536), PolyRefl.mkT 0 24 2 2 0 (-65536), PolyRefl.mkT 0 24 4 0 0 (8192), PolyRefl.mkT 2 22 0 4 0 (786432), PolyRefl.mkT 2 22 2 2 0 (-786432), PolyRefl.mkT 2 22 4 0 0 (98304), PolyRefl.mkT 4 20 0 4 0 (-43909120), PolyRefl.mkT 4 20 2 2 0 (43909120), PolyRefl.mkT 4 20 4 0 0 (-5488640), PolyRefl.mkT 6 18 0 4 0 (498860032), PolyRefl.mkT 6 18 2 2 0 (-498860032), PolyRefl.mkT 6 18 4 0 0 (62357504), PolyRefl.mkT 8 16 0 4 0 (-2475753472), PolyRefl.mkT 8 16 2 2 0 (2475753472), PolyRefl.mkT 8 16 4 0 0 (-309469184), PolyRefl.mkT 10 14 0 4 0 (5680660480), PolyRefl.mkT 10 14 2 2 0 (-5680660480), PolyRefl.mkT 10 14 4 0 0 (710082560), PolyRefl.mkT 12 12 0 4 0 (-5379457024), PolyRefl.mkT 12 12 2 2 0 (5379457024), PolyRefl.mkT 12 12 4 0 0 (-672432128), PolyRefl.mkT 14 10 0 4 0 (2505572352), PolyRefl.mkT 14 10 2 2 0 (-2505572352), PolyRefl.mkT 14 10 4 0 0 (313196544), PolyRefl.mkT 16 8 0 4 0 (-563150848), PolyRefl.mkT 16 8 2 2 0 (563150848), PolyRefl.mkT 16 8 4 0 0 (-70393856), PolyRefl.mkT 18 6 0 4 0 (39583744), PolyRefl.mkT 18 6 2 2 0 (-39583744), PolyRefl.mkT 18 6 4 0 0 (4947968), PolyRefl.mkT 20 4 0 4 0 (6422528), PolyRefl.mkT 20 4 2 2 0 (-6422528), PolyRefl.mkT 20 4 4 0 0 (802816), PolyRefl.mkT 22 2 0 4 0 (-1310720), PolyRefl.mkT 22 2 2 2 0 (1310720), PolyRefl.mkT 22 2 4 0 0 (-163840), PolyRefl.mkT 24 0 0 4 0 (65536), PolyRefl.mkT 24 0 2 2 0 (-65536), PolyRefl.mkT 24 0 4 0 0 (8192)]
def cp42_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 32 8 4 0 (1), PolyRefl.mkT 0 32 10 2 0 (-1), PolyRefl.mkT 2 30 8 4 0 (-16), PolyRefl.mkT 2 30 10 2 0 (16), PolyRefl.mkT 2 30 12 0 0 (7), PolyRefl.mkT 4 28 8 4 0 (-936), PolyRefl.mkT 4 28 10 2 0 (936), PolyRefl.mkT 4 28 12 0 0 (-350), PolyRefl.mkT 6 26 8 4 0 (27184), PolyRefl.mkT 6 26 10 2 0 (-27184), PolyRefl.mkT 6 26 12 0 0 (6517), PolyRefl.mkT 8 24 8 4 0 (-298148), PolyRefl.mkT 8 24 10 2 0 (298148), PolyRefl.mkT 8 24 12 0 0 (-61740), PolyRefl.mkT 10 22 8 4 0 (1696048), PolyRefl.mkT 10 22 10 2 0 (-1696048), PolyRefl.mkT 10 22 12 0 0 (329423), PolyRefl.mkT 12 20 8 4 0 (-5367320), PolyRefl.mkT 12 20 10 2 0 (5367320), PolyRefl.mkT 12 20 12 0 0 (-1013666), PolyRefl.mkT 14 18 8 4 0 (9469552), PolyRefl.mkT 14 18 10 2 0 (-9469552), PolyRefl.mkT 14 18 12 0 0 (1767077), PolyRefl.mkT 16 16 8 4 0 (-9289786), PolyRefl.mkT 16 16 10 2 0 (9289786), PolyRefl.mkT 16 16 12 0 0 (-1710696), PolyRefl.mkT 18 14 8 4 0 (5302480), PolyRefl.mkT 18 14 10 2 0 (-5302480), PolyRefl.mkT 18 14 12 0 0 (977469), PolyRefl.mkT 20 12 8 4 0 (-1770904), PolyRefl.mkT 20 12 10 2 0 (1770904), PolyRefl.mkT 20 12 12 0 0 (-342210), PolyRefl.mkT 22 10 8 4 0 (318352), PolyRefl.mkT 22 10 10 2 0 (-318352), PolyRefl.mkT 22 10 12 0 0 (72935), PolyRefl.mkT 24 8 8 4 0 (-18084), PolyRefl.mkT 24 8 10 2 0 (18084), PolyRefl.mkT 24 8 12 0 0 (-8876), PolyRefl.mkT 26 6 8 4 0 (-3568), PolyRefl.mkT 26 6 10 2 0 (3568), PolyRefl.mkT 26 6 12 0 0 (493), PolyRefl.mkT 28 4 8 4 0 (728), PolyRefl.mkT 28 4 10 2 0 (-728), PolyRefl.mkT 28 4 12 0 0 (2), PolyRefl.mkT 30 2 8 4 0 (-48), PolyRefl.mkT 30 2 10 2 0 (48), PolyRefl.mkT 30 2 12 0 0 (-1), PolyRefl.mkT 32 0 8 4 0 (1), PolyRefl.mkT 32 0 10 2 0 (-1)]
def cp43_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 96 24 0 0 (1), PolyRefl.mkT 2 94 24 0 0 (-48), PolyRefl.mkT 4 92 24 0 0 (-2040), PolyRefl.mkT 6 90 24 0 0 (167312), PolyRefl.mkT 8 88 24 0 0 (-1594668), PolyRefl.mkT 10 86 24 0 0 (-140130288), PolyRefl.mkT 12 84 24 0 0 (5106028152), PolyRefl.mkT 14 82 24 0 0 (-47121459504), PolyRefl.mkT 16 80 24 0 0 (-1359787251198), PolyRefl.mkT 18 78 24 0 0 (56933025867952), PolyRefl.mkT 20 76 24 0 0 (-1100388397943976), PolyRefl.mkT 22 74 24 0 0 (14303130472805616), PolyRefl.mkT 24 72 24 0 0 (-138043852244005244), PolyRefl.mkT 26 70 24 0 0 (1033686412325851632), PolyRefl.mkT 28 68 24 0 0 (-6150428166340559832), PolyRefl.mkT 30 66 24 0 0 (29493591628575242032), PolyRefl.mkT 32 64 24 0 0 (-114989002296538853649), PolyRefl.mkT 34 62 24 0 0 (366481615789197925920), PolyRefl.mkT 36 60 24 0 0 (-958045066887112530992), PolyRefl.mkT 38 58 24 0 0 (2058810507103535290272), PolyRefl.mkT 40 56 24 0 0 (-3643104620227070438232), PolyRefl.mkT 42 54 24 0 0 (5316737778711596373664), PolyRefl.mkT 44 52 24 0 0 (-6410450853367112508624), PolyRefl.mkT 46 50 24 0 0 (6397043475162625409568), PolyRefl.mkT 48 48 24 0 0 (-5291396204317646371300), PolyRefl.mkT 50 46 24 0 0 (3630347651389785011040), PolyRefl.mkT 52 44 24 0 0 (-2064015088623064653264), PolyRefl.mkT 54 42 24 0 0 (969009187970312942560), PolyRefl.mkT 56 40 24 0 0 (-372715151299533219672), PolyRefl.mkT 58 38 24 0 0 (115628040562473402336), PolyRefl.mkT 60 36 24 0 0 (-28019785423827745072), PolyRefl.mkT 62 34 24 0 0 (4910191200185191008), PolyRefl.mkT 64 32 24 0 0 (-466081003026665745), PolyRefl.mkT 66 30 24 0 0 (-38987259485737712), PolyRefl.mkT 68 28 24 0 0 (25133079349338792), PolyRefl.mkT 70 26 24 0 0 (-5027401484809776), PolyRefl.mkT 72 24 24 0 0 (512250830318724), PolyRefl.mkT 74 22 24 0 0 (-530290647984), PolyRefl.mkT 76 20 24 0 0 (-8751908802600), PolyRefl.mkT 78 18 24 0 0 (1459801761296), PolyRefl.mkT 80 16 24 0 0 (-113643759102), PolyRefl.mkT 82 14 24 0 0 (789485808), PolyRefl.mkT 84 12 24 0 0 (871115768), PolyRefl.mkT 86 10 24 0 0 (-110401488), PolyRefl.mkT 88 8 24 0 0 (7595220), PolyRefl.mkT 90 6 24 0 0 (-330960), PolyRefl.mkT 92 4 24 0 0 (9096), PolyRefl.mkT 94 2 24 0 0 (-144), PolyRefl.mkT 96 0 24 0 0 (1)]
def cp44_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 72 16 4 0 (16), PolyRefl.mkT 0 72 18 2 0 (-16), PolyRefl.mkT 0 72 20 0 0 (4), PolyRefl.mkT 2 70 16 4 0 (-704), PolyRefl.mkT 2 70 18 2 0 (704), PolyRefl.mkT 2 70 20 0 0 (-288), PolyRefl.mkT 4 68 16 4 0 (-19104), PolyRefl.mkT 4 68 18 2 0 (19104), PolyRefl.mkT 4 68 20 0 0 (3960), PolyRefl.mkT 6 66 16 4 0 (1639744), PolyRefl.mkT 6 66 18 2 0 (-1639744), PolyRefl.mkT 6 66 20 0 0 (227936), PolyRefl.mkT 8 64 16 4 0 (-26607216), PolyRefl.mkT 8 64 18 2 0 (26607216), PolyRefl.mkT 8 64 20 0 0 (-10931100), PolyRefl.mkT 10 62 16 4 0 (-442416640), PolyRefl.mkT 10 62 18 2 0 (442416640), PolyRefl.mkT 10 62 20 0 0 (215629056), PolyRefl.mkT 12 60 16 4 0 (26626005248), PolyRefl.mkT 12 60 18 2 0 (-26626005248), PolyRefl.mkT 12 60 20 0 0 (-2220291264), PolyRefl.mkT 14 58 16 4 0 (-566628861440), PolyRefl.mkT 14 58 18 2 0 (566628861440), PolyRefl.mkT 14 58 20 0 0 (7276588288), PolyRefl.mkT 16 56 16 4 0 (7494907045696), PolyRefl.mkT 16 56 18 2 0 (-7494907045696), PolyRefl.mkT 16 56 20 0 0 (128173238736), PolyRefl.mkT 18 54 16 4 0 (-69675517651200), PolyRefl.mkT 18 54 18 2 0 (69675517651200), PolyRefl.mkT 18 54 20 0 0 (-2337123022720), PolyRefl.mkT 20 52 16 4 0 (479025991605888), PolyRefl.mkT 20 52 18 2 0 (-479025991605888), PolyRefl.mkT 20 52 20 0 0 (20939483687200), PolyRefl.mkT 22 50 16 4 0 (-2498701955870976), PolyRefl.mkT 22 50 18 2 0 (2498701955870976), PolyRefl.mkT 22 50 20 0 0 (-125959909976448), PolyRefl.mkT 24 48 16 4 0 (10021805738229824), PolyRefl.mkT 24 48 18 2 0 (-10021805738229824), PolyRefl.mkT 24 48 20 0 0 (550930346593296), PolyRefl.mkT 26 46 16 4 0 (-31106703670786560), PolyRefl.mkT 26 46 18 2 0 (31106703670786560), PolyRefl.mkT 26 46 20 0 0 (-1808635884012800), PolyRefl.mkT 28 44 16 4 0 (74903437325422336), PolyRefl.mkT 28 44 18 2 0 (-74903437325422336), PolyRefl.mkT 28 44 20 0 0 (4522797795887808), PolyRefl.mkT 30 42 16 4 0 (-140001275652465152), PolyRefl.mkT 30 42 18 2 0 (140001275652465152), PolyRefl.mkT 30 42 20 0 0 (-8679711222197504), PolyRefl.mkT 32 40 16 4 0 (203210245831218912), PolyRefl.mkT 32 40 18 2 0 (-203210245831218912), PolyRefl.mkT 32 40 20 0 0 (12837946364485048), PolyRefl.mkT 34 38 16 4 0 (-229432447115066496), PolyRefl.mkT 34 38 18 2 0 (229432447115066496), PolyRefl.mkT 34 38 20 0 0 (-14674025247723200), PolyRefl.mkT 36 36 16 4 0 (202082120669759552), PolyRefl.mkT 36 36 18 2 0 (-202082120669759552), PolyRefl.mkT 36 36 20 0 0 (12975387882063056), PolyRefl.mkT 38 34 16 4 0 (-139247874110248064), PolyRefl.mkT 38 34 18 2 0 (139247874110248064), PolyRefl.mkT 38 34 20 0 0 (-8857095077424576), PolyRefl.mkT 40 32 16 4 0 (75115168889591520), PolyRefl.mkT 40 32 18 2 0 (-75115168889591520), PolyRefl.mkT 40 32 20 0 0 (4627473918386616), PolyRefl.mkT 42 30 16 4 0 (-31594951905509888), PolyRefl.mkT 42 30 18 2 0 (31594951905509888), PolyRefl.mkT 42 30 20 0 0 (-1809217636488448), PolyRefl.mkT 44 28 16 4 0 (10232499639144192), PolyRefl.mkT 44 28 18 2 0 (-10232499639144192), PolyRefl.mkT 44 28 20 0 0 (498763294269120), PolyRefl.mkT 46 26 16 4 0 (-2475005208664576), PolyRefl.mkT 46 26 18 2 0 (2475005208664576), PolyRefl.mkT 46 26 20 0 0 (-78305261450496), PolyRefl.mkT 48 24 16 4 0 (413016918851648), PolyRefl.mkT 48 24 18 2 0 (-413016918851648), PolyRefl.mkT 48 24 20 0 0 (-3624829898736), PolyRefl.mkT 50 22 16 4 0 (-34624762937600), PolyRefl.mkT 50 22 18 2 0 (34624762937600), PolyRefl.mkT 50 22 20 0 0 (6141952157824), PolyRefl.mkT 52 20 16 4 0 (-3283072164224), PolyRefl.mkT 52 20 18 2 0 (3283072164224), PolyRefl.mkT 52 20 20 0 0 (-1909291035360), PolyRefl.mkT 54 18 16 4 0 (1605024360192), PolyRefl.mkT 54 18 18 2 0 (-1605024360192), PolyRefl.mkT 54 18 20 0 0 (340516916864), PolyRefl.mkT 56 16 16 4 0 (-257711364288), PolyRefl.mkT 56 16 18 2 0 (257711364288), PolyRefl.mkT 56 16 20 0 0 (-34353144368), PolyRefl.mkT 58 14 16 4 0 (19652172288), PolyRefl.mkT 58 14 18 2 0 (-19652172288), PolyRefl.mkT 58 14 20 0 0 (464596224), PolyRefl.mkT 60 12 16 4 0 (301963520), PolyRefl.mkT 60 12 18 2 0 (-301963520), PolyRefl.mkT 60 12 20 0 0 (457666368), PolyRefl.mkT 62 10 16 4 0 (-253287936), PolyRefl.mkT 62 10 18 2 0 (253287936), PolyRefl.mkT 62 10 20 0 0 (-82295552), PolyRefl.mkT 64 8 16 4 0 (30474640), PolyRefl.mkT 64 8 18 2 0 (-30474640), PolyRefl.mkT 64 8 20 0 0 (7964772), PolyRefl.mkT 66 6 16 4 0 (-2012864), PolyRefl.mkT 66 6 18 2 0 (2012864), PolyRefl.mkT 66 6 20 0 0 (-487712), PolyRefl.mkT 68 4 16 4 0 (79200), PolyRefl.mkT 68 4 18 2 0 (-79200), PolyRefl.mkT 68 4 20 0 0 (18808), PolyRefl.mkT 70 2 16 4 0 (-1728), PolyRefl.mkT 70 2 18 2 0 (1728), PolyRefl.mkT 70 2 20 0 0 (-416), PolyRefl.mkT 72 0 16 4 0 (16), PolyRefl.mkT 72 0 18 2 0 (-16), PolyRefl.mkT 72 0 20 0 0 (4)]
def cp45_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 22 4 0 0 (405), PolyRefl.mkT 4 20 4 0 0 (-13014), PolyRefl.mkT 6 18 4 0 0 (144265), PolyRefl.mkT 8 16 4 0 0 (-709064), PolyRefl.mkT 10 14 4 0 0 (1570586), PolyRefl.mkT 12 12 4 0 0 (-1411076), PolyRefl.mkT 14 10 4 0 0 (656906), PolyRefl.mkT 16 8 4 0 0 (-182600), PolyRefl.mkT 18 6 4 0 0 (28561), PolyRefl.mkT 20 4 4 0 0 (-2070), PolyRefl.mkT 22 2 4 0 0 (45)]
def cp46_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (12), PolyRefl.mkT 1 3 0 0 2 (24), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 2 2 0 1 1 (-24), PolyRefl.mkT 3 1 0 0 2 (-8), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 4 0 0 1 1 (-4)]
def cp47_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (3), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 1 3 2 0 0 (6), PolyRefl.mkT 2 2 0 1 1 (-6), PolyRefl.mkT 3 1 2 0 0 (-2), PolyRefl.mkT 4 0 0 1 1 (-1)]
def cp48_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 2 0 (9), PolyRefl.mkT 2 6 0 2 0 (-36), PolyRefl.mkT 4 4 0 2 0 (30), PolyRefl.mkT 6 2 0 2 0 (12), PolyRefl.mkT 8 0 0 2 0 (1)]
def cp49_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (3), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 1 3 2 0 0 (-6), PolyRefl.mkT 2 2 0 1 1 (-6), PolyRefl.mkT 3 1 2 0 0 (2), PolyRefl.mkT 4 0 0 1 1 (-1)]
def cp50_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 4 0 (9), PolyRefl.mkT 0 8 2 2 0 (-9), PolyRefl.mkT 2 6 0 4 0 (28), PolyRefl.mkT 2 6 2 2 0 (-60), PolyRefl.mkT 2 6 4 0 0 (36), PolyRefl.mkT 4 4 0 4 0 (30), PolyRefl.mkT 4 4 2 2 0 (2), PolyRefl.mkT 4 4 4 0 0 (-24), PolyRefl.mkT 6 2 0 4 0 (12), PolyRefl.mkT 6 2 2 2 0 (-12), PolyRefl.mkT 6 2 4 0 0 (4), PolyRefl.mkT 8 0 0 4 0 (1), PolyRefl.mkT 8 0 2 2 0 (-1)]
def cp51_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 16 0 2 0 (81), PolyRefl.mkT 0 16 2 0 0 (-81), PolyRefl.mkT 2 14 0 2 0 (-576), PolyRefl.mkT 2 14 2 0 0 (432), PolyRefl.mkT 4 12 0 2 0 (484), PolyRefl.mkT 4 12 2 0 0 (2908), PolyRefl.mkT 6 10 0 2 0 (5200), PolyRefl.mkT 6 10 2 0 0 (-18336), PolyRefl.mkT 8 8 0 2 0 (5710), PolyRefl.mkT 8 8 2 0 0 (6834), PolyRefl.mkT 10 6 0 2 0 (1120), PolyRefl.mkT 10 6 2 0 0 (-4240), PolyRefl.mkT 12 4 0 2 0 (-524), PolyRefl.mkT 12 4 2 0 0 (972), PolyRefl.mkT 14 2 0 2 0 (16), PolyRefl.mkT 16 0 0 2 0 (9), PolyRefl.mkT 16 0 2 0 0 (-9)]
def cp52_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 4 52 20 0 0 (3), PolyRefl.mkT 6 50 20 0 0 (-352), PolyRefl.mkT 8 48 20 0 0 (17340), PolyRefl.mkT 10 46 20 0 0 (-470816), PolyRefl.mkT 12 44 20 0 0 (7835142), PolyRefl.mkT 14 42 20 0 0 (-84858784), PolyRefl.mkT 16 40 20 0 0 (624421836), PolyRefl.mkT 18 38 20 0 0 (-3226015456), PolyRefl.mkT 20 36 20 0 0 (12000797901), PolyRefl.mkT 22 34 20 0 0 (-32757760448), PolyRefl.mkT 24 32 20 0 0 (66510300280), PolyRefl.mkT 26 30 20 0 0 (-101369847616), PolyRefl.mkT 28 28 20 0 0 (116591161940), PolyRefl.mkT 30 26 20 0 0 (-101369847616), PolyRefl.mkT 32 24 20 0 0 (66510300280), PolyRefl.mkT 34 22 20 0 0 (-32757760448), PolyRefl.mkT 36 20 20 0 0 (12000797901), PolyRefl.mkT 38 18 20 0 0 (-3226015456), PolyRefl.mkT 40 16 20 0 0 (624421836), PolyRefl.mkT 42 14 20 0 0 (-84858784), PolyRefl.mkT 44 12 20 0 0 (7835142), PolyRefl.mkT 46 10 20 0 0 (-470816), PolyRefl.mkT 48 8 20 0 0 (17340), PolyRefl.mkT 50 6 20 0 0 (-352), PolyRefl.mkT 52 4 20 0 0 (3)]
def cp53_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-16), PolyRefl.mkT 0 4 0 3 1 (16), PolyRefl.mkT 1 3 0 0 4 (8), PolyRefl.mkT 1 3 0 2 2 (16), PolyRefl.mkT 1 3 0 4 0 (8), PolyRefl.mkT 2 2 0 1 3 (96), PolyRefl.mkT 2 2 0 3 1 (-96), PolyRefl.mkT 3 1 0 0 4 (-8), PolyRefl.mkT 3 1 0 2 2 (-16), PolyRefl.mkT 3 1 0 4 0 (-8), PolyRefl.mkT 4 0 0 1 3 (-16), PolyRefl.mkT 4 0 0 3 1 (16)]
def cp54_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-16), PolyRefl.mkT 1 3 0 0 2 (8), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 1 3 2 0 0 (8), PolyRefl.mkT 2 2 0 1 1 (96), PolyRefl.mkT 3 1 0 0 2 (-8), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 3 1 2 0 0 (-8), PolyRefl.mkT 4 0 0 1 1 (-16)]
def cp55_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (4), PolyRefl.mkT 0 4 2 1 1 (-2), PolyRefl.mkT 1 3 4 0 0 (1), PolyRefl.mkT 2 2 0 3 1 (-24), PolyRefl.mkT 2 2 2 1 1 (12), PolyRefl.mkT 3 1 4 0 0 (-1), PolyRefl.mkT 4 0 0 3 1 (4), PolyRefl.mkT 4 0 2 1 1 (-2)]
def cp56_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (4), PolyRefl.mkT 0 4 2 1 1 (-2), PolyRefl.mkT 1 3 4 0 0 (-1), PolyRefl.mkT 2 2 0 3 1 (-24), PolyRefl.mkT 2 2 2 1 1 (12), PolyRefl.mkT 3 1 4 0 0 (1), PolyRefl.mkT 4 0 0 3 1 (4), PolyRefl.mkT 4 0 2 1 1 (-2)]
def cp57_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-8), PolyRefl.mkT 0 4 0 3 1 (-8), PolyRefl.mkT 1 3 0 0 4 (8), PolyRefl.mkT 1 3 0 2 2 (-112), PolyRefl.mkT 1 3 0 4 0 (8), PolyRefl.mkT 2 2 0 1 3 (-16), PolyRefl.mkT 2 2 0 3 1 (-16), PolyRefl.mkT 3 1 0 0 4 (-8), PolyRefl.mkT 3 1 0 2 2 (112), PolyRefl.mkT 3 1 0 4 0 (-8), PolyRefl.mkT 4 0 0 1 3 (-8), PolyRefl.mkT 4 0 0 3 1 (-8)]
def cp58_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-8), PolyRefl.mkT 1 3 0 0 2 (8), PolyRefl.mkT 1 3 0 2 0 (-120), PolyRefl.mkT 1 3 2 0 0 (8), PolyRefl.mkT 2 2 0 1 1 (-16), PolyRefl.mkT 3 1 0 0 2 (-8), PolyRefl.mkT 3 1 0 2 0 (120), PolyRefl.mkT 3 1 2 0 0 (-8), PolyRefl.mkT 4 0 0 1 1 (-8)]
def cp59_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 2 1 1 (-1), PolyRefl.mkT 1 3 0 4 0 (16), PolyRefl.mkT 1 3 2 2 0 (-16), PolyRefl.mkT 1 3 4 0 0 (1), PolyRefl.mkT 2 2 2 1 1 (-2), PolyRefl.mkT 3 1 0 4 0 (-16), PolyRefl.mkT 3 1 2 2 0 (16), PolyRefl.mkT 3 1 4 0 0 (-1), PolyRefl.mkT 4 0 2 1 1 (-1)]
def cp60_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 4 2 0 (1), PolyRefl.mkT 2 6 4 2 0 (4), PolyRefl.mkT 4 4 4 2 0 (6), PolyRefl.mkT 6 2 4 2 0 (4), PolyRefl.mkT 8 0 4 2 0 (1)]
def cp61_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 2 1 1 (-1), PolyRefl.mkT 1 3 0 4 0 (-16), PolyRefl.mkT 1 3 2 2 0 (16), PolyRefl.mkT 1 3 4 0 0 (-1), PolyRefl.mkT 2 2 2 1 1 (-2), PolyRefl.mkT 3 1 0 4 0 (16), PolyRefl.mkT 3 1 2 2 0 (-16), PolyRefl.mkT 3 1 4 0 0 (1), PolyRefl.mkT 4 0 2 1 1 (-1)]
def cp62_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 4 4 0 (1), PolyRefl.mkT 0 8 6 2 0 (-1), PolyRefl.mkT 2 6 0 8 0 (256), PolyRefl.mkT 2 6 2 6 0 (-512), PolyRefl.mkT 2 6 4 4 0 (292), PolyRefl.mkT 2 6 6 2 0 (-36), PolyRefl.mkT 2 6 8 0 0 (1), PolyRefl.mkT 4 4 0 8 0 (-512), PolyRefl.mkT 4 4 2 6 0 (1024), PolyRefl.mkT 4 4 4 4 0 (-570), PolyRefl.mkT 4 4 6 2 0 (58), PolyRefl.mkT 4 4 8 0 0 (-2), PolyRefl.mkT 6 2 0 8 0 (256), PolyRefl.mkT 6 2 2 6 0 (-512), PolyRefl.mkT 6 2 4 4 0 (292), PolyRefl.mkT 6 2 6 2 0 (-36), PolyRefl.mkT 6 2 8 0 0 (1), PolyRefl.mkT 8 0 4 4 0 (1), PolyRefl.mkT 8 0 6 2 0 (-1)]
def cp63_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 6 0 0 0 (256), PolyRefl.mkT 4 4 0 0 0 (-512), PolyRefl.mkT 6 2 0 0 0 (256)]
def cp64_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (16), PolyRefl.mkT 2 6 0 0 0 (-192), PolyRefl.mkT 4 4 0 0 0 (608), PolyRefl.mkT 6 2 0 0 0 (-192), PolyRefl.mkT 8 0 0 0 0 (16)]
def cp65_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 16 4 4 0 (-1), PolyRefl.mkT 0 16 6 2 0 (1), PolyRefl.mkT 2 14 4 4 0 (40), PolyRefl.mkT 2 14 6 2 0 (-40), PolyRefl.mkT 2 14 8 0 0 (-1), PolyRefl.mkT 4 12 4 4 0 (-444), PolyRefl.mkT 4 12 6 2 0 (444), PolyRefl.mkT 4 12 8 0 0 (30), PolyRefl.mkT 6 10 4 4 0 (1944), PolyRefl.mkT 6 10 6 2 0 (-1944), PolyRefl.mkT 6 10 8 0 0 (-127), PolyRefl.mkT 8 8 4 4 0 (-3334), PolyRefl.mkT 8 8 6 2 0 (3334), PolyRefl.mkT 8 8 8 0 0 (196), PolyRefl.mkT 10 6 4 4 0 (1944), PolyRefl.mkT 10 6 6 2 0 (-1944), PolyRefl.mkT 10 6 8 0 0 (-127), PolyRefl.mkT 12 4 4 4 0 (-444), PolyRefl.mkT 12 4 6 2 0 (444), PolyRefl.mkT 12 4 8 0 0 (30), PolyRefl.mkT 14 2 4 4 0 (40), PolyRefl.mkT 14 2 6 2 0 (-40), PolyRefl.mkT 14 2 8 0 0 (-1), PolyRefl.mkT 16 0 4 4 0 (-1), PolyRefl.mkT 16 0 6 2 0 (1)]
def cp66_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 48 12 0 0 (-1), PolyRefl.mkT 2 46 12 0 0 (120), PolyRefl.mkT 4 44 12 0 0 (-6132), PolyRefl.mkT 6 42 12 0 0 (176392), PolyRefl.mkT 8 40 12 0 0 (-3199170), PolyRefl.mkT 10 38 12 0 0 (38972328), PolyRefl.mkT 12 36 12 0 0 (-331371300), PolyRefl.mkT 14 34 12 0 0 (2011968984), PolyRefl.mkT 16 32 12 0 0 (-8827572207), PolyRefl.mkT 18 30 12 0 0 (28095047472), PolyRefl.mkT 20 28 12 0 0 (-64722661608), PolyRefl.mkT 22 26 12 0 0 (107288593872), PolyRefl.mkT 24 24 12 0 0 (-127116674716), PolyRefl.mkT 26 22 12 0 0 (107288593872), PolyRefl.mkT 28 20 12 0 0 (-64722661608), PolyRefl.mkT 30 18 12 0 0 (28095047472), PolyRefl.mkT 32 16 12 0 0 (-8827572207), PolyRefl.mkT 34 14 12 0 0 (2011968984), PolyRefl.mkT 36 12 12 0 0 (-331371300), PolyRefl.mkT 38 10 12 0 0 (38972328), PolyRefl.mkT 40 8 12 0 0 (-3199170), PolyRefl.mkT 42 6 12 0 0 (176392), PolyRefl.mkT 44 4 12 0 0 (-6132), PolyRefl.mkT 46 2 12 0 0 (120), PolyRefl.mkT 48 0 12 0 0 (-1)]
def cp67_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 40 12 0 0 (1), PolyRefl.mkT 2 38 8 4 0 (256), PolyRefl.mkT 2 38 10 2 0 (-256), PolyRefl.mkT 2 38 12 0 0 (-44), PolyRefl.mkT 4 36 8 4 0 (-20992), PolyRefl.mkT 4 36 10 2 0 (20992), PolyRefl.mkT 4 36 12 0 0 (-706), PolyRefl.mkT 6 34 8 4 0 (678144), PolyRefl.mkT 6 34 10 2 0 (-678144), PolyRefl.mkT 6 34 12 0 0 (73268), PolyRefl.mkT 8 32 8 4 0 (-11382784), PolyRefl.mkT 8 32 10 2 0 (11382784), PolyRefl.mkT 8 32 12 0 0 (-1696019), PolyRefl.mkT 10 30 8 4 0 (112800768), PolyRefl.mkT 10 30 10 2 0 (-112800768), PolyRefl.mkT 10 30 12 0 0 (19496848), PolyRefl.mkT 12 28 8 4 0 (-705263616), PolyRefl.mkT 12 28 10 2 0 (705263616), PolyRefl.mkT 12 28 12 0 0 (-130476696), PolyRefl.mkT 14 26 8 4 0 (2879800320), PolyRefl.mkT 14 26 10 2 0 (-2879800320), PolyRefl.mkT 14 26 12 0 0 (544918992), PolyRefl.mkT 16 24 8 4 0 (-7811485696), PolyRefl.mkT 16 24 10 2 0 (7811485696), PolyRefl.mkT 16 24 12 0 0 (-1476280302), PolyRefl.mkT 18 22 8 4 0 (14186589696), PolyRefl.mkT 18 22 10 2 0 (-14186589696), PolyRefl.mkT 18 22 12 0 0 (2656998552), PolyRefl.mkT 20 20 8 4 0 (-17303432192), PolyRefl.mkT 20 20 10 2 0 (17303432192), PolyRefl.mkT 20 20 12 0 0 (-3225019212), PolyRefl.mkT 22 18 8 4 0 (14186589696), PolyRefl.mkT 22 18 10 2 0 (-14186589696), PolyRefl.mkT 22 18 12 0 0 (2656998552), PolyRefl.mkT 24 16 8 4 0 (-7811485696), PolyRefl.mkT 24 16 10 2 0 (7811485696), PolyRefl.mkT 24 16 12 0 0 (-1476280302), PolyRefl.mkT 26 14 8 4 0 (2879800320), PolyRefl.mkT 26 14 10 2 0 (-2879800320), PolyRefl.mkT 26 14 12 0 0 (544918992), PolyRefl.mkT 28 12 8 4 0 (-705263616), PolyRefl.mkT 28 12 10 2 0 (705263616), PolyRefl.mkT 28 12 12 0 0 (-130476696), PolyRefl.mkT 30 10 8 4 0 (112800768), PolyRefl.mkT 30 10 10 2 0 (-112800768), PolyRefl.mkT 30 10 12 0 0 (19496848), PolyRefl.mkT 32 8 8 4 0 (-11382784), PolyRefl.mkT 32 8 10 2 0 (11382784), PolyRefl.mkT 32 8 12 0 0 (-1696019), PolyRefl.mkT 34 6 8 4 0 (678144), PolyRefl.mkT 34 6 10 2 0 (-678144), PolyRefl.mkT 34 6 12 0 0 (73268), PolyRefl.mkT 36 4 8 4 0 (-20992), PolyRefl.mkT 36 4 10 2 0 (20992), PolyRefl.mkT 36 4 12 0 0 (-706), PolyRefl.mkT 38 2 8 4 0 (256), PolyRefl.mkT 38 2 10 2 0 (-256), PolyRefl.mkT 38 2 12 0 0 (-44), PolyRefl.mkT 40 0 12 0 0 (1)]
def cp68_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 12 92 32 0 0 (-1), PolyRefl.mkT 14 90 32 0 0 (208), PolyRefl.mkT 16 88 32 0 0 (-17836), PolyRefl.mkT 18 86 32 0 0 (844208), PolyRefl.mkT 20 84 32 0 0 (-25036606), PolyRefl.mkT 22 82 32 0 0 (503786800), PolyRefl.mkT 24 80 32 0 0 (-7320718156), PolyRefl.mkT 26 78 32 0 0 (80904767824), PolyRefl.mkT 28 76 32 0 0 (-706955628269), PolyRefl.mkT 30 74 32 0 0 (5008442680128), PolyRefl.mkT 32 72 32 0 0 (-29176726445680), PolyRefl.mkT 34 70 32 0 0 (140856924210880), PolyRefl.mkT 36 68 32 0 0 (-566512166972776), PolyRefl.mkT 38 66 32 0 0 (1907012600339392), PolyRefl.mkT 40 64 32 0 0 (-5397868740896816), PolyRefl.mkT 42 62 32 0 0 (12905674231547456), PolyRefl.mkT 44 60 32 0 0 (-26172309609549842), PolyRefl.mkT 46 58 32 0 0 (45182884672920672), PolyRefl.mkT 48 56 32 0 0 (-66594100335323240), PolyRefl.mkT 50 54 32 0 0 (83973669794758304), PolyRefl.mkT 52 52 32 0 0 (-90709012390533300), PolyRefl.mkT 54 50 32 0 0 (83973669794758304), PolyRefl.mkT 56 48 32 0 0 (-66594100335323240), PolyRefl.mkT 58 46 32 0 0 (45182884672920672), PolyRefl.mkT 60 44 32 0 0 (-26172309609549842), PolyRefl.mkT 62 42 32 0 0 (12905674231547456), PolyRefl.mkT 64 40 32 0 0 (-5397868740896816), PolyRefl.mkT 66 38 32 0 0 (1907012600339392), PolyRefl.mkT 68 36 32 0 0 (-566512166972776), PolyRefl.mkT 70 34 32 0 0 (140856924210880), PolyRefl.mkT 72 32 32 0 0 (-29176726445680), PolyRefl.mkT 74 30 32 0 0 (5008442680128), PolyRefl.mkT 76 28 32 0 0 (-706955628269), PolyRefl.mkT 78 26 32 0 0 (80904767824), PolyRefl.mkT 80 24 32 0 0 (-7320718156), PolyRefl.mkT 82 22 32 0 0 (503786800), PolyRefl.mkT 84 20 32 0 0 (-25036606), PolyRefl.mkT 86 18 32 0 0 (844208), PolyRefl.mkT 88 16 32 0 0 (-17836), PolyRefl.mkT 90 14 32 0 0 (208), PolyRefl.mkT 92 12 32 0 0 (-1)]
def cp69_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 4 (2), PolyRefl.mkT 0 4 0 2 2 (4), PolyRefl.mkT 0 4 0 4 0 (2), PolyRefl.mkT 1 3 0 1 3 (-64), PolyRefl.mkT 1 3 0 3 1 (64), PolyRefl.mkT 2 2 0 0 4 (-12), PolyRefl.mkT 2 2 0 2 2 (-24), PolyRefl.mkT 2 2 0 4 0 (-12), PolyRefl.mkT 3 1 0 1 3 (64), PolyRefl.mkT 3 1 0 3 1 (-64), PolyRefl.mkT 4 0 0 0 4 (2), PolyRefl.mkT 4 0 0 2 2 (4), PolyRefl.mkT 4 0 0 4 0 (2)]
def cp70_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (2), PolyRefl.mkT 0 4 0 2 0 (2), PolyRefl.mkT 0 4 2 0 0 (2), PolyRefl.mkT 1 3 0 1 1 (-64), PolyRefl.mkT 2 2 0 0 2 (-12), PolyRefl.mkT 2 2 0 2 0 (-12), PolyRefl.mkT 2 2 2 0 0 (-12), PolyRefl.mkT 3 1 0 1 1 (64), PolyRefl.mkT 4 0 0 0 2 (2), PolyRefl.mkT 4 0 0 2 0 (2), PolyRefl.mkT 4 0 2 0 0 (2)]
def cp71_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 4 0 0 (1), PolyRefl.mkT 1 3 0 3 1 (64), PolyRefl.mkT 1 3 2 1 1 (-32), PolyRefl.mkT 2 2 4 0 0 (-6), PolyRefl.mkT 3 1 0 3 1 (-64), PolyRefl.mkT 3 1 2 1 1 (32), PolyRefl.mkT 4 0 4 0 0 (1)]
def cp72_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 6 0 6 0 (4096), PolyRefl.mkT 2 6 2 4 0 (-4096), PolyRefl.mkT 2 6 4 2 0 (1024), PolyRefl.mkT 4 4 0 6 0 (-8192), PolyRefl.mkT 4 4 2 4 0 (8192), PolyRefl.mkT 4 4 4 2 0 (-2048), PolyRefl.mkT 6 2 0 6 0 (4096), PolyRefl.mkT 6 2 2 4 0 (-4096), PolyRefl.mkT 6 2 4 2 0 (1024)]
def cp73_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 4 0 0 (-1), PolyRefl.mkT 1 3 0 3 1 (64), PolyRefl.mkT 1 3 2 1 1 (-32), PolyRefl.mkT 2 2 4 0 0 (6), PolyRefl.mkT 3 1 0 3 1 (-64), PolyRefl.mkT 3 1 2 1 1 (32), PolyRefl.mkT 4 0 4 0 0 (-1)]
def cp74_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 8 0 0 (1), PolyRefl.mkT 2 6 0 8 0 (4096), PolyRefl.mkT 2 6 2 6 0 (-8192), PolyRefl.mkT 2 6 4 4 0 (5120), PolyRefl.mkT 2 6 6 2 0 (-1024), PolyRefl.mkT 2 6 8 0 0 (-12), PolyRefl.mkT 4 4 0 8 0 (-8192), PolyRefl.mkT 4 4 2 6 0 (16384), PolyRefl.mkT 4 4 4 4 0 (-10240), PolyRefl.mkT 4 4 6 2 0 (2048), PolyRefl.mkT 4 4 8 0 0 (38), PolyRefl.mkT 6 2 0 8 0 (4096), PolyRefl.mkT 6 2 2 6 0 (-8192), PolyRefl.mkT 6 2 4 4 0 (5120), PolyRefl.mkT 6 2 6 2 0 (-1024), PolyRefl.mkT 6 2 8 0 0 (-12), PolyRefl.mkT 8 0 8 0 0 (1)]
def cp75_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 5 (-24), PolyRefl.mkT 0 4 0 3 3 (80), PolyRefl.mkT 0 4 0 5 1 (-24), PolyRefl.mkT 1 3 0 0 6 (-8), PolyRefl.mkT 1 3 0 2 4 (-24), PolyRefl.mkT 1 3 0 4 2 (-24), PolyRefl.mkT 1 3 0 6 0 (-8), PolyRefl.mkT 2 2 0 1 5 (144), PolyRefl.mkT 2 2 0 3 3 (-480), PolyRefl.mkT 2 2 0 5 1 (144), PolyRefl.mkT 3 1 0 0 6 (-8), PolyRefl.mkT 3 1 0 2 4 (-24), PolyRefl.mkT 3 1 0 4 2 (-24), PolyRefl.mkT 3 1 0 6 0 (-8), PolyRefl.mkT 4 0 0 1 5 (-24), PolyRefl.mkT 4 0 0 3 3 (80), PolyRefl.mkT 4 0 0 5 1 (-24)]
def cp76_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-24), PolyRefl.mkT 0 4 0 3 1 (104), PolyRefl.mkT 0 4 2 1 1 (-24), PolyRefl.mkT 1 3 0 0 4 (-8), PolyRefl.mkT 1 3 0 2 2 (-16), PolyRefl.mkT 1 3 0 4 0 (-8), PolyRefl.mkT 1 3 2 0 2 (-8), PolyRefl.mkT 1 3 2 2 0 (-8), PolyRefl.mkT 1 3 4 0 0 (-8), PolyRefl.mkT 2 2 0 1 3 (144), PolyRefl.mkT 2 2 0 3 1 (-624), PolyRefl.mkT 2 2 2 1 1 (144), PolyRefl.mkT 3 1 0 0 4 (-8), PolyRefl.mkT 3 1 0 2 2 (-16), PolyRefl.mkT 3 1 0 4 0 (-8), PolyRefl.mkT 3 1 2 0 2 (-8), PolyRefl.mkT 3 1 2 2 0 (-8), PolyRefl.mkT 3 1 4 0 0 (-8), PolyRefl.mkT 4 0 0 1 3 (-24), PolyRefl.mkT 4 0 0 3 1 (104), PolyRefl.mkT 4 0 2 1 1 (-24)]
def cp77_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (-16), PolyRefl.mkT 0 4 2 3 1 (16), PolyRefl.mkT 0 4 4 1 1 (-3), PolyRefl.mkT 1 3 6 0 0 (-1), PolyRefl.mkT 2 2 0 5 1 (96), PolyRefl.mkT 2 2 2 3 1 (-96), PolyRefl.mkT 2 2 4 1 1 (18), PolyRefl.mkT 3 1 6 0 0 (-1), PolyRefl.mkT 4 0 0 5 1 (-16), PolyRefl.mkT 4 0 2 3 1 (16), PolyRefl.mkT 4 0 4 1 1 (-3)]
def cp78_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 10 0 (256), PolyRefl.mkT 0 8 2 8 0 (-512), PolyRefl.mkT 0 8 4 6 0 (352), PolyRefl.mkT 0 8 6 4 0 (-96), PolyRefl.mkT 0 8 8 2 0 (9), PolyRefl.mkT 2 6 0 10 0 (-3072), PolyRefl.mkT 2 6 2 8 0 (6144), PolyRefl.mkT 2 6 4 6 0 (-4224), PolyRefl.mkT 2 6 6 4 0 (1152), PolyRefl.mkT 2 6 8 2 0 (-108), PolyRefl.mkT 4 4 0 10 0 (9728), PolyRefl.mkT 4 4 2 8 0 (-19456), PolyRefl.mkT 4 4 4 6 0 (13376), PolyRefl.mkT 4 4 6 4 0 (-3648), PolyRefl.mkT 4 4 8 2 0 (342), PolyRefl.mkT 6 2 0 10 0 (-3072), PolyRefl.mkT 6 2 2 8 0 (6144), PolyRefl.mkT 6 2 4 6 0 (-4224), PolyRefl.mkT 6 2 6 4 0 (1152), PolyRefl.mkT 6 2 8 2 0 (-108), PolyRefl.mkT 8 0 0 10 0 (256), PolyRefl.mkT 8 0 2 8 0 (-512), PolyRefl.mkT 8 0 4 6 0 (352), PolyRefl.mkT 8 0 6 4 0 (-96), PolyRefl.mkT 8 0 8 2 0 (9)]
def cp79_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (-16), PolyRefl.mkT 0 4 2 3 1 (16), PolyRefl.mkT 0 4 4 1 1 (-3), PolyRefl.mkT 1 3 6 0 0 (1), PolyRefl.mkT 2 2 0 5 1 (96), PolyRefl.mkT 2 2 2 3 1 (-96), PolyRefl.mkT 2 2 4 1 1 (18), PolyRefl.mkT 3 1 6 0 0 (1), PolyRefl.mkT 4 0 0 5 1 (-16), PolyRefl.mkT 4 0 2 3 1 (16), PolyRefl.mkT 4 0 4 1 1 (-3)]
def cp80_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 12 0 (256), PolyRefl.mkT 0 8 2 10 0 (-768), PolyRefl.mkT 0 8 4 8 0 (864), PolyRefl.mkT 0 8 6 6 0 (-448), PolyRefl.mkT 0 8 8 4 0 (105), PolyRefl.mkT 0 8 10 2 0 (-9), PolyRefl.mkT 2 6 0 12 0 (-3072), PolyRefl.mkT 2 6 2 10 0 (9216), PolyRefl.mkT 2 6 4 8 0 (-10368), PolyRefl.mkT 2 6 6 6 0 (5376), PolyRefl.mkT 2 6 8 4 0 (-1260), PolyRefl.mkT 2 6 10 2 0 (108), PolyRefl.mkT 2 6 12 0 0 (1), PolyRefl.mkT 4 4 0 12 0 (9728), PolyRefl.mkT 4 4 2 10 0 (-29184), PolyRefl.mkT 4 4 4 8 0 (32832), PolyRefl.mkT 4 4 6 6 0 (-17024), PolyRefl.mkT 4 4 8 4 0 (3990), PolyRefl.mkT 4 4 10 2 0 (-342), PolyRefl.mkT 4 4 12 0 0 (2), PolyRefl.mkT 6 2 0 12 0 (-3072), PolyRefl.mkT 6 2 2 10 0 (9216), PolyRefl.mkT 6 2 4 8 0 (-10368), PolyRefl.mkT 6 2 6 6 0 (5376), PolyRefl.mkT 6 2 8 4 0 (-1260), PolyRefl.mkT 6 2 10 2 0 (108), PolyRefl.mkT 6 2 12 0 0 (1), PolyRefl.mkT 8 0 0 12 0 (256), PolyRefl.mkT 8 0 2 10 0 (-768), PolyRefl.mkT 8 0 4 8 0 (864), PolyRefl.mkT 8 0 6 6 0 (-448), PolyRefl.mkT 8 0 8 4 0 (105), PolyRefl.mkT 8 0 10 2 0 (-9)]
def cp81_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 6 18 0 0 0 (68719476736), PolyRefl.mkT 8 16 0 0 0 (-412316860416), PolyRefl.mkT 10 14 0 0 0 (1030792151040), PolyRefl.mkT 12 12 0 0 0 (-1374389534720), PolyRefl.mkT 14 10 0 0 0 (1030792151040), PolyRefl.mkT 16 8 0 0 0 (-412316860416), PolyRefl.mkT 18 6 0 0 0 (68719476736)]
def cp82_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 4 20 0 4 0 (4294967296), PolyRefl.mkT 4 20 2 2 0 (-4294967296), PolyRefl.mkT 4 20 4 0 0 (536870912), PolyRefl.mkT 6 18 0 4 0 (-68719476736), PolyRefl.mkT 6 18 2 2 0 (68719476736), PolyRefl.mkT 6 18 4 0 0 (-8589934592), PolyRefl.mkT 8 16 0 4 0 (395136991232), PolyRefl.mkT 8 16 2 2 0 (-395136991232), PolyRefl.mkT 8 16 4 0 0 (49392123904), PolyRefl.mkT 10 14 0 4 0 (-1030792151040), PolyRefl.mkT 10 14 2 2 0 (1030792151040), PolyRefl.mkT 10 14 4 0 0 (-128849018880), PolyRefl.mkT 12 12 0 4 0 (1400159338496), PolyRefl.mkT 12 12 2 2 0 (-1400159338496), PolyRefl.mkT 12 12 4 0 0 (175019917312), PolyRefl.mkT 14 10 0 4 0 (-1030792151040), PolyRefl.mkT 14 10 2 2 0 (1030792151040), PolyRefl.mkT 14 10 4 0 0 (-128849018880), PolyRefl.mkT 16 8 0 4 0 (395136991232), PolyRefl.mkT 16 8 2 2 0 (-395136991232), PolyRefl.mkT 16 8 4 0 0 (49392123904), PolyRefl.mkT 18 6 0 4 0 (-68719476736), PolyRefl.mkT 18 6 2 2 0 (68719476736), PolyRefl.mkT 18 6 4 0 0 (-8589934592), PolyRefl.mkT 20 4 0 4 0 (4294967296), PolyRefl.mkT 20 4 2 2 0 (-4294967296), PolyRefl.mkT 20 4 4 0 0 (536870912)]
def cp83_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 4 28 8 4 0 (-8), PolyRefl.mkT 4 28 10 2 0 (8), PolyRefl.mkT 4 28 12 0 0 (-1), PolyRefl.mkT 6 26 8 4 0 (352), PolyRefl.mkT 6 26 10 2 0 (-352), PolyRefl.mkT 6 26 12 0 0 (28), PolyRefl.mkT 8 24 8 4 0 (-4880), PolyRefl.mkT 8 24 10 2 0 (4880), PolyRefl.mkT 8 24 12 0 0 (-194), PolyRefl.mkT 10 22 8 4 0 (31712), PolyRefl.mkT 10 22 10 2 0 (-31712), PolyRefl.mkT 10 22 12 0 0 (1452), PolyRefl.mkT 12 20 8 4 0 (-111480), PolyRefl.mkT 12 20 10 2 0 (111480), PolyRefl.mkT 12 20 12 0 0 (-6383), PolyRefl.mkT 14 18 8 4 0 (230080), PolyRefl.mkT 14 18 10 2 0 (-230080), PolyRefl.mkT 14 18 12 0 0 (14904), PolyRefl.mkT 16 16 8 4 0 (-291552), PolyRefl.mkT 16 16 10 2 0 (291552), PolyRefl.mkT 16 16 12 0 0 (-19612), PolyRefl.mkT 18 14 8 4 0 (230080), PolyRefl.mkT 18 14 10 2 0 (-230080), PolyRefl.mkT 18 14 12 0 0 (14904), PolyRefl.mkT 20 12 8 4 0 (-111480), PolyRefl.mkT 20 12 10 2 0 (111480), PolyRefl.mkT 20 12 12 0 0 (-6383), PolyRefl.mkT 22 10 8 4 0 (31712), PolyRefl.mkT 22 10 10 2 0 (-31712), PolyRefl.mkT 22 10 12 0 0 (1452), PolyRefl.mkT 24 8 8 4 0 (-4880), PolyRefl.mkT 24 8 10 2 0 (4880), PolyRefl.mkT 24 8 12 0 0 (-194), PolyRefl.mkT 26 6 8 4 0 (352), PolyRefl.mkT 26 6 10 2 0 (-352), PolyRefl.mkT 26 6 12 0 0 (28), PolyRefl.mkT 28 4 8 4 0 (-8), PolyRefl.mkT 28 4 10 2 0 (8), PolyRefl.mkT 28 4 12 0 0 (-1)]
def cp84_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 12 84 24 0 0 (-512), PolyRefl.mkT 14 82 24 0 0 (67584), PolyRefl.mkT 16 80 24 0 0 (-3910656), PolyRefl.mkT 18 78 24 0 0 (132155392), PolyRefl.mkT 20 76 24 0 0 (-2942710272), PolyRefl.mkT 22 74 24 0 0 (46291697664), PolyRefl.mkT 24 72 24 0 0 (-538686464000), PolyRefl.mkT 26 70 24 0 0 (4790629318656), PolyRefl.mkT 28 68 24 0 0 (-33354071599104), PolyRefl.mkT 30 66 24 0 0 (185195776139264), PolyRefl.mkT 32 64 24 0 0 (-832056242196480), PolyRefl.mkT 34 62 24 0 0 (3060379193991168), PolyRefl.mkT 36 60 24 0 0 (-9302522652395520), PolyRefl.mkT 38 58 24 0 0 (23548272318726144), PolyRefl.mkT 40 56 24 0 0 (-49949360226951168), PolyRefl.mkT 42 54 24 0 0 (89212099945086976), PolyRefl.mkT 44 52 24 0 0 (-134659130627251200), PolyRefl.mkT 46 50 24 0 0 (172219591864528896), PolyRefl.mkT 48 48 24 0 0 (-186906821396465664), PolyRefl.mkT 50 46 24 0 0 (172219591864528896), PolyRefl.mkT 52 44 24 0 0 (-134659130627251200), PolyRefl.mkT 54 42 24 0 0 (89212099945086976), PolyRefl.mkT 56 40 24 0 0 (-49949360226951168), PolyRefl.mkT 58 38 24 0 0 (23548272318726144), PolyRefl.mkT 60 36 24 0 0 (-9302522652395520), PolyRefl.mkT 62 34 24 0 0 (3060379193991168), PolyRefl.mkT 64 32 24 0 0 (-832056242196480), PolyRefl.mkT 66 30 24 0 0 (185195776139264), PolyRefl.mkT 68 28 24 0 0 (-33354071599104), PolyRefl.mkT 70 26 24 0 0 (4790629318656), PolyRefl.mkT 72 24 24 0 0 (-538686464000), PolyRefl.mkT 74 22 24 0 0 (46291697664), PolyRefl.mkT 76 20 24 0 0 (-2942710272), PolyRefl.mkT 78 18 24 0 0 (132155392), PolyRefl.mkT 80 16 24 0 0 (-3910656), PolyRefl.mkT 82 14 24 0 0 (67584), PolyRefl.mkT 84 12 24 0 0 (-512)]
def cp85_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 10 62 16 4 0 (262144), PolyRefl.mkT 10 62 18 2 0 (-262144), PolyRefl.mkT 10 62 20 0 0 (32768), PolyRefl.mkT 12 60 16 4 0 (-23592960), PolyRefl.mkT 12 60 18 2 0 (23592960), PolyRefl.mkT 12 60 20 0 0 (-3473408), PolyRefl.mkT 14 58 16 4 0 (873725952), PolyRefl.mkT 14 58 18 2 0 (-873725952), PolyRefl.mkT 14 58 20 0 0 (146964480), PolyRefl.mkT 16 56 16 4 0 (-17827889152), PolyRefl.mkT 16 56 18 2 0 (17827889152), PolyRefl.mkT 16 56 20 0 0 (-3304325120), PolyRefl.mkT 18 54 16 4 0 (229421613056), PolyRefl.mkT 18 54 18 2 0 (-229421613056), PolyRefl.mkT 18 54 20 0 0 (44980961280), PolyRefl.mkT 20 52 16 4 0 (-2013027893248), PolyRefl.mkT 20 52 18 2 0 (2013027893248), PolyRefl.mkT 20 52 20 0 0 (-404050542592), PolyRefl.mkT 22 50 16 4 0 (12663213522944), PolyRefl.mkT 22 50 18 2 0 (-12663213522944), PolyRefl.mkT 22 50 20 0 0 (2545758699520), PolyRefl.mkT 24 48 16 4 0 (-59135460638720), PolyRefl.mkT 24 48 18 2 0 (59135460638720), PolyRefl.mkT 24 48 20 0 0 (-11761250205696), PolyRefl.mkT 26 46 16 4 0 (210288939630592), PolyRefl.mkT 26 46 18 2 0 (-210288939630592), PolyRefl.mkT 26 46 20 0 0 (41154610561024), PolyRefl.mkT 28 44 16 4 0 (-580399132049408), PolyRefl.mkT 28 44 18 2 0 (580399132049408), PolyRefl.mkT 28 44 20 0 0 (-111676296462336), PolyRefl.mkT 30 42 16 4 0 (1261171409420288), PolyRefl.mkT 30 42 18 2 0 (-1261171409420288), PolyRefl.mkT 30 42 20 0 0 (239041601306624), PolyRefl.mkT 32 40 16 4 0 (-2180078913978368), PolyRefl.mkT 32 40 18 2 0 (2180078913978368), PolyRefl.mkT 32 40 20 0 0 (-408466252890112), PolyRefl.mkT 34 38 16 4 0 (3019245769195520), PolyRefl.mkT 34 38 18 2 0 (-3019245769195520), PolyRefl.mkT 34 38 20 0 0 (561637831606272), PolyRefl.mkT 36 36 16 4 0 (-3363910482657280), PolyRefl.mkT 36 36 18 2 0 (3363910482657280), PolyRefl.mkT 36 36 20 0 0 (-624227544465408), PolyRefl.mkT 38 34 16 4 0 (3019245769195520), PolyRefl.mkT 38 34 18 2 0 (-3019245769195520), PolyRefl.mkT 38 34 20 0 0 (561637831606272), PolyRefl.mkT 40 32 16 4 0 (-2180078913978368), PolyRefl.mkT 40 32 18 2 0 (2180078913978368), PolyRefl.mkT 40 32 20 0 0 (-408466252890112), PolyRefl.mkT 42 30 16 4 0 (1261171409420288), PolyRefl.mkT 42 30 18 2 0 (-1261171409420288), PolyRefl.mkT 42 30 20 0 0 (239041601306624), PolyRefl.mkT 44 28 16 4 0 (-580399132049408), PolyRefl.mkT 44 28 18 2 0 (580399132049408), PolyRefl.mkT 44 28 20 0 0 (-111676296462336), PolyRefl.mkT 46 26 16 4 0 (210288939630592), PolyRefl.mkT 46 26 18 2 0 (-210288939630592), PolyRefl.mkT 46 26 20 0 0 (41154610561024), PolyRefl.mkT 48 24 16 4 0 (-59135460638720), PolyRefl.mkT 48 24 18 2 0 (59135460638720), PolyRefl.mkT 48 24 20 0 0 (-11761250205696), PolyRefl.mkT 50 22 16 4 0 (12663213522944), PolyRefl.mkT 50 22 18 2 0 (-12663213522944), PolyRefl.mkT 50 22 20 0 0 (2545758699520), PolyRefl.mkT 52 20 16 4 0 (-2013027893248), PolyRefl.mkT 52 20 18 2 0 (2013027893248), PolyRefl.mkT 52 20 20 0 0 (-404050542592), PolyRefl.mkT 54 18 16 4 0 (229421613056), PolyRefl.mkT 54 18 18 2 0 (-229421613056), PolyRefl.mkT 54 18 20 0 0 (44980961280), PolyRefl.mkT 56 16 16 4 0 (-17827889152), PolyRefl.mkT 56 16 18 2 0 (17827889152), PolyRefl.mkT 56 16 20 0 0 (-3304325120), PolyRefl.mkT 58 14 16 4 0 (873725952), PolyRefl.mkT 58 14 18 2 0 (-873725952), PolyRefl.mkT 58 14 20 0 0 (146964480), PolyRefl.mkT 60 12 16 4 0 (-23592960), PolyRefl.mkT 60 12 18 2 0 (23592960), PolyRefl.mkT 60 12 20 0 0 (-3473408), PolyRefl.mkT 62 10 16 4 0 (262144), PolyRefl.mkT 62 10 18 2 0 (-262144), PolyRefl.mkT 62 10 20 0 0 (32768)]
def cp86_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 12 86 32 0 0 (-1), PolyRefl.mkT 14 84 32 0 0 (139), PolyRefl.mkT 16 82 32 0 0 (-5770), PolyRefl.mkT 18 80 32 0 0 (38886), PolyRefl.mkT 20 78 32 0 0 (2350947), PolyRefl.mkT 22 76 32 0 0 (-43388089), PolyRefl.mkT 24 74 32 0 0 (42175696), PolyRefl.mkT 26 72 32 0 0 (3958985424), PolyRefl.mkT 28 70 32 0 0 (-37177306900), PolyRefl.mkT 30 68 32 0 0 (125507051804), PolyRefl.mkT 32 66 32 0 0 (237663031720), PolyRefl.mkT 34 64 32 0 0 (-4626368960664), PolyRefl.mkT 36 62 32 0 0 (25950155371852), PolyRefl.mkT 38 60 32 0 0 (-93932209822948), PolyRefl.mkT 40 58 32 0 0 (252139554525488), PolyRefl.mkT 42 56 32 0 0 (-530949041523664), PolyRefl.mkT 44 54 32 0 0 (903916168213170), PolyRefl.mkT 46 52 32 0 0 (-1267300394750694), PolyRefl.mkT 48 50 32 0 0 (1481037236608132), PolyRefl.mkT 50 48 32 0 0 (-1454584822771036), PolyRefl.mkT 52 46 32 0 0 (1207218494059578), PolyRefl.mkT 54 44 32 0 0 (-849642948926158), PolyRefl.mkT 56 42 32 0 0 (508096076738224), PolyRefl.mkT 58 40 32 0 0 (-258344309388624), PolyRefl.mkT 60 38 32 0 0 (111623746317468), PolyRefl.mkT 62 36 32 0 0 (-40911507698164), PolyRefl.mkT 64 34 32 0 0 (12678811655720), PolyRefl.mkT 66 32 32 0 0 (-3305842749720), PolyRefl.mkT 68 30 32 0 0 (719764059228), PolyRefl.mkT 70 28 32 0 0 (-129404510612), PolyRefl.mkT 72 26 32 0 0 (18895691856), PolyRefl.mkT 74 24 32 0 0 (-2186558640), PolyRefl.mkT 76 22 32 0 0 (193352135), PolyRefl.mkT 78 20 32 0 0 (-12383949), PolyRefl.mkT 80 18 32 0 0 (531766), PolyRefl.mkT 82 16 32 0 0 (-13786), PolyRefl.mkT 84 14 32 0 0 (187), PolyRefl.mkT 86 12 32 0 0 (-1)]
def cp87_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 0 6 (4), PolyRefl.mkT 0 3 0 2 4 (-60), PolyRefl.mkT 0 3 0 4 2 (60), PolyRefl.mkT 0 3 0 6 0 (-4), PolyRefl.mkT 1 2 0 1 5 (72), PolyRefl.mkT 1 2 0 3 3 (-240), PolyRefl.mkT 1 2 0 5 1 (72), PolyRefl.mkT 2 1 0 0 6 (4), PolyRefl.mkT 2 1 0 2 4 (-60), PolyRefl.mkT 2 1 0 4 2 (60), PolyRefl.mkT 2 1 0 6 0 (-4), PolyRefl.mkT 3 0 0 1 5 (-24), PolyRefl.mkT 3 0 0 3 3 (80), PolyRefl.mkT 3 0 0 5 1 (-24)]
def cp88_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 0 4 (4), PolyRefl.mkT 0 3 0 2 2 (-64), PolyRefl.mkT 0 3 0 4 0 (124), PolyRefl.mkT 0 3 2 0 2 (4), PolyRefl.mkT 0 3 2 2 0 (-68), PolyRefl.mkT 0 3 4 0 0 (4), PolyRefl.mkT 1 2 0 1 3 (72), PolyRefl.mkT 1 2 0 3 1 (-312), PolyRefl.mkT 1 2 2 1 1 (72), PolyRefl.mkT 2 1 0 0 4 (4), PolyRefl.mkT 2 1 0 2 2 (-64), PolyRefl.mkT 2 1 0 4 0 (124), PolyRefl.mkT 2 1 2 0 2 (4), PolyRefl.mkT 2 1 2 2 0 (-68), PolyRefl.mkT 2 1 4 0 0 (4), PolyRefl.mkT 3 0 0 1 3 (-24), PolyRefl.mkT 3 0 0 3 1 (104), PolyRefl.mkT 3 0 2 1 1 (-24)]
def cp89_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 6 0 (-32), PolyRefl.mkT 0 3 2 4 0 (48), PolyRefl.mkT 0 3 4 2 0 (-18), PolyRefl.mkT 0 3 6 0 0 (1), PolyRefl.mkT 1 2 0 5 1 (96), PolyRefl.mkT 1 2 2 3 1 (-96), PolyRefl.mkT 1 2 4 1 1 (18), PolyRefl.mkT 2 1 0 6 0 (-32), PolyRefl.mkT 2 1 2 4 0 (48), PolyRefl.mkT 2 1 4 2 0 (-18), PolyRefl.mkT 2 1 6 0 0 (1), PolyRefl.mkT 3 0 0 5 1 (-32), PolyRefl.mkT 3 0 2 3 1 (32), PolyRefl.mkT 3 0 4 1 1 (-6)]
def cp90_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 4 0 10 0 (9216), PolyRefl.mkT 2 4 2 8 0 (-18432), PolyRefl.mkT 2 4 4 6 0 (12672), PolyRefl.mkT 2 4 6 4 0 (-3456), PolyRefl.mkT 2 4 8 2 0 (324), PolyRefl.mkT 4 2 0 10 0 (-6144), PolyRefl.mkT 4 2 2 8 0 (12288), PolyRefl.mkT 4 2 4 6 0 (-8448), PolyRefl.mkT 4 2 6 4 0 (2304), PolyRefl.mkT 4 2 8 2 0 (-216), PolyRefl.mkT 6 0 0 10 0 (1024), PolyRefl.mkT 6 0 2 8 0 (-2048), PolyRefl.mkT 6 0 4 6 0 (1408), PolyRefl.mkT 6 0 6 4 0 (-384), PolyRefl.mkT 6 0 8 2 0 (36)]
def cp91_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 6 0 (32), PolyRefl.mkT 0 3 2 4 0 (-48), PolyRefl.mkT 0 3 4 2 0 (18), PolyRefl.mkT 0 3 6 0 0 (-1), PolyRefl.mkT 1 2 0 5 1 (96), PolyRefl.mkT 1 2 2 3 1 (-96), PolyRefl.mkT 1 2 4 1 1 (18), PolyRefl.mkT 2 1 0 6 0 (32), PolyRefl.mkT 2 1 2 4 0 (-48), PolyRefl.mkT 2 1 4 2 0 (18), PolyRefl.mkT 2 1 6 0 0 (-1), PolyRefl.mkT 3 0 0 5 1 (-32), PolyRefl.mkT 3 0 2 3 1 (32), PolyRefl.mkT 3 0 4 1 1 (-6)]
def cp92_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 12 0 (1024), PolyRefl.mkT 0 6 2 10 0 (-3072), PolyRefl.mkT 0 6 4 8 0 (3456), PolyRefl.mkT 0 6 6 6 0 (-1792), PolyRefl.mkT 0 6 8 4 0 (420), PolyRefl.mkT 0 6 10 2 0 (-36), PolyRefl.mkT 0 6 12 0 0 (1), PolyRefl.mkT 2 4 0 12 0 (11264), PolyRefl.mkT 2 4 2 10 0 (-33792), PolyRefl.mkT 2 4 4 8 0 (38016), PolyRefl.mkT 2 4 6 6 0 (-19712), PolyRefl.mkT 2 4 8 4 0 (4620), PolyRefl.mkT 2 4 10 2 0 (-396), PolyRefl.mkT 2 4 12 0 0 (2), PolyRefl.mkT 4 2 0 12 0 (-5120), PolyRefl.mkT 4 2 2 10 0 (15360), PolyRefl.mkT 4 2 4 8 0 (-17280), PolyRefl.mkT 4 2 6 6 0 (8960), PolyRefl.mkT 4 2 8 4 0 (-2100), PolyRefl.mkT 4 2 10 2 0 (180), PolyRefl.mkT 4 2 12 0 0 (1), PolyRefl.mkT 6 0 0 12 0 (1024), PolyRefl.mkT 6 0 2 10 0 (-3072), PolyRefl.mkT 6 0 4 8 0 (3456), PolyRefl.mkT 6 0 6 6 0 (-1792), PolyRefl.mkT 6 0 8 4 0 (420), PolyRefl.mkT 6 0 10 2 0 (-36)]
def cp93_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 4 18 0 4 0 (17179869184), PolyRefl.mkT 4 18 2 2 0 (-17179869184), PolyRefl.mkT 4 18 4 0 0 (2147483648), PolyRefl.mkT 6 16 0 4 0 (120259084288), PolyRefl.mkT 6 16 2 2 0 (-120259084288), PolyRefl.mkT 6 16 4 0 0 (15032385536), PolyRefl.mkT 8 14 0 4 0 (-738734374912), PolyRefl.mkT 8 14 2 2 0 (738734374912), PolyRefl.mkT 8 14 4 0 0 (-92341796864), PolyRefl.mkT 10 12 0 4 0 (1425929142272), PolyRefl.mkT 10 12 2 2 0 (-1425929142272), PolyRefl.mkT 10 12 4 0 0 (178241142784), PolyRefl.mkT 12 10 0 4 0 (-1322849927168), PolyRefl.mkT 12 10 2 2 0 (1322849927168), PolyRefl.mkT 12 10 4 0 0 (-165356240896), PolyRefl.mkT 14 8 0 4 0 (635655159808), PolyRefl.mkT 14 8 2 2 0 (-635655159808), PolyRefl.mkT 14 8 4 0 0 (79456894976), PolyRefl.mkT 16 6 0 4 0 (-154618822656), PolyRefl.mkT 16 6 2 2 0 (154618822656), PolyRefl.mkT 16 6 4 0 0 (-19327352832), PolyRefl.mkT 18 4 0 4 0 (17179869184), PolyRefl.mkT 18 4 2 2 0 (-17179869184), PolyRefl.mkT 18 4 4 0 0 (2147483648)]
def cp94_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 4 26 8 4 0 (-8), PolyRefl.mkT 4 26 10 2 0 (8), PolyRefl.mkT 4 26 12 0 0 (-1), PolyRefl.mkT 6 24 8 4 0 (168), PolyRefl.mkT 6 24 10 2 0 (-168), PolyRefl.mkT 6 24 12 0 0 (37), PolyRefl.mkT 8 22 8 4 0 (1352), PolyRefl.mkT 8 22 10 2 0 (-1352), PolyRefl.mkT 8 22 12 0 0 (-39), PolyRefl.mkT 10 20 8 4 0 (-13992), PolyRefl.mkT 10 20 10 2 0 (13992), PolyRefl.mkT 10 20 12 0 0 (-725), PolyRefl.mkT 12 18 8 4 0 (44848), PolyRefl.mkT 12 18 10 2 0 (-44848), PolyRefl.mkT 12 18 12 0 0 (2918), PolyRefl.mkT 14 16 8 4 0 (-73712), PolyRefl.mkT 14 16 10 2 0 (73712), PolyRefl.mkT 14 16 12 0 0 (-4958), PolyRefl.mkT 16 14 8 4 0 (70416), PolyRefl.mkT 16 14 10 2 0 (-70416), PolyRefl.mkT 16 14 12 0 0 (4546), PolyRefl.mkT 18 12 8 4 0 (-40656), PolyRefl.mkT 18 12 10 2 0 (40656), PolyRefl.mkT 18 12 12 0 0 (-2394), PolyRefl.mkT 20 10 8 4 0 (14168), PolyRefl.mkT 20 10 10 2 0 (-14168), PolyRefl.mkT 20 10 12 0 0 (747), PolyRefl.mkT 22 8 8 4 0 (-2872), PolyRefl.mkT 22 8 10 2 0 (2872), PolyRefl.mkT 22 8 12 0 0 (-151), PolyRefl.mkT 24 6 8 4 0 (296), PolyRefl.mkT 24 6 10 2 0 (-296), PolyRefl.mkT 24 6 12 0 0 (21), PolyRefl.mkT 26 4 8 4 0 (-8), PolyRefl.mkT 26 4 10 2 0 (8), PolyRefl.mkT 26 4 12 0 0 (-1)]
def cp95_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 12 78 24 0 0 (-512), PolyRefl.mkT 14 76 24 0 0 (32256), PolyRefl.mkT 16 74 24 0 0 (-417792), PolyRefl.mkT 18 72 24 0 0 (-8847360), PolyRefl.mkT 20 70 24 0 0 (192049152), PolyRefl.mkT 22 68 24 0 0 (268750848), PolyRefl.mkT 24 66 24 0 0 (-19800973312), PolyRefl.mkT 26 64 24 0 0 (111149875200), PolyRefl.mkT 28 62 24 0 0 (210956740608), PolyRefl.mkT 30 60 24 0 0 (-5879537154048), PolyRefl.mkT 32 58 24 0 0 (38561362747392), PolyRefl.mkT 34 56 24 0 0 (-155893010989056), PolyRefl.mkT 36 54 24 0 0 (453872793210880), PolyRefl.mkT 38 52 24 0 0 (-1013980471971840), PolyRefl.mkT 40 50 24 0 0 (1798811893604352), PolyRefl.mkT 42 48 24 0 0 (-2587957672116224), PolyRefl.mkT 44 46 24 0 0 (3061642459419648), PolyRefl.mkT 46 44 24 0 0 (-3006177455115264), PolyRefl.mkT 48 42 24 0 0 (2464922774593536), PolyRefl.mkT 50 40 24 0 0 (-1694123011670016), PolyRefl.mkT 52 38 24 0 0 (977686234042368), PolyRefl.mkT 54 36 24 0 0 (-473737950547968), PolyRefl.mkT 56 34 24 0 0 (192369975582720), PolyRefl.mkT 58 32 24 0 0 (-65206859759616), PolyRefl.mkT 60 30 24 0 0 (18333618710528), PolyRefl.mkT 62 28 24 0 0 (-4235451709440), PolyRefl.mkT 64 26 24 0 0 (793133015040), PolyRefl.mkT 66 24 24 0 0 (-118078898176), PolyRefl.mkT 68 22 24 0 0 (13592899584), PolyRefl.mkT 70 20 24 0 0 (-1161965568), PolyRefl.mkT 72 18 24 0 0 (69459968), PolyRefl.mkT 74 16 24 0 0 (-2654208), PolyRefl.mkT 76 14 24 0 0 (56832), PolyRefl.mkT 78 12 24 0 0 (-512)]
def cp96_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 10 58 16 4 0 (262144), PolyRefl.mkT 10 58 18 2 0 (-262144), PolyRefl.mkT 10 58 20 0 0 (32768), PolyRefl.mkT 12 56 16 4 0 (-11534336), PolyRefl.mkT 12 56 18 2 0 (11534336), PolyRefl.mkT 12 56 20 0 0 (-917504), PolyRefl.mkT 14 54 16 4 0 (49283072), PolyRefl.mkT 14 54 18 2 0 (-49283072), PolyRefl.mkT 14 54 20 0 0 (-12713984), PolyRefl.mkT 16 52 16 4 0 (2712666112), PolyRefl.mkT 16 52 18 2 0 (-2712666112), PolyRefl.mkT 16 52 20 0 0 (463339520), PolyRefl.mkT 18 50 16 4 0 (-20236992512), PolyRefl.mkT 18 50 18 2 0 (20236992512), PolyRefl.mkT 18 50 20 0 0 (-1447493632), PolyRefl.mkT 20 48 16 4 0 (-56221499392), PolyRefl.mkT 20 48 18 2 0 (56221499392), PolyRefl.mkT 20 48 20 0 0 (-28033286144), PolyRefl.mkT 22 46 16 4 0 (1354679451648), PolyRefl.mkT 22 46 18 2 0 (-1354679451648), PolyRefl.mkT 22 46 20 0 0 (321237942272), PolyRefl.mkT 24 44 16 4 0 (-8330943660032), PolyRefl.mkT 24 44 18 2 0 (8330943660032), PolyRefl.mkT 24 44 20 0 0 (-1717123284992), PolyRefl.mkT 26 42 16 4 0 (30317918027776), PolyRefl.mkT 26 42 18 2 0 (-30317918027776), PolyRefl.mkT 26 42 20 0 0 (5894743490560), PolyRefl.mkT 28 40 16 4 0 (-76261739200512), PolyRefl.mkT 28 40 18 2 0 (76261739200512), PolyRefl.mkT 28 40 20 0 0 (-14407651033088), PolyRefl.mkT 30 38 16 4 0 (141516016189440), PolyRefl.mkT 30 38 18 2 0 (-141516016189440), PolyRefl.mkT 30 38 20 0 0 (26369945501696), PolyRefl.mkT 32 36 16 4 0 (-200573968187392), PolyRefl.mkT 32 36 18 2 0 (200573968187392), PolyRefl.mkT 32 36 20 0 0 (-37198685798400), PolyRefl.mkT 34 34 16 4 0 (221561977044992), PolyRefl.mkT 34 34 18 2 0 (-221561977044992), PolyRefl.mkT 34 34 20 0 0 (41147235696640), PolyRefl.mkT 36 32 16 4 0 (-193004507758592), PolyRefl.mkT 36 32 18 2 0 (193004507758592), PolyRefl.mkT 36 32 20 0 0 (-36045877149696), PolyRefl.mkT 38 30 16 4 0 (133378126905344), PolyRefl.mkT 38 30 18 2 0 (-133378126905344), PolyRefl.mkT 38 30 20 0 0 (25121913569280), PolyRefl.mkT 40 28 16 4 0 (-73227965562880), PolyRefl.mkT 40 28 18 2 0 (73227965562880), PolyRefl.mkT 40 28 20 0 0 (-13930427318272), PolyRefl.mkT 42 26 16 4 0 (31855516319744), PolyRefl.mkT 42 26 18 2 0 (-31855516319744), PolyRefl.mkT 42 26 20 0 0 (6119893729280), PolyRefl.mkT 44 24 16 4 0 (-10902244950016), PolyRefl.mkT 44 24 18 2 0 (10902244950016), PolyRefl.mkT 44 24 20 0 0 (-2110806949888), PolyRefl.mkT 46 22 16 4 0 (2898183323648), PolyRefl.mkT 46 22 18 2 0 (-2898183323648), PolyRefl.mkT 46 22 20 0 0 (562934710272), PolyRefl.mkT 48 20 16 4 0 (-586037592064), PolyRefl.mkT 48 20 18 2 0 (586037592064), PolyRefl.mkT 48 20 20 0 0 (-113318166528), PolyRefl.mkT 50 18 16 4 0 (87137189888), PolyRefl.mkT 50 18 18 2 0 (-87137189888), PolyRefl.mkT 50 18 20 0 0 (16571236352), PolyRefl.mkT 52 16 16 4 0 (-9006219264), PolyRefl.mkT 52 16 18 2 0 (9006219264), PolyRefl.mkT 52 16 20 0 0 (-1652686848), PolyRefl.mkT 54 14 16 4 0 (586153984), PolyRefl.mkT 54 14 18 2 0 (-586153984), PolyRefl.mkT 54 14 20 0 0 (100532224), PolyRefl.mkT 56 12 16 4 0 (-19922944), PolyRefl.mkT 56 12 18 2 0 (19922944), PolyRefl.mkT 56 12 20 0 0 (-3014656), PolyRefl.mkT 58 10 16 4 0 (262144), PolyRefl.mkT 58 10 18 2 0 (-262144), PolyRefl.mkT 58 10 20 0 0 (32768)]
def cp97_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 22 4 0 0 (45), PolyRefl.mkT 4 20 4 0 0 (-2070), PolyRefl.mkT 6 18 4 0 0 (28561), PolyRefl.mkT 8 16 4 0 0 (-182600), PolyRefl.mkT 10 14 4 0 0 (656906), PolyRefl.mkT 12 12 4 0 0 (-1411076), PolyRefl.mkT 14 10 4 0 0 (1570586), PolyRefl.mkT 16 8 4 0 0 (-709064), PolyRefl.mkT 18 6 4 0 0 (144265), PolyRefl.mkT 20 4 4 0 0 (-13014), PolyRefl.mkT 22 2 4 0 0 (405)]
def cp98_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (4), PolyRefl.mkT 1 3 0 0 2 (-8), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 2 2 0 1 1 (24), PolyRefl.mkT 3 1 0 0 2 (24), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 4 0 0 1 1 (-12)]
def cp99_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 1 3 0 0 0 (-8), PolyRefl.mkT 3 1 0 0 0 (24)]
def cp100_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (1), PolyRefl.mkT 1 3 2 0 0 (-2), PolyRefl.mkT 2 2 0 1 1 (6), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 3 1 2 0 0 (6), PolyRefl.mkT 4 0 0 1 1 (-3)]
def cp101_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (1), PolyRefl.mkT 1 3 2 0 0 (2), PolyRefl.mkT 2 2 0 1 1 (6), PolyRefl.mkT 3 1 0 2 0 (8), PolyRefl.mkT 3 1 2 0 0 (-6), PolyRefl.mkT 4 0 0 1 1 (-3)]
def cp102_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 4 0 (1), PolyRefl.mkT 0 8 2 2 0 (-1), PolyRefl.mkT 2 6 0 4 0 (12), PolyRefl.mkT 2 6 2 2 0 (-12), PolyRefl.mkT 2 6 4 0 0 (4), PolyRefl.mkT 4 4 0 4 0 (30), PolyRefl.mkT 4 4 2 2 0 (2), PolyRefl.mkT 4 4 4 0 0 (-24), PolyRefl.mkT 6 2 0 4 0 (28), PolyRefl.mkT 6 2 2 2 0 (-60), PolyRefl.mkT 6 2 4 0 0 (36), PolyRefl.mkT 8 0 0 4 0 (9), PolyRefl.mkT 8 0 2 2 0 (-9)]
def cp103_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 16 0 2 0 (9), PolyRefl.mkT 0 16 2 0 0 (-9), PolyRefl.mkT 2 14 0 2 0 (16), PolyRefl.mkT 4 12 0 2 0 (-524), PolyRefl.mkT 4 12 2 0 0 (972), PolyRefl.mkT 6 10 0 2 0 (1120), PolyRefl.mkT 6 10 2 0 0 (-4240), PolyRefl.mkT 8 8 0 2 0 (5710), PolyRefl.mkT 8 8 2 0 0 (6834), PolyRefl.mkT 10 6 0 2 0 (5200), PolyRefl.mkT 10 6 2 0 0 (-18336), PolyRefl.mkT 12 4 0 2 0 (484), PolyRefl.mkT 12 4 2 0 0 (2908), PolyRefl.mkT 14 2 0 2 0 (-576), PolyRefl.mkT 14 2 2 0 0 (432), PolyRefl.mkT 16 0 0 2 0 (81), PolyRefl.mkT 16 0 2 0 0 (-81)]
def cp104_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 12 86 32 0 0 (35), PolyRefl.mkT 14 84 32 0 0 (-3054), PolyRefl.mkT 16 82 32 0 0 (114169), PolyRefl.mkT 18 80 32 0 0 (-2469652), PolyRefl.mkT 20 78 32 0 0 (35150669), PolyRefl.mkT 22 76 32 0 0 (-352067630), PolyRefl.mkT 24 74 32 0 0 (2585079895), PolyRefl.mkT 26 72 32 0 0 (-14277692896), PolyRefl.mkT 28 70 32 0 0 (60131505420), PolyRefl.mkT 30 68 32 0 0 (-193252988504), PolyRefl.mkT 32 66 32 0 0 (465235612388), PolyRefl.mkT 34 64 32 0 0 (-788280364592), PolyRefl.mkT 36 62 32 0 0 (737369908292), PolyRefl.mkT 38 60 32 0 0 (349842556936), PolyRefl.mkT 40 58 32 0 0 (-2564957630452), PolyRefl.mkT 42 56 32 0 0 (4423752774880), PolyRefl.mkT 44 54 32 0 0 (-3403682068646), PolyRefl.mkT 46 52 32 0 0 (-1254260777924), PolyRefl.mkT 48 50 32 0 0 (6381370275438), PolyRefl.mkT 50 48 32 0 0 (-7237747747448), PolyRefl.mkT 52 46 32 0 0 (2775787676246), PolyRefl.mkT 54 44 32 0 0 (2884390772764), PolyRefl.mkT 56 42 32 0 0 (-5087695466078), PolyRefl.mkT 58 40 32 0 0 (3342366074592), PolyRefl.mkT 60 38 32 0 0 (-535906983204), PolyRefl.mkT 62 36 32 0 0 (-953142581560), PolyRefl.mkT 64 34 32 0 0 (990130293332), PolyRefl.mkT 66 32 32 0 0 (-520855283760), PolyRefl.mkT 68 30 32 0 0 (174856570004), PolyRefl.mkT 70 28 32 0 0 (-38036275224), PolyRefl.mkT 72 26 32 0 0 (4789688572), PolyRefl.mkT 74 24 32 0 0 (-150475744), PolyRefl.mkT 76 22 32 0 0 (-49678437), PolyRefl.mkT 78 20 32 0 0 (6575938), PolyRefl.mkT 80 18 32 0 0 (-48287), PolyRefl.mkT 82 16 32 0 0 (-27156), PolyRefl.mkT 84 14 32 0 0 (645), PolyRefl.mkT 86 12 32 0 0 (34), PolyRefl.mkT 88 10 32 0 0 (-1)]
def cp105_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-8), PolyRefl.mkT 0 4 0 3 1 (-8), PolyRefl.mkT 1 3 0 0 4 (-8), PolyRefl.mkT 1 3 0 2 2 (112), PolyRefl.mkT 1 3 0 4 0 (-8), PolyRefl.mkT 2 2 0 1 3 (-16), PolyRefl.mkT 2 2 0 3 1 (-16), PolyRefl.mkT 3 1 0 0 4 (8), PolyRefl.mkT 3 1 0 2 2 (-112), PolyRefl.mkT 3 1 0 4 0 (8), PolyRefl.mkT 4 0 0 1 3 (-8), PolyRefl.mkT 4 0 0 3 1 (-8)]
def cp106_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-8), PolyRefl.mkT 1 3 0 0 2 (-8), PolyRefl.mkT 1 3 0 2 0 (120), PolyRefl.mkT 1 3 2 0 0 (-8), PolyRefl.mkT 2 2 0 1 1 (-16), PolyRefl.mkT 3 1 0 0 2 (8), PolyRefl.mkT 3 1 0 2 0 (-120), PolyRefl.mkT 3 1 2 0 0 (8), PolyRefl.mkT 4 0 0 1 1 (-8)]
def cp107_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 1 5 (24), PolyRefl.mkT 0 3 0 3 3 (-80), PolyRefl.mkT 0 3 0 5 1 (24), PolyRefl.mkT 1 2 0 0 6 (4), PolyRefl.mkT 1 2 0 2 4 (-60), PolyRefl.mkT 1 2 0 4 2 (60), PolyRefl.mkT 1 2 0 6 0 (-4), PolyRefl.mkT 2 1 0 1 5 (-72), PolyRefl.mkT 2 1 0 3 3 (240), PolyRefl.mkT 2 1 0 5 1 (-72), PolyRefl.mkT 3 0 0 0 6 (4), PolyRefl.mkT 3 0 0 2 4 (-60), PolyRefl.mkT 3 0 0 4 2 (60), PolyRefl.mkT 3 0 0 6 0 (-4)]
def cp108_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 1 3 (24), PolyRefl.mkT 0 3 0 3 1 (-104), PolyRefl.mkT 0 3 2 1 1 (24), PolyRefl.mkT 1 2 0 0 4 (4), PolyRefl.mkT 1 2 0 2 2 (-64), PolyRefl.mkT 1 2 0 4 0 (124), PolyRefl.mkT 1 2 2 0 2 (4), PolyRefl.mkT 1 2 2 2 0 (-68), PolyRefl.mkT 1 2 4 0 0 (4), PolyRefl.mkT 2 1 0 1 3 (-72), PolyRefl.mkT 2 1 0 3 1 (312), PolyRefl.mkT 2 1 2 1 1 (-72), PolyRefl.mkT 3 0 0 0 4 (4), PolyRefl.mkT 3 0 0 2 2 (-64), PolyRefl.mkT 3 0 0 4 0 (124), PolyRefl.mkT 3 0 2 0 2 (4), PolyRefl.mkT 3 0 2 2 0 (-68), PolyRefl.mkT 3 0 4 0 0 (4)]
def cp109_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 5 1 (32), PolyRefl.mkT 0 3 2 3 1 (-32), PolyRefl.mkT 0 3 4 1 1 (6), PolyRefl.mkT 1 2 0 6 0 (-32), PolyRefl.mkT 1 2 2 4 0 (48), PolyRefl.mkT 1 2 4 2 0 (-18), PolyRefl.mkT 1 2 6 0 0 (1), PolyRefl.mkT 2 1 0 5 1 (-96), PolyRefl.mkT 2 1 2 3 1 (96), PolyRefl.mkT 2 1 4 1 1 (-18), PolyRefl.mkT 3 0 0 6 0 (-32), PolyRefl.mkT 3 0 2 4 0 (48), PolyRefl.mkT 3 0 4 2 0 (-18), PolyRefl.mkT 3 0 6 0 0 (1)]
def cp110_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 10 0 (1024), PolyRefl.mkT 0 6 2 8 0 (-2048), PolyRefl.mkT 0 6 4 6 0 (1408), PolyRefl.mkT 0 6 6 4 0 (-384), PolyRefl.mkT 0 6 8 2 0 (36), PolyRefl.mkT 2 4 0 10 0 (-6144), PolyRefl.mkT 2 4 2 8 0 (12288), PolyRefl.mkT 2 4 4 6 0 (-8448), PolyRefl.mkT 2 4 6 4 0 (2304), PolyRefl.mkT 2 4 8 2 0 (-216), PolyRefl.mkT 4 2 0 10 0 (9216), PolyRefl.mkT 4 2 2 8 0 (-18432), PolyRefl.mkT 4 2 4 6 0 (12672), PolyRefl.mkT 4 2 6 4 0 (-3456), PolyRefl.mkT 4 2 8 2 0 (324)]
def cp111_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 5 1 (32), PolyRefl.mkT 0 3 2 3 1 (-32), PolyRefl.mkT 0 3 4 1 1 (6), PolyRefl.mkT 1 2 0 6 0 (32), PolyRefl.mkT 1 2 2 4 0 (-48), PolyRefl.mkT 1 2 4 2 0 (18), PolyRefl.mkT 1 2 6 0 0 (-1), PolyRefl.mkT 2 1 0 5 1 (-96), PolyRefl.mkT 2 1 2 3 1 (96), PolyRefl.mkT 2 1 4 1 1 (-18), PolyRefl.mkT 3 0 0 6 0 (32), PolyRefl.mkT 3 0 2 4 0 (-48), PolyRefl.mkT 3 0 4 2 0 (18), PolyRefl.mkT 3 0 6 0 0 (-1)]
def cp112_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 12 0 (1024), PolyRefl.mkT 0 6 2 10 0 (-3072), PolyRefl.mkT 0 6 4 8 0 (3456), PolyRefl.mkT 0 6 6 6 0 (-1792), PolyRefl.mkT 0 6 8 4 0 (420), PolyRefl.mkT 0 6 10 2 0 (-36), PolyRefl.mkT 2 4 0 12 0 (-5120), PolyRefl.mkT 2 4 2 10 0 (15360), PolyRefl.mkT 2 4 4 8 0 (-17280), PolyRefl.mkT 2 4 6 6 0 (8960), PolyRefl.mkT 2 4 8 4 0 (-2100), PolyRefl.mkT 2 4 10 2 0 (180), PolyRefl.mkT 2 4 12 0 0 (1), PolyRefl.mkT 4 2 0 12 0 (11264), PolyRefl.mkT 4 2 2 10 0 (-33792), PolyRefl.mkT 4 2 4 8 0 (38016), PolyRefl.mkT 4 2 6 6 0 (-19712), PolyRefl.mkT 4 2 8 4 0 (4620), PolyRefl.mkT 4 2 10 2 0 (-396), PolyRefl.mkT 4 2 12 0 0 (2), PolyRefl.mkT 6 0 0 12 0 (1024), PolyRefl.mkT 6 0 2 10 0 (-3072), PolyRefl.mkT 6 0 4 8 0 (3456), PolyRefl.mkT 6 0 6 6 0 (-1792), PolyRefl.mkT 6 0 8 4 0 (420), PolyRefl.mkT 6 0 10 2 0 (-36), PolyRefl.mkT 6 0 12 0 0 (1)]
def cp113_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 6 18 0 0 0 (16777216), PolyRefl.mkT 8 16 0 0 0 (-100663296), PolyRefl.mkT 10 14 0 0 0 (251658240), PolyRefl.mkT 12 12 0 0 0 (-335544320), PolyRefl.mkT 14 10 0 0 0 (251658240), PolyRefl.mkT 16 8 0 0 0 (-100663296), PolyRefl.mkT 18 6 0 0 0 (16777216)]
def cp114_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 20 4 0 0 (-262144), PolyRefl.mkT 4 18 0 4 0 (67108864), PolyRefl.mkT 4 18 2 2 0 (-67108864), PolyRefl.mkT 4 18 4 0 0 (17563648), PolyRefl.mkT 6 16 0 4 0 (-603979776), PolyRefl.mkT 6 16 2 2 0 (603979776), PolyRefl.mkT 6 16 4 0 0 (-150994944), PolyRefl.mkT 8 14 0 4 0 (2483027968), PolyRefl.mkT 8 14 2 2 0 (-2483027968), PolyRefl.mkT 8 14 4 0 0 (614465536), PolyRefl.mkT 10 12 0 4 0 (-5167382528), PolyRefl.mkT 10 12 2 2 0 (5167382528), PolyRefl.mkT 10 12 4 0 0 (-1294467072), PolyRefl.mkT 12 10 0 4 0 (5570035712), PolyRefl.mkT 12 10 2 2 0 (-5570035712), PolyRefl.mkT 12 10 4 0 0 (1402470400), PolyRefl.mkT 14 8 0 4 0 (-2885681152), PolyRefl.mkT 14 8 2 2 0 (2885681152), PolyRefl.mkT 14 8 4 0 0 (-715128832), PolyRefl.mkT 16 6 0 4 0 (469762048), PolyRefl.mkT 16 6 2 2 0 (-469762048), PolyRefl.mkT 16 6 4 0 0 (113246208), PolyRefl.mkT 18 4 0 4 0 (67108864), PolyRefl.mkT 18 4 2 2 0 (-67108864), PolyRefl.mkT 18 4 4 0 0 (13369344), PolyRefl.mkT 20 2 4 0 0 (-262144)]
def cp115_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 28 8 4 0 (1), PolyRefl.mkT 2 28 10 2 0 (-1), PolyRefl.mkT 4 26 8 4 0 (-31), PolyRefl.mkT 4 26 10 2 0 (31), PolyRefl.mkT 4 26 12 0 0 (1), PolyRefl.mkT 6 24 8 4 0 (154), PolyRefl.mkT 6 24 10 2 0 (-154), PolyRefl.mkT 6 24 12 0 0 (-69), PolyRefl.mkT 8 22 8 4 0 (-214), PolyRefl.mkT 8 22 10 2 0 (214), PolyRefl.mkT 8 22 12 0 0 (775), PolyRefl.mkT 10 20 8 4 0 (-577), PolyRefl.mkT 10 20 10 2 0 (577), PolyRefl.mkT 10 20 12 0 0 (-3819), PolyRefl.mkT 12 18 8 4 0 (1359), PolyRefl.mkT 12 18 10 2 0 (-1359), PolyRefl.mkT 12 18 12 0 0 (10458), PolyRefl.mkT 14 16 8 4 0 (1068), PolyRefl.mkT 14 16 10 2 0 (-1068), PolyRefl.mkT 14 16 12 0 0 (-17314), PolyRefl.mkT 16 14 8 4 0 (-2228), PolyRefl.mkT 16 14 10 2 0 (2228), PolyRefl.mkT 16 14 12 0 0 (17726), PolyRefl.mkT 18 12 8 4 0 (-1041), PolyRefl.mkT 18 12 10 2 0 (1041), PolyRefl.mkT 18 12 12 0 0 (-10982), PolyRefl.mkT 20 10 8 4 0 (1391), PolyRefl.mkT 20 10 10 2 0 (-1391), PolyRefl.mkT 20 10 12 0 0 (3797), PolyRefl.mkT 22 8 8 4 0 (410), PolyRefl.mkT 22 8 10 2 0 (-410), PolyRefl.mkT 22 8 12 0 0 (-585), PolyRefl.mkT 24 6 8 4 0 (-278), PolyRefl.mkT 24 6 10 2 0 (278), PolyRefl.mkT 24 6 12 0 0 (11), PolyRefl.mkT 26 4 8 4 0 (-15), PolyRefl.mkT 26 4 10 2 0 (15), PolyRefl.mkT 26 4 12 0 0 (1), PolyRefl.mkT 28 2 8 4 0 (1), PolyRefl.mkT 28 2 10 2 0 (-1)]
def cp116_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 6 84 24 0 0 (1), PolyRefl.mkT 8 82 24 0 0 (-93), PolyRefl.mkT 10 80 24 0 0 (3345), PolyRefl.mkT 12 78 24 0 0 (-59077), PolyRefl.mkT 14 76 24 0 0 (553203), PolyRefl.mkT 16 74 24 0 0 (-2908887), PolyRefl.mkT 18 72 24 0 0 (7473259), PolyRefl.mkT 20 70 24 0 0 (2752137), PolyRefl.mkT 22 68 24 0 0 (-78057756), PolyRefl.mkT 24 66 24 0 0 (179162540), PolyRefl.mkT 26 64 24 0 0 (134466660), PolyRefl.mkT 28 62 24 0 0 (-1214306100), PolyRefl.mkT 30 60 24 0 0 (1010147036), PolyRefl.mkT 32 58 24 0 0 (3850409556), PolyRefl.mkT 34 56 24 0 0 (-6851437572), PolyRefl.mkT 36 54 24 0 0 (-7059093996), PolyRefl.mkT 38 52 24 0 0 (21335664510), PolyRefl.mkT 40 50 24 0 0 (7538365626), PolyRefl.mkT 42 48 24 0 0 (-42434095842), PolyRefl.mkT 44 46 24 0 0 (-3611543862), PolyRefl.mkT 46 44 24 0 0 (58600545162), PolyRefl.mkT 48 42 24 0 0 (-1576066178), PolyRefl.mkT 50 40 24 0 0 (-57601767078), PolyRefl.mkT 52 38 24 0 0 (3865081470), PolyRefl.mkT 54 36 24 0 0 (40214540052), PolyRefl.mkT 56 34 24 0 0 (-3045764292), PolyRefl.mkT 58 32 24 0 0 (-19510594284), PolyRefl.mkT 60 30 24 0 0 (1467289436), PolyRefl.mkT 62 28 24 0 0 (6293061708), PolyRefl.mkT 64 26 24 0 0 (-491614044), PolyRefl.mkT 66 24 24 0 0 (-1243468948), PolyRefl.mkT 68 22 24 0 0 (110301156), PolyRefl.mkT 70 20 24 0 0 (126956937), PolyRefl.mkT 72 18 24 0 0 (-12016709), PolyRefl.mkT 74 16 24 0 0 (-4013223), PolyRefl.mkT 76 14 24 0 0 (11475), PolyRefl.mkT 78 12 24 0 0 (22875), PolyRefl.mkT 80 10 24 0 0 (-159), PolyRefl.mkT 82 8 24 0 0 (-45), PolyRefl.mkT 84 6 24 0 0 (1)]
def cp117_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 4 64 20 0 0 (1), PolyRefl.mkT 6 62 16 4 0 (256), PolyRefl.mkT 6 62 18 2 0 (-256), PolyRefl.mkT 6 62 20 0 0 (-26), PolyRefl.mkT 8 60 16 4 0 (-16384), PolyRefl.mkT 8 60 18 2 0 (16384), PolyRefl.mkT 8 60 20 0 0 (-1277), PolyRefl.mkT 10 58 16 4 0 (356864), PolyRefl.mkT 10 58 18 2 0 (-356864), PolyRefl.mkT 10 58 20 0 0 (65452), PolyRefl.mkT 12 56 16 4 0 (-3219456), PolyRefl.mkT 12 56 18 2 0 (3219456), PolyRefl.mkT 12 56 20 0 0 (-1236003), PolyRefl.mkT 14 54 16 4 0 (14605056), PolyRefl.mkT 14 54 18 2 0 (-14605056), PolyRefl.mkT 14 54 20 0 0 (13386210), PolyRefl.mkT 16 52 16 4 0 (-27918336), PolyRefl.mkT 16 52 18 2 0 (27918336), PolyRefl.mkT 16 52 20 0 0 (-91399601), PolyRefl.mkT 18 50 16 4 0 (-31583232), PolyRefl.mkT 18 50 18 2 0 (31583232), PolyRefl.mkT 18 50 20 0 0 (409909240), PolyRefl.mkT 20 48 16 4 0 (254853120), PolyRefl.mkT 20 48 18 2 0 (-254853120), PolyRefl.mkT 20 48 20 0 0 (-1199135651), PolyRefl.mkT 22 46 16 4 0 (-303994624), PolyRefl.mkT 22 46 18 2 0 (303994624), PolyRefl.mkT 22 46 20 0 0 (2068011414), PolyRefl.mkT 24 44 16 4 0 (-635387904), PolyRefl.mkT 24 44 18 2 0 (635387904), PolyRefl.mkT 24 44 20 0 0 (-993074617), PolyRefl.mkT 26 42 16 4 0 (1706700288), PolyRefl.mkT 26 42 18 2 0 (-1706700288), PolyRefl.mkT 26 42 20 0 0 (-4273393260), PolyRefl.mkT 28 40 16 4 0 (346562560), PolyRefl.mkT 28 40 18 2 0 (-346562560), PolyRefl.mkT 28 40 20 0 0 (10615628313), PolyRefl.mkT 30 38 16 4 0 (-4005774592), PolyRefl.mkT 30 38 18 2 0 (4005774592), PolyRefl.mkT 30 38 20 0 0 (-8085544222), PolyRefl.mkT 32 36 16 4 0 (1331036160), PolyRefl.mkT 32 36 18 2 0 (-1331036160), PolyRefl.mkT 32 36 20 0 0 (-6805055853), PolyRefl.mkT 34 34 16 4 0 (5351512064), PolyRefl.mkT 34 34 18 2 0 (-5351512064), PolyRefl.mkT 34 34 20 0 0 (18937579664), PolyRefl.mkT 36 32 16 4 0 (-3258023936), PolyRefl.mkT 36 32 18 2 0 (3258023936), PolyRefl.mkT 36 32 20 0 0 (-11914146925), PolyRefl.mkT 38 30 16 4 0 (-4331226368), PolyRefl.mkT 38 30 18 2 0 (4331226368), PolyRefl.mkT 38 30 20 0 0 (-5896058750), PolyRefl.mkT 40 28 16 4 0 (3493937152), PolyRefl.mkT 40 28 18 2 0 (-3493937152), PolyRefl.mkT 40 28 20 0 0 (13130554969), PolyRefl.mkT 42 26 16 4 0 (2055843328), PolyRefl.mkT 42 26 18 2 0 (-2055843328), PolyRefl.mkT 42 26 20 0 0 (-6370066924), PolyRefl.mkT 44 24 16 4 0 (-2086854656), PolyRefl.mkT 44 24 18 2 0 (2086854656), PolyRefl.mkT 44 24 20 0 0 (-1314879737), PolyRefl.mkT 46 22 16 4 0 (-477337344), PolyRefl.mkT 46 22 18 2 0 (477337344), PolyRefl.mkT 46 22 20 0 0 (2868148022), PolyRefl.mkT 48 20 16 4 0 (684457984), PolyRefl.mkT 48 20 18 2 0 (-684457984), PolyRefl.mkT 48 20 20 0 0 (-1393557283), PolyRefl.mkT 50 18 16 4 0 (8393728), PolyRefl.mkT 50 18 18 2 0 (-8393728), PolyRefl.mkT 50 18 20 0 0 (329403896), PolyRefl.mkT 52 16 16 4 0 (-101924864), PolyRefl.mkT 52 16 18 2 0 (101924864), PolyRefl.mkT 52 16 20 0 0 (-34371121), PolyRefl.mkT 54 14 16 4 0 (12573440), PolyRefl.mkT 54 14 18 2 0 (-12573440), PolyRefl.mkT 54 14 20 0 0 (-1441278), PolyRefl.mkT 56 12 16 4 0 (2506752), PolyRefl.mkT 56 12 18 2 0 (-2506752), PolyRefl.mkT 56 12 20 0 0 (676509), PolyRefl.mkT 58 10 16 4 0 (-69120), PolyRefl.mkT 58 10 18 2 0 (69120), PolyRefl.mkT 58 10 20 0 0 (556), PolyRefl.mkT 60 8 16 4 0 (-8192), PolyRefl.mkT 60 8 18 2 0 (8192), PolyRefl.mkT 60 8 20 0 0 (-1725), PolyRefl.mkT 62 6 16 4 0 (256), PolyRefl.mkT 62 6 18 2 0 (-256), PolyRefl.mkT 62 6 20 0 0 (6), PolyRefl.mkT 64 4 20 0 0 (1)]
def cp118_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 60 24 0 0 (5), PolyRefl.mkT 2 58 24 0 0 (-274), PolyRefl.mkT 4 56 24 0 0 (6687), PolyRefl.mkT 6 54 24 0 0 (-118276), PolyRefl.mkT 8 52 24 0 0 (1793249), PolyRefl.mkT 10 50 24 0 0 (-22947494), PolyRefl.mkT 12 48 24 0 0 (250438379), PolyRefl.mkT 14 46 24 0 0 (-2439125352), PolyRefl.mkT 16 44 24 0 0 (20971929521), PolyRefl.mkT 18 42 24 0 0 (-149909581282), PolyRefl.mkT 20 40 24 0 0 (848747246995), PolyRefl.mkT 22 38 24 0 0 (-3727925183804), PolyRefl.mkT 24 36 24 0 0 (12636714813101), PolyRefl.mkT 26 34 24 0 0 (-33032259444966), PolyRefl.mkT 28 32 24 0 0 (66467220893983), PolyRefl.mkT 30 30 24 0 0 (-102460346145968), PolyRefl.mkT 32 28 24 0 0 (120013815351071), PolyRefl.mkT 34 26 24 0 0 (-105679298980134), PolyRefl.mkT 36 24 24 0 0 (69174060708397), PolyRefl.mkT 38 22 24 0 0 (-33338004520508), PolyRefl.mkT 40 20 24 0 0 (11747835514899), PolyRefl.mkT 42 18 24 0 0 (-3010736942626), PolyRefl.mkT 44 16 24 0 0 (557801887409), PolyRefl.mkT 46 14 24 0 0 (-74100114792), PolyRefl.mkT 48 12 24 0 0 (6996038635), PolyRefl.mkT 50 10 24 0 0 (-469561318), PolyRefl.mkT 52 8 24 0 0 (23188321), PolyRefl.mkT 54 6 24 0 0 (-914180), PolyRefl.mkT 56 4 24 0 0 (29087), PolyRefl.mkT 58 2 24 0 0 (-594), PolyRefl.mkT 60 0 24 0 0 (5)]
def cp119_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 5 (-24), PolyRefl.mkT 0 4 0 3 3 (80), PolyRefl.mkT 0 4 0 5 1 (-24), PolyRefl.mkT 1 3 0 0 6 (-8), PolyRefl.mkT 1 3 0 2 4 (120), PolyRefl.mkT 1 3 0 4 2 (-120), PolyRefl.mkT 1 3 0 6 0 (8), PolyRefl.mkT 3 1 0 0 6 (24), PolyRefl.mkT 3 1 0 2 4 (-360), PolyRefl.mkT 3 1 0 4 2 (360), PolyRefl.mkT 3 1 0 6 0 (-24), PolyRefl.mkT 4 0 0 1 5 (24), PolyRefl.mkT 4 0 0 3 3 (-80), PolyRefl.mkT 4 0 0 5 1 (24)]
def cp120_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-24), PolyRefl.mkT 0 4 0 3 1 (104), PolyRefl.mkT 0 4 2 1 1 (-24), PolyRefl.mkT 1 3 0 0 4 (-8), PolyRefl.mkT 1 3 0 2 2 (128), PolyRefl.mkT 1 3 0 4 0 (-248), PolyRefl.mkT 1 3 2 0 2 (-8), PolyRefl.mkT 1 3 2 2 0 (136), PolyRefl.mkT 1 3 4 0 0 (-8), PolyRefl.mkT 3 1 0 0 4 (24), PolyRefl.mkT 3 1 0 2 2 (-384), PolyRefl.mkT 3 1 0 4 0 (744), PolyRefl.mkT 3 1 2 0 2 (24), PolyRefl.mkT 3 1 2 2 0 (-408), PolyRefl.mkT 3 1 4 0 0 (24), PolyRefl.mkT 4 0 0 1 3 (24), PolyRefl.mkT 4 0 0 3 1 (-104), PolyRefl.mkT 4 0 2 1 1 (24)]
def cp121_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (-16), PolyRefl.mkT 0 4 2 3 1 (16), PolyRefl.mkT 0 4 4 1 1 (-3), PolyRefl.mkT 1 3 0 6 0 (32), PolyRefl.mkT 1 3 2 4 0 (-48), PolyRefl.mkT 1 3 4 2 0 (18), PolyRefl.mkT 1 3 6 0 0 (-1), PolyRefl.mkT 3 1 0 6 0 (-96), PolyRefl.mkT 3 1 2 4 0 (144), PolyRefl.mkT 3 1 4 2 0 (-54), PolyRefl.mkT 3 1 6 0 0 (3), PolyRefl.mkT 4 0 0 5 1 (16), PolyRefl.mkT 4 0 2 3 1 (-16), PolyRefl.mkT 4 0 4 1 1 (3)]
def cp122_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (-16), PolyRefl.mkT 0 4 2 3 1 (16), PolyRefl.mkT 0 4 4 1 1 (-3), PolyRefl.mkT 1 3 0 6 0 (-32), PolyRefl.mkT 1 3 2 4 0 (48), PolyRefl.mkT 1 3 4 2 0 (-18), PolyRefl.mkT 1 3 6 0 0 (1), PolyRefl.mkT 3 1 0 6 0 (96), PolyRefl.mkT 3 1 2 4 0 (-144), PolyRefl.mkT 3 1 4 2 0 (54), PolyRefl.mkT 3 1 6 0 0 (-3), PolyRefl.mkT 4 0 0 5 1 (16), PolyRefl.mkT 4 0 2 3 1 (-16), PolyRefl.mkT 4 0 4 1 1 (3)]
def cp123_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 12 0 (256), PolyRefl.mkT 0 8 2 10 0 (-768), PolyRefl.mkT 0 8 4 8 0 (864), PolyRefl.mkT 0 8 6 6 0 (-448), PolyRefl.mkT 0 8 8 4 0 (105), PolyRefl.mkT 0 8 10 2 0 (-9), PolyRefl.mkT 2 6 0 12 0 (1024), PolyRefl.mkT 2 6 2 10 0 (-3072), PolyRefl.mkT 2 6 4 8 0 (3456), PolyRefl.mkT 2 6 6 6 0 (-1792), PolyRefl.mkT 2 6 8 4 0 (420), PolyRefl.mkT 2 6 10 2 0 (-36), PolyRefl.mkT 2 6 12 0 0 (1), PolyRefl.mkT 4 4 0 12 0 (-6656), PolyRefl.mkT 4 4 2 10 0 (19968), PolyRefl.mkT 4 4 4 8 0 (-22464), PolyRefl.mkT 4 4 6 6 0 (11648), PolyRefl.mkT 4 4 8 4 0 (-2730), PolyRefl.mkT 4 4 10 2 0 (234), PolyRefl.mkT 4 4 12 0 0 (-6), PolyRefl.mkT 6 2 0 12 0 (9216), PolyRefl.mkT 6 2 2 10 0 (-27648), PolyRefl.mkT 6 2 4 8 0 (31104), PolyRefl.mkT 6 2 6 6 0 (-16128), PolyRefl.mkT 6 2 8 4 0 (3780), PolyRefl.mkT 6 2 10 2 0 (-324), PolyRefl.mkT 6 2 12 0 0 (9), PolyRefl.mkT 8 0 0 12 0 (256), PolyRefl.mkT 8 0 2 10 0 (-768), PolyRefl.mkT 8 0 4 8 0 (864), PolyRefl.mkT 8 0 6 6 0 (-448), PolyRefl.mkT 8 0 8 4 0 (105), PolyRefl.mkT 8 0 10 2 0 (-9)]
def cp124_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 4 (10), PolyRefl.mkT 0 4 0 2 2 (-20), PolyRefl.mkT 0 4 0 4 0 (2), PolyRefl.mkT 2 2 0 0 4 (-28), PolyRefl.mkT 2 2 0 2 2 (120), PolyRefl.mkT 2 2 0 4 0 (-44), PolyRefl.mkT 4 0 0 0 4 (10), PolyRefl.mkT 4 0 0 2 2 (-20), PolyRefl.mkT 4 0 0 4 0 (2)]
def cp125_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (10), PolyRefl.mkT 0 4 0 2 0 (-30), PolyRefl.mkT 0 4 2 0 0 (10), PolyRefl.mkT 2 2 0 0 2 (-28), PolyRefl.mkT 2 2 0 2 0 (148), PolyRefl.mkT 2 2 2 0 0 (-28), PolyRefl.mkT 4 0 0 0 2 (10), PolyRefl.mkT 4 0 0 2 0 (-30), PolyRefl.mkT 4 0 2 0 0 (10)]
def cp126_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 4 0 (16), PolyRefl.mkT 0 4 2 2 0 (-20), PolyRefl.mkT 0 4 4 0 0 (5), PolyRefl.mkT 2 2 0 4 0 (-96), PolyRefl.mkT 2 2 2 2 0 (88), PolyRefl.mkT 2 2 4 0 0 (-14), PolyRefl.mkT 4 0 0 4 0 (16), PolyRefl.mkT 4 0 2 2 0 (-20), PolyRefl.mkT 4 0 4 0 0 (5)]
def cp127_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 20 0 0 0 (1048576), PolyRefl.mkT 2 18 0 0 0 (-31457280), PolyRefl.mkT 4 16 0 0 0 (382730240), PolyRefl.mkT 6 14 0 0 0 (-2390753280), PolyRefl.mkT 8 12 0 0 0 (7937720320), PolyRefl.mkT 10 10 0 0 0 (-12872318976), PolyRefl.mkT 12 8 0 0 0 (7937720320), PolyRefl.mkT 14 6 0 0 0 (-2390753280), PolyRefl.mkT 16 4 0 0 0 (382730240), PolyRefl.mkT 18 2 0 0 0 (-31457280), PolyRefl.mkT 20 0 0 0 0 (1048576)]
def cp128_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 8 0 (16777216), PolyRefl.mkT 0 24 2 6 0 (-29360128), PolyRefl.mkT 0 24 4 4 0 (14680064), PolyRefl.mkT 0 24 6 2 0 (-1835008), PolyRefl.mkT 2 22 0 8 0 (-335544320), PolyRefl.mkT 2 22 2 6 0 (620756992), PolyRefl.mkT 2 22 4 4 0 (-327155712), PolyRefl.mkT 2 22 6 2 0 (42991616), PolyRefl.mkT 4 20 0 8 0 (1644167168), PolyRefl.mkT 4 20 2 6 0 (-3347054592), PolyRefl.mkT 4 20 4 4 0 (1975517184), PolyRefl.mkT 4 20 6 2 0 (-284688384), PolyRefl.mkT 4 20 8 0 0 (4194304), PolyRefl.mkT 6 18 0 8 0 (10133438464), PolyRefl.mkT 6 18 2 6 0 (-17297309696), PolyRefl.mkT 6 18 4 4 0 (7893680128), PolyRefl.mkT 6 18 6 2 0 (-758120448), PolyRefl.mkT 6 18 8 0 0 (33554432), PolyRefl.mkT 8 16 0 8 0 (-144166617088), PolyRefl.mkT 8 16 2 6 0 (275645464576), PolyRefl.mkT 8 16 4 4 0 (-151915593728), PolyRefl.mkT 8 16 6 2 0 (20482621440), PolyRefl.mkT 8 16 8 0 0 (-16777216), PolyRefl.mkT 10 14 0 8 0 (641426522112), PolyRefl.mkT 10 14 2 6 0 (-1271142547456), PolyRefl.mkT 10 14 4 4 0 (742643466240), PolyRefl.mkT 10 14 6 2 0 (-112791126016), PolyRefl.mkT 10 14 8 0 0 (-167772160), PolyRefl.mkT 12 12 0 8 0 (-1377140998144), PolyRefl.mkT 12 12 2 6 0 (2777619103744), PolyRefl.mkT 12 12 4 4 0 (-1671002324992), PolyRefl.mkT 12 12 6 2 0 (270456061952), PolyRefl.mkT 12 12 8 0 0 (25165824), PolyRefl.mkT 14 10 0 8 0 (1454249082880), PolyRefl.mkT 14 10 2 6 0 (-2944837615616), PolyRefl.mkT 14 10 4 4 0 (1784575688704), PolyRefl.mkT 14 10 6 2 0 (-294438043648), PolyRefl.mkT 14 10 8 0 0 (503316480), PolyRefl.mkT 16 8 0 8 0 (-633792888832), PolyRefl.mkT 16 8 2 6 0 (1250603040768), PolyRefl.mkT 16 8 4 4 0 (-724219985920), PolyRefl.mkT 16 8 6 2 0 (106918838272), PolyRefl.mkT 16 8 8 0 0 (520093696), PolyRefl.mkT 18 6 0 8 0 (127708168192), PolyRefl.mkT 18 6 2 6 0 (-242380439552), PolyRefl.mkT 18 6 4 4 0 (132246405120), PolyRefl.mkT 18 6 6 2 0 (-17778606080), PolyRefl.mkT 18 6 8 0 0 (167772160), PolyRefl.mkT 20 4 0 8 0 (-11240734720), PolyRefl.mkT 20 4 2 6 0 (20275265536), PolyRefl.mkT 20 4 4 4 0 (-10372513792), PolyRefl.mkT 20 4 6 2 0 (1325924352), PolyRefl.mkT 20 4 8 0 0 (4194304), PolyRefl.mkT 22 2 0 8 0 (201326592), PolyRefl.mkT 22 2 2 6 0 (-318767104), PolyRefl.mkT 22 2 4 4 0 (142606336), PolyRefl.mkT 22 2 6 2 0 (-15728640), PolyRefl.mkT 24 0 0 8 0 (16777216), PolyRefl.mkT 24 0 2 6 0 (-29360128), PolyRefl.mkT 24 0 4 4 0 (14680064), PolyRefl.mkT 24 0 6 2 0 (-1835008)]
def cp129_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 28 10 2 0 (-1), PolyRefl.mkT 2 26 10 2 0 (18), PolyRefl.mkT 2 26 12 0 0 (4), PolyRefl.mkT 4 24 10 2 0 (197), PolyRefl.mkT 4 24 12 0 0 (-224), PolyRefl.mkT 6 22 10 2 0 (-268), PolyRefl.mkT 6 22 12 0 0 (1800), PolyRefl.mkT 8 20 10 2 0 (-1673), PolyRefl.mkT 8 20 12 0 0 (-16928), PolyRefl.mkT 10 18 10 2 0 (878), PolyRefl.mkT 10 18 12 0 0 (99804), PolyRefl.mkT 12 16 10 2 0 (6533), PolyRefl.mkT 12 16 12 0 0 (-321984), PolyRefl.mkT 14 14 10 2 0 (1368), PolyRefl.mkT 14 14 12 0 0 (592368), PolyRefl.mkT 16 12 10 2 0 (-12027), PolyRefl.mkT 16 12 12 0 0 (-616256), PolyRefl.mkT 18 10 10 2 0 (-12594), PolyRefl.mkT 18 10 12 0 0 (343676), PolyRefl.mkT 20 8 10 2 0 (-2121), PolyRefl.mkT 20 8 12 0 0 (-92000), PolyRefl.mkT 22 6 10 2 0 (2420), PolyRefl.mkT 22 6 12 0 0 (10888), PolyRefl.mkT 24 4 10 2 0 (901), PolyRefl.mkT 24 4 12 0 0 (-1184), PolyRefl.mkT 26 2 10 2 0 (-14), PolyRefl.mkT 26 2 12 0 0 (36), PolyRefl.mkT 28 0 10 2 0 (-1)]
def cp130_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 56 20 0 0 (1), PolyRefl.mkT 2 54 20 0 0 (-36), PolyRefl.mkT 4 52 20 0 0 (-70), PolyRefl.mkT 6 50 20 0 0 (7628), PolyRefl.mkT 8 48 20 0 0 (32507), PolyRefl.mkT 10 46 20 0 0 (-167576), PolyRefl.mkT 12 44 20 0 0 (-568796), PolyRefl.mkT 14 42 20 0 0 (1475112), PolyRefl.mkT 16 40 20 0 0 (4975625), PolyRefl.mkT 18 38 20 0 0 (-6308268), PolyRefl.mkT 20 36 20 0 0 (-27009562), PolyRefl.mkT 22 34 20 0 0 (8297860), PolyRefl.mkT 24 32 20 0 0 (91324667), PolyRefl.mkT 26 30 20 0 0 (41017200), PolyRefl.mkT 28 28 20 0 0 (-171234184), PolyRefl.mkT 30 26 20 0 0 (-209769360), PolyRefl.mkT 32 24 20 0 0 (83720443), PolyRefl.mkT 34 22 20 0 0 (330382276), PolyRefl.mkT 36 20 20 0 0 (227999718), PolyRefl.mkT 38 18 20 0 0 (-2506476), PolyRefl.mkT 40 16 20 0 0 (-78180343), PolyRefl.mkT 42 14 20 0 0 (-32626008), PolyRefl.mkT 44 12 20 0 0 (2411044), PolyRefl.mkT 46 10 20 0 0 (4445416), PolyRefl.mkT 48 8 20 0 0 (748283), PolyRefl.mkT 50 6 20 0 0 (-30068), PolyRefl.mkT 52 4 20 0 0 (-1606), PolyRefl.mkT 54 2 20 0 0 (28), PolyRefl.mkT 56 0 20 0 0 (1)]
def cp131_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 32 10 2 0 (-16), PolyRefl.mkT 0 32 12 0 0 (20), PolyRefl.mkT 2 30 10 2 0 (384), PolyRefl.mkT 2 30 12 0 0 (-512), PolyRefl.mkT 4 28 10 2 0 (1408), PolyRefl.mkT 4 28 12 0 0 (1632), PolyRefl.mkT 6 26 10 2 0 (-22912), PolyRefl.mkT 6 26 12 0 0 (-28032), PolyRefl.mkT 8 24 10 2 0 (2112), PolyRefl.mkT 8 24 12 0 0 (453168), PolyRefl.mkT 10 22 10 2 0 (170368), PolyRefl.mkT 10 22 12 0 0 (-3410176), PolyRefl.mkT 12 20 10 2 0 (-6528), PolyRefl.mkT 12 20 12 0 0 (14983840), PolyRefl.mkT 14 18 10 2 0 (-591232), PolyRefl.mkT 14 18 12 0 0 (-41455232), PolyRefl.mkT 16 16 10 2 0 (-219232), PolyRefl.mkT 16 16 12 0 0 (72109432), PolyRefl.mkT 18 14 10 2 0 (974976), PolyRefl.mkT 18 14 12 0 0 (-74971136), PolyRefl.mkT 20 12 10 2 0 (982656), PolyRefl.mkT 20 12 12 0 0 (43499680), PolyRefl.mkT 22 10 10 2 0 (40832), PolyRefl.mkT 22 10 12 0 0 (-14488192), PolyRefl.mkT 24 8 10 2 0 (-251840), PolyRefl.mkT 24 8 12 0 0 (2773552), PolyRefl.mkT 26 6 10 2 0 (-48000), PolyRefl.mkT 26 6 12 0 0 (-257280), PolyRefl.mkT 28 4 10 2 0 (15744), PolyRefl.mkT 28 4 12 0 0 (3168), PolyRefl.mkT 30 2 10 2 0 (-128), PolyRefl.mkT 30 2 12 0 0 (-384), PolyRefl.mkT 32 0 10 2 0 (-16), PolyRefl.mkT 32 0 12 0 0 (20)]
def cp132_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 12 86 32 0 0 (-1), PolyRefl.mkT 14 84 32 0 0 (187), PolyRefl.mkT 16 82 32 0 0 (-13786), PolyRefl.mkT 18 80 32 0 0 (531766), PolyRefl.mkT 20 78 32 0 0 (-12383949), PolyRefl.mkT 22 76 32 0 0 (193352135), PolyRefl.mkT 24 74 32 0 0 (-2186558640), PolyRefl.mkT 26 72 32 0 0 (18895691856), PolyRefl.mkT 28 70 32 0 0 (-129404510612), PolyRefl.mkT 30 68 32 0 0 (719764059228), PolyRefl.mkT 32 66 32 0 0 (-3305842749720), PolyRefl.mkT 34 64 32 0 0 (12678811655720), PolyRefl.mkT 36 62 32 0 0 (-40911507698164), PolyRefl.mkT 38 60 32 0 0 (111623746317468), PolyRefl.mkT 40 58 32 0 0 (-258344309388624), PolyRefl.mkT 42 56 32 0 0 (508096076738224), PolyRefl.mkT 44 54 32 0 0 (-849642948926158), PolyRefl.mkT 46 52 32 0 0 (1207218494059578), PolyRefl.mkT 48 50 32 0 0 (-1454584822771036), PolyRefl.mkT 50 48 32 0 0 (1481037236608132), PolyRefl.mkT 52 46 32 0 0 (-1267300394750694), PolyRefl.mkT 54 44 32 0 0 (903916168213170), PolyRefl.mkT 56 42 32 0 0 (-530949041523664), PolyRefl.mkT 58 40 32 0 0 (252139554525488), PolyRefl.mkT 60 38 32 0 0 (-93932209822948), PolyRefl.mkT 62 36 32 0 0 (25950155371852), PolyRefl.mkT 64 34 32 0 0 (-4626368960664), PolyRefl.mkT 66 32 32 0 0 (237663031720), PolyRefl.mkT 68 30 32 0 0 (125507051804), PolyRefl.mkT 70 28 32 0 0 (-37177306900), PolyRefl.mkT 72 26 32 0 0 (3958985424), PolyRefl.mkT 74 24 32 0 0 (42175696), PolyRefl.mkT 76 22 32 0 0 (-43388089), PolyRefl.mkT 78 20 32 0 0 (2350947), PolyRefl.mkT 80 18 32 0 0 (38886), PolyRefl.mkT 82 16 32 0 0 (-5770), PolyRefl.mkT 84 14 32 0 0 (139), PolyRefl.mkT 86 12 32 0 0 (-1)]
def cp133_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 4 18 0 4 0 (17179869184), PolyRefl.mkT 4 18 2 2 0 (-17179869184), PolyRefl.mkT 4 18 4 0 0 (2147483648), PolyRefl.mkT 6 16 0 4 0 (-154618822656), PolyRefl.mkT 6 16 2 2 0 (154618822656), PolyRefl.mkT 6 16 4 0 0 (-19327352832), PolyRefl.mkT 8 14 0 4 0 (635655159808), PolyRefl.mkT 8 14 2 2 0 (-635655159808), PolyRefl.mkT 8 14 4 0 0 (79456894976), PolyRefl.mkT 10 12 0 4 0 (-1322849927168), PolyRefl.mkT 10 12 2 2 0 (1322849927168), PolyRefl.mkT 10 12 4 0 0 (-165356240896), PolyRefl.mkT 12 10 0 4 0 (1425929142272), PolyRefl.mkT 12 10 2 2 0 (-1425929142272), PolyRefl.mkT 12 10 4 0 0 (178241142784), PolyRefl.mkT 14 8 0 4 0 (-738734374912), PolyRefl.mkT 14 8 2 2 0 (738734374912), PolyRefl.mkT 14 8 4 0 0 (-92341796864), PolyRefl.mkT 16 6 0 4 0 (120259084288), PolyRefl.mkT 16 6 2 2 0 (-120259084288), PolyRefl.mkT 16 6 4 0 0 (15032385536), PolyRefl.mkT 18 4 0 4 0 (17179869184), PolyRefl.mkT 18 4 2 2 0 (-17179869184), PolyRefl.mkT 18 4 4 0 0 (2147483648)]
def cp134_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 4 26 8 4 0 (-8), PolyRefl.mkT 4 26 10 2 0 (8), PolyRefl.mkT 4 26 12 0 0 (-1), PolyRefl.mkT 6 24 8 4 0 (296), PolyRefl.mkT 6 24 10 2 0 (-296), PolyRefl.mkT 6 24 12 0 0 (21), PolyRefl.mkT 8 22 8 4 0 (-2872), PolyRefl.mkT 8 22 10 2 0 (2872), PolyRefl.mkT 8 22 12 0 0 (-151), PolyRefl.mkT 10 20 8 4 0 (14168), PolyRefl.mkT 10 20 10 2 0 (-14168), PolyRefl.mkT 10 20 12 0 0 (747), PolyRefl.mkT 12 18 8 4 0 (-40656), PolyRefl.mkT 12 18 10 2 0 (40656), PolyRefl.mkT 12 18 12 0 0 (-2394), PolyRefl.mkT 14 16 8 4 0 (70416), PolyRefl.mkT 14 16 10 2 0 (-70416), PolyRefl.mkT 14 16 12 0 0 (4546), PolyRefl.mkT 16 14 8 4 0 (-73712), PolyRefl.mkT 16 14 10 2 0 (73712), PolyRefl.mkT 16 14 12 0 0 (-4958), PolyRefl.mkT 18 12 8 4 0 (44848), PolyRefl.mkT 18 12 10 2 0 (-44848), PolyRefl.mkT 18 12 12 0 0 (2918), PolyRefl.mkT 20 10 8 4 0 (-13992), PolyRefl.mkT 20 10 10 2 0 (13992), PolyRefl.mkT 20 10 12 0 0 (-725), PolyRefl.mkT 22 8 8 4 0 (1352), PolyRefl.mkT 22 8 10 2 0 (-1352), PolyRefl.mkT 22 8 12 0 0 (-39), PolyRefl.mkT 24 6 8 4 0 (168), PolyRefl.mkT 24 6 10 2 0 (-168), PolyRefl.mkT 24 6 12 0 0 (37), PolyRefl.mkT 26 4 8 4 0 (-8), PolyRefl.mkT 26 4 10 2 0 (8), PolyRefl.mkT 26 4 12 0 0 (-1)]
def cp135_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 12 78 24 0 0 (-512), PolyRefl.mkT 14 76 24 0 0 (56832), PolyRefl.mkT 16 74 24 0 0 (-2654208), PolyRefl.mkT 18 72 24 0 0 (69459968), PolyRefl.mkT 20 70 24 0 0 (-1161965568), PolyRefl.mkT 22 68 24 0 0 (13592899584), PolyRefl.mkT 24 66 24 0 0 (-118078898176), PolyRefl.mkT 26 64 24 0 0 (793133015040), PolyRefl.mkT 28 62 24 0 0 (-4235451709440), PolyRefl.mkT 30 60 24 0 0 (18333618710528), PolyRefl.mkT 32 58 24 0 0 (-65206859759616), PolyRefl.mkT 34 56 24 0 0 (192369975582720), PolyRefl.mkT 36 54 24 0 0 (-473737950547968), PolyRefl.mkT 38 52 24 0 0 (977686234042368), PolyRefl.mkT 40 50 24 0 0 (-1694123011670016), PolyRefl.mkT 42 48 24 0 0 (2464922774593536), PolyRefl.mkT 44 46 24 0 0 (-3006177455115264), PolyRefl.mkT 46 44 24 0 0 (3061642459419648), PolyRefl.mkT 48 42 24 0 0 (-2587957672116224), PolyRefl.mkT 50 40 24 0 0 (1798811893604352), PolyRefl.mkT 52 38 24 0 0 (-1013980471971840), PolyRefl.mkT 54 36 24 0 0 (453872793210880), PolyRefl.mkT 56 34 24 0 0 (-155893010989056), PolyRefl.mkT 58 32 24 0 0 (38561362747392), PolyRefl.mkT 60 30 24 0 0 (-5879537154048), PolyRefl.mkT 62 28 24 0 0 (210956740608), PolyRefl.mkT 64 26 24 0 0 (111149875200), PolyRefl.mkT 66 24 24 0 0 (-19800973312), PolyRefl.mkT 68 22 24 0 0 (268750848), PolyRefl.mkT 70 20 24 0 0 (192049152), PolyRefl.mkT 72 18 24 0 0 (-8847360), PolyRefl.mkT 74 16 24 0 0 (-417792), PolyRefl.mkT 76 14 24 0 0 (32256), PolyRefl.mkT 78 12 24 0 0 (-512)]
def cp136_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 10 58 16 4 0 (262144), PolyRefl.mkT 10 58 18 2 0 (-262144), PolyRefl.mkT 10 58 20 0 0 (32768), PolyRefl.mkT 12 56 16 4 0 (-19922944), PolyRefl.mkT 12 56 18 2 0 (19922944), PolyRefl.mkT 12 56 20 0 0 (-3014656), PolyRefl.mkT 14 54 16 4 0 (586153984), PolyRefl.mkT 14 54 18 2 0 (-586153984), PolyRefl.mkT 14 54 20 0 0 (100532224), PolyRefl.mkT 16 52 16 4 0 (-9006219264), PolyRefl.mkT 16 52 18 2 0 (9006219264), PolyRefl.mkT 16 52 20 0 0 (-1652686848), PolyRefl.mkT 18 50 16 4 0 (87137189888), PolyRefl.mkT 18 50 18 2 0 (-87137189888), PolyRefl.mkT 18 50 20 0 0 (16571236352), PolyRefl.mkT 20 48 16 4 0 (-586037592064), PolyRefl.mkT 20 48 18 2 0 (586037592064), PolyRefl.mkT 20 48 20 0 0 (-113318166528), PolyRefl.mkT 22 46 16 4 0 (2898183323648), PolyRefl.mkT 22 46 18 2 0 (-2898183323648), PolyRefl.mkT 22 46 20 0 0 (562934710272), PolyRefl.mkT 24 44 16 4 0 (-10902244950016), PolyRefl.mkT 24 44 18 2 0 (10902244950016), PolyRefl.mkT 24 44 20 0 0 (-2110806949888), PolyRefl.mkT 26 42 16 4 0 (31855516319744), PolyRefl.mkT 26 42 18 2 0 (-31855516319744), PolyRefl.mkT 26 42 20 0 0 (6119893729280), PolyRefl.mkT 28 40 16 4 0 (-73227965562880), PolyRefl.mkT 28 40 18 2 0 (73227965562880), PolyRefl.mkT 28 40 20 0 0 (-13930427318272), PolyRefl.mkT 30 38 16 4 0 (133378126905344), PolyRefl.mkT 30 38 18 2 0 (-133378126905344), PolyRefl.mkT 30 38 20 0 0 (25121913569280), PolyRefl.mkT 32 36 16 4 0 (-193004507758592), PolyRefl.mkT 32 36 18 2 0 (193004507758592), PolyRefl.mkT 32 36 20 0 0 (-36045877149696), PolyRefl.mkT 34 34 16 4 0 (221561977044992), PolyRefl.mkT 34 34 18 2 0 (-221561977044992), PolyRefl.mkT 34 34 20 0 0 (41147235696640), PolyRefl.mkT 36 32 16 4 0 (-200573968187392), PolyRefl.mkT 36 32 18 2 0 (200573968187392), PolyRefl.mkT 36 32 20 0 0 (-37198685798400), PolyRefl.mkT 38 30 16 4 0 (141516016189440), PolyRefl.mkT 38 30 18 2 0 (-141516016189440), PolyRefl.mkT 38 30 20 0 0 (26369945501696), PolyRefl.mkT 40 28 16 4 0 (-76261739200512), PolyRefl.mkT 40 28 18 2 0 (76261739200512), PolyRefl.mkT 40 28 20 0 0 (-14407651033088), PolyRefl.mkT 42 26 16 4 0 (30317918027776), PolyRefl.mkT 42 26 18 2 0 (-30317918027776), PolyRefl.mkT 42 26 20 0 0 (5894743490560), PolyRefl.mkT 44 24 16 4 0 (-8330943660032), PolyRefl.mkT 44 24 18 2 0 (8330943660032), PolyRefl.mkT 44 24 20 0 0 (-1717123284992), PolyRefl.mkT 46 22 16 4 0 (1354679451648), PolyRefl.mkT 46 22 18 2 0 (-1354679451648), PolyRefl.mkT 46 22 20 0 0 (321237942272), PolyRefl.mkT 48 20 16 4 0 (-56221499392), PolyRefl.mkT 48 20 18 2 0 (56221499392), PolyRefl.mkT 48 20 20 0 0 (-28033286144), PolyRefl.mkT 50 18 16 4 0 (-20236992512), PolyRefl.mkT 50 18 18 2 0 (20236992512), PolyRefl.mkT 50 18 20 0 0 (-1447493632), PolyRefl.mkT 52 16 16 4 0 (2712666112), PolyRefl.mkT 52 16 18 2 0 (-2712666112), PolyRefl.mkT 52 16 20 0 0 (463339520), PolyRefl.mkT 54 14 16 4 0 (49283072), PolyRefl.mkT 54 14 18 2 0 (-49283072), PolyRefl.mkT 54 14 20 0 0 (-12713984), PolyRefl.mkT 56 12 16 4 0 (-11534336), PolyRefl.mkT 56 12 18 2 0 (11534336), PolyRefl.mkT 56 12 20 0 0 (-917504), PolyRefl.mkT 58 10 16 4 0 (262144), PolyRefl.mkT 58 10 18 2 0 (-262144), PolyRefl.mkT 58 10 20 0 0 (32768)]
def cp137_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 12 92 32 0 0 (2), PolyRefl.mkT 14 90 32 0 0 (-229), PolyRefl.mkT 16 88 32 0 0 (11614), PolyRefl.mkT 18 86 32 0 0 (-348971), PolyRefl.mkT 20 84 32 0 0 (6983632), PolyRefl.mkT 22 82 32 0 0 (-98453539), PolyRefl.mkT 24 80 32 0 0 (1005728302), PolyRefl.mkT 26 78 32 0 0 (-7586389741), PolyRefl.mkT 28 76 32 0 0 (42913489082), PolyRefl.mkT 30 74 32 0 0 (-184024410452), PolyRefl.mkT 32 72 32 0 0 (599661506200), PolyRefl.mkT 34 70 32 0 0 (-1464898408044), PolyRefl.mkT 36 68 32 0 0 (2551239305984), PolyRefl.mkT 38 66 32 0 0 (-2626631905596), PolyRefl.mkT 40 64 32 0 0 (-325282799240), PolyRefl.mkT 42 62 32 0 0 (6906643712892), PolyRefl.mkT 44 60 32 0 0 (-13392812330940), PolyRefl.mkT 46 58 32 0 0 (12611293989034), PolyRefl.mkT 48 56 32 0 0 (-907186220956), PolyRefl.mkT 50 54 32 0 0 (-15234697785354), PolyRefl.mkT 52 52 32 0 0 (22860908652640), PolyRefl.mkT 54 50 32 0 0 (-15234697785354), PolyRefl.mkT 56 48 32 0 0 (-907186220956), PolyRefl.mkT 58 46 32 0 0 (12611293989034), PolyRefl.mkT 60 44 32 0 0 (-13392812330940), PolyRefl.mkT 62 42 32 0 0 (6906643712892), PolyRefl.mkT 64 40 32 0 0 (-325282799240), PolyRefl.mkT 66 38 32 0 0 (-2626631905596), PolyRefl.mkT 68 36 32 0 0 (2551239305984), PolyRefl.mkT 70 34 32 0 0 (-1464898408044), PolyRefl.mkT 72 32 32 0 0 (599661506200), PolyRefl.mkT 74 30 32 0 0 (-184024410452), PolyRefl.mkT 76 28 32 0 0 (42913489082), PolyRefl.mkT 78 26 32 0 0 (-7586389741), PolyRefl.mkT 80 24 32 0 0 (1005728302), PolyRefl.mkT 82 22 32 0 0 (-98453539), PolyRefl.mkT 84 20 32 0 0 (6983632), PolyRefl.mkT 86 18 32 0 0 (-348971), PolyRefl.mkT 88 16 32 0 0 (11614), PolyRefl.mkT 90 14 32 0 0 (-229), PolyRefl.mkT 92 12 32 0 0 (2)]
def cp138_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 22 4 0 0 (-65536), PolyRefl.mkT 4 20 0 4 0 (16777216), PolyRefl.mkT 4 20 2 2 0 (-16777216), PolyRefl.mkT 4 20 4 0 0 (4849664), PolyRefl.mkT 6 18 0 4 0 (-268435456), PolyRefl.mkT 6 18 2 2 0 (268435456), PolyRefl.mkT 6 18 4 0 0 (-67960832), PolyRefl.mkT 8 16 0 4 0 (1543503872), PolyRefl.mkT 8 16 2 2 0 (-1543503872), PolyRefl.mkT 8 16 4 0 0 (381157376), PolyRefl.mkT 10 14 0 4 0 (-4026531840), PolyRefl.mkT 10 14 2 2 0 (4026531840), PolyRefl.mkT 10 14 4 0 0 (-1005715456), PolyRefl.mkT 12 12 0 4 0 (5469372416), PolyRefl.mkT 12 12 2 2 0 (-5469372416), PolyRefl.mkT 12 12 4 0 0 (1375469568), PolyRefl.mkT 14 10 0 4 0 (-4026531840), PolyRefl.mkT 14 10 2 2 0 (4026531840), PolyRefl.mkT 14 10 4 0 0 (-1005715456), PolyRefl.mkT 16 8 0 4 0 (1543503872), PolyRefl.mkT 16 8 2 2 0 (-1543503872), PolyRefl.mkT 16 8 4 0 0 (381157376), PolyRefl.mkT 18 6 0 4 0 (-268435456), PolyRefl.mkT 18 6 2 2 0 (268435456), PolyRefl.mkT 18 6 4 0 0 (-67960832), PolyRefl.mkT 20 4 0 4 0 (16777216), PolyRefl.mkT 20 4 2 2 0 (-16777216), PolyRefl.mkT 20 4 4 0 0 (4849664), PolyRefl.mkT 22 2 4 0 0 (-65536)]
def cp139_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 30 8 4 0 (1), PolyRefl.mkT 2 30 10 2 0 (-1), PolyRefl.mkT 4 28 8 4 0 (-38), PolyRefl.mkT 4 28 10 2 0 (38), PolyRefl.mkT 4 28 12 0 0 (1), PolyRefl.mkT 6 26 8 4 0 (363), PolyRefl.mkT 6 26 10 2 0 (-363), PolyRefl.mkT 6 26 12 0 0 (-76), PolyRefl.mkT 8 24 8 4 0 (-1020), PolyRefl.mkT 8 24 10 2 0 (1020), PolyRefl.mkT 8 24 12 0 0 (1442), PolyRefl.mkT 10 22 8 4 0 (-839), PolyRefl.mkT 10 22 10 2 0 (839), PolyRefl.mkT 10 22 12 0 0 (-8988), PolyRefl.mkT 12 20 8 4 0 (4934), PolyRefl.mkT 12 20 10 2 0 (-4934), PolyRefl.mkT 12 20 12 0 0 (29039), PolyRefl.mkT 14 18 8 4 0 (475), PolyRefl.mkT 14 18 10 2 0 (-475), PolyRefl.mkT 14 18 12 0 0 (-56472), PolyRefl.mkT 16 16 8 4 0 (-7752), PolyRefl.mkT 16 16 10 2 0 (7752), PolyRefl.mkT 16 16 12 0 0 (70108), PolyRefl.mkT 18 14 8 4 0 (475), PolyRefl.mkT 18 14 10 2 0 (-475), PolyRefl.mkT 18 14 12 0 0 (-56472), PolyRefl.mkT 20 12 8 4 0 (4934), PolyRefl.mkT 20 12 10 2 0 (-4934), PolyRefl.mkT 20 12 12 0 0 (29039), PolyRefl.mkT 22 10 8 4 0 (-839), PolyRefl.mkT 22 10 10 2 0 (839), PolyRefl.mkT 22 10 12 0 0 (-8988), PolyRefl.mkT 24 8 8 4 0 (-1020), PolyRefl.mkT 24 8 10 2 0 (1020), PolyRefl.mkT 24 8 12 0 0 (1442), PolyRefl.mkT 26 6 8 4 0 (363), PolyRefl.mkT 26 6 10 2 0 (-363), PolyRefl.mkT 26 6 12 0 0 (-76), PolyRefl.mkT 28 4 8 4 0 (-38), PolyRefl.mkT 28 4 10 2 0 (38), PolyRefl.mkT 28 4 12 0 0 (1), PolyRefl.mkT 30 2 8 4 0 (1), PolyRefl.mkT 30 2 10 2 0 (-1)]
def cp140_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 6 90 24 0 0 (1), PolyRefl.mkT 8 88 24 0 0 (-114), PolyRefl.mkT 10 86 24 0 0 (5421), PolyRefl.mkT 12 84 24 0 0 (-140696), PolyRefl.mkT 14 82 24 0 0 (2197866), PolyRefl.mkT 16 80 24 0 0 (-21455772), PolyRefl.mkT 18 78 24 0 0 (128787210), PolyRefl.mkT 20 76 24 0 0 (-415256280), PolyRefl.mkT 22 74 24 0 0 (174634425), PolyRefl.mkT 24 72 24 0 0 (3702712950), PolyRefl.mkT 26 70 24 0 0 (-10809586851), PolyRefl.mkT 28 68 24 0 0 (-4333787616), PolyRefl.mkT 30 66 24 0 0 (66697043416), PolyRefl.mkT 32 64 24 0 0 (-55697428560), PolyRefl.mkT 34 62 24 0 0 (-206677467240), PolyRefl.mkT 36 60 24 0 0 (319793946272), PolyRefl.mkT 38 58 24 0 0 (382352285250), PolyRefl.mkT 40 56 24 0 0 (-888235145220), PolyRefl.mkT 42 54 24 0 0 (-419171415686), PolyRefl.mkT 44 52 24 0 0 (1562733080496), PolyRefl.mkT 46 50 24 0 0 (187303516188), PolyRefl.mkT 48 48 24 0 0 (-1875053050920), PolyRefl.mkT 50 46 24 0 0 (187303516188), PolyRefl.mkT 52 44 24 0 0 (1562733080496), PolyRefl.mkT 54 42 24 0 0 (-419171415686), PolyRefl.mkT 56 40 24 0 0 (-888235145220), PolyRefl.mkT 58 38 24 0 0 (382352285250), PolyRefl.mkT 60 36 24 0 0 (319793946272), PolyRefl.mkT 62 34 24 0 0 (-206677467240), PolyRefl.mkT 64 32 24 0 0 (-55697428560), PolyRefl.mkT 66 30 24 0 0 (66697043416), PolyRefl.mkT 68 28 24 0 0 (-4333787616), PolyRefl.mkT 70 26 24 0 0 (-10809586851), PolyRefl.mkT 72 24 24 0 0 (3702712950), PolyRefl.mkT 74 22 24 0 0 (174634425), PolyRefl.mkT 76 20 24 0 0 (-415256280), PolyRefl.mkT 78 18 24 0 0 (128787210), PolyRefl.mkT 80 16 24 0 0 (-21455772), PolyRefl.mkT 82 14 24 0 0 (2197866), PolyRefl.mkT 84 12 24 0 0 (-140696), PolyRefl.mkT 86 10 24 0 0 (5421), PolyRefl.mkT 88 8 24 0 0 (-114), PolyRefl.mkT 90 6 24 0 0 (1)]
def cp141_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 4 68 20 0 0 (1), PolyRefl.mkT 6 66 16 4 0 (256), PolyRefl.mkT 6 66 18 2 0 (-256), PolyRefl.mkT 6 66 20 0 0 (-40), PolyRefl.mkT 8 64 16 4 0 (-19968), PolyRefl.mkT 8 64 18 2 0 (19968), PolyRefl.mkT 8 64 20 0 0 (-880), PolyRefl.mkT 10 62 16 4 0 (594688), PolyRefl.mkT 10 62 18 2 0 (-594688), PolyRefl.mkT 10 62 20 0 0 (82632), PolyRefl.mkT 12 60 16 4 0 (-8715264), PolyRefl.mkT 12 60 18 2 0 (8715264), PolyRefl.mkT 12 60 20 0 0 (-2247624), PolyRefl.mkT 14 58 16 4 0 (68873472), PolyRefl.mkT 14 58 18 2 0 (-68873472), PolyRefl.mkT 14 58 20 0 0 (34687928), PolyRefl.mkT 16 56 16 4 0 (-284604928), PolyRefl.mkT 16 56 18 2 0 (284604928), PolyRefl.mkT 16 56 20 0 0 (-334064464), PolyRefl.mkT 18 54 16 4 0 (409251584), PolyRefl.mkT 18 54 18 2 0 (-409251584), PolyRefl.mkT 18 54 20 0 0 (2065216296), PolyRefl.mkT 20 52 16 4 0 (1141925888), PolyRefl.mkT 20 52 18 2 0 (-1141925888), PolyRefl.mkT 20 52 20 0 0 (-8284799844), PolyRefl.mkT 22 50 16 4 0 (-4826448640), PolyRefl.mkT 22 50 18 2 0 (4826448640), PolyRefl.mkT 22 50 20 0 0 (21070940408), PolyRefl.mkT 24 48 16 4 0 (1841299968), PolyRefl.mkT 24 48 18 2 0 (-1841299968), PolyRefl.mkT 24 48 20 0 0 (-29153632624), PolyRefl.mkT 26 46 16 4 0 (15541237504), PolyRefl.mkT 26 46 18 2 0 (-15541237504), PolyRefl.mkT 26 46 20 0 0 (-109655384), PolyRefl.mkT 28 44 16 4 0 (-18737054720), PolyRefl.mkT 28 44 18 2 0 (18737054720), PolyRefl.mkT 28 44 20 0 0 (82687670152), PolyRefl.mkT 30 42 16 4 0 (-22803134208), PolyRefl.mkT 30 42 18 2 0 (22803134208), PolyRefl.mkT 30 42 20 0 0 (-147270892328), PolyRefl.mkT 32 40 16 4 0 (47535556096), PolyRefl.mkT 32 40 18 2 0 (-47535556096), PolyRefl.mkT 32 40 20 0 0 (72621379632), PolyRefl.mkT 34 38 16 4 0 (11609625344), PolyRefl.mkT 34 38 18 2 0 (-11609625344), PolyRefl.mkT 34 38 20 0 0 (124209620488), PolyRefl.mkT 36 36 16 4 0 (-62976774144), PolyRefl.mkT 36 36 18 2 0 (62976774144), PolyRefl.mkT 36 36 20 0 0 (-235068608698), PolyRefl.mkT 38 34 16 4 0 (11609625344), PolyRefl.mkT 38 34 18 2 0 (-11609625344), PolyRefl.mkT 38 34 20 0 0 (124209620488), PolyRefl.mkT 40 32 16 4 0 (47535556096), PolyRefl.mkT 40 32 18 2 0 (-47535556096), PolyRefl.mkT 40 32 20 0 0 (72621379632), PolyRefl.mkT 42 30 16 4 0 (-22803134208), PolyRefl.mkT 42 30 18 2 0 (22803134208), PolyRefl.mkT 42 30 20 0 0 (-147270892328), PolyRefl.mkT 44 28 16 4 0 (-18737054720), PolyRefl.mkT 44 28 18 2 0 (18737054720), PolyRefl.mkT 44 28 20 0 0 (82687670152), PolyRefl.mkT 46 26 16 4 0 (15541237504), PolyRefl.mkT 46 26 18 2 0 (-15541237504), PolyRefl.mkT 46 26 20 0 0 (-109655384), PolyRefl.mkT 48 24 16 4 0 (1841299968), PolyRefl.mkT 48 24 18 2 0 (-1841299968), PolyRefl.mkT 48 24 20 0 0 (-29153632624), PolyRefl.mkT 50 22 16 4 0 (-4826448640), PolyRefl.mkT 50 22 18 2 0 (4826448640), PolyRefl.mkT 50 22 20 0 0 (21070940408), PolyRefl.mkT 52 20 16 4 0 (1141925888), PolyRefl.mkT 52 20 18 2 0 (-1141925888), PolyRefl.mkT 52 20 20 0 0 (-8284799844), PolyRefl.mkT 54 18 16 4 0 (409251584), PolyRefl.mkT 54 18 18 2 0 (-409251584), PolyRefl.mkT 54 18 20 0 0 (2065216296), PolyRefl.mkT 56 16 16 4 0 (-284604928), PolyRefl.mkT 56 16 18 2 0 (284604928), PolyRefl.mkT 56 16 20 0 0 (-334064464), PolyRefl.mkT 58 14 16 4 0 (68873472), PolyRefl.mkT 58 14 18 2 0 (-68873472), PolyRefl.mkT 58 14 20 0 0 (34687928), PolyRefl.mkT 60 12 16 4 0 (-8715264), PolyRefl.mkT 60 12 18 2 0 (8715264), PolyRefl.mkT 60 12 20 0 0 (-2247624), PolyRefl.mkT 62 10 16 4 0 (594688), PolyRefl.mkT 62 10 18 2 0 (-594688), PolyRefl.mkT 62 10 20 0 0 (82632), PolyRefl.mkT 64 8 16 4 0 (-19968), PolyRefl.mkT 64 8 18 2 0 (19968), PolyRefl.mkT 64 8 20 0 0 (-880), PolyRefl.mkT 66 6 16 4 0 (256), PolyRefl.mkT 66 6 18 2 0 (-256), PolyRefl.mkT 66 6 20 0 0 (-40), PolyRefl.mkT 68 4 20 0 0 (1)]
def cp142_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 4 (-2), PolyRefl.mkT 0 4 0 2 2 (-4), PolyRefl.mkT 0 4 0 4 0 (-2), PolyRefl.mkT 1 3 0 1 3 (-64), PolyRefl.mkT 1 3 0 3 1 (64), PolyRefl.mkT 2 2 0 0 4 (12), PolyRefl.mkT 2 2 0 2 2 (24), PolyRefl.mkT 2 2 0 4 0 (12), PolyRefl.mkT 3 1 0 1 3 (64), PolyRefl.mkT 3 1 0 3 1 (-64), PolyRefl.mkT 4 0 0 0 4 (-2), PolyRefl.mkT 4 0 0 2 2 (-4), PolyRefl.mkT 4 0 0 4 0 (-2)]
def cp143_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (-2), PolyRefl.mkT 0 4 0 2 0 (-2), PolyRefl.mkT 0 4 2 0 0 (-2), PolyRefl.mkT 1 3 0 1 1 (-64), PolyRefl.mkT 2 2 0 0 2 (12), PolyRefl.mkT 2 2 0 2 0 (12), PolyRefl.mkT 2 2 2 0 0 (12), PolyRefl.mkT 3 1 0 1 1 (64), PolyRefl.mkT 4 0 0 0 2 (-2), PolyRefl.mkT 4 0 0 2 0 (-2), PolyRefl.mkT 4 0 2 0 0 (-2)]
def cp144_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 1 5 (-24), PolyRefl.mkT 0 3 0 3 3 (80), PolyRefl.mkT 0 3 0 5 1 (-24), PolyRefl.mkT 1 2 0 0 6 (4), PolyRefl.mkT 1 2 0 2 4 (-60), PolyRefl.mkT 1 2 0 4 2 (60), PolyRefl.mkT 1 2 0 6 0 (-4), PolyRefl.mkT 2 1 0 1 5 (72), PolyRefl.mkT 2 1 0 3 3 (-240), PolyRefl.mkT 2 1 0 5 1 (72), PolyRefl.mkT 3 0 0 0 6 (4), PolyRefl.mkT 3 0 0 2 4 (-60), PolyRefl.mkT 3 0 0 4 2 (60), PolyRefl.mkT 3 0 0 6 0 (-4)]
def cp145_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 1 3 (-24), PolyRefl.mkT 0 3 0 3 1 (104), PolyRefl.mkT 0 3 2 1 1 (-24), PolyRefl.mkT 1 2 0 0 4 (4), PolyRefl.mkT 1 2 0 2 2 (-64), PolyRefl.mkT 1 2 0 4 0 (124), PolyRefl.mkT 1 2 2 0 2 (4), PolyRefl.mkT 1 2 2 2 0 (-68), PolyRefl.mkT 1 2 4 0 0 (4), PolyRefl.mkT 2 1 0 1 3 (72), PolyRefl.mkT 2 1 0 3 1 (-312), PolyRefl.mkT 2 1 2 1 1 (72), PolyRefl.mkT 3 0 0 0 4 (4), PolyRefl.mkT 3 0 0 2 2 (-64), PolyRefl.mkT 3 0 0 4 0 (124), PolyRefl.mkT 3 0 2 0 2 (4), PolyRefl.mkT 3 0 2 2 0 (-68), PolyRefl.mkT 3 0 4 0 0 (4)]
def cp146_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 5 1 (-32), PolyRefl.mkT 0 3 2 3 1 (32), PolyRefl.mkT 0 3 4 1 1 (-6), PolyRefl.mkT 1 2 0 6 0 (-32), PolyRefl.mkT 1 2 2 4 0 (48), PolyRefl.mkT 1 2 4 2 0 (-18), PolyRefl.mkT 1 2 6 0 0 (1), PolyRefl.mkT 2 1 0 5 1 (96), PolyRefl.mkT 2 1 2 3 1 (-96), PolyRefl.mkT 2 1 4 1 1 (18), PolyRefl.mkT 3 0 0 6 0 (-32), PolyRefl.mkT 3 0 2 4 0 (48), PolyRefl.mkT 3 0 4 2 0 (-18), PolyRefl.mkT 3 0 6 0 0 (1)]
def cp147_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 5 1 (-32), PolyRefl.mkT 0 3 2 3 1 (32), PolyRefl.mkT 0 3 4 1 1 (-6), PolyRefl.mkT 1 2 0 6 0 (32), PolyRefl.mkT 1 2 2 4 0 (-48), PolyRefl.mkT 1 2 4 2 0 (18), PolyRefl.mkT 1 2 6 0 0 (-1), PolyRefl.mkT 2 1 0 5 1 (96), PolyRefl.mkT 2 1 2 3 1 (-96), PolyRefl.mkT 2 1 4 1 1 (18), PolyRefl.mkT 3 0 0 6 0 (32), PolyRefl.mkT 3 0 2 4 0 (-48), PolyRefl.mkT 3 0 4 2 0 (18), PolyRefl.mkT 3 0 6 0 0 (-1)]
def cp148_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-4), PolyRefl.mkT 1 3 0 0 2 (24), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 2 2 0 1 1 (-24), PolyRefl.mkT 3 1 0 0 2 (-8), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 4 0 0 1 1 (12)]
def cp149_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-1), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 1 3 2 0 0 (6), PolyRefl.mkT 2 2 0 1 1 (-6), PolyRefl.mkT 3 1 2 0 0 (-2), PolyRefl.mkT 4 0 0 1 1 (3)]
def cp150_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-1), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 1 3 2 0 0 (-6), PolyRefl.mkT 2 2 0 1 1 (-6), PolyRefl.mkT 3 1 2 0 0 (2), PolyRefl.mkT 4 0 0 1 1 (3)]
def cp151_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 14 12 0 0 (2), PolyRefl.mkT 2 12 12 0 0 (3), PolyRefl.mkT 4 10 12 0 0 (32), PolyRefl.mkT 6 8 12 0 0 (-103), PolyRefl.mkT 8 6 12 0 0 (90), PolyRefl.mkT 10 4 12 0 0 (-27), PolyRefl.mkT 12 2 12 0 0 (4), PolyRefl.mkT 14 0 12 0 0 (-1)]
def cp152_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 1 5 (-24), PolyRefl.mkT 0 2 0 3 3 (80), PolyRefl.mkT 0 2 0 5 1 (-24), PolyRefl.mkT 1 1 0 0 6 (8), PolyRefl.mkT 1 1 0 2 4 (-120), PolyRefl.mkT 1 1 0 4 2 (120), PolyRefl.mkT 1 1 0 6 0 (-8), PolyRefl.mkT 2 0 0 1 5 (-24), PolyRefl.mkT 2 0 0 3 3 (80), PolyRefl.mkT 2 0 0 5 1 (-24)]
def cp153_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 1 3 (-24), PolyRefl.mkT 0 2 0 3 1 (104), PolyRefl.mkT 0 2 2 1 1 (-24), PolyRefl.mkT 1 1 0 0 4 (8), PolyRefl.mkT 1 1 0 2 2 (-128), PolyRefl.mkT 1 1 0 4 0 (248), PolyRefl.mkT 1 1 2 0 2 (8), PolyRefl.mkT 1 1 2 2 0 (-136), PolyRefl.mkT 1 1 4 0 0 (8), PolyRefl.mkT 2 0 0 1 3 (-24), PolyRefl.mkT 2 0 0 3 1 (104), PolyRefl.mkT 2 0 2 1 1 (-24)]
def cp154_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 5 1 (-16), PolyRefl.mkT 0 2 2 3 1 (16), PolyRefl.mkT 0 2 4 1 1 (-3), PolyRefl.mkT 1 1 0 6 0 (-32), PolyRefl.mkT 1 1 2 4 0 (48), PolyRefl.mkT 1 1 4 2 0 (-18), PolyRefl.mkT 1 1 6 0 0 (1), PolyRefl.mkT 2 0 0 5 1 (-16), PolyRefl.mkT 2 0 2 3 1 (16), PolyRefl.mkT 2 0 4 1 1 (-3)]
def cp155_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 10 0 (256), PolyRefl.mkT 0 4 2 8 0 (-512), PolyRefl.mkT 0 4 4 6 0 (352), PolyRefl.mkT 0 4 6 4 0 (-96), PolyRefl.mkT 0 4 8 2 0 (9), PolyRefl.mkT 2 2 0 10 0 (512), PolyRefl.mkT 2 2 2 8 0 (-1024), PolyRefl.mkT 2 2 4 6 0 (704), PolyRefl.mkT 2 2 6 4 0 (-192), PolyRefl.mkT 2 2 8 2 0 (18), PolyRefl.mkT 4 0 0 10 0 (256), PolyRefl.mkT 4 0 2 8 0 (-512), PolyRefl.mkT 4 0 4 6 0 (352), PolyRefl.mkT 4 0 6 4 0 (-96), PolyRefl.mkT 4 0 8 2 0 (9)]
def cp156_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 5 1 (-16), PolyRefl.mkT 0 2 2 3 1 (16), PolyRefl.mkT 0 2 4 1 1 (-3), PolyRefl.mkT 1 1 0 6 0 (32), PolyRefl.mkT 1 1 2 4 0 (-48), PolyRefl.mkT 1 1 4 2 0 (18), PolyRefl.mkT 1 1 6 0 0 (-1), PolyRefl.mkT 2 0 0 5 1 (-16), PolyRefl.mkT 2 0 2 3 1 (16), PolyRefl.mkT 2 0 4 1 1 (-3)]
def cp157_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 12 0 (256), PolyRefl.mkT 0 4 2 10 0 (-768), PolyRefl.mkT 0 4 4 8 0 (864), PolyRefl.mkT 0 4 6 6 0 (-448), PolyRefl.mkT 0 4 8 4 0 (105), PolyRefl.mkT 0 4 10 2 0 (-9), PolyRefl.mkT 2 2 0 12 0 (1536), PolyRefl.mkT 2 2 2 10 0 (-4608), PolyRefl.mkT 2 2 4 8 0 (5184), PolyRefl.mkT 2 2 6 6 0 (-2688), PolyRefl.mkT 2 2 8 4 0 (630), PolyRefl.mkT 2 2 10 2 0 (-54), PolyRefl.mkT 2 2 12 0 0 (1), PolyRefl.mkT 4 0 0 12 0 (256), PolyRefl.mkT 4 0 2 10 0 (-768), PolyRefl.mkT 4 0 4 8 0 (864), PolyRefl.mkT 4 0 6 6 0 (-448), PolyRefl.mkT 4 0 8 4 0 (105), PolyRefl.mkT 4 0 10 2 0 (-9)]
def cp158_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 4 (-8), PolyRefl.mkT 0 2 0 2 2 (16), PolyRefl.mkT 0 2 0 4 0 (-8), PolyRefl.mkT 2 0 0 0 4 (4), PolyRefl.mkT 2 0 0 2 2 (-24), PolyRefl.mkT 2 0 0 4 0 (4)]
def cp159_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 2 (-8), PolyRefl.mkT 0 2 0 2 0 (24), PolyRefl.mkT 0 2 2 0 0 (-8), PolyRefl.mkT 2 0 0 0 2 (4), PolyRefl.mkT 2 0 0 2 0 (-28), PolyRefl.mkT 2 0 2 0 0 (4)]
def cp160_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 4 0 (-8), PolyRefl.mkT 0 2 2 2 0 (8), PolyRefl.mkT 0 2 4 0 0 (-2), PolyRefl.mkT 2 0 0 4 0 (8), PolyRefl.mkT 2 0 2 2 0 (-8), PolyRefl.mkT 2 0 4 0 0 (1)]
def cp161_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (-32768), PolyRefl.mkT 2 8 0 0 0 (163840), PolyRefl.mkT 4 6 0 0 0 (-327680), PolyRefl.mkT 6 4 0 0 0 (327680), PolyRefl.mkT 8 2 0 0 0 (-163840), PolyRefl.mkT 10 0 0 0 0 (32768)]
def cp162_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 12 0 8 0 (1048576), PolyRefl.mkT 0 12 2 6 0 (-2097152), PolyRefl.mkT 0 12 4 4 0 (1179648), PolyRefl.mkT 0 12 6 2 0 (-131072), PolyRefl.mkT 0 12 8 0 0 (4096), PolyRefl.mkT 2 10 0 8 0 (2097152), PolyRefl.mkT 2 10 2 6 0 (-4194304), PolyRefl.mkT 2 10 4 4 0 (2228224), PolyRefl.mkT 2 10 6 2 0 (-131072), PolyRefl.mkT 2 10 8 0 0 (24576), PolyRefl.mkT 4 8 0 8 0 (-17825792), PolyRefl.mkT 4 8 2 6 0 (35651584), PolyRefl.mkT 4 8 4 4 0 (-20447232), PolyRefl.mkT 4 8 6 2 0 (2621440), PolyRefl.mkT 4 8 8 0 0 (-4096), PolyRefl.mkT 6 6 0 8 0 (29360128), PolyRefl.mkT 6 6 2 6 0 (-58720256), PolyRefl.mkT 6 6 4 4 0 (34865152), PolyRefl.mkT 6 6 6 2 0 (-5505024), PolyRefl.mkT 6 6 8 0 0 (-49152), PolyRefl.mkT 8 4 0 8 0 (-17825792), PolyRefl.mkT 8 4 2 6 0 (35651584), PolyRefl.mkT 8 4 4 4 0 (-21889024), PolyRefl.mkT 8 4 6 2 0 (4063232), PolyRefl.mkT 8 4 8 0 0 (-4096), PolyRefl.mkT 10 2 0 8 0 (2097152), PolyRefl.mkT 10 2 2 6 0 (-4194304), PolyRefl.mkT 10 2 4 4 0 (2752512), PolyRefl.mkT 10 2 6 2 0 (-655360), PolyRefl.mkT 10 2 8 0 0 (24576), PolyRefl.mkT 12 0 0 8 0 (1048576), PolyRefl.mkT 12 0 2 6 0 (-2097152), PolyRefl.mkT 12 0 4 4 0 (1310720), PolyRefl.mkT 12 0 6 2 0 (-262144), PolyRefl.mkT 12 0 8 0 0 (4096)]
def cp163_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 12 0 0 (-1), PolyRefl.mkT 2 22 12 0 0 (60), PolyRefl.mkT 4 20 12 0 0 (-1170), PolyRefl.mkT 6 18 12 0 0 (10444), PolyRefl.mkT 8 16 12 0 0 (-48047), PolyRefl.mkT 10 14 12 0 0 (119544), PolyRefl.mkT 12 12 12 0 0 (-165756), PolyRefl.mkT 14 10 12 0 0 (119544), PolyRefl.mkT 16 8 12 0 0 (-48047), PolyRefl.mkT 18 6 12 0 0 (10444), PolyRefl.mkT 20 4 12 0 0 (-1170), PolyRefl.mkT 22 2 12 0 0 (60), PolyRefl.mkT 24 0 12 0 0 (-1)]
def cp164_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 4 (4), PolyRefl.mkT 0 4 0 2 2 (-24), PolyRefl.mkT 0 4 0 4 0 (4), PolyRefl.mkT 2 2 0 0 4 (-40), PolyRefl.mkT 2 2 0 2 2 (112), PolyRefl.mkT 2 2 0 4 0 (-40), PolyRefl.mkT 4 0 0 0 4 (4), PolyRefl.mkT 4 0 0 2 2 (-24), PolyRefl.mkT 4 0 0 4 0 (4)]
def cp165_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (4), PolyRefl.mkT 0 4 0 2 0 (-28), PolyRefl.mkT 0 4 2 0 0 (4), PolyRefl.mkT 2 2 0 0 2 (-40), PolyRefl.mkT 2 2 0 2 0 (152), PolyRefl.mkT 2 2 2 0 0 (-40), PolyRefl.mkT 4 0 0 0 2 (4), PolyRefl.mkT 4 0 0 2 0 (-28), PolyRefl.mkT 4 0 2 0 0 (4)]
def cp166_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 4 0 (8), PolyRefl.mkT 0 4 2 2 0 (-8), PolyRefl.mkT 0 4 4 0 0 (1), PolyRefl.mkT 2 2 0 4 0 (-48), PolyRefl.mkT 2 2 2 2 0 (48), PolyRefl.mkT 2 2 4 0 0 (-10), PolyRefl.mkT 4 0 0 4 0 (8), PolyRefl.mkT 4 0 2 2 0 (-8), PolyRefl.mkT 4 0 4 0 0 (1)]
def cp167_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 6 (-6), PolyRefl.mkT 0 2 0 2 4 (54), PolyRefl.mkT 0 2 0 4 2 (-66), PolyRefl.mkT 0 2 0 6 0 (2), PolyRefl.mkT 2 0 0 0 6 (2), PolyRefl.mkT 2 0 0 2 4 (-66), PolyRefl.mkT 2 0 0 4 2 (54), PolyRefl.mkT 2 0 0 6 0 (-6)]
def cp168_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 4 (-6), PolyRefl.mkT 0 2 0 2 2 (60), PolyRefl.mkT 0 2 0 4 0 (-126), PolyRefl.mkT 0 2 2 0 2 (-6), PolyRefl.mkT 0 2 2 2 0 (66), PolyRefl.mkT 0 2 4 0 0 (-6), PolyRefl.mkT 2 0 0 0 4 (2), PolyRefl.mkT 2 0 0 2 2 (-68), PolyRefl.mkT 2 0 0 4 0 (122), PolyRefl.mkT 2 0 2 0 2 (2), PolyRefl.mkT 2 0 2 2 0 (-70), PolyRefl.mkT 2 0 4 0 0 (2)]
def cp169_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 6 0 (64), PolyRefl.mkT 0 2 2 4 0 (-96), PolyRefl.mkT 0 2 4 2 0 (36), PolyRefl.mkT 0 2 6 0 0 (-3), PolyRefl.mkT 2 0 0 6 0 (-64), PolyRefl.mkT 2 0 2 4 0 (96), PolyRefl.mkT 2 0 4 2 0 (-36), PolyRefl.mkT 2 0 6 0 0 (1)]
def cp170_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (64), PolyRefl.mkT 2 6 0 0 0 (-768), PolyRefl.mkT 4 4 0 0 0 (2432), PolyRefl.mkT 6 2 0 0 0 (-768), PolyRefl.mkT 8 0 0 0 0 (64)]
def cp171_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 2 0 (512), PolyRefl.mkT 0 6 2 0 0 (-256), PolyRefl.mkT 2 4 0 2 0 (-3584), PolyRefl.mkT 2 4 2 0 0 (1792), PolyRefl.mkT 4 2 0 2 0 (3584), PolyRefl.mkT 4 2 2 0 0 (-1792), PolyRefl.mkT 6 0 0 2 0 (-512), PolyRefl.mkT 6 0 2 0 0 (256)]
def cp172_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 4 2 0 (-4), PolyRefl.mkT 0 10 6 0 0 (1), PolyRefl.mkT 2 8 4 2 0 (84), PolyRefl.mkT 2 8 6 0 0 (-31), PolyRefl.mkT 4 6 4 2 0 (-424), PolyRefl.mkT 4 6 6 0 0 (186), PolyRefl.mkT 6 4 4 2 0 (424), PolyRefl.mkT 6 4 6 0 0 (-238), PolyRefl.mkT 8 2 4 2 0 (-84), PolyRefl.mkT 8 2 6 0 0 (53), PolyRefl.mkT 10 0 4 2 0 (4), PolyRefl.mkT 10 0 6 0 0 (-3)]
def cp173_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 20 8 0 0 (16), PolyRefl.mkT 2 18 8 0 0 (-672), PolyRefl.mkT 4 16 8 0 0 (10448), PolyRefl.mkT 6 14 8 0 0 (-74624), PolyRefl.mkT 8 12 8 0 0 (251680), PolyRefl.mkT 10 10 8 0 0 (-373696), PolyRefl.mkT 12 8 8 0 0 (251680), PolyRefl.mkT 14 6 8 0 0 (-74624), PolyRefl.mkT 16 4 8 0 0 (10448), PolyRefl.mkT 18 2 8 0 0 (-672), PolyRefl.mkT 20 0 8 0 0 (16)]
def cp174_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 14 4 2 0 (-32), PolyRefl.mkT 0 14 6 0 0 (24), PolyRefl.mkT 2 12 4 2 0 (864), PolyRefl.mkT 2 12 6 0 0 (-568), PolyRefl.mkT 4 10 4 2 0 (-7456), PolyRefl.mkT 4 10 6 0 0 (4472), PolyRefl.mkT 6 8 4 2 0 (24416), PolyRefl.mkT 6 8 6 0 0 (-13336), PolyRefl.mkT 8 6 4 2 0 (-24416), PolyRefl.mkT 8 6 6 0 0 (11080), PolyRefl.mkT 10 4 4 2 0 (7456), PolyRefl.mkT 10 4 6 0 0 (-2984), PolyRefl.mkT 12 2 4 2 0 (-864), PolyRefl.mkT 12 2 6 0 0 (296), PolyRefl.mkT 14 0 4 2 0 (32), PolyRefl.mkT 14 0 6 0 0 (-8)]
def cp175_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 12 40 32 0 0 (5), PolyRefl.mkT 14 38 32 0 0 (-142), PolyRefl.mkT 16 36 32 0 0 (1447), PolyRefl.mkT 18 34 32 0 0 (-7468), PolyRefl.mkT 20 32 32 0 0 (24301), PolyRefl.mkT 22 30 32 0 0 (-42578), PolyRefl.mkT 24 28 32 0 0 (-25753), PolyRefl.mkT 26 26 32 0 0 (100376), PolyRefl.mkT 28 24 32 0 0 (-25753), PolyRefl.mkT 30 22 32 0 0 (-42578), PolyRefl.mkT 32 20 32 0 0 (24301), PolyRefl.mkT 34 18 32 0 0 (-7468), PolyRefl.mkT 36 16 32 0 0 (1447), PolyRefl.mkT 38 14 32 0 0 (-142), PolyRefl.mkT 40 12 32 0 0 (5)]
def cp176_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 1 3 (-8), PolyRefl.mkT 0 2 0 3 1 (-8), PolyRefl.mkT 1 1 0 0 4 (-4), PolyRefl.mkT 1 1 0 2 2 (56), PolyRefl.mkT 1 1 0 4 0 (-4), PolyRefl.mkT 2 0 0 1 3 (-8), PolyRefl.mkT 2 0 0 3 1 (-8)]
def cp177_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 1 1 (-8), PolyRefl.mkT 1 1 0 0 2 (-4), PolyRefl.mkT 1 1 0 2 0 (60), PolyRefl.mkT 1 1 2 0 0 (-4), PolyRefl.mkT 2 0 0 1 1 (-8)]
def cp178_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 2 1 1 (-2), PolyRefl.mkT 1 1 0 4 0 (-16), PolyRefl.mkT 1 1 2 2 0 (16), PolyRefl.mkT 1 1 4 0 0 (-1), PolyRefl.mkT 2 0 2 1 1 (-2)]
def cp179_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 4 2 0 (4), PolyRefl.mkT 2 2 4 2 0 (8), PolyRefl.mkT 4 0 4 2 0 (4)]
def cp180_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 2 1 1 (-2), PolyRefl.mkT 1 1 0 4 0 (16), PolyRefl.mkT 1 1 2 2 0 (-16), PolyRefl.mkT 1 1 4 0 0 (1), PolyRefl.mkT 2 0 2 1 1 (-2)]
def cp181_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 4 4 0 (4), PolyRefl.mkT 0 4 6 2 0 (-4), PolyRefl.mkT 2 2 0 8 0 (256), PolyRefl.mkT 2 2 2 6 0 (-512), PolyRefl.mkT 2 2 4 4 0 (296), PolyRefl.mkT 2 2 6 2 0 (-40), PolyRefl.mkT 2 2 8 0 0 (1), PolyRefl.mkT 4 0 4 4 0 (4), PolyRefl.mkT 4 0 6 2 0 (-4)]
def cp182_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 1 5 (24), PolyRefl.mkT 0 2 0 3 3 (-80), PolyRefl.mkT 0 2 0 5 1 (24), PolyRefl.mkT 1 1 0 0 6 (-8), PolyRefl.mkT 1 1 0 2 4 (-24), PolyRefl.mkT 1 1 0 4 2 (-24), PolyRefl.mkT 1 1 0 6 0 (-8), PolyRefl.mkT 2 0 0 1 5 (-24), PolyRefl.mkT 2 0 0 3 3 (80), PolyRefl.mkT 2 0 0 5 1 (-24)]
def cp183_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 1 3 (24), PolyRefl.mkT 0 2 0 3 1 (-104), PolyRefl.mkT 0 2 2 1 1 (24), PolyRefl.mkT 1 1 0 0 4 (-8), PolyRefl.mkT 1 1 0 2 2 (-16), PolyRefl.mkT 1 1 0 4 0 (-8), PolyRefl.mkT 1 1 2 0 2 (-8), PolyRefl.mkT 1 1 2 2 0 (-8), PolyRefl.mkT 1 1 4 0 0 (-8), PolyRefl.mkT 2 0 0 1 3 (-24), PolyRefl.mkT 2 0 0 3 1 (104), PolyRefl.mkT 2 0 2 1 1 (-24)]
def cp184_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 5 1 (16), PolyRefl.mkT 0 2 2 3 1 (-16), PolyRefl.mkT 0 2 4 1 1 (3), PolyRefl.mkT 1 1 6 0 0 (-1), PolyRefl.mkT 2 0 0 5 1 (-16), PolyRefl.mkT 2 0 2 3 1 (16), PolyRefl.mkT 2 0 4 1 1 (-3)]
def cp185_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 10 0 (256), PolyRefl.mkT 0 4 2 8 0 (-512), PolyRefl.mkT 0 4 4 6 0 (352), PolyRefl.mkT 0 4 6 4 0 (-96), PolyRefl.mkT 0 4 8 2 0 (9), PolyRefl.mkT 2 2 0 10 0 (-512), PolyRefl.mkT 2 2 2 8 0 (1024), PolyRefl.mkT 2 2 4 6 0 (-704), PolyRefl.mkT 2 2 6 4 0 (192), PolyRefl.mkT 2 2 8 2 0 (-18), PolyRefl.mkT 4 0 0 10 0 (256), PolyRefl.mkT 4 0 2 8 0 (-512), PolyRefl.mkT 4 0 4 6 0 (352), PolyRefl.mkT 4 0 6 4 0 (-96), PolyRefl.mkT 4 0 8 2 0 (9)]
def cp186_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 5 1 (16), PolyRefl.mkT 0 2 2 3 1 (-16), PolyRefl.mkT 0 2 4 1 1 (3), PolyRefl.mkT 1 1 6 0 0 (1), PolyRefl.mkT 2 0 0 5 1 (-16), PolyRefl.mkT 2 0 2 3 1 (16), PolyRefl.mkT 2 0 4 1 1 (-3)]
def cp187_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 12 0 (256), PolyRefl.mkT 0 4 2 10 0 (-768), PolyRefl.mkT 0 4 4 8 0 (864), PolyRefl.mkT 0 4 6 6 0 (-448), PolyRefl.mkT 0 4 8 4 0 (105), PolyRefl.mkT 0 4 10 2 0 (-9), PolyRefl.mkT 2 2 0 12 0 (-512), PolyRefl.mkT 2 2 2 10 0 (1536), PolyRefl.mkT 2 2 4 8 0 (-1728), PolyRefl.mkT 2 2 6 6 0 (896), PolyRefl.mkT 2 2 8 4 0 (-210), PolyRefl.mkT 2 2 10 2 0 (18), PolyRefl.mkT 2 2 12 0 0 (1), PolyRefl.mkT 4 0 0 12 0 (256), PolyRefl.mkT 4 0 2 10 0 (-768), PolyRefl.mkT 4 0 4 8 0 (864), PolyRefl.mkT 4 0 6 6 0 (-448), PolyRefl.mkT 4 0 8 4 0 (105), PolyRefl.mkT 4 0 10 2 0 (-9)]
def cp188_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 6 6 0 0 0 (16777216)]
def cp189_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 10 4 0 0 (-262144), PolyRefl.mkT 4 8 0 4 0 (16777216), PolyRefl.mkT 4 8 2 2 0 (-16777216), PolyRefl.mkT 4 8 4 0 0 (4194304), PolyRefl.mkT 6 6 0 4 0 (-33554432), PolyRefl.mkT 6 6 2 2 0 (33554432), PolyRefl.mkT 6 6 4 0 0 (-7864320), PolyRefl.mkT 8 4 0 4 0 (16777216), PolyRefl.mkT 8 4 2 2 0 (-16777216), PolyRefl.mkT 8 4 4 0 0 (4194304), PolyRefl.mkT 10 2 4 0 0 (-262144)]
def cp190_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 14 8 4 0 (4), PolyRefl.mkT 2 14 10 2 0 (-4), PolyRefl.mkT 4 12 8 4 0 (-24), PolyRefl.mkT 4 12 10 2 0 (24), PolyRefl.mkT 4 12 12 0 0 (1), PolyRefl.mkT 6 10 8 4 0 (-4), PolyRefl.mkT 6 10 10 2 0 (4), PolyRefl.mkT 6 10 12 0 0 (-16), PolyRefl.mkT 8 8 8 4 0 (48), PolyRefl.mkT 8 8 10 2 0 (-48), PolyRefl.mkT 8 8 12 0 0 (94), PolyRefl.mkT 10 6 8 4 0 (-4), PolyRefl.mkT 10 6 10 2 0 (4), PolyRefl.mkT 10 6 12 0 0 (-16), PolyRefl.mkT 12 4 8 4 0 (-24), PolyRefl.mkT 12 4 10 2 0 (24), PolyRefl.mkT 12 4 12 0 0 (1), PolyRefl.mkT 14 2 8 4 0 (4), PolyRefl.mkT 14 2 10 2 0 (-4)]
def cp191_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 6 42 24 0 0 (64), PolyRefl.mkT 8 40 24 0 0 (-1152), PolyRefl.mkT 10 38 24 0 0 (6720), PolyRefl.mkT 12 36 24 0 0 (-9216), PolyRefl.mkT 14 34 24 0 0 (-34560), PolyRefl.mkT 16 32 24 0 0 (78336), PolyRefl.mkT 18 30 24 0 0 (62720), PolyRefl.mkT 20 28 24 0 0 (-211968), PolyRefl.mkT 22 26 24 0 0 (-34944), PolyRefl.mkT 24 24 24 0 0 (288000), PolyRefl.mkT 26 22 24 0 0 (-34944), PolyRefl.mkT 28 20 24 0 0 (-211968), PolyRefl.mkT 30 18 24 0 0 (62720), PolyRefl.mkT 32 16 24 0 0 (78336), PolyRefl.mkT 34 14 24 0 0 (-34560), PolyRefl.mkT 36 12 24 0 0 (-9216), PolyRefl.mkT 38 10 24 0 0 (6720), PolyRefl.mkT 40 8 24 0 0 (-1152), PolyRefl.mkT 42 6 24 0 0 (64)]
def cp192_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 4 32 20 0 0 (64), PolyRefl.mkT 6 30 16 4 0 (4096), PolyRefl.mkT 6 30 18 2 0 (-4096), PolyRefl.mkT 6 30 20 0 0 (-128), PolyRefl.mkT 8 28 16 4 0 (-49152), PolyRefl.mkT 8 28 18 2 0 (49152), PolyRefl.mkT 8 28 20 0 0 (-6464), PolyRefl.mkT 10 26 16 4 0 (139264), PolyRefl.mkT 10 26 18 2 0 (-139264), PolyRefl.mkT 10 26 20 0 0 (45824), PolyRefl.mkT 12 24 16 4 0 (147456), PolyRefl.mkT 12 24 18 2 0 (-147456), PolyRefl.mkT 12 24 20 0 0 (-177600), PolyRefl.mkT 14 22 16 4 0 (-593920), PolyRefl.mkT 14 22 18 2 0 (593920), PolyRefl.mkT 14 22 20 0 0 (473216), PolyRefl.mkT 16 20 16 4 0 (-98304), PolyRefl.mkT 16 20 18 2 0 (98304), PolyRefl.mkT 16 20 20 0 0 (184000), PolyRefl.mkT 18 18 16 4 0 (901120), PolyRefl.mkT 18 18 18 2 0 (-901120), PolyRefl.mkT 18 18 20 0 0 (-1037824), PolyRefl.mkT 20 16 16 4 0 (-98304), PolyRefl.mkT 20 16 18 2 0 (98304), PolyRefl.mkT 20 16 20 0 0 (184000), PolyRefl.mkT 22 14 16 4 0 (-593920), PolyRefl.mkT 22 14 18 2 0 (593920), PolyRefl.mkT 22 14 20 0 0 (473216), PolyRefl.mkT 24 12 16 4 0 (147456), PolyRefl.mkT 24 12 18 2 0 (-147456), PolyRefl.mkT 24 12 20 0 0 (-177600), PolyRefl.mkT 26 10 16 4 0 (139264), PolyRefl.mkT 26 10 18 2 0 (-139264), PolyRefl.mkT 26 10 20 0 0 (45824), PolyRefl.mkT 28 8 16 4 0 (-49152), PolyRefl.mkT 28 8 18 2 0 (49152), PolyRefl.mkT 28 8 20 0 0 (-6464), PolyRefl.mkT 30 6 16 4 0 (4096), PolyRefl.mkT 30 6 18 2 0 (-4096), PolyRefl.mkT 30 6 20 0 0 (-128), PolyRefl.mkT 32 4 20 0 0 (64)]
def cp193_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 38 12 0 0 (56133), PolyRefl.mkT 4 36 12 0 0 (-2668302), PolyRefl.mkT 6 34 12 0 0 (55936917), PolyRefl.mkT 8 32 12 0 0 (-681794640), PolyRefl.mkT 10 30 12 0 0 (5341044868), PolyRefl.mkT 12 28 12 0 0 (-27976469640), PolyRefl.mkT 14 26 12 0 0 (98602776244), PolyRefl.mkT 16 24 12 0 0 (-229454081840), PolyRefl.mkT 18 22 12 0 0 (338655023974), PolyRefl.mkT 20 20 12 0 0 (-303274513748), PolyRefl.mkT 22 18 12 0 0 (166686615478), PolyRefl.mkT 24 16 12 0 0 (-55970270768), PolyRefl.mkT 26 14 12 0 0 (10325007316), PolyRefl.mkT 28 12 12 0 0 (-341346696), PolyRefl.mkT 30 10 12 0 0 (-320548124), PolyRefl.mkT 32 8 12 0 0 (85117104), PolyRefl.mkT 34 6 12 0 0 (-10639107), PolyRefl.mkT 36 4 12 0 0 (701298), PolyRefl.mkT 38 2 12 0 0 (-19683)]
def cp194_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 2 (-18), PolyRefl.mkT 0 4 0 3 0 (6), PolyRefl.mkT 1 3 0 0 3 (-8), PolyRefl.mkT 1 3 0 2 1 (24), PolyRefl.mkT 2 2 0 1 2 (108), PolyRefl.mkT 2 2 0 3 0 (-36), PolyRefl.mkT 3 1 0 0 3 (8), PolyRefl.mkT 3 1 0 2 1 (-24), PolyRefl.mkT 4 0 0 1 2 (-18), PolyRefl.mkT 4 0 0 3 0 (6)]
def cp195_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 0 (-18), PolyRefl.mkT 1 3 0 0 1 (-8), PolyRefl.mkT 2 2 0 1 0 (108), PolyRefl.mkT 3 1 0 0 1 (8), PolyRefl.mkT 4 0 0 1 0 (-18)]
def cp196_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 0 (12), PolyRefl.mkT 0 4 2 1 0 (-9), PolyRefl.mkT 1 3 0 2 1 (16), PolyRefl.mkT 1 3 2 0 1 (-4), PolyRefl.mkT 2 2 0 3 0 (-72), PolyRefl.mkT 2 2 2 1 0 (54), PolyRefl.mkT 3 1 0 2 1 (-16), PolyRefl.mkT 3 1 2 0 1 (4), PolyRefl.mkT 4 0 0 3 0 (12), PolyRefl.mkT 4 0 2 1 0 (-9)]
def cp197_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 6 0 4 0 (256), PolyRefl.mkT 2 6 2 2 0 (-128), PolyRefl.mkT 2 6 4 0 0 (16), PolyRefl.mkT 4 4 0 4 0 (-512), PolyRefl.mkT 4 4 2 2 0 (256), PolyRefl.mkT 4 4 4 0 0 (-32), PolyRefl.mkT 6 2 0 4 0 (256), PolyRefl.mkT 6 2 2 2 0 (-128), PolyRefl.mkT 6 2 4 0 0 (16)]
def cp198_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 0 (-12), PolyRefl.mkT 0 4 2 1 0 (9), PolyRefl.mkT 1 3 0 2 1 (16), PolyRefl.mkT 1 3 2 0 1 (-4), PolyRefl.mkT 2 2 0 3 0 (72), PolyRefl.mkT 2 2 2 1 0 (-54), PolyRefl.mkT 3 1 0 2 1 (-16), PolyRefl.mkT 3 1 2 0 1 (4), PolyRefl.mkT 4 0 0 3 0 (-12), PolyRefl.mkT 4 0 2 1 0 (9)]
def cp199_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 6 0 (144), PolyRefl.mkT 0 8 2 4 0 (-216), PolyRefl.mkT 0 8 4 2 0 (81), PolyRefl.mkT 2 6 0 6 0 (-1472), PolyRefl.mkT 2 6 2 4 0 (2208), PolyRefl.mkT 2 6 4 2 0 (-828), PolyRefl.mkT 2 6 6 0 0 (-16), PolyRefl.mkT 4 4 0 6 0 (4960), PolyRefl.mkT 4 4 2 4 0 (-7440), PolyRefl.mkT 4 4 4 2 0 (2790), PolyRefl.mkT 4 4 6 0 0 (32), PolyRefl.mkT 6 2 0 6 0 (-1472), PolyRefl.mkT 6 2 2 4 0 (2208), PolyRefl.mkT 6 2 4 2 0 (-828), PolyRefl.mkT 6 2 6 0 0 (-16), PolyRefl.mkT 8 0 0 6 0 (144), PolyRefl.mkT 8 0 2 4 0 (-216), PolyRefl.mkT 8 0 4 2 0 (81)]
def cp200_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 5 (12), PolyRefl.mkT 0 4 0 3 3 (-40), PolyRefl.mkT 0 4 0 5 1 (12), PolyRefl.mkT 1 3 0 0 6 (24), PolyRefl.mkT 1 3 0 2 4 (-216), PolyRefl.mkT 1 3 0 4 2 (264), PolyRefl.mkT 1 3 0 6 0 (-8), PolyRefl.mkT 2 2 0 1 5 (72), PolyRefl.mkT 2 2 0 3 3 (-240), PolyRefl.mkT 2 2 0 5 1 (72), PolyRefl.mkT 3 1 0 0 6 (-8), PolyRefl.mkT 3 1 0 2 4 (-24), PolyRefl.mkT 3 1 0 4 2 (-24), PolyRefl.mkT 3 1 0 6 0 (-8), PolyRefl.mkT 4 0 0 1 5 (-36), PolyRefl.mkT 4 0 0 3 3 (120), PolyRefl.mkT 4 0 0 5 1 (-36)]
def cp201_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (12), PolyRefl.mkT 0 4 0 3 1 (-52), PolyRefl.mkT 0 4 2 1 1 (12), PolyRefl.mkT 1 3 0 0 4 (24), PolyRefl.mkT 1 3 0 2 2 (-240), PolyRefl.mkT 1 3 0 4 0 (504), PolyRefl.mkT 1 3 2 0 2 (24), PolyRefl.mkT 1 3 2 2 0 (-264), PolyRefl.mkT 1 3 4 0 0 (24), PolyRefl.mkT 2 2 0 1 3 (72), PolyRefl.mkT 2 2 0 3 1 (-312), PolyRefl.mkT 2 2 2 1 1 (72), PolyRefl.mkT 3 1 0 0 4 (-8), PolyRefl.mkT 3 1 0 2 2 (-16), PolyRefl.mkT 3 1 0 4 0 (-8), PolyRefl.mkT 3 1 2 0 2 (-8), PolyRefl.mkT 3 1 2 2 0 (-8), PolyRefl.mkT 3 1 4 0 0 (-8), PolyRefl.mkT 4 0 0 1 3 (-36), PolyRefl.mkT 4 0 0 3 1 (156), PolyRefl.mkT 4 0 2 1 1 (-36)]
def cp202_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (16), PolyRefl.mkT 0 4 2 3 1 (-16), PolyRefl.mkT 0 4 4 1 1 (3), PolyRefl.mkT 1 3 0 6 0 (-128), PolyRefl.mkT 1 3 2 4 0 (192), PolyRefl.mkT 1 3 4 2 0 (-72), PolyRefl.mkT 1 3 6 0 0 (6), PolyRefl.mkT 2 2 0 5 1 (96), PolyRefl.mkT 2 2 2 3 1 (-96), PolyRefl.mkT 2 2 4 1 1 (18), PolyRefl.mkT 3 1 6 0 0 (-2), PolyRefl.mkT 4 0 0 5 1 (-48), PolyRefl.mkT 4 0 2 3 1 (48), PolyRefl.mkT 4 0 4 1 1 (-9)]
def cp203_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 10 0 (256), PolyRefl.mkT 0 8 2 8 0 (-512), PolyRefl.mkT 0 8 4 6 0 (352), PolyRefl.mkT 0 8 6 4 0 (-96), PolyRefl.mkT 0 8 8 2 0 (9), PolyRefl.mkT 2 6 0 10 0 (3072), PolyRefl.mkT 2 6 2 8 0 (-6144), PolyRefl.mkT 2 6 4 6 0 (4224), PolyRefl.mkT 2 6 6 4 0 (-1152), PolyRefl.mkT 2 6 8 2 0 (108), PolyRefl.mkT 4 4 0 10 0 (7680), PolyRefl.mkT 4 4 2 8 0 (-15360), PolyRefl.mkT 4 4 4 6 0 (10560), PolyRefl.mkT 4 4 6 4 0 (-2880), PolyRefl.mkT 4 4 8 2 0 (270), PolyRefl.mkT 6 2 0 10 0 (-9216), PolyRefl.mkT 6 2 2 8 0 (18432), PolyRefl.mkT 6 2 4 6 0 (-12672), PolyRefl.mkT 6 2 6 4 0 (3456), PolyRefl.mkT 6 2 8 2 0 (-324), PolyRefl.mkT 8 0 0 10 0 (2304), PolyRefl.mkT 8 0 2 8 0 (-4608), PolyRefl.mkT 8 0 4 6 0 (3168), PolyRefl.mkT 8 0 6 4 0 (-864), PolyRefl.mkT 8 0 8 2 0 (81)]
def cp204_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (16), PolyRefl.mkT 0 4 2 3 1 (-16), PolyRefl.mkT 0 4 4 1 1 (3), PolyRefl.mkT 1 3 0 6 0 (128), PolyRefl.mkT 1 3 2 4 0 (-192), PolyRefl.mkT 1 3 4 2 0 (72), PolyRefl.mkT 1 3 6 0 0 (-6), PolyRefl.mkT 2 2 0 5 1 (96), PolyRefl.mkT 2 2 2 3 1 (-96), PolyRefl.mkT 2 2 4 1 1 (18), PolyRefl.mkT 3 1 6 0 0 (2), PolyRefl.mkT 4 0 0 5 1 (-48), PolyRefl.mkT 4 0 2 3 1 (48), PolyRefl.mkT 4 0 4 1 1 (-9)]
def cp205_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 12 0 (256), PolyRefl.mkT 0 8 2 10 0 (-768), PolyRefl.mkT 0 8 4 8 0 (864), PolyRefl.mkT 0 8 6 6 0 (-448), PolyRefl.mkT 0 8 8 4 0 (105), PolyRefl.mkT 0 8 10 2 0 (-9), PolyRefl.mkT 2 6 0 12 0 (19456), PolyRefl.mkT 2 6 2 10 0 (-58368), PolyRefl.mkT 2 6 4 8 0 (65664), PolyRefl.mkT 2 6 6 6 0 (-34560), PolyRefl.mkT 2 6 8 4 0 (8748), PolyRefl.mkT 2 6 10 2 0 (-972), PolyRefl.mkT 2 6 12 0 0 (36), PolyRefl.mkT 4 4 0 12 0 (7680), PolyRefl.mkT 4 4 2 10 0 (-23040), PolyRefl.mkT 4 4 4 8 0 (25920), PolyRefl.mkT 4 4 6 6 0 (-12928), PolyRefl.mkT 4 4 8 4 0 (2382), PolyRefl.mkT 4 4 10 2 0 (18), PolyRefl.mkT 4 4 12 0 0 (-24), PolyRefl.mkT 6 2 0 12 0 (-9216), PolyRefl.mkT 6 2 2 10 0 (27648), PolyRefl.mkT 6 2 4 8 0 (-31104), PolyRefl.mkT 6 2 6 6 0 (16128), PolyRefl.mkT 6 2 8 4 0 (-3780), PolyRefl.mkT 6 2 10 2 0 (324), PolyRefl.mkT 6 2 12 0 0 (4), PolyRefl.mkT 8 0 0 12 0 (2304), PolyRefl.mkT 8 0 2 10 0 (-6912), PolyRefl.mkT 8 0 4 8 0 (7776), PolyRefl.mkT 8 0 6 6 0 (-4032), PolyRefl.mkT 8 0 8 4 0 (945), PolyRefl.mkT 8 0 10 2 0 (-81)]
def cp206_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 32 0 0 0 (429981696), PolyRefl.mkT 2 30 0 0 0 (-17581473792), PolyRefl.mkT 4 28 0 0 0 (328824520704), PolyRefl.mkT 6 26 0 0 0 (-3671489249280), PolyRefl.mkT 8 24 0 0 0 (26867916341248), PolyRefl.mkT 10 22 0 0 0 (-133237786542080), PolyRefl.mkT 12 20 0 0 0 (447032683134976), PolyRefl.mkT 14 18 0 0 0 (-981928229470208), PolyRefl.mkT 16 16 0 0 0 (1317429745942528), PolyRefl.mkT 18 14 0 0 0 (-981928229470208), PolyRefl.mkT 20 12 0 0 0 (447032683134976), PolyRefl.mkT 22 10 0 0 0 (-133237786542080), PolyRefl.mkT 24 8 0 0 0 (26867916341248), PolyRefl.mkT 26 6 0 0 0 (-3671489249280), PolyRefl.mkT 28 4 0 0 0 (328824520704), PolyRefl.mkT 30 2 0 0 0 (-17581473792), PolyRefl.mkT 32 0 0 0 0 (429981696)]
def cp207_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 32 0 6 0 (764411904), PolyRefl.mkT 0 32 2 4 0 (-1146617856), PolyRefl.mkT 0 32 4 2 0 (429981696), PolyRefl.mkT 0 32 6 0 0 (-47775744), PolyRefl.mkT 2 30 0 6 0 (34653339648), PolyRefl.mkT 2 30 2 4 0 (-51980009472), PolyRefl.mkT 2 30 4 2 0 (19492503552), PolyRefl.mkT 2 30 6 0 0 (-3609722880), PolyRefl.mkT 4 28 0 6 0 (-1440038780928), PolyRefl.mkT 4 28 2 4 0 (2160058171392), PolyRefl.mkT 4 28 4 2 0 (-810021814272), PolyRefl.mkT 4 28 6 0 0 (142963900416), PolyRefl.mkT 6 26 0 6 0 (21029359452160), PolyRefl.mkT 6 26 2 4 0 (-31544039178240), PolyRefl.mkT 6 26 4 2 0 (11829014691840), PolyRefl.mkT 6 26 6 0 0 (-2122502897664), PolyRefl.mkT 8 24 0 6 0 (-164702814470144), PolyRefl.mkT 8 24 2 4 0 (247054221705216), PolyRefl.mkT 8 24 4 2 0 (-92645333139456), PolyRefl.mkT 8 24 6 0 0 (17077457649664), PolyRefl.mkT 10 22 0 6 0 (753419597905920), PolyRefl.mkT 10 22 2 4 0 (-1130129396858880), PolyRefl.mkT 10 22 4 2 0 (423798523822080), PolyRefl.mkT 10 22 6 0 0 (-81084293840896), PolyRefl.mkT 12 20 0 6 0 (-1942862245658624), PolyRefl.mkT 12 20 2 4 0 (2914293368487936), PolyRefl.mkT 12 20 4 2 0 (-1092860013182976), PolyRefl.mkT 12 20 6 0 0 (223864644698112), PolyRefl.mkT 14 18 0 6 0 (2252979344244736), PolyRefl.mkT 14 18 2 4 0 (-3379469016367104), PolyRefl.mkT 14 18 4 2 0 (1267300881137664), PolyRefl.mkT 14 18 6 0 0 (-317365105983488), PolyRefl.mkT 16 16 0 6 0 (289122885304320), PolyRefl.mkT 16 16 2 4 0 (-433684327956480), PolyRefl.mkT 16 16 4 2 0 (162631622983680), PolyRefl.mkT 16 16 6 0 0 (141061612765184), PolyRefl.mkT 18 14 0 6 0 (-2118587972059136), PolyRefl.mkT 18 14 2 4 0 (3177881958088704), PolyRefl.mkT 18 14 4 2 0 (-1191705734283264), PolyRefl.mkT 18 14 6 0 0 (61603890855936), PolyRefl.mkT 20 12 0 6 0 (1742123611193344), PolyRefl.mkT 20 12 2 4 0 (-2613185416790016), PolyRefl.mkT 20 12 4 2 0 (979944531296256), PolyRefl.mkT 20 12 6 0 0 (-94933640806400), PolyRefl.mkT 22 10 0 6 0 (-749186202992640), PolyRefl.mkT 22 10 2 4 0 (1123779304488960), PolyRefl.mkT 22 10 4 2 0 (-421417239183360), PolyRefl.mkT 22 10 6 0 0 (47328013058048), PolyRefl.mkT 24 8 0 6 0 (199257797689344), PolyRefl.mkT 24 8 2 4 0 (-298886696534016), PolyRefl.mkT 24 8 4 2 0 (112082511200256), PolyRefl.mkT 24 8 6 0 0 (-13313075576832), PolyRefl.mkT 26 6 0 6 0 (-34209037025280), PolyRefl.mkT 26 6 2 4 0 (51313555537920), PolyRefl.mkT 26 6 4 2 0 (-19242583326720), PolyRefl.mkT 26 6 6 0 0 (2325383479296), PolyRefl.mkT 28 4 0 6 0 (3734406955008), PolyRefl.mkT 28 4 2 4 0 (-5601610432512), PolyRefl.mkT 28 4 4 2 0 (2100603912192), PolyRefl.mkT 28 4 6 0 0 (-252086059008), PolyRefl.mkT 30 2 0 6 0 (-238496514048), PolyRefl.mkT 30 2 2 4 0 (357744771072), PolyRefl.mkT 30 2 4 2 0 (-134154289152), PolyRefl.mkT 30 2 6 0 0 (15670444032), PolyRefl.mkT 32 0 0 6 0 (6879707136), PolyRefl.mkT 32 0 2 4 0 (-10319560704), PolyRefl.mkT 32 0 4 2 0 (3869835264), PolyRefl.mkT 32 0 6 0 0 (-429981696)]
def cp208_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 8 0 0 (-3), PolyRefl.mkT 2 22 8 0 0 (76), PolyRefl.mkT 4 20 8 0 0 (-1990), PolyRefl.mkT 6 18 8 0 0 (34300), PolyRefl.mkT 8 16 8 0 0 (-166093), PolyRefl.mkT 10 14 8 0 0 (332312), PolyRefl.mkT 12 12 8 0 0 (-313300), PolyRefl.mkT 14 10 8 0 0 (154840), PolyRefl.mkT 16 8 8 0 0 (-40653), PolyRefl.mkT 18 6 8 0 0 (4764), PolyRefl.mkT 20 4 8 0 0 (-198), PolyRefl.mkT 22 2 8 0 0 (44), PolyRefl.mkT 24 0 8 0 0 (-3)]
def cp209_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (-6), PolyRefl.mkT 0 4 0 2 0 (2), PolyRefl.mkT 2 2 0 0 2 (20), PolyRefl.mkT 2 2 0 2 0 (-28), PolyRefl.mkT 4 0 0 0 2 (-6), PolyRefl.mkT 4 0 0 2 0 (2)]
def cp210_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 0 (-6), PolyRefl.mkT 2 2 0 0 0 (20), PolyRefl.mkT 4 0 0 0 0 (-6)]
def cp211_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 2 0 (4), PolyRefl.mkT 0 4 2 0 0 (-3), PolyRefl.mkT 2 2 0 2 0 (-24), PolyRefl.mkT 2 2 2 0 0 (10), PolyRefl.mkT 4 0 0 2 0 (4), PolyRefl.mkT 4 0 2 0 0 (-3)]
def cp212_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (16), PolyRefl.mkT 0 4 0 3 1 (-16), PolyRefl.mkT 1 3 0 0 4 (-24), PolyRefl.mkT 1 3 0 2 2 (144), PolyRefl.mkT 1 3 0 4 0 (-24), PolyRefl.mkT 3 1 0 0 4 (8), PolyRefl.mkT 3 1 0 2 2 (-48), PolyRefl.mkT 3 1 0 4 0 (8), PolyRefl.mkT 4 0 0 1 3 (-16), PolyRefl.mkT 4 0 0 3 1 (16)]
def cp213_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (16), PolyRefl.mkT 1 3 0 0 2 (-24), PolyRefl.mkT 1 3 0 2 0 (168), PolyRefl.mkT 1 3 2 0 0 (-24), PolyRefl.mkT 3 1 0 0 2 (8), PolyRefl.mkT 3 1 0 2 0 (-56), PolyRefl.mkT 3 1 2 0 0 (8), PolyRefl.mkT 4 0 0 1 1 (-16)]
def cp214_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-4), PolyRefl.mkT 0 4 2 1 1 (2), PolyRefl.mkT 1 3 0 4 0 (-24), PolyRefl.mkT 1 3 2 2 0 (24), PolyRefl.mkT 1 3 4 0 0 (-3), PolyRefl.mkT 3 1 0 4 0 (8), PolyRefl.mkT 3 1 2 2 0 (-8), PolyRefl.mkT 3 1 4 0 0 (1), PolyRefl.mkT 4 0 0 3 1 (4), PolyRefl.mkT 4 0 2 1 1 (-2)]
def cp215_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 6 0 (16), PolyRefl.mkT 0 8 2 4 0 (-16), PolyRefl.mkT 0 8 4 2 0 (4), PolyRefl.mkT 4 4 0 6 0 (-32), PolyRefl.mkT 4 4 2 4 0 (32), PolyRefl.mkT 4 4 4 2 0 (-8), PolyRefl.mkT 8 0 0 6 0 (16), PolyRefl.mkT 8 0 2 4 0 (-16), PolyRefl.mkT 8 0 4 2 0 (4)]
def cp216_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-4), PolyRefl.mkT 0 4 2 1 1 (2), PolyRefl.mkT 1 3 0 4 0 (24), PolyRefl.mkT 1 3 2 2 0 (-24), PolyRefl.mkT 1 3 4 0 0 (3), PolyRefl.mkT 3 1 0 4 0 (-8), PolyRefl.mkT 3 1 2 2 0 (8), PolyRefl.mkT 3 1 4 0 0 (-1), PolyRefl.mkT 4 0 0 3 1 (4), PolyRefl.mkT 4 0 2 1 1 (-2)]
def cp217_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 8 0 (16), PolyRefl.mkT 0 8 2 6 0 (-32), PolyRefl.mkT 0 8 4 4 0 (20), PolyRefl.mkT 0 8 6 2 0 (-4), PolyRefl.mkT 2 6 0 8 0 (576), PolyRefl.mkT 2 6 2 6 0 (-1152), PolyRefl.mkT 2 6 4 4 0 (720), PolyRefl.mkT 2 6 6 2 0 (-144), PolyRefl.mkT 2 6 8 0 0 (9), PolyRefl.mkT 4 4 0 8 0 (-416), PolyRefl.mkT 4 4 2 6 0 (832), PolyRefl.mkT 4 4 4 4 0 (-520), PolyRefl.mkT 4 4 6 2 0 (104), PolyRefl.mkT 4 4 8 0 0 (-6), PolyRefl.mkT 6 2 0 8 0 (64), PolyRefl.mkT 6 2 2 6 0 (-128), PolyRefl.mkT 6 2 4 4 0 (80), PolyRefl.mkT 6 2 6 2 0 (-16), PolyRefl.mkT 6 2 8 0 0 (1), PolyRefl.mkT 8 0 0 8 0 (16), PolyRefl.mkT 8 0 2 6 0 (-32), PolyRefl.mkT 8 0 4 4 0 (20), PolyRefl.mkT 8 0 6 2 0 (-4)]
def cp218_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 16 0 0 0 (256), PolyRefl.mkT 2 14 0 0 0 (-6144), PolyRefl.mkT 4 12 0 0 0 (56320), PolyRefl.mkT 6 10 0 0 0 (-239616), PolyRefl.mkT 8 8 0 0 0 (443904), PolyRefl.mkT 10 6 0 0 0 (-239616), PolyRefl.mkT 12 4 0 0 0 (56320), PolyRefl.mkT 14 2 0 0 0 (-6144), PolyRefl.mkT 16 0 0 0 0 (256)]
def cp219_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 20 0 6 0 (1024), PolyRefl.mkT 0 20 2 4 0 (-1280), PolyRefl.mkT 0 20 4 2 0 (320), PolyRefl.mkT 0 20 6 0 0 (-16), PolyRefl.mkT 2 18 0 6 0 (18432), PolyRefl.mkT 2 18 2 4 0 (-20992), PolyRefl.mkT 2 18 4 2 0 (4736), PolyRefl.mkT 2 18 6 0 0 (-416), PolyRefl.mkT 4 16 0 6 0 (-576512), PolyRefl.mkT 4 16 2 4 0 (769792), PolyRefl.mkT 4 16 4 2 0 (-200640), PolyRefl.mkT 4 16 6 0 0 (6960), PolyRefl.mkT 6 14 0 6 0 (4317184), PolyRefl.mkT 6 14 2 4 0 (-6256640), PolyRefl.mkT 6 14 4 2 0 (1902080), PolyRefl.mkT 6 14 6 0 0 (25216), PolyRefl.mkT 8 12 0 6 0 (-12204032), PolyRefl.mkT 8 12 2 4 0 (18679296), PolyRefl.mkT 8 12 4 2 0 (-6513024), PolyRefl.mkT 8 12 6 0 0 (24800), PolyRefl.mkT 10 10 0 6 0 (11218944), PolyRefl.mkT 10 10 2 4 0 (-17026048), PolyRefl.mkT 10 10 4 2 0 (5809920), PolyRefl.mkT 10 10 6 0 0 (64), PolyRefl.mkT 12 8 0 6 0 (-4536320), PolyRefl.mkT 12 8 2 4 0 (6669824), PolyRefl.mkT 12 8 4 2 0 (-2118016), PolyRefl.mkT 12 8 6 0 0 (-8992), PolyRefl.mkT 14 6 0 6 0 (712704), PolyRefl.mkT 14 6 2 4 0 (-964608), PolyRefl.mkT 14 6 4 2 0 (251392), PolyRefl.mkT 14 6 6 0 0 (-384), PolyRefl.mkT 16 4 0 6 0 (13312), PolyRefl.mkT 16 4 2 4 0 (-33024), PolyRefl.mkT 16 4 4 2 0 (16448), PolyRefl.mkT 16 4 6 0 0 (1840), PolyRefl.mkT 18 2 0 6 0 (-14336), PolyRefl.mkT 18 2 2 4 0 (19968), PolyRefl.mkT 18 2 4 2 0 (-5504), PolyRefl.mkT 18 2 6 0 0 (96), PolyRefl.mkT 20 0 0 6 0 (1024), PolyRefl.mkT 20 0 2 4 0 (-1280), PolyRefl.mkT 20 0 4 2 0 (320), PolyRefl.mkT 20 0 6 0 0 (-16)]
def cp220_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 5 (24), PolyRefl.mkT 0 4 0 3 3 (-80), PolyRefl.mkT 0 4 0 5 1 (24), PolyRefl.mkT 1 3 0 0 6 (-8), PolyRefl.mkT 1 3 0 2 4 (120), PolyRefl.mkT 1 3 0 4 2 (-120), PolyRefl.mkT 1 3 0 6 0 (8), PolyRefl.mkT 3 1 0 0 6 (24), PolyRefl.mkT 3 1 0 2 4 (-360), PolyRefl.mkT 3 1 0 4 2 (360), PolyRefl.mkT 3 1 0 6 0 (-24), PolyRefl.mkT 4 0 0 1 5 (-24), PolyRefl.mkT 4 0 0 3 3 (80), PolyRefl.mkT 4 0 0 5 1 (-24)]
def cp221_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (24), PolyRefl.mkT 0 4 0 3 1 (-104), PolyRefl.mkT 0 4 2 1 1 (24), PolyRefl.mkT 1 3 0 0 4 (-8), PolyRefl.mkT 1 3 0 2 2 (128), PolyRefl.mkT 1 3 0 4 0 (-248), PolyRefl.mkT 1 3 2 0 2 (-8), PolyRefl.mkT 1 3 2 2 0 (136), PolyRefl.mkT 1 3 4 0 0 (-8), PolyRefl.mkT 3 1 0 0 4 (24), PolyRefl.mkT 3 1 0 2 2 (-384), PolyRefl.mkT 3 1 0 4 0 (744), PolyRefl.mkT 3 1 2 0 2 (24), PolyRefl.mkT 3 1 2 2 0 (-408), PolyRefl.mkT 3 1 4 0 0 (24), PolyRefl.mkT 4 0 0 1 3 (-24), PolyRefl.mkT 4 0 0 3 1 (104), PolyRefl.mkT 4 0 2 1 1 (-24)]
def cp222_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (16), PolyRefl.mkT 0 4 2 3 1 (-16), PolyRefl.mkT 0 4 4 1 1 (3), PolyRefl.mkT 1 3 0 6 0 (32), PolyRefl.mkT 1 3 2 4 0 (-48), PolyRefl.mkT 1 3 4 2 0 (18), PolyRefl.mkT 1 3 6 0 0 (-1), PolyRefl.mkT 3 1 0 6 0 (-96), PolyRefl.mkT 3 1 2 4 0 (144), PolyRefl.mkT 3 1 4 2 0 (-54), PolyRefl.mkT 3 1 6 0 0 (3), PolyRefl.mkT 4 0 0 5 1 (-16), PolyRefl.mkT 4 0 2 3 1 (16), PolyRefl.mkT 4 0 4 1 1 (-3)]
def cp223_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (16), PolyRefl.mkT 0 4 2 3 1 (-16), PolyRefl.mkT 0 4 4 1 1 (3), PolyRefl.mkT 1 3 0 6 0 (-32), PolyRefl.mkT 1 3 2 4 0 (48), PolyRefl.mkT 1 3 4 2 0 (-18), PolyRefl.mkT 1 3 6 0 0 (1), PolyRefl.mkT 3 1 0 6 0 (96), PolyRefl.mkT 3 1 2 4 0 (-144), PolyRefl.mkT 3 1 4 2 0 (54), PolyRefl.mkT 3 1 6 0 0 (-3), PolyRefl.mkT 4 0 0 5 1 (-16), PolyRefl.mkT 4 0 2 3 1 (16), PolyRefl.mkT 4 0 4 1 1 (-3)]
def cp224_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 20 8 0 0 (-1), PolyRefl.mkT 2 18 8 0 0 (26), PolyRefl.mkT 4 16 8 0 0 (-365), PolyRefl.mkT 6 14 8 0 0 (3384), PolyRefl.mkT 8 12 8 0 0 (-15506), PolyRefl.mkT 10 10 8 0 0 (26972), PolyRefl.mkT 12 8 8 0 0 (-15506), PolyRefl.mkT 14 6 8 0 0 (3384), PolyRefl.mkT 16 4 8 0 0 (-365), PolyRefl.mkT 18 2 8 0 0 (26), PolyRefl.mkT 20 0 8 0 0 (-1)]
def cp225_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 12 0 0 0 (512), PolyRefl.mkT 2 10 0 0 0 (-9216), PolyRefl.mkT 4 8 0 0 0 (56832), PolyRefl.mkT 6 6 0 0 0 (-129024), PolyRefl.mkT 8 4 0 0 0 (56832), PolyRefl.mkT 10 2 0 0 0 (-9216), PolyRefl.mkT 12 0 0 0 0 (512)]
def cp226_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 16 4 0 0 (64), PolyRefl.mkT 2 14 0 4 0 (16384), PolyRefl.mkT 2 14 2 2 0 (-16384), PolyRefl.mkT 2 14 4 0 0 (-512), PolyRefl.mkT 4 12 0 4 0 (-229376), PolyRefl.mkT 4 12 2 2 0 (229376), PolyRefl.mkT 4 12 4 0 0 (7936), PolyRefl.mkT 6 10 0 4 0 (1032192), PolyRefl.mkT 6 10 2 2 0 (-1032192), PolyRefl.mkT 6 10 4 0 0 (-60928), PolyRefl.mkT 8 8 0 4 0 (-1638400), PolyRefl.mkT 8 8 2 2 0 (1638400), PolyRefl.mkT 8 8 4 0 0 (123264), PolyRefl.mkT 10 6 0 4 0 (1032192), PolyRefl.mkT 10 6 2 2 0 (-1032192), PolyRefl.mkT 10 6 4 0 0 (-60928), PolyRefl.mkT 12 4 0 4 0 (-229376), PolyRefl.mkT 12 4 2 2 0 (229376), PolyRefl.mkT 12 4 4 0 0 (7936), PolyRefl.mkT 14 2 0 4 0 (16384), PolyRefl.mkT 14 2 2 2 0 (-16384), PolyRefl.mkT 14 2 4 0 0 (-512), PolyRefl.mkT 16 0 4 0 0 (64)]
def cp227_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (2), PolyRefl.mkT 0 4 0 2 0 (-6), PolyRefl.mkT 2 2 0 0 2 (-28), PolyRefl.mkT 2 2 0 2 0 (20), PolyRefl.mkT 4 0 0 0 2 (2), PolyRefl.mkT 4 0 0 2 0 (-6)]
def cp228_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 0 (2), PolyRefl.mkT 2 2 0 0 0 (-28), PolyRefl.mkT 4 0 0 0 0 (2)]
def cp229_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 2 0 (-4), PolyRefl.mkT 0 4 2 0 0 (1), PolyRefl.mkT 2 2 0 2 0 (24), PolyRefl.mkT 2 2 2 0 0 (-14), PolyRefl.mkT 4 0 0 2 0 (-4), PolyRefl.mkT 4 0 2 0 0 (1)]
def cp230_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-16), PolyRefl.mkT 0 4 0 3 1 (16), PolyRefl.mkT 1 3 0 0 4 (-24), PolyRefl.mkT 1 3 0 2 2 (144), PolyRefl.mkT 1 3 0 4 0 (-24), PolyRefl.mkT 3 1 0 0 4 (8), PolyRefl.mkT 3 1 0 2 2 (-48), PolyRefl.mkT 3 1 0 4 0 (8), PolyRefl.mkT 4 0 0 1 3 (16), PolyRefl.mkT 4 0 0 3 1 (-16)]
def cp231_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-16), PolyRefl.mkT 1 3 0 0 2 (-24), PolyRefl.mkT 1 3 0 2 0 (168), PolyRefl.mkT 1 3 2 0 0 (-24), PolyRefl.mkT 3 1 0 0 2 (8), PolyRefl.mkT 3 1 0 2 0 (-56), PolyRefl.mkT 3 1 2 0 0 (8), PolyRefl.mkT 4 0 0 1 1 (16)]
def cp232_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (4), PolyRefl.mkT 0 4 2 1 1 (-2), PolyRefl.mkT 1 3 0 4 0 (-24), PolyRefl.mkT 1 3 2 2 0 (24), PolyRefl.mkT 1 3 4 0 0 (-3), PolyRefl.mkT 3 1 0 4 0 (8), PolyRefl.mkT 3 1 2 2 0 (-8), PolyRefl.mkT 3 1 4 0 0 (1), PolyRefl.mkT 4 0 0 3 1 (-4), PolyRefl.mkT 4 0 2 1 1 (2)]
def cp233_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (4), PolyRefl.mkT 0 4 2 1 1 (-2), PolyRefl.mkT 1 3 0 4 0 (24), PolyRefl.mkT 1 3 2 2 0 (-24), PolyRefl.mkT 1 3 4 0 0 (3), PolyRefl.mkT 3 1 0 4 0 (-8), PolyRefl.mkT 3 1 2 2 0 (8), PolyRefl.mkT 3 1 4 0 0 (-1), PolyRefl.mkT 4 0 0 3 1 (-4), PolyRefl.mkT 4 0 2 1 1 (2)]
def cp234_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 20 0 6 0 (-1024), PolyRefl.mkT 0 20 2 4 0 (1792), PolyRefl.mkT 0 20 4 2 0 (-832), PolyRefl.mkT 0 20 6 0 0 (48), PolyRefl.mkT 2 18 0 6 0 (-18432), PolyRefl.mkT 2 18 2 4 0 (34304), PolyRefl.mkT 2 18 4 2 0 (-18048), PolyRefl.mkT 2 18 6 0 0 (1760), PolyRefl.mkT 4 16 0 6 0 (576512), PolyRefl.mkT 4 16 2 4 0 (-959744), PolyRefl.mkT 4 16 4 2 0 (390592), PolyRefl.mkT 4 16 6 0 0 (-400), PolyRefl.mkT 6 14 0 6 0 (-4317184), PolyRefl.mkT 6 14 2 4 0 (6694912), PolyRefl.mkT 6 14 4 2 0 (-2340352), PolyRefl.mkT 6 14 6 0 0 (-12160), PolyRefl.mkT 8 12 0 6 0 (12204032), PolyRefl.mkT 8 12 2 4 0 (-17932800), PolyRefl.mkT 8 12 4 2 0 (5766528), PolyRefl.mkT 8 12 6 0 0 (-12960), PolyRefl.mkT 10 10 0 6 0 (-11218944), PolyRefl.mkT 10 10 2 4 0 (16630784), PolyRefl.mkT 10 10 4 2 0 (-5414656), PolyRefl.mkT 10 10 6 0 0 (2880), PolyRefl.mkT 12 8 0 6 0 (4536320), PolyRefl.mkT 12 8 2 4 0 (-6939136), PolyRefl.mkT 12 8 4 2 0 (2387328), PolyRefl.mkT 12 8 6 0 0 (6496), PolyRefl.mkT 14 6 0 6 0 (-712704), PolyRefl.mkT 14 6 2 4 0 (1173504), PolyRefl.mkT 14 6 4 2 0 (-460288), PolyRefl.mkT 14 6 6 0 0 (-896), PolyRefl.mkT 16 4 0 6 0 (-13312), PolyRefl.mkT 16 4 2 4 0 (6912), PolyRefl.mkT 16 4 4 2 0 (9664), PolyRefl.mkT 16 4 6 0 0 (-1424), PolyRefl.mkT 18 2 0 6 0 (14336), PolyRefl.mkT 18 2 2 4 0 (-23040), PolyRefl.mkT 18 2 4 2 0 (8576), PolyRefl.mkT 18 2 6 0 0 (224), PolyRefl.mkT 20 0 0 6 0 (-1024), PolyRefl.mkT 20 0 2 4 0 (1792), PolyRefl.mkT 20 0 4 2 0 (-832), PolyRefl.mkT 20 0 6 0 0 (48)]
def cp235_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 30 24 0 0 (-5), PolyRefl.mkT 2 28 24 0 0 (51), PolyRefl.mkT 4 26 24 0 0 (-293), PolyRefl.mkT 6 24 24 0 0 (1539), PolyRefl.mkT 8 22 24 0 0 (-6665), PolyRefl.mkT 10 20 24 0 0 (28463), PolyRefl.mkT 12 18 24 0 0 (-83001), PolyRefl.mkT 14 16 24 0 0 (142127), PolyRefl.mkT 16 14 24 0 0 (-142127), PolyRefl.mkT 18 12 24 0 0 (83001), PolyRefl.mkT 20 10 24 0 0 (-28463), PolyRefl.mkT 22 8 24 0 0 (6665), PolyRefl.mkT 24 6 24 0 0 (-1539), PolyRefl.mkT 26 4 24 0 0 (293), PolyRefl.mkT 28 2 24 0 0 (-51), PolyRefl.mkT 30 0 24 0 0 (5)]
def cp236_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 4 (-2), PolyRefl.mkT 0 2 0 2 2 (20), PolyRefl.mkT 0 2 0 4 0 (-10), PolyRefl.mkT 2 0 0 0 4 (10), PolyRefl.mkT 2 0 0 2 2 (-20), PolyRefl.mkT 2 0 0 4 0 (2)]
def cp237_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 2 (-2), PolyRefl.mkT 0 2 0 2 0 (22), PolyRefl.mkT 0 2 2 0 0 (-2), PolyRefl.mkT 2 0 0 0 2 (10), PolyRefl.mkT 2 0 0 2 0 (-30), PolyRefl.mkT 2 0 2 0 0 (10)]
def cp238_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 4 0 (-16), PolyRefl.mkT 0 2 2 2 0 (12), PolyRefl.mkT 0 2 4 0 0 (-1), PolyRefl.mkT 2 0 0 4 0 (16), PolyRefl.mkT 2 0 2 2 0 (-20), PolyRefl.mkT 2 0 4 0 0 (5)]
def cp239_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (-1048576), PolyRefl.mkT 2 8 0 0 0 (5242880), PolyRefl.mkT 4 6 0 0 0 (-10485760), PolyRefl.mkT 6 4 0 0 0 (10485760), PolyRefl.mkT 8 2 0 0 0 (-5242880), PolyRefl.mkT 10 0 0 0 0 (1048576)]
def cp240_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 12 0 8 0 (16777216), PolyRefl.mkT 0 12 2 6 0 (-37748736), PolyRefl.mkT 0 12 4 4 0 (27262976), PolyRefl.mkT 0 12 6 2 0 (-6553600), PolyRefl.mkT 0 12 8 0 0 (262144), PolyRefl.mkT 2 10 0 8 0 (33554432), PolyRefl.mkT 2 10 2 6 0 (-83886080), PolyRefl.mkT 2 10 4 4 0 (71303168), PolyRefl.mkT 2 10 6 2 0 (-23068672), PolyRefl.mkT 2 10 8 0 0 (2097152), PolyRefl.mkT 4 8 0 8 0 (-285212672), PolyRefl.mkT 4 8 2 6 0 (616562688), PolyRefl.mkT 4 8 4 4 0 (-408944640), PolyRefl.mkT 4 8 6 2 0 (74186752), PolyRefl.mkT 4 8 8 0 0 (3670016), PolyRefl.mkT 6 6 0 8 0 (469762048), PolyRefl.mkT 6 6 2 6 0 (-939524096), PolyRefl.mkT 6 6 4 4 0 (545259520), PolyRefl.mkT 6 6 6 2 0 (-75497472), PolyRefl.mkT 6 6 8 0 0 (2097152), PolyRefl.mkT 8 4 0 8 0 (-285212672), PolyRefl.mkT 8 4 2 6 0 (524288000), PolyRefl.mkT 8 4 4 4 0 (-270532608), PolyRefl.mkT 8 4 6 2 0 (34865152), PolyRefl.mkT 8 4 8 0 0 (262144), PolyRefl.mkT 10 2 0 8 0 (33554432), PolyRefl.mkT 10 2 2 6 0 (-50331648), PolyRefl.mkT 10 2 4 4 0 (20971520), PolyRefl.mkT 10 2 6 2 0 (-2097152), PolyRefl.mkT 12 0 0 8 0 (16777216), PolyRefl.mkT 12 0 2 6 0 (-29360128), PolyRefl.mkT 12 0 4 4 0 (14680064), PolyRefl.mkT 12 0 6 2 0 (-1835008)]
def cp241_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 14 10 2 0 (-1), PolyRefl.mkT 0 14 12 0 0 (1), PolyRefl.mkT 2 12 10 2 0 (-3), PolyRefl.mkT 2 12 12 0 0 (-1), PolyRefl.mkT 4 10 10 2 0 (31), PolyRefl.mkT 4 10 12 0 0 (-6), PolyRefl.mkT 6 8 10 2 0 (101), PolyRefl.mkT 6 8 12 0 0 (-102), PolyRefl.mkT 8 6 10 2 0 (101), PolyRefl.mkT 8 6 12 0 0 (1), PolyRefl.mkT 10 4 10 2 0 (31), PolyRefl.mkT 10 4 12 0 0 (-25), PolyRefl.mkT 12 2 10 2 0 (-3), PolyRefl.mkT 12 2 12 0 0 (4), PolyRefl.mkT 14 0 10 2 0 (-1)]
def cp242_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 28 20 0 0 (1), PolyRefl.mkT 2 26 20 0 0 (6), PolyRefl.mkT 4 24 20 0 0 (-53), PolyRefl.mkT 6 22 20 0 0 (-388), PolyRefl.mkT 8 20 20 0 0 (153), PolyRefl.mkT 10 18 20 0 0 (5594), PolyRefl.mkT 12 16 20 0 0 (16283), PolyRefl.mkT 14 14 20 0 0 (22344), PolyRefl.mkT 16 12 20 0 0 (16283), PolyRefl.mkT 18 10 20 0 0 (5594), PolyRefl.mkT 20 8 20 0 0 (153), PolyRefl.mkT 22 6 20 0 0 (-388), PolyRefl.mkT 24 4 20 0 0 (-53), PolyRefl.mkT 26 2 20 0 0 (6), PolyRefl.mkT 28 0 20 0 0 (1)]
def cp243_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 16 10 2 0 (16), PolyRefl.mkT 0 16 12 0 0 (4), PolyRefl.mkT 2 14 10 2 0 (32), PolyRefl.mkT 2 14 12 0 0 (-48), PolyRefl.mkT 4 12 10 2 0 (-544), PolyRefl.mkT 4 12 12 0 0 (352), PolyRefl.mkT 6 10 10 2 0 (-1120), PolyRefl.mkT 6 10 12 0 0 (-944), PolyRefl.mkT 8 8 12 0 0 (840), PolyRefl.mkT 10 6 10 2 0 (1120), PolyRefl.mkT 10 6 12 0 0 (-2064), PolyRefl.mkT 12 4 10 2 0 (544), PolyRefl.mkT 12 4 12 0 0 (-192), PolyRefl.mkT 14 2 10 2 0 (-32), PolyRefl.mkT 14 2 12 0 0 (-16), PolyRefl.mkT 16 0 10 2 0 (-16), PolyRefl.mkT 16 0 12 0 0 (20)]
def cp244_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 30 24 0 0 (5), PolyRefl.mkT 2 28 24 0 0 (-51), PolyRefl.mkT 4 26 24 0 0 (293), PolyRefl.mkT 6 24 24 0 0 (-1539), PolyRefl.mkT 8 22 24 0 0 (6665), PolyRefl.mkT 10 20 24 0 0 (-28463), PolyRefl.mkT 12 18 24 0 0 (83001), PolyRefl.mkT 14 16 24 0 0 (-142127), PolyRefl.mkT 16 14 24 0 0 (142127), PolyRefl.mkT 18 12 24 0 0 (-83001), PolyRefl.mkT 20 10 24 0 0 (28463), PolyRefl.mkT 22 8 24 0 0 (-6665), PolyRefl.mkT 24 6 24 0 0 (1539), PolyRefl.mkT 26 4 24 0 0 (-293), PolyRefl.mkT 28 2 24 0 0 (51), PolyRefl.mkT 30 0 24 0 0 (-5)]
def cp245_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 4 (10), PolyRefl.mkT 0 2 0 2 2 (-20), PolyRefl.mkT 0 2 0 4 0 (2), PolyRefl.mkT 2 0 0 0 4 (-2), PolyRefl.mkT 2 0 0 2 2 (20), PolyRefl.mkT 2 0 0 4 0 (-10)]
def cp246_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 2 (10), PolyRefl.mkT 0 2 0 2 0 (-30), PolyRefl.mkT 0 2 2 0 0 (10), PolyRefl.mkT 2 0 0 0 2 (-2), PolyRefl.mkT 2 0 0 2 0 (22), PolyRefl.mkT 2 0 2 0 0 (-2)]
def cp247_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 4 0 (16), PolyRefl.mkT 0 2 2 2 0 (-20), PolyRefl.mkT 0 2 4 0 0 (5), PolyRefl.mkT 2 0 0 4 0 (-16), PolyRefl.mkT 2 0 2 2 0 (12), PolyRefl.mkT 2 0 4 0 0 (-1)]
def cp248_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 1 5 (-24), PolyRefl.mkT 0 2 0 3 3 (80), PolyRefl.mkT 0 2 0 5 1 (-24), PolyRefl.mkT 1 1 0 0 6 (-8), PolyRefl.mkT 1 1 0 2 4 (120), PolyRefl.mkT 1 1 0 4 2 (-120), PolyRefl.mkT 1 1 0 6 0 (8), PolyRefl.mkT 2 0 0 1 5 (-24), PolyRefl.mkT 2 0 0 3 3 (80), PolyRefl.mkT 2 0 0 5 1 (-24)]
def cp249_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 1 3 (-24), PolyRefl.mkT 0 2 0 3 1 (104), PolyRefl.mkT 0 2 2 1 1 (-24), PolyRefl.mkT 1 1 0 0 4 (-8), PolyRefl.mkT 1 1 0 2 2 (128), PolyRefl.mkT 1 1 0 4 0 (-248), PolyRefl.mkT 1 1 2 0 2 (-8), PolyRefl.mkT 1 1 2 2 0 (136), PolyRefl.mkT 1 1 4 0 0 (-8), PolyRefl.mkT 2 0 0 1 3 (-24), PolyRefl.mkT 2 0 0 3 1 (104), PolyRefl.mkT 2 0 2 1 1 (-24)]
def cp250_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (1048576), PolyRefl.mkT 2 8 0 0 0 (-5242880), PolyRefl.mkT 4 6 0 0 0 (10485760), PolyRefl.mkT 6 4 0 0 0 (-10485760), PolyRefl.mkT 8 2 0 0 0 (5242880), PolyRefl.mkT 10 0 0 0 0 (-1048576)]
def cp251_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 12 0 8 0 (16777216), PolyRefl.mkT 0 12 2 6 0 (-29360128), PolyRefl.mkT 0 12 4 4 0 (14680064), PolyRefl.mkT 0 12 6 2 0 (-1835008), PolyRefl.mkT 2 10 0 8 0 (33554432), PolyRefl.mkT 2 10 2 6 0 (-50331648), PolyRefl.mkT 2 10 4 4 0 (20971520), PolyRefl.mkT 2 10 6 2 0 (-2097152), PolyRefl.mkT 4 8 0 8 0 (-285212672), PolyRefl.mkT 4 8 2 6 0 (524288000), PolyRefl.mkT 4 8 4 4 0 (-270532608), PolyRefl.mkT 4 8 6 2 0 (34865152), PolyRefl.mkT 4 8 8 0 0 (262144), PolyRefl.mkT 6 6 0 8 0 (469762048), PolyRefl.mkT 6 6 2 6 0 (-939524096), PolyRefl.mkT 6 6 4 4 0 (545259520), PolyRefl.mkT 6 6 6 2 0 (-75497472), PolyRefl.mkT 6 6 8 0 0 (2097152), PolyRefl.mkT 8 4 0 8 0 (-285212672), PolyRefl.mkT 8 4 2 6 0 (616562688), PolyRefl.mkT 8 4 4 4 0 (-408944640), PolyRefl.mkT 8 4 6 2 0 (74186752), PolyRefl.mkT 8 4 8 0 0 (3670016), PolyRefl.mkT 10 2 0 8 0 (33554432), PolyRefl.mkT 10 2 2 6 0 (-83886080), PolyRefl.mkT 10 2 4 4 0 (71303168), PolyRefl.mkT 10 2 6 2 0 (-23068672), PolyRefl.mkT 10 2 8 0 0 (2097152), PolyRefl.mkT 12 0 0 8 0 (16777216), PolyRefl.mkT 12 0 2 6 0 (-37748736), PolyRefl.mkT 12 0 4 4 0 (27262976), PolyRefl.mkT 12 0 6 2 0 (-6553600), PolyRefl.mkT 12 0 8 0 0 (262144)]
def cp252_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 14 10 2 0 (-1), PolyRefl.mkT 2 12 10 2 0 (-3), PolyRefl.mkT 2 12 12 0 0 (4), PolyRefl.mkT 4 10 10 2 0 (31), PolyRefl.mkT 4 10 12 0 0 (-25), PolyRefl.mkT 6 8 10 2 0 (101), PolyRefl.mkT 6 8 12 0 0 (1), PolyRefl.mkT 8 6 10 2 0 (101), PolyRefl.mkT 8 6 12 0 0 (-102), PolyRefl.mkT 10 4 10 2 0 (31), PolyRefl.mkT 10 4 12 0 0 (-6), PolyRefl.mkT 12 2 10 2 0 (-3), PolyRefl.mkT 12 2 12 0 0 (-1), PolyRefl.mkT 14 0 10 2 0 (-1), PolyRefl.mkT 14 0 12 0 0 (1)]
def cp253_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 16 10 2 0 (-16), PolyRefl.mkT 0 16 12 0 0 (20), PolyRefl.mkT 2 14 10 2 0 (-32), PolyRefl.mkT 2 14 12 0 0 (-16), PolyRefl.mkT 4 12 10 2 0 (544), PolyRefl.mkT 4 12 12 0 0 (-192), PolyRefl.mkT 6 10 10 2 0 (1120), PolyRefl.mkT 6 10 12 0 0 (-2064), PolyRefl.mkT 8 8 12 0 0 (840), PolyRefl.mkT 10 6 10 2 0 (-1120), PolyRefl.mkT 10 6 12 0 0 (-944), PolyRefl.mkT 12 4 10 2 0 (-544), PolyRefl.mkT 12 4 12 0 0 (352), PolyRefl.mkT 14 2 10 2 0 (32), PolyRefl.mkT 14 2 12 0 0 (-48), PolyRefl.mkT 16 0 10 2 0 (16), PolyRefl.mkT 16 0 12 0 0 (4)]
def cp254_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 12 92 32 0 0 (-1), PolyRefl.mkT 14 90 32 0 0 (208), PolyRefl.mkT 16 88 32 0 0 (-17836), PolyRefl.mkT 18 86 32 0 0 (844208), PolyRefl.mkT 20 84 32 0 0 (-24250174), PolyRefl.mkT 22 82 32 0 0 (430386480), PolyRefl.mkT 24 80 32 0 0 (-4539894604), PolyRefl.mkT 26 78 32 0 0 (23088384336), PolyRefl.mkT 28 76 32 0 0 (61719785747), PolyRefl.mkT 30 74 32 0 0 (-2146098322624), PolyRefl.mkT 32 72 32 0 0 (20255885074832), PolyRefl.mkT 34 70 32 0 0 (-123108538284352), PolyRefl.mkT 36 68 32 0 0 (554891769991832), PolyRefl.mkT 38 66 32 0 0 (-1965298185921600), PolyRefl.mkT 40 64 32 0 0 (5647950527567824), PolyRefl.mkT 42 62 32 0 0 (-13445448563390912), PolyRefl.mkT 44 60 32 0 0 (26898103548604398), PolyRefl.mkT 46 58 32 0 0 (-45688277076059040), PolyRefl.mkT 48 56 32 0 0 (66376548330002328), PolyRefl.mkT 50 54 32 0 0 (-82890933133492576), PolyRefl.mkT 52 52 32 0 0 (89234761717983052), PolyRefl.mkT 54 50 32 0 0 (-82890933133492576), PolyRefl.mkT 56 48 32 0 0 (66376548330002328), PolyRefl.mkT 58 46 32 0 0 (-45688277076059040), PolyRefl.mkT 60 44 32 0 0 (26898103548604398), PolyRefl.mkT 62 42 32 0 0 (-13445448563390912), PolyRefl.mkT 64 40 32 0 0 (5647950527567824), PolyRefl.mkT 66 38 32 0 0 (-1965298185921600), PolyRefl.mkT 68 36 32 0 0 (554891769991832), PolyRefl.mkT 70 34 32 0 0 (-123108538284352), PolyRefl.mkT 72 32 32 0 0 (20255885074832), PolyRefl.mkT 74 30 32 0 0 (-2146098322624), PolyRefl.mkT 76 28 32 0 0 (61719785747), PolyRefl.mkT 78 26 32 0 0 (23088384336), PolyRefl.mkT 80 24 32 0 0 (-4539894604), PolyRefl.mkT 82 22 32 0 0 (430386480), PolyRefl.mkT 84 20 32 0 0 (-24250174), PolyRefl.mkT 86 18 32 0 0 (844208), PolyRefl.mkT 88 16 32 0 0 (-17836), PolyRefl.mkT 90 14 32 0 0 (208), PolyRefl.mkT 92 12 32 0 0 (-1)]
def cp255_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 5 (-24), PolyRefl.mkT 0 4 0 3 3 (80), PolyRefl.mkT 0 4 0 5 1 (-24), PolyRefl.mkT 1 3 0 0 6 (16), PolyRefl.mkT 1 3 0 2 4 (48), PolyRefl.mkT 1 3 0 4 2 (48), PolyRefl.mkT 1 3 0 6 0 (16), PolyRefl.mkT 2 2 0 1 5 (144), PolyRefl.mkT 2 2 0 3 3 (-480), PolyRefl.mkT 2 2 0 5 1 (144), PolyRefl.mkT 3 1 0 0 6 (-16), PolyRefl.mkT 3 1 0 2 4 (-48), PolyRefl.mkT 3 1 0 4 2 (-48), PolyRefl.mkT 3 1 0 6 0 (-16), PolyRefl.mkT 4 0 0 1 5 (-24), PolyRefl.mkT 4 0 0 3 3 (80), PolyRefl.mkT 4 0 0 5 1 (-24)]
def cp256_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-24), PolyRefl.mkT 0 4 0 3 1 (104), PolyRefl.mkT 0 4 2 1 1 (-24), PolyRefl.mkT 1 3 0 0 4 (16), PolyRefl.mkT 1 3 0 2 2 (32), PolyRefl.mkT 1 3 0 4 0 (16), PolyRefl.mkT 1 3 2 0 2 (16), PolyRefl.mkT 1 3 2 2 0 (16), PolyRefl.mkT 1 3 4 0 0 (16), PolyRefl.mkT 2 2 0 1 3 (144), PolyRefl.mkT 2 2 0 3 1 (-624), PolyRefl.mkT 2 2 2 1 1 (144), PolyRefl.mkT 3 1 0 0 4 (-16), PolyRefl.mkT 3 1 0 2 2 (-32), PolyRefl.mkT 3 1 0 4 0 (-16), PolyRefl.mkT 3 1 2 0 2 (-16), PolyRefl.mkT 3 1 2 2 0 (-16), PolyRefl.mkT 3 1 4 0 0 (-16), PolyRefl.mkT 4 0 0 1 3 (-24), PolyRefl.mkT 4 0 0 3 1 (104), PolyRefl.mkT 4 0 2 1 1 (-24)]
def cp257_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (-16), PolyRefl.mkT 0 4 2 3 1 (16), PolyRefl.mkT 0 4 4 1 1 (-3), PolyRefl.mkT 1 3 6 0 0 (2), PolyRefl.mkT 2 2 0 5 1 (96), PolyRefl.mkT 2 2 2 3 1 (-96), PolyRefl.mkT 2 2 4 1 1 (18), PolyRefl.mkT 3 1 6 0 0 (-2), PolyRefl.mkT 4 0 0 5 1 (-16), PolyRefl.mkT 4 0 2 3 1 (16), PolyRefl.mkT 4 0 4 1 1 (-3)]
def cp258_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (-16), PolyRefl.mkT 0 4 2 3 1 (16), PolyRefl.mkT 0 4 4 1 1 (-3), PolyRefl.mkT 1 3 6 0 0 (-2), PolyRefl.mkT 2 2 0 5 1 (96), PolyRefl.mkT 2 2 2 3 1 (-96), PolyRefl.mkT 2 2 4 1 1 (18), PolyRefl.mkT 3 1 6 0 0 (2), PolyRefl.mkT 4 0 0 5 1 (-16), PolyRefl.mkT 4 0 2 3 1 (16), PolyRefl.mkT 4 0 4 1 1 (-3)]
def cp259_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 12 0 (256), PolyRefl.mkT 0 8 2 10 0 (-768), PolyRefl.mkT 0 8 4 8 0 (864), PolyRefl.mkT 0 8 6 6 0 (-448), PolyRefl.mkT 0 8 8 4 0 (105), PolyRefl.mkT 0 8 10 2 0 (-9), PolyRefl.mkT 2 6 0 12 0 (-3072), PolyRefl.mkT 2 6 2 10 0 (9216), PolyRefl.mkT 2 6 4 8 0 (-10368), PolyRefl.mkT 2 6 6 6 0 (5376), PolyRefl.mkT 2 6 8 4 0 (-1260), PolyRefl.mkT 2 6 10 2 0 (108), PolyRefl.mkT 2 6 12 0 0 (4), PolyRefl.mkT 4 4 0 12 0 (9728), PolyRefl.mkT 4 4 2 10 0 (-29184), PolyRefl.mkT 4 4 4 8 0 (32832), PolyRefl.mkT 4 4 6 6 0 (-17024), PolyRefl.mkT 4 4 8 4 0 (3990), PolyRefl.mkT 4 4 10 2 0 (-342), PolyRefl.mkT 4 4 12 0 0 (-8), PolyRefl.mkT 6 2 0 12 0 (-3072), PolyRefl.mkT 6 2 2 10 0 (9216), PolyRefl.mkT 6 2 4 8 0 (-10368), PolyRefl.mkT 6 2 6 6 0 (5376), PolyRefl.mkT 6 2 8 4 0 (-1260), PolyRefl.mkT 6 2 10 2 0 (108), PolyRefl.mkT 6 2 12 0 0 (4), PolyRefl.mkT 8 0 0 12 0 (256), PolyRefl.mkT 8 0 2 10 0 (-768), PolyRefl.mkT 8 0 4 8 0 (864), PolyRefl.mkT 8 0 6 6 0 (-448), PolyRefl.mkT 8 0 8 4 0 (105), PolyRefl.mkT 8 0 10 2 0 (-9)]
def cp260_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 4 28 8 4 0 (-8), PolyRefl.mkT 4 28 10 2 0 (8), PolyRefl.mkT 4 28 12 0 0 (-1), PolyRefl.mkT 6 26 8 4 0 (352), PolyRefl.mkT 6 26 10 2 0 (-352), PolyRefl.mkT 6 26 12 0 0 (28), PolyRefl.mkT 8 24 8 4 0 (-4880), PolyRefl.mkT 8 24 10 2 0 (4880), PolyRefl.mkT 8 24 12 0 0 (190), PolyRefl.mkT 10 22 8 4 0 (31712), PolyRefl.mkT 10 22 10 2 0 (-31712), PolyRefl.mkT 10 22 12 0 0 (-2132), PolyRefl.mkT 12 20 8 4 0 (-111480), PolyRefl.mkT 12 20 10 2 0 (111480), PolyRefl.mkT 12 20 12 0 0 (7441), PolyRefl.mkT 14 18 8 4 0 (230080), PolyRefl.mkT 14 18 10 2 0 (-230080), PolyRefl.mkT 14 18 12 0 0 (-14280), PolyRefl.mkT 16 16 8 4 0 (-291552), PolyRefl.mkT 16 16 10 2 0 (291552), PolyRefl.mkT 16 16 12 0 0 (17508), PolyRefl.mkT 18 14 8 4 0 (230080), PolyRefl.mkT 18 14 10 2 0 (-230080), PolyRefl.mkT 18 14 12 0 0 (-14280), PolyRefl.mkT 20 12 8 4 0 (-111480), PolyRefl.mkT 20 12 10 2 0 (111480), PolyRefl.mkT 20 12 12 0 0 (7441), PolyRefl.mkT 22 10 8 4 0 (31712), PolyRefl.mkT 22 10 10 2 0 (-31712), PolyRefl.mkT 22 10 12 0 0 (-2132), PolyRefl.mkT 24 8 8 4 0 (-4880), PolyRefl.mkT 24 8 10 2 0 (4880), PolyRefl.mkT 24 8 12 0 0 (190), PolyRefl.mkT 26 6 8 4 0 (352), PolyRefl.mkT 26 6 10 2 0 (-352), PolyRefl.mkT 26 6 12 0 0 (28), PolyRefl.mkT 28 4 8 4 0 (-8), PolyRefl.mkT 28 4 10 2 0 (8), PolyRefl.mkT 28 4 12 0 0 (-1)]
def cp261_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 10 62 16 4 0 (262144), PolyRefl.mkT 10 62 18 2 0 (-262144), PolyRefl.mkT 10 62 20 0 0 (32768), PolyRefl.mkT 12 60 16 4 0 (-23592960), PolyRefl.mkT 12 60 18 2 0 (23592960), PolyRefl.mkT 12 60 20 0 0 (-3473408), PolyRefl.mkT 14 58 16 4 0 (873725952), PolyRefl.mkT 14 58 18 2 0 (-873725952), PolyRefl.mkT 14 58 20 0 0 (159547392), PolyRefl.mkT 16 56 16 4 0 (-17827889152), PolyRefl.mkT 16 56 18 2 0 (17827889152), PolyRefl.mkT 16 56 20 0 0 (-4000579584), PolyRefl.mkT 18 54 16 4 0 (229421613056), PolyRefl.mkT 18 54 18 2 0 (-229421613056), PolyRefl.mkT 18 54 20 0 0 (59631665152), PolyRefl.mkT 20 52 16 4 0 (-2013027893248), PolyRefl.mkT 20 52 18 2 0 (2013027893248), PolyRefl.mkT 20 52 20 0 0 (-573718528000), PolyRefl.mkT 22 50 16 4 0 (12663213522944), PolyRefl.mkT 22 50 18 2 0 (-12663213522944), PolyRefl.mkT 22 50 20 0 0 (3804356083712), PolyRefl.mkT 24 48 16 4 0 (-59135460638720), PolyRefl.mkT 24 48 18 2 0 (59135460638720), PolyRefl.mkT 24 48 20 0 0 (-18256507437056), PolyRefl.mkT 26 46 16 4 0 (210288939630592), PolyRefl.mkT 26 46 18 2 0 (-210288939630592), PolyRefl.mkT 26 46 20 0 0 (65702626164736), PolyRefl.mkT 28 44 16 4 0 (-580399132049408), PolyRefl.mkT 28 44 18 2 0 (580399132049408), PolyRefl.mkT 28 44 20 0 0 (-181976522489856), PolyRefl.mkT 30 42 16 4 0 (1261171409420288), PolyRefl.mkT 30 42 18 2 0 (-1261171409420288), PolyRefl.mkT 30 42 20 0 0 (395193786007552), PolyRefl.mkT 32 40 16 4 0 (-2180078913978368), PolyRefl.mkT 32 40 18 2 0 (2180078913978368), PolyRefl.mkT 32 40 20 0 0 (-681802451124224), PolyRefl.mkT 34 38 16 4 0 (3019245769195520), PolyRefl.mkT 34 38 18 2 0 (-3019245769195520), PolyRefl.mkT 34 38 20 0 0 (942614324051968), PolyRefl.mkT 36 36 16 4 0 (-3363910482657280), PolyRefl.mkT 36 36 18 2 0 (3363910482657280), PolyRefl.mkT 36 36 20 0 0 (-1049523359842304), PolyRefl.mkT 38 34 16 4 0 (3019245769195520), PolyRefl.mkT 38 34 18 2 0 (-3019245769195520), PolyRefl.mkT 38 34 20 0 0 (942614324051968), PolyRefl.mkT 40 32 16 4 0 (-2180078913978368), PolyRefl.mkT 40 32 18 2 0 (2180078913978368), PolyRefl.mkT 40 32 20 0 0 (-681802451124224), PolyRefl.mkT 42 30 16 4 0 (1261171409420288), PolyRefl.mkT 42 30 18 2 0 (-1261171409420288), PolyRefl.mkT 42 30 20 0 0 (395193786007552), PolyRefl.mkT 44 28 16 4 0 (-580399132049408), PolyRefl.mkT 44 28 18 2 0 (580399132049408), PolyRefl.mkT 44 28 20 0 0 (-181976522489856), PolyRefl.mkT 46 26 16 4 0 (210288939630592), PolyRefl.mkT 46 26 18 2 0 (-210288939630592), PolyRefl.mkT 46 26 20 0 0 (65702626164736), PolyRefl.mkT 48 24 16 4 0 (-59135460638720), PolyRefl.mkT 48 24 18 2 0 (59135460638720), PolyRefl.mkT 48 24 20 0 0 (-18256507437056), PolyRefl.mkT 50 22 16 4 0 (12663213522944), PolyRefl.mkT 50 22 18 2 0 (-12663213522944), PolyRefl.mkT 50 22 20 0 0 (3804356083712), PolyRefl.mkT 52 20 16 4 0 (-2013027893248), PolyRefl.mkT 52 20 18 2 0 (2013027893248), PolyRefl.mkT 52 20 20 0 0 (-573718528000), PolyRefl.mkT 54 18 16 4 0 (229421613056), PolyRefl.mkT 54 18 18 2 0 (-229421613056), PolyRefl.mkT 54 18 20 0 0 (59631665152), PolyRefl.mkT 56 16 16 4 0 (-17827889152), PolyRefl.mkT 56 16 18 2 0 (17827889152), PolyRefl.mkT 56 16 20 0 0 (-4000579584), PolyRefl.mkT 58 14 16 4 0 (873725952), PolyRefl.mkT 58 14 18 2 0 (-873725952), PolyRefl.mkT 58 14 20 0 0 (159547392), PolyRefl.mkT 60 12 16 4 0 (-23592960), PolyRefl.mkT 60 12 18 2 0 (23592960), PolyRefl.mkT 60 12 20 0 0 (-3473408), PolyRefl.mkT 62 10 16 4 0 (262144), PolyRefl.mkT 62 10 18 2 0 (-262144), PolyRefl.mkT 62 10 20 0 0 (32768)]
def cp262_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 38 12 0 0 (3645), PolyRefl.mkT 4 36 12 0 0 (-242190), PolyRefl.mkT 6 34 12 0 0 (6373341), PolyRefl.mkT 8 32 12 0 0 (-93800016), PolyRefl.mkT 10 30 12 0 0 (883299940), PolyRefl.mkT 12 28 12 0 0 (-5679928968), PolyRefl.mkT 14 26 12 0 0 (25762389076), PolyRefl.mkT 16 24 12 0 0 (-83407286576), PolyRefl.mkT 18 22 12 0 0 (191545344118), PolyRefl.mkT 20 20 12 0 0 (-303274513748), PolyRefl.mkT 22 18 12 0 0 (313796295334), PolyRefl.mkT 24 16 12 0 0 (-202017066032), PolyRefl.mkT 26 14 12 0 0 (83165394484), PolyRefl.mkT 28 12 12 0 0 (-22637887368), PolyRefl.mkT 30 10 12 0 0 (4137196804), PolyRefl.mkT 32 8 12 0 0 (-502877520), PolyRefl.mkT 34 6 12 0 0 (38924469), PolyRefl.mkT 36 4 12 0 0 (-1724814), PolyRefl.mkT 38 2 12 0 0 (32805)]
def cp263_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 5 (-12), PolyRefl.mkT 0 4 0 3 3 (40), PolyRefl.mkT 0 4 0 5 1 (-12), PolyRefl.mkT 1 3 0 0 6 (8), PolyRefl.mkT 1 3 0 2 4 (24), PolyRefl.mkT 1 3 0 4 2 (24), PolyRefl.mkT 1 3 0 6 0 (8), PolyRefl.mkT 2 2 0 1 5 (-72), PolyRefl.mkT 2 2 0 3 3 (240), PolyRefl.mkT 2 2 0 5 1 (-72), PolyRefl.mkT 3 1 0 0 6 (8), PolyRefl.mkT 3 1 0 2 4 (-264), PolyRefl.mkT 3 1 0 4 2 (216), PolyRefl.mkT 3 1 0 6 0 (-24), PolyRefl.mkT 4 0 0 1 5 (36), PolyRefl.mkT 4 0 0 3 3 (-120), PolyRefl.mkT 4 0 0 5 1 (36)]
def cp264_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-12), PolyRefl.mkT 0 4 0 3 1 (52), PolyRefl.mkT 0 4 2 1 1 (-12), PolyRefl.mkT 1 3 0 0 4 (8), PolyRefl.mkT 1 3 0 2 2 (16), PolyRefl.mkT 1 3 0 4 0 (8), PolyRefl.mkT 1 3 2 0 2 (8), PolyRefl.mkT 1 3 2 2 0 (8), PolyRefl.mkT 1 3 4 0 0 (8), PolyRefl.mkT 2 2 0 1 3 (-72), PolyRefl.mkT 2 2 0 3 1 (312), PolyRefl.mkT 2 2 2 1 1 (-72), PolyRefl.mkT 3 1 0 0 4 (8), PolyRefl.mkT 3 1 0 2 2 (-272), PolyRefl.mkT 3 1 0 4 0 (488), PolyRefl.mkT 3 1 2 0 2 (8), PolyRefl.mkT 3 1 2 2 0 (-280), PolyRefl.mkT 3 1 4 0 0 (8), PolyRefl.mkT 4 0 0 1 3 (36), PolyRefl.mkT 4 0 0 3 1 (-156), PolyRefl.mkT 4 0 2 1 1 (36)]
def cp265_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (-16), PolyRefl.mkT 0 4 2 3 1 (16), PolyRefl.mkT 0 4 4 1 1 (-3), PolyRefl.mkT 1 3 6 0 0 (2), PolyRefl.mkT 2 2 0 5 1 (-96), PolyRefl.mkT 2 2 2 3 1 (96), PolyRefl.mkT 2 2 4 1 1 (-18), PolyRefl.mkT 3 1 0 6 0 (-128), PolyRefl.mkT 3 1 2 4 0 (192), PolyRefl.mkT 3 1 4 2 0 (-72), PolyRefl.mkT 3 1 6 0 0 (2), PolyRefl.mkT 4 0 0 5 1 (48), PolyRefl.mkT 4 0 2 3 1 (-48), PolyRefl.mkT 4 0 4 1 1 (9)]
def cp266_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (-16), PolyRefl.mkT 0 4 2 3 1 (16), PolyRefl.mkT 0 4 4 1 1 (-3), PolyRefl.mkT 1 3 6 0 0 (-2), PolyRefl.mkT 2 2 0 5 1 (-96), PolyRefl.mkT 2 2 2 3 1 (96), PolyRefl.mkT 2 2 4 1 1 (-18), PolyRefl.mkT 3 1 0 6 0 (128), PolyRefl.mkT 3 1 2 4 0 (-192), PolyRefl.mkT 3 1 4 2 0 (72), PolyRefl.mkT 3 1 6 0 0 (-2), PolyRefl.mkT 4 0 0 5 1 (48), PolyRefl.mkT 4 0 2 3 1 (-48), PolyRefl.mkT 4 0 4 1 1 (9)]
def cp267_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 12 0 (256), PolyRefl.mkT 0 8 2 10 0 (-768), PolyRefl.mkT 0 8 4 8 0 (864), PolyRefl.mkT 0 8 6 6 0 (-448), PolyRefl.mkT 0 8 8 4 0 (105), PolyRefl.mkT 0 8 10 2 0 (-9), PolyRefl.mkT 2 6 0 12 0 (3072), PolyRefl.mkT 2 6 2 10 0 (-9216), PolyRefl.mkT 2 6 4 8 0 (10368), PolyRefl.mkT 2 6 6 6 0 (-5376), PolyRefl.mkT 2 6 8 4 0 (1260), PolyRefl.mkT 2 6 10 2 0 (-108), PolyRefl.mkT 2 6 12 0 0 (4), PolyRefl.mkT 4 4 0 12 0 (7680), PolyRefl.mkT 4 4 2 10 0 (-23040), PolyRefl.mkT 4 4 4 8 0 (25920), PolyRefl.mkT 4 4 6 6 0 (-13952), PolyRefl.mkT 4 4 8 4 0 (3918), PolyRefl.mkT 4 4 10 2 0 (-558), PolyRefl.mkT 4 4 12 0 0 (8), PolyRefl.mkT 6 2 0 12 0 (7168), PolyRefl.mkT 6 2 2 10 0 (-21504), PolyRefl.mkT 6 2 4 8 0 (24192), PolyRefl.mkT 6 2 6 6 0 (-12032), PolyRefl.mkT 6 2 8 4 0 (2172), PolyRefl.mkT 6 2 10 2 0 (36), PolyRefl.mkT 6 2 12 0 0 (4), PolyRefl.mkT 8 0 0 12 0 (2304), PolyRefl.mkT 8 0 2 10 0 (-6912), PolyRefl.mkT 8 0 4 8 0 (7776), PolyRefl.mkT 8 0 6 6 0 (-4032), PolyRefl.mkT 8 0 8 4 0 (945), PolyRefl.mkT 8 0 10 2 0 (-81)]
def cp268_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 3 (6), PolyRefl.mkT 0 4 0 2 1 (-18), PolyRefl.mkT 1 3 0 1 2 (-24), PolyRefl.mkT 1 3 0 3 0 (8), PolyRefl.mkT 2 2 0 0 3 (-36), PolyRefl.mkT 2 2 0 2 1 (108), PolyRefl.mkT 3 1 0 1 2 (24), PolyRefl.mkT 3 1 0 3 0 (-8), PolyRefl.mkT 4 0 0 0 3 (6), PolyRefl.mkT 4 0 0 2 1 (-18)]
def cp269_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 1 (6), PolyRefl.mkT 1 3 0 1 0 (-24), PolyRefl.mkT 2 2 0 0 1 (-36), PolyRefl.mkT 3 1 0 1 0 (24), PolyRefl.mkT 4 0 0 0 1 (6)]
def cp270_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 2 1 (-12), PolyRefl.mkT 0 4 2 0 1 (3), PolyRefl.mkT 1 3 0 3 0 (16), PolyRefl.mkT 1 3 2 1 0 (-12), PolyRefl.mkT 2 2 0 2 1 (72), PolyRefl.mkT 2 2 2 0 1 (-18), PolyRefl.mkT 3 1 0 3 0 (-16), PolyRefl.mkT 3 1 2 1 0 (12), PolyRefl.mkT 4 0 0 2 1 (-12), PolyRefl.mkT 4 0 2 0 1 (3)]
def cp271_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 4 0 (144), PolyRefl.mkT 0 8 2 2 0 (-72), PolyRefl.mkT 0 8 4 0 0 (9), PolyRefl.mkT 2 6 0 4 0 (-1728), PolyRefl.mkT 2 6 2 2 0 (864), PolyRefl.mkT 2 6 4 0 0 (-108), PolyRefl.mkT 4 4 0 4 0 (5472), PolyRefl.mkT 4 4 2 2 0 (-2736), PolyRefl.mkT 4 4 4 0 0 (342), PolyRefl.mkT 6 2 0 4 0 (-1728), PolyRefl.mkT 6 2 2 2 0 (864), PolyRefl.mkT 6 2 4 0 0 (-108), PolyRefl.mkT 8 0 0 4 0 (144), PolyRefl.mkT 8 0 2 2 0 (-72), PolyRefl.mkT 8 0 4 0 0 (9)]
def cp272_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 2 1 (-12), PolyRefl.mkT 0 4 2 0 1 (3), PolyRefl.mkT 1 3 0 3 0 (-16), PolyRefl.mkT 1 3 2 1 0 (12), PolyRefl.mkT 2 2 0 2 1 (72), PolyRefl.mkT 2 2 2 0 1 (-18), PolyRefl.mkT 3 1 0 3 0 (16), PolyRefl.mkT 3 1 2 1 0 (-12), PolyRefl.mkT 4 0 0 2 1 (-12), PolyRefl.mkT 4 0 2 0 1 (3)]
def cp273_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 6 0 (144), PolyRefl.mkT 0 8 2 4 0 (-216), PolyRefl.mkT 0 8 4 2 0 (81), PolyRefl.mkT 0 8 6 0 0 (-9), PolyRefl.mkT 2 6 0 6 0 (-1472), PolyRefl.mkT 2 6 2 4 0 (2208), PolyRefl.mkT 2 6 4 2 0 (-828), PolyRefl.mkT 2 6 6 0 0 (108), PolyRefl.mkT 4 4 0 6 0 (4960), PolyRefl.mkT 4 4 2 4 0 (-7440), PolyRefl.mkT 4 4 4 2 0 (2790), PolyRefl.mkT 4 4 6 0 0 (-342), PolyRefl.mkT 6 2 0 6 0 (-1472), PolyRefl.mkT 6 2 2 4 0 (2208), PolyRefl.mkT 6 2 4 2 0 (-828), PolyRefl.mkT 6 2 6 0 0 (108), PolyRefl.mkT 8 0 0 6 0 (144), PolyRefl.mkT 8 0 2 4 0 (-216), PolyRefl.mkT 8 0 4 2 0 (81), PolyRefl.mkT 8 0 6 0 0 (-9)]
def cp274_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 32 0 6 0 (764411904), PolyRefl.mkT 0 32 2 4 0 (-1146617856), PolyRefl.mkT 0 32 4 2 0 (429981696), PolyRefl.mkT 2 30 0 6 0 (-14269022208), PolyRefl.mkT 2 30 2 4 0 (21403533312), PolyRefl.mkT 2 30 4 2 0 (-8026324992), PolyRefl.mkT 2 30 6 0 0 (-84934656), PolyRefl.mkT 4 28 0 6 0 (60246982656), PolyRefl.mkT 4 28 2 4 0 (-90370473984), PolyRefl.mkT 4 28 4 2 0 (33888927744), PolyRefl.mkT 4 28 6 0 0 (-641728512), PolyRefl.mkT 6 26 0 6 0 (686716616704), PolyRefl.mkT 6 26 2 4 0 (-1030074925056), PolyRefl.mkT 6 26 4 2 0 (386278096896), PolyRefl.mkT 6 26 6 0 0 (50456428544), PolyRefl.mkT 8 24 0 6 0 (-9092928110592), PolyRefl.mkT 8 24 2 4 0 (13639392165888), PolyRefl.mkT 8 24 4 2 0 (-5114772062208), PolyRefl.mkT 8 24 6 0 0 (-755981352960), PolyRefl.mkT 10 22 0 6 0 (40615752499200), PolyRefl.mkT 10 22 2 4 0 (-60923628748800), PolyRefl.mkT 10 22 4 2 0 (22846360780800), PolyRefl.mkT 10 22 6 0 0 (5907344785408), PolyRefl.mkT 12 20 0 6 0 (-56879560523776), PolyRefl.mkT 12 20 2 4 0 (85319340785664), PolyRefl.mkT 12 20 4 2 0 (-31994752794624), PolyRefl.mkT 12 20 6 0 0 (-28252399730688), PolyRefl.mkT 14 18 0 6 0 (-110346073276416), PolyRefl.mkT 14 18 2 4 0 (165519109914624), PolyRefl.mkT 14 18 4 2 0 (-62069666217984), PolyRefl.mkT 14 18 6 0 0 (85564937207808), PolyRefl.mkT 16 16 0 6 0 (289122885304320), PolyRefl.mkT 16 16 2 4 0 (-433684327956480), PolyRefl.mkT 16 16 4 2 0 (162631622983680), PolyRefl.mkT 16 16 6 0 0 (-159131793096704), PolyRefl.mkT 18 14 0 6 0 (244737445462016), PolyRefl.mkT 18 14 2 4 0 (-367106168193024), PolyRefl.mkT 18 14 4 2 0 (137664813072384), PolyRefl.mkT 18 14 6 0 0 (161796817158144), PolyRefl.mkT 20 12 0 6 0 (-143859073941504), PolyRefl.mkT 20 12 2 4 0 (215788610912256), PolyRefl.mkT 20 12 4 2 0 (-80920729092096), PolyRefl.mkT 20 12 6 0 0 (-88132439506944), PolyRefl.mkT 22 10 0 6 0 (-36382357585920), PolyRefl.mkT 22 10 2 4 0 (54573536378880), PolyRefl.mkT 22 10 4 2 0 (-20465076142080), PolyRefl.mkT 22 10 6 0 0 (27584348815360), PolyRefl.mkT 24 8 0 6 0 (43647911329792), PolyRefl.mkT 24 8 2 4 0 (-65471866994688), PolyRefl.mkT 24 8 4 2 0 (24551950123008), PolyRefl.mkT 24 8 6 0 0 (-5168087171072), PolyRefl.mkT 26 6 0 6 0 (-13866394189824), PolyRefl.mkT 26 6 2 4 0 (20799591284736), PolyRefl.mkT 26 6 4 2 0 (-7799846731776), PolyRefl.mkT 26 6 6 0 0 (570392838144), PolyRefl.mkT 28 4 0 6 0 (2234121191424), PolyRefl.mkT 28 4 2 4 0 (-3351181787136), PolyRefl.mkT 28 4 4 2 0 (1256693170176), PolyRefl.mkT 28 4 6 0 0 (-33634123776), PolyRefl.mkT 30 2 0 6 0 (-189574152192), PolyRefl.mkT 30 2 2 4 0 (284361228288), PolyRefl.mkT 30 2 4 2 0 (-106635460608), PolyRefl.mkT 30 2 6 0 0 (764411904), PolyRefl.mkT 32 0 0 6 0 (6879707136), PolyRefl.mkT 32 0 2 4 0 (-10319560704), PolyRefl.mkT 32 0 4 2 0 (3869835264)]
def cp275_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 38 12 0 0 (-19683), PolyRefl.mkT 4 36 12 0 0 (701298), PolyRefl.mkT 6 34 12 0 0 (-10639107), PolyRefl.mkT 8 32 12 0 0 (85117104), PolyRefl.mkT 10 30 12 0 0 (-320548124), PolyRefl.mkT 12 28 12 0 0 (-341346696), PolyRefl.mkT 14 26 12 0 0 (10325007316), PolyRefl.mkT 16 24 12 0 0 (-55970270768), PolyRefl.mkT 18 22 12 0 0 (166686615478), PolyRefl.mkT 20 20 12 0 0 (-303274513748), PolyRefl.mkT 22 18 12 0 0 (338655023974), PolyRefl.mkT 24 16 12 0 0 (-229454081840), PolyRefl.mkT 26 14 12 0 0 (98602776244), PolyRefl.mkT 28 12 12 0 0 (-27976469640), PolyRefl.mkT 30 10 12 0 0 (5341044868), PolyRefl.mkT 32 8 12 0 0 (-681794640), PolyRefl.mkT 34 6 12 0 0 (55936917), PolyRefl.mkT 36 4 12 0 0 (-2668302), PolyRefl.mkT 38 2 12 0 0 (56133)]
def cp276_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 3 (-6), PolyRefl.mkT 0 4 0 2 1 (18), PolyRefl.mkT 1 3 0 1 2 (-24), PolyRefl.mkT 1 3 0 3 0 (8), PolyRefl.mkT 2 2 0 0 3 (36), PolyRefl.mkT 2 2 0 2 1 (-108), PolyRefl.mkT 3 1 0 1 2 (24), PolyRefl.mkT 3 1 0 3 0 (-8), PolyRefl.mkT 4 0 0 0 3 (-6), PolyRefl.mkT 4 0 0 2 1 (18)]
def cp277_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 1 (-6), PolyRefl.mkT 1 3 0 1 0 (-24), PolyRefl.mkT 2 2 0 0 1 (36), PolyRefl.mkT 3 1 0 1 0 (24), PolyRefl.mkT 4 0 0 0 1 (-6)]
def cp278_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 2 1 (12), PolyRefl.mkT 0 4 2 0 1 (-3), PolyRefl.mkT 1 3 0 3 0 (16), PolyRefl.mkT 1 3 2 1 0 (-12), PolyRefl.mkT 2 2 0 2 1 (-72), PolyRefl.mkT 2 2 2 0 1 (18), PolyRefl.mkT 3 1 0 3 0 (-16), PolyRefl.mkT 3 1 2 1 0 (12), PolyRefl.mkT 4 0 0 2 1 (12), PolyRefl.mkT 4 0 2 0 1 (-3)]
def cp279_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 2 1 (12), PolyRefl.mkT 0 4 2 0 1 (-3), PolyRefl.mkT 1 3 0 3 0 (-16), PolyRefl.mkT 1 3 2 1 0 (12), PolyRefl.mkT 2 2 0 2 1 (-72), PolyRefl.mkT 2 2 2 0 1 (18), PolyRefl.mkT 3 1 0 3 0 (16), PolyRefl.mkT 3 1 2 1 0 (-12), PolyRefl.mkT 4 0 0 2 1 (12), PolyRefl.mkT 4 0 2 0 1 (-3)]
def cp280_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 5 (-36), PolyRefl.mkT 0 4 0 3 3 (120), PolyRefl.mkT 0 4 0 5 1 (-36), PolyRefl.mkT 1 3 0 0 6 (8), PolyRefl.mkT 1 3 0 2 4 (24), PolyRefl.mkT 1 3 0 4 2 (24), PolyRefl.mkT 1 3 0 6 0 (8), PolyRefl.mkT 2 2 0 1 5 (72), PolyRefl.mkT 2 2 0 3 3 (-240), PolyRefl.mkT 2 2 0 5 1 (72), PolyRefl.mkT 3 1 0 0 6 (8), PolyRefl.mkT 3 1 0 2 4 (-264), PolyRefl.mkT 3 1 0 4 2 (216), PolyRefl.mkT 3 1 0 6 0 (-24), PolyRefl.mkT 4 0 0 1 5 (12), PolyRefl.mkT 4 0 0 3 3 (-40), PolyRefl.mkT 4 0 0 5 1 (12)]
def cp281_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-36), PolyRefl.mkT 0 4 0 3 1 (156), PolyRefl.mkT 0 4 2 1 1 (-36), PolyRefl.mkT 1 3 0 0 4 (8), PolyRefl.mkT 1 3 0 2 2 (16), PolyRefl.mkT 1 3 0 4 0 (8), PolyRefl.mkT 1 3 2 0 2 (8), PolyRefl.mkT 1 3 2 2 0 (8), PolyRefl.mkT 1 3 4 0 0 (8), PolyRefl.mkT 2 2 0 1 3 (72), PolyRefl.mkT 2 2 0 3 1 (-312), PolyRefl.mkT 2 2 2 1 1 (72), PolyRefl.mkT 3 1 0 0 4 (8), PolyRefl.mkT 3 1 0 2 2 (-272), PolyRefl.mkT 3 1 0 4 0 (488), PolyRefl.mkT 3 1 2 0 2 (8), PolyRefl.mkT 3 1 2 2 0 (-280), PolyRefl.mkT 3 1 4 0 0 (8), PolyRefl.mkT 4 0 0 1 3 (12), PolyRefl.mkT 4 0 0 3 1 (-52), PolyRefl.mkT 4 0 2 1 1 (12)]
def cp282_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (-48), PolyRefl.mkT 0 4 2 3 1 (48), PolyRefl.mkT 0 4 4 1 1 (-9), PolyRefl.mkT 1 3 6 0 0 (2), PolyRefl.mkT 2 2 0 5 1 (96), PolyRefl.mkT 2 2 2 3 1 (-96), PolyRefl.mkT 2 2 4 1 1 (18), PolyRefl.mkT 3 1 0 6 0 (-128), PolyRefl.mkT 3 1 2 4 0 (192), PolyRefl.mkT 3 1 4 2 0 (-72), PolyRefl.mkT 3 1 6 0 0 (2), PolyRefl.mkT 4 0 0 5 1 (16), PolyRefl.mkT 4 0 2 3 1 (-16), PolyRefl.mkT 4 0 4 1 1 (3)]
def cp283_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 10 0 (2304), PolyRefl.mkT 0 8 2 8 0 (-4608), PolyRefl.mkT 0 8 4 6 0 (3168), PolyRefl.mkT 0 8 6 4 0 (-864), PolyRefl.mkT 0 8 8 2 0 (81), PolyRefl.mkT 2 6 0 10 0 (-9216), PolyRefl.mkT 2 6 2 8 0 (18432), PolyRefl.mkT 2 6 4 6 0 (-12672), PolyRefl.mkT 2 6 6 4 0 (3456), PolyRefl.mkT 2 6 8 2 0 (-324), PolyRefl.mkT 4 4 0 10 0 (7680), PolyRefl.mkT 4 4 2 8 0 (-15360), PolyRefl.mkT 4 4 4 6 0 (10560), PolyRefl.mkT 4 4 6 4 0 (-2880), PolyRefl.mkT 4 4 8 2 0 (270), PolyRefl.mkT 6 2 0 10 0 (3072), PolyRefl.mkT 6 2 2 8 0 (-6144), PolyRefl.mkT 6 2 4 6 0 (4224), PolyRefl.mkT 6 2 6 4 0 (-1152), PolyRefl.mkT 6 2 8 2 0 (108), PolyRefl.mkT 8 0 0 10 0 (256), PolyRefl.mkT 8 0 2 8 0 (-512), PolyRefl.mkT 8 0 4 6 0 (352), PolyRefl.mkT 8 0 6 4 0 (-96), PolyRefl.mkT 8 0 8 2 0 (9)]
def cp284_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (-48), PolyRefl.mkT 0 4 2 3 1 (48), PolyRefl.mkT 0 4 4 1 1 (-9), PolyRefl.mkT 1 3 6 0 0 (-2), PolyRefl.mkT 2 2 0 5 1 (96), PolyRefl.mkT 2 2 2 3 1 (-96), PolyRefl.mkT 2 2 4 1 1 (18), PolyRefl.mkT 3 1 0 6 0 (128), PolyRefl.mkT 3 1 2 4 0 (-192), PolyRefl.mkT 3 1 4 2 0 (72), PolyRefl.mkT 3 1 6 0 0 (-2), PolyRefl.mkT 4 0 0 5 1 (16), PolyRefl.mkT 4 0 2 3 1 (-16), PolyRefl.mkT 4 0 4 1 1 (3)]
def cp285_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 12 0 (2304), PolyRefl.mkT 0 8 2 10 0 (-6912), PolyRefl.mkT 0 8 4 8 0 (7776), PolyRefl.mkT 0 8 6 6 0 (-4032), PolyRefl.mkT 0 8 8 4 0 (945), PolyRefl.mkT 0 8 10 2 0 (-81), PolyRefl.mkT 2 6 0 12 0 (-9216), PolyRefl.mkT 2 6 2 10 0 (27648), PolyRefl.mkT 2 6 4 8 0 (-31104), PolyRefl.mkT 2 6 6 6 0 (16128), PolyRefl.mkT 2 6 8 4 0 (-3780), PolyRefl.mkT 2 6 10 2 0 (324), PolyRefl.mkT 2 6 12 0 0 (4), PolyRefl.mkT 4 4 0 12 0 (7680), PolyRefl.mkT 4 4 2 10 0 (-23040), PolyRefl.mkT 4 4 4 8 0 (25920), PolyRefl.mkT 4 4 6 6 0 (-13952), PolyRefl.mkT 4 4 8 4 0 (3918), PolyRefl.mkT 4 4 10 2 0 (-558), PolyRefl.mkT 4 4 12 0 0 (8), PolyRefl.mkT 6 2 0 12 0 (19456), PolyRefl.mkT 6 2 2 10 0 (-58368), PolyRefl.mkT 6 2 4 8 0 (65664), PolyRefl.mkT 6 2 6 6 0 (-33536), PolyRefl.mkT 6 2 8 4 0 (7212), PolyRefl.mkT 6 2 10 2 0 (-396), PolyRefl.mkT 6 2 12 0 0 (4), PolyRefl.mkT 8 0 0 12 0 (256), PolyRefl.mkT 8 0 2 10 0 (-768), PolyRefl.mkT 8 0 4 8 0 (864), PolyRefl.mkT 8 0 6 6 0 (-448), PolyRefl.mkT 8 0 8 4 0 (105), PolyRefl.mkT 8 0 10 2 0 (-9)]
def cp286_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 32 0 6 0 (6879707136), PolyRefl.mkT 0 32 2 4 0 (-10319560704), PolyRefl.mkT 0 32 4 2 0 (3869835264), PolyRefl.mkT 2 30 0 6 0 (-238496514048), PolyRefl.mkT 2 30 2 4 0 (357744771072), PolyRefl.mkT 2 30 4 2 0 (-134154289152), PolyRefl.mkT 2 30 6 0 0 (-764411904), PolyRefl.mkT 4 28 0 6 0 (3734406955008), PolyRefl.mkT 4 28 2 4 0 (-5601610432512), PolyRefl.mkT 4 28 4 2 0 (2100603912192), PolyRefl.mkT 4 28 6 0 0 (18685624320), PolyRefl.mkT 6 26 0 6 0 (-34209037025280), PolyRefl.mkT 6 26 2 4 0 (51313555537920), PolyRefl.mkT 6 26 4 2 0 (-19242583326720), PolyRefl.mkT 6 26 6 0 0 (-187318665216), PolyRefl.mkT 8 24 0 6 0 (199257797689344), PolyRefl.mkT 8 24 2 4 0 (-298886696534016), PolyRefl.mkT 8 24 4 2 0 (112082511200256), PolyRefl.mkT 8 24 6 0 0 (859463221248), PolyRefl.mkT 10 22 0 6 0 (-749186202992640), PolyRefl.mkT 10 22 2 4 0 (1123779304488960), PolyRefl.mkT 10 22 4 2 0 (-421417239183360), PolyRefl.mkT 10 22 6 0 0 (-503875371008), PolyRefl.mkT 12 20 0 6 0 (1742123611193344), PolyRefl.mkT 12 20 2 4 0 (-2613185416790016), PolyRefl.mkT 12 20 4 2 0 (979944531296256), PolyRefl.mkT 12 20 6 0 0 (-13949084893184), PolyRefl.mkT 14 18 0 6 0 (-2118587972059136), PolyRefl.mkT 14 18 2 4 0 (3177881958088704), PolyRefl.mkT 14 18 4 2 0 (-1191705734283264), PolyRefl.mkT 14 18 6 0 0 (70807857397760), PolyRefl.mkT 16 16 0 6 0 (289122885304320), PolyRefl.mkT 16 16 2 4 0 (-433684327956480), PolyRefl.mkT 16 16 4 2 0 (162631622983680), PolyRefl.mkT 16 16 6 0 0 (-159131793096704), PolyRefl.mkT 18 14 0 6 0 (2252979344244736), PolyRefl.mkT 18 14 2 4 0 (-3379469016367104), PolyRefl.mkT 18 14 4 2 0 (1267300881137664), PolyRefl.mkT 18 14 6 0 0 (176553896968192), PolyRefl.mkT 20 12 0 6 0 (-1942862245658624), PolyRefl.mkT 20 12 2 4 0 (2914293368487936), PolyRefl.mkT 20 12 4 2 0 (-1092860013182976), PolyRefl.mkT 20 12 6 0 0 (-102435754344448), PolyRefl.mkT 22 10 0 6 0 (753419597905920), PolyRefl.mkT 22 10 2 4 0 (-1130129396858880), PolyRefl.mkT 22 10 4 2 0 (423798523822080), PolyRefl.mkT 22 10 6 0 0 (33995568971776), PolyRefl.mkT 24 8 0 6 0 (-164702814470144), PolyRefl.mkT 24 8 2 4 0 (247054221705216), PolyRefl.mkT 24 8 4 2 0 (-92645333139456), PolyRefl.mkT 24 8 6 0 0 (-6783531745280), PolyRefl.mkT 26 6 0 6 0 (21029359452160), PolyRefl.mkT 26 6 2 4 0 (-31544039178240), PolyRefl.mkT 26 6 4 2 0 (11829014691840), PolyRefl.mkT 26 6 6 0 0 (808167931904), PolyRefl.mkT 28 4 0 6 0 (-1440038780928), PolyRefl.mkT 28 4 2 4 0 (2160058171392), PolyRefl.mkT 28 4 4 2 0 (-810021814272), PolyRefl.mkT 28 4 6 0 0 (-52961476608), PolyRefl.mkT 30 2 0 6 0 (34653339648), PolyRefl.mkT 30 2 2 4 0 (-51980009472), PolyRefl.mkT 30 2 4 2 0 (19492503552), PolyRefl.mkT 30 2 6 0 0 (1443889152), PolyRefl.mkT 32 0 0 6 0 (764411904), PolyRefl.mkT 32 0 2 4 0 (-1146617856), PolyRefl.mkT 32 0 4 2 0 (429981696)]
def cp287_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 1 3 (16), PolyRefl.mkT 0 2 0 3 1 (-16), PolyRefl.mkT 1 1 0 0 4 (-8), PolyRefl.mkT 1 1 0 2 2 (48), PolyRefl.mkT 1 1 0 4 0 (-8), PolyRefl.mkT 2 0 0 1 3 (16), PolyRefl.mkT 2 0 0 3 1 (-16)]
def cp288_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 1 1 (16), PolyRefl.mkT 1 1 0 0 2 (-8), PolyRefl.mkT 1 1 0 2 0 (56), PolyRefl.mkT 1 1 2 0 0 (-8), PolyRefl.mkT 2 0 0 1 1 (16)]
def cp289_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 102 32 0 0 (5), PolyRefl.mkT 4 100 32 0 0 (-570), PolyRefl.mkT 6 98 32 0 0 (27053), PolyRefl.mkT 8 96 32 0 0 (-634032), PolyRefl.mkT 10 94 32 0 0 (3949932), PolyRefl.mkT 12 92 32 0 0 (214943640), PolyRefl.mkT 14 90 32 0 0 (-8051823588), PolyRefl.mkT 16 88 32 0 0 (152174169968), PolyRefl.mkT 18 86 32 0 0 (-1872632314878), PolyRefl.mkT 20 84 32 0 0 (15167790716076), PolyRefl.mkT 22 82 32 0 0 (-63511184972318), PolyRefl.mkT 24 80 32 0 0 (-226719122787344), PolyRefl.mkT 26 78 32 0 0 (6514183138742060), PolyRefl.mkT 28 76 32 0 0 (-62207471905280648), PolyRefl.mkT 30 74 32 0 0 (381920061888914620), PolyRefl.mkT 32 72 32 0 0 (-1583940794377151920), PolyRefl.mkT 34 70 32 0 0 (3580372540877169107), PolyRefl.mkT 36 68 32 0 0 (5668511552433940666), PolyRefl.mkT 38 66 32 0 0 (-102009115091530186725), PolyRefl.mkT 40 64 32 0 0 (582051259293207404064), PolyRefl.mkT 42 62 32 0 0 (-2281799154080008273512), PolyRefl.mkT 44 60 32 0 0 (6936237266827215543856), PolyRefl.mkT 46 58 32 0 0 (-17066025246488534587528), PolyRefl.mkT 48 56 32 0 0 (34658036707314251906400), PolyRefl.mkT 50 54 32 0 0 (-58668301635473835924804), PolyRefl.mkT 52 52 32 0 0 (83187078140679439625448), PolyRefl.mkT 54 50 32 0 0 (-99009924811210202300228), PolyRefl.mkT 56 48 32 0 0 (98963505610473607084256), PolyRefl.mkT 58 46 32 0 0 (-83028739110023946836488), PolyRefl.mkT 60 44 32 0 0 (58410206547088040625328), PolyRefl.mkT 62 42 32 0 0 (-34409209197026728701928), PolyRefl.mkT 64 40 32 0 0 (16947066346007764753312), PolyRefl.mkT 66 38 32 0 0 (-6964332848856184325765), PolyRefl.mkT 68 36 32 0 0 (2381347772660895658394), PolyRefl.mkT 70 34 32 0 0 (-674687455071052931533), PolyRefl.mkT 72 32 32 0 0 (157334178847959495568), PolyRefl.mkT 74 30 32 0 0 (-29866513674669544580), PolyRefl.mkT 76 28 32 0 0 (4526203644451661880), PolyRefl.mkT 78 26 32 0 0 (-526993691886789140), PolyRefl.mkT 80 24 32 0 0 (42868161786915376), PolyRefl.mkT 82 22 32 0 0 (-1596539209922206), PolyRefl.mkT 84 20 32 0 0 (-146185713039060), PolyRefl.mkT 86 18 32 0 0 (31996243523970), PolyRefl.mkT 88 16 32 0 0 (-3036209861072), PolyRefl.mkT 90 14 32 0 0 (180104130652), PolyRefl.mkT 92 12 32 0 0 (-6614102056), PolyRefl.mkT 94 10 32 0 0 (109457836), PolyRefl.mkT 96 8 32 0 0 (2085648), PolyRefl.mkT 98 6 32 0 0 (-156531), PolyRefl.mkT 100 4 32 0 0 (3366), PolyRefl.mkT 102 2 32 0 0 (-27)]
def cp290_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 4 0 (65536), PolyRefl.mkT 0 24 2 2 0 (-65536), PolyRefl.mkT 0 24 4 0 0 (8192), PolyRefl.mkT 2 22 0 4 0 (-1310720), PolyRefl.mkT 2 22 2 2 0 (1310720), PolyRefl.mkT 2 22 4 0 0 (-163840), PolyRefl.mkT 4 20 0 4 0 (6422528), PolyRefl.mkT 4 20 2 2 0 (-6422528), PolyRefl.mkT 4 20 4 0 0 (802816), PolyRefl.mkT 6 18 0 4 0 (39583744), PolyRefl.mkT 6 18 2 2 0 (-39583744), PolyRefl.mkT 6 18 4 0 0 (4947968), PolyRefl.mkT 8 16 0 4 0 (-563150848), PolyRefl.mkT 8 16 2 2 0 (563150848), PolyRefl.mkT 8 16 4 0 0 (-70393856), PolyRefl.mkT 10 14 0 4 0 (2505572352), PolyRefl.mkT 10 14 2 2 0 (-2505572352), PolyRefl.mkT 10 14 4 0 0 (313196544), PolyRefl.mkT 12 12 0 4 0 (-5379457024), PolyRefl.mkT 12 12 2 2 0 (5379457024), PolyRefl.mkT 12 12 4 0 0 (-672432128), PolyRefl.mkT 14 10 0 4 0 (5680660480), PolyRefl.mkT 14 10 2 2 0 (-5680660480), PolyRefl.mkT 14 10 4 0 0 (710082560), PolyRefl.mkT 16 8 0 4 0 (-2475753472), PolyRefl.mkT 16 8 2 2 0 (2475753472), PolyRefl.mkT 16 8 4 0 0 (-309469184), PolyRefl.mkT 18 6 0 4 0 (498860032), PolyRefl.mkT 18 6 2 2 0 (-498860032), PolyRefl.mkT 18 6 4 0 0 (62357504), PolyRefl.mkT 20 4 0 4 0 (-43909120), PolyRefl.mkT 20 4 2 2 0 (43909120), PolyRefl.mkT 20 4 4 0 0 (-5488640), PolyRefl.mkT 22 2 0 4 0 (786432), PolyRefl.mkT 22 2 2 2 0 (-786432), PolyRefl.mkT 22 2 4 0 0 (98304), PolyRefl.mkT 24 0 0 4 0 (65536), PolyRefl.mkT 24 0 2 2 0 (-65536), PolyRefl.mkT 24 0 4 0 0 (8192)]
def cp291_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 32 8 4 0 (1), PolyRefl.mkT 0 32 10 2 0 (-1), PolyRefl.mkT 2 30 8 4 0 (-48), PolyRefl.mkT 2 30 10 2 0 (48), PolyRefl.mkT 2 30 12 0 0 (-1), PolyRefl.mkT 4 28 8 4 0 (728), PolyRefl.mkT 4 28 10 2 0 (-728), PolyRefl.mkT 4 28 12 0 0 (2), PolyRefl.mkT 6 26 8 4 0 (-3568), PolyRefl.mkT 6 26 10 2 0 (3568), PolyRefl.mkT 6 26 12 0 0 (493), PolyRefl.mkT 8 24 8 4 0 (-18084), PolyRefl.mkT 8 24 10 2 0 (18084), PolyRefl.mkT 8 24 12 0 0 (-8876), PolyRefl.mkT 10 22 8 4 0 (318352), PolyRefl.mkT 10 22 10 2 0 (-318352), PolyRefl.mkT 10 22 12 0 0 (72935), PolyRefl.mkT 12 20 8 4 0 (-1770904), PolyRefl.mkT 12 20 10 2 0 (1770904), PolyRefl.mkT 12 20 12 0 0 (-342210), PolyRefl.mkT 14 18 8 4 0 (5302480), PolyRefl.mkT 14 18 10 2 0 (-5302480), PolyRefl.mkT 14 18 12 0 0 (977469), PolyRefl.mkT 16 16 8 4 0 (-9289786), PolyRefl.mkT 16 16 10 2 0 (9289786), PolyRefl.mkT 16 16 12 0 0 (-1710696), PolyRefl.mkT 18 14 8 4 0 (9469552), PolyRefl.mkT 18 14 10 2 0 (-9469552), PolyRefl.mkT 18 14 12 0 0 (1767077), PolyRefl.mkT 20 12 8 4 0 (-5367320), PolyRefl.mkT 20 12 10 2 0 (5367320), PolyRefl.mkT 20 12 12 0 0 (-1013666), PolyRefl.mkT 22 10 8 4 0 (1696048), PolyRefl.mkT 22 10 10 2 0 (-1696048), PolyRefl.mkT 22 10 12 0 0 (329423), PolyRefl.mkT 24 8 8 4 0 (-298148), PolyRefl.mkT 24 8 10 2 0 (298148), PolyRefl.mkT 24 8 12 0 0 (-61740), PolyRefl.mkT 26 6 8 4 0 (27184), PolyRefl.mkT 26 6 10 2 0 (-27184), PolyRefl.mkT 26 6 12 0 0 (6517), PolyRefl.mkT 28 4 8 4 0 (-936), PolyRefl.mkT 28 4 10 2 0 (936), PolyRefl.mkT 28 4 12 0 0 (-350), PolyRefl.mkT 30 2 8 4 0 (-16), PolyRefl.mkT 30 2 10 2 0 (16), PolyRefl.mkT 30 2 12 0 0 (7), PolyRefl.mkT 32 0 8 4 0 (1), PolyRefl.mkT 32 0 10 2 0 (-1)]
def cp292_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 96 24 0 0 (1), PolyRefl.mkT 2 94 24 0 0 (-144), PolyRefl.mkT 4 92 24 0 0 (9096), PolyRefl.mkT 6 90 24 0 0 (-330960), PolyRefl.mkT 8 88 24 0 0 (7595220), PolyRefl.mkT 10 86 24 0 0 (-110401488), PolyRefl.mkT 12 84 24 0 0 (871115768), PolyRefl.mkT 14 82 24 0 0 (789485808), PolyRefl.mkT 16 80 24 0 0 (-113643759102), PolyRefl.mkT 18 78 24 0 0 (1459801761296), PolyRefl.mkT 20 76 24 0 0 (-8751908802600), PolyRefl.mkT 22 74 24 0 0 (-530290647984), PolyRefl.mkT 24 72 24 0 0 (512250830318724), PolyRefl.mkT 26 70 24 0 0 (-5027401484809776), PolyRefl.mkT 28 68 24 0 0 (25133079349338792), PolyRefl.mkT 30 66 24 0 0 (-38987259485737712), PolyRefl.mkT 32 64 24 0 0 (-466081003026665745), PolyRefl.mkT 34 62 24 0 0 (4910191200185191008), PolyRefl.mkT 36 60 24 0 0 (-28019785423827745072), PolyRefl.mkT 38 58 24 0 0 (115628040562473402336), PolyRefl.mkT 40 56 24 0 0 (-372715151299533219672), PolyRefl.mkT 42 54 24 0 0 (969009187970312942560), PolyRefl.mkT 44 52 24 0 0 (-2064015088623064653264), PolyRefl.mkT 46 50 24 0 0 (3630347651389785011040), PolyRefl.mkT 48 48 24 0 0 (-5291396204317646371300), PolyRefl.mkT 50 46 24 0 0 (6397043475162625409568), PolyRefl.mkT 52 44 24 0 0 (-6410450853367112508624), PolyRefl.mkT 54 42 24 0 0 (5316737778711596373664), PolyRefl.mkT 56 40 24 0 0 (-3643104620227070438232), PolyRefl.mkT 58 38 24 0 0 (2058810507103535290272), PolyRefl.mkT 60 36 24 0 0 (-958045066887112530992), PolyRefl.mkT 62 34 24 0 0 (366481615789197925920), PolyRefl.mkT 64 32 24 0 0 (-114989002296538853649), PolyRefl.mkT 66 30 24 0 0 (29493591628575242032), PolyRefl.mkT 68 28 24 0 0 (-6150428166340559832), PolyRefl.mkT 70 26 24 0 0 (1033686412325851632), PolyRefl.mkT 72 24 24 0 0 (-138043852244005244), PolyRefl.mkT 74 22 24 0 0 (14303130472805616), PolyRefl.mkT 76 20 24 0 0 (-1100388397943976), PolyRefl.mkT 78 18 24 0 0 (56933025867952), PolyRefl.mkT 80 16 24 0 0 (-1359787251198), PolyRefl.mkT 82 14 24 0 0 (-47121459504), PolyRefl.mkT 84 12 24 0 0 (5106028152), PolyRefl.mkT 86 10 24 0 0 (-140130288), PolyRefl.mkT 88 8 24 0 0 (-1594668), PolyRefl.mkT 90 6 24 0 0 (167312), PolyRefl.mkT 92 4 24 0 0 (-2040), PolyRefl.mkT 94 2 24 0 0 (-48), PolyRefl.mkT 96 0 24 0 0 (1)]
def cp293_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 72 16 4 0 (16), PolyRefl.mkT 0 72 18 2 0 (-16), PolyRefl.mkT 0 72 20 0 0 (4), PolyRefl.mkT 2 70 16 4 0 (-1728), PolyRefl.mkT 2 70 18 2 0 (1728), PolyRefl.mkT 2 70 20 0 0 (-416), PolyRefl.mkT 4 68 16 4 0 (79200), PolyRefl.mkT 4 68 18 2 0 (-79200), PolyRefl.mkT 4 68 20 0 0 (18808), PolyRefl.mkT 6 66 16 4 0 (-2012864), PolyRefl.mkT 6 66 18 2 0 (2012864), PolyRefl.mkT 6 66 20 0 0 (-487712), PolyRefl.mkT 8 64 16 4 0 (30474640), PolyRefl.mkT 8 64 18 2 0 (-30474640), PolyRefl.mkT 8 64 20 0 0 (7964772), PolyRefl.mkT 10 62 16 4 0 (-253287936), PolyRefl.mkT 10 62 18 2 0 (253287936), PolyRefl.mkT 10 62 20 0 0 (-82295552), PolyRefl.mkT 12 60 16 4 0 (301963520), PolyRefl.mkT 12 60 18 2 0 (-301963520), PolyRefl.mkT 12 60 20 0 0 (457666368), PolyRefl.mkT 14 58 16 4 0 (19652172288), PolyRefl.mkT 14 58 18 2 0 (-19652172288), PolyRefl.mkT 14 58 20 0 0 (464596224), PolyRefl.mkT 16 56 16 4 0 (-257711364288), PolyRefl.mkT 16 56 18 2 0 (257711364288), PolyRefl.mkT 16 56 20 0 0 (-34353144368), PolyRefl.mkT 18 54 16 4 0 (1605024360192), PolyRefl.mkT 18 54 18 2 0 (-1605024360192), PolyRefl.mkT 18 54 20 0 0 (340516916864), PolyRefl.mkT 20 52 16 4 0 (-3283072164224), PolyRefl.mkT 20 52 18 2 0 (3283072164224), PolyRefl.mkT 20 52 20 0 0 (-1909291035360), PolyRefl.mkT 22 50 16 4 0 (-34624762937600), PolyRefl.mkT 22 50 18 2 0 (34624762937600), PolyRefl.mkT 22 50 20 0 0 (6141952157824), PolyRefl.mkT 24 48 16 4 0 (413016918851648), PolyRefl.mkT 24 48 18 2 0 (-413016918851648), PolyRefl.mkT 24 48 20 0 0 (-3624829898736), PolyRefl.mkT 26 46 16 4 0 (-2475005208664576), PolyRefl.mkT 26 46 18 2 0 (2475005208664576), PolyRefl.mkT 26 46 20 0 0 (-78305261450496), PolyRefl.mkT 28 44 16 4 0 (10232499639144192), PolyRefl.mkT 28 44 18 2 0 (-10232499639144192), PolyRefl.mkT 28 44 20 0 0 (498763294269120), PolyRefl.mkT 30 42 16 4 0 (-31594951905509888), PolyRefl.mkT 30 42 18 2 0 (31594951905509888), PolyRefl.mkT 30 42 20 0 0 (-1809217636488448), PolyRefl.mkT 32 40 16 4 0 (75115168889591520), PolyRefl.mkT 32 40 18 2 0 (-75115168889591520), PolyRefl.mkT 32 40 20 0 0 (4627473918386616), PolyRefl.mkT 34 38 16 4 0 (-139247874110248064), PolyRefl.mkT 34 38 18 2 0 (139247874110248064), PolyRefl.mkT 34 38 20 0 0 (-8857095077424576), PolyRefl.mkT 36 36 16 4 0 (202082120669759552), PolyRefl.mkT 36 36 18 2 0 (-202082120669759552), PolyRefl.mkT 36 36 20 0 0 (12975387882063056), PolyRefl.mkT 38 34 16 4 0 (-229432447115066496), PolyRefl.mkT 38 34 18 2 0 (229432447115066496), PolyRefl.mkT 38 34 20 0 0 (-14674025247723200), PolyRefl.mkT 40 32 16 4 0 (203210245831218912), PolyRefl.mkT 40 32 18 2 0 (-203210245831218912), PolyRefl.mkT 40 32 20 0 0 (12837946364485048), PolyRefl.mkT 42 30 16 4 0 (-140001275652465152), PolyRefl.mkT 42 30 18 2 0 (140001275652465152), PolyRefl.mkT 42 30 20 0 0 (-8679711222197504), PolyRefl.mkT 44 28 16 4 0 (74903437325422336), PolyRefl.mkT 44 28 18 2 0 (-74903437325422336), PolyRefl.mkT 44 28 20 0 0 (4522797795887808), PolyRefl.mkT 46 26 16 4 0 (-31106703670786560), PolyRefl.mkT 46 26 18 2 0 (31106703670786560), PolyRefl.mkT 46 26 20 0 0 (-1808635884012800), PolyRefl.mkT 48 24 16 4 0 (10021805738229824), PolyRefl.mkT 48 24 18 2 0 (-10021805738229824), PolyRefl.mkT 48 24 20 0 0 (550930346593296), PolyRefl.mkT 50 22 16 4 0 (-2498701955870976), PolyRefl.mkT 50 22 18 2 0 (2498701955870976), PolyRefl.mkT 50 22 20 0 0 (-125959909976448), PolyRefl.mkT 52 20 16 4 0 (479025991605888), PolyRefl.mkT 52 20 18 2 0 (-479025991605888), PolyRefl.mkT 52 20 20 0 0 (20939483687200), PolyRefl.mkT 54 18 16 4 0 (-69675517651200), PolyRefl.mkT 54 18 18 2 0 (69675517651200), PolyRefl.mkT 54 18 20 0 0 (-2337123022720), PolyRefl.mkT 56 16 16 4 0 (7494907045696), PolyRefl.mkT 56 16 18 2 0 (-7494907045696), PolyRefl.mkT 56 16 20 0 0 (128173238736), PolyRefl.mkT 58 14 16 4 0 (-566628861440), PolyRefl.mkT 58 14 18 2 0 (566628861440), PolyRefl.mkT 58 14 20 0 0 (7276588288), PolyRefl.mkT 60 12 16 4 0 (26626005248), PolyRefl.mkT 60 12 18 2 0 (-26626005248), PolyRefl.mkT 60 12 20 0 0 (-2220291264), PolyRefl.mkT 62 10 16 4 0 (-442416640), PolyRefl.mkT 62 10 18 2 0 (442416640), PolyRefl.mkT 62 10 20 0 0 (215629056), PolyRefl.mkT 64 8 16 4 0 (-26607216), PolyRefl.mkT 64 8 18 2 0 (26607216), PolyRefl.mkT 64 8 20 0 0 (-10931100), PolyRefl.mkT 66 6 16 4 0 (1639744), PolyRefl.mkT 66 6 18 2 0 (-1639744), PolyRefl.mkT 66 6 20 0 0 (227936), PolyRefl.mkT 68 4 16 4 0 (-19104), PolyRefl.mkT 68 4 18 2 0 (19104), PolyRefl.mkT 68 4 20 0 0 (3960), PolyRefl.mkT 70 2 16 4 0 (-704), PolyRefl.mkT 70 2 18 2 0 (704), PolyRefl.mkT 70 2 20 0 0 (-288), PolyRefl.mkT 72 0 16 4 0 (16), PolyRefl.mkT 72 0 18 2 0 (-16), PolyRefl.mkT 72 0 20 0 0 (4)]
def cp294_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 12 0 0 (1), PolyRefl.mkT 2 22 12 0 0 (46), PolyRefl.mkT 4 20 12 0 0 (-1196), PolyRefl.mkT 6 18 12 0 0 (10594), PolyRefl.mkT 8 16 12 0 0 (-47611), PolyRefl.mkT 10 14 12 0 0 (119820), PolyRefl.mkT 12 12 12 0 0 (-166032), PolyRefl.mkT 14 10 12 0 0 (119108), PolyRefl.mkT 16 8 12 0 0 (-48197), PolyRefl.mkT 18 6 12 0 0 (10470), PolyRefl.mkT 20 4 12 0 0 (-1156), PolyRefl.mkT 22 2 12 0 0 (58), PolyRefl.mkT 24 0 12 0 0 (-1)]
def cp295_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 6 (2), PolyRefl.mkT 0 2 0 2 4 (-66), PolyRefl.mkT 0 2 0 4 2 (54), PolyRefl.mkT 0 2 0 6 0 (-6), PolyRefl.mkT 2 0 0 0 6 (-6), PolyRefl.mkT 2 0 0 2 4 (54), PolyRefl.mkT 2 0 0 4 2 (-66), PolyRefl.mkT 2 0 0 6 0 (2)]
def cp296_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 4 (2), PolyRefl.mkT 0 2 0 2 2 (-68), PolyRefl.mkT 0 2 0 4 0 (122), PolyRefl.mkT 0 2 2 0 2 (2), PolyRefl.mkT 0 2 2 2 0 (-70), PolyRefl.mkT 0 2 4 0 0 (2), PolyRefl.mkT 2 0 0 0 4 (-6), PolyRefl.mkT 2 0 0 2 2 (60), PolyRefl.mkT 2 0 0 4 0 (-126), PolyRefl.mkT 2 0 2 0 2 (-6), PolyRefl.mkT 2 0 2 2 0 (66), PolyRefl.mkT 2 0 4 0 0 (-6)]
def cp297_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 6 0 (-64), PolyRefl.mkT 0 2 2 4 0 (96), PolyRefl.mkT 0 2 4 2 0 (-36), PolyRefl.mkT 0 2 6 0 0 (1), PolyRefl.mkT 2 0 0 6 0 (64), PolyRefl.mkT 2 0 2 4 0 (-96), PolyRefl.mkT 2 0 4 2 0 (36), PolyRefl.mkT 2 0 6 0 0 (-3)]
def cp298_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (256), PolyRefl.mkT 2 6 0 0 0 (-3072), PolyRefl.mkT 4 4 0 0 0 (9728), PolyRefl.mkT 6 2 0 0 0 (-3072), PolyRefl.mkT 8 0 0 0 0 (256)]
def cp299_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 2 0 (-1024), PolyRefl.mkT 0 6 2 0 0 (256), PolyRefl.mkT 2 4 0 2 0 (7168), PolyRefl.mkT 2 4 2 0 0 (-3840), PolyRefl.mkT 4 2 0 2 0 (-7168), PolyRefl.mkT 4 2 2 0 0 (3840), PolyRefl.mkT 6 0 0 2 0 (1024), PolyRefl.mkT 6 0 2 0 0 (-256)]
def cp300_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 4 2 0 (2), PolyRefl.mkT 0 10 6 0 0 (-2), PolyRefl.mkT 2 8 4 2 0 (-58), PolyRefl.mkT 2 8 6 0 0 (37), PolyRefl.mkT 4 6 4 2 0 (196), PolyRefl.mkT 4 6 6 0 0 (-108), PolyRefl.mkT 6 4 4 2 0 (-196), PolyRefl.mkT 6 4 6 0 0 (82), PolyRefl.mkT 8 2 4 2 0 (58), PolyRefl.mkT 8 2 6 0 0 (-26), PolyRefl.mkT 10 0 4 2 0 (-2), PolyRefl.mkT 10 0 6 0 0 (1)]
def cp301_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 20 8 0 0 (4), PolyRefl.mkT 2 18 8 0 0 (-232), PolyRefl.mkT 4 16 8 0 0 (4148), PolyRefl.mkT 6 14 8 0 0 (-23520), PolyRefl.mkT 8 12 8 0 0 (61384), PolyRefl.mkT 10 10 8 0 0 (-83568), PolyRefl.mkT 12 8 8 0 0 (61384), PolyRefl.mkT 14 6 8 0 0 (-23520), PolyRefl.mkT 16 4 8 0 0 (4148), PolyRefl.mkT 18 2 8 0 0 (-232), PolyRefl.mkT 20 0 8 0 0 (4)]
def cp302_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 14 4 2 0 (32), PolyRefl.mkT 0 14 6 0 0 (-8), PolyRefl.mkT 2 12 4 2 0 (-1120), PolyRefl.mkT 2 12 6 0 0 (552), PolyRefl.mkT 4 10 4 2 0 (8736), PolyRefl.mkT 4 10 6 0 0 (-3752), PolyRefl.mkT 6 8 4 2 0 (-22880), PolyRefl.mkT 6 8 6 0 0 (10056), PolyRefl.mkT 8 6 4 2 0 (22880), PolyRefl.mkT 8 6 6 0 0 (-12312), PolyRefl.mkT 10 4 4 2 0 (-8736), PolyRefl.mkT 10 4 6 0 0 (5240), PolyRefl.mkT 12 2 4 2 0 (1120), PolyRefl.mkT 12 2 6 0 0 (-824), PolyRefl.mkT 14 0 4 2 0 (-32), PolyRefl.mkT 14 0 6 0 0 (24)]
def cp303_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 8 0 0 (-1), PolyRefl.mkT 2 8 8 0 0 (4), PolyRefl.mkT 4 6 8 0 0 (-12), PolyRefl.mkT 6 4 8 0 0 (26), PolyRefl.mkT 8 2 8 0 0 (-19), PolyRefl.mkT 10 0 8 0 0 (2)]
def cp304_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 4 (4), PolyRefl.mkT 0 2 0 2 2 (-24), PolyRefl.mkT 0 2 0 4 0 (4), PolyRefl.mkT 2 0 0 0 4 (-8), PolyRefl.mkT 2 0 0 2 2 (16), PolyRefl.mkT 2 0 0 4 0 (-8)]
def cp305_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 2 (4), PolyRefl.mkT 0 2 0 2 0 (-28), PolyRefl.mkT 0 2 2 0 0 (4), PolyRefl.mkT 2 0 0 0 2 (-8), PolyRefl.mkT 2 0 0 2 0 (24), PolyRefl.mkT 2 0 2 0 0 (-8)]
def cp306_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 4 0 (8), PolyRefl.mkT 0 2 2 2 0 (-8), PolyRefl.mkT 0 2 4 0 0 (1), PolyRefl.mkT 2 0 0 4 0 (-8), PolyRefl.mkT 2 0 2 2 0 (8), PolyRefl.mkT 2 0 4 0 0 (-2)]
def cp307_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (512), PolyRefl.mkT 2 4 0 0 0 (-1536), PolyRefl.mkT 4 2 0 0 0 (1536), PolyRefl.mkT 6 0 0 0 0 (-512)]
def cp308_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 4 0 0 (256), PolyRefl.mkT 2 6 0 4 0 (16384), PolyRefl.mkT 2 6 2 2 0 (-16384), PolyRefl.mkT 4 4 0 4 0 (-32768), PolyRefl.mkT 4 4 2 2 0 (32768), PolyRefl.mkT 4 4 4 0 0 (1536), PolyRefl.mkT 6 2 0 4 0 (16384), PolyRefl.mkT 6 2 2 2 0 (-16384), PolyRefl.mkT 6 2 4 0 0 (-2048), PolyRefl.mkT 8 0 4 0 0 (256)]
def cp309_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 28 12 0 0 (-1), PolyRefl.mkT 2 26 12 0 0 (22), PolyRefl.mkT 4 24 12 0 0 (-267), PolyRefl.mkT 6 22 12 0 0 (3516), PolyRefl.mkT 8 20 12 0 0 (-35097), PolyRefl.mkT 10 18 12 0 0 (199786), PolyRefl.mkT 12 16 12 0 0 (-639515), PolyRefl.mkT 14 14 12 0 0 (1187144), PolyRefl.mkT 16 12 12 0 0 (-1237659), PolyRefl.mkT 18 10 12 0 0 (682250), PolyRefl.mkT 20 8 12 0 0 (-183001), PolyRefl.mkT 22 6 12 0 0 (24380), PolyRefl.mkT 24 4 12 0 0 (-1611), PolyRefl.mkT 26 2 12 0 0 (54), PolyRefl.mkT 28 0 12 0 0 (-1)]
def cp310_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 20 0 0 0 (32768), PolyRefl.mkT 2 18 0 0 0 (-983040), PolyRefl.mkT 4 16 0 0 0 (11960320), PolyRefl.mkT 6 14 0 0 0 (-74711040), PolyRefl.mkT 8 12 0 0 0 (248053760), PolyRefl.mkT 10 10 0 0 0 (-402259968), PolyRefl.mkT 12 8 0 0 0 (248053760), PolyRefl.mkT 14 6 0 0 0 (-74711040), PolyRefl.mkT 16 4 0 0 0 (11960320), PolyRefl.mkT 18 2 0 0 0 (-983040), PolyRefl.mkT 20 0 0 0 0 (32768)]
def cp311_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 8 0 (1048576), PolyRefl.mkT 0 24 2 6 0 (-2097152), PolyRefl.mkT 0 24 4 4 0 (1310720), PolyRefl.mkT 0 24 6 2 0 (-262144), PolyRefl.mkT 0 24 8 0 0 (4096), PolyRefl.mkT 2 22 0 8 0 (-20971520), PolyRefl.mkT 2 22 2 6 0 (41943040), PolyRefl.mkT 2 22 4 4 0 (-25690112), PolyRefl.mkT 2 22 6 2 0 (4718592), PolyRefl.mkT 2 22 8 0 0 (-16384), PolyRefl.mkT 4 20 0 8 0 (102760448), PolyRefl.mkT 4 20 2 6 0 (-205520896), PolyRefl.mkT 4 20 4 4 0 (121110528), PolyRefl.mkT 4 20 6 2 0 (-18350080), PolyRefl.mkT 4 20 8 0 0 (-253952), PolyRefl.mkT 6 18 0 8 0 (633339904), PolyRefl.mkT 6 18 2 6 0 (-1266679808), PolyRefl.mkT 6 18 4 4 0 (798490624), PolyRefl.mkT 6 18 6 2 0 (-165150720), PolyRefl.mkT 6 18 8 0 0 (1228800), PolyRefl.mkT 8 16 0 8 0 (-9010413568), PolyRefl.mkT 8 16 2 6 0 (18020827136), PolyRefl.mkT 8 16 4 4 0 (-10898112512), PolyRefl.mkT 8 16 6 2 0 (1887698944), PolyRefl.mkT 8 16 8 0 0 (978944), PolyRefl.mkT 10 14 0 8 0 (40089157632), PolyRefl.mkT 10 14 2 6 0 (-80178315264), PolyRefl.mkT 10 14 4 4 0 (47788851200), PolyRefl.mkT 10 14 6 2 0 (-7699693568), PolyRefl.mkT 10 14 8 0 0 (-5799936), PolyRefl.mkT 12 12 0 8 0 (-86071312384), PolyRefl.mkT 12 12 2 6 0 (172142624768), PolyRefl.mkT 12 12 4 4 0 (-101845041152), PolyRefl.mkT 12 12 6 2 0 (15773728768), PolyRefl.mkT 12 12 8 0 0 (-2506752), PolyRefl.mkT 14 10 0 8 0 (90890567680), PolyRefl.mkT 14 10 2 6 0 (-181781135360), PolyRefl.mkT 14 10 4 4 0 (107364745216), PolyRefl.mkT 14 10 6 2 0 (-16474177536), PolyRefl.mkT 14 10 8 0 0 (12288000), PolyRefl.mkT 16 8 0 8 0 (-39612055552), PolyRefl.mkT 16 8 2 6 0 (79224111104), PolyRefl.mkT 16 8 4 4 0 (-47304671232), PolyRefl.mkT 16 8 6 2 0 (7692615680), PolyRefl.mkT 16 8 8 0 0 (11464704), PolyRefl.mkT 18 6 0 8 0 (7981760512), PolyRefl.mkT 18 6 2 6 0 (-15963521024), PolyRefl.mkT 18 6 4 4 0 (9682026496), PolyRefl.mkT 18 6 6 2 0 (-1700265984), PolyRefl.mkT 18 6 8 0 0 (573440), PolyRefl.mkT 20 4 0 8 0 (-702545920), PolyRefl.mkT 20 4 2 6 0 (1405091840), PolyRefl.mkT 20 4 4 4 0 (-868745216), PolyRefl.mkT 20 4 6 2 0 (166199296), PolyRefl.mkT 20 4 8 0 0 (-1302528), PolyRefl.mkT 22 2 0 8 0 (12582912), PolyRefl.mkT 22 2 2 6 0 (-25165824), PolyRefl.mkT 22 2 4 4 0 (16252928), PolyRefl.mkT 22 2 6 2 0 (-3670016), PolyRefl.mkT 22 2 8 0 0 (114688), PolyRefl.mkT 24 0 0 8 0 (1048576), PolyRefl.mkT 24 0 2 6 0 (-2097152), PolyRefl.mkT 24 0 4 4 0 (1310720), PolyRefl.mkT 24 0 6 2 0 (-262144), PolyRefl.mkT 24 0 8 0 0 (4096)]
def cp312_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 26 20 0 0 (-3), PolyRefl.mkT 4 24 20 0 0 (76), PolyRefl.mkT 6 22 20 0 0 (-790), PolyRefl.mkT 8 20 20 0 0 (4380), PolyRefl.mkT 10 18 20 0 0 (-14221), PolyRefl.mkT 12 16 20 0 0 (28312), PolyRefl.mkT 14 14 20 0 0 (-35508), PolyRefl.mkT 16 12 20 0 0 (28312), PolyRefl.mkT 18 10 20 0 0 (-14221), PolyRefl.mkT 20 8 20 0 0 (4380), PolyRefl.mkT 22 6 20 0 0 (-790), PolyRefl.mkT 24 4 20 0 0 (76), PolyRefl.mkT 26 2 20 0 0 (-3)]
def cp313_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 1 3 (-8), PolyRefl.mkT 0 2 0 3 1 (-8), PolyRefl.mkT 1 1 0 0 4 (4), PolyRefl.mkT 1 1 0 2 2 (-56), PolyRefl.mkT 1 1 0 4 0 (4), PolyRefl.mkT 2 0 0 1 3 (-8), PolyRefl.mkT 2 0 0 3 1 (-8)]
def cp314_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 1 1 (-8), PolyRefl.mkT 1 1 0 0 2 (4), PolyRefl.mkT 1 1 0 2 0 (-60), PolyRefl.mkT 1 1 2 0 0 (4), PolyRefl.mkT 2 0 0 1 1 (-8)]
def cp315_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 1 3 (16), PolyRefl.mkT 0 2 0 3 1 (-16), PolyRefl.mkT 1 1 0 0 4 (-4), PolyRefl.mkT 1 1 0 2 2 (-8), PolyRefl.mkT 1 1 0 4 0 (-4), PolyRefl.mkT 2 0 0 1 3 (-16), PolyRefl.mkT 2 0 0 3 1 (16)]
def cp316_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 1 1 (16), PolyRefl.mkT 1 1 0 0 2 (-4), PolyRefl.mkT 1 1 0 2 0 (-4), PolyRefl.mkT 1 1 2 0 0 (-4), PolyRefl.mkT 2 0 0 1 1 (-16)]
def cp317_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 3 1 (-8), PolyRefl.mkT 0 2 2 1 1 (4), PolyRefl.mkT 1 1 4 0 0 (-1), PolyRefl.mkT 2 0 0 3 1 (8), PolyRefl.mkT 2 0 2 1 1 (-4)]
def cp318_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 6 0 (64), PolyRefl.mkT 0 4 2 4 0 (-64), PolyRefl.mkT 0 4 4 2 0 (16), PolyRefl.mkT 2 2 0 6 0 (-128), PolyRefl.mkT 2 2 2 4 0 (128), PolyRefl.mkT 2 2 4 2 0 (-32), PolyRefl.mkT 4 0 0 6 0 (64), PolyRefl.mkT 4 0 2 4 0 (-64), PolyRefl.mkT 4 0 4 2 0 (16)]
def cp319_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 3 1 (-8), PolyRefl.mkT 0 2 2 1 1 (4), PolyRefl.mkT 1 1 4 0 0 (1), PolyRefl.mkT 2 0 0 3 1 (8), PolyRefl.mkT 2 0 2 1 1 (-4)]
def cp320_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 8 0 (64), PolyRefl.mkT 0 4 2 6 0 (-128), PolyRefl.mkT 0 4 4 4 0 (80), PolyRefl.mkT 0 4 6 2 0 (-16), PolyRefl.mkT 2 2 0 8 0 (-128), PolyRefl.mkT 2 2 2 6 0 (256), PolyRefl.mkT 2 2 4 4 0 (-160), PolyRefl.mkT 2 2 6 2 0 (32), PolyRefl.mkT 2 2 8 0 0 (1), PolyRefl.mkT 4 0 0 8 0 (64), PolyRefl.mkT 4 0 2 6 0 (-128), PolyRefl.mkT 4 0 4 4 0 (80), PolyRefl.mkT 4 0 6 2 0 (-16)]
def cp321_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 0 (64), PolyRefl.mkT 2 2 0 0 0 (-128), PolyRefl.mkT 4 0 0 0 0 (64)]
def cp322_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 2 0 0 0 (256)]
def cp323_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 4 4 0 (4), PolyRefl.mkT 0 8 6 2 0 (-4), PolyRefl.mkT 2 6 4 4 0 (-32), PolyRefl.mkT 2 6 6 2 0 (32), PolyRefl.mkT 2 6 8 0 0 (1), PolyRefl.mkT 4 4 4 4 0 (56), PolyRefl.mkT 4 4 6 2 0 (-56), PolyRefl.mkT 4 4 8 0 0 (-6), PolyRefl.mkT 6 2 4 4 0 (-32), PolyRefl.mkT 6 2 6 2 0 (32), PolyRefl.mkT 6 2 8 0 0 (1), PolyRefl.mkT 8 0 4 4 0 (4), PolyRefl.mkT 8 0 6 2 0 (-4)]
def cp324_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 12 0 0 (64), PolyRefl.mkT 2 22 12 0 0 (-1536), PolyRefl.mkT 4 20 12 0 0 (14976), PolyRefl.mkT 6 18 12 0 0 (-77312), PolyRefl.mkT 8 16 12 0 0 (234432), PolyRefl.mkT 10 14 12 0 0 (-445440), PolyRefl.mkT 12 12 12 0 0 (549632), PolyRefl.mkT 14 10 12 0 0 (-445440), PolyRefl.mkT 16 8 12 0 0 (234432), PolyRefl.mkT 18 6 12 0 0 (-77312), PolyRefl.mkT 20 4 12 0 0 (14976), PolyRefl.mkT 22 2 12 0 0 (-1536), PolyRefl.mkT 24 0 12 0 0 (64)]
def cp325_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 20 8 4 0 (1024), PolyRefl.mkT 0 20 10 2 0 (-1024), PolyRefl.mkT 0 20 12 0 0 (256), PolyRefl.mkT 2 18 8 4 0 (-18432), PolyRefl.mkT 2 18 10 2 0 (18432), PolyRefl.mkT 2 18 12 0 0 (-4864), PolyRefl.mkT 4 16 8 4 0 (128000), PolyRefl.mkT 4 16 10 2 0 (-128000), PolyRefl.mkT 4 16 12 0 0 (36096), PolyRefl.mkT 6 14 8 4 0 (-450560), PolyRefl.mkT 6 14 10 2 0 (450560), PolyRefl.mkT 6 14 12 0 0 (-136192), PolyRefl.mkT 8 12 8 4 0 (919552), PolyRefl.mkT 8 12 10 2 0 (-919552), PolyRefl.mkT 8 12 12 0 0 (291328), PolyRefl.mkT 10 10 8 4 0 (-1159168), PolyRefl.mkT 10 10 10 2 0 (1159168), PolyRefl.mkT 10 10 12 0 0 (-373248), PolyRefl.mkT 12 8 8 4 0 (919552), PolyRefl.mkT 12 8 10 2 0 (-919552), PolyRefl.mkT 12 8 12 0 0 (291328), PolyRefl.mkT 14 6 8 4 0 (-450560), PolyRefl.mkT 14 6 10 2 0 (450560), PolyRefl.mkT 14 6 12 0 0 (-136192), PolyRefl.mkT 16 4 8 4 0 (128000), PolyRefl.mkT 16 4 10 2 0 (-128000), PolyRefl.mkT 16 4 12 0 0 (36096), PolyRefl.mkT 18 2 8 4 0 (-18432), PolyRefl.mkT 18 2 10 2 0 (18432), PolyRefl.mkT 18 2 12 0 0 (-4864), PolyRefl.mkT 20 0 8 4 0 (1024), PolyRefl.mkT 20 0 10 2 0 (-1024), PolyRefl.mkT 20 0 12 0 0 (256)]
def cp326_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 10 88 32 0 0 (-1), PolyRefl.mkT 12 86 32 0 0 (34), PolyRefl.mkT 14 84 32 0 0 (645), PolyRefl.mkT 16 82 32 0 0 (-27156), PolyRefl.mkT 18 80 32 0 0 (-48287), PolyRefl.mkT 20 78 32 0 0 (6575938), PolyRefl.mkT 22 76 32 0 0 (-49678437), PolyRefl.mkT 24 74 32 0 0 (-150475744), PolyRefl.mkT 26 72 32 0 0 (4789688572), PolyRefl.mkT 28 70 32 0 0 (-38036275224), PolyRefl.mkT 30 68 32 0 0 (174856570004), PolyRefl.mkT 32 66 32 0 0 (-520855283760), PolyRefl.mkT 34 64 32 0 0 (990130293332), PolyRefl.mkT 36 62 32 0 0 (-953142581560), PolyRefl.mkT 38 60 32 0 0 (-535906983204), PolyRefl.mkT 40 58 32 0 0 (3342366074592), PolyRefl.mkT 42 56 32 0 0 (-5087695466078), PolyRefl.mkT 44 54 32 0 0 (2884390772764), PolyRefl.mkT 46 52 32 0 0 (2775787676246), PolyRefl.mkT 48 50 32 0 0 (-7237747747448), PolyRefl.mkT 50 48 32 0 0 (6381370275438), PolyRefl.mkT 52 46 32 0 0 (-1254260777924), PolyRefl.mkT 54 44 32 0 0 (-3403682068646), PolyRefl.mkT 56 42 32 0 0 (4423752774880), PolyRefl.mkT 58 40 32 0 0 (-2564957630452), PolyRefl.mkT 60 38 32 0 0 (349842556936), PolyRefl.mkT 62 36 32 0 0 (737369908292), PolyRefl.mkT 64 34 32 0 0 (-788280364592), PolyRefl.mkT 66 32 32 0 0 (465235612388), PolyRefl.mkT 68 30 32 0 0 (-193252988504), PolyRefl.mkT 70 28 32 0 0 (60131505420), PolyRefl.mkT 72 26 32 0 0 (-14277692896), PolyRefl.mkT 74 24 32 0 0 (2585079895), PolyRefl.mkT 76 22 32 0 0 (-352067630), PolyRefl.mkT 78 20 32 0 0 (35150669), PolyRefl.mkT 80 18 32 0 0 (-2469652), PolyRefl.mkT 82 16 32 0 0 (114169), PolyRefl.mkT 84 14 32 0 0 (-3054), PolyRefl.mkT 86 12 32 0 0 (35)]
def cp327_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 20 4 0 0 (-262144), PolyRefl.mkT 4 18 0 4 0 (67108864), PolyRefl.mkT 4 18 2 2 0 (-67108864), PolyRefl.mkT 4 18 4 0 0 (13369344), PolyRefl.mkT 6 16 0 4 0 (469762048), PolyRefl.mkT 6 16 2 2 0 (-469762048), PolyRefl.mkT 6 16 4 0 0 (113246208), PolyRefl.mkT 8 14 0 4 0 (-2885681152), PolyRefl.mkT 8 14 2 2 0 (2885681152), PolyRefl.mkT 8 14 4 0 0 (-715128832), PolyRefl.mkT 10 12 0 4 0 (5570035712), PolyRefl.mkT 10 12 2 2 0 (-5570035712), PolyRefl.mkT 10 12 4 0 0 (1402470400), PolyRefl.mkT 12 10 0 4 0 (-5167382528), PolyRefl.mkT 12 10 2 2 0 (5167382528), PolyRefl.mkT 12 10 4 0 0 (-1294467072), PolyRefl.mkT 14 8 0 4 0 (2483027968), PolyRefl.mkT 14 8 2 2 0 (-2483027968), PolyRefl.mkT 14 8 4 0 0 (614465536), PolyRefl.mkT 16 6 0 4 0 (-603979776), PolyRefl.mkT 16 6 2 2 0 (603979776), PolyRefl.mkT 16 6 4 0 0 (-150994944), PolyRefl.mkT 18 4 0 4 0 (67108864), PolyRefl.mkT 18 4 2 2 0 (-67108864), PolyRefl.mkT 18 4 4 0 0 (17563648), PolyRefl.mkT 20 2 4 0 0 (-262144)]
def cp328_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 28 8 4 0 (1), PolyRefl.mkT 2 28 10 2 0 (-1), PolyRefl.mkT 4 26 8 4 0 (-15), PolyRefl.mkT 4 26 10 2 0 (15), PolyRefl.mkT 4 26 12 0 0 (1), PolyRefl.mkT 6 24 8 4 0 (-278), PolyRefl.mkT 6 24 10 2 0 (278), PolyRefl.mkT 6 24 12 0 0 (11), PolyRefl.mkT 8 22 8 4 0 (410), PolyRefl.mkT 8 22 10 2 0 (-410), PolyRefl.mkT 8 22 12 0 0 (-585), PolyRefl.mkT 10 20 8 4 0 (1391), PolyRefl.mkT 10 20 10 2 0 (-1391), PolyRefl.mkT 10 20 12 0 0 (3797), PolyRefl.mkT 12 18 8 4 0 (-1041), PolyRefl.mkT 12 18 10 2 0 (1041), PolyRefl.mkT 12 18 12 0 0 (-10982), PolyRefl.mkT 14 16 8 4 0 (-2228), PolyRefl.mkT 14 16 10 2 0 (2228), PolyRefl.mkT 14 16 12 0 0 (17726), PolyRefl.mkT 16 14 8 4 0 (1068), PolyRefl.mkT 16 14 10 2 0 (-1068), PolyRefl.mkT 16 14 12 0 0 (-17314), PolyRefl.mkT 18 12 8 4 0 (1359), PolyRefl.mkT 18 12 10 2 0 (-1359), PolyRefl.mkT 18 12 12 0 0 (10458), PolyRefl.mkT 20 10 8 4 0 (-577), PolyRefl.mkT 20 10 10 2 0 (577), PolyRefl.mkT 20 10 12 0 0 (-3819), PolyRefl.mkT 22 8 8 4 0 (-214), PolyRefl.mkT 22 8 10 2 0 (214), PolyRefl.mkT 22 8 12 0 0 (775), PolyRefl.mkT 24 6 8 4 0 (154), PolyRefl.mkT 24 6 10 2 0 (-154), PolyRefl.mkT 24 6 12 0 0 (-69), PolyRefl.mkT 26 4 8 4 0 (-31), PolyRefl.mkT 26 4 10 2 0 (31), PolyRefl.mkT 26 4 12 0 0 (1), PolyRefl.mkT 28 2 8 4 0 (1), PolyRefl.mkT 28 2 10 2 0 (-1)]
def cp329_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 6 84 24 0 0 (1), PolyRefl.mkT 8 82 24 0 0 (-45), PolyRefl.mkT 10 80 24 0 0 (-159), PolyRefl.mkT 12 78 24 0 0 (22875), PolyRefl.mkT 14 76 24 0 0 (11475), PolyRefl.mkT 16 74 24 0 0 (-4013223), PolyRefl.mkT 18 72 24 0 0 (-12016709), PolyRefl.mkT 20 70 24 0 0 (126956937), PolyRefl.mkT 22 68 24 0 0 (110301156), PolyRefl.mkT 24 66 24 0 0 (-1243468948), PolyRefl.mkT 26 64 24 0 0 (-491614044), PolyRefl.mkT 28 62 24 0 0 (6293061708), PolyRefl.mkT 30 60 24 0 0 (1467289436), PolyRefl.mkT 32 58 24 0 0 (-19510594284), PolyRefl.mkT 34 56 24 0 0 (-3045764292), PolyRefl.mkT 36 54 24 0 0 (40214540052), PolyRefl.mkT 38 52 24 0 0 (3865081470), PolyRefl.mkT 40 50 24 0 0 (-57601767078), PolyRefl.mkT 42 48 24 0 0 (-1576066178), PolyRefl.mkT 44 46 24 0 0 (58600545162), PolyRefl.mkT 46 44 24 0 0 (-3611543862), PolyRefl.mkT 48 42 24 0 0 (-42434095842), PolyRefl.mkT 50 40 24 0 0 (7538365626), PolyRefl.mkT 52 38 24 0 0 (21335664510), PolyRefl.mkT 54 36 24 0 0 (-7059093996), PolyRefl.mkT 56 34 24 0 0 (-6851437572), PolyRefl.mkT 58 32 24 0 0 (3850409556), PolyRefl.mkT 60 30 24 0 0 (1010147036), PolyRefl.mkT 62 28 24 0 0 (-1214306100), PolyRefl.mkT 64 26 24 0 0 (134466660), PolyRefl.mkT 66 24 24 0 0 (179162540), PolyRefl.mkT 68 22 24 0 0 (-78057756), PolyRefl.mkT 70 20 24 0 0 (2752137), PolyRefl.mkT 72 18 24 0 0 (7473259), PolyRefl.mkT 74 16 24 0 0 (-2908887), PolyRefl.mkT 76 14 24 0 0 (553203), PolyRefl.mkT 78 12 24 0 0 (-59077), PolyRefl.mkT 80 10 24 0 0 (3345), PolyRefl.mkT 82 8 24 0 0 (-93), PolyRefl.mkT 84 6 24 0 0 (1)]
def cp330_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 4 64 20 0 0 (1), PolyRefl.mkT 6 62 16 4 0 (256), PolyRefl.mkT 6 62 18 2 0 (-256), PolyRefl.mkT 6 62 20 0 0 (6), PolyRefl.mkT 8 60 16 4 0 (-8192), PolyRefl.mkT 8 60 18 2 0 (8192), PolyRefl.mkT 8 60 20 0 0 (-1725), PolyRefl.mkT 10 58 16 4 0 (-69120), PolyRefl.mkT 10 58 18 2 0 (69120), PolyRefl.mkT 10 58 20 0 0 (556), PolyRefl.mkT 12 56 16 4 0 (2506752), PolyRefl.mkT 12 56 18 2 0 (-2506752), PolyRefl.mkT 12 56 20 0 0 (676509), PolyRefl.mkT 14 54 16 4 0 (12573440), PolyRefl.mkT 14 54 18 2 0 (-12573440), PolyRefl.mkT 14 54 20 0 0 (-1441278), PolyRefl.mkT 16 52 16 4 0 (-101924864), PolyRefl.mkT 16 52 18 2 0 (101924864), PolyRefl.mkT 16 52 20 0 0 (-34371121), PolyRefl.mkT 18 50 16 4 0 (8393728), PolyRefl.mkT 18 50 18 2 0 (-8393728), PolyRefl.mkT 18 50 20 0 0 (329403896), PolyRefl.mkT 20 48 16 4 0 (684457984), PolyRefl.mkT 20 48 18 2 0 (-684457984), PolyRefl.mkT 20 48 20 0 0 (-1393557283), PolyRefl.mkT 22 46 16 4 0 (-477337344), PolyRefl.mkT 22 46 18 2 0 (477337344), PolyRefl.mkT 22 46 20 0 0 (2868148022), PolyRefl.mkT 24 44 16 4 0 (-2086854656), PolyRefl.mkT 24 44 18 2 0 (2086854656), PolyRefl.mkT 24 44 20 0 0 (-1314879737), PolyRefl.mkT 26 42 16 4 0 (2055843328), PolyRefl.mkT 26 42 18 2 0 (-2055843328), PolyRefl.mkT 26 42 20 0 0 (-6370066924), PolyRefl.mkT 28 40 16 4 0 (3493937152), PolyRefl.mkT 28 40 18 2 0 (-3493937152), PolyRefl.mkT 28 40 20 0 0 (13130554969), PolyRefl.mkT 30 38 16 4 0 (-4331226368), PolyRefl.mkT 30 38 18 2 0 (4331226368), PolyRefl.mkT 30 38 20 0 0 (-5896058750), PolyRefl.mkT 32 36 16 4 0 (-3258023936), PolyRefl.mkT 32 36 18 2 0 (3258023936), PolyRefl.mkT 32 36 20 0 0 (-11914146925), PolyRefl.mkT 34 34 16 4 0 (5351512064), PolyRefl.mkT 34 34 18 2 0 (-5351512064), PolyRefl.mkT 34 34 20 0 0 (18937579664), PolyRefl.mkT 36 32 16 4 0 (1331036160), PolyRefl.mkT 36 32 18 2 0 (-1331036160), PolyRefl.mkT 36 32 20 0 0 (-6805055853), PolyRefl.mkT 38 30 16 4 0 (-4005774592), PolyRefl.mkT 38 30 18 2 0 (4005774592), PolyRefl.mkT 38 30 20 0 0 (-8085544222), PolyRefl.mkT 40 28 16 4 0 (346562560), PolyRefl.mkT 40 28 18 2 0 (-346562560), PolyRefl.mkT 40 28 20 0 0 (10615628313), PolyRefl.mkT 42 26 16 4 0 (1706700288), PolyRefl.mkT 42 26 18 2 0 (-1706700288), PolyRefl.mkT 42 26 20 0 0 (-4273393260), PolyRefl.mkT 44 24 16 4 0 (-635387904), PolyRefl.mkT 44 24 18 2 0 (635387904), PolyRefl.mkT 44 24 20 0 0 (-993074617), PolyRefl.mkT 46 22 16 4 0 (-303994624), PolyRefl.mkT 46 22 18 2 0 (303994624), PolyRefl.mkT 46 22 20 0 0 (2068011414), PolyRefl.mkT 48 20 16 4 0 (254853120), PolyRefl.mkT 48 20 18 2 0 (-254853120), PolyRefl.mkT 48 20 20 0 0 (-1199135651), PolyRefl.mkT 50 18 16 4 0 (-31583232), PolyRefl.mkT 50 18 18 2 0 (31583232), PolyRefl.mkT 50 18 20 0 0 (409909240), PolyRefl.mkT 52 16 16 4 0 (-27918336), PolyRefl.mkT 52 16 18 2 0 (27918336), PolyRefl.mkT 52 16 20 0 0 (-91399601), PolyRefl.mkT 54 14 16 4 0 (14605056), PolyRefl.mkT 54 14 18 2 0 (-14605056), PolyRefl.mkT 54 14 20 0 0 (13386210), PolyRefl.mkT 56 12 16 4 0 (-3219456), PolyRefl.mkT 56 12 18 2 0 (3219456), PolyRefl.mkT 56 12 20 0 0 (-1236003), PolyRefl.mkT 58 10 16 4 0 (356864), PolyRefl.mkT 58 10 18 2 0 (-356864), PolyRefl.mkT 58 10 20 0 0 (65452), PolyRefl.mkT 60 8 16 4 0 (-16384), PolyRefl.mkT 60 8 18 2 0 (16384), PolyRefl.mkT 60 8 20 0 0 (-1277), PolyRefl.mkT 62 6 16 4 0 (256), PolyRefl.mkT 62 6 18 2 0 (-256), PolyRefl.mkT 62 6 20 0 0 (-26), PolyRefl.mkT 64 4 20 0 0 (1)]
def cp331_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 28 12 0 0 (-1), PolyRefl.mkT 2 26 12 0 0 (30), PolyRefl.mkT 4 24 12 0 0 (-715), PolyRefl.mkT 6 22 12 0 0 (11500), PolyRefl.mkT 8 20 12 0 0 (-96409), PolyRefl.mkT 10 18 12 0 0 (414018), PolyRefl.mkT 12 16 12 0 0 (-943259), PolyRefl.mkT 14 14 12 0 0 (1262440), PolyRefl.mkT 16 12 12 0 0 (-943259), PolyRefl.mkT 18 10 12 0 0 (414018), PolyRefl.mkT 20 8 12 0 0 (-96409), PolyRefl.mkT 22 6 12 0 0 (11500), PolyRefl.mkT 24 4 12 0 0 (-715), PolyRefl.mkT 26 2 12 0 0 (30), PolyRefl.mkT 28 0 12 0 0 (-1)]
def cp332_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 5 (-24), PolyRefl.mkT 0 4 0 3 3 (80), PolyRefl.mkT 0 4 0 5 1 (-24), PolyRefl.mkT 1 3 0 0 6 (16), PolyRefl.mkT 1 3 0 2 4 (-240), PolyRefl.mkT 1 3 0 4 2 (240), PolyRefl.mkT 1 3 0 6 0 (-16), PolyRefl.mkT 2 2 0 1 5 (-48), PolyRefl.mkT 2 2 0 3 3 (160), PolyRefl.mkT 2 2 0 5 1 (-48), PolyRefl.mkT 3 1 0 0 6 (-16), PolyRefl.mkT 3 1 0 2 4 (240), PolyRefl.mkT 3 1 0 4 2 (-240), PolyRefl.mkT 3 1 0 6 0 (16), PolyRefl.mkT 4 0 0 1 5 (-24), PolyRefl.mkT 4 0 0 3 3 (80), PolyRefl.mkT 4 0 0 5 1 (-24)]
def cp333_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-24), PolyRefl.mkT 0 4 0 3 1 (104), PolyRefl.mkT 0 4 2 1 1 (-24), PolyRefl.mkT 1 3 0 0 4 (16), PolyRefl.mkT 1 3 0 2 2 (-256), PolyRefl.mkT 1 3 0 4 0 (496), PolyRefl.mkT 1 3 2 0 2 (16), PolyRefl.mkT 1 3 2 2 0 (-272), PolyRefl.mkT 1 3 4 0 0 (16), PolyRefl.mkT 2 2 0 1 3 (-48), PolyRefl.mkT 2 2 0 3 1 (208), PolyRefl.mkT 2 2 2 1 1 (-48), PolyRefl.mkT 3 1 0 0 4 (-16), PolyRefl.mkT 3 1 0 2 2 (256), PolyRefl.mkT 3 1 0 4 0 (-496), PolyRefl.mkT 3 1 2 0 2 (-16), PolyRefl.mkT 3 1 2 2 0 (272), PolyRefl.mkT 3 1 4 0 0 (-16), PolyRefl.mkT 4 0 0 1 3 (-24), PolyRefl.mkT 4 0 0 3 1 (104), PolyRefl.mkT 4 0 2 1 1 (-24)]
def cp334_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (-16), PolyRefl.mkT 0 4 2 3 1 (16), PolyRefl.mkT 0 4 4 1 1 (-3), PolyRefl.mkT 1 3 0 6 0 (-64), PolyRefl.mkT 1 3 2 4 0 (96), PolyRefl.mkT 1 3 4 2 0 (-36), PolyRefl.mkT 1 3 6 0 0 (2), PolyRefl.mkT 2 2 0 5 1 (-32), PolyRefl.mkT 2 2 2 3 1 (32), PolyRefl.mkT 2 2 4 1 1 (-6), PolyRefl.mkT 3 1 0 6 0 (64), PolyRefl.mkT 3 1 2 4 0 (-96), PolyRefl.mkT 3 1 4 2 0 (36), PolyRefl.mkT 3 1 6 0 0 (-2), PolyRefl.mkT 4 0 0 5 1 (-16), PolyRefl.mkT 4 0 2 3 1 (16), PolyRefl.mkT 4 0 4 1 1 (-3)]
def cp335_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 10 0 (256), PolyRefl.mkT 0 8 2 8 0 (-512), PolyRefl.mkT 0 8 4 6 0 (352), PolyRefl.mkT 0 8 6 4 0 (-96), PolyRefl.mkT 0 8 8 2 0 (9), PolyRefl.mkT 2 6 0 10 0 (1024), PolyRefl.mkT 2 6 2 8 0 (-2048), PolyRefl.mkT 2 6 4 6 0 (1408), PolyRefl.mkT 2 6 6 4 0 (-384), PolyRefl.mkT 2 6 8 2 0 (36), PolyRefl.mkT 4 4 0 10 0 (1536), PolyRefl.mkT 4 4 2 8 0 (-3072), PolyRefl.mkT 4 4 4 6 0 (2112), PolyRefl.mkT 4 4 6 4 0 (-576), PolyRefl.mkT 4 4 8 2 0 (54), PolyRefl.mkT 6 2 0 10 0 (1024), PolyRefl.mkT 6 2 2 8 0 (-2048), PolyRefl.mkT 6 2 4 6 0 (1408), PolyRefl.mkT 6 2 6 4 0 (-384), PolyRefl.mkT 6 2 8 2 0 (36), PolyRefl.mkT 8 0 0 10 0 (256), PolyRefl.mkT 8 0 2 8 0 (-512), PolyRefl.mkT 8 0 4 6 0 (352), PolyRefl.mkT 8 0 6 4 0 (-96), PolyRefl.mkT 8 0 8 2 0 (9)]
def cp336_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (-16), PolyRefl.mkT 0 4 2 3 1 (16), PolyRefl.mkT 0 4 4 1 1 (-3), PolyRefl.mkT 1 3 0 6 0 (64), PolyRefl.mkT 1 3 2 4 0 (-96), PolyRefl.mkT 1 3 4 2 0 (36), PolyRefl.mkT 1 3 6 0 0 (-2), PolyRefl.mkT 2 2 0 5 1 (-32), PolyRefl.mkT 2 2 2 3 1 (32), PolyRefl.mkT 2 2 4 1 1 (-6), PolyRefl.mkT 3 1 0 6 0 (-64), PolyRefl.mkT 3 1 2 4 0 (96), PolyRefl.mkT 3 1 4 2 0 (-36), PolyRefl.mkT 3 1 6 0 0 (2), PolyRefl.mkT 4 0 0 5 1 (-16), PolyRefl.mkT 4 0 2 3 1 (16), PolyRefl.mkT 4 0 4 1 1 (-3)]
def cp337_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 12 0 (256), PolyRefl.mkT 0 8 2 10 0 (-768), PolyRefl.mkT 0 8 4 8 0 (864), PolyRefl.mkT 0 8 6 6 0 (-448), PolyRefl.mkT 0 8 8 4 0 (105), PolyRefl.mkT 0 8 10 2 0 (-9), PolyRefl.mkT 2 6 0 12 0 (5120), PolyRefl.mkT 2 6 2 10 0 (-15360), PolyRefl.mkT 2 6 4 8 0 (17280), PolyRefl.mkT 2 6 6 6 0 (-8960), PolyRefl.mkT 2 6 8 4 0 (2100), PolyRefl.mkT 2 6 10 2 0 (-180), PolyRefl.mkT 2 6 12 0 0 (4), PolyRefl.mkT 4 4 0 12 0 (-6656), PolyRefl.mkT 4 4 2 10 0 (19968), PolyRefl.mkT 4 4 4 8 0 (-22464), PolyRefl.mkT 4 4 6 6 0 (11648), PolyRefl.mkT 4 4 8 4 0 (-2730), PolyRefl.mkT 4 4 10 2 0 (234), PolyRefl.mkT 4 4 12 0 0 (-8), PolyRefl.mkT 6 2 0 12 0 (5120), PolyRefl.mkT 6 2 2 10 0 (-15360), PolyRefl.mkT 6 2 4 8 0 (17280), PolyRefl.mkT 6 2 6 6 0 (-8960), PolyRefl.mkT 6 2 8 4 0 (2100), PolyRefl.mkT 6 2 10 2 0 (-180), PolyRefl.mkT 6 2 12 0 0 (4), PolyRefl.mkT 8 0 0 12 0 (256), PolyRefl.mkT 8 0 2 10 0 (-768), PolyRefl.mkT 8 0 4 8 0 (864), PolyRefl.mkT 8 0 6 6 0 (-448), PolyRefl.mkT 8 0 8 4 0 (105), PolyRefl.mkT 8 0 10 2 0 (-9)]
def cp338_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 8 0 (1048576), PolyRefl.mkT 0 24 2 6 0 (-2097152), PolyRefl.mkT 0 24 4 4 0 (1310720), PolyRefl.mkT 0 24 6 2 0 (-262144), PolyRefl.mkT 0 24 8 0 0 (4096), PolyRefl.mkT 2 22 0 8 0 (-4194304), PolyRefl.mkT 2 22 2 6 0 (8388608), PolyRefl.mkT 2 22 4 4 0 (-4718592), PolyRefl.mkT 2 22 6 2 0 (524288), PolyRefl.mkT 2 22 8 0 0 (49152), PolyRefl.mkT 4 20 0 8 0 (-299892736), PolyRefl.mkT 4 20 2 6 0 (599785472), PolyRefl.mkT 4 20 4 4 0 (-373817344), PolyRefl.mkT 4 20 6 2 0 (73924608), PolyRefl.mkT 4 20 8 0 0 (-778240), PolyRefl.mkT 6 18 0 8 0 (4307550208), PolyRefl.mkT 6 18 2 6 0 (-8615100416), PolyRefl.mkT 6 18 4 4 0 (5240258560), PolyRefl.mkT 6 18 6 2 0 (-932708352), PolyRefl.mkT 6 18 8 0 0 (901120), PolyRefl.mkT 8 16 0 8 0 (-24311234560), PolyRefl.mkT 8 16 2 6 0 (48622469120), PolyRefl.mkT 8 16 4 4 0 (-29101391872), PolyRefl.mkT 8 16 6 2 0 (4790157312), PolyRefl.mkT 8 16 8 0 0 (6221824), PolyRefl.mkT 10 14 0 8 0 (65489862656), PolyRefl.mkT 10 14 2 6 0 (-130979725312), PolyRefl.mkT 10 14 4 4 0 (77576798208), PolyRefl.mkT 10 14 6 2 0 (-12086935552), PolyRefl.mkT 10 14 8 0 0 (3244032), PolyRefl.mkT 12 12 0 8 0 (-86071312384), PolyRefl.mkT 12 12 2 6 0 (172142624768), PolyRefl.mkT 12 12 4 4 0 (-101845041152), PolyRefl.mkT 12 12 6 2 0 (15773728768), PolyRefl.mkT 12 12 8 0 0 (-2506752), PolyRefl.mkT 14 10 0 8 0 (65489862656), PolyRefl.mkT 14 10 2 6 0 (-130979725312), PolyRefl.mkT 14 10 4 4 0 (77576798208), PolyRefl.mkT 14 10 6 2 0 (-12086935552), PolyRefl.mkT 14 10 8 0 0 (3244032), PolyRefl.mkT 16 8 0 8 0 (-24311234560), PolyRefl.mkT 16 8 2 6 0 (48622469120), PolyRefl.mkT 16 8 4 4 0 (-29101391872), PolyRefl.mkT 16 8 6 2 0 (4790157312), PolyRefl.mkT 16 8 8 0 0 (6221824), PolyRefl.mkT 18 6 0 8 0 (4307550208), PolyRefl.mkT 18 6 2 6 0 (-8615100416), PolyRefl.mkT 18 6 4 4 0 (5240258560), PolyRefl.mkT 18 6 6 2 0 (-932708352), PolyRefl.mkT 18 6 8 0 0 (901120), PolyRefl.mkT 20 4 0 8 0 (-299892736), PolyRefl.mkT 20 4 2 6 0 (599785472), PolyRefl.mkT 20 4 4 4 0 (-373817344), PolyRefl.mkT 20 4 6 2 0 (73924608), PolyRefl.mkT 20 4 8 0 0 (-778240), PolyRefl.mkT 22 2 0 8 0 (-4194304), PolyRefl.mkT 22 2 2 6 0 (8388608), PolyRefl.mkT 22 2 4 4 0 (-4718592), PolyRefl.mkT 22 2 6 2 0 (524288), PolyRefl.mkT 22 2 8 0 0 (49152), PolyRefl.mkT 24 0 0 8 0 (1048576), PolyRefl.mkT 24 0 2 6 0 (-2097152), PolyRefl.mkT 24 0 4 4 0 (1310720), PolyRefl.mkT 24 0 6 2 0 (-262144), PolyRefl.mkT 24 0 8 0 0 (4096)]
def cp339_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 30 8 0 0 (3645), PolyRefl.mkT 4 28 8 0 0 (-154386), PolyRefl.mkT 6 26 8 0 0 (2621223), PolyRefl.mkT 8 24 8 0 0 (-23725556), PolyRefl.mkT 10 22 8 0 0 (125292245), PolyRefl.mkT 12 20 8 0 0 (-390392942), PolyRefl.mkT 14 18 8 0 0 (689145079), PolyRefl.mkT 16 16 8 0 0 (-650387800), PolyRefl.mkT 18 14 8 0 0 (364651375), PolyRefl.mkT 20 12 8 0 0 (-132387278), PolyRefl.mkT 22 10 8 0 0 (31756109), PolyRefl.mkT 24 8 8 0 0 (-4916852), PolyRefl.mkT 26 6 8 0 0 (461439), PolyRefl.mkT 28 4 8 0 0 (-22770), PolyRefl.mkT 30 2 8 0 0 (405)]
def cp340_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (12), PolyRefl.mkT 1 3 0 0 2 (-8), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 2 2 0 1 1 (-72), PolyRefl.mkT 3 1 0 0 2 (8), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 4 0 0 1 1 (12)]
def cp341_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 1 3 0 0 0 (-8), PolyRefl.mkT 3 1 0 0 0 (8)]
def cp342_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (3), PolyRefl.mkT 1 3 0 2 0 (4), PolyRefl.mkT 1 3 2 0 0 (-2), PolyRefl.mkT 2 2 0 1 1 (-18), PolyRefl.mkT 3 1 0 2 0 (-4), PolyRefl.mkT 3 1 2 0 0 (2), PolyRefl.mkT 4 0 0 1 1 (3)]
def cp343_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 2 0 (9), PolyRefl.mkT 2 6 0 2 0 (-108), PolyRefl.mkT 4 4 0 2 0 (342), PolyRefl.mkT 6 2 0 2 0 (-108), PolyRefl.mkT 8 0 0 2 0 (9)]
def cp344_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (3), PolyRefl.mkT 1 3 0 2 0 (-4), PolyRefl.mkT 1 3 2 0 0 (2), PolyRefl.mkT 2 2 0 1 1 (-18), PolyRefl.mkT 3 1 0 2 0 (4), PolyRefl.mkT 3 1 2 0 0 (-2), PolyRefl.mkT 4 0 0 1 1 (3)]
def cp345_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 4 0 (9), PolyRefl.mkT 0 8 2 2 0 (-9), PolyRefl.mkT 2 6 0 4 0 (-92), PolyRefl.mkT 2 6 2 2 0 (92), PolyRefl.mkT 2 6 4 0 0 (4), PolyRefl.mkT 4 4 0 4 0 (310), PolyRefl.mkT 4 4 2 2 0 (-310), PolyRefl.mkT 4 4 4 0 0 (-8), PolyRefl.mkT 6 2 0 4 0 (-92), PolyRefl.mkT 6 2 2 2 0 (92), PolyRefl.mkT 6 2 4 0 0 (4), PolyRefl.mkT 8 0 0 4 0 (9), PolyRefl.mkT 8 0 2 2 0 (-9)]
def cp346_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-24), PolyRefl.mkT 0 4 0 3 1 (24), PolyRefl.mkT 1 3 0 0 4 (-24), PolyRefl.mkT 1 3 0 2 2 (80), PolyRefl.mkT 1 3 0 4 0 (-24), PolyRefl.mkT 2 2 0 1 3 (48), PolyRefl.mkT 2 2 0 3 1 (-48), PolyRefl.mkT 3 1 0 0 4 (8), PolyRefl.mkT 3 1 0 2 2 (16), PolyRefl.mkT 3 1 0 4 0 (8), PolyRefl.mkT 4 0 0 1 3 (8), PolyRefl.mkT 4 0 0 3 1 (-8)]
def cp347_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-24), PolyRefl.mkT 1 3 0 0 2 (-24), PolyRefl.mkT 1 3 0 2 0 (104), PolyRefl.mkT 1 3 2 0 0 (-24), PolyRefl.mkT 2 2 0 1 1 (48), PolyRefl.mkT 3 1 0 0 2 (8), PolyRefl.mkT 3 1 0 2 0 (8), PolyRefl.mkT 3 1 2 0 0 (8), PolyRefl.mkT 4 0 0 1 1 (8)]
def cp348_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (6), PolyRefl.mkT 0 4 2 1 1 (-3), PolyRefl.mkT 1 3 0 4 0 (-16), PolyRefl.mkT 1 3 2 2 0 (16), PolyRefl.mkT 1 3 4 0 0 (-3), PolyRefl.mkT 2 2 0 3 1 (-12), PolyRefl.mkT 2 2 2 1 1 (6), PolyRefl.mkT 3 1 4 0 0 (1), PolyRefl.mkT 4 0 0 3 1 (-2), PolyRefl.mkT 4 0 2 1 1 (1)]
def cp349_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 6 0 (36), PolyRefl.mkT 0 8 2 4 0 (-36), PolyRefl.mkT 0 8 4 2 0 (9), PolyRefl.mkT 2 6 0 6 0 (-144), PolyRefl.mkT 2 6 2 4 0 (144), PolyRefl.mkT 2 6 4 2 0 (-36), PolyRefl.mkT 4 4 0 6 0 (120), PolyRefl.mkT 4 4 2 4 0 (-120), PolyRefl.mkT 4 4 4 2 0 (30), PolyRefl.mkT 6 2 0 6 0 (48), PolyRefl.mkT 6 2 2 4 0 (-48), PolyRefl.mkT 6 2 4 2 0 (12), PolyRefl.mkT 8 0 0 6 0 (4), PolyRefl.mkT 8 0 2 4 0 (-4), PolyRefl.mkT 8 0 4 2 0 (1)]
def cp350_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (6), PolyRefl.mkT 0 4 2 1 1 (-3), PolyRefl.mkT 1 3 0 4 0 (16), PolyRefl.mkT 1 3 2 2 0 (-16), PolyRefl.mkT 1 3 4 0 0 (3), PolyRefl.mkT 2 2 0 3 1 (-12), PolyRefl.mkT 2 2 2 1 1 (6), PolyRefl.mkT 3 1 4 0 0 (-1), PolyRefl.mkT 4 0 0 3 1 (-2), PolyRefl.mkT 4 0 2 1 1 (1)]
def cp351_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 8 0 (36), PolyRefl.mkT 0 8 2 6 0 (-72), PolyRefl.mkT 0 8 4 4 0 (45), PolyRefl.mkT 0 8 6 2 0 (-9), PolyRefl.mkT 2 6 0 8 0 (112), PolyRefl.mkT 2 6 2 6 0 (-224), PolyRefl.mkT 2 6 4 4 0 (172), PolyRefl.mkT 2 6 6 2 0 (-60), PolyRefl.mkT 2 6 8 0 0 (9), PolyRefl.mkT 4 4 0 8 0 (120), PolyRefl.mkT 4 4 2 6 0 (-240), PolyRefl.mkT 4 4 4 4 0 (118), PolyRefl.mkT 4 4 6 2 0 (2), PolyRefl.mkT 4 4 8 0 0 (-6), PolyRefl.mkT 6 2 0 8 0 (48), PolyRefl.mkT 6 2 2 6 0 (-96), PolyRefl.mkT 6 2 4 4 0 (60), PolyRefl.mkT 6 2 6 2 0 (-12), PolyRefl.mkT 6 2 8 0 0 (1), PolyRefl.mkT 8 0 0 8 0 (4), PolyRefl.mkT 8 0 2 6 0 (-8), PolyRefl.mkT 8 0 4 4 0 (5), PolyRefl.mkT 8 0 6 2 0 (-1)]
def cp352_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 0 0 (729), PolyRefl.mkT 2 22 0 0 0 (-22356), PolyRefl.mkT 4 20 0 0 0 (303858), PolyRefl.mkT 6 18 0 0 0 (-2341124), PolyRefl.mkT 8 16 0 0 0 (10925463), PolyRefl.mkT 10 14 0 0 0 (-30444456), PolyRefl.mkT 12 12 0 0 0 (46141756), PolyRefl.mkT 14 10 0 0 0 (-30444456), PolyRefl.mkT 16 8 0 0 0 (10925463), PolyRefl.mkT 18 6 0 0 0 (-2341124), PolyRefl.mkT 20 4 0 0 0 (303858), PolyRefl.mkT 22 2 0 0 0 (-22356), PolyRefl.mkT 24 0 0 0 0 (729)]
def cp353_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 4 0 (2916), PolyRefl.mkT 0 24 2 2 0 (-2916), PolyRefl.mkT 0 24 4 0 0 (729), PolyRefl.mkT 2 22 0 4 0 (-50544), PolyRefl.mkT 2 22 2 2 0 (50544), PolyRefl.mkT 2 22 4 0 0 (-11340), PolyRefl.mkT 4 20 0 4 0 (329832), PolyRefl.mkT 4 20 2 2 0 (-329832), PolyRefl.mkT 4 20 4 0 0 (38682), PolyRefl.mkT 6 18 0 4 0 (-734960), PolyRefl.mkT 6 18 2 2 0 (734960), PolyRefl.mkT 6 18 4 0 0 (291188), PolyRefl.mkT 8 16 0 4 0 (-892996), PolyRefl.mkT 8 16 2 2 0 (892996), PolyRefl.mkT 8 16 4 0 0 (-2609425), PolyRefl.mkT 10 14 0 4 0 (4188192), PolyRefl.mkT 10 14 2 2 0 (-4188192), PolyRefl.mkT 10 14 4 0 0 (6614696), PolyRefl.mkT 12 12 0 4 0 (4753200), PolyRefl.mkT 12 12 2 2 0 (-4753200), PolyRefl.mkT 12 12 4 0 0 (-4230452), PolyRefl.mkT 14 10 0 4 0 (-331872), PolyRefl.mkT 14 10 2 2 0 (331872), PolyRefl.mkT 14 10 4 0 0 (2197576), PolyRefl.mkT 16 8 0 4 0 (-861924), PolyRefl.mkT 16 8 2 2 0 (861924), PolyRefl.mkT 16 8 4 0 0 (-752825), PolyRefl.mkT 18 6 0 4 0 (249680), PolyRefl.mkT 18 6 2 2 0 (-249680), PolyRefl.mkT 18 6 4 0 0 (126756), PolyRefl.mkT 20 4 0 4 0 (-13592), PolyRefl.mkT 20 4 2 2 0 (13592), PolyRefl.mkT 20 4 4 0 0 (-5958), PolyRefl.mkT 22 2 0 4 0 (-2736), PolyRefl.mkT 22 2 2 2 0 (2736), PolyRefl.mkT 22 2 4 0 0 (-828), PolyRefl.mkT 24 0 0 4 0 (324), PolyRefl.mkT 24 0 2 2 0 (-324), PolyRefl.mkT 24 0 4 0 0 (81)]
def cp354_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 12 92 32 0 0 (5), PolyRefl.mkT 14 90 32 0 0 (-768), PolyRefl.mkT 16 88 32 0 0 (48636), PolyRefl.mkT 18 86 32 0 0 (-1760128), PolyRefl.mkT 20 84 32 0 0 (42305782), PolyRefl.mkT 22 82 32 0 0 (-721326976), PolyRefl.mkT 24 80 32 0 0 (8816283932), PolyRefl.mkT 26 78 32 0 0 (-77779166976), PolyRefl.mkT 28 76 32 0 0 (502046395553), PolyRefl.mkT 30 74 32 0 0 (-2403442235392), PolyRefl.mkT 32 72 32 0 0 (8588898583728), PolyRefl.mkT 34 70 32 0 0 (-22715260926464), PolyRefl.mkT 36 68 32 0 0 (42626121349128), PolyRefl.mkT 38 66 32 0 0 (-48486025054720), PolyRefl.mkT 40 64 32 0 0 (3217339866992), PolyRefl.mkT 42 62 32 0 0 (109865362755584), PolyRefl.mkT 44 60 32 0 0 (-229828592722342), PolyRefl.mkT 46 58 32 0 0 (226177927918080), PolyRefl.mkT 48 56 32 0 0 (-24890473755448), PolyRefl.mkT 50 54 32 0 0 (-262360060202240), PolyRefl.mkT 52 52 32 0 0 (399551603288068), PolyRefl.mkT 54 50 32 0 0 (-262360060202240), PolyRefl.mkT 56 48 32 0 0 (-24890473755448), PolyRefl.mkT 58 46 32 0 0 (226177927918080), PolyRefl.mkT 60 44 32 0 0 (-229828592722342), PolyRefl.mkT 62 42 32 0 0 (109865362755584), PolyRefl.mkT 64 40 32 0 0 (3217339866992), PolyRefl.mkT 66 38 32 0 0 (-48486025054720), PolyRefl.mkT 68 36 32 0 0 (42626121349128), PolyRefl.mkT 70 34 32 0 0 (-22715260926464), PolyRefl.mkT 72 32 32 0 0 (8588898583728), PolyRefl.mkT 74 30 32 0 0 (-2403442235392), PolyRefl.mkT 76 28 32 0 0 (502046395553), PolyRefl.mkT 78 26 32 0 0 (-77779166976), PolyRefl.mkT 80 24 32 0 0 (8816283932), PolyRefl.mkT 82 22 32 0 0 (-721326976), PolyRefl.mkT 84 20 32 0 0 (42305782), PolyRefl.mkT 86 18 32 0 0 (-1760128), PolyRefl.mkT 88 16 32 0 0 (48636), PolyRefl.mkT 90 14 32 0 0 (-768), PolyRefl.mkT 92 12 32 0 0 (5)]
def cp355_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 5 (24), PolyRefl.mkT 0 4 0 3 3 (-80), PolyRefl.mkT 0 4 0 5 1 (24), PolyRefl.mkT 1 3 0 0 6 (16), PolyRefl.mkT 1 3 0 2 4 (48), PolyRefl.mkT 1 3 0 4 2 (48), PolyRefl.mkT 1 3 0 6 0 (16), PolyRefl.mkT 2 2 0 1 5 (-144), PolyRefl.mkT 2 2 0 3 3 (480), PolyRefl.mkT 2 2 0 5 1 (-144), PolyRefl.mkT 3 1 0 0 6 (-16), PolyRefl.mkT 3 1 0 2 4 (-48), PolyRefl.mkT 3 1 0 4 2 (-48), PolyRefl.mkT 3 1 0 6 0 (-16), PolyRefl.mkT 4 0 0 1 5 (24), PolyRefl.mkT 4 0 0 3 3 (-80), PolyRefl.mkT 4 0 0 5 1 (24)]
def cp356_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (24), PolyRefl.mkT 0 4 0 3 1 (-104), PolyRefl.mkT 0 4 2 1 1 (24), PolyRefl.mkT 1 3 0 0 4 (16), PolyRefl.mkT 1 3 0 2 2 (32), PolyRefl.mkT 1 3 0 4 0 (16), PolyRefl.mkT 1 3 2 0 2 (16), PolyRefl.mkT 1 3 2 2 0 (16), PolyRefl.mkT 1 3 4 0 0 (16), PolyRefl.mkT 2 2 0 1 3 (-144), PolyRefl.mkT 2 2 0 3 1 (624), PolyRefl.mkT 2 2 2 1 1 (-144), PolyRefl.mkT 3 1 0 0 4 (-16), PolyRefl.mkT 3 1 0 2 2 (-32), PolyRefl.mkT 3 1 0 4 0 (-16), PolyRefl.mkT 3 1 2 0 2 (-16), PolyRefl.mkT 3 1 2 2 0 (-16), PolyRefl.mkT 3 1 4 0 0 (-16), PolyRefl.mkT 4 0 0 1 3 (24), PolyRefl.mkT 4 0 0 3 1 (-104), PolyRefl.mkT 4 0 2 1 1 (24)]
def cp357_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (16), PolyRefl.mkT 0 4 2 3 1 (-16), PolyRefl.mkT 0 4 4 1 1 (3), PolyRefl.mkT 1 3 6 0 0 (2), PolyRefl.mkT 2 2 0 5 1 (-96), PolyRefl.mkT 2 2 2 3 1 (96), PolyRefl.mkT 2 2 4 1 1 (-18), PolyRefl.mkT 3 1 6 0 0 (-2), PolyRefl.mkT 4 0 0 5 1 (16), PolyRefl.mkT 4 0 2 3 1 (-16), PolyRefl.mkT 4 0 4 1 1 (3)]
def cp358_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (16), PolyRefl.mkT 0 4 2 3 1 (-16), PolyRefl.mkT 0 4 4 1 1 (3), PolyRefl.mkT 1 3 6 0 0 (-2), PolyRefl.mkT 2 2 0 5 1 (-96), PolyRefl.mkT 2 2 2 3 1 (96), PolyRefl.mkT 2 2 4 1 1 (-18), PolyRefl.mkT 3 1 6 0 0 (2), PolyRefl.mkT 4 0 0 5 1 (16), PolyRefl.mkT 4 0 2 3 1 (-16), PolyRefl.mkT 4 0 4 1 1 (3)]
def cp359_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 30 8 4 0 (1), PolyRefl.mkT 2 30 10 2 0 (-1), PolyRefl.mkT 4 28 8 4 0 (-38), PolyRefl.mkT 4 28 10 2 0 (38), PolyRefl.mkT 4 28 12 0 0 (1), PolyRefl.mkT 6 26 8 4 0 (363), PolyRefl.mkT 6 26 10 2 0 (-363), PolyRefl.mkT 6 26 12 0 0 (-76), PolyRefl.mkT 8 24 8 4 0 (-1020), PolyRefl.mkT 8 24 10 2 0 (1020), PolyRefl.mkT 8 24 12 0 0 (2210), PolyRefl.mkT 10 22 8 4 0 (-839), PolyRefl.mkT 10 22 10 2 0 (839), PolyRefl.mkT 10 22 12 0 0 (-16156), PolyRefl.mkT 12 20 8 4 0 (4934), PolyRefl.mkT 12 20 10 2 0 (-4934), PolyRefl.mkT 12 20 12 0 0 (56687), PolyRefl.mkT 14 18 8 4 0 (475), PolyRefl.mkT 14 18 10 2 0 (-475), PolyRefl.mkT 14 18 12 0 0 (-114840), PolyRefl.mkT 16 16 8 4 0 (-7752), PolyRefl.mkT 16 16 10 2 0 (7752), PolyRefl.mkT 16 16 12 0 0 (144348), PolyRefl.mkT 18 14 8 4 0 (475), PolyRefl.mkT 18 14 10 2 0 (-475), PolyRefl.mkT 18 14 12 0 0 (-114840), PolyRefl.mkT 20 12 8 4 0 (4934), PolyRefl.mkT 20 12 10 2 0 (-4934), PolyRefl.mkT 20 12 12 0 0 (56687), PolyRefl.mkT 22 10 8 4 0 (-839), PolyRefl.mkT 22 10 10 2 0 (839), PolyRefl.mkT 22 10 12 0 0 (-16156), PolyRefl.mkT 24 8 8 4 0 (-1020), PolyRefl.mkT 24 8 10 2 0 (1020), PolyRefl.mkT 24 8 12 0 0 (2210), PolyRefl.mkT 26 6 8 4 0 (363), PolyRefl.mkT 26 6 10 2 0 (-363), PolyRefl.mkT 26 6 12 0 0 (-76), PolyRefl.mkT 28 4 8 4 0 (-38), PolyRefl.mkT 28 4 10 2 0 (38), PolyRefl.mkT 28 4 12 0 0 (1), PolyRefl.mkT 30 2 8 4 0 (1), PolyRefl.mkT 30 2 10 2 0 (-1)]
def cp360_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 4 68 20 0 0 (1), PolyRefl.mkT 6 66 16 4 0 (256), PolyRefl.mkT 6 66 18 2 0 (-256), PolyRefl.mkT 6 66 20 0 0 (-40), PolyRefl.mkT 8 64 16 4 0 (-19968), PolyRefl.mkT 8 64 18 2 0 (19968), PolyRefl.mkT 8 64 20 0 0 (-880), PolyRefl.mkT 10 62 16 4 0 (594688), PolyRefl.mkT 10 62 18 2 0 (-594688), PolyRefl.mkT 10 62 20 0 0 (82632), PolyRefl.mkT 12 60 16 4 0 (-8715264), PolyRefl.mkT 12 60 18 2 0 (8715264), PolyRefl.mkT 12 60 20 0 0 (-2444232), PolyRefl.mkT 14 58 16 4 0 (68873472), PolyRefl.mkT 14 58 18 2 0 (-68873472), PolyRefl.mkT 14 58 20 0 0 (44387256), PolyRefl.mkT 16 56 16 4 0 (-284604928), PolyRefl.mkT 16 56 18 2 0 (284604928), PolyRefl.mkT 16 56 20 0 0 (-501050192), PolyRefl.mkT 18 54 16 4 0 (409251584), PolyRefl.mkT 18 54 18 2 0 (-409251584), PolyRefl.mkT 18 54 20 0 0 (3521426216), PolyRefl.mkT 20 52 16 4 0 (1141925888), PolyRefl.mkT 20 52 18 2 0 (-1141925888), PolyRefl.mkT 20 52 20 0 0 (-15596913508), PolyRefl.mkT 22 50 16 4 0 (-4826448640), PolyRefl.mkT 22 50 18 2 0 (4826448640), PolyRefl.mkT 22 50 20 0 0 (42818144504), PolyRefl.mkT 24 48 16 4 0 (1841299968), PolyRefl.mkT 24 48 18 2 0 (-1841299968), PolyRefl.mkT 24 48 20 0 0 (-63574450544), PolyRefl.mkT 26 46 16 4 0 (15541237504), PolyRefl.mkT 26 46 18 2 0 (-15541237504), PolyRefl.mkT 26 46 20 0 0 (6410652328), PolyRefl.mkT 28 44 16 4 0 (-18737054720), PolyRefl.mkT 28 44 18 2 0 (18737054720), PolyRefl.mkT 28 44 20 0 0 (168946874248), PolyRefl.mkT 30 42 16 4 0 (-22803134208), PolyRefl.mkT 30 42 18 2 0 (22803134208), PolyRefl.mkT 30 42 20 0 0 (-312022629160), PolyRefl.mkT 32 40 16 4 0 (47535556096), PolyRefl.mkT 32 40 18 2 0 (-47535556096), PolyRefl.mkT 32 40 20 0 0 (158547464240), PolyRefl.mkT 34 38 16 4 0 (11609625344), PolyRefl.mkT 34 38 18 2 0 (-11609625344), PolyRefl.mkT 34 38 20 0 0 (259227936264), PolyRefl.mkT 36 36 16 4 0 (-62976774144), PolyRefl.mkT 36 36 18 2 0 (62976774144), PolyRefl.mkT 36 36 20 0 0 (-495638958266), PolyRefl.mkT 38 34 16 4 0 (11609625344), PolyRefl.mkT 38 34 18 2 0 (-11609625344), PolyRefl.mkT 38 34 20 0 0 (259227936264), PolyRefl.mkT 40 32 16 4 0 (47535556096), PolyRefl.mkT 40 32 18 2 0 (-47535556096), PolyRefl.mkT 40 32 20 0 0 (158547464240), PolyRefl.mkT 42 30 16 4 0 (-22803134208), PolyRefl.mkT 42 30 18 2 0 (22803134208), PolyRefl.mkT 42 30 20 0 0 (-312022629160), PolyRefl.mkT 44 28 16 4 0 (-18737054720), PolyRefl.mkT 44 28 18 2 0 (18737054720), PolyRefl.mkT 44 28 20 0 0 (168946874248), PolyRefl.mkT 46 26 16 4 0 (15541237504), PolyRefl.mkT 46 26 18 2 0 (-15541237504), PolyRefl.mkT 46 26 20 0 0 (6410652328), PolyRefl.mkT 48 24 16 4 0 (1841299968), PolyRefl.mkT 48 24 18 2 0 (-1841299968), PolyRefl.mkT 48 24 20 0 0 (-63574450544), PolyRefl.mkT 50 22 16 4 0 (-4826448640), PolyRefl.mkT 50 22 18 2 0 (4826448640), PolyRefl.mkT 50 22 20 0 0 (42818144504), PolyRefl.mkT 52 20 16 4 0 (1141925888), PolyRefl.mkT 52 20 18 2 0 (-1141925888), PolyRefl.mkT 52 20 20 0 0 (-15596913508), PolyRefl.mkT 54 18 16 4 0 (409251584), PolyRefl.mkT 54 18 18 2 0 (-409251584), PolyRefl.mkT 54 18 20 0 0 (3521426216), PolyRefl.mkT 56 16 16 4 0 (-284604928), PolyRefl.mkT 56 16 18 2 0 (284604928), PolyRefl.mkT 56 16 20 0 0 (-501050192), PolyRefl.mkT 58 14 16 4 0 (68873472), PolyRefl.mkT 58 14 18 2 0 (-68873472), PolyRefl.mkT 58 14 20 0 0 (44387256), PolyRefl.mkT 60 12 16 4 0 (-8715264), PolyRefl.mkT 60 12 18 2 0 (8715264), PolyRefl.mkT 60 12 20 0 0 (-2444232), PolyRefl.mkT 62 10 16 4 0 (594688), PolyRefl.mkT 62 10 18 2 0 (-594688), PolyRefl.mkT 62 10 20 0 0 (82632), PolyRefl.mkT 64 8 16 4 0 (-19968), PolyRefl.mkT 64 8 18 2 0 (19968), PolyRefl.mkT 64 8 20 0 0 (-880), PolyRefl.mkT 66 6 16 4 0 (256), PolyRefl.mkT 66 6 18 2 0 (-256), PolyRefl.mkT 66 6 20 0 0 (-40), PolyRefl.mkT 68 4 20 0 0 (1)]
def cp361_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 4 0 0 (-1), PolyRefl.mkT 2 8 4 0 0 (20), PolyRefl.mkT 4 6 4 0 0 (-62), PolyRefl.mkT 6 4 4 0 0 (36), PolyRefl.mkT 8 2 4 0 0 (-9)]
def cp362_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 4 (2), PolyRefl.mkT 0 2 0 2 2 (-28), PolyRefl.mkT 0 2 0 4 0 (2), PolyRefl.mkT 2 0 0 0 4 (-6), PolyRefl.mkT 2 0 0 2 2 (20), PolyRefl.mkT 2 0 0 4 0 (-6)]
def cp363_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 2 (2), PolyRefl.mkT 0 2 0 2 0 (-30), PolyRefl.mkT 0 2 2 0 0 (2), PolyRefl.mkT 2 0 0 0 2 (-6), PolyRefl.mkT 2 0 0 2 0 (26), PolyRefl.mkT 2 0 2 0 0 (-6)]
def cp364_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 4 0 (16), PolyRefl.mkT 0 2 2 2 0 (-16), PolyRefl.mkT 0 2 4 0 0 (1), PolyRefl.mkT 2 0 0 4 0 (-16), PolyRefl.mkT 2 0 2 2 0 (16), PolyRefl.mkT 2 0 4 0 0 (-3)]
def cp365_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 2 0 (64), PolyRefl.mkT 0 6 2 0 0 (-16), PolyRefl.mkT 2 4 0 2 0 (-448), PolyRefl.mkT 2 4 2 0 0 (240), PolyRefl.mkT 4 2 0 2 0 (448), PolyRefl.mkT 4 2 2 0 0 (-240), PolyRefl.mkT 6 0 0 2 0 (-64), PolyRefl.mkT 6 0 2 0 0 (16)]
def cp366_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-4), PolyRefl.mkT 1 3 0 0 2 (-8), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 2 2 0 1 1 (-24), PolyRefl.mkT 3 1 0 0 2 (24), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 4 0 0 1 1 (12)]
def cp367_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-1), PolyRefl.mkT 1 3 2 0 0 (-2), PolyRefl.mkT 2 2 0 1 1 (-6), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 3 1 2 0 0 (6), PolyRefl.mkT 4 0 0 1 1 (3)]
def cp368_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-1), PolyRefl.mkT 1 3 2 0 0 (2), PolyRefl.mkT 2 2 0 1 1 (-6), PolyRefl.mkT 3 1 0 2 0 (8), PolyRefl.mkT 3 1 2 0 0 (-6), PolyRefl.mkT 4 0 0 1 1 (3)]
def cp369_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 60 24 0 0 (5), PolyRefl.mkT 2 58 24 0 0 (-594), PolyRefl.mkT 4 56 24 0 0 (29087), PolyRefl.mkT 6 54 24 0 0 (-914180), PolyRefl.mkT 8 52 24 0 0 (23188321), PolyRefl.mkT 10 50 24 0 0 (-469561318), PolyRefl.mkT 12 48 24 0 0 (6996038635), PolyRefl.mkT 14 46 24 0 0 (-74100114792), PolyRefl.mkT 16 44 24 0 0 (557801887409), PolyRefl.mkT 18 42 24 0 0 (-3010736942626), PolyRefl.mkT 20 40 24 0 0 (11747835514899), PolyRefl.mkT 22 38 24 0 0 (-33338004520508), PolyRefl.mkT 24 36 24 0 0 (69174060708397), PolyRefl.mkT 26 34 24 0 0 (-105679298980134), PolyRefl.mkT 28 32 24 0 0 (120013815351071), PolyRefl.mkT 30 30 24 0 0 (-102460346145968), PolyRefl.mkT 32 28 24 0 0 (66467220893983), PolyRefl.mkT 34 26 24 0 0 (-33032259444966), PolyRefl.mkT 36 24 24 0 0 (12636714813101), PolyRefl.mkT 38 22 24 0 0 (-3727925183804), PolyRefl.mkT 40 20 24 0 0 (848747246995), PolyRefl.mkT 42 18 24 0 0 (-149909581282), PolyRefl.mkT 44 16 24 0 0 (20971929521), PolyRefl.mkT 46 14 24 0 0 (-2439125352), PolyRefl.mkT 48 12 24 0 0 (250438379), PolyRefl.mkT 50 10 24 0 0 (-22947494), PolyRefl.mkT 52 8 24 0 0 (1793249), PolyRefl.mkT 54 6 24 0 0 (-118276), PolyRefl.mkT 56 4 24 0 0 (6687), PolyRefl.mkT 58 2 24 0 0 (-274), PolyRefl.mkT 60 0 24 0 0 (5)]
def cp370_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 8 0 (16777216), PolyRefl.mkT 0 24 2 6 0 (-29360128), PolyRefl.mkT 0 24 4 4 0 (14680064), PolyRefl.mkT 0 24 6 2 0 (-1835008), PolyRefl.mkT 2 22 0 8 0 (201326592), PolyRefl.mkT 2 22 2 6 0 (-318767104), PolyRefl.mkT 2 22 4 4 0 (142606336), PolyRefl.mkT 2 22 6 2 0 (-15728640), PolyRefl.mkT 4 20 0 8 0 (-11240734720), PolyRefl.mkT 4 20 2 6 0 (20275265536), PolyRefl.mkT 4 20 4 4 0 (-10372513792), PolyRefl.mkT 4 20 6 2 0 (1325924352), PolyRefl.mkT 4 20 8 0 0 (4194304), PolyRefl.mkT 6 18 0 8 0 (127708168192), PolyRefl.mkT 6 18 2 6 0 (-242380439552), PolyRefl.mkT 6 18 4 4 0 (132246405120), PolyRefl.mkT 6 18 6 2 0 (-17778606080), PolyRefl.mkT 6 18 8 0 0 (167772160), PolyRefl.mkT 8 16 0 8 0 (-633792888832), PolyRefl.mkT 8 16 2 6 0 (1250603040768), PolyRefl.mkT 8 16 4 4 0 (-724219985920), PolyRefl.mkT 8 16 6 2 0 (106918838272), PolyRefl.mkT 8 16 8 0 0 (520093696), PolyRefl.mkT 10 14 0 8 0 (1454249082880), PolyRefl.mkT 10 14 2 6 0 (-2944837615616), PolyRefl.mkT 10 14 4 4 0 (1784575688704), PolyRefl.mkT 10 14 6 2 0 (-294438043648), PolyRefl.mkT 10 14 8 0 0 (503316480), PolyRefl.mkT 12 12 0 8 0 (-1377140998144), PolyRefl.mkT 12 12 2 6 0 (2777619103744), PolyRefl.mkT 12 12 4 4 0 (-1671002324992), PolyRefl.mkT 12 12 6 2 0 (270456061952), PolyRefl.mkT 12 12 8 0 0 (25165824), PolyRefl.mkT 14 10 0 8 0 (641426522112), PolyRefl.mkT 14 10 2 6 0 (-1271142547456), PolyRefl.mkT 14 10 4 4 0 (742643466240), PolyRefl.mkT 14 10 6 2 0 (-112791126016), PolyRefl.mkT 14 10 8 0 0 (-167772160), PolyRefl.mkT 16 8 0 8 0 (-144166617088), PolyRefl.mkT 16 8 2 6 0 (275645464576), PolyRefl.mkT 16 8 4 4 0 (-151915593728), PolyRefl.mkT 16 8 6 2 0 (20482621440), PolyRefl.mkT 16 8 8 0 0 (-16777216), PolyRefl.mkT 18 6 0 8 0 (10133438464), PolyRefl.mkT 18 6 2 6 0 (-17297309696), PolyRefl.mkT 18 6 4 4 0 (7893680128), PolyRefl.mkT 18 6 6 2 0 (-758120448), PolyRefl.mkT 18 6 8 0 0 (33554432), PolyRefl.mkT 20 4 0 8 0 (1644167168), PolyRefl.mkT 20 4 2 6 0 (-3347054592), PolyRefl.mkT 20 4 4 4 0 (1975517184), PolyRefl.mkT 20 4 6 2 0 (-284688384), PolyRefl.mkT 20 4 8 0 0 (4194304), PolyRefl.mkT 22 2 0 8 0 (-335544320), PolyRefl.mkT 22 2 2 6 0 (620756992), PolyRefl.mkT 22 2 4 4 0 (-327155712), PolyRefl.mkT 22 2 6 2 0 (42991616), PolyRefl.mkT 24 0 0 8 0 (16777216), PolyRefl.mkT 24 0 2 6 0 (-29360128), PolyRefl.mkT 24 0 4 4 0 (14680064), PolyRefl.mkT 24 0 6 2 0 (-1835008)]
def cp371_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 28 10 2 0 (-1), PolyRefl.mkT 2 26 10 2 0 (-14), PolyRefl.mkT 2 26 12 0 0 (36), PolyRefl.mkT 4 24 10 2 0 (901), PolyRefl.mkT 4 24 12 0 0 (-1184), PolyRefl.mkT 6 22 10 2 0 (2420), PolyRefl.mkT 6 22 12 0 0 (10888), PolyRefl.mkT 8 20 10 2 0 (-2121), PolyRefl.mkT 8 20 12 0 0 (-92000), PolyRefl.mkT 10 18 10 2 0 (-12594), PolyRefl.mkT 10 18 12 0 0 (343676), PolyRefl.mkT 12 16 10 2 0 (-12027), PolyRefl.mkT 12 16 12 0 0 (-616256), PolyRefl.mkT 14 14 10 2 0 (1368), PolyRefl.mkT 14 14 12 0 0 (592368), PolyRefl.mkT 16 12 10 2 0 (6533), PolyRefl.mkT 16 12 12 0 0 (-321984), PolyRefl.mkT 18 10 10 2 0 (878), PolyRefl.mkT 18 10 12 0 0 (99804), PolyRefl.mkT 20 8 10 2 0 (-1673), PolyRefl.mkT 20 8 12 0 0 (-16928), PolyRefl.mkT 22 6 10 2 0 (-268), PolyRefl.mkT 22 6 12 0 0 (1800), PolyRefl.mkT 24 4 10 2 0 (197), PolyRefl.mkT 24 4 12 0 0 (-224), PolyRefl.mkT 26 2 10 2 0 (18), PolyRefl.mkT 26 2 12 0 0 (4), PolyRefl.mkT 28 0 10 2 0 (-1)]
def cp372_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 56 20 0 0 (1), PolyRefl.mkT 2 54 20 0 0 (28), PolyRefl.mkT 4 52 20 0 0 (-1606), PolyRefl.mkT 6 50 20 0 0 (-30068), PolyRefl.mkT 8 48 20 0 0 (748283), PolyRefl.mkT 10 46 20 0 0 (4445416), PolyRefl.mkT 12 44 20 0 0 (2411044), PolyRefl.mkT 14 42 20 0 0 (-32626008), PolyRefl.mkT 16 40 20 0 0 (-78180343), PolyRefl.mkT 18 38 20 0 0 (-2506476), PolyRefl.mkT 20 36 20 0 0 (227999718), PolyRefl.mkT 22 34 20 0 0 (330382276), PolyRefl.mkT 24 32 20 0 0 (83720443), PolyRefl.mkT 26 30 20 0 0 (-209769360), PolyRefl.mkT 28 28 20 0 0 (-171234184), PolyRefl.mkT 30 26 20 0 0 (41017200), PolyRefl.mkT 32 24 20 0 0 (91324667), PolyRefl.mkT 34 22 20 0 0 (8297860), PolyRefl.mkT 36 20 20 0 0 (-27009562), PolyRefl.mkT 38 18 20 0 0 (-6308268), PolyRefl.mkT 40 16 20 0 0 (4975625), PolyRefl.mkT 42 14 20 0 0 (1475112), PolyRefl.mkT 44 12 20 0 0 (-568796), PolyRefl.mkT 46 10 20 0 0 (-167576), PolyRefl.mkT 48 8 20 0 0 (32507), PolyRefl.mkT 50 6 20 0 0 (7628), PolyRefl.mkT 52 4 20 0 0 (-70), PolyRefl.mkT 54 2 20 0 0 (-36), PolyRefl.mkT 56 0 20 0 0 (1)]
def cp373_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 32 10 2 0 (-16), PolyRefl.mkT 0 32 12 0 0 (20), PolyRefl.mkT 2 30 10 2 0 (-128), PolyRefl.mkT 2 30 12 0 0 (-384), PolyRefl.mkT 4 28 10 2 0 (15744), PolyRefl.mkT 4 28 12 0 0 (3168), PolyRefl.mkT 6 26 10 2 0 (-48000), PolyRefl.mkT 6 26 12 0 0 (-257280), PolyRefl.mkT 8 24 10 2 0 (-251840), PolyRefl.mkT 8 24 12 0 0 (2773552), PolyRefl.mkT 10 22 10 2 0 (40832), PolyRefl.mkT 10 22 12 0 0 (-14488192), PolyRefl.mkT 12 20 10 2 0 (982656), PolyRefl.mkT 12 20 12 0 0 (43499680), PolyRefl.mkT 14 18 10 2 0 (974976), PolyRefl.mkT 14 18 12 0 0 (-74971136), PolyRefl.mkT 16 16 10 2 0 (-219232), PolyRefl.mkT 16 16 12 0 0 (72109432), PolyRefl.mkT 18 14 10 2 0 (-591232), PolyRefl.mkT 18 14 12 0 0 (-41455232), PolyRefl.mkT 20 12 10 2 0 (-6528), PolyRefl.mkT 20 12 12 0 0 (14983840), PolyRefl.mkT 22 10 10 2 0 (170368), PolyRefl.mkT 22 10 12 0 0 (-3410176), PolyRefl.mkT 24 8 10 2 0 (2112), PolyRefl.mkT 24 8 12 0 0 (453168), PolyRefl.mkT 26 6 10 2 0 (-22912), PolyRefl.mkT 26 6 12 0 0 (-28032), PolyRefl.mkT 28 4 10 2 0 (1408), PolyRefl.mkT 28 4 12 0 0 (1632), PolyRefl.mkT 30 2 10 2 0 (384), PolyRefl.mkT 30 2 12 0 0 (-512), PolyRefl.mkT 32 0 10 2 0 (-16), PolyRefl.mkT 32 0 12 0 0 (20)]
def cp374_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 14 12 0 0 (-1), PolyRefl.mkT 2 12 12 0 0 (4), PolyRefl.mkT 4 10 12 0 0 (-27), PolyRefl.mkT 6 8 12 0 0 (90), PolyRefl.mkT 8 6 12 0 0 (-103), PolyRefl.mkT 10 4 12 0 0 (32), PolyRefl.mkT 12 2 12 0 0 (3), PolyRefl.mkT 14 0 12 0 0 (2)]
def cp375_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 0 0 (32768), PolyRefl.mkT 2 8 0 0 0 (-163840), PolyRefl.mkT 4 6 0 0 0 (327680), PolyRefl.mkT 6 4 0 0 0 (-327680), PolyRefl.mkT 8 2 0 0 0 (163840), PolyRefl.mkT 10 0 0 0 0 (-32768)]
def cp376_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 12 0 8 0 (1048576), PolyRefl.mkT 0 12 2 6 0 (-2097152), PolyRefl.mkT 0 12 4 4 0 (1310720), PolyRefl.mkT 0 12 6 2 0 (-262144), PolyRefl.mkT 0 12 8 0 0 (4096), PolyRefl.mkT 2 10 0 8 0 (2097152), PolyRefl.mkT 2 10 2 6 0 (-4194304), PolyRefl.mkT 2 10 4 4 0 (2752512), PolyRefl.mkT 2 10 6 2 0 (-655360), PolyRefl.mkT 2 10 8 0 0 (24576), PolyRefl.mkT 4 8 0 8 0 (-17825792), PolyRefl.mkT 4 8 2 6 0 (35651584), PolyRefl.mkT 4 8 4 4 0 (-21889024), PolyRefl.mkT 4 8 6 2 0 (4063232), PolyRefl.mkT 4 8 8 0 0 (-4096), PolyRefl.mkT 6 6 0 8 0 (29360128), PolyRefl.mkT 6 6 2 6 0 (-58720256), PolyRefl.mkT 6 6 4 4 0 (34865152), PolyRefl.mkT 6 6 6 2 0 (-5505024), PolyRefl.mkT 6 6 8 0 0 (-49152), PolyRefl.mkT 8 4 0 8 0 (-17825792), PolyRefl.mkT 8 4 2 6 0 (35651584), PolyRefl.mkT 8 4 4 4 0 (-20447232), PolyRefl.mkT 8 4 6 2 0 (2621440), PolyRefl.mkT 8 4 8 0 0 (-4096), PolyRefl.mkT 10 2 0 8 0 (2097152), PolyRefl.mkT 10 2 2 6 0 (-4194304), PolyRefl.mkT 10 2 4 4 0 (2228224), PolyRefl.mkT 10 2 6 2 0 (-131072), PolyRefl.mkT 10 2 8 0 0 (24576), PolyRefl.mkT 12 0 0 8 0 (1048576), PolyRefl.mkT 12 0 2 6 0 (-2097152), PolyRefl.mkT 12 0 4 4 0 (1179648), PolyRefl.mkT 12 0 6 2 0 (-131072), PolyRefl.mkT 12 0 8 0 0 (4096)]
def cp377_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 30 8 0 0 (-2187), PolyRefl.mkT 4 28 8 0 0 (55566), PolyRefl.mkT 6 26 8 0 0 (-538785), PolyRefl.mkT 8 24 8 0 0 (2013580), PolyRefl.mkT 10 22 8 0 0 (4095149), PolyRefl.mkT 12 20 8 0 0 (-70985678), PolyRefl.mkT 14 18 8 0 0 (301658575), PolyRefl.mkT 16 16 8 0 0 (-650387800), PolyRefl.mkT 18 14 8 0 0 (752137879), PolyRefl.mkT 20 12 8 0 0 (-451794542), PolyRefl.mkT 22 10 8 0 0 (152953205), PolyRefl.mkT 24 8 8 0 0 (-30655988), PolyRefl.mkT 26 6 8 0 0 (3621447), PolyRefl.mkT 28 4 8 0 0 (-232722), PolyRefl.mkT 30 2 8 0 0 (6237)]
def cp378_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (-6), PolyRefl.mkT 0 4 0 2 0 (6), PolyRefl.mkT 1 3 0 1 1 (16), PolyRefl.mkT 2 2 0 0 2 (36), PolyRefl.mkT 2 2 0 2 0 (-36), PolyRefl.mkT 3 1 0 1 1 (-16), PolyRefl.mkT 4 0 0 0 2 (-6), PolyRefl.mkT 4 0 0 2 0 (6)]
def cp379_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 0 (-6), PolyRefl.mkT 2 2 0 0 0 (36), PolyRefl.mkT 4 0 0 0 0 (-6)]
def cp380_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 2 0 (6), PolyRefl.mkT 0 4 2 0 0 (-3), PolyRefl.mkT 1 3 0 1 1 (8), PolyRefl.mkT 2 2 0 2 0 (-36), PolyRefl.mkT 2 2 2 0 0 (18), PolyRefl.mkT 3 1 0 1 1 (-8), PolyRefl.mkT 4 0 0 2 0 (6), PolyRefl.mkT 4 0 2 0 0 (-3)]
def cp381_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 6 0 2 0 (64), PolyRefl.mkT 4 4 0 2 0 (-128), PolyRefl.mkT 6 2 0 2 0 (64)]
def cp382_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 2 0 (-6), PolyRefl.mkT 0 4 2 0 0 (3), PolyRefl.mkT 1 3 0 1 1 (8), PolyRefl.mkT 2 2 0 2 0 (36), PolyRefl.mkT 2 2 2 0 0 (-18), PolyRefl.mkT 3 1 0 1 1 (-8), PolyRefl.mkT 4 0 0 2 0 (-6), PolyRefl.mkT 4 0 2 0 0 (3)]
def cp383_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 4 0 (36), PolyRefl.mkT 0 8 2 2 0 (-36), PolyRefl.mkT 0 8 4 0 0 (9), PolyRefl.mkT 2 6 0 4 0 (-368), PolyRefl.mkT 2 6 2 2 0 (368), PolyRefl.mkT 2 6 4 0 0 (-108), PolyRefl.mkT 4 4 0 4 0 (1240), PolyRefl.mkT 4 4 2 2 0 (-1240), PolyRefl.mkT 4 4 4 0 0 (342), PolyRefl.mkT 6 2 0 4 0 (-368), PolyRefl.mkT 6 2 2 2 0 (368), PolyRefl.mkT 6 2 4 0 0 (-108), PolyRefl.mkT 8 0 0 4 0 (36), PolyRefl.mkT 8 0 2 2 0 (-36), PolyRefl.mkT 8 0 4 0 0 (9)]
def cp384_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-24), PolyRefl.mkT 0 4 0 3 1 (24), PolyRefl.mkT 1 3 0 0 4 (-8), PolyRefl.mkT 1 3 0 2 2 (-16), PolyRefl.mkT 1 3 0 4 0 (-8), PolyRefl.mkT 2 2 0 1 3 (48), PolyRefl.mkT 2 2 0 3 1 (-48), PolyRefl.mkT 3 1 0 0 4 (-8), PolyRefl.mkT 3 1 0 2 2 (112), PolyRefl.mkT 3 1 0 4 0 (-8), PolyRefl.mkT 4 0 0 1 3 (8), PolyRefl.mkT 4 0 0 3 1 (-8)]
def cp385_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-24), PolyRefl.mkT 1 3 0 0 2 (-8), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 1 3 2 0 0 (-8), PolyRefl.mkT 2 2 0 1 1 (48), PolyRefl.mkT 3 1 0 0 2 (-8), PolyRefl.mkT 3 1 0 2 0 (120), PolyRefl.mkT 3 1 2 0 0 (-8), PolyRefl.mkT 4 0 0 1 1 (8)]
def cp386_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (6), PolyRefl.mkT 0 4 2 1 1 (-3), PolyRefl.mkT 1 3 4 0 0 (-1), PolyRefl.mkT 2 2 0 3 1 (-12), PolyRefl.mkT 2 2 2 1 1 (6), PolyRefl.mkT 3 1 0 4 0 (-16), PolyRefl.mkT 3 1 2 2 0 (16), PolyRefl.mkT 3 1 4 0 0 (-1), PolyRefl.mkT 4 0 0 3 1 (-2), PolyRefl.mkT 4 0 2 1 1 (1)]
def cp387_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (6), PolyRefl.mkT 0 4 2 1 1 (-3), PolyRefl.mkT 1 3 4 0 0 (1), PolyRefl.mkT 2 2 0 3 1 (-12), PolyRefl.mkT 2 2 2 1 1 (6), PolyRefl.mkT 3 1 0 4 0 (16), PolyRefl.mkT 3 1 2 2 0 (-16), PolyRefl.mkT 3 1 4 0 0 (1), PolyRefl.mkT 4 0 0 3 1 (-2), PolyRefl.mkT 4 0 2 1 1 (1)]
def cp388_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 8 0 (36), PolyRefl.mkT 0 8 2 6 0 (-72), PolyRefl.mkT 0 8 4 4 0 (45), PolyRefl.mkT 0 8 6 2 0 (-9), PolyRefl.mkT 2 6 0 8 0 (-144), PolyRefl.mkT 2 6 2 6 0 (288), PolyRefl.mkT 2 6 4 4 0 (-180), PolyRefl.mkT 2 6 6 2 0 (36), PolyRefl.mkT 2 6 8 0 0 (1), PolyRefl.mkT 4 4 0 8 0 (120), PolyRefl.mkT 4 4 2 6 0 (-240), PolyRefl.mkT 4 4 4 4 0 (182), PolyRefl.mkT 4 4 6 2 0 (-62), PolyRefl.mkT 4 4 8 0 0 (2), PolyRefl.mkT 6 2 0 8 0 (304), PolyRefl.mkT 6 2 2 6 0 (-608), PolyRefl.mkT 6 2 4 4 0 (348), PolyRefl.mkT 6 2 6 2 0 (-44), PolyRefl.mkT 6 2 8 0 0 (1), PolyRefl.mkT 8 0 0 8 0 (4), PolyRefl.mkT 8 0 2 6 0 (-8), PolyRefl.mkT 8 0 4 4 0 (5), PolyRefl.mkT 8 0 6 2 0 (-1)]
def cp389_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 0 0 (46656), PolyRefl.mkT 2 22 0 0 0 (-1430784), PolyRefl.mkT 4 20 0 0 0 (19446912), PolyRefl.mkT 6 18 0 0 0 (-149831936), PolyRefl.mkT 8 16 0 0 0 (699229632), PolyRefl.mkT 10 14 0 0 0 (-1948445184), PolyRefl.mkT 12 12 0 0 0 (2953072384), PolyRefl.mkT 14 10 0 0 0 (-1948445184), PolyRefl.mkT 16 8 0 0 0 (699229632), PolyRefl.mkT 18 6 0 0 0 (-149831936), PolyRefl.mkT 20 4 0 0 0 (19446912), PolyRefl.mkT 22 2 0 0 0 (-1430784), PolyRefl.mkT 24 0 0 0 0 (46656)]
def cp390_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 4 0 (46656), PolyRefl.mkT 0 24 2 2 0 (-46656), PolyRefl.mkT 2 22 0 4 0 (-1140480), PolyRefl.mkT 2 22 2 2 0 (1140480), PolyRefl.mkT 2 22 4 0 0 (20736), PolyRefl.mkT 4 20 0 4 0 (12060288), PolyRefl.mkT 4 20 2 2 0 (-12060288), PolyRefl.mkT 4 20 4 0 0 (-294912), PolyRefl.mkT 6 18 0 4 0 (-68951808), PolyRefl.mkT 6 18 2 2 0 (68951808), PolyRefl.mkT 6 18 4 0 0 (1352448), PolyRefl.mkT 8 16 0 4 0 (219347904), PolyRefl.mkT 8 16 2 2 0 (-219347904), PolyRefl.mkT 8 16 4 0 0 (880640), PolyRefl.mkT 10 14 0 4 0 (-339090944), PolyRefl.mkT 10 14 2 2 0 (339090944), PolyRefl.mkT 10 14 4 0 0 (-26949120), PolyRefl.mkT 12 12 0 4 0 (76051200), PolyRefl.mkT 12 12 2 2 0 (-76051200), PolyRefl.mkT 12 12 4 0 0 (86700032), PolyRefl.mkT 14 10 0 4 0 (400792064), PolyRefl.mkT 14 10 2 2 0 (-400792064), PolyRefl.mkT 14 10 4 0 0 (-98621952), PolyRefl.mkT 16 8 0 4 0 (-247426624), PolyRefl.mkT 16 8 2 2 0 (247426624), PolyRefl.mkT 16 8 4 0 0 (45895680), PolyRefl.mkT 18 6 0 4 0 (61187328), PolyRefl.mkT 18 6 2 2 0 (-61187328), PolyRefl.mkT 18 6 4 0 0 (-9980672), PolyRefl.mkT 20 4 0 4 0 (-7000448), PolyRefl.mkT 20 4 2 2 0 (7000448), PolyRefl.mkT 20 4 4 0 0 (1036288), PolyRefl.mkT 22 2 0 4 0 (288000), PolyRefl.mkT 22 2 2 2 0 (-288000), PolyRefl.mkT 22 2 4 0 0 (-39168), PolyRefl.mkT 24 0 0 4 0 (5184), PolyRefl.mkT 24 0 2 2 0 (-5184)]
def cp391_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 5 (-24), PolyRefl.mkT 0 4 0 3 3 (80), PolyRefl.mkT 0 4 0 5 1 (-24), PolyRefl.mkT 1 3 0 0 6 (24), PolyRefl.mkT 1 3 0 2 4 (-360), PolyRefl.mkT 1 3 0 4 2 (360), PolyRefl.mkT 1 3 0 6 0 (-24), PolyRefl.mkT 3 1 0 0 6 (-8), PolyRefl.mkT 3 1 0 2 4 (120), PolyRefl.mkT 3 1 0 4 2 (-120), PolyRefl.mkT 3 1 0 6 0 (8), PolyRefl.mkT 4 0 0 1 5 (24), PolyRefl.mkT 4 0 0 3 3 (-80), PolyRefl.mkT 4 0 0 5 1 (24)]
def cp392_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-24), PolyRefl.mkT 0 4 0 3 1 (104), PolyRefl.mkT 0 4 2 1 1 (-24), PolyRefl.mkT 1 3 0 0 4 (24), PolyRefl.mkT 1 3 0 2 2 (-384), PolyRefl.mkT 1 3 0 4 0 (744), PolyRefl.mkT 1 3 2 0 2 (24), PolyRefl.mkT 1 3 2 2 0 (-408), PolyRefl.mkT 1 3 4 0 0 (24), PolyRefl.mkT 3 1 0 0 4 (-8), PolyRefl.mkT 3 1 0 2 2 (128), PolyRefl.mkT 3 1 0 4 0 (-248), PolyRefl.mkT 3 1 2 0 2 (-8), PolyRefl.mkT 3 1 2 2 0 (136), PolyRefl.mkT 3 1 4 0 0 (-8), PolyRefl.mkT 4 0 0 1 3 (24), PolyRefl.mkT 4 0 0 3 1 (-104), PolyRefl.mkT 4 0 2 1 1 (24)]
def cp393_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (-16), PolyRefl.mkT 0 4 2 3 1 (16), PolyRefl.mkT 0 4 4 1 1 (-3), PolyRefl.mkT 1 3 0 6 0 (-96), PolyRefl.mkT 1 3 2 4 0 (144), PolyRefl.mkT 1 3 4 2 0 (-54), PolyRefl.mkT 1 3 6 0 0 (3), PolyRefl.mkT 3 1 0 6 0 (32), PolyRefl.mkT 3 1 2 4 0 (-48), PolyRefl.mkT 3 1 4 2 0 (18), PolyRefl.mkT 3 1 6 0 0 (-1), PolyRefl.mkT 4 0 0 5 1 (16), PolyRefl.mkT 4 0 2 3 1 (-16), PolyRefl.mkT 4 0 4 1 1 (3)]
def cp394_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (-16), PolyRefl.mkT 0 4 2 3 1 (16), PolyRefl.mkT 0 4 4 1 1 (-3), PolyRefl.mkT 1 3 0 6 0 (96), PolyRefl.mkT 1 3 2 4 0 (-144), PolyRefl.mkT 1 3 4 2 0 (54), PolyRefl.mkT 1 3 6 0 0 (-3), PolyRefl.mkT 3 1 0 6 0 (-32), PolyRefl.mkT 3 1 2 4 0 (48), PolyRefl.mkT 3 1 4 2 0 (-18), PolyRefl.mkT 3 1 6 0 0 (1), PolyRefl.mkT 4 0 0 5 1 (16), PolyRefl.mkT 4 0 2 3 1 (-16), PolyRefl.mkT 4 0 4 1 1 (3)]
def cp395_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 0 6 (4), PolyRefl.mkT 0 3 0 2 4 (-60), PolyRefl.mkT 0 3 0 4 2 (60), PolyRefl.mkT 0 3 0 6 0 (-4), PolyRefl.mkT 1 2 0 1 5 (-72), PolyRefl.mkT 1 2 0 3 3 (240), PolyRefl.mkT 1 2 0 5 1 (-72), PolyRefl.mkT 2 1 0 0 6 (4), PolyRefl.mkT 2 1 0 2 4 (-60), PolyRefl.mkT 2 1 0 4 2 (60), PolyRefl.mkT 2 1 0 6 0 (-4), PolyRefl.mkT 3 0 0 1 5 (24), PolyRefl.mkT 3 0 0 3 3 (-80), PolyRefl.mkT 3 0 0 5 1 (24)]
def cp396_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 0 4 (4), PolyRefl.mkT 0 3 0 2 2 (-64), PolyRefl.mkT 0 3 0 4 0 (124), PolyRefl.mkT 0 3 2 0 2 (4), PolyRefl.mkT 0 3 2 2 0 (-68), PolyRefl.mkT 0 3 4 0 0 (4), PolyRefl.mkT 1 2 0 1 3 (-72), PolyRefl.mkT 1 2 0 3 1 (312), PolyRefl.mkT 1 2 2 1 1 (-72), PolyRefl.mkT 2 1 0 0 4 (4), PolyRefl.mkT 2 1 0 2 2 (-64), PolyRefl.mkT 2 1 0 4 0 (124), PolyRefl.mkT 2 1 2 0 2 (4), PolyRefl.mkT 2 1 2 2 0 (-68), PolyRefl.mkT 2 1 4 0 0 (4), PolyRefl.mkT 3 0 0 1 3 (24), PolyRefl.mkT 3 0 0 3 1 (-104), PolyRefl.mkT 3 0 2 1 1 (24)]
def cp397_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 6 0 (-32), PolyRefl.mkT 0 3 2 4 0 (48), PolyRefl.mkT 0 3 4 2 0 (-18), PolyRefl.mkT 0 3 6 0 0 (1), PolyRefl.mkT 1 2 0 5 1 (-96), PolyRefl.mkT 1 2 2 3 1 (96), PolyRefl.mkT 1 2 4 1 1 (-18), PolyRefl.mkT 2 1 0 6 0 (-32), PolyRefl.mkT 2 1 2 4 0 (48), PolyRefl.mkT 2 1 4 2 0 (-18), PolyRefl.mkT 2 1 6 0 0 (1), PolyRefl.mkT 3 0 0 5 1 (32), PolyRefl.mkT 3 0 2 3 1 (-32), PolyRefl.mkT 3 0 4 1 1 (6)]
def cp398_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 3 0 6 0 (32), PolyRefl.mkT 0 3 2 4 0 (-48), PolyRefl.mkT 0 3 4 2 0 (18), PolyRefl.mkT 0 3 6 0 0 (-1), PolyRefl.mkT 1 2 0 5 1 (-96), PolyRefl.mkT 1 2 2 3 1 (96), PolyRefl.mkT 1 2 4 1 1 (-18), PolyRefl.mkT 2 1 0 6 0 (32), PolyRefl.mkT 2 1 2 4 0 (-48), PolyRefl.mkT 2 1 4 2 0 (18), PolyRefl.mkT 2 1 6 0 0 (-1), PolyRefl.mkT 3 0 0 5 1 (32), PolyRefl.mkT 3 0 2 3 1 (-32), PolyRefl.mkT 3 0 4 1 1 (6)]
def cp399_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 12 0 0 (-1), PolyRefl.mkT 2 22 12 0 0 (-44), PolyRefl.mkT 4 20 12 0 0 (1182), PolyRefl.mkT 6 18 12 0 0 (-10620), PolyRefl.mkT 8 16 12 0 0 (47761), PolyRefl.mkT 10 14 12 0 0 (-119384), PolyRefl.mkT 12 12 12 0 0 (166308), PolyRefl.mkT 14 10 12 0 0 (-119384), PolyRefl.mkT 16 8 12 0 0 (47761), PolyRefl.mkT 18 6 12 0 0 (-10620), PolyRefl.mkT 20 4 12 0 0 (1182), PolyRefl.mkT 22 2 12 0 0 (-44), PolyRefl.mkT 24 0 12 0 0 (-1)]
def cp400_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 4 (-8), PolyRefl.mkT 0 4 0 2 2 (16), PolyRefl.mkT 0 4 0 4 0 (-8), PolyRefl.mkT 2 2 0 0 4 (32), PolyRefl.mkT 2 2 0 2 2 (-128), PolyRefl.mkT 2 2 0 4 0 (32), PolyRefl.mkT 4 0 0 0 4 (-8), PolyRefl.mkT 4 0 0 2 2 (16), PolyRefl.mkT 4 0 0 4 0 (-8)]
def cp401_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (-8), PolyRefl.mkT 0 4 0 2 0 (24), PolyRefl.mkT 0 4 2 0 0 (-8), PolyRefl.mkT 2 2 0 0 2 (32), PolyRefl.mkT 2 2 0 2 0 (-160), PolyRefl.mkT 2 2 2 0 0 (32), PolyRefl.mkT 4 0 0 0 2 (-8), PolyRefl.mkT 4 0 0 2 0 (24), PolyRefl.mkT 4 0 2 0 0 (-8)]
def cp402_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 4 0 (-4), PolyRefl.mkT 0 4 2 2 0 (4), PolyRefl.mkT 0 4 4 0 0 (-1), PolyRefl.mkT 2 2 0 4 0 (24), PolyRefl.mkT 2 2 2 2 0 (-24), PolyRefl.mkT 2 2 4 0 0 (4), PolyRefl.mkT 4 0 0 4 0 (-4), PolyRefl.mkT 4 0 2 2 0 (4), PolyRefl.mkT 4 0 4 0 0 (-1)]
def cp403_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 2 0 (-256), PolyRefl.mkT 0 6 2 0 0 (128), PolyRefl.mkT 2 4 0 2 0 (1792), PolyRefl.mkT 2 4 2 0 0 (-896), PolyRefl.mkT 4 2 0 2 0 (-1792), PolyRefl.mkT 4 2 2 0 0 (896), PolyRefl.mkT 6 0 0 2 0 (256), PolyRefl.mkT 6 0 2 0 0 (-128)]
def cp404_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 4 2 0 (-12), PolyRefl.mkT 0 10 6 0 0 (5), PolyRefl.mkT 2 8 4 2 0 (124), PolyRefl.mkT 2 8 6 0 0 (-51), PolyRefl.mkT 4 6 4 2 0 (-376), PolyRefl.mkT 4 6 6 0 0 (162), PolyRefl.mkT 6 4 4 2 0 (376), PolyRefl.mkT 6 4 6 0 0 (-214), PolyRefl.mkT 8 2 4 2 0 (-124), PolyRefl.mkT 8 2 6 0 0 (73), PolyRefl.mkT 10 0 4 2 0 (12), PolyRefl.mkT 10 0 6 0 0 (-7)]
def cp405_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 20 8 0 0 (144), PolyRefl.mkT 2 18 8 0 0 (-2976), PolyRefl.mkT 4 16 8 0 0 (24400), PolyRefl.mkT 6 14 8 0 0 (-102272), PolyRefl.mkT 8 12 8 0 0 (237600), PolyRefl.mkT 10 10 8 0 0 (-313792), PolyRefl.mkT 12 8 8 0 0 (237600), PolyRefl.mkT 14 6 8 0 0 (-102272), PolyRefl.mkT 16 4 8 0 0 (24400), PolyRefl.mkT 18 2 8 0 0 (-2976), PolyRefl.mkT 20 0 8 0 0 (144)]
def cp406_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 14 4 2 0 (48), PolyRefl.mkT 0 14 6 0 0 (-28), PolyRefl.mkT 2 12 4 2 0 (-784), PolyRefl.mkT 2 12 6 0 0 (460), PolyRefl.mkT 4 10 4 2 0 (4528), PolyRefl.mkT 4 10 6 0 0 (-2636), PolyRefl.mkT 6 8 4 2 0 (-11024), PolyRefl.mkT 6 8 6 0 0 (6076), PolyRefl.mkT 8 6 4 2 0 (11024), PolyRefl.mkT 8 6 6 0 0 (-4948), PolyRefl.mkT 10 4 4 2 0 (-4528), PolyRefl.mkT 10 4 6 0 0 (1892), PolyRefl.mkT 12 2 4 2 0 (784), PolyRefl.mkT 12 2 6 0 0 (-324), PolyRefl.mkT 14 0 4 2 0 (-48), PolyRefl.mkT 14 0 6 0 0 (20)]
def cp407_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (24), PolyRefl.mkT 0 4 0 3 1 (-24), PolyRefl.mkT 1 3 0 0 4 (-8), PolyRefl.mkT 1 3 0 2 2 (-16), PolyRefl.mkT 1 3 0 4 0 (-8), PolyRefl.mkT 2 2 0 1 3 (-48), PolyRefl.mkT 2 2 0 3 1 (48), PolyRefl.mkT 3 1 0 0 4 (-8), PolyRefl.mkT 3 1 0 2 2 (112), PolyRefl.mkT 3 1 0 4 0 (-8), PolyRefl.mkT 4 0 0 1 3 (-8), PolyRefl.mkT 4 0 0 3 1 (8)]
def cp408_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (24), PolyRefl.mkT 1 3 0 0 2 (-8), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 1 3 2 0 0 (-8), PolyRefl.mkT 2 2 0 1 1 (-48), PolyRefl.mkT 3 1 0 0 2 (-8), PolyRefl.mkT 3 1 0 2 0 (120), PolyRefl.mkT 3 1 2 0 0 (-8), PolyRefl.mkT 4 0 0 1 1 (-8)]
def cp409_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-6), PolyRefl.mkT 0 4 2 1 1 (3), PolyRefl.mkT 1 3 4 0 0 (-1), PolyRefl.mkT 2 2 0 3 1 (12), PolyRefl.mkT 2 2 2 1 1 (-6), PolyRefl.mkT 3 1 0 4 0 (-16), PolyRefl.mkT 3 1 2 2 0 (16), PolyRefl.mkT 3 1 4 0 0 (-1), PolyRefl.mkT 4 0 0 3 1 (2), PolyRefl.mkT 4 0 2 1 1 (-1)]
def cp410_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-6), PolyRefl.mkT 0 4 2 1 1 (3), PolyRefl.mkT 1 3 4 0 0 (1), PolyRefl.mkT 2 2 0 3 1 (12), PolyRefl.mkT 2 2 2 1 1 (-6), PolyRefl.mkT 3 1 0 4 0 (16), PolyRefl.mkT 3 1 2 2 0 (-16), PolyRefl.mkT 3 1 4 0 0 (1), PolyRefl.mkT 4 0 0 3 1 (2), PolyRefl.mkT 4 0 2 1 1 (-1)]
def cp411_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (6), PolyRefl.mkT 0 4 0 2 0 (-6), PolyRefl.mkT 1 3 0 1 1 (16), PolyRefl.mkT 2 2 0 0 2 (-36), PolyRefl.mkT 2 2 0 2 0 (36), PolyRefl.mkT 3 1 0 1 1 (-16), PolyRefl.mkT 4 0 0 0 2 (6), PolyRefl.mkT 4 0 0 2 0 (-6)]
def cp412_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 0 (6), PolyRefl.mkT 2 2 0 0 0 (-36), PolyRefl.mkT 4 0 0 0 0 (6)]
def cp413_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 54 20 0 0 (-3), PolyRefl.mkT 4 52 20 0 0 (382), PolyRefl.mkT 6 50 20 0 0 (-20911), PolyRefl.mkT 8 48 20 0 0 (650104), PolyRefl.mkT 10 46 20 0 0 (-12826962), PolyRefl.mkT 12 44 20 0 0 (170675900), PolyRefl.mkT 14 42 20 0 0 (-1591951010), PolyRefl.mkT 16 40 20 0 0 (10683625880), PolyRefl.mkT 18 38 20 0 0 (-52507950921), PolyRefl.mkT 20 36 20 0 0 (191234315682), PolyRefl.mkT 22 34 20 0 0 (-519993770917), PolyRefl.mkT 24 32 20 0 0 (1060302080752), PolyRefl.mkT 26 30 20 0 0 (-1624916734828), PolyRefl.mkT 28 28 20 0 0 (1873263813704), PolyRefl.mkT 30 26 20 0 0 (-1624916734828), PolyRefl.mkT 32 24 20 0 0 (1060302080752), PolyRefl.mkT 34 22 20 0 0 (-519993770917), PolyRefl.mkT 36 20 20 0 0 (191234315682), PolyRefl.mkT 38 18 20 0 0 (-52507950921), PolyRefl.mkT 40 16 20 0 0 (10683625880), PolyRefl.mkT 42 14 20 0 0 (-1591951010), PolyRefl.mkT 44 12 20 0 0 (170675900), PolyRefl.mkT 46 10 20 0 0 (-12826962), PolyRefl.mkT 48 8 20 0 0 (650104), PolyRefl.mkT 50 6 20 0 0 (-20911), PolyRefl.mkT 52 4 20 0 0 (382), PolyRefl.mkT 54 2 20 0 0 (-3)]
def cp414_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 16 4 4 0 (1), PolyRefl.mkT 0 16 6 2 0 (-1), PolyRefl.mkT 2 14 4 4 0 (-40), PolyRefl.mkT 2 14 6 2 0 (40), PolyRefl.mkT 2 14 8 0 0 (1), PolyRefl.mkT 4 12 4 4 0 (444), PolyRefl.mkT 4 12 6 2 0 (-444), PolyRefl.mkT 4 12 8 0 0 (-30), PolyRefl.mkT 6 10 4 4 0 (-1944), PolyRefl.mkT 6 10 6 2 0 (1944), PolyRefl.mkT 6 10 8 0 0 (127), PolyRefl.mkT 8 8 4 4 0 (3334), PolyRefl.mkT 8 8 6 2 0 (-3334), PolyRefl.mkT 8 8 8 0 0 (-196), PolyRefl.mkT 10 6 4 4 0 (-1944), PolyRefl.mkT 10 6 6 2 0 (1944), PolyRefl.mkT 10 6 8 0 0 (127), PolyRefl.mkT 12 4 4 4 0 (444), PolyRefl.mkT 12 4 6 2 0 (-444), PolyRefl.mkT 12 4 8 0 0 (-30), PolyRefl.mkT 14 2 4 4 0 (-40), PolyRefl.mkT 14 2 6 2 0 (40), PolyRefl.mkT 14 2 8 0 0 (1), PolyRefl.mkT 16 0 4 4 0 (1), PolyRefl.mkT 16 0 6 2 0 (-1)]
def cp415_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 48 12 0 0 (1), PolyRefl.mkT 2 46 12 0 0 (-120), PolyRefl.mkT 4 44 12 0 0 (6132), PolyRefl.mkT 6 42 12 0 0 (-176392), PolyRefl.mkT 8 40 12 0 0 (3199170), PolyRefl.mkT 10 38 12 0 0 (-38972328), PolyRefl.mkT 12 36 12 0 0 (331371300), PolyRefl.mkT 14 34 12 0 0 (-2011968984), PolyRefl.mkT 16 32 12 0 0 (8827572207), PolyRefl.mkT 18 30 12 0 0 (-28095047472), PolyRefl.mkT 20 28 12 0 0 (64722661608), PolyRefl.mkT 22 26 12 0 0 (-107288593872), PolyRefl.mkT 24 24 12 0 0 (127116674716), PolyRefl.mkT 26 22 12 0 0 (-107288593872), PolyRefl.mkT 28 20 12 0 0 (64722661608), PolyRefl.mkT 30 18 12 0 0 (-28095047472), PolyRefl.mkT 32 16 12 0 0 (8827572207), PolyRefl.mkT 34 14 12 0 0 (-2011968984), PolyRefl.mkT 36 12 12 0 0 (331371300), PolyRefl.mkT 38 10 12 0 0 (-38972328), PolyRefl.mkT 40 8 12 0 0 (3199170), PolyRefl.mkT 42 6 12 0 0 (-176392), PolyRefl.mkT 44 4 12 0 0 (6132), PolyRefl.mkT 46 2 12 0 0 (-120), PolyRefl.mkT 48 0 12 0 0 (1)]
def cp416_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 40 8 4 0 (16), PolyRefl.mkT 0 40 10 2 0 (-16), PolyRefl.mkT 0 40 12 0 0 (4), PolyRefl.mkT 2 38 8 4 0 (-1472), PolyRefl.mkT 2 38 10 2 0 (1472), PolyRefl.mkT 2 38 12 0 0 (-384), PolyRefl.mkT 4 36 8 4 0 (55776), PolyRefl.mkT 4 36 10 2 0 (-55776), PolyRefl.mkT 4 36 12 0 0 (15256), PolyRefl.mkT 6 34 8 4 0 (-1157056), PolyRefl.mkT 6 34 10 2 0 (1157056), PolyRefl.mkT 6 34 12 0 0 (-331648), PolyRefl.mkT 8 32 8 4 0 (14843600), PolyRefl.mkT 8 32 10 2 0 (-14843600), PolyRefl.mkT 8 32 12 0 0 (4422324), PolyRefl.mkT 10 30 8 4 0 (-125379328), PolyRefl.mkT 10 30 10 2 0 (125379328), PolyRefl.mkT 10 30 12 0 0 (-38394880), PolyRefl.mkT 12 28 8 4 0 (719814272), PolyRefl.mkT 12 28 10 2 0 (-719814272), PolyRefl.mkT 12 28 12 0 0 (224032544), PolyRefl.mkT 14 26 8 4 0 (-2843373312), PolyRefl.mkT 14 26 10 2 0 (2843373312), PolyRefl.mkT 14 26 12 0 0 (-890830848), PolyRefl.mkT 16 24 8 4 0 (7714238752), PolyRefl.mkT 16 24 10 2 0 (-7714238752), PolyRefl.mkT 16 24 12 0 0 (2416777544), PolyRefl.mkT 18 22 8 4 0 (-14205763712), PolyRefl.mkT 18 22 10 2 0 (14205763712), PolyRefl.mkT 18 22 12 0 0 (-4438102784), PolyRefl.mkT 20 20 8 4 0 (17470222144), PolyRefl.mkT 20 20 10 2 0 (-17470222144), PolyRefl.mkT 20 20 12 0 0 (5449020048), PolyRefl.mkT 22 18 8 4 0 (-14205763712), PolyRefl.mkT 22 18 10 2 0 (14205763712), PolyRefl.mkT 22 18 12 0 0 (-4438102784), PolyRefl.mkT 24 16 8 4 0 (7714238752), PolyRefl.mkT 24 16 10 2 0 (-7714238752), PolyRefl.mkT 24 16 12 0 0 (2416777544), PolyRefl.mkT 26 14 8 4 0 (-2843373312), PolyRefl.mkT 26 14 10 2 0 (2843373312), PolyRefl.mkT 26 14 12 0 0 (-890830848), PolyRefl.mkT 28 12 8 4 0 (719814272), PolyRefl.mkT 28 12 10 2 0 (-719814272), PolyRefl.mkT 28 12 12 0 0 (224032544), PolyRefl.mkT 30 10 8 4 0 (-125379328), PolyRefl.mkT 30 10 10 2 0 (125379328), PolyRefl.mkT 30 10 12 0 0 (-38394880), PolyRefl.mkT 32 8 8 4 0 (14843600), PolyRefl.mkT 32 8 10 2 0 (-14843600), PolyRefl.mkT 32 8 12 0 0 (4422324), PolyRefl.mkT 34 6 8 4 0 (-1157056), PolyRefl.mkT 34 6 10 2 0 (1157056), PolyRefl.mkT 34 6 12 0 0 (-331648), PolyRefl.mkT 36 4 8 4 0 (55776), PolyRefl.mkT 36 4 10 2 0 (-55776), PolyRefl.mkT 36 4 12 0 0 (15256), PolyRefl.mkT 38 2 8 4 0 (-1472), PolyRefl.mkT 38 2 10 2 0 (1472), PolyRefl.mkT 38 2 12 0 0 (-384), PolyRefl.mkT 40 0 8 4 0 (16), PolyRefl.mkT 40 0 10 2 0 (-16), PolyRefl.mkT 40 0 12 0 0 (4)]
def cp417_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 30 8 0 0 (405), PolyRefl.mkT 4 28 8 0 0 (-22770), PolyRefl.mkT 6 26 8 0 0 (461439), PolyRefl.mkT 8 24 8 0 0 (-4916852), PolyRefl.mkT 10 22 8 0 0 (31756109), PolyRefl.mkT 12 20 8 0 0 (-132387278), PolyRefl.mkT 14 18 8 0 0 (364651375), PolyRefl.mkT 16 16 8 0 0 (-650387800), PolyRefl.mkT 18 14 8 0 0 (689145079), PolyRefl.mkT 20 12 8 0 0 (-390392942), PolyRefl.mkT 22 10 8 0 0 (125292245), PolyRefl.mkT 24 8 8 0 0 (-23725556), PolyRefl.mkT 26 6 8 0 0 (2621223), PolyRefl.mkT 28 4 8 0 0 (-154386), PolyRefl.mkT 30 2 8 0 0 (3645)]
def cp418_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-8), PolyRefl.mkT 0 4 0 3 1 (8), PolyRefl.mkT 1 3 0 0 4 (-8), PolyRefl.mkT 1 3 0 2 2 (-16), PolyRefl.mkT 1 3 0 4 0 (-8), PolyRefl.mkT 2 2 0 1 3 (-48), PolyRefl.mkT 2 2 0 3 1 (48), PolyRefl.mkT 3 1 0 0 4 (-8), PolyRefl.mkT 3 1 0 2 2 (112), PolyRefl.mkT 3 1 0 4 0 (-8), PolyRefl.mkT 4 0 0 1 3 (24), PolyRefl.mkT 4 0 0 3 1 (-24)]
def cp419_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-8), PolyRefl.mkT 1 3 0 0 2 (-8), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 1 3 2 0 0 (-8), PolyRefl.mkT 2 2 0 1 1 (-48), PolyRefl.mkT 3 1 0 0 2 (-8), PolyRefl.mkT 3 1 0 2 0 (120), PolyRefl.mkT 3 1 2 0 0 (-8), PolyRefl.mkT 4 0 0 1 1 (24)]
def cp420_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (2), PolyRefl.mkT 0 4 2 1 1 (-1), PolyRefl.mkT 1 3 4 0 0 (-1), PolyRefl.mkT 2 2 0 3 1 (12), PolyRefl.mkT 2 2 2 1 1 (-6), PolyRefl.mkT 3 1 0 4 0 (-16), PolyRefl.mkT 3 1 2 2 0 (16), PolyRefl.mkT 3 1 4 0 0 (-1), PolyRefl.mkT 4 0 0 3 1 (-6), PolyRefl.mkT 4 0 2 1 1 (3)]
def cp421_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 6 0 (4), PolyRefl.mkT 0 8 2 4 0 (-4), PolyRefl.mkT 0 8 4 2 0 (1), PolyRefl.mkT 2 6 0 6 0 (48), PolyRefl.mkT 2 6 2 4 0 (-48), PolyRefl.mkT 2 6 4 2 0 (12), PolyRefl.mkT 4 4 0 6 0 (120), PolyRefl.mkT 4 4 2 4 0 (-120), PolyRefl.mkT 4 4 4 2 0 (30), PolyRefl.mkT 6 2 0 6 0 (-144), PolyRefl.mkT 6 2 2 4 0 (144), PolyRefl.mkT 6 2 4 2 0 (-36), PolyRefl.mkT 8 0 0 6 0 (36), PolyRefl.mkT 8 0 2 4 0 (-36), PolyRefl.mkT 8 0 4 2 0 (9)]
def cp422_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (2), PolyRefl.mkT 0 4 2 1 1 (-1), PolyRefl.mkT 1 3 4 0 0 (1), PolyRefl.mkT 2 2 0 3 1 (12), PolyRefl.mkT 2 2 2 1 1 (-6), PolyRefl.mkT 3 1 0 4 0 (16), PolyRefl.mkT 3 1 2 2 0 (-16), PolyRefl.mkT 3 1 4 0 0 (1), PolyRefl.mkT 4 0 0 3 1 (-6), PolyRefl.mkT 4 0 2 1 1 (3)]
def cp423_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 8 0 (4), PolyRefl.mkT 0 8 2 6 0 (-8), PolyRefl.mkT 0 8 4 4 0 (5), PolyRefl.mkT 0 8 6 2 0 (-1), PolyRefl.mkT 2 6 0 8 0 (48), PolyRefl.mkT 2 6 2 6 0 (-96), PolyRefl.mkT 2 6 4 4 0 (60), PolyRefl.mkT 2 6 6 2 0 (-12), PolyRefl.mkT 2 6 8 0 0 (1), PolyRefl.mkT 4 4 0 8 0 (120), PolyRefl.mkT 4 4 2 6 0 (-240), PolyRefl.mkT 4 4 4 4 0 (182), PolyRefl.mkT 4 4 6 2 0 (-62), PolyRefl.mkT 4 4 8 0 0 (2), PolyRefl.mkT 6 2 0 8 0 (112), PolyRefl.mkT 6 2 2 6 0 (-224), PolyRefl.mkT 6 2 4 4 0 (108), PolyRefl.mkT 6 2 6 2 0 (4), PolyRefl.mkT 6 2 8 0 0 (1), PolyRefl.mkT 8 0 0 8 0 (36), PolyRefl.mkT 8 0 2 6 0 (-72), PolyRefl.mkT 8 0 4 4 0 (45), PolyRefl.mkT 8 0 6 2 0 (-9)]
def cp424_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 4 0 (5184), PolyRefl.mkT 0 24 2 2 0 (-5184), PolyRefl.mkT 2 22 0 4 0 (-43776), PolyRefl.mkT 2 22 2 2 0 (43776), PolyRefl.mkT 2 22 4 0 0 (2304), PolyRefl.mkT 4 20 0 4 0 (-217472), PolyRefl.mkT 4 20 2 2 0 (217472), PolyRefl.mkT 4 20 4 0 0 (40960), PolyRefl.mkT 6 18 0 4 0 (3994880), PolyRefl.mkT 6 18 2 2 0 (-3994880), PolyRefl.mkT 6 18 4 0 0 (-1029376), PolyRefl.mkT 8 16 0 4 0 (-13790784), PolyRefl.mkT 8 16 2 2 0 (13790784), PolyRefl.mkT 8 16 4 0 0 (8597504), PolyRefl.mkT 10 14 0 4 0 (-5309952), PolyRefl.mkT 10 14 2 2 0 (5309952), PolyRefl.mkT 10 14 4 0 0 (-36488704), PolyRefl.mkT 12 12 0 4 0 (76051200), PolyRefl.mkT 12 12 2 2 0 (-76051200), PolyRefl.mkT 12 12 4 0 0 (86700032), PolyRefl.mkT 14 10 0 4 0 (67011072), PolyRefl.mkT 14 10 2 2 0 (-67011072), PolyRefl.mkT 14 10 4 0 0 (-89082368), PolyRefl.mkT 16 8 0 4 0 (-14287936), PolyRefl.mkT 16 8 2 2 0 (14287936), PolyRefl.mkT 16 8 4 0 0 (38178816), PolyRefl.mkT 18 6 0 4 0 (-11759360), PolyRefl.mkT 18 6 2 2 0 (11759360), PolyRefl.mkT 18 6 4 0 0 (-7598848), PolyRefl.mkT 20 4 0 4 0 (5277312), PolyRefl.mkT 20 4 2 2 0 (-5277312), PolyRefl.mkT 20 4 4 0 0 (700416), PolyRefl.mkT 22 2 0 4 0 (-808704), PolyRefl.mkT 22 2 2 2 0 (808704), PolyRefl.mkT 22 2 4 0 0 (-20736), PolyRefl.mkT 24 0 0 4 0 (46656), PolyRefl.mkT 24 0 2 2 0 (-46656)]
def cp425_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 44 16 0 0 (-1), PolyRefl.mkT 2 42 16 0 0 (146), PolyRefl.mkT 4 40 16 0 0 (-8263), PolyRefl.mkT 6 38 16 0 0 (244140), PolyRefl.mkT 8 36 16 0 0 (-4266227), PolyRefl.mkT 10 34 16 0 0 (47557802), PolyRefl.mkT 12 32 16 0 0 (-354205429), PolyRefl.mkT 14 30 16 0 0 (1810011664), PolyRefl.mkT 16 28 16 0 0 (-6430059162), PolyRefl.mkT 18 26 16 0 0 (15946280132), PolyRefl.mkT 20 24 16 0 0 (-27570150710), PolyRefl.mkT 22 22 16 0 0 (33113386120), PolyRefl.mkT 24 20 16 0 0 (-27570150710), PolyRefl.mkT 26 18 16 0 0 (15946280132), PolyRefl.mkT 28 16 16 0 0 (-6430059162), PolyRefl.mkT 30 14 16 0 0 (1810011664), PolyRefl.mkT 32 12 16 0 0 (-354205429), PolyRefl.mkT 34 10 16 0 0 (47557802), PolyRefl.mkT 36 8 16 0 0 (-4266227), PolyRefl.mkT 38 6 16 0 0 (244140), PolyRefl.mkT 40 4 16 0 0 (-8263), PolyRefl.mkT 42 2 16 0 0 (146), PolyRefl.mkT 44 0 16 0 0 (-1)]
def cp426_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 4 (-2), PolyRefl.mkT 0 4 0 2 2 (20), PolyRefl.mkT 0 4 0 4 0 (-10), PolyRefl.mkT 2 2 0 0 4 (44), PolyRefl.mkT 2 2 0 2 2 (-120), PolyRefl.mkT 2 2 0 4 0 (28), PolyRefl.mkT 4 0 0 0 4 (-2), PolyRefl.mkT 4 0 0 2 2 (20), PolyRefl.mkT 4 0 0 4 0 (-10)]
def cp427_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 2 (-2), PolyRefl.mkT 0 4 0 2 0 (22), PolyRefl.mkT 0 4 2 0 0 (-2), PolyRefl.mkT 2 2 0 0 2 (44), PolyRefl.mkT 2 2 0 2 0 (-164), PolyRefl.mkT 2 2 2 0 0 (44), PolyRefl.mkT 4 0 0 0 2 (-2), PolyRefl.mkT 4 0 0 2 0 (22), PolyRefl.mkT 4 0 2 0 0 (-2)]
def cp428_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 4 0 (-16), PolyRefl.mkT 0 4 2 2 0 (12), PolyRefl.mkT 0 4 4 0 0 (-1), PolyRefl.mkT 2 2 0 4 0 (96), PolyRefl.mkT 2 2 2 2 0 (-104), PolyRefl.mkT 2 2 4 0 0 (22), PolyRefl.mkT 4 0 0 4 0 (-16), PolyRefl.mkT 4 0 2 2 0 (12), PolyRefl.mkT 4 0 4 0 0 (-1)]
def cp429_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 12 0 0 0 (-4096), PolyRefl.mkT 2 10 0 0 0 (73728), PolyRefl.mkT 4 8 0 0 0 (-454656), PolyRefl.mkT 6 6 0 0 0 (1032192), PolyRefl.mkT 8 4 0 0 0 (-454656), PolyRefl.mkT 10 2 0 0 0 (73728), PolyRefl.mkT 12 0 0 0 0 (-4096)]
def cp430_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 14 0 4 0 (1048576), PolyRefl.mkT 2 14 2 2 0 (-1310720), PolyRefl.mkT 2 14 4 0 0 (262144), PolyRefl.mkT 4 12 0 4 0 (-14680064), PolyRefl.mkT 4 12 2 2 0 (16252928), PolyRefl.mkT 4 12 4 0 0 (-1572864), PolyRefl.mkT 6 10 0 4 0 (66060288), PolyRefl.mkT 6 10 2 2 0 (-65798144), PolyRefl.mkT 6 10 4 0 0 (3932160), PolyRefl.mkT 8 8 0 4 0 (-104857600), PolyRefl.mkT 8 8 2 2 0 (101711872), PolyRefl.mkT 8 8 4 0 0 (-5242880), PolyRefl.mkT 10 6 0 4 0 (66060288), PolyRefl.mkT 10 6 2 2 0 (-65798144), PolyRefl.mkT 10 6 4 0 0 (3932160), PolyRefl.mkT 12 4 0 4 0 (-14680064), PolyRefl.mkT 12 4 2 2 0 (16252928), PolyRefl.mkT 12 4 4 0 0 (-1572864), PolyRefl.mkT 14 2 0 4 0 (1048576), PolyRefl.mkT 14 2 2 2 0 (-1310720), PolyRefl.mkT 14 2 4 0 0 (262144)]
def cp431_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 20 8 0 0 (-1), PolyRefl.mkT 2 18 6 2 0 (-64), PolyRefl.mkT 2 18 8 0 0 (94), PolyRefl.mkT 4 16 6 2 0 (1792), PolyRefl.mkT 4 16 8 0 0 (-2157), PolyRefl.mkT 6 14 6 2 0 (-4352), PolyRefl.mkT 6 14 8 0 0 (11752), PolyRefl.mkT 8 12 6 2 0 (-1792), PolyRefl.mkT 8 12 8 0 0 (-30354), PolyRefl.mkT 10 10 6 2 0 (8832), PolyRefl.mkT 10 10 8 0 0 (42356), PolyRefl.mkT 12 8 6 2 0 (-1792), PolyRefl.mkT 12 8 8 0 0 (-30354), PolyRefl.mkT 14 6 6 2 0 (-4352), PolyRefl.mkT 14 6 8 0 0 (11752), PolyRefl.mkT 16 4 6 2 0 (1792), PolyRefl.mkT 16 4 8 0 0 (-2157), PolyRefl.mkT 18 2 6 2 0 (-64), PolyRefl.mkT 18 2 8 0 0 (94), PolyRefl.mkT 20 0 8 0 0 (-1)]
def cp432_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 4 36 12 0 0 (4096), PolyRefl.mkT 6 34 12 0 0 (-229376), PolyRefl.mkT 8 32 12 0 0 (3768320), PolyRefl.mkT 10 30 12 0 0 (-15368192), PolyRefl.mkT 12 28 12 0 0 (11386880), PolyRefl.mkT 14 26 12 0 0 (47480832), PolyRefl.mkT 16 24 12 0 0 (-79527936), PolyRefl.mkT 18 22 12 0 0 (-31883264), PolyRefl.mkT 20 20 12 0 0 (128737280), PolyRefl.mkT 22 18 12 0 0 (-31883264), PolyRefl.mkT 24 16 12 0 0 (-79527936), PolyRefl.mkT 26 14 12 0 0 (47480832), PolyRefl.mkT 28 12 12 0 0 (11386880), PolyRefl.mkT 30 10 12 0 0 (-15368192), PolyRefl.mkT 32 8 12 0 0 (3768320), PolyRefl.mkT 34 6 12 0 0 (-229376), PolyRefl.mkT 36 4 12 0 0 (4096)]
def cp433_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 8 0 0 (-16), PolyRefl.mkT 2 22 6 2 0 (1024), PolyRefl.mkT 2 22 8 0 0 (832), PolyRefl.mkT 4 20 6 2 0 (-34816), PolyRefl.mkT 4 20 8 0 0 (-15392), PolyRefl.mkT 6 18 6 2 0 (242688), PolyRefl.mkT 6 18 8 0 0 (157248), PolyRefl.mkT 8 16 6 2 0 (-417792), PolyRefl.mkT 8 16 8 0 0 (-1195760), PolyRefl.mkT 10 14 6 2 0 (-243712), PolyRefl.mkT 10 14 8 0 0 (4019840), PolyRefl.mkT 12 12 6 2 0 (905216), PolyRefl.mkT 12 12 8 0 0 (-5999040), PolyRefl.mkT 14 10 6 2 0 (-243712), PolyRefl.mkT 14 10 8 0 0 (4019840), PolyRefl.mkT 16 8 6 2 0 (-417792), PolyRefl.mkT 16 8 8 0 0 (-1195760), PolyRefl.mkT 18 6 6 2 0 (242688), PolyRefl.mkT 18 6 8 0 0 (157248), PolyRefl.mkT 20 4 6 2 0 (-34816), PolyRefl.mkT 20 4 8 0 0 (-15392), PolyRefl.mkT 22 2 6 2 0 (1024), PolyRefl.mkT 22 2 8 0 0 (832), PolyRefl.mkT 24 0 8 0 0 (-16)]
def cp434_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 22 4 0 0 (-243), PolyRefl.mkT 4 20 4 0 0 (3690), PolyRefl.mkT 6 18 4 0 0 (-13775), PolyRefl.mkT 8 16 4 0 0 (-46664), PolyRefl.mkT 10 14 4 0 0 (490442), PolyRefl.mkT 12 12 4 0 0 (-1411076), PolyRefl.mkT 14 10 4 0 0 (1737050), PolyRefl.mkT 16 8 4 0 0 (-845000), PolyRefl.mkT 18 6 4 0 0 (186601), PolyRefl.mkT 20 4 4 0 0 (-18774), PolyRefl.mkT 22 2 4 0 0 (693)]
def cp435_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (12), PolyRefl.mkT 1 3 0 0 2 (8), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 2 2 0 1 1 (-24), PolyRefl.mkT 3 1 0 0 2 (8), PolyRefl.mkT 3 1 0 2 0 (-24), PolyRefl.mkT 4 0 0 1 1 (-4)]
def cp436_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 1 3 0 0 0 (8), PolyRefl.mkT 3 1 0 0 0 (8)]
def cp437_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (3), PolyRefl.mkT 1 3 2 0 0 (2), PolyRefl.mkT 2 2 0 1 1 (-6), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 3 1 2 0 0 (2), PolyRefl.mkT 4 0 0 1 1 (-1)]
def cp438_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (3), PolyRefl.mkT 1 3 2 0 0 (-2), PolyRefl.mkT 2 2 0 1 1 (-6), PolyRefl.mkT 3 1 0 2 0 (8), PolyRefl.mkT 3 1 2 0 0 (-2), PolyRefl.mkT 4 0 0 1 1 (-1)]
def cp439_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 4 0 (9), PolyRefl.mkT 0 8 2 2 0 (-9), PolyRefl.mkT 2 6 0 4 0 (-36), PolyRefl.mkT 2 6 2 2 0 (36), PolyRefl.mkT 2 6 4 0 0 (4), PolyRefl.mkT 4 4 0 4 0 (30), PolyRefl.mkT 4 4 2 2 0 (-62), PolyRefl.mkT 4 4 4 0 0 (8), PolyRefl.mkT 6 2 0 4 0 (76), PolyRefl.mkT 6 2 2 2 0 (-44), PolyRefl.mkT 6 2 4 0 0 (4), PolyRefl.mkT 8 0 0 4 0 (1), PolyRefl.mkT 8 0 2 2 0 (-1)]
def cp440_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 0 0 (36), PolyRefl.mkT 2 6 0 0 0 (-432), PolyRefl.mkT 4 4 0 0 0 (1368), PolyRefl.mkT 6 2 0 0 0 (-432), PolyRefl.mkT 8 0 0 0 0 (36)]
def cp441_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 1 (-6), PolyRefl.mkT 1 3 0 1 0 (8), PolyRefl.mkT 2 2 0 0 1 (36), PolyRefl.mkT 3 1 0 1 0 (-8), PolyRefl.mkT 4 0 0 0 1 (-6)]
def cp442_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 1 (-6), PolyRefl.mkT 1 3 0 1 0 (-8), PolyRefl.mkT 2 2 0 0 1 (36), PolyRefl.mkT 3 1 0 1 0 (8), PolyRefl.mkT 4 0 0 0 1 (-6)]
def cp443_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 2 0 (9), PolyRefl.mkT 0 8 2 0 0 (-9), PolyRefl.mkT 2 6 0 2 0 (-92), PolyRefl.mkT 2 6 2 0 0 (108), PolyRefl.mkT 4 4 0 2 0 (310), PolyRefl.mkT 4 4 2 0 0 (-342), PolyRefl.mkT 6 2 0 2 0 (-92), PolyRefl.mkT 6 2 2 0 0 (108), PolyRefl.mkT 8 0 0 2 0 (9), PolyRefl.mkT 8 0 2 0 0 (-9)]
def cp444_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 16 0 2 0 (81), PolyRefl.mkT 2 14 0 2 0 (-1152), PolyRefl.mkT 2 14 2 0 0 (-144), PolyRefl.mkT 4 12 0 2 0 (6372), PolyRefl.mkT 4 12 2 0 0 (576), PolyRefl.mkT 6 10 0 2 0 (-14064), PolyRefl.mkT 6 10 2 0 0 (1456), PolyRefl.mkT 8 8 0 2 0 (5710), PolyRefl.mkT 8 8 2 0 0 (-12544), PolyRefl.mkT 10 6 0 2 0 (20384), PolyRefl.mkT 10 6 2 0 0 (14800), PolyRefl.mkT 12 4 0 2 0 (-6412), PolyRefl.mkT 12 4 2 0 0 (-4416), PolyRefl.mkT 14 2 0 2 0 (592), PolyRefl.mkT 14 2 2 0 0 (272), PolyRefl.mkT 16 0 0 2 0 (9)]
def cp445_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 28 12 0 0 (1), PolyRefl.mkT 2 26 12 0 0 (-12), PolyRefl.mkT 4 24 12 0 0 (99), PolyRefl.mkT 6 22 12 0 0 (-1672), PolyRefl.mkT 8 20 12 0 0 (17937), PolyRefl.mkT 10 18 12 0 0 (-100212), PolyRefl.mkT 12 16 12 0 0 (318155), PolyRefl.mkT 14 14 12 0 0 (-593392), PolyRefl.mkT 16 12 12 0 0 (622923), PolyRefl.mkT 18 10 12 0 0 (-336756), PolyRefl.mkT 20 8 12 0 0 (92881), PolyRefl.mkT 22 6 12 0 0 (-12424), PolyRefl.mkT 24 4 12 0 0 (675), PolyRefl.mkT 26 2 12 0 0 (-12), PolyRefl.mkT 28 0 12 0 0 (1)]
def cp446_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 20 0 0 0 (-1024), PolyRefl.mkT 2 18 0 0 0 (30720), PolyRefl.mkT 4 16 0 0 0 (-373760), PolyRefl.mkT 6 14 0 0 0 (2334720), PolyRefl.mkT 8 12 0 0 0 (-7751680), PolyRefl.mkT 10 10 0 0 0 (12570624), PolyRefl.mkT 12 8 0 0 0 (-7751680), PolyRefl.mkT 14 6 0 0 0 (2334720), PolyRefl.mkT 16 4 0 0 0 (-373760), PolyRefl.mkT 18 2 0 0 0 (30720), PolyRefl.mkT 20 0 0 0 0 (-1024)]
def cp447_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 8 0 (65536), PolyRefl.mkT 0 24 2 6 0 (-131072), PolyRefl.mkT 0 24 4 4 0 (73728), PolyRefl.mkT 0 24 6 2 0 (-8192), PolyRefl.mkT 0 24 8 0 0 (256), PolyRefl.mkT 2 22 0 8 0 (-1310720), PolyRefl.mkT 2 22 2 6 0 (2621440), PolyRefl.mkT 2 22 4 4 0 (-1507328), PolyRefl.mkT 2 22 6 2 0 (196608), PolyRefl.mkT 2 22 8 0 0 (-1024), PolyRefl.mkT 4 20 0 8 0 (6422528), PolyRefl.mkT 4 20 2 6 0 (-12845056), PolyRefl.mkT 4 20 4 4 0 (7684096), PolyRefl.mkT 4 20 6 2 0 (-1261568), PolyRefl.mkT 4 20 8 0 0 (-15872), PolyRefl.mkT 6 18 0 8 0 (39583744), PolyRefl.mkT 6 18 2 6 0 (-79167488), PolyRefl.mkT 6 18 4 4 0 (44105728), PolyRefl.mkT 6 18 6 2 0 (-4521984), PolyRefl.mkT 6 18 8 0 0 (76800), PolyRefl.mkT 8 16 0 8 0 (-563150848), PolyRefl.mkT 8 16 2 6 0 (1126301696), PolyRefl.mkT 8 16 4 4 0 (-656351232), PolyRefl.mkT 8 16 6 2 0 (93200384), PolyRefl.mkT 8 16 8 0 0 (61184), PolyRefl.mkT 10 14 0 8 0 (2505572352), PolyRefl.mkT 10 14 2 6 0 (-5011144704), PolyRefl.mkT 10 14 4 4 0 (2963931136), PolyRefl.mkT 10 14 6 2 0 (-458358784), PolyRefl.mkT 10 14 8 0 0 (-362496), PolyRefl.mkT 12 12 0 8 0 (-5379457024), PolyRefl.mkT 12 12 2 6 0 (10758914048), PolyRefl.mkT 12 12 4 4 0 (-6410895360), PolyRefl.mkT 12 12 6 2 0 (1031438336), PolyRefl.mkT 12 12 8 0 0 (-156672), PolyRefl.mkT 14 10 0 8 0 (5680660480), PolyRefl.mkT 14 10 2 6 0 (-11361320960), PolyRefl.mkT 14 10 4 4 0 (6781272064), PolyRefl.mkT 14 10 6 2 0 (-1100611584), PolyRefl.mkT 14 10 8 0 0 (768000), PolyRefl.mkT 16 8 0 8 0 (-2475753472), PolyRefl.mkT 16 8 2 6 0 (4951506944), PolyRefl.mkT 16 8 4 4 0 (-2923372544), PolyRefl.mkT 16 8 6 2 0 (447619072), PolyRefl.mkT 16 8 8 0 0 (716544), PolyRefl.mkT 18 6 0 8 0 (498860032), PolyRefl.mkT 18 6 2 6 0 (-997720064), PolyRefl.mkT 18 6 4 4 0 (579665920), PolyRefl.mkT 18 6 6 2 0 (-80805888), PolyRefl.mkT 18 6 8 0 0 (35840), PolyRefl.mkT 20 4 0 8 0 (-43909120), PolyRefl.mkT 20 4 2 6 0 (87818240), PolyRefl.mkT 20 4 4 4 0 (-49987584), PolyRefl.mkT 20 4 6 2 0 (6078464), PolyRefl.mkT 20 4 8 0 0 (-81408), PolyRefl.mkT 22 2 0 8 0 (786432), PolyRefl.mkT 22 2 2 6 0 (-1572864), PolyRefl.mkT 22 2 4 4 0 (851968), PolyRefl.mkT 22 2 6 2 0 (-65536), PolyRefl.mkT 22 2 8 0 0 (7168), PolyRefl.mkT 24 0 0 8 0 (65536), PolyRefl.mkT 24 0 2 6 0 (-131072), PolyRefl.mkT 24 0 4 4 0 (73728), PolyRefl.mkT 24 0 6 2 0 (-8192), PolyRefl.mkT 24 0 8 0 0 (256)]
def cp448_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 8 0 0 (-3), PolyRefl.mkT 2 22 8 0 0 (44), PolyRefl.mkT 4 20 8 0 0 (-742), PolyRefl.mkT 6 18 8 0 0 (16764), PolyRefl.mkT 8 16 8 0 0 (-95053), PolyRefl.mkT 10 14 8 0 0 (242264), PolyRefl.mkT 12 12 8 0 0 (-338836), PolyRefl.mkT 14 10 8 0 0 (242264), PolyRefl.mkT 16 8 8 0 0 (-95053), PolyRefl.mkT 18 6 8 0 0 (16764), PolyRefl.mkT 20 4 8 0 0 (-742), PolyRefl.mkT 22 2 8 0 0 (44), PolyRefl.mkT 24 0 8 0 0 (-3)]
def cp449_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (16), PolyRefl.mkT 0 4 0 3 1 (-16), PolyRefl.mkT 1 3 0 0 4 (16), PolyRefl.mkT 1 3 0 2 2 (-96), PolyRefl.mkT 1 3 0 4 0 (16), PolyRefl.mkT 2 2 0 1 3 (32), PolyRefl.mkT 2 2 0 3 1 (-32), PolyRefl.mkT 3 1 0 0 4 (-16), PolyRefl.mkT 3 1 0 2 2 (96), PolyRefl.mkT 3 1 0 4 0 (-16), PolyRefl.mkT 4 0 0 1 3 (16), PolyRefl.mkT 4 0 0 3 1 (-16)]
def cp450_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (16), PolyRefl.mkT 1 3 0 0 2 (16), PolyRefl.mkT 1 3 0 2 0 (-112), PolyRefl.mkT 1 3 2 0 0 (16), PolyRefl.mkT 2 2 0 1 1 (32), PolyRefl.mkT 3 1 0 0 2 (-16), PolyRefl.mkT 3 1 0 2 0 (112), PolyRefl.mkT 3 1 2 0 0 (-16), PolyRefl.mkT 4 0 0 1 1 (16)]
def cp451_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-2), PolyRefl.mkT 0 4 2 1 1 (1), PolyRefl.mkT 1 3 0 4 0 (8), PolyRefl.mkT 1 3 2 2 0 (-8), PolyRefl.mkT 1 3 4 0 0 (1), PolyRefl.mkT 2 2 0 3 1 (-4), PolyRefl.mkT 2 2 2 1 1 (2), PolyRefl.mkT 3 1 0 4 0 (-8), PolyRefl.mkT 3 1 2 2 0 (8), PolyRefl.mkT 3 1 4 0 0 (-1), PolyRefl.mkT 4 0 0 3 1 (-2), PolyRefl.mkT 4 0 2 1 1 (1)]
def cp452_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 6 0 (4), PolyRefl.mkT 0 8 2 4 0 (-4), PolyRefl.mkT 0 8 4 2 0 (1), PolyRefl.mkT 2 6 0 6 0 (16), PolyRefl.mkT 2 6 2 4 0 (-16), PolyRefl.mkT 2 6 4 2 0 (4), PolyRefl.mkT 4 4 0 6 0 (24), PolyRefl.mkT 4 4 2 4 0 (-24), PolyRefl.mkT 4 4 4 2 0 (6), PolyRefl.mkT 6 2 0 6 0 (16), PolyRefl.mkT 6 2 2 4 0 (-16), PolyRefl.mkT 6 2 4 2 0 (4), PolyRefl.mkT 8 0 0 6 0 (4), PolyRefl.mkT 8 0 2 4 0 (-4), PolyRefl.mkT 8 0 4 2 0 (1)]
def cp453_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-2), PolyRefl.mkT 0 4 2 1 1 (1), PolyRefl.mkT 1 3 0 4 0 (-8), PolyRefl.mkT 1 3 2 2 0 (8), PolyRefl.mkT 1 3 4 0 0 (-1), PolyRefl.mkT 2 2 0 3 1 (-4), PolyRefl.mkT 2 2 2 1 1 (2), PolyRefl.mkT 3 1 0 4 0 (8), PolyRefl.mkT 3 1 2 2 0 (-8), PolyRefl.mkT 3 1 4 0 0 (1), PolyRefl.mkT 4 0 0 3 1 (-2), PolyRefl.mkT 4 0 2 1 1 (1)]
def cp454_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 8 0 (4), PolyRefl.mkT 0 8 2 6 0 (-8), PolyRefl.mkT 0 8 4 4 0 (5), PolyRefl.mkT 0 8 6 2 0 (-1), PolyRefl.mkT 2 6 0 8 0 (80), PolyRefl.mkT 2 6 2 6 0 (-160), PolyRefl.mkT 2 6 4 4 0 (100), PolyRefl.mkT 2 6 6 2 0 (-20), PolyRefl.mkT 2 6 8 0 0 (1), PolyRefl.mkT 4 4 0 8 0 (-104), PolyRefl.mkT 4 4 2 6 0 (208), PolyRefl.mkT 4 4 4 4 0 (-130), PolyRefl.mkT 4 4 6 2 0 (26), PolyRefl.mkT 4 4 8 0 0 (-2), PolyRefl.mkT 6 2 0 8 0 (80), PolyRefl.mkT 6 2 2 6 0 (-160), PolyRefl.mkT 6 2 4 4 0 (100), PolyRefl.mkT 6 2 6 2 0 (-20), PolyRefl.mkT 6 2 8 0 0 (1), PolyRefl.mkT 8 0 0 8 0 (4), PolyRefl.mkT 8 0 2 6 0 (-8), PolyRefl.mkT 8 0 4 4 0 (5), PolyRefl.mkT 8 0 6 2 0 (-1)]
def cp455_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 20 0 6 0 (-256), PolyRefl.mkT 0 20 2 4 0 (448), PolyRefl.mkT 0 20 4 2 0 (-208), PolyRefl.mkT 0 20 6 0 0 (12), PolyRefl.mkT 2 18 0 6 0 (-512), PolyRefl.mkT 2 18 2 4 0 (1408), PolyRefl.mkT 2 18 4 2 0 (-1184), PolyRefl.mkT 2 18 6 0 0 (248), PolyRefl.mkT 4 16 0 6 0 (70400), PolyRefl.mkT 4 16 2 4 0 (-119104), PolyRefl.mkT 4 16 4 2 0 (50032), PolyRefl.mkT 4 16 6 0 0 (-228), PolyRefl.mkT 6 14 0 6 0 (-628736), PolyRefl.mkT 6 14 2 4 0 (983552), PolyRefl.mkT 6 14 4 2 0 (-350080), PolyRefl.mkT 6 14 6 0 0 (-1632), PolyRefl.mkT 8 12 0 6 0 (2092544), PolyRefl.mkT 8 12 2 4 0 (-3108992), PolyRefl.mkT 8 12 4 2 0 (1019232), PolyRefl.mkT 8 12 6 0 0 (-808), PolyRefl.mkT 10 10 0 6 0 (-2804736), PolyRefl.mkT 10 10 2 4 0 (4157696), PolyRefl.mkT 10 10 4 2 0 (-1353664), PolyRefl.mkT 10 10 6 0 0 (720), PolyRefl.mkT 12 8 0 6 0 (2092544), PolyRefl.mkT 12 8 2 4 0 (-3108992), PolyRefl.mkT 12 8 4 2 0 (1019232), PolyRefl.mkT 12 8 6 0 0 (-808), PolyRefl.mkT 14 6 0 6 0 (-628736), PolyRefl.mkT 14 6 2 4 0 (983552), PolyRefl.mkT 14 6 4 2 0 (-350080), PolyRefl.mkT 14 6 6 0 0 (-1632), PolyRefl.mkT 16 4 0 6 0 (70400), PolyRefl.mkT 16 4 2 4 0 (-119104), PolyRefl.mkT 16 4 4 2 0 (50032), PolyRefl.mkT 16 4 6 0 0 (-228), PolyRefl.mkT 18 2 0 6 0 (-512), PolyRefl.mkT 18 2 2 4 0 (1408), PolyRefl.mkT 18 2 4 2 0 (-1184), PolyRefl.mkT 18 2 6 0 0 (248), PolyRefl.mkT 20 0 0 6 0 (-256), PolyRefl.mkT 20 0 2 4 0 (448), PolyRefl.mkT 20 0 4 2 0 (-208), PolyRefl.mkT 20 0 6 0 0 (12)]
def cp456_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 50 32 0 0 (-7), PolyRefl.mkT 4 48 32 0 0 (196), PolyRefl.mkT 6 46 32 0 0 (-1892), PolyRefl.mkT 8 44 32 0 0 (5276), PolyRefl.mkT 10 42 32 0 0 (36706), PolyRefl.mkT 12 40 32 0 0 (-371124), PolyRefl.mkT 14 38 32 0 0 (1372844), PolyRefl.mkT 16 36 32 0 0 (-1998700), PolyRefl.mkT 18 34 32 0 0 (-3436361), PolyRefl.mkT 20 32 32 0 0 (24944360), PolyRefl.mkT 22 30 32 0 0 (-66258760), PolyRefl.mkT 24 28 32 0 0 (111637720), PolyRefl.mkT 26 26 32 0 0 (-131860516), PolyRefl.mkT 28 24 32 0 0 (111637720), PolyRefl.mkT 30 22 32 0 0 (-66258760), PolyRefl.mkT 32 20 32 0 0 (24944360), PolyRefl.mkT 34 18 32 0 0 (-3436361), PolyRefl.mkT 36 16 32 0 0 (-1998700), PolyRefl.mkT 38 14 32 0 0 (1372844), PolyRefl.mkT 40 12 32 0 0 (-371124), PolyRefl.mkT 42 10 32 0 0 (36706), PolyRefl.mkT 44 8 32 0 0 (5276), PolyRefl.mkT 46 6 32 0 0 (-1892), PolyRefl.mkT 48 4 32 0 0 (196), PolyRefl.mkT 50 2 32 0 0 (-7)]
def cp457_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 1 3 (-16), PolyRefl.mkT 0 2 0 3 1 (16), PolyRefl.mkT 1 1 0 0 4 (-4), PolyRefl.mkT 1 1 0 2 2 (-8), PolyRefl.mkT 1 1 0 4 0 (-4), PolyRefl.mkT 2 0 0 1 3 (16), PolyRefl.mkT 2 0 0 3 1 (-16)]
def cp458_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 1 1 (-16), PolyRefl.mkT 1 1 0 0 2 (-4), PolyRefl.mkT 1 1 0 2 0 (-4), PolyRefl.mkT 1 1 2 0 0 (-4), PolyRefl.mkT 2 0 0 1 1 (16)]
def cp459_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 3 1 (8), PolyRefl.mkT 0 2 2 1 1 (-4), PolyRefl.mkT 1 1 4 0 0 (-1), PolyRefl.mkT 2 0 0 3 1 (-8), PolyRefl.mkT 2 0 2 1 1 (4)]
def cp460_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 3 1 (8), PolyRefl.mkT 0 2 2 1 1 (-4), PolyRefl.mkT 1 1 4 0 0 (1), PolyRefl.mkT 2 0 0 3 1 (-8), PolyRefl.mkT 2 0 2 1 1 (4)]
def cp461_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 12 0 0 0 (262144), PolyRefl.mkT 2 10 0 0 0 (-1572864), PolyRefl.mkT 4 8 0 0 0 (3932160), PolyRefl.mkT 6 6 0 0 0 (-5242880), PolyRefl.mkT 8 4 0 0 0 (3932160), PolyRefl.mkT 10 2 0 0 0 (-1572864), PolyRefl.mkT 12 0 0 0 0 (262144)]
def cp462_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 12 0 4 0 (1048576), PolyRefl.mkT 0 12 2 2 0 (-1048576), PolyRefl.mkT 0 12 4 0 0 (131072), PolyRefl.mkT 2 10 0 4 0 (2097152), PolyRefl.mkT 2 10 2 2 0 (-2097152), PolyRefl.mkT 2 10 4 0 0 (262144), PolyRefl.mkT 4 8 0 4 0 (-17825792), PolyRefl.mkT 4 8 2 2 0 (17825792), PolyRefl.mkT 4 8 4 0 0 (-2228224), PolyRefl.mkT 6 6 0 4 0 (29360128), PolyRefl.mkT 6 6 2 2 0 (-29360128), PolyRefl.mkT 6 6 4 0 0 (3670016), PolyRefl.mkT 8 4 0 4 0 (-17825792), PolyRefl.mkT 8 4 2 2 0 (17825792), PolyRefl.mkT 8 4 4 0 0 (-2228224), PolyRefl.mkT 10 2 0 4 0 (2097152), PolyRefl.mkT 10 2 2 2 0 (-2097152), PolyRefl.mkT 10 2 4 0 0 (262144), PolyRefl.mkT 12 0 0 4 0 (1048576), PolyRefl.mkT 12 0 2 2 0 (-1048576), PolyRefl.mkT 12 0 4 0 0 (131072)]
def cp463_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 16 8 4 0 (2), PolyRefl.mkT 0 16 10 2 0 (-2), PolyRefl.mkT 2 14 8 4 0 (-8), PolyRefl.mkT 2 14 10 2 0 (8), PolyRefl.mkT 2 14 12 0 0 (1), PolyRefl.mkT 4 12 8 4 0 (-56), PolyRefl.mkT 4 12 10 2 0 (56), PolyRefl.mkT 4 12 12 0 0 (-14), PolyRefl.mkT 6 10 8 4 0 (264), PolyRefl.mkT 6 10 10 2 0 (-264), PolyRefl.mkT 6 10 12 0 0 (47), PolyRefl.mkT 8 8 8 4 0 (-404), PolyRefl.mkT 8 8 10 2 0 (404), PolyRefl.mkT 8 8 12 0 0 (-68), PolyRefl.mkT 10 6 8 4 0 (264), PolyRefl.mkT 10 6 10 2 0 (-264), PolyRefl.mkT 10 6 12 0 0 (47), PolyRefl.mkT 12 4 8 4 0 (-56), PolyRefl.mkT 12 4 10 2 0 (56), PolyRefl.mkT 12 4 12 0 0 (-14), PolyRefl.mkT 14 2 8 4 0 (-8), PolyRefl.mkT 14 2 10 2 0 (8), PolyRefl.mkT 14 2 12 0 0 (1), PolyRefl.mkT 16 0 8 4 0 (2), PolyRefl.mkT 16 0 10 2 0 (-2)]
def cp464_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 48 24 0 0 (8), PolyRefl.mkT 2 46 24 0 0 (-96), PolyRefl.mkT 4 44 24 0 0 (-288), PolyRefl.mkT 6 42 24 0 0 (8032), PolyRefl.mkT 8 40 24 0 0 (-22128), PolyRefl.mkT 10 38 24 0 0 (-160032), PolyRefl.mkT 12 36 24 0 0 (1120096), PolyRefl.mkT 14 34 24 0 0 (-1676256), PolyRefl.mkT 16 32 24 0 0 (-7837320), PolyRefl.mkT 18 30 24 0 0 (47853120), PolyRefl.mkT 20 28 24 0 0 (-129365568), PolyRefl.mkT 22 26 24 0 0 (222410688), PolyRefl.mkT 24 24 24 0 0 (-264660512), PolyRefl.mkT 26 22 24 0 0 (222410688), PolyRefl.mkT 28 20 24 0 0 (-129365568), PolyRefl.mkT 30 18 24 0 0 (47853120), PolyRefl.mkT 32 16 24 0 0 (-7837320), PolyRefl.mkT 34 14 24 0 0 (-1676256), PolyRefl.mkT 36 12 24 0 0 (1120096), PolyRefl.mkT 38 10 24 0 0 (-160032), PolyRefl.mkT 40 8 24 0 0 (-22128), PolyRefl.mkT 42 6 24 0 0 (8032), PolyRefl.mkT 44 4 24 0 0 (-288), PolyRefl.mkT 46 2 24 0 0 (-96), PolyRefl.mkT 48 0 24 0 0 (8)]
def cp465_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 36 16 4 0 (256), PolyRefl.mkT 0 36 18 2 0 (-256), PolyRefl.mkT 0 36 20 0 0 (64), PolyRefl.mkT 2 34 16 4 0 (-2560), PolyRefl.mkT 2 34 18 2 0 (2560), PolyRefl.mkT 2 34 20 0 0 (-768), PolyRefl.mkT 4 32 16 4 0 (-5888), PolyRefl.mkT 4 32 18 2 0 (5888), PolyRefl.mkT 4 32 20 0 0 (1088), PolyRefl.mkT 6 30 16 4 0 (143360), PolyRefl.mkT 6 30 18 2 0 (-143360), PolyRefl.mkT 6 30 20 0 0 (21504), PolyRefl.mkT 8 28 16 4 0 (-433152), PolyRefl.mkT 8 28 18 2 0 (433152), PolyRefl.mkT 8 28 20 0 0 (-121088), PolyRefl.mkT 10 26 16 4 0 (-940032), PolyRefl.mkT 10 26 18 2 0 (940032), PolyRefl.mkT 10 26 20 0 0 (214016), PolyRefl.mkT 12 24 16 4 0 (9720832), PolyRefl.mkT 12 24 18 2 0 (-9720832), PolyRefl.mkT 12 24 20 0 0 (225024), PolyRefl.mkT 14 22 16 4 0 (-31043584), PolyRefl.mkT 14 22 18 2 0 (31043584), PolyRefl.mkT 14 22 20 0 0 (-1823744), PolyRefl.mkT 16 20 16 4 0 (57826816), PolyRefl.mkT 16 20 18 2 0 (-57826816), PolyRefl.mkT 16 20 20 0 0 (4089216), PolyRefl.mkT 18 18 16 4 0 (-70532096), PolyRefl.mkT 18 18 18 2 0 (70532096), PolyRefl.mkT 18 18 20 0 0 (-5210624), PolyRefl.mkT 20 16 16 4 0 (57826816), PolyRefl.mkT 20 16 18 2 0 (-57826816), PolyRefl.mkT 20 16 20 0 0 (4089216), PolyRefl.mkT 22 14 16 4 0 (-31043584), PolyRefl.mkT 22 14 18 2 0 (31043584), PolyRefl.mkT 22 14 20 0 0 (-1823744), PolyRefl.mkT 24 12 16 4 0 (9720832), PolyRefl.mkT 24 12 18 2 0 (-9720832), PolyRefl.mkT 24 12 20 0 0 (225024), PolyRefl.mkT 26 10 16 4 0 (-940032), PolyRefl.mkT 26 10 18 2 0 (940032), PolyRefl.mkT 26 10 20 0 0 (214016), PolyRefl.mkT 28 8 16 4 0 (-433152), PolyRefl.mkT 28 8 18 2 0 (433152), PolyRefl.mkT 28 8 20 0 0 (-121088), PolyRefl.mkT 30 6 16 4 0 (143360), PolyRefl.mkT 30 6 18 2 0 (-143360), PolyRefl.mkT 30 6 20 0 0 (21504), PolyRefl.mkT 32 4 16 4 0 (-5888), PolyRefl.mkT 32 4 18 2 0 (5888), PolyRefl.mkT 32 4 20 0 0 (1088), PolyRefl.mkT 34 2 16 4 0 (-2560), PolyRefl.mkT 34 2 18 2 0 (2560), PolyRefl.mkT 34 2 20 0 0 (-768), PolyRefl.mkT 36 0 16 4 0 (256), PolyRefl.mkT 36 0 18 2 0 (-256), PolyRefl.mkT 36 0 20 0 0 (64)]
def cp466_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-12), PolyRefl.mkT 1 3 0 0 2 (-8), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 2 2 0 1 1 (24), PolyRefl.mkT 3 1 0 0 2 (24), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 4 0 0 1 1 (4)]
def cp467_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-3), PolyRefl.mkT 1 3 2 0 0 (-2), PolyRefl.mkT 2 2 0 1 1 (6), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 3 1 2 0 0 (6), PolyRefl.mkT 4 0 0 1 1 (1)]
def cp468_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-3), PolyRefl.mkT 1 3 2 0 0 (2), PolyRefl.mkT 2 2 0 1 1 (6), PolyRefl.mkT 3 1 0 2 0 (8), PolyRefl.mkT 3 1 2 0 0 (-6), PolyRefl.mkT 4 0 0 1 1 (1)]
def cp469_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 4 0 (9), PolyRefl.mkT 0 8 2 2 0 (-9), PolyRefl.mkT 2 6 0 4 0 (-36), PolyRefl.mkT 2 6 2 2 0 (36), PolyRefl.mkT 2 6 4 0 0 (4), PolyRefl.mkT 4 4 0 4 0 (30), PolyRefl.mkT 4 4 2 2 0 (2), PolyRefl.mkT 4 4 4 0 0 (-24), PolyRefl.mkT 6 2 0 4 0 (76), PolyRefl.mkT 6 2 2 2 0 (-108), PolyRefl.mkT 6 2 4 0 0 (36), PolyRefl.mkT 8 0 0 4 0 (1), PolyRefl.mkT 8 0 2 2 0 (-1)]
def cp470_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 16 0 2 0 (81), PolyRefl.mkT 0 16 2 0 0 (-81), PolyRefl.mkT 2 14 0 2 0 (-1152), PolyRefl.mkT 2 14 2 0 0 (1296), PolyRefl.mkT 4 12 0 2 0 (6372), PolyRefl.mkT 4 12 2 0 0 (-6948), PolyRefl.mkT 6 10 0 2 0 (-14064), PolyRefl.mkT 6 10 2 0 0 (12608), PolyRefl.mkT 8 8 0 2 0 (5710), PolyRefl.mkT 8 8 2 0 0 (6834), PolyRefl.mkT 10 6 0 2 0 (20384), PolyRefl.mkT 10 6 2 0 0 (-35184), PolyRefl.mkT 12 4 0 2 0 (-6412), PolyRefl.mkT 12 4 2 0 0 (10828), PolyRefl.mkT 14 2 0 2 0 (592), PolyRefl.mkT 14 2 2 0 0 (-864), PolyRefl.mkT 16 0 0 2 0 (9), PolyRefl.mkT 16 0 2 0 0 (-9)]
def cp471_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 30 8 0 0 (6237), PolyRefl.mkT 4 28 8 0 0 (-232722), PolyRefl.mkT 6 26 8 0 0 (3621447), PolyRefl.mkT 8 24 8 0 0 (-30655988), PolyRefl.mkT 10 22 8 0 0 (152953205), PolyRefl.mkT 12 20 8 0 0 (-451794542), PolyRefl.mkT 14 18 8 0 0 (752137879), PolyRefl.mkT 16 16 8 0 0 (-650387800), PolyRefl.mkT 18 14 8 0 0 (301658575), PolyRefl.mkT 20 12 8 0 0 (-70985678), PolyRefl.mkT 22 10 8 0 0 (4095149), PolyRefl.mkT 24 8 8 0 0 (2013580), PolyRefl.mkT 26 6 8 0 0 (-538785), PolyRefl.mkT 28 4 8 0 0 (55566), PolyRefl.mkT 30 2 8 0 0 (-2187)]
def cp472_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-8), PolyRefl.mkT 0 4 0 3 1 (8), PolyRefl.mkT 1 3 0 0 4 (-8), PolyRefl.mkT 1 3 0 2 2 (112), PolyRefl.mkT 1 3 0 4 0 (-8), PolyRefl.mkT 2 2 0 1 3 (-48), PolyRefl.mkT 2 2 0 3 1 (48), PolyRefl.mkT 3 1 0 0 4 (-8), PolyRefl.mkT 3 1 0 2 2 (-16), PolyRefl.mkT 3 1 0 4 0 (-8), PolyRefl.mkT 4 0 0 1 3 (24), PolyRefl.mkT 4 0 0 3 1 (-24)]
def cp473_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-8), PolyRefl.mkT 1 3 0 0 2 (-8), PolyRefl.mkT 1 3 0 2 0 (120), PolyRefl.mkT 1 3 2 0 0 (-8), PolyRefl.mkT 2 2 0 1 1 (-48), PolyRefl.mkT 3 1 0 0 2 (-8), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 3 1 2 0 0 (-8), PolyRefl.mkT 4 0 0 1 1 (24)]
def cp474_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (2), PolyRefl.mkT 0 4 2 1 1 (-1), PolyRefl.mkT 1 3 0 4 0 (-16), PolyRefl.mkT 1 3 2 2 0 (16), PolyRefl.mkT 1 3 4 0 0 (-1), PolyRefl.mkT 2 2 0 3 1 (12), PolyRefl.mkT 2 2 2 1 1 (-6), PolyRefl.mkT 3 1 4 0 0 (-1), PolyRefl.mkT 4 0 0 3 1 (-6), PolyRefl.mkT 4 0 2 1 1 (3)]
def cp475_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (2), PolyRefl.mkT 0 4 2 1 1 (-1), PolyRefl.mkT 1 3 0 4 0 (16), PolyRefl.mkT 1 3 2 2 0 (-16), PolyRefl.mkT 1 3 4 0 0 (1), PolyRefl.mkT 2 2 0 3 1 (12), PolyRefl.mkT 2 2 2 1 1 (-6), PolyRefl.mkT 3 1 4 0 0 (1), PolyRefl.mkT 4 0 0 3 1 (-6), PolyRefl.mkT 4 0 2 1 1 (3)]
def cp476_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 8 0 (4), PolyRefl.mkT 0 8 2 6 0 (-8), PolyRefl.mkT 0 8 4 4 0 (5), PolyRefl.mkT 0 8 6 2 0 (-1), PolyRefl.mkT 2 6 0 8 0 (304), PolyRefl.mkT 2 6 2 6 0 (-608), PolyRefl.mkT 2 6 4 4 0 (348), PolyRefl.mkT 2 6 6 2 0 (-44), PolyRefl.mkT 2 6 8 0 0 (1), PolyRefl.mkT 4 4 0 8 0 (120), PolyRefl.mkT 4 4 2 6 0 (-240), PolyRefl.mkT 4 4 4 4 0 (182), PolyRefl.mkT 4 4 6 2 0 (-62), PolyRefl.mkT 4 4 8 0 0 (2), PolyRefl.mkT 6 2 0 8 0 (-144), PolyRefl.mkT 6 2 2 6 0 (288), PolyRefl.mkT 6 2 4 4 0 (-180), PolyRefl.mkT 6 2 6 2 0 (36), PolyRefl.mkT 6 2 8 0 0 (1), PolyRefl.mkT 8 0 0 8 0 (36), PolyRefl.mkT 8 0 2 6 0 (-72), PolyRefl.mkT 8 0 4 4 0 (45), PolyRefl.mkT 8 0 6 2 0 (-9)]
def cp477_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 4 0 (5184), PolyRefl.mkT 0 24 2 2 0 (-5184), PolyRefl.mkT 2 22 0 4 0 (288000), PolyRefl.mkT 2 22 2 2 0 (-288000), PolyRefl.mkT 2 22 4 0 0 (-39168), PolyRefl.mkT 4 20 0 4 0 (-7000448), PolyRefl.mkT 4 20 2 2 0 (7000448), PolyRefl.mkT 4 20 4 0 0 (1036288), PolyRefl.mkT 6 18 0 4 0 (61187328), PolyRefl.mkT 6 18 2 2 0 (-61187328), PolyRefl.mkT 6 18 4 0 0 (-9980672), PolyRefl.mkT 8 16 0 4 0 (-247426624), PolyRefl.mkT 8 16 2 2 0 (247426624), PolyRefl.mkT 8 16 4 0 0 (45895680), PolyRefl.mkT 10 14 0 4 0 (400792064), PolyRefl.mkT 10 14 2 2 0 (-400792064), PolyRefl.mkT 10 14 4 0 0 (-98621952), PolyRefl.mkT 12 12 0 4 0 (76051200), PolyRefl.mkT 12 12 2 2 0 (-76051200), PolyRefl.mkT 12 12 4 0 0 (86700032), PolyRefl.mkT 14 10 0 4 0 (-339090944), PolyRefl.mkT 14 10 2 2 0 (339090944), PolyRefl.mkT 14 10 4 0 0 (-26949120), PolyRefl.mkT 16 8 0 4 0 (219347904), PolyRefl.mkT 16 8 2 2 0 (-219347904), PolyRefl.mkT 16 8 4 0 0 (880640), PolyRefl.mkT 18 6 0 4 0 (-68951808), PolyRefl.mkT 18 6 2 2 0 (68951808), PolyRefl.mkT 18 6 4 0 0 (1352448), PolyRefl.mkT 20 4 0 4 0 (12060288), PolyRefl.mkT 20 4 2 2 0 (-12060288), PolyRefl.mkT 20 4 4 0 0 (-294912), PolyRefl.mkT 22 2 0 4 0 (-1140480), PolyRefl.mkT 22 2 2 2 0 (1140480), PolyRefl.mkT 22 2 4 0 0 (20736), PolyRefl.mkT 24 0 0 4 0 (46656), PolyRefl.mkT 24 0 2 2 0 (-46656)]
def cp478_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 1 5 (-24), PolyRefl.mkT 0 2 0 3 3 (80), PolyRefl.mkT 0 2 0 5 1 (-24), PolyRefl.mkT 1 1 0 0 6 (-8), PolyRefl.mkT 1 1 0 2 4 (-24), PolyRefl.mkT 1 1 0 4 2 (-24), PolyRefl.mkT 1 1 0 6 0 (-8), PolyRefl.mkT 2 0 0 1 5 (24), PolyRefl.mkT 2 0 0 3 3 (-80), PolyRefl.mkT 2 0 0 5 1 (24)]
def cp479_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 1 3 (-24), PolyRefl.mkT 0 2 0 3 1 (104), PolyRefl.mkT 0 2 2 1 1 (-24), PolyRefl.mkT 1 1 0 0 4 (-8), PolyRefl.mkT 1 1 0 2 2 (-16), PolyRefl.mkT 1 1 0 4 0 (-8), PolyRefl.mkT 1 1 2 0 2 (-8), PolyRefl.mkT 1 1 2 2 0 (-8), PolyRefl.mkT 1 1 4 0 0 (-8), PolyRefl.mkT 2 0 0 1 3 (24), PolyRefl.mkT 2 0 0 3 1 (-104), PolyRefl.mkT 2 0 2 1 1 (24)]
def cp480_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 5 1 (-16), PolyRefl.mkT 0 2 2 3 1 (16), PolyRefl.mkT 0 2 4 1 1 (-3), PolyRefl.mkT 1 1 6 0 0 (-1), PolyRefl.mkT 2 0 0 5 1 (16), PolyRefl.mkT 2 0 2 3 1 (-16), PolyRefl.mkT 2 0 4 1 1 (3)]
def cp481_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 5 1 (-16), PolyRefl.mkT 0 2 2 3 1 (16), PolyRefl.mkT 0 2 4 1 1 (-3), PolyRefl.mkT 1 1 6 0 0 (1), PolyRefl.mkT 2 0 0 5 1 (16), PolyRefl.mkT 2 0 2 3 1 (-16), PolyRefl.mkT 2 0 4 1 1 (3)]
def cp482_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 12 40 32 0 0 (-1), PolyRefl.mkT 14 38 32 0 0 (42), PolyRefl.mkT 16 36 32 0 0 (-667), PolyRefl.mkT 18 34 32 0 0 (5188), PolyRefl.mkT 20 32 32 0 0 (-18473), PolyRefl.mkT 22 30 32 0 0 (3446), PolyRefl.mkT 24 28 32 0 0 (150213), PolyRefl.mkT 26 26 32 0 0 (-279496), PolyRefl.mkT 28 24 32 0 0 (150213), PolyRefl.mkT 30 22 32 0 0 (3446), PolyRefl.mkT 32 20 32 0 0 (-18473), PolyRefl.mkT 34 18 32 0 0 (5188), PolyRefl.mkT 36 16 32 0 0 (-667), PolyRefl.mkT 38 14 32 0 0 (42), PolyRefl.mkT 40 12 32 0 0 (-1)]
def cp483_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 4 (-2), PolyRefl.mkT 0 2 0 2 2 (-4), PolyRefl.mkT 0 2 0 4 0 (-2), PolyRefl.mkT 1 1 0 1 3 (32), PolyRefl.mkT 1 1 0 3 1 (-32), PolyRefl.mkT 2 0 0 0 4 (2), PolyRefl.mkT 2 0 0 2 2 (4), PolyRefl.mkT 2 0 0 4 0 (2)]
def cp484_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 2 (-2), PolyRefl.mkT 0 2 0 2 0 (-2), PolyRefl.mkT 0 2 2 0 0 (-2), PolyRefl.mkT 1 1 0 1 1 (32), PolyRefl.mkT 2 0 0 0 2 (2), PolyRefl.mkT 2 0 0 2 0 (2), PolyRefl.mkT 2 0 2 0 0 (2)]
def cp485_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 4 0 0 (-1), PolyRefl.mkT 1 1 0 3 1 (-32), PolyRefl.mkT 1 1 2 1 1 (16), PolyRefl.mkT 2 0 4 0 0 (1)]
def cp486_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 2 0 6 0 (1024), PolyRefl.mkT 2 2 2 4 0 (-1024), PolyRefl.mkT 2 2 4 2 0 (256)]
def cp487_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 4 0 0 (1), PolyRefl.mkT 1 1 0 3 1 (-32), PolyRefl.mkT 1 1 2 1 1 (16), PolyRefl.mkT 2 0 4 0 0 (-1)]
def cp488_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 8 0 0 (1), PolyRefl.mkT 2 2 0 8 0 (1024), PolyRefl.mkT 2 2 2 6 0 (-2048), PolyRefl.mkT 2 2 4 4 0 (1280), PolyRefl.mkT 2 2 6 2 0 (-256), PolyRefl.mkT 2 2 8 0 0 (-2), PolyRefl.mkT 4 0 8 0 0 (1)]
def cp489_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 6 6 0 0 0 (1073741824)]
def cp490_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 4 8 0 4 0 (268435456), PolyRefl.mkT 4 8 2 2 0 (-268435456), PolyRefl.mkT 4 8 4 0 0 (33554432), PolyRefl.mkT 6 6 0 4 0 (-536870912), PolyRefl.mkT 6 6 2 2 0 (536870912), PolyRefl.mkT 6 6 4 0 0 (-67108864), PolyRefl.mkT 8 4 0 4 0 (268435456), PolyRefl.mkT 8 4 2 2 0 (-268435456), PolyRefl.mkT 8 4 4 0 0 (33554432)]
def cp491_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 4 12 8 4 0 (-8), PolyRefl.mkT 4 12 10 2 0 (8), PolyRefl.mkT 4 12 12 0 0 (-1), PolyRefl.mkT 6 10 8 4 0 (64), PolyRefl.mkT 6 10 10 2 0 (-64), PolyRefl.mkT 6 10 12 0 0 (4), PolyRefl.mkT 8 8 8 4 0 (-112), PolyRefl.mkT 8 8 10 2 0 (112), PolyRefl.mkT 8 8 12 0 0 (26), PolyRefl.mkT 10 6 8 4 0 (64), PolyRefl.mkT 10 6 10 2 0 (-64), PolyRefl.mkT 10 6 12 0 0 (4), PolyRefl.mkT 12 4 8 4 0 (-8), PolyRefl.mkT 12 4 10 2 0 (8), PolyRefl.mkT 12 4 12 0 0 (-1)]
def cp492_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 12 36 24 0 0 (-512), PolyRefl.mkT 14 34 24 0 0 (12288), PolyRefl.mkT 16 32 24 0 0 (-119808), PolyRefl.mkT 18 30 24 0 0 (618496), PolyRefl.mkT 20 28 24 0 0 (-1875456), PolyRefl.mkT 22 26 24 0 0 (3563520), PolyRefl.mkT 24 24 24 0 0 (-4397056), PolyRefl.mkT 26 22 24 0 0 (3563520), PolyRefl.mkT 28 20 24 0 0 (-1875456), PolyRefl.mkT 30 18 24 0 0 (618496), PolyRefl.mkT 32 16 24 0 0 (-119808), PolyRefl.mkT 34 14 24 0 0 (12288), PolyRefl.mkT 36 12 24 0 0 (-512)]
def cp493_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 10 26 16 4 0 (65536), PolyRefl.mkT 10 26 18 2 0 (-65536), PolyRefl.mkT 10 26 20 0 0 (8192), PolyRefl.mkT 12 24 16 4 0 (-1048576), PolyRefl.mkT 12 24 18 2 0 (1048576), PolyRefl.mkT 12 24 20 0 0 (-163840), PolyRefl.mkT 14 22 16 4 0 (6029312), PolyRefl.mkT 14 22 18 2 0 (-6029312), PolyRefl.mkT 14 22 20 0 0 (1343488), PolyRefl.mkT 16 20 16 4 0 (-15728640), PolyRefl.mkT 16 20 18 2 0 (15728640), PolyRefl.mkT 16 20 20 0 0 (-5079040), PolyRefl.mkT 18 18 16 4 0 (21364736), PolyRefl.mkT 18 18 18 2 0 (-21364736), PolyRefl.mkT 18 18 20 0 0 (7782400), PolyRefl.mkT 20 16 16 4 0 (-15728640), PolyRefl.mkT 20 16 18 2 0 (15728640), PolyRefl.mkT 20 16 20 0 0 (-5079040), PolyRefl.mkT 22 14 16 4 0 (6029312), PolyRefl.mkT 22 14 18 2 0 (-6029312), PolyRefl.mkT 22 14 20 0 0 (1343488), PolyRefl.mkT 24 12 16 4 0 (-1048576), PolyRefl.mkT 24 12 18 2 0 (1048576), PolyRefl.mkT 24 12 20 0 0 (-163840), PolyRefl.mkT 26 10 16 4 0 (65536), PolyRefl.mkT 26 10 18 2 0 (-65536), PolyRefl.mkT 26 10 20 0 0 (8192)]
def cp494_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 2 (-6), PolyRefl.mkT 0 2 0 2 0 (2), PolyRefl.mkT 2 0 0 0 2 (2), PolyRefl.mkT 2 0 0 2 0 (-6)]
def cp495_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 0 (-6), PolyRefl.mkT 2 0 0 0 0 (2)]
def cp496_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 2 0 (4), PolyRefl.mkT 0 2 2 0 0 (-3), PolyRefl.mkT 2 0 0 2 0 (-4), PolyRefl.mkT 2 0 2 0 0 (1)]
def cp497_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 6 0 (1024), PolyRefl.mkT 0 10 2 4 0 (-1280), PolyRefl.mkT 0 10 4 2 0 (320), PolyRefl.mkT 0 10 6 0 0 (-16), PolyRefl.mkT 2 8 0 6 0 (3072), PolyRefl.mkT 2 8 2 4 0 (-3328), PolyRefl.mkT 2 8 4 2 0 (704), PolyRefl.mkT 2 8 6 0 0 (-80), PolyRefl.mkT 4 6 0 6 0 (-14336), PolyRefl.mkT 4 6 2 4 0 (19968), PolyRefl.mkT 4 6 4 2 0 (-5248), PolyRefl.mkT 4 6 6 0 0 (160), PolyRefl.mkT 6 4 0 6 0 (14336), PolyRefl.mkT 6 4 2 4 0 (-23040), PolyRefl.mkT 6 4 4 2 0 (8320), PolyRefl.mkT 6 4 6 0 0 (544), PolyRefl.mkT 8 2 0 6 0 (-3072), PolyRefl.mkT 8 2 2 4 0 (5888), PolyRefl.mkT 8 2 4 2 0 (-3264), PolyRefl.mkT 8 2 6 0 0 (368), PolyRefl.mkT 10 0 0 6 0 (-1024), PolyRefl.mkT 10 0 2 4 0 (1792), PolyRefl.mkT 10 0 4 2 0 (-832), PolyRefl.mkT 10 0 6 0 0 (48)]
def cp498_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 102 32 0 0 (-7), PolyRefl.mkT 4 100 32 0 0 (1134), PolyRefl.mkT 6 98 32 0 0 (-76479), PolyRefl.mkT 8 96 32 0 0 (2751728), PolyRefl.mkT 10 94 32 0 0 (-51964164), PolyRefl.mkT 12 92 32 0 0 (171647256), PolyRefl.mkT 14 90 32 0 0 (18049358188), PolyRefl.mkT 16 88 32 0 0 (-553072067312), PolyRefl.mkT 18 86 32 0 0 (9001504908458), PolyRefl.mkT 20 84 32 0 0 (-92278746051364), PolyRefl.mkT 22 82 32 0 0 (520951154578186), PolyRefl.mkT 24 80 32 0 0 (778467830786640), PolyRefl.mkT 26 78 32 0 0 (-52741418266728964), PolyRefl.mkT 28 76 32 0 0 (655024941650322104), PolyRefl.mkT 30 74 32 0 0 (-5312074474939730740), PolyRefl.mkT 32 72 32 0 0 (32603687940396483504), PolyRefl.mkT 34 70 32 0 0 (-159568901744455237537), PolyRefl.mkT 36 68 32 0 0 (638883879509721278130), PolyRefl.mkT 38 66 32 0 0 (-2124163996648272143417), PolyRefl.mkT 40 64 32 0 0 (5922908749518781268576), PolyRefl.mkT 42 62 32 0 0 (-13949706558688704746824), PolyRefl.mkT 44 60 32 0 0 (27904834035028460635184), PolyRefl.mkT 46 58 32 0 0 (-47621496297465363201512), PolyRefl.mkT 48 56 32 0 0 (69576694614280586745248), PolyRefl.mkT 50 54 32 0 0 (-87255427411359301853460), PolyRefl.mkT 52 52 32 0 0 (94078293549945726074888), PolyRefl.mkT 54 50 32 0 0 (-87255427411359301853460), PolyRefl.mkT 56 48 32 0 0 (69576694614280586745248), PolyRefl.mkT 58 46 32 0 0 (-47621496297465363201512), PolyRefl.mkT 60 44 32 0 0 (27904834035028460635184), PolyRefl.mkT 62 42 32 0 0 (-13949706558688704746824), PolyRefl.mkT 64 40 32 0 0 (5922908749518781268576), PolyRefl.mkT 66 38 32 0 0 (-2124163996648272143417), PolyRefl.mkT 68 36 32 0 0 (638883879509721278130), PolyRefl.mkT 70 34 32 0 0 (-159568901744455237537), PolyRefl.mkT 72 32 32 0 0 (32603687940396483504), PolyRefl.mkT 74 30 32 0 0 (-5312074474939730740), PolyRefl.mkT 76 28 32 0 0 (655024941650322104), PolyRefl.mkT 78 26 32 0 0 (-52741418266728964), PolyRefl.mkT 80 24 32 0 0 (778467830786640), PolyRefl.mkT 82 22 32 0 0 (520951154578186), PolyRefl.mkT 84 20 32 0 0 (-92278746051364), PolyRefl.mkT 86 18 32 0 0 (9001504908458), PolyRefl.mkT 88 16 32 0 0 (-553072067312), PolyRefl.mkT 90 14 32 0 0 (18049358188), PolyRefl.mkT 92 12 32 0 0 (171647256), PolyRefl.mkT 94 10 32 0 0 (-51964164), PolyRefl.mkT 96 8 32 0 0 (2751728), PolyRefl.mkT 98 6 32 0 0 (-76479), PolyRefl.mkT 100 4 32 0 0 (1134), PolyRefl.mkT 102 2 32 0 0 (-7)]
def cp499_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 4 0 (65536), PolyRefl.mkT 0 24 2 2 0 (-65536), PolyRefl.mkT 0 24 4 0 0 (8192), PolyRefl.mkT 2 22 0 4 0 (-262144), PolyRefl.mkT 2 22 2 2 0 (262144), PolyRefl.mkT 2 22 4 0 0 (-32768), PolyRefl.mkT 4 20 0 4 0 (-18743296), PolyRefl.mkT 4 20 2 2 0 (18743296), PolyRefl.mkT 4 20 4 0 0 (-2342912), PolyRefl.mkT 6 18 0 4 0 (269221888), PolyRefl.mkT 6 18 2 2 0 (-269221888), PolyRefl.mkT 6 18 4 0 0 (33652736), PolyRefl.mkT 8 16 0 4 0 (-1519452160), PolyRefl.mkT 8 16 2 2 0 (1519452160), PolyRefl.mkT 8 16 4 0 0 (-189931520), PolyRefl.mkT 10 14 0 4 0 (4093116416), PolyRefl.mkT 10 14 2 2 0 (-4093116416), PolyRefl.mkT 10 14 4 0 0 (511639552), PolyRefl.mkT 12 12 0 4 0 (-5379457024), PolyRefl.mkT 12 12 2 2 0 (5379457024), PolyRefl.mkT 12 12 4 0 0 (-672432128), PolyRefl.mkT 14 10 0 4 0 (4093116416), PolyRefl.mkT 14 10 2 2 0 (-4093116416), PolyRefl.mkT 14 10 4 0 0 (511639552), PolyRefl.mkT 16 8 0 4 0 (-1519452160), PolyRefl.mkT 16 8 2 2 0 (1519452160), PolyRefl.mkT 16 8 4 0 0 (-189931520), PolyRefl.mkT 18 6 0 4 0 (269221888), PolyRefl.mkT 18 6 2 2 0 (-269221888), PolyRefl.mkT 18 6 4 0 0 (33652736), PolyRefl.mkT 20 4 0 4 0 (-18743296), PolyRefl.mkT 20 4 2 2 0 (18743296), PolyRefl.mkT 20 4 4 0 0 (-2342912), PolyRefl.mkT 22 2 0 4 0 (-262144), PolyRefl.mkT 22 2 2 2 0 (262144), PolyRefl.mkT 22 2 4 0 0 (-32768), PolyRefl.mkT 24 0 0 4 0 (65536), PolyRefl.mkT 24 0 2 2 0 (-65536), PolyRefl.mkT 24 0 4 0 0 (8192)]
def cp500_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 32 8 4 0 (1), PolyRefl.mkT 0 32 10 2 0 (-1), PolyRefl.mkT 2 30 8 4 0 (-32), PolyRefl.mkT 2 30 10 2 0 (32), PolyRefl.mkT 2 30 12 0 0 (2), PolyRefl.mkT 4 28 8 4 0 (-104), PolyRefl.mkT 4 28 10 2 0 (104), PolyRefl.mkT 4 28 12 0 0 (-140), PolyRefl.mkT 6 26 8 4 0 (11808), PolyRefl.mkT 6 26 10 2 0 (-11808), PolyRefl.mkT 6 26 12 0 0 (3030), PolyRefl.mkT 8 24 8 4 0 (-158116), PolyRefl.mkT 8 24 10 2 0 (158116), PolyRefl.mkT 8 24 12 0 0 (-31864), PolyRefl.mkT 10 22 8 4 0 (1007200), PolyRefl.mkT 10 22 10 2 0 (-1007200), PolyRefl.mkT 10 22 12 0 0 (188018), PolyRefl.mkT 12 20 8 4 0 (-3569112), PolyRefl.mkT 12 20 10 2 0 (3569112), PolyRefl.mkT 12 20 12 0 0 (-656692), PolyRefl.mkT 14 18 8 4 0 (7386016), PolyRefl.mkT 14 18 10 2 0 (-7386016), PolyRefl.mkT 14 18 12 0 0 (1381814), PolyRefl.mkT 16 16 8 4 0 (-9289786), PolyRefl.mkT 16 16 10 2 0 (9289786), PolyRefl.mkT 16 16 12 0 0 (-1768336), PolyRefl.mkT 18 14 8 4 0 (7386016), PolyRefl.mkT 18 14 10 2 0 (-7386016), PolyRefl.mkT 18 14 12 0 0 (1381814), PolyRefl.mkT 20 12 8 4 0 (-3569112), PolyRefl.mkT 20 12 10 2 0 (3569112), PolyRefl.mkT 20 12 12 0 0 (-656692), PolyRefl.mkT 22 10 8 4 0 (1007200), PolyRefl.mkT 22 10 10 2 0 (-1007200), PolyRefl.mkT 22 10 12 0 0 (188018), PolyRefl.mkT 24 8 8 4 0 (-158116), PolyRefl.mkT 24 8 10 2 0 (158116), PolyRefl.mkT 24 8 12 0 0 (-31864), PolyRefl.mkT 26 6 8 4 0 (11808), PolyRefl.mkT 26 6 10 2 0 (-11808), PolyRefl.mkT 26 6 12 0 0 (3030), PolyRefl.mkT 28 4 8 4 0 (-104), PolyRefl.mkT 28 4 10 2 0 (104), PolyRefl.mkT 28 4 12 0 0 (-140), PolyRefl.mkT 30 2 8 4 0 (-32), PolyRefl.mkT 30 2 10 2 0 (32), PolyRefl.mkT 30 2 12 0 0 (2), PolyRefl.mkT 32 0 8 4 0 (1), PolyRefl.mkT 32 0 10 2 0 (-1)]
def cp501_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 96 24 0 0 (1), PolyRefl.mkT 2 94 24 0 0 (-96), PolyRefl.mkT 4 92 24 0 0 (2760), PolyRefl.mkT 6 90 24 0 0 (22624), PolyRefl.mkT 8 88 24 0 0 (-3028524), PolyRefl.mkT 10 86 24 0 0 (61247520), PolyRefl.mkT 12 84 24 0 0 (61786168), PolyRefl.mkT 14 82 24 0 0 (-24188434464), PolyRefl.mkT 16 80 24 0 0 (466126835202), PolyRefl.mkT 18 78 24 0 0 (-3099209271456), PolyRefl.mkT 20 76 24 0 0 (-35730595309416), PolyRefl.mkT 22 74 24 0 0 (1180948916043936), PolyRefl.mkT 24 72 24 0 0 (-16424334792738940), PolyRefl.mkT 26 70 24 0 0 (154418305545594336), PolyRefl.mkT 28 68 24 0 0 (-1092290955837157272), PolyRefl.mkT 30 66 24 0 0 (6080870576461124128), PolyRefl.mkT 32 64 24 0 0 (-27296756108224745745), PolyRefl.mkT 34 62 24 0 0 (100297395183753122880), PolyRefl.mkT 36 60 24 0 0 (-304748169556980398256), PolyRefl.mkT 38 58 24 0 0 (771483802998016924608), PolyRefl.mkT 40 56 24 0 0 (-1636736992448428229976), PolyRefl.mkT 42 54 24 0 0 (2923572569288689636672), PolyRefl.mkT 44 52 24 0 0 (-4412769689713101390672), PolyRefl.mkT 46 50 24 0 0 (5643142801929988594368), PolyRefl.mkT 48 48 24 0 0 (-6124145073977543750116), PolyRefl.mkT 50 46 24 0 0 (5643142801929988594368), PolyRefl.mkT 52 44 24 0 0 (-4412769689713101390672), PolyRefl.mkT 54 42 24 0 0 (2923572569288689636672), PolyRefl.mkT 56 40 24 0 0 (-1636736992448428229976), PolyRefl.mkT 58 38 24 0 0 (771483802998016924608), PolyRefl.mkT 60 36 24 0 0 (-304748169556980398256), PolyRefl.mkT 62 34 24 0 0 (100297395183753122880), PolyRefl.mkT 64 32 24 0 0 (-27296756108224745745), PolyRefl.mkT 66 30 24 0 0 (6080870576461124128), PolyRefl.mkT 68 28 24 0 0 (-1092290955837157272), PolyRefl.mkT 70 26 24 0 0 (154418305545594336), PolyRefl.mkT 72 24 24 0 0 (-16424334792738940), PolyRefl.mkT 74 22 24 0 0 (1180948916043936), PolyRefl.mkT 76 20 24 0 0 (-35730595309416), PolyRefl.mkT 78 18 24 0 0 (-3099209271456), PolyRefl.mkT 80 16 24 0 0 (466126835202), PolyRefl.mkT 82 14 24 0 0 (-24188434464), PolyRefl.mkT 84 12 24 0 0 (61786168), PolyRefl.mkT 86 10 24 0 0 (61247520), PolyRefl.mkT 88 8 24 0 0 (-3028524), PolyRefl.mkT 90 6 24 0 0 (22624), PolyRefl.mkT 92 4 24 0 0 (2760), PolyRefl.mkT 94 2 24 0 0 (-96), PolyRefl.mkT 96 0 24 0 0 (1)]
def cp502_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 72 16 4 0 (16), PolyRefl.mkT 0 72 18 2 0 (-16), PolyRefl.mkT 0 72 20 0 0 (4), PolyRefl.mkT 2 70 16 4 0 (-1216), PolyRefl.mkT 2 70 18 2 0 (1216), PolyRefl.mkT 2 70 20 0 0 (-336), PolyRefl.mkT 4 68 16 4 0 (25952), PolyRefl.mkT 4 68 18 2 0 (-25952), PolyRefl.mkT 4 68 20 0 0 (10136), PolyRefl.mkT 6 66 16 4 0 (288576), PolyRefl.mkT 6 66 18 2 0 (-288576), PolyRefl.mkT 6 66 20 0 0 (-85072), PolyRefl.mkT 8 64 16 4 0 (-22281840), PolyRefl.mkT 8 64 18 2 0 (22281840), PolyRefl.mkT 8 64 20 0 0 (-2593692), PolyRefl.mkT 10 62 16 4 0 (376828416), PolyRefl.mkT 10 62 18 2 0 (-376828416), PolyRefl.mkT 10 62 20 0 0 (89552768), PolyRefl.mkT 12 60 16 4 0 (-897607424), PolyRefl.mkT 12 60 18 2 0 (897607424), PolyRefl.mkT 12 60 20 0 0 (-1279740864), PolyRefl.mkT 14 58 16 4 0 (-72455468544), PolyRefl.mkT 14 58 18 2 0 (72455468544), PolyRefl.mkT 14 58 20 0 0 (9394979200), PolyRefl.mkT 16 56 16 4 0 (1554437154624), PolyRefl.mkT 16 56 18 2 0 (-1554437154624), PolyRefl.mkT 16 56 20 0 0 (-11664593456), PolyRefl.mkT 18 54 16 4 0 (-18143848464640), PolyRefl.mkT 18 54 18 2 0 (18143848464640), PolyRefl.mkT 18 54 20 0 0 (-529621472704), PolyRefl.mkT 20 52 16 4 0 (145146066247296), PolyRefl.mkT 20 52 18 2 0 (-145146066247296), PolyRefl.mkT 20 52 20 0 0 (6691682686624), PolyRefl.mkT 22 50 16 4 0 (-856122737826048), PolyRefl.mkT 22 50 18 2 0 (856122737826048), PolyRefl.mkT 22 50 20 0 0 (-47138600914880), PolyRefl.mkT 24 48 16 4 0 (3851161467420736), PolyRefl.mkT 24 48 18 2 0 (-3851161467420736), PolyRefl.mkT 24 48 20 0 0 (230702214081552), PolyRefl.mkT 26 46 16 4 0 (-13459103607433728), PolyRefl.mkT 26 46 18 2 0 (13459103607433728), PolyRefl.mkT 26 46 20 0 0 (-838601359550848), PolyRefl.mkT 28 44 16 4 0 (36962853485989632), PolyRefl.mkT 28 44 18 2 0 (-36962853485989632), PolyRefl.mkT 28 44 20 0 0 (2335375482181056), PolyRefl.mkT 30 42 16 4 0 (-80404431080305152), PolyRefl.mkT 30 42 18 2 0 (80404431080305152), PolyRefl.mkT 30 42 20 0 0 (-5077570381473664), PolyRefl.mkT 32 40 16 4 0 (139385797837739744), PolyRefl.mkT 32 40 18 2 0 (-139385797837739744), PolyRefl.mkT 32 40 20 0 0 (8741544277457336), PolyRefl.mkT 34 38 16 4 0 (-193492227921422464), PolyRefl.mkT 34 38 18 2 0 (193492227921422464), PolyRefl.mkT 34 38 20 0 0 (-12050499311039712), PolyRefl.mkT 36 36 16 4 0 (215768277309859904), PolyRefl.mkT 36 36 18 2 0 (-215768277309859904), PolyRefl.mkT 36 36 20 0 0 (13400333038940048), PolyRefl.mkT 38 34 16 4 0 (-193492227921422464), PolyRefl.mkT 38 34 18 2 0 (193492227921422464), PolyRefl.mkT 38 34 20 0 0 (-12050499311039712), PolyRefl.mkT 40 32 16 4 0 (139385797837739744), PolyRefl.mkT 40 32 18 2 0 (-139385797837739744), PolyRefl.mkT 40 32 20 0 0 (8741544277457336), PolyRefl.mkT 42 30 16 4 0 (-80404431080305152), PolyRefl.mkT 42 30 18 2 0 (80404431080305152), PolyRefl.mkT 42 30 20 0 0 (-5077570381473664), PolyRefl.mkT 44 28 16 4 0 (36962853485989632), PolyRefl.mkT 44 28 18 2 0 (-36962853485989632), PolyRefl.mkT 44 28 20 0 0 (2335375482181056), PolyRefl.mkT 46 26 16 4 0 (-13459103607433728), PolyRefl.mkT 46 26 18 2 0 (13459103607433728), PolyRefl.mkT 46 26 20 0 0 (-838601359550848), PolyRefl.mkT 48 24 16 4 0 (3851161467420736), PolyRefl.mkT 48 24 18 2 0 (-3851161467420736), PolyRefl.mkT 48 24 20 0 0 (230702214081552), PolyRefl.mkT 50 22 16 4 0 (-856122737826048), PolyRefl.mkT 50 22 18 2 0 (856122737826048), PolyRefl.mkT 50 22 20 0 0 (-47138600914880), PolyRefl.mkT 52 20 16 4 0 (145146066247296), PolyRefl.mkT 52 20 18 2 0 (-145146066247296), PolyRefl.mkT 52 20 20 0 0 (6691682686624), PolyRefl.mkT 54 18 16 4 0 (-18143848464640), PolyRefl.mkT 54 18 18 2 0 (18143848464640), PolyRefl.mkT 54 18 20 0 0 (-529621472704), PolyRefl.mkT 56 16 16 4 0 (1554437154624), PolyRefl.mkT 56 16 18 2 0 (-1554437154624), PolyRefl.mkT 56 16 20 0 0 (-11664593456), PolyRefl.mkT 58 14 16 4 0 (-72455468544), PolyRefl.mkT 58 14 18 2 0 (72455468544), PolyRefl.mkT 58 14 20 0 0 (9394979200), PolyRefl.mkT 60 12 16 4 0 (-897607424), PolyRefl.mkT 60 12 18 2 0 (897607424), PolyRefl.mkT 60 12 20 0 0 (-1279740864), PolyRefl.mkT 62 10 16 4 0 (376828416), PolyRefl.mkT 62 10 18 2 0 (-376828416), PolyRefl.mkT 62 10 20 0 0 (89552768), PolyRefl.mkT 64 8 16 4 0 (-22281840), PolyRefl.mkT 64 8 18 2 0 (22281840), PolyRefl.mkT 64 8 20 0 0 (-2593692), PolyRefl.mkT 66 6 16 4 0 (288576), PolyRefl.mkT 66 6 18 2 0 (-288576), PolyRefl.mkT 66 6 20 0 0 (-85072), PolyRefl.mkT 68 4 16 4 0 (25952), PolyRefl.mkT 68 4 18 2 0 (-25952), PolyRefl.mkT 68 4 20 0 0 (10136), PolyRefl.mkT 70 2 16 4 0 (-1216), PolyRefl.mkT 70 2 18 2 0 (1216), PolyRefl.mkT 70 2 20 0 0 (-336), PolyRefl.mkT 72 0 16 4 0 (16), PolyRefl.mkT 72 0 18 2 0 (-16), PolyRefl.mkT 72 0 20 0 0 (4)]
def cp503_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 1 (6), PolyRefl.mkT 1 3 0 1 0 (8), PolyRefl.mkT 2 2 0 0 1 (-36), PolyRefl.mkT 3 1 0 1 0 (-8), PolyRefl.mkT 4 0 0 0 1 (6)]
def cp504_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 1 (6), PolyRefl.mkT 1 3 0 1 0 (-8), PolyRefl.mkT 2 2 0 0 1 (-36), PolyRefl.mkT 3 1 0 1 0 (8), PolyRefl.mkT 4 0 0 0 1 (6)]
def cp505_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (12), PolyRefl.mkT 1 3 0 0 2 (8), PolyRefl.mkT 1 3 0 2 0 (-24), PolyRefl.mkT 2 2 0 1 1 (-24), PolyRefl.mkT 3 1 0 0 2 (8), PolyRefl.mkT 3 1 0 2 0 (8), PolyRefl.mkT 4 0 0 1 1 (-4)]
def cp506_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (3), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 1 3 2 0 0 (2), PolyRefl.mkT 2 2 0 1 1 (-6), PolyRefl.mkT 3 1 2 0 0 (2), PolyRefl.mkT 4 0 0 1 1 (-1)]
def cp507_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (3), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 1 3 2 0 0 (-2), PolyRefl.mkT 2 2 0 1 1 (-6), PolyRefl.mkT 3 1 2 0 0 (-2), PolyRefl.mkT 4 0 0 1 1 (-1)]
def cp508_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 4 0 (9), PolyRefl.mkT 0 8 2 2 0 (-9), PolyRefl.mkT 2 6 0 4 0 (28), PolyRefl.mkT 2 6 2 2 0 (4), PolyRefl.mkT 2 6 4 0 0 (4), PolyRefl.mkT 4 4 0 4 0 (30), PolyRefl.mkT 4 4 2 2 0 (-62), PolyRefl.mkT 4 4 4 0 0 (8), PolyRefl.mkT 6 2 0 4 0 (12), PolyRefl.mkT 6 2 2 2 0 (-12), PolyRefl.mkT 6 2 4 0 0 (4), PolyRefl.mkT 8 0 0 4 0 (1), PolyRefl.mkT 8 0 2 2 0 (-1)]
def cp509_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 16 0 2 0 (81), PolyRefl.mkT 2 14 0 2 0 (-576), PolyRefl.mkT 2 14 2 0 0 (144), PolyRefl.mkT 4 12 0 2 0 (484), PolyRefl.mkT 4 12 2 0 0 (-3392), PolyRefl.mkT 6 10 0 2 0 (5200), PolyRefl.mkT 6 10 2 0 0 (13136), PolyRefl.mkT 8 8 0 2 0 (5710), PolyRefl.mkT 8 8 2 0 0 (-12544), PolyRefl.mkT 10 6 0 2 0 (1120), PolyRefl.mkT 10 6 2 0 0 (3120), PolyRefl.mkT 12 4 0 2 0 (-524), PolyRefl.mkT 12 4 2 0 0 (-448), PolyRefl.mkT 14 2 0 2 0 (16), PolyRefl.mkT 14 2 2 0 0 (-16), PolyRefl.mkT 16 0 0 2 0 (9)]
def cp510_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 28 12 0 0 (-1), PolyRefl.mkT 2 26 12 0 0 (54), PolyRefl.mkT 4 24 12 0 0 (-1611), PolyRefl.mkT 6 22 12 0 0 (24380), PolyRefl.mkT 8 20 12 0 0 (-183001), PolyRefl.mkT 10 18 12 0 0 (682250), PolyRefl.mkT 12 16 12 0 0 (-1237659), PolyRefl.mkT 14 14 12 0 0 (1187144), PolyRefl.mkT 16 12 12 0 0 (-639515), PolyRefl.mkT 18 10 12 0 0 (199786), PolyRefl.mkT 20 8 12 0 0 (-35097), PolyRefl.mkT 22 6 12 0 0 (3516), PolyRefl.mkT 24 4 12 0 0 (-267), PolyRefl.mkT 26 2 12 0 0 (22), PolyRefl.mkT 28 0 12 0 0 (-1)]
def cp511_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 8 0 (1048576), PolyRefl.mkT 0 24 2 6 0 (-2097152), PolyRefl.mkT 0 24 4 4 0 (1310720), PolyRefl.mkT 0 24 6 2 0 (-262144), PolyRefl.mkT 0 24 8 0 0 (4096), PolyRefl.mkT 2 22 0 8 0 (12582912), PolyRefl.mkT 2 22 2 6 0 (-25165824), PolyRefl.mkT 2 22 4 4 0 (16252928), PolyRefl.mkT 2 22 6 2 0 (-3670016), PolyRefl.mkT 2 22 8 0 0 (114688), PolyRefl.mkT 4 20 0 8 0 (-702545920), PolyRefl.mkT 4 20 2 6 0 (1405091840), PolyRefl.mkT 4 20 4 4 0 (-868745216), PolyRefl.mkT 4 20 6 2 0 (166199296), PolyRefl.mkT 4 20 8 0 0 (-1302528), PolyRefl.mkT 6 18 0 8 0 (7981760512), PolyRefl.mkT 6 18 2 6 0 (-15963521024), PolyRefl.mkT 6 18 4 4 0 (9682026496), PolyRefl.mkT 6 18 6 2 0 (-1700265984), PolyRefl.mkT 6 18 8 0 0 (573440), PolyRefl.mkT 8 16 0 8 0 (-39612055552), PolyRefl.mkT 8 16 2 6 0 (79224111104), PolyRefl.mkT 8 16 4 4 0 (-47304671232), PolyRefl.mkT 8 16 6 2 0 (7692615680), PolyRefl.mkT 8 16 8 0 0 (11464704), PolyRefl.mkT 10 14 0 8 0 (90890567680), PolyRefl.mkT 10 14 2 6 0 (-181781135360), PolyRefl.mkT 10 14 4 4 0 (107364745216), PolyRefl.mkT 10 14 6 2 0 (-16474177536), PolyRefl.mkT 10 14 8 0 0 (12288000), PolyRefl.mkT 12 12 0 8 0 (-86071312384), PolyRefl.mkT 12 12 2 6 0 (172142624768), PolyRefl.mkT 12 12 4 4 0 (-101845041152), PolyRefl.mkT 12 12 6 2 0 (15773728768), PolyRefl.mkT 12 12 8 0 0 (-2506752), PolyRefl.mkT 14 10 0 8 0 (40089157632), PolyRefl.mkT 14 10 2 6 0 (-80178315264), PolyRefl.mkT 14 10 4 4 0 (47788851200), PolyRefl.mkT 14 10 6 2 0 (-7699693568), PolyRefl.mkT 14 10 8 0 0 (-5799936), PolyRefl.mkT 16 8 0 8 0 (-9010413568), PolyRefl.mkT 16 8 2 6 0 (18020827136), PolyRefl.mkT 16 8 4 4 0 (-10898112512), PolyRefl.mkT 16 8 6 2 0 (1887698944), PolyRefl.mkT 16 8 8 0 0 (978944), PolyRefl.mkT 18 6 0 8 0 (633339904), PolyRefl.mkT 18 6 2 6 0 (-1266679808), PolyRefl.mkT 18 6 4 4 0 (798490624), PolyRefl.mkT 18 6 6 2 0 (-165150720), PolyRefl.mkT 18 6 8 0 0 (1228800), PolyRefl.mkT 20 4 0 8 0 (102760448), PolyRefl.mkT 20 4 2 6 0 (-205520896), PolyRefl.mkT 20 4 4 4 0 (121110528), PolyRefl.mkT 20 4 6 2 0 (-18350080), PolyRefl.mkT 20 4 8 0 0 (-253952), PolyRefl.mkT 22 2 0 8 0 (-20971520), PolyRefl.mkT 22 2 2 6 0 (41943040), PolyRefl.mkT 22 2 4 4 0 (-25690112), PolyRefl.mkT 22 2 6 2 0 (4718592), PolyRefl.mkT 22 2 8 0 0 (-16384), PolyRefl.mkT 24 0 0 8 0 (1048576), PolyRefl.mkT 24 0 2 6 0 (-2097152), PolyRefl.mkT 24 0 4 4 0 (1310720), PolyRefl.mkT 24 0 6 2 0 (-262144), PolyRefl.mkT 24 0 8 0 0 (4096)]
def cp512_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (24), PolyRefl.mkT 0 4 0 3 1 (-24), PolyRefl.mkT 1 3 0 0 4 (8), PolyRefl.mkT 1 3 0 2 2 (16), PolyRefl.mkT 1 3 0 4 0 (8), PolyRefl.mkT 2 2 0 1 3 (-48), PolyRefl.mkT 2 2 0 3 1 (48), PolyRefl.mkT 3 1 0 0 4 (-24), PolyRefl.mkT 3 1 0 2 2 (80), PolyRefl.mkT 3 1 0 4 0 (-24), PolyRefl.mkT 4 0 0 1 3 (-8), PolyRefl.mkT 4 0 0 3 1 (8)]
def cp513_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (24), PolyRefl.mkT 1 3 0 0 2 (8), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 1 3 2 0 0 (8), PolyRefl.mkT 2 2 0 1 1 (-48), PolyRefl.mkT 3 1 0 0 2 (-24), PolyRefl.mkT 3 1 0 2 0 (104), PolyRefl.mkT 3 1 2 0 0 (-24), PolyRefl.mkT 4 0 0 1 1 (-8)]
def cp514_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-6), PolyRefl.mkT 0 4 2 1 1 (3), PolyRefl.mkT 1 3 4 0 0 (1), PolyRefl.mkT 2 2 0 3 1 (12), PolyRefl.mkT 2 2 2 1 1 (-6), PolyRefl.mkT 3 1 0 4 0 (-16), PolyRefl.mkT 3 1 2 2 0 (16), PolyRefl.mkT 3 1 4 0 0 (-3), PolyRefl.mkT 4 0 0 3 1 (2), PolyRefl.mkT 4 0 2 1 1 (-1)]
def cp515_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-6), PolyRefl.mkT 0 4 2 1 1 (3), PolyRefl.mkT 1 3 4 0 0 (-1), PolyRefl.mkT 2 2 0 3 1 (12), PolyRefl.mkT 2 2 2 1 1 (-6), PolyRefl.mkT 3 1 0 4 0 (16), PolyRefl.mkT 3 1 2 2 0 (-16), PolyRefl.mkT 3 1 4 0 0 (3), PolyRefl.mkT 4 0 0 3 1 (2), PolyRefl.mkT 4 0 2 1 1 (-1)]
def cp516_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 8 0 (36), PolyRefl.mkT 0 8 2 6 0 (-72), PolyRefl.mkT 0 8 4 4 0 (45), PolyRefl.mkT 0 8 6 2 0 (-9), PolyRefl.mkT 2 6 0 8 0 (-144), PolyRefl.mkT 2 6 2 6 0 (288), PolyRefl.mkT 2 6 4 4 0 (-180), PolyRefl.mkT 2 6 6 2 0 (36), PolyRefl.mkT 2 6 8 0 0 (1), PolyRefl.mkT 4 4 0 8 0 (120), PolyRefl.mkT 4 4 2 6 0 (-240), PolyRefl.mkT 4 4 4 4 0 (118), PolyRefl.mkT 4 4 6 2 0 (2), PolyRefl.mkT 4 4 8 0 0 (-6), PolyRefl.mkT 6 2 0 8 0 (304), PolyRefl.mkT 6 2 2 6 0 (-608), PolyRefl.mkT 6 2 4 4 0 (412), PolyRefl.mkT 6 2 6 2 0 (-108), PolyRefl.mkT 6 2 8 0 0 (9), PolyRefl.mkT 8 0 0 8 0 (4), PolyRefl.mkT 8 0 2 6 0 (-8), PolyRefl.mkT 8 0 4 4 0 (5), PolyRefl.mkT 8 0 6 2 0 (-1)]
def cp517_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 4 0 (2916), PolyRefl.mkT 0 24 2 2 0 (-2916), PolyRefl.mkT 0 24 4 0 0 (729), PolyRefl.mkT 2 22 0 4 0 (-71280), PolyRefl.mkT 2 22 2 2 0 (71280), PolyRefl.mkT 2 22 4 0 0 (-19116), PolyRefl.mkT 4 20 0 4 0 (753768), PolyRefl.mkT 4 20 2 2 0 (-753768), PolyRefl.mkT 4 20 4 0 0 (206874), PolyRefl.mkT 6 18 0 4 0 (-4309488), PolyRefl.mkT 6 18 2 2 0 (4309488), PolyRefl.mkT 6 18 4 0 0 (-1161900), PolyRefl.mkT 8 16 0 4 0 (13709244), PolyRefl.mkT 8 16 2 2 0 (-13709244), PolyRefl.mkT 8 16 4 0 0 (3372271), PolyRefl.mkT 10 14 0 4 0 (-21193184), PolyRefl.mkT 10 14 2 2 0 (21193184), PolyRefl.mkT 10 14 4 0 0 (-3613976), PolyRefl.mkT 12 12 0 4 0 (4753200), PolyRefl.mkT 12 12 2 2 0 (-4753200), PolyRefl.mkT 12 12 4 0 0 (-4230452), PolyRefl.mkT 14 10 0 4 0 (25049504), PolyRefl.mkT 14 10 2 2 0 (-25049504), PolyRefl.mkT 14 10 4 0 0 (12426248), PolyRefl.mkT 16 8 0 4 0 (-15464164), PolyRefl.mkT 16 8 2 2 0 (15464164), PolyRefl.mkT 16 8 4 0 0 (-6734521), PolyRefl.mkT 18 6 0 4 0 (3824208), PolyRefl.mkT 18 6 2 2 0 (-3824208), PolyRefl.mkT 18 6 4 0 0 (1579844), PolyRefl.mkT 20 4 0 4 0 (-437528), PolyRefl.mkT 20 4 2 2 0 (437528), PolyRefl.mkT 20 4 4 0 0 (-174150), PolyRefl.mkT 22 2 0 4 0 (18000), PolyRefl.mkT 22 2 2 2 0 (-18000), PolyRefl.mkT 22 2 4 0 0 (6948), PolyRefl.mkT 24 0 0 4 0 (324), PolyRefl.mkT 24 0 2 2 0 (-324), PolyRefl.mkT 24 0 4 0 0 (81)]
def cp518_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 8 0 0 (-3), PolyRefl.mkT 2 22 8 0 0 (44), PolyRefl.mkT 4 20 8 0 0 (-198), PolyRefl.mkT 6 18 8 0 0 (4764), PolyRefl.mkT 8 16 8 0 0 (-40653), PolyRefl.mkT 10 14 8 0 0 (154840), PolyRefl.mkT 12 12 8 0 0 (-313300), PolyRefl.mkT 14 10 8 0 0 (332312), PolyRefl.mkT 16 8 8 0 0 (-166093), PolyRefl.mkT 18 6 8 0 0 (34300), PolyRefl.mkT 20 4 8 0 0 (-1990), PolyRefl.mkT 22 2 8 0 0 (76), PolyRefl.mkT 24 0 8 0 0 (-3)]
def cp519_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (16), PolyRefl.mkT 0 4 0 3 1 (-16), PolyRefl.mkT 1 3 0 0 4 (8), PolyRefl.mkT 1 3 0 2 2 (-48), PolyRefl.mkT 1 3 0 4 0 (8), PolyRefl.mkT 3 1 0 0 4 (-24), PolyRefl.mkT 3 1 0 2 2 (144), PolyRefl.mkT 3 1 0 4 0 (-24), PolyRefl.mkT 4 0 0 1 3 (-16), PolyRefl.mkT 4 0 0 3 1 (16)]
def cp520_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (16), PolyRefl.mkT 1 3 0 0 2 (8), PolyRefl.mkT 1 3 0 2 0 (-56), PolyRefl.mkT 1 3 2 0 0 (8), PolyRefl.mkT 3 1 0 0 2 (-24), PolyRefl.mkT 3 1 0 2 0 (168), PolyRefl.mkT 3 1 2 0 0 (-24), PolyRefl.mkT 4 0 0 1 1 (-16)]
def cp521_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-4), PolyRefl.mkT 0 4 2 1 1 (2), PolyRefl.mkT 1 3 0 4 0 (8), PolyRefl.mkT 1 3 2 2 0 (-8), PolyRefl.mkT 1 3 4 0 0 (1), PolyRefl.mkT 3 1 0 4 0 (-24), PolyRefl.mkT 3 1 2 2 0 (24), PolyRefl.mkT 3 1 4 0 0 (-3), PolyRefl.mkT 4 0 0 3 1 (4), PolyRefl.mkT 4 0 2 1 1 (-2)]
def cp522_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-4), PolyRefl.mkT 0 4 2 1 1 (2), PolyRefl.mkT 1 3 0 4 0 (-8), PolyRefl.mkT 1 3 2 2 0 (8), PolyRefl.mkT 1 3 4 0 0 (-1), PolyRefl.mkT 3 1 0 4 0 (24), PolyRefl.mkT 3 1 2 2 0 (-24), PolyRefl.mkT 3 1 4 0 0 (3), PolyRefl.mkT 4 0 0 3 1 (4), PolyRefl.mkT 4 0 2 1 1 (-2)]
def cp523_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 8 0 (16), PolyRefl.mkT 0 8 2 6 0 (-32), PolyRefl.mkT 0 8 4 4 0 (20), PolyRefl.mkT 0 8 6 2 0 (-4), PolyRefl.mkT 2 6 0 8 0 (64), PolyRefl.mkT 2 6 2 6 0 (-128), PolyRefl.mkT 2 6 4 4 0 (80), PolyRefl.mkT 2 6 6 2 0 (-16), PolyRefl.mkT 2 6 8 0 0 (1), PolyRefl.mkT 4 4 0 8 0 (-416), PolyRefl.mkT 4 4 2 6 0 (832), PolyRefl.mkT 4 4 4 4 0 (-520), PolyRefl.mkT 4 4 6 2 0 (104), PolyRefl.mkT 4 4 8 0 0 (-6), PolyRefl.mkT 6 2 0 8 0 (576), PolyRefl.mkT 6 2 2 6 0 (-1152), PolyRefl.mkT 6 2 4 4 0 (720), PolyRefl.mkT 6 2 6 2 0 (-144), PolyRefl.mkT 6 2 8 0 0 (9), PolyRefl.mkT 8 0 0 8 0 (16), PolyRefl.mkT 8 0 2 6 0 (-32), PolyRefl.mkT 8 0 4 4 0 (20), PolyRefl.mkT 8 0 6 2 0 (-4)]
def cp524_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 20 0 6 0 (1024), PolyRefl.mkT 0 20 2 4 0 (-1280), PolyRefl.mkT 0 20 4 2 0 (320), PolyRefl.mkT 0 20 6 0 0 (-16), PolyRefl.mkT 2 18 0 6 0 (-14336), PolyRefl.mkT 2 18 2 4 0 (19968), PolyRefl.mkT 2 18 4 2 0 (-5504), PolyRefl.mkT 2 18 6 0 0 (96), PolyRefl.mkT 4 16 0 6 0 (13312), PolyRefl.mkT 4 16 2 4 0 (-33024), PolyRefl.mkT 4 16 4 2 0 (16448), PolyRefl.mkT 4 16 6 0 0 (1840), PolyRefl.mkT 6 14 0 6 0 (712704), PolyRefl.mkT 6 14 2 4 0 (-964608), PolyRefl.mkT 6 14 4 2 0 (251392), PolyRefl.mkT 6 14 6 0 0 (-384), PolyRefl.mkT 8 12 0 6 0 (-4536320), PolyRefl.mkT 8 12 2 4 0 (6669824), PolyRefl.mkT 8 12 4 2 0 (-2118016), PolyRefl.mkT 8 12 6 0 0 (-8992), PolyRefl.mkT 10 10 0 6 0 (11218944), PolyRefl.mkT 10 10 2 4 0 (-17026048), PolyRefl.mkT 10 10 4 2 0 (5809920), PolyRefl.mkT 10 10 6 0 0 (64), PolyRefl.mkT 12 8 0 6 0 (-12204032), PolyRefl.mkT 12 8 2 4 0 (18679296), PolyRefl.mkT 12 8 4 2 0 (-6513024), PolyRefl.mkT 12 8 6 0 0 (24800), PolyRefl.mkT 14 6 0 6 0 (4317184), PolyRefl.mkT 14 6 2 4 0 (-6256640), PolyRefl.mkT 14 6 4 2 0 (1902080), PolyRefl.mkT 14 6 6 0 0 (25216), PolyRefl.mkT 16 4 0 6 0 (-576512), PolyRefl.mkT 16 4 2 4 0 (769792), PolyRefl.mkT 16 4 4 2 0 (-200640), PolyRefl.mkT 16 4 6 0 0 (6960), PolyRefl.mkT 18 2 0 6 0 (18432), PolyRefl.mkT 18 2 2 4 0 (-20992), PolyRefl.mkT 18 2 4 2 0 (4736), PolyRefl.mkT 18 2 6 0 0 (-416), PolyRefl.mkT 20 0 0 6 0 (1024), PolyRefl.mkT 20 0 2 4 0 (-1280), PolyRefl.mkT 20 0 4 2 0 (320), PolyRefl.mkT 20 0 6 0 0 (-16)]
def cp525_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 64 32 0 0 (-3), PolyRefl.mkT 2 62 32 0 0 (352), PolyRefl.mkT 4 60 32 0 0 (-17136), PolyRefl.mkT 6 58 32 0 0 (471456), PolyRefl.mkT 8 56 32 0 0 (-8372648), PolyRefl.mkT 10 54 32 0 0 (103496544), PolyRefl.mkT 12 52 32 0 0 (-934888912), PolyRefl.mkT 14 50 32 0 0 (6384160160), PolyRefl.mkT 16 48 32 0 0 (-33793047508), PolyRefl.mkT 18 46 32 0 0 (141351860448), PolyRefl.mkT 20 44 32 0 0 (-474454553840), PolyRefl.mkT 22 42 32 0 0 (1294061877792), PolyRefl.mkT 24 40 32 0 0 (-2898005541272), PolyRefl.mkT 26 38 32 0 0 (5374781800672), PolyRefl.mkT 28 36 32 0 0 (-8312535237200), PolyRefl.mkT 30 34 32 0 0 (10775502376992), PolyRefl.mkT 32 32 32 0 0 (-11744908771794), PolyRefl.mkT 34 30 32 0 0 (10775502376992), PolyRefl.mkT 36 28 32 0 0 (-8312535237200), PolyRefl.mkT 38 26 32 0 0 (5374781800672), PolyRefl.mkT 40 24 32 0 0 (-2898005541272), PolyRefl.mkT 42 22 32 0 0 (1294061877792), PolyRefl.mkT 44 20 32 0 0 (-474454553840), PolyRefl.mkT 46 18 32 0 0 (141351860448), PolyRefl.mkT 48 16 32 0 0 (-33793047508), PolyRefl.mkT 50 14 32 0 0 (6384160160), PolyRefl.mkT 52 12 32 0 0 (-934888912), PolyRefl.mkT 54 10 32 0 0 (103496544), PolyRefl.mkT 56 8 32 0 0 (-8372648), PolyRefl.mkT 58 6 32 0 0 (471456), PolyRefl.mkT 60 4 32 0 0 (-17136), PolyRefl.mkT 62 2 32 0 0 (352), PolyRefl.mkT 64 0 32 0 0 (-3)]
def cp526_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 0 0 (4096), PolyRefl.mkT 2 2 0 0 0 (-8192), PolyRefl.mkT 4 0 0 0 0 (4096)]
def cp527_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 2 0 (1024), PolyRefl.mkT 0 10 2 0 0 (-512), PolyRefl.mkT 2 8 0 2 0 (-13312), PolyRefl.mkT 2 8 2 0 0 (6656), PolyRefl.mkT 4 6 0 2 0 (51200), PolyRefl.mkT 4 6 2 0 0 (-25600), PolyRefl.mkT 6 4 0 2 0 (-51200), PolyRefl.mkT 6 4 2 0 0 (25600), PolyRefl.mkT 8 2 0 2 0 (13312), PolyRefl.mkT 8 2 2 0 0 (-6656), PolyRefl.mkT 10 0 0 2 0 (-1024), PolyRefl.mkT 10 0 2 0 0 (512)]
def cp528_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 12 4 4 0 (-8), PolyRefl.mkT 0 12 6 2 0 (10), PolyRefl.mkT 0 12 8 0 0 (-3), PolyRefl.mkT 2 10 4 4 0 (112), PolyRefl.mkT 2 10 6 2 0 (-136), PolyRefl.mkT 2 10 8 0 0 (48), PolyRefl.mkT 4 8 4 4 0 (-504), PolyRefl.mkT 4 8 6 2 0 (578), PolyRefl.mkT 4 8 8 0 0 (-195), PolyRefl.mkT 6 6 4 4 0 (800), PolyRefl.mkT 6 6 6 2 0 (-800), PolyRefl.mkT 6 6 8 0 0 (248), PolyRefl.mkT 8 4 4 4 0 (-504), PolyRefl.mkT 8 4 6 2 0 (430), PolyRefl.mkT 8 4 8 0 0 (-121), PolyRefl.mkT 10 2 4 4 0 (112), PolyRefl.mkT 10 2 6 2 0 (-88), PolyRefl.mkT 10 2 8 0 0 (24), PolyRefl.mkT 12 0 4 4 0 (-8), PolyRefl.mkT 12 0 6 2 0 (6), PolyRefl.mkT 12 0 8 0 0 (-1)]
def cp529_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 8 0 0 (64), PolyRefl.mkT 2 22 8 0 0 (-1792), PolyRefl.mkT 4 20 8 0 0 (20608), PolyRefl.mkT 6 18 8 0 0 (-125696), PolyRefl.mkT 8 16 8 0 0 (441280), PolyRefl.mkT 10 14 8 0 0 (-921088), PolyRefl.mkT 12 12 8 0 0 (1173248), PolyRefl.mkT 14 10 8 0 0 (-921088), PolyRefl.mkT 16 8 8 0 0 (441280), PolyRefl.mkT 18 6 8 0 0 (-125696), PolyRefl.mkT 20 4 8 0 0 (20608), PolyRefl.mkT 22 2 8 0 0 (-1792), PolyRefl.mkT 24 0 8 0 0 (64)]
def cp530_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 14 4 2 0 (-512), PolyRefl.mkT 0 14 6 0 0 (128), PolyRefl.mkT 2 12 4 2 0 (7680), PolyRefl.mkT 2 12 6 0 0 (-2176), PolyRefl.mkT 4 10 4 2 0 (-39424), PolyRefl.mkT 4 10 6 0 0 (13440), PolyRefl.mkT 6 8 4 2 0 (83456), PolyRefl.mkT 6 8 6 0 0 (-36992), PolyRefl.mkT 8 6 4 2 0 (-83456), PolyRefl.mkT 8 6 6 0 0 (46464), PolyRefl.mkT 10 4 4 2 0 (39424), PolyRefl.mkT 10 4 6 0 0 (-25984), PolyRefl.mkT 12 2 4 2 0 (-7680), PolyRefl.mkT 12 2 6 0 0 (5504), PolyRefl.mkT 14 0 4 2 0 (512), PolyRefl.mkT 14 0 6 0 0 (-384)]
def cp531_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 26 12 2 0 (-8), PolyRefl.mkT 0 26 14 0 0 (3), PolyRefl.mkT 2 24 12 2 0 (312), PolyRefl.mkT 2 24 14 0 0 (-113), PolyRefl.mkT 4 22 12 2 0 (-4448), PolyRefl.mkT 4 22 14 0 0 (1658), PolyRefl.mkT 6 20 12 2 0 (32160), PolyRefl.mkT 6 20 14 0 0 (-12726), PolyRefl.mkT 8 18 12 2 0 (-133736), PolyRefl.mkT 8 18 14 0 0 (56897), PolyRefl.mkT 10 16 12 2 0 (339544), PolyRefl.mkT 10 16 14 0 0 (-154947), PolyRefl.mkT 12 14 12 2 0 (-538368), PolyRefl.mkT 12 14 14 0 0 (261500), PolyRefl.mkT 14 12 12 2 0 (538368), PolyRefl.mkT 14 12 14 0 0 (-276868), PolyRefl.mkT 16 10 12 2 0 (-339544), PolyRefl.mkT 16 10 14 0 0 (184597), PolyRefl.mkT 18 8 12 2 0 (133736), PolyRefl.mkT 18 8 14 0 0 (-76839), PolyRefl.mkT 20 6 12 2 0 (-32160), PolyRefl.mkT 20 6 14 0 0 (19434), PolyRefl.mkT 22 4 12 2 0 (4448), PolyRefl.mkT 22 4 14 0 0 (-2790), PolyRefl.mkT 24 2 12 2 0 (-312), PolyRefl.mkT 24 2 14 0 0 (199), PolyRefl.mkT 26 0 12 2 0 (8), PolyRefl.mkT 26 0 14 0 0 (-5)]
def cp532_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 52 24 0 0 (64), PolyRefl.mkT 2 50 24 0 0 (-4992), PolyRefl.mkT 4 48 24 0 0 (168512), PolyRefl.mkT 6 46 24 0 0 (-3290112), PolyRefl.mkT 8 44 24 0 0 (41992320), PolyRefl.mkT 10 42 24 0 0 (-374979328), PolyRefl.mkT 12 40 24 0 0 (2444470400), PolyRefl.mkT 14 38 24 0 0 (-11967038464), PolyRefl.mkT 16 36 24 0 0 (44855483840), PolyRefl.mkT 18 34 24 0 0 (-130449679488), PolyRefl.mkT 20 32 24 0 0 (297020872640), PolyRefl.mkT 22 30 24 0 0 (-532646938624), PolyRefl.mkT 24 28 24 0 0 (755148640000), PolyRefl.mkT 26 26 24 0 0 (-848139393536), PolyRefl.mkT 28 24 24 0 0 (755148640000), PolyRefl.mkT 30 22 24 0 0 (-532646938624), PolyRefl.mkT 32 20 24 0 0 (297020872640), PolyRefl.mkT 34 18 24 0 0 (-130449679488), PolyRefl.mkT 36 16 24 0 0 (44855483840), PolyRefl.mkT 38 14 24 0 0 (-11967038464), PolyRefl.mkT 40 12 24 0 0 (2444470400), PolyRefl.mkT 42 10 24 0 0 (-374979328), PolyRefl.mkT 44 8 24 0 0 (41992320), PolyRefl.mkT 46 6 24 0 0 (-3290112), PolyRefl.mkT 48 4 24 0 0 (168512), PolyRefl.mkT 50 2 24 0 0 (-4992), PolyRefl.mkT 52 0 24 0 0 (64)]
def cp533_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 38 16 2 0 (64), PolyRefl.mkT 0 38 18 0 0 (-56), PolyRefl.mkT 2 36 16 2 0 (-3392), PolyRefl.mkT 2 36 18 0 0 (2968), PolyRefl.mkT 4 34 16 2 0 (74560), PolyRefl.mkT 4 34 18 0 0 (-64104), PolyRefl.mkT 6 32 16 2 0 (-919104), PolyRefl.mkT 6 32 18 0 0 (766408), PolyRefl.mkT 8 30 16 2 0 (7167232), PolyRefl.mkT 8 30 18 0 0 (-5727072), PolyRefl.mkT 10 28 16 2 0 (-37619968), PolyRefl.mkT 10 28 18 0 0 (28455648), PolyRefl.mkT 12 26 16 2 0 (137743616), PolyRefl.mkT 12 26 18 0 0 (-97377952), PolyRefl.mkT 14 24 16 2 0 (-359432448), PolyRefl.mkT 14 24 18 0 0 (234354720), PolyRefl.mkT 16 22 16 2 0 (677026688), PolyRefl.mkT 16 22 18 0 0 (-401434384), PolyRefl.mkT 18 20 16 2 0 (-927496576), PolyRefl.mkT 18 20 18 0 0 (492753488), PolyRefl.mkT 20 18 16 2 0 (927496576), PolyRefl.mkT 20 18 18 0 0 (-434743088), PolyRefl.mkT 22 16 16 2 0 (-677026688), PolyRefl.mkT 22 16 18 0 0 (275592304), PolyRefl.mkT 24 14 16 2 0 (359432448), PolyRefl.mkT 24 14 18 0 0 (-125077728), PolyRefl.mkT 26 12 16 2 0 (-137743616), PolyRefl.mkT 26 12 18 0 0 (40365664), PolyRefl.mkT 28 10 16 2 0 (37619968), PolyRefl.mkT 28 10 18 0 0 (-9164320), PolyRefl.mkT 30 8 16 2 0 (-7167232), PolyRefl.mkT 30 8 18 0 0 (1440160), PolyRefl.mkT 32 6 16 2 0 (919104), PolyRefl.mkT 32 6 18 0 0 (-152696), PolyRefl.mkT 34 4 16 2 0 (-74560), PolyRefl.mkT 34 4 18 0 0 (10456), PolyRefl.mkT 36 2 16 2 0 (3392), PolyRefl.mkT 36 2 18 0 0 (-424), PolyRefl.mkT 38 0 16 2 0 (-64), PolyRefl.mkT 38 0 18 0 0 (8)]
def cp534_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (4), PolyRefl.mkT 1 3 0 0 2 (8), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 2 2 0 1 1 (24), PolyRefl.mkT 3 1 0 0 2 (8), PolyRefl.mkT 3 1 0 2 0 (-24), PolyRefl.mkT 4 0 0 1 1 (-12)]
def cp535_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (1), PolyRefl.mkT 1 3 2 0 0 (2), PolyRefl.mkT 2 2 0 1 1 (6), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 3 1 2 0 0 (2), PolyRefl.mkT 4 0 0 1 1 (-3)]
def cp536_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (1), PolyRefl.mkT 1 3 2 0 0 (-2), PolyRefl.mkT 2 2 0 1 1 (6), PolyRefl.mkT 3 1 0 2 0 (8), PolyRefl.mkT 3 1 2 0 0 (-2), PolyRefl.mkT 4 0 0 1 1 (-3)]
def cp537_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 4 0 (1), PolyRefl.mkT 0 8 2 2 0 (-1), PolyRefl.mkT 2 6 0 4 0 (12), PolyRefl.mkT 2 6 2 2 0 (-12), PolyRefl.mkT 2 6 4 0 0 (4), PolyRefl.mkT 4 4 0 4 0 (30), PolyRefl.mkT 4 4 2 2 0 (-62), PolyRefl.mkT 4 4 4 0 0 (8), PolyRefl.mkT 6 2 0 4 0 (28), PolyRefl.mkT 6 2 2 2 0 (4), PolyRefl.mkT 6 2 4 0 0 (4), PolyRefl.mkT 8 0 0 4 0 (9), PolyRefl.mkT 8 0 2 2 0 (-9)]
def cp538_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 16 0 2 0 (9), PolyRefl.mkT 2 14 0 2 0 (16), PolyRefl.mkT 2 14 2 0 0 (-16), PolyRefl.mkT 4 12 0 2 0 (-524), PolyRefl.mkT 4 12 2 0 0 (-448), PolyRefl.mkT 6 10 0 2 0 (1120), PolyRefl.mkT 6 10 2 0 0 (3120), PolyRefl.mkT 8 8 0 2 0 (5710), PolyRefl.mkT 8 8 2 0 0 (-12544), PolyRefl.mkT 10 6 0 2 0 (5200), PolyRefl.mkT 10 6 2 0 0 (13136), PolyRefl.mkT 12 4 0 2 0 (484), PolyRefl.mkT 12 4 2 0 0 (-3392), PolyRefl.mkT 14 2 0 2 0 (-576), PolyRefl.mkT 14 2 2 0 0 (144), PolyRefl.mkT 16 0 0 2 0 (81)]
def cp539_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (8), PolyRefl.mkT 0 4 0 3 1 (-8), PolyRefl.mkT 1 3 0 0 4 (-24), PolyRefl.mkT 1 3 0 2 2 (80), PolyRefl.mkT 1 3 0 4 0 (-24), PolyRefl.mkT 2 2 0 1 3 (48), PolyRefl.mkT 2 2 0 3 1 (-48), PolyRefl.mkT 3 1 0 0 4 (8), PolyRefl.mkT 3 1 0 2 2 (16), PolyRefl.mkT 3 1 0 4 0 (8), PolyRefl.mkT 4 0 0 1 3 (-24), PolyRefl.mkT 4 0 0 3 1 (24)]
def cp540_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (8), PolyRefl.mkT 1 3 0 0 2 (-24), PolyRefl.mkT 1 3 0 2 0 (104), PolyRefl.mkT 1 3 2 0 0 (-24), PolyRefl.mkT 2 2 0 1 1 (48), PolyRefl.mkT 3 1 0 0 2 (8), PolyRefl.mkT 3 1 0 2 0 (8), PolyRefl.mkT 3 1 2 0 0 (8), PolyRefl.mkT 4 0 0 1 1 (-24)]
def cp541_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-2), PolyRefl.mkT 0 4 2 1 1 (1), PolyRefl.mkT 1 3 0 4 0 (-16), PolyRefl.mkT 1 3 2 2 0 (16), PolyRefl.mkT 1 3 4 0 0 (-3), PolyRefl.mkT 2 2 0 3 1 (-12), PolyRefl.mkT 2 2 2 1 1 (6), PolyRefl.mkT 3 1 4 0 0 (1), PolyRefl.mkT 4 0 0 3 1 (6), PolyRefl.mkT 4 0 2 1 1 (-3)]
def cp542_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-2), PolyRefl.mkT 0 4 2 1 1 (1), PolyRefl.mkT 1 3 0 4 0 (16), PolyRefl.mkT 1 3 2 2 0 (-16), PolyRefl.mkT 1 3 4 0 0 (3), PolyRefl.mkT 2 2 0 3 1 (-12), PolyRefl.mkT 2 2 2 1 1 (6), PolyRefl.mkT 3 1 4 0 0 (-1), PolyRefl.mkT 4 0 0 3 1 (6), PolyRefl.mkT 4 0 2 1 1 (-3)]
def cp543_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 8 0 (4), PolyRefl.mkT 0 8 2 6 0 (-8), PolyRefl.mkT 0 8 4 4 0 (5), PolyRefl.mkT 0 8 6 2 0 (-1), PolyRefl.mkT 2 6 0 8 0 (304), PolyRefl.mkT 2 6 2 6 0 (-608), PolyRefl.mkT 2 6 4 4 0 (412), PolyRefl.mkT 2 6 6 2 0 (-108), PolyRefl.mkT 2 6 8 0 0 (9), PolyRefl.mkT 4 4 0 8 0 (120), PolyRefl.mkT 4 4 2 6 0 (-240), PolyRefl.mkT 4 4 4 4 0 (118), PolyRefl.mkT 4 4 6 2 0 (2), PolyRefl.mkT 4 4 8 0 0 (-6), PolyRefl.mkT 6 2 0 8 0 (-144), PolyRefl.mkT 6 2 2 6 0 (288), PolyRefl.mkT 6 2 4 4 0 (-180), PolyRefl.mkT 6 2 6 2 0 (36), PolyRefl.mkT 6 2 8 0 0 (1), PolyRefl.mkT 8 0 0 8 0 (36), PolyRefl.mkT 8 0 2 6 0 (-72), PolyRefl.mkT 8 0 4 4 0 (45), PolyRefl.mkT 8 0 6 2 0 (-9)]
def cp544_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 4 0 (324), PolyRefl.mkT 0 24 2 2 0 (-324), PolyRefl.mkT 0 24 4 0 0 (81), PolyRefl.mkT 2 22 0 4 0 (18000), PolyRefl.mkT 2 22 2 2 0 (-18000), PolyRefl.mkT 2 22 4 0 0 (6948), PolyRefl.mkT 4 20 0 4 0 (-437528), PolyRefl.mkT 4 20 2 2 0 (437528), PolyRefl.mkT 4 20 4 0 0 (-174150), PolyRefl.mkT 6 18 0 4 0 (3824208), PolyRefl.mkT 6 18 2 2 0 (-3824208), PolyRefl.mkT 6 18 4 0 0 (1579844), PolyRefl.mkT 8 16 0 4 0 (-15464164), PolyRefl.mkT 8 16 2 2 0 (15464164), PolyRefl.mkT 8 16 4 0 0 (-6734521), PolyRefl.mkT 10 14 0 4 0 (25049504), PolyRefl.mkT 10 14 2 2 0 (-25049504), PolyRefl.mkT 10 14 4 0 0 (12426248), PolyRefl.mkT 12 12 0 4 0 (4753200), PolyRefl.mkT 12 12 2 2 0 (-4753200), PolyRefl.mkT 12 12 4 0 0 (-4230452), PolyRefl.mkT 14 10 0 4 0 (-21193184), PolyRefl.mkT 14 10 2 2 0 (21193184), PolyRefl.mkT 14 10 4 0 0 (-3613976), PolyRefl.mkT 16 8 0 4 0 (13709244), PolyRefl.mkT 16 8 2 2 0 (-13709244), PolyRefl.mkT 16 8 4 0 0 (3372271), PolyRefl.mkT 18 6 0 4 0 (-4309488), PolyRefl.mkT 18 6 2 2 0 (4309488), PolyRefl.mkT 18 6 4 0 0 (-1161900), PolyRefl.mkT 20 4 0 4 0 (753768), PolyRefl.mkT 20 4 2 2 0 (-753768), PolyRefl.mkT 20 4 4 0 0 (206874), PolyRefl.mkT 22 2 0 4 0 (-71280), PolyRefl.mkT 22 2 2 2 0 (71280), PolyRefl.mkT 22 2 4 0 0 (-19116), PolyRefl.mkT 24 0 0 4 0 (2916), PolyRefl.mkT 24 0 2 2 0 (-2916), PolyRefl.mkT 24 0 4 0 0 (729)]
def cp545_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 5 (24), PolyRefl.mkT 0 4 0 3 3 (-80), PolyRefl.mkT 0 4 0 5 1 (24), PolyRefl.mkT 1 3 0 0 6 (-8), PolyRefl.mkT 1 3 0 2 4 (-24), PolyRefl.mkT 1 3 0 4 2 (-24), PolyRefl.mkT 1 3 0 6 0 (-8), PolyRefl.mkT 2 2 0 1 5 (-144), PolyRefl.mkT 2 2 0 3 3 (480), PolyRefl.mkT 2 2 0 5 1 (-144), PolyRefl.mkT 3 1 0 0 6 (-8), PolyRefl.mkT 3 1 0 2 4 (-24), PolyRefl.mkT 3 1 0 4 2 (-24), PolyRefl.mkT 3 1 0 6 0 (-8), PolyRefl.mkT 4 0 0 1 5 (24), PolyRefl.mkT 4 0 0 3 3 (-80), PolyRefl.mkT 4 0 0 5 1 (24)]
def cp546_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (24), PolyRefl.mkT 0 4 0 3 1 (-104), PolyRefl.mkT 0 4 2 1 1 (24), PolyRefl.mkT 1 3 0 0 4 (-8), PolyRefl.mkT 1 3 0 2 2 (-16), PolyRefl.mkT 1 3 0 4 0 (-8), PolyRefl.mkT 1 3 2 0 2 (-8), PolyRefl.mkT 1 3 2 2 0 (-8), PolyRefl.mkT 1 3 4 0 0 (-8), PolyRefl.mkT 2 2 0 1 3 (-144), PolyRefl.mkT 2 2 0 3 1 (624), PolyRefl.mkT 2 2 2 1 1 (-144), PolyRefl.mkT 3 1 0 0 4 (-8), PolyRefl.mkT 3 1 0 2 2 (-16), PolyRefl.mkT 3 1 0 4 0 (-8), PolyRefl.mkT 3 1 2 0 2 (-8), PolyRefl.mkT 3 1 2 2 0 (-8), PolyRefl.mkT 3 1 4 0 0 (-8), PolyRefl.mkT 4 0 0 1 3 (24), PolyRefl.mkT 4 0 0 3 1 (-104), PolyRefl.mkT 4 0 2 1 1 (24)]
def cp547_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (16), PolyRefl.mkT 0 4 2 3 1 (-16), PolyRefl.mkT 0 4 4 1 1 (3), PolyRefl.mkT 1 3 6 0 0 (-1), PolyRefl.mkT 2 2 0 5 1 (-96), PolyRefl.mkT 2 2 2 3 1 (96), PolyRefl.mkT 2 2 4 1 1 (-18), PolyRefl.mkT 3 1 6 0 0 (-1), PolyRefl.mkT 4 0 0 5 1 (16), PolyRefl.mkT 4 0 2 3 1 (-16), PolyRefl.mkT 4 0 4 1 1 (3)]
def cp548_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (16), PolyRefl.mkT 0 4 2 3 1 (-16), PolyRefl.mkT 0 4 4 1 1 (3), PolyRefl.mkT 1 3 6 0 0 (1), PolyRefl.mkT 2 2 0 5 1 (-96), PolyRefl.mkT 2 2 2 3 1 (96), PolyRefl.mkT 2 2 4 1 1 (-18), PolyRefl.mkT 3 1 6 0 0 (1), PolyRefl.mkT 4 0 0 5 1 (16), PolyRefl.mkT 4 0 2 3 1 (-16), PolyRefl.mkT 4 0 4 1 1 (3)]
def cp549_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 60 24 0 0 (-5), PolyRefl.mkT 2 58 24 0 0 (274), PolyRefl.mkT 4 56 24 0 0 (-6687), PolyRefl.mkT 6 54 24 0 0 (118276), PolyRefl.mkT 8 52 24 0 0 (-1793249), PolyRefl.mkT 10 50 24 0 0 (22947494), PolyRefl.mkT 12 48 24 0 0 (-250438379), PolyRefl.mkT 14 46 24 0 0 (2439125352), PolyRefl.mkT 16 44 24 0 0 (-20971929521), PolyRefl.mkT 18 42 24 0 0 (149909581282), PolyRefl.mkT 20 40 24 0 0 (-848747246995), PolyRefl.mkT 22 38 24 0 0 (3727925183804), PolyRefl.mkT 24 36 24 0 0 (-12636714813101), PolyRefl.mkT 26 34 24 0 0 (33032259444966), PolyRefl.mkT 28 32 24 0 0 (-66467220893983), PolyRefl.mkT 30 30 24 0 0 (102460346145968), PolyRefl.mkT 32 28 24 0 0 (-120013815351071), PolyRefl.mkT 34 26 24 0 0 (105679298980134), PolyRefl.mkT 36 24 24 0 0 (-69174060708397), PolyRefl.mkT 38 22 24 0 0 (33338004520508), PolyRefl.mkT 40 20 24 0 0 (-11747835514899), PolyRefl.mkT 42 18 24 0 0 (3010736942626), PolyRefl.mkT 44 16 24 0 0 (-557801887409), PolyRefl.mkT 46 14 24 0 0 (74100114792), PolyRefl.mkT 48 12 24 0 0 (-6996038635), PolyRefl.mkT 50 10 24 0 0 (469561318), PolyRefl.mkT 52 8 24 0 0 (-23188321), PolyRefl.mkT 54 6 24 0 0 (914180), PolyRefl.mkT 56 4 24 0 0 (-29087), PolyRefl.mkT 58 2 24 0 0 (594), PolyRefl.mkT 60 0 24 0 0 (-5)]
def cp550_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 20 0 0 0 (-1048576), PolyRefl.mkT 2 18 0 0 0 (31457280), PolyRefl.mkT 4 16 0 0 0 (-382730240), PolyRefl.mkT 6 14 0 0 0 (2390753280), PolyRefl.mkT 8 12 0 0 0 (-7937720320), PolyRefl.mkT 10 10 0 0 0 (12872318976), PolyRefl.mkT 12 8 0 0 0 (-7937720320), PolyRefl.mkT 14 6 0 0 0 (2390753280), PolyRefl.mkT 16 4 0 0 0 (-382730240), PolyRefl.mkT 18 2 0 0 0 (31457280), PolyRefl.mkT 20 0 0 0 0 (-1048576)]
def cp551_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 8 0 (16777216), PolyRefl.mkT 0 24 2 6 0 (-37748736), PolyRefl.mkT 0 24 4 4 0 (27262976), PolyRefl.mkT 0 24 6 2 0 (-6553600), PolyRefl.mkT 0 24 8 0 0 (262144), PolyRefl.mkT 2 22 0 8 0 (-335544320), PolyRefl.mkT 2 22 2 6 0 (721420288), PolyRefl.mkT 2 22 4 4 0 (-478150656), PolyRefl.mkT 2 22 6 2 0 (91226112), PolyRefl.mkT 2 22 8 0 0 (1048576), PolyRefl.mkT 4 20 0 8 0 (1644167168), PolyRefl.mkT 4 20 2 6 0 (-3229614080), PolyRefl.mkT 4 20 4 4 0 (1799356416), PolyRefl.mkT 4 20 6 2 0 (-201850880), PolyRefl.mkT 4 20 8 0 0 (-7864320), PolyRefl.mkT 6 18 0 8 0 (10133438464), PolyRefl.mkT 6 18 2 6 0 (-23236444160), PolyRefl.mkT 6 18 4 4 0 (16802381824), PolyRefl.mkT 6 18 6 2 0 (-3671064576), PolyRefl.mkT 6 18 8 0 0 (5242880), PolyRefl.mkT 8 16 0 8 0 (-144166617088), PolyRefl.mkT 8 16 2 6 0 (301021003776), PolyRefl.mkT 8 16 4 4 0 (-189978902528), PolyRefl.mkT 8 16 6 2 0 (33078640640), PolyRefl.mkT 8 16 8 0 0 (29097984), PolyRefl.mkT 10 14 0 8 0 (641426522112), PolyRefl.mkT 10 14 2 6 0 (-1294563540992), PolyRefl.mkT 10 14 4 4 0 (777774956544), PolyRefl.mkT 10 14 6 2 0 (-124774252544), PolyRefl.mkT 10 14 8 0 0 (-31457280), PolyRefl.mkT 12 12 0 8 0 (-1377140998144), PolyRefl.mkT 12 12 2 6 0 (2730944888832), PolyRefl.mkT 12 12 4 4 0 (-1600991002624), PolyRefl.mkT 12 12 6 2 0 (247255269376), PolyRefl.mkT 12 12 8 0 0 (-42991616), PolyRefl.mkT 14 10 0 8 0 (1454249082880), PolyRefl.mkT 14 10 2 6 0 (-2872158715904), PolyRefl.mkT 14 10 4 4 0 (1675557339136), PolyRefl.mkT 14 10 6 2 0 (-257196818432), PolyRefl.mkT 14 10 8 0 0 (52428800), PolyRefl.mkT 16 8 0 8 0 (-633792888832), PolyRefl.mkT 16 8 2 6 0 (1284568514560), PolyRefl.mkT 16 8 4 4 0 (-775168196608), PolyRefl.mkT 16 8 6 2 0 (124883566592), PolyRefl.mkT 16 8 8 0 0 (29097984), PolyRefl.mkT 18 6 0 8 0 (127708168192), PolyRefl.mkT 18 6 2 6 0 (-268452233216), PolyRefl.mkT 18 6 4 4 0 (171354095616), PolyRefl.mkT 18 6 6 2 0 (-30405558272), PolyRefl.mkT 18 6 8 0 0 (-36700160), PolyRefl.mkT 20 4 0 8 0 (-11240734720), PolyRefl.mkT 20 4 2 6 0 (24687673344), PolyRefl.mkT 20 4 4 4 0 (-16991125504), PolyRefl.mkT 20 4 6 2 0 (3556245504), PolyRefl.mkT 20 4 8 0 0 (-7864320), PolyRefl.mkT 22 2 0 8 0 (201326592), PolyRefl.mkT 22 2 2 6 0 (-486539264), PolyRefl.mkT 22 2 4 4 0 (394264576), PolyRefl.mkT 22 2 6 2 0 (-118489088), PolyRefl.mkT 22 2 8 0 0 (9437184), PolyRefl.mkT 24 0 0 8 0 (16777216), PolyRefl.mkT 24 0 2 6 0 (-37748736), PolyRefl.mkT 24 0 4 4 0 (27262976), PolyRefl.mkT 24 0 6 2 0 (-6553600), PolyRefl.mkT 24 0 8 0 0 (262144)]
def cp552_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 28 10 2 0 (-1), PolyRefl.mkT 0 28 12 0 0 (1), PolyRefl.mkT 2 26 10 2 0 (18), PolyRefl.mkT 2 26 12 0 0 (-22), PolyRefl.mkT 4 24 10 2 0 (197), PolyRefl.mkT 4 24 12 0 0 (27), PolyRefl.mkT 6 22 10 2 0 (-268), PolyRefl.mkT 6 22 12 0 0 (-1532), PolyRefl.mkT 8 20 10 2 0 (-1673), PolyRefl.mkT 8 20 12 0 0 (18601), PolyRefl.mkT 10 18 10 2 0 (878), PolyRefl.mkT 10 18 12 0 0 (-100682), PolyRefl.mkT 12 16 10 2 0 (6533), PolyRefl.mkT 12 16 12 0 0 (315451), PolyRefl.mkT 14 14 10 2 0 (1368), PolyRefl.mkT 14 14 12 0 0 (-593736), PolyRefl.mkT 16 12 10 2 0 (-12027), PolyRefl.mkT 16 12 12 0 0 (628283), PolyRefl.mkT 18 10 10 2 0 (-12594), PolyRefl.mkT 18 10 12 0 0 (-331082), PolyRefl.mkT 20 8 10 2 0 (-2121), PolyRefl.mkT 20 8 12 0 0 (94121), PolyRefl.mkT 22 6 10 2 0 (2420), PolyRefl.mkT 22 6 12 0 0 (-13308), PolyRefl.mkT 24 4 10 2 0 (901), PolyRefl.mkT 24 4 12 0 0 (283), PolyRefl.mkT 26 2 10 2 0 (-14), PolyRefl.mkT 26 2 12 0 0 (-22), PolyRefl.mkT 28 0 10 2 0 (-1), PolyRefl.mkT 28 0 12 0 0 (1)]
def cp553_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 32 10 2 0 (16), PolyRefl.mkT 0 32 12 0 0 (4), PolyRefl.mkT 2 30 10 2 0 (-384), PolyRefl.mkT 2 30 12 0 0 (-128), PolyRefl.mkT 4 28 10 2 0 (-1408), PolyRefl.mkT 4 28 12 0 0 (3040), PolyRefl.mkT 6 26 10 2 0 (22912), PolyRefl.mkT 6 26 12 0 0 (-50944), PolyRefl.mkT 8 24 10 2 0 (-2112), PolyRefl.mkT 8 24 12 0 0 (455280), PolyRefl.mkT 10 22 10 2 0 (-170368), PolyRefl.mkT 10 22 12 0 0 (-3239808), PolyRefl.mkT 12 20 10 2 0 (6528), PolyRefl.mkT 12 20 12 0 0 (14977312), PolyRefl.mkT 14 18 10 2 0 (591232), PolyRefl.mkT 14 18 12 0 0 (-42046464), PolyRefl.mkT 16 16 10 2 0 (219232), PolyRefl.mkT 16 16 12 0 0 (71890200), PolyRefl.mkT 18 14 10 2 0 (-974976), PolyRefl.mkT 18 14 12 0 0 (-73996160), PolyRefl.mkT 20 12 10 2 0 (-982656), PolyRefl.mkT 20 12 12 0 0 (44482336), PolyRefl.mkT 22 10 10 2 0 (-40832), PolyRefl.mkT 22 10 12 0 0 (-14447360), PolyRefl.mkT 24 8 10 2 0 (251840), PolyRefl.mkT 24 8 12 0 0 (2521712), PolyRefl.mkT 26 6 10 2 0 (48000), PolyRefl.mkT 26 6 12 0 0 (-305280), PolyRefl.mkT 28 4 10 2 0 (-15744), PolyRefl.mkT 28 4 12 0 0 (18912), PolyRefl.mkT 30 2 10 2 0 (128), PolyRefl.mkT 30 2 12 0 0 (-512), PolyRefl.mkT 32 0 10 2 0 (16), PolyRefl.mkT 32 0 12 0 0 (4)]
def cp554_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-12), PolyRefl.mkT 1 3 0 0 2 (-8), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 2 2 0 1 1 (72), PolyRefl.mkT 3 1 0 0 2 (8), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 4 0 0 1 1 (-12)]
def cp555_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-3), PolyRefl.mkT 1 3 0 2 0 (4), PolyRefl.mkT 1 3 2 0 0 (-2), PolyRefl.mkT 2 2 0 1 1 (18), PolyRefl.mkT 3 1 0 2 0 (-4), PolyRefl.mkT 3 1 2 0 0 (2), PolyRefl.mkT 4 0 0 1 1 (-3)]
def cp556_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-3), PolyRefl.mkT 1 3 0 2 0 (-4), PolyRefl.mkT 1 3 2 0 0 (2), PolyRefl.mkT 2 2 0 1 1 (18), PolyRefl.mkT 3 1 0 2 0 (4), PolyRefl.mkT 3 1 2 0 0 (-2), PolyRefl.mkT 4 0 0 1 1 (-3)]
def cp557_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-24), PolyRefl.mkT 0 4 0 3 1 (24), PolyRefl.mkT 1 3 0 0 4 (8), PolyRefl.mkT 1 3 0 2 2 (16), PolyRefl.mkT 1 3 0 4 0 (8), PolyRefl.mkT 2 2 0 1 3 (48), PolyRefl.mkT 2 2 0 3 1 (-48), PolyRefl.mkT 3 1 0 0 4 (-24), PolyRefl.mkT 3 1 0 2 2 (80), PolyRefl.mkT 3 1 0 4 0 (-24), PolyRefl.mkT 4 0 0 1 3 (8), PolyRefl.mkT 4 0 0 3 1 (-8)]
def cp558_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-24), PolyRefl.mkT 1 3 0 0 2 (8), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 1 3 2 0 0 (8), PolyRefl.mkT 2 2 0 1 1 (48), PolyRefl.mkT 3 1 0 0 2 (-24), PolyRefl.mkT 3 1 0 2 0 (104), PolyRefl.mkT 3 1 2 0 0 (-24), PolyRefl.mkT 4 0 0 1 1 (8)]
def cp559_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (6), PolyRefl.mkT 0 4 2 1 1 (-3), PolyRefl.mkT 1 3 4 0 0 (1), PolyRefl.mkT 2 2 0 3 1 (-12), PolyRefl.mkT 2 2 2 1 1 (6), PolyRefl.mkT 3 1 0 4 0 (-16), PolyRefl.mkT 3 1 2 2 0 (16), PolyRefl.mkT 3 1 4 0 0 (-3), PolyRefl.mkT 4 0 0 3 1 (-2), PolyRefl.mkT 4 0 2 1 1 (1)]
def cp560_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (6), PolyRefl.mkT 0 4 2 1 1 (-3), PolyRefl.mkT 1 3 4 0 0 (-1), PolyRefl.mkT 2 2 0 3 1 (-12), PolyRefl.mkT 2 2 2 1 1 (6), PolyRefl.mkT 3 1 0 4 0 (16), PolyRefl.mkT 3 1 2 2 0 (-16), PolyRefl.mkT 3 1 4 0 0 (3), PolyRefl.mkT 4 0 0 3 1 (-2), PolyRefl.mkT 4 0 2 1 1 (1)]
def cp561_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 5 (-36), PolyRefl.mkT 0 4 0 3 3 (120), PolyRefl.mkT 0 4 0 5 1 (-36), PolyRefl.mkT 1 3 0 0 6 (-8), PolyRefl.mkT 1 3 0 2 4 (-24), PolyRefl.mkT 1 3 0 4 2 (-24), PolyRefl.mkT 1 3 0 6 0 (-8), PolyRefl.mkT 2 2 0 1 5 (72), PolyRefl.mkT 2 2 0 3 3 (-240), PolyRefl.mkT 2 2 0 5 1 (72), PolyRefl.mkT 3 1 0 0 6 (24), PolyRefl.mkT 3 1 0 2 4 (-216), PolyRefl.mkT 3 1 0 4 2 (264), PolyRefl.mkT 3 1 0 6 0 (-8), PolyRefl.mkT 4 0 0 1 5 (12), PolyRefl.mkT 4 0 0 3 3 (-40), PolyRefl.mkT 4 0 0 5 1 (12)]
def cp562_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-36), PolyRefl.mkT 0 4 0 3 1 (156), PolyRefl.mkT 0 4 2 1 1 (-36), PolyRefl.mkT 1 3 0 0 4 (-8), PolyRefl.mkT 1 3 0 2 2 (-16), PolyRefl.mkT 1 3 0 4 0 (-8), PolyRefl.mkT 1 3 2 0 2 (-8), PolyRefl.mkT 1 3 2 2 0 (-8), PolyRefl.mkT 1 3 4 0 0 (-8), PolyRefl.mkT 2 2 0 1 3 (72), PolyRefl.mkT 2 2 0 3 1 (-312), PolyRefl.mkT 2 2 2 1 1 (72), PolyRefl.mkT 3 1 0 0 4 (24), PolyRefl.mkT 3 1 0 2 2 (-240), PolyRefl.mkT 3 1 0 4 0 (504), PolyRefl.mkT 3 1 2 0 2 (24), PolyRefl.mkT 3 1 2 2 0 (-264), PolyRefl.mkT 3 1 4 0 0 (24), PolyRefl.mkT 4 0 0 1 3 (12), PolyRefl.mkT 4 0 0 3 1 (-52), PolyRefl.mkT 4 0 2 1 1 (12)]
def cp563_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (-48), PolyRefl.mkT 0 4 2 3 1 (48), PolyRefl.mkT 0 4 4 1 1 (-9), PolyRefl.mkT 1 3 6 0 0 (-2), PolyRefl.mkT 2 2 0 5 1 (96), PolyRefl.mkT 2 2 2 3 1 (-96), PolyRefl.mkT 2 2 4 1 1 (18), PolyRefl.mkT 3 1 0 6 0 (-128), PolyRefl.mkT 3 1 2 4 0 (192), PolyRefl.mkT 3 1 4 2 0 (-72), PolyRefl.mkT 3 1 6 0 0 (6), PolyRefl.mkT 4 0 0 5 1 (16), PolyRefl.mkT 4 0 2 3 1 (-16), PolyRefl.mkT 4 0 4 1 1 (3)]
def cp564_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (-48), PolyRefl.mkT 0 4 2 3 1 (48), PolyRefl.mkT 0 4 4 1 1 (-9), PolyRefl.mkT 1 3 6 0 0 (2), PolyRefl.mkT 2 2 0 5 1 (96), PolyRefl.mkT 2 2 2 3 1 (-96), PolyRefl.mkT 2 2 4 1 1 (18), PolyRefl.mkT 3 1 0 6 0 (128), PolyRefl.mkT 3 1 2 4 0 (-192), PolyRefl.mkT 3 1 4 2 0 (72), PolyRefl.mkT 3 1 6 0 0 (-6), PolyRefl.mkT 4 0 0 5 1 (16), PolyRefl.mkT 4 0 2 3 1 (-16), PolyRefl.mkT 4 0 4 1 1 (3)]
def cp565_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 12 0 (2304), PolyRefl.mkT 0 8 2 10 0 (-6912), PolyRefl.mkT 0 8 4 8 0 (7776), PolyRefl.mkT 0 8 6 6 0 (-4032), PolyRefl.mkT 0 8 8 4 0 (945), PolyRefl.mkT 0 8 10 2 0 (-81), PolyRefl.mkT 2 6 0 12 0 (-9216), PolyRefl.mkT 2 6 2 10 0 (27648), PolyRefl.mkT 2 6 4 8 0 (-31104), PolyRefl.mkT 2 6 6 6 0 (16128), PolyRefl.mkT 2 6 8 4 0 (-3780), PolyRefl.mkT 2 6 10 2 0 (324), PolyRefl.mkT 2 6 12 0 0 (4), PolyRefl.mkT 4 4 0 12 0 (7680), PolyRefl.mkT 4 4 2 10 0 (-23040), PolyRefl.mkT 4 4 4 8 0 (25920), PolyRefl.mkT 4 4 6 6 0 (-12928), PolyRefl.mkT 4 4 8 4 0 (2382), PolyRefl.mkT 4 4 10 2 0 (18), PolyRefl.mkT 4 4 12 0 0 (-24), PolyRefl.mkT 6 2 0 12 0 (19456), PolyRefl.mkT 6 2 2 10 0 (-58368), PolyRefl.mkT 6 2 4 8 0 (65664), PolyRefl.mkT 6 2 6 6 0 (-34560), PolyRefl.mkT 6 2 8 4 0 (8748), PolyRefl.mkT 6 2 10 2 0 (-972), PolyRefl.mkT 6 2 12 0 0 (36), PolyRefl.mkT 8 0 0 12 0 (256), PolyRefl.mkT 8 0 2 10 0 (-768), PolyRefl.mkT 8 0 4 8 0 (864), PolyRefl.mkT 8 0 6 6 0 (-448), PolyRefl.mkT 8 0 8 4 0 (105), PolyRefl.mkT 8 0 10 2 0 (-9)]
def cp566_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 2 (18), PolyRefl.mkT 0 4 0 3 0 (-6), PolyRefl.mkT 1 3 0 0 3 (-8), PolyRefl.mkT 1 3 0 2 1 (24), PolyRefl.mkT 2 2 0 1 2 (-108), PolyRefl.mkT 2 2 0 3 0 (36), PolyRefl.mkT 3 1 0 0 3 (8), PolyRefl.mkT 3 1 0 2 1 (-24), PolyRefl.mkT 4 0 0 1 2 (18), PolyRefl.mkT 4 0 0 3 0 (-6)]
def cp567_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 0 (18), PolyRefl.mkT 1 3 0 0 1 (-8), PolyRefl.mkT 2 2 0 1 0 (-108), PolyRefl.mkT 3 1 0 0 1 (8), PolyRefl.mkT 4 0 0 1 0 (18)]
def cp568_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 32 0 6 0 (6879707136), PolyRefl.mkT 0 32 2 4 0 (-10319560704), PolyRefl.mkT 0 32 4 2 0 (3869835264), PolyRefl.mkT 0 32 6 0 0 (-429981696), PolyRefl.mkT 2 30 0 6 0 (-238496514048), PolyRefl.mkT 2 30 2 4 0 (357744771072), PolyRefl.mkT 2 30 4 2 0 (-134154289152), PolyRefl.mkT 2 30 6 0 0 (15670444032), PolyRefl.mkT 4 28 0 6 0 (3734406955008), PolyRefl.mkT 4 28 2 4 0 (-5601610432512), PolyRefl.mkT 4 28 4 2 0 (2100603912192), PolyRefl.mkT 4 28 6 0 0 (-252086059008), PolyRefl.mkT 6 26 0 6 0 (-34209037025280), PolyRefl.mkT 6 26 2 4 0 (51313555537920), PolyRefl.mkT 6 26 4 2 0 (-19242583326720), PolyRefl.mkT 6 26 6 0 0 (2325383479296), PolyRefl.mkT 8 24 0 6 0 (199257797689344), PolyRefl.mkT 8 24 2 4 0 (-298886696534016), PolyRefl.mkT 8 24 4 2 0 (112082511200256), PolyRefl.mkT 8 24 6 0 0 (-13313075576832), PolyRefl.mkT 10 22 0 6 0 (-749186202992640), PolyRefl.mkT 10 22 2 4 0 (1123779304488960), PolyRefl.mkT 10 22 4 2 0 (-421417239183360), PolyRefl.mkT 10 22 6 0 0 (47328013058048), PolyRefl.mkT 12 20 0 6 0 (1742123611193344), PolyRefl.mkT 12 20 2 4 0 (-2613185416790016), PolyRefl.mkT 12 20 4 2 0 (979944531296256), PolyRefl.mkT 12 20 6 0 0 (-94933640806400), PolyRefl.mkT 14 18 0 6 0 (-2118587972059136), PolyRefl.mkT 14 18 2 4 0 (3177881958088704), PolyRefl.mkT 14 18 4 2 0 (-1191705734283264), PolyRefl.mkT 14 18 6 0 0 (61603890855936), PolyRefl.mkT 16 16 0 6 0 (289122885304320), PolyRefl.mkT 16 16 2 4 0 (-433684327956480), PolyRefl.mkT 16 16 4 2 0 (162631622983680), PolyRefl.mkT 16 16 6 0 0 (141061612765184), PolyRefl.mkT 18 14 0 6 0 (2252979344244736), PolyRefl.mkT 18 14 2 4 0 (-3379469016367104), PolyRefl.mkT 18 14 4 2 0 (1267300881137664), PolyRefl.mkT 18 14 6 0 0 (-317365105983488), PolyRefl.mkT 20 12 0 6 0 (-1942862245658624), PolyRefl.mkT 20 12 2 4 0 (2914293368487936), PolyRefl.mkT 20 12 4 2 0 (-1092860013182976), PolyRefl.mkT 20 12 6 0 0 (223864644698112), PolyRefl.mkT 22 10 0 6 0 (753419597905920), PolyRefl.mkT 22 10 2 4 0 (-1130129396858880), PolyRefl.mkT 22 10 4 2 0 (423798523822080), PolyRefl.mkT 22 10 6 0 0 (-81084293840896), PolyRefl.mkT 24 8 0 6 0 (-164702814470144), PolyRefl.mkT 24 8 2 4 0 (247054221705216), PolyRefl.mkT 24 8 4 2 0 (-92645333139456), PolyRefl.mkT 24 8 6 0 0 (17077457649664), PolyRefl.mkT 26 6 0 6 0 (21029359452160), PolyRefl.mkT 26 6 2 4 0 (-31544039178240), PolyRefl.mkT 26 6 4 2 0 (11829014691840), PolyRefl.mkT 26 6 6 0 0 (-2122502897664), PolyRefl.mkT 28 4 0 6 0 (-1440038780928), PolyRefl.mkT 28 4 2 4 0 (2160058171392), PolyRefl.mkT 28 4 4 2 0 (-810021814272), PolyRefl.mkT 28 4 6 0 0 (142963900416), PolyRefl.mkT 30 2 0 6 0 (34653339648), PolyRefl.mkT 30 2 2 4 0 (-51980009472), PolyRefl.mkT 30 2 4 2 0 (19492503552), PolyRefl.mkT 30 2 6 0 0 (-3609722880), PolyRefl.mkT 32 0 0 6 0 (764411904), PolyRefl.mkT 32 0 2 4 0 (-1146617856), PolyRefl.mkT 32 0 4 2 0 (429981696), PolyRefl.mkT 32 0 6 0 0 (-47775744)]
def cp569_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 5 (-24), PolyRefl.mkT 0 4 0 3 3 (80), PolyRefl.mkT 0 4 0 5 1 (-24), PolyRefl.mkT 1 3 0 0 6 (-16), PolyRefl.mkT 1 3 0 2 4 (240), PolyRefl.mkT 1 3 0 4 2 (-240), PolyRefl.mkT 1 3 0 6 0 (16), PolyRefl.mkT 2 2 0 1 5 (-48), PolyRefl.mkT 2 2 0 3 3 (160), PolyRefl.mkT 2 2 0 5 1 (-48), PolyRefl.mkT 3 1 0 0 6 (16), PolyRefl.mkT 3 1 0 2 4 (-240), PolyRefl.mkT 3 1 0 4 2 (240), PolyRefl.mkT 3 1 0 6 0 (-16), PolyRefl.mkT 4 0 0 1 5 (-24), PolyRefl.mkT 4 0 0 3 3 (80), PolyRefl.mkT 4 0 0 5 1 (-24)]
def cp570_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-24), PolyRefl.mkT 0 4 0 3 1 (104), PolyRefl.mkT 0 4 2 1 1 (-24), PolyRefl.mkT 1 3 0 0 4 (-16), PolyRefl.mkT 1 3 0 2 2 (256), PolyRefl.mkT 1 3 0 4 0 (-496), PolyRefl.mkT 1 3 2 0 2 (-16), PolyRefl.mkT 1 3 2 2 0 (272), PolyRefl.mkT 1 3 4 0 0 (-16), PolyRefl.mkT 2 2 0 1 3 (-48), PolyRefl.mkT 2 2 0 3 1 (208), PolyRefl.mkT 2 2 2 1 1 (-48), PolyRefl.mkT 3 1 0 0 4 (16), PolyRefl.mkT 3 1 0 2 2 (-256), PolyRefl.mkT 3 1 0 4 0 (496), PolyRefl.mkT 3 1 2 0 2 (16), PolyRefl.mkT 3 1 2 2 0 (-272), PolyRefl.mkT 3 1 4 0 0 (16), PolyRefl.mkT 4 0 0 1 3 (-24), PolyRefl.mkT 4 0 0 3 1 (104), PolyRefl.mkT 4 0 2 1 1 (-24)]
def cp571_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-8), PolyRefl.mkT 0 4 0 3 1 (8), PolyRefl.mkT 1 3 0 0 4 (-24), PolyRefl.mkT 1 3 0 2 2 (80), PolyRefl.mkT 1 3 0 4 0 (-24), PolyRefl.mkT 2 2 0 1 3 (-48), PolyRefl.mkT 2 2 0 3 1 (48), PolyRefl.mkT 3 1 0 0 4 (8), PolyRefl.mkT 3 1 0 2 2 (16), PolyRefl.mkT 3 1 0 4 0 (8), PolyRefl.mkT 4 0 0 1 3 (24), PolyRefl.mkT 4 0 0 3 1 (-24)]
def cp572_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-8), PolyRefl.mkT 1 3 0 0 2 (-24), PolyRefl.mkT 1 3 0 2 0 (104), PolyRefl.mkT 1 3 2 0 0 (-24), PolyRefl.mkT 2 2 0 1 1 (-48), PolyRefl.mkT 3 1 0 0 2 (8), PolyRefl.mkT 3 1 0 2 0 (8), PolyRefl.mkT 3 1 2 0 0 (8), PolyRefl.mkT 4 0 0 1 1 (24)]
def cp573_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (2), PolyRefl.mkT 0 4 2 1 1 (-1), PolyRefl.mkT 1 3 0 4 0 (-16), PolyRefl.mkT 1 3 2 2 0 (16), PolyRefl.mkT 1 3 4 0 0 (-3), PolyRefl.mkT 2 2 0 3 1 (12), PolyRefl.mkT 2 2 2 1 1 (-6), PolyRefl.mkT 3 1 4 0 0 (1), PolyRefl.mkT 4 0 0 3 1 (-6), PolyRefl.mkT 4 0 2 1 1 (3)]
def cp574_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (2), PolyRefl.mkT 0 4 2 1 1 (-1), PolyRefl.mkT 1 3 0 4 0 (16), PolyRefl.mkT 1 3 2 2 0 (-16), PolyRefl.mkT 1 3 4 0 0 (3), PolyRefl.mkT 2 2 0 3 1 (12), PolyRefl.mkT 2 2 2 1 1 (-6), PolyRefl.mkT 3 1 4 0 0 (-1), PolyRefl.mkT 4 0 0 3 1 (-6), PolyRefl.mkT 4 0 2 1 1 (3)]
def cp575_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 5 (36), PolyRefl.mkT 0 4 0 3 3 (-120), PolyRefl.mkT 0 4 0 5 1 (36), PolyRefl.mkT 1 3 0 0 6 (-8), PolyRefl.mkT 1 3 0 2 4 (-24), PolyRefl.mkT 1 3 0 4 2 (-24), PolyRefl.mkT 1 3 0 6 0 (-8), PolyRefl.mkT 2 2 0 1 5 (-72), PolyRefl.mkT 2 2 0 3 3 (240), PolyRefl.mkT 2 2 0 5 1 (-72), PolyRefl.mkT 3 1 0 0 6 (24), PolyRefl.mkT 3 1 0 2 4 (-216), PolyRefl.mkT 3 1 0 4 2 (264), PolyRefl.mkT 3 1 0 6 0 (-8), PolyRefl.mkT 4 0 0 1 5 (-12), PolyRefl.mkT 4 0 0 3 3 (40), PolyRefl.mkT 4 0 0 5 1 (-12)]
def cp576_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (36), PolyRefl.mkT 0 4 0 3 1 (-156), PolyRefl.mkT 0 4 2 1 1 (36), PolyRefl.mkT 1 3 0 0 4 (-8), PolyRefl.mkT 1 3 0 2 2 (-16), PolyRefl.mkT 1 3 0 4 0 (-8), PolyRefl.mkT 1 3 2 0 2 (-8), PolyRefl.mkT 1 3 2 2 0 (-8), PolyRefl.mkT 1 3 4 0 0 (-8), PolyRefl.mkT 2 2 0 1 3 (-72), PolyRefl.mkT 2 2 0 3 1 (312), PolyRefl.mkT 2 2 2 1 1 (-72), PolyRefl.mkT 3 1 0 0 4 (24), PolyRefl.mkT 3 1 0 2 2 (-240), PolyRefl.mkT 3 1 0 4 0 (504), PolyRefl.mkT 3 1 2 0 2 (24), PolyRefl.mkT 3 1 2 2 0 (-264), PolyRefl.mkT 3 1 4 0 0 (24), PolyRefl.mkT 4 0 0 1 3 (-12), PolyRefl.mkT 4 0 0 3 1 (52), PolyRefl.mkT 4 0 2 1 1 (-12)]
def cp577_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (48), PolyRefl.mkT 0 4 2 3 1 (-48), PolyRefl.mkT 0 4 4 1 1 (9), PolyRefl.mkT 1 3 6 0 0 (-2), PolyRefl.mkT 2 2 0 5 1 (-96), PolyRefl.mkT 2 2 2 3 1 (96), PolyRefl.mkT 2 2 4 1 1 (-18), PolyRefl.mkT 3 1 0 6 0 (-128), PolyRefl.mkT 3 1 2 4 0 (192), PolyRefl.mkT 3 1 4 2 0 (-72), PolyRefl.mkT 3 1 6 0 0 (6), PolyRefl.mkT 4 0 0 5 1 (-16), PolyRefl.mkT 4 0 2 3 1 (16), PolyRefl.mkT 4 0 4 1 1 (-3)]
def cp578_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (48), PolyRefl.mkT 0 4 2 3 1 (-48), PolyRefl.mkT 0 4 4 1 1 (9), PolyRefl.mkT 1 3 6 0 0 (2), PolyRefl.mkT 2 2 0 5 1 (-96), PolyRefl.mkT 2 2 2 3 1 (96), PolyRefl.mkT 2 2 4 1 1 (-18), PolyRefl.mkT 3 1 0 6 0 (128), PolyRefl.mkT 3 1 2 4 0 (-192), PolyRefl.mkT 3 1 4 2 0 (72), PolyRefl.mkT 3 1 6 0 0 (-6), PolyRefl.mkT 4 0 0 5 1 (-16), PolyRefl.mkT 4 0 2 3 1 (16), PolyRefl.mkT 4 0 4 1 1 (-3)]
def cp579_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 28 12 0 0 (1), PolyRefl.mkT 2 26 12 0 0 (-8), PolyRefl.mkT 4 24 12 0 0 (275), PolyRefl.mkT 6 22 12 0 0 (-5824), PolyRefl.mkT 8 20 12 0 0 (49089), PolyRefl.mkT 10 18 12 0 0 (-204984), PolyRefl.mkT 12 16 12 0 0 (472875), PolyRefl.mkT 14 14 12 0 0 (-631040), PolyRefl.mkT 16 12 12 0 0 (472875), PolyRefl.mkT 18 10 12 0 0 (-204984), PolyRefl.mkT 20 8 12 0 0 (49089), PolyRefl.mkT 22 6 12 0 0 (-5824), PolyRefl.mkT 24 4 12 0 0 (275), PolyRefl.mkT 26 2 12 0 0 (-8), PolyRefl.mkT 28 0 12 0 0 (1)]
def cp580_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 8 0 (65536), PolyRefl.mkT 0 24 2 6 0 (-131072), PolyRefl.mkT 0 24 4 4 0 (73728), PolyRefl.mkT 0 24 6 2 0 (-8192), PolyRefl.mkT 0 24 8 0 0 (256), PolyRefl.mkT 2 22 0 8 0 (-262144), PolyRefl.mkT 2 22 2 6 0 (524288), PolyRefl.mkT 2 22 4 4 0 (-327680), PolyRefl.mkT 2 22 6 2 0 (65536), PolyRefl.mkT 2 22 8 0 0 (3072), PolyRefl.mkT 4 20 0 8 0 (-18743296), PolyRefl.mkT 4 20 2 6 0 (37486592), PolyRefl.mkT 4 20 4 4 0 (-21151744), PolyRefl.mkT 4 20 6 2 0 (2408448), PolyRefl.mkT 4 20 8 0 0 (-48640), PolyRefl.mkT 6 18 0 8 0 (269221888), PolyRefl.mkT 6 18 2 6 0 (-538443776), PolyRefl.mkT 6 18 4 4 0 (311885824), PolyRefl.mkT 6 18 6 2 0 (-42663936), PolyRefl.mkT 6 18 8 0 0 (56320), PolyRefl.mkT 8 16 0 8 0 (-1519452160), PolyRefl.mkT 8 16 2 6 0 (3038904320), PolyRefl.mkT 8 16 4 4 0 (-1789861888), PolyRefl.mkT 8 16 6 2 0 (270409728), PolyRefl.mkT 8 16 8 0 0 (388864), PolyRefl.mkT 10 14 0 8 0 (4093116416), PolyRefl.mkT 10 14 2 6 0 (-8186232832), PolyRefl.mkT 10 14 4 4 0 (4872601600), PolyRefl.mkT 10 14 6 2 0 (-779485184), PolyRefl.mkT 10 14 8 0 0 (202752), PolyRefl.mkT 12 12 0 8 0 (-5379457024), PolyRefl.mkT 12 12 2 6 0 (10758914048), PolyRefl.mkT 12 12 4 4 0 (-6410895360), PolyRefl.mkT 12 12 6 2 0 (1031438336), PolyRefl.mkT 12 12 8 0 0 (-156672), PolyRefl.mkT 14 10 0 8 0 (4093116416), PolyRefl.mkT 14 10 2 6 0 (-8186232832), PolyRefl.mkT 14 10 4 4 0 (4872601600), PolyRefl.mkT 14 10 6 2 0 (-779485184), PolyRefl.mkT 14 10 8 0 0 (202752), PolyRefl.mkT 16 8 0 8 0 (-1519452160), PolyRefl.mkT 16 8 2 6 0 (3038904320), PolyRefl.mkT 16 8 4 4 0 (-1789861888), PolyRefl.mkT 16 8 6 2 0 (270409728), PolyRefl.mkT 16 8 8 0 0 (388864), PolyRefl.mkT 18 6 0 8 0 (269221888), PolyRefl.mkT 18 6 2 6 0 (-538443776), PolyRefl.mkT 18 6 4 4 0 (311885824), PolyRefl.mkT 18 6 6 2 0 (-42663936), PolyRefl.mkT 18 6 8 0 0 (56320), PolyRefl.mkT 20 4 0 8 0 (-18743296), PolyRefl.mkT 20 4 2 6 0 (37486592), PolyRefl.mkT 20 4 4 4 0 (-21151744), PolyRefl.mkT 20 4 6 2 0 (2408448), PolyRefl.mkT 20 4 8 0 0 (-48640), PolyRefl.mkT 22 2 0 8 0 (-262144), PolyRefl.mkT 22 2 2 6 0 (524288), PolyRefl.mkT 22 2 4 4 0 (-327680), PolyRefl.mkT 22 2 6 2 0 (65536), PolyRefl.mkT 22 2 8 0 0 (3072), PolyRefl.mkT 24 0 0 8 0 (65536), PolyRefl.mkT 24 0 2 6 0 (-131072), PolyRefl.mkT 24 0 4 4 0 (73728), PolyRefl.mkT 24 0 6 2 0 (-8192), PolyRefl.mkT 24 0 8 0 0 (256)]
def cp581_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 22 16 0 0 (1), PolyRefl.mkT 2 20 16 0 0 (-31), PolyRefl.mkT 4 18 16 0 0 (347), PolyRefl.mkT 6 16 16 0 0 (-1861), PolyRefl.mkT 8 14 16 0 0 (5322), PolyRefl.mkT 10 12 16 0 0 (-8822), PolyRefl.mkT 12 10 16 0 0 (8822), PolyRefl.mkT 14 8 16 0 0 (-5322), PolyRefl.mkT 16 6 16 0 0 (1861), PolyRefl.mkT 18 4 16 0 0 (-347), PolyRefl.mkT 20 2 16 0 0 (31), PolyRefl.mkT 22 0 16 0 0 (-1)]
def cp582_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (4096), PolyRefl.mkT 2 4 0 0 0 (-12288), PolyRefl.mkT 4 2 0 0 0 (12288), PolyRefl.mkT 6 0 0 0 0 (-4096)]
def cp583_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 6 0 4 0 (262144), PolyRefl.mkT 2 6 2 2 0 (-196608), PolyRefl.mkT 4 4 0 4 0 (-524288), PolyRefl.mkT 4 4 2 2 0 (524288), PolyRefl.mkT 6 2 0 4 0 (262144), PolyRefl.mkT 6 2 2 2 0 (-327680), PolyRefl.mkT 6 2 4 0 0 (65536)]
def cp584_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 8 0 0 (1), PolyRefl.mkT 2 8 6 2 0 (-16), PolyRefl.mkT 2 8 8 0 0 (-5), PolyRefl.mkT 4 6 6 2 0 (80), PolyRefl.mkT 4 6 8 0 0 (10), PolyRefl.mkT 6 4 6 2 0 (80), PolyRefl.mkT 6 4 8 0 0 (-90), PolyRefl.mkT 8 2 6 2 0 (-16), PolyRefl.mkT 8 2 8 0 0 (21), PolyRefl.mkT 10 0 8 0 0 (-1)]
def cp585_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 4 16 12 0 0 (256), PolyRefl.mkT 6 14 12 0 0 (-2560), PolyRefl.mkT 8 12 12 0 0 (3840), PolyRefl.mkT 10 10 12 0 0 (13312), PolyRefl.mkT 12 8 12 0 0 (3840), PolyRefl.mkT 14 6 12 0 0 (-2560), PolyRefl.mkT 16 4 12 0 0 (256)]
def cp586_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 12 8 0 0 (-16), PolyRefl.mkT 2 10 6 2 0 (-256), PolyRefl.mkT 2 10 8 0 0 (416), PolyRefl.mkT 4 8 6 2 0 (1536), PolyRefl.mkT 4 8 8 0 0 (-2032), PolyRefl.mkT 6 6 8 0 0 (960), PolyRefl.mkT 8 4 6 2 0 (-1536), PolyRefl.mkT 8 4 8 0 0 (-496), PolyRefl.mkT 10 2 6 2 0 (256), PolyRefl.mkT 10 2 8 0 0 (160), PolyRefl.mkT 12 0 8 0 0 (-16)]
def cp587_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 22 16 0 0 (-1), PolyRefl.mkT 2 20 16 0 0 (31), PolyRefl.mkT 4 18 16 0 0 (-347), PolyRefl.mkT 6 16 16 0 0 (1861), PolyRefl.mkT 8 14 16 0 0 (-5322), PolyRefl.mkT 10 12 16 0 0 (8822), PolyRefl.mkT 12 10 16 0 0 (-8822), PolyRefl.mkT 14 8 16 0 0 (5322), PolyRefl.mkT 16 6 16 0 0 (-1861), PolyRefl.mkT 18 4 16 0 0 (347), PolyRefl.mkT 20 2 16 0 0 (-31), PolyRefl.mkT 22 0 16 0 0 (1)]
def cp588_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (-4096), PolyRefl.mkT 2 4 0 0 0 (12288), PolyRefl.mkT 4 2 0 0 0 (-12288), PolyRefl.mkT 6 0 0 0 0 (4096)]
def cp589_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 6 0 4 0 (262144), PolyRefl.mkT 2 6 2 2 0 (-327680), PolyRefl.mkT 2 6 4 0 0 (65536), PolyRefl.mkT 4 4 0 4 0 (-524288), PolyRefl.mkT 4 4 2 2 0 (524288), PolyRefl.mkT 6 2 0 4 0 (262144), PolyRefl.mkT 6 2 2 2 0 (-196608)]
def cp590_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 8 0 0 (-1), PolyRefl.mkT 2 8 6 2 0 (-16), PolyRefl.mkT 2 8 8 0 0 (21), PolyRefl.mkT 4 6 6 2 0 (80), PolyRefl.mkT 4 6 8 0 0 (-90), PolyRefl.mkT 6 4 6 2 0 (80), PolyRefl.mkT 6 4 8 0 0 (10), PolyRefl.mkT 8 2 6 2 0 (-16), PolyRefl.mkT 8 2 8 0 0 (-5), PolyRefl.mkT 10 0 8 0 0 (1)]
def cp591_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 12 8 0 0 (-16), PolyRefl.mkT 2 10 6 2 0 (256), PolyRefl.mkT 2 10 8 0 0 (160), PolyRefl.mkT 4 8 6 2 0 (-1536), PolyRefl.mkT 4 8 8 0 0 (-496), PolyRefl.mkT 6 6 8 0 0 (960), PolyRefl.mkT 8 4 6 2 0 (1536), PolyRefl.mkT 8 4 8 0 0 (-2032), PolyRefl.mkT 10 2 6 2 0 (-256), PolyRefl.mkT 10 2 8 0 0 (416), PolyRefl.mkT 12 0 8 0 0 (-16)]
def cp592_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-16), PolyRefl.mkT 0 4 0 3 1 (16), PolyRefl.mkT 1 3 0 0 4 (8), PolyRefl.mkT 1 3 0 2 2 (-48), PolyRefl.mkT 1 3 0 4 0 (8), PolyRefl.mkT 3 1 0 0 4 (-24), PolyRefl.mkT 3 1 0 2 2 (144), PolyRefl.mkT 3 1 0 4 0 (-24), PolyRefl.mkT 4 0 0 1 3 (16), PolyRefl.mkT 4 0 0 3 1 (-16)]
def cp593_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-16), PolyRefl.mkT 1 3 0 0 2 (8), PolyRefl.mkT 1 3 0 2 0 (-56), PolyRefl.mkT 1 3 2 0 0 (8), PolyRefl.mkT 3 1 0 0 2 (-24), PolyRefl.mkT 3 1 0 2 0 (168), PolyRefl.mkT 3 1 2 0 0 (-24), PolyRefl.mkT 4 0 0 1 1 (16)]
def cp594_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (4), PolyRefl.mkT 0 4 2 1 1 (-2), PolyRefl.mkT 1 3 0 4 0 (8), PolyRefl.mkT 1 3 2 2 0 (-8), PolyRefl.mkT 1 3 4 0 0 (1), PolyRefl.mkT 3 1 0 4 0 (-24), PolyRefl.mkT 3 1 2 2 0 (24), PolyRefl.mkT 3 1 4 0 0 (-3), PolyRefl.mkT 4 0 0 3 1 (-4), PolyRefl.mkT 4 0 2 1 1 (2)]
def cp595_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (4), PolyRefl.mkT 0 4 2 1 1 (-2), PolyRefl.mkT 1 3 0 4 0 (-8), PolyRefl.mkT 1 3 2 2 0 (8), PolyRefl.mkT 1 3 4 0 0 (-1), PolyRefl.mkT 3 1 0 4 0 (24), PolyRefl.mkT 3 1 2 2 0 (-24), PolyRefl.mkT 3 1 4 0 0 (3), PolyRefl.mkT 4 0 0 3 1 (-4), PolyRefl.mkT 4 0 2 1 1 (2)]
def cp596_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 20 0 6 0 (-1024), PolyRefl.mkT 0 20 2 4 0 (1792), PolyRefl.mkT 0 20 4 2 0 (-832), PolyRefl.mkT 0 20 6 0 0 (48), PolyRefl.mkT 2 18 0 6 0 (14336), PolyRefl.mkT 2 18 2 4 0 (-23040), PolyRefl.mkT 2 18 4 2 0 (8576), PolyRefl.mkT 2 18 6 0 0 (224), PolyRefl.mkT 4 16 0 6 0 (-13312), PolyRefl.mkT 4 16 2 4 0 (6912), PolyRefl.mkT 4 16 4 2 0 (9664), PolyRefl.mkT 4 16 6 0 0 (-1424), PolyRefl.mkT 6 14 0 6 0 (-712704), PolyRefl.mkT 6 14 2 4 0 (1173504), PolyRefl.mkT 6 14 4 2 0 (-460288), PolyRefl.mkT 6 14 6 0 0 (-896), PolyRefl.mkT 8 12 0 6 0 (4536320), PolyRefl.mkT 8 12 2 4 0 (-6939136), PolyRefl.mkT 8 12 4 2 0 (2387328), PolyRefl.mkT 8 12 6 0 0 (6496), PolyRefl.mkT 10 10 0 6 0 (-11218944), PolyRefl.mkT 10 10 2 4 0 (16630784), PolyRefl.mkT 10 10 4 2 0 (-5414656), PolyRefl.mkT 10 10 6 0 0 (2880), PolyRefl.mkT 12 8 0 6 0 (12204032), PolyRefl.mkT 12 8 2 4 0 (-17932800), PolyRefl.mkT 12 8 4 2 0 (5766528), PolyRefl.mkT 12 8 6 0 0 (-12960), PolyRefl.mkT 14 6 0 6 0 (-4317184), PolyRefl.mkT 14 6 2 4 0 (6694912), PolyRefl.mkT 14 6 4 2 0 (-2340352), PolyRefl.mkT 14 6 6 0 0 (-12160), PolyRefl.mkT 16 4 0 6 0 (576512), PolyRefl.mkT 16 4 2 4 0 (-959744), PolyRefl.mkT 16 4 4 2 0 (390592), PolyRefl.mkT 16 4 6 0 0 (-400), PolyRefl.mkT 18 2 0 6 0 (-18432), PolyRefl.mkT 18 2 2 4 0 (34304), PolyRefl.mkT 18 2 4 2 0 (-18048), PolyRefl.mkT 18 2 6 0 0 (1760), PolyRefl.mkT 20 0 0 6 0 (-1024), PolyRefl.mkT 20 0 2 4 0 (1792), PolyRefl.mkT 20 0 4 2 0 (-832), PolyRefl.mkT 20 0 6 0 0 (48)]
def cp597_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 8 0 0 (2), PolyRefl.mkT 2 8 8 0 0 (-19), PolyRefl.mkT 4 6 8 0 0 (26), PolyRefl.mkT 6 4 8 0 0 (-12), PolyRefl.mkT 8 2 8 0 0 (4), PolyRefl.mkT 10 0 8 0 0 (-1)]
def cp598_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 0 0 (-512), PolyRefl.mkT 2 4 0 0 0 (1536), PolyRefl.mkT 4 2 0 0 0 (-1536), PolyRefl.mkT 6 0 0 0 0 (512)]
def cp599_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 4 0 0 (256), PolyRefl.mkT 2 6 0 4 0 (16384), PolyRefl.mkT 2 6 2 2 0 (-16384), PolyRefl.mkT 2 6 4 0 0 (-2048), PolyRefl.mkT 4 4 0 4 0 (-32768), PolyRefl.mkT 4 4 2 2 0 (32768), PolyRefl.mkT 4 4 4 0 0 (1536), PolyRefl.mkT 6 2 0 4 0 (16384), PolyRefl.mkT 6 2 2 2 0 (-16384), PolyRefl.mkT 8 0 4 0 0 (256)]
def cp600_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 16 8 0 0 (1), PolyRefl.mkT 2 14 8 0 0 (-24), PolyRefl.mkT 4 12 8 0 0 (-36), PolyRefl.mkT 6 10 8 0 0 (88), PolyRefl.mkT 8 8 8 0 0 (198), PolyRefl.mkT 10 6 8 0 0 (88), PolyRefl.mkT 12 4 8 0 0 (-36), PolyRefl.mkT 14 2 8 0 0 (-24), PolyRefl.mkT 16 0 8 0 0 (1)]
def cp601_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 6 0 0 0 (4096), PolyRefl.mkT 4 4 0 0 0 (-8192), PolyRefl.mkT 6 2 0 0 0 (4096)]
def cp602_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (8), PolyRefl.mkT 0 4 0 3 1 (-8), PolyRefl.mkT 1 3 0 0 4 (8), PolyRefl.mkT 1 3 0 2 2 (16), PolyRefl.mkT 1 3 0 4 0 (8), PolyRefl.mkT 2 2 0 1 3 (48), PolyRefl.mkT 2 2 0 3 1 (-48), PolyRefl.mkT 3 1 0 0 4 (-24), PolyRefl.mkT 3 1 0 2 2 (80), PolyRefl.mkT 3 1 0 4 0 (-24), PolyRefl.mkT 4 0 0 1 3 (-24), PolyRefl.mkT 4 0 0 3 1 (24)]
def cp603_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (8), PolyRefl.mkT 1 3 0 0 2 (8), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 1 3 2 0 0 (8), PolyRefl.mkT 2 2 0 1 1 (48), PolyRefl.mkT 3 1 0 0 2 (-24), PolyRefl.mkT 3 1 0 2 0 (104), PolyRefl.mkT 3 1 2 0 0 (-24), PolyRefl.mkT 4 0 0 1 1 (-24)]
def cp604_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-2), PolyRefl.mkT 0 4 2 1 1 (1), PolyRefl.mkT 1 3 4 0 0 (1), PolyRefl.mkT 2 2 0 3 1 (-12), PolyRefl.mkT 2 2 2 1 1 (6), PolyRefl.mkT 3 1 0 4 0 (-16), PolyRefl.mkT 3 1 2 2 0 (16), PolyRefl.mkT 3 1 4 0 0 (-3), PolyRefl.mkT 4 0 0 3 1 (6), PolyRefl.mkT 4 0 2 1 1 (-3)]
def cp605_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-2), PolyRefl.mkT 0 4 2 1 1 (1), PolyRefl.mkT 1 3 4 0 0 (-1), PolyRefl.mkT 2 2 0 3 1 (-12), PolyRefl.mkT 2 2 2 1 1 (6), PolyRefl.mkT 3 1 0 4 0 (16), PolyRefl.mkT 3 1 2 2 0 (-16), PolyRefl.mkT 3 1 4 0 0 (3), PolyRefl.mkT 4 0 0 3 1 (6), PolyRefl.mkT 4 0 2 1 1 (-3)]
def cp606_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 8 0 (4), PolyRefl.mkT 0 8 2 6 0 (-8), PolyRefl.mkT 0 8 4 4 0 (5), PolyRefl.mkT 0 8 6 2 0 (-1), PolyRefl.mkT 2 6 0 8 0 (48), PolyRefl.mkT 2 6 2 6 0 (-96), PolyRefl.mkT 2 6 4 4 0 (60), PolyRefl.mkT 2 6 6 2 0 (-12), PolyRefl.mkT 2 6 8 0 0 (1), PolyRefl.mkT 4 4 0 8 0 (120), PolyRefl.mkT 4 4 2 6 0 (-240), PolyRefl.mkT 4 4 4 4 0 (118), PolyRefl.mkT 4 4 6 2 0 (2), PolyRefl.mkT 4 4 8 0 0 (-6), PolyRefl.mkT 6 2 0 8 0 (112), PolyRefl.mkT 6 2 2 6 0 (-224), PolyRefl.mkT 6 2 4 4 0 (172), PolyRefl.mkT 6 2 6 2 0 (-60), PolyRefl.mkT 6 2 8 0 0 (9), PolyRefl.mkT 8 0 0 8 0 (36), PolyRefl.mkT 8 0 2 6 0 (-72), PolyRefl.mkT 8 0 4 4 0 (45), PolyRefl.mkT 8 0 6 2 0 (-9)]
def cp607_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 4 0 (324), PolyRefl.mkT 0 24 2 2 0 (-324), PolyRefl.mkT 0 24 4 0 0 (81), PolyRefl.mkT 2 22 0 4 0 (-2736), PolyRefl.mkT 2 22 2 2 0 (2736), PolyRefl.mkT 2 22 4 0 0 (-828), PolyRefl.mkT 4 20 0 4 0 (-13592), PolyRefl.mkT 4 20 2 2 0 (13592), PolyRefl.mkT 4 20 4 0 0 (-5958), PolyRefl.mkT 6 18 0 4 0 (249680), PolyRefl.mkT 6 18 2 2 0 (-249680), PolyRefl.mkT 6 18 4 0 0 (126756), PolyRefl.mkT 8 16 0 4 0 (-861924), PolyRefl.mkT 8 16 2 2 0 (861924), PolyRefl.mkT 8 16 4 0 0 (-752825), PolyRefl.mkT 10 14 0 4 0 (-331872), PolyRefl.mkT 10 14 2 2 0 (331872), PolyRefl.mkT 10 14 4 0 0 (2197576), PolyRefl.mkT 12 12 0 4 0 (4753200), PolyRefl.mkT 12 12 2 2 0 (-4753200), PolyRefl.mkT 12 12 4 0 0 (-4230452), PolyRefl.mkT 14 10 0 4 0 (4188192), PolyRefl.mkT 14 10 2 2 0 (-4188192), PolyRefl.mkT 14 10 4 0 0 (6614696), PolyRefl.mkT 16 8 0 4 0 (-892996), PolyRefl.mkT 16 8 2 2 0 (892996), PolyRefl.mkT 16 8 4 0 0 (-2609425), PolyRefl.mkT 18 6 0 4 0 (-734960), PolyRefl.mkT 18 6 2 2 0 (734960), PolyRefl.mkT 18 6 4 0 0 (291188), PolyRefl.mkT 20 4 0 4 0 (329832), PolyRefl.mkT 20 4 2 2 0 (-329832), PolyRefl.mkT 20 4 4 0 0 (38682), PolyRefl.mkT 22 2 0 4 0 (-50544), PolyRefl.mkT 22 2 2 2 0 (50544), PolyRefl.mkT 22 2 4 0 0 (-11340), PolyRefl.mkT 24 0 0 4 0 (2916), PolyRefl.mkT 24 0 2 2 0 (-2916), PolyRefl.mkT 24 0 4 0 0 (729)]
def cp608_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 8 0 0 (1), PolyRefl.mkT 2 6 8 0 0 (-4), PolyRefl.mkT 4 4 8 0 0 (-10), PolyRefl.mkT 6 2 8 0 0 (-4), PolyRefl.mkT 8 0 8 0 0 (1)]
def cp609_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 4 (2), PolyRefl.mkT 0 2 0 2 2 (4), PolyRefl.mkT 0 2 0 4 0 (2), PolyRefl.mkT 1 1 0 1 3 (32), PolyRefl.mkT 1 1 0 3 1 (-32), PolyRefl.mkT 2 0 0 0 4 (-2), PolyRefl.mkT 2 0 0 2 2 (-4), PolyRefl.mkT 2 0 0 4 0 (-2)]
def cp610_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 2 (2), PolyRefl.mkT 0 2 0 2 0 (2), PolyRefl.mkT 0 2 2 0 0 (2), PolyRefl.mkT 1 1 0 1 1 (32), PolyRefl.mkT 2 0 0 0 2 (-2), PolyRefl.mkT 2 0 0 2 0 (-2), PolyRefl.mkT 2 0 2 0 0 (-2)]
def cp611_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 2 0 0 0 (1024)]
def cp612_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 60 24 0 0 (5), PolyRefl.mkT 2 58 24 0 0 (-354), PolyRefl.mkT 4 56 24 0 0 (12575), PolyRefl.mkT 6 54 24 0 0 (-317796), PolyRefl.mkT 8 52 24 0 0 (6399073), PolyRefl.mkT 10 50 24 0 0 (-110946518), PolyRefl.mkT 12 48 24 0 0 (1609495275), PolyRefl.mkT 14 46 24 0 0 (-18055506472), PolyRefl.mkT 16 44 24 0 0 (149832220337), PolyRefl.mkT 18 42 24 0 0 (-912202147634), PolyRefl.mkT 20 40 24 0 0 (4105055346835), PolyRefl.mkT 22 38 24 0 0 (-13814587987676), PolyRefl.mkT 24 36 24 0 0 (35149184466733), PolyRefl.mkT 26 34 24 0 0 (-68179839553174), PolyRefl.mkT 28 32 24 0 0 (101330458237215), PolyRefl.mkT 30 30 24 0 0 (-115628068145968), PolyRefl.mkT 32 28 24 0 0 (101330458237215), PolyRefl.mkT 34 26 24 0 0 (-68179839553174), PolyRefl.mkT 36 24 24 0 0 (35149184466733), PolyRefl.mkT 38 22 24 0 0 (-13814587987676), PolyRefl.mkT 40 20 24 0 0 (4105055346835), PolyRefl.mkT 42 18 24 0 0 (-912202147634), PolyRefl.mkT 44 16 24 0 0 (149832220337), PolyRefl.mkT 46 14 24 0 0 (-18055506472), PolyRefl.mkT 48 12 24 0 0 (1609495275), PolyRefl.mkT 50 10 24 0 0 (-110946518), PolyRefl.mkT 52 8 24 0 0 (6399073), PolyRefl.mkT 54 6 24 0 0 (-317796), PolyRefl.mkT 56 4 24 0 0 (12575), PolyRefl.mkT 58 2 24 0 0 (-354), PolyRefl.mkT 60 0 24 0 0 (5)]
def cp613_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 8 0 (16777216), PolyRefl.mkT 0 24 2 6 0 (-29360128), PolyRefl.mkT 0 24 4 4 0 (14680064), PolyRefl.mkT 0 24 6 2 0 (-1835008), PolyRefl.mkT 2 22 0 8 0 (-67108864), PolyRefl.mkT 2 22 2 6 0 (150994944), PolyRefl.mkT 2 22 4 4 0 (-92274688), PolyRefl.mkT 2 22 6 2 0 (13631488), PolyRefl.mkT 4 20 0 8 0 (-4798283776), PolyRefl.mkT 4 20 2 6 0 (8464105472), PolyRefl.mkT 4 20 4 4 0 (-4198498304), PolyRefl.mkT 4 20 6 2 0 (520617984), PolyRefl.mkT 4 20 8 0 0 (4194304), PolyRefl.mkT 6 18 0 8 0 (68920803328), PolyRefl.mkT 6 18 2 6 0 (-129838874624), PolyRefl.mkT 6 18 4 4 0 (70070042624), PolyRefl.mkT 6 18 6 2 0 (-9268363264), PolyRefl.mkT 6 18 8 0 0 (100663296), PolyRefl.mkT 8 16 0 8 0 (-388979752960), PolyRefl.mkT 8 16 2 6 0 (763124252672), PolyRefl.mkT 8 16 4 4 0 (-438067789824), PolyRefl.mkT 8 16 6 2 0 (63700729856), PolyRefl.mkT 8 16 8 0 0 (251658240), PolyRefl.mkT 10 14 0 8 0 (1047837802496), PolyRefl.mkT 10 14 2 6 0 (-2107990081536), PolyRefl.mkT 10 14 4 4 0 (1263609577472), PolyRefl.mkT 10 14 6 2 0 (-203614584832), PolyRefl.mkT 10 14 8 0 0 (167772160), PolyRefl.mkT 12 12 0 8 0 (-1377140998144), PolyRefl.mkT 12 12 2 6 0 (2777619103744), PolyRefl.mkT 12 12 4 4 0 (-1671002324992), PolyRefl.mkT 12 12 6 2 0 (270456061952), PolyRefl.mkT 12 12 8 0 0 (25165824), PolyRefl.mkT 14 10 0 8 0 (1047837802496), PolyRefl.mkT 14 10 2 6 0 (-2107990081536), PolyRefl.mkT 14 10 4 4 0 (1263609577472), PolyRefl.mkT 14 10 6 2 0 (-203614584832), PolyRefl.mkT 14 10 8 0 0 (167772160), PolyRefl.mkT 16 8 0 8 0 (-388979752960), PolyRefl.mkT 16 8 2 6 0 (763124252672), PolyRefl.mkT 16 8 4 4 0 (-438067789824), PolyRefl.mkT 16 8 6 2 0 (63700729856), PolyRefl.mkT 16 8 8 0 0 (251658240), PolyRefl.mkT 18 6 0 8 0 (68920803328), PolyRefl.mkT 18 6 2 6 0 (-129838874624), PolyRefl.mkT 18 6 4 4 0 (70070042624), PolyRefl.mkT 18 6 6 2 0 (-9268363264), PolyRefl.mkT 18 6 8 0 0 (100663296), PolyRefl.mkT 20 4 0 8 0 (-4798283776), PolyRefl.mkT 20 4 2 6 0 (8464105472), PolyRefl.mkT 20 4 4 4 0 (-4198498304), PolyRefl.mkT 20 4 6 2 0 (520617984), PolyRefl.mkT 20 4 8 0 0 (4194304), PolyRefl.mkT 22 2 0 8 0 (-67108864), PolyRefl.mkT 22 2 2 6 0 (150994944), PolyRefl.mkT 22 2 4 4 0 (-92274688), PolyRefl.mkT 22 2 6 2 0 (13631488), PolyRefl.mkT 24 0 0 8 0 (16777216), PolyRefl.mkT 24 0 2 6 0 (-29360128), PolyRefl.mkT 24 0 4 4 0 (14680064), PolyRefl.mkT 24 0 6 2 0 (-1835008)]
def cp614_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 28 10 2 0 (-1), PolyRefl.mkT 2 26 10 2 0 (2), PolyRefl.mkT 2 26 12 0 0 (16), PolyRefl.mkT 4 24 10 2 0 (549), PolyRefl.mkT 4 24 12 0 0 (-592), PolyRefl.mkT 6 22 10 2 0 (1076), PolyRefl.mkT 6 22 12 0 0 (5120), PolyRefl.mkT 8 20 10 2 0 (-1897), PolyRefl.mkT 8 20 12 0 0 (-48144), PolyRefl.mkT 10 18 10 2 0 (-5858), PolyRefl.mkT 10 18 12 0 0 (208240), PolyRefl.mkT 12 16 10 2 0 (-2747), PolyRefl.mkT 12 16 12 0 0 (-471456), PolyRefl.mkT 14 14 10 2 0 (1368), PolyRefl.mkT 14 14 12 0 0 (630016), PolyRefl.mkT 16 12 10 2 0 (-2747), PolyRefl.mkT 16 12 12 0 0 (-471456), PolyRefl.mkT 18 10 10 2 0 (-5858), PolyRefl.mkT 18 10 12 0 0 (208240), PolyRefl.mkT 20 8 10 2 0 (-1897), PolyRefl.mkT 20 8 12 0 0 (-48144), PolyRefl.mkT 22 6 10 2 0 (1076), PolyRefl.mkT 22 6 12 0 0 (5120), PolyRefl.mkT 24 4 10 2 0 (549), PolyRefl.mkT 24 4 12 0 0 (-592), PolyRefl.mkT 26 2 10 2 0 (2), PolyRefl.mkT 26 2 12 0 0 (16), PolyRefl.mkT 28 0 10 2 0 (-1)]
def cp615_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 56 20 0 0 (1), PolyRefl.mkT 2 54 20 0 0 (-4), PolyRefl.mkT 4 52 20 0 0 (-1094), PolyRefl.mkT 6 50 20 0 0 (44), PolyRefl.mkT 8 48 20 0 0 (309499), PolyRefl.mkT 10 46 20 0 0 (1185576), PolyRefl.mkT 12 44 20 0 0 (-943068), PolyRefl.mkT 14 42 20 0 0 (-10528152), PolyRefl.mkT 16 40 20 0 0 (-12013047), PolyRefl.mkT 18 38 20 0 0 (17816500), PolyRefl.mkT 20 36 20 0 0 (44646374), PolyRefl.mkT 22 34 20 0 0 (14640292), PolyRefl.mkT 24 32 20 0 0 (-12745477), PolyRefl.mkT 26 30 20 0 0 (43994608), PolyRefl.mkT 28 28 20 0 0 (95711352), PolyRefl.mkT 30 26 20 0 0 (43994608), PolyRefl.mkT 32 24 20 0 0 (-12745477), PolyRefl.mkT 34 22 20 0 0 (14640292), PolyRefl.mkT 36 20 20 0 0 (44646374), PolyRefl.mkT 38 18 20 0 0 (17816500), PolyRefl.mkT 40 16 20 0 0 (-12013047), PolyRefl.mkT 42 14 20 0 0 (-10528152), PolyRefl.mkT 44 12 20 0 0 (-943068), PolyRefl.mkT 46 10 20 0 0 (1185576), PolyRefl.mkT 48 8 20 0 0 (309499), PolyRefl.mkT 50 6 20 0 0 (44), PolyRefl.mkT 52 4 20 0 0 (-1094), PolyRefl.mkT 54 2 20 0 0 (-4), PolyRefl.mkT 56 0 20 0 0 (1)]
def cp616_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 32 10 2 0 (-16), PolyRefl.mkT 0 32 12 0 0 (20), PolyRefl.mkT 2 30 10 2 0 (128), PolyRefl.mkT 2 30 12 0 0 (-384), PolyRefl.mkT 4 28 10 2 0 (8576), PolyRefl.mkT 4 28 12 0 0 (224), PolyRefl.mkT 6 26 10 2 0 (-35456), PolyRefl.mkT 6 26 12 0 0 (-112256), PolyRefl.mkT 8 24 10 2 0 (-124864), PolyRefl.mkT 8 24 12 0 0 (1392944), PolyRefl.mkT 10 22 10 2 0 (105600), PolyRefl.mkT 10 22 12 0 0 (-8106880), PolyRefl.mkT 12 20 10 2 0 (488064), PolyRefl.mkT 12 20 12 0 0 (27882016), PolyRefl.mkT 14 18 10 2 0 (191872), PolyRefl.mkT 14 18 12 0 0 (-58823808), PolyRefl.mkT 16 16 10 2 0 (-219232), PolyRefl.mkT 16 16 12 0 0 (75798392), PolyRefl.mkT 18 14 10 2 0 (191872), PolyRefl.mkT 18 14 12 0 0 (-58823808), PolyRefl.mkT 20 12 10 2 0 (488064), PolyRefl.mkT 20 12 12 0 0 (27882016), PolyRefl.mkT 22 10 10 2 0 (105600), PolyRefl.mkT 22 10 12 0 0 (-8106880), PolyRefl.mkT 24 8 10 2 0 (-124864), PolyRefl.mkT 24 8 12 0 0 (1392944), PolyRefl.mkT 26 6 10 2 0 (-35456), PolyRefl.mkT 26 6 12 0 0 (-112256), PolyRefl.mkT 28 4 10 2 0 (8576), PolyRefl.mkT 28 4 12 0 0 (224), PolyRefl.mkT 30 2 10 2 0 (128), PolyRefl.mkT 30 2 12 0 0 (-384), PolyRefl.mkT 32 0 10 2 0 (-16), PolyRefl.mkT 32 0 12 0 0 (20)]
def cp617_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 60 24 0 0 (-5), PolyRefl.mkT 2 58 24 0 0 (354), PolyRefl.mkT 4 56 24 0 0 (-12575), PolyRefl.mkT 6 54 24 0 0 (317796), PolyRefl.mkT 8 52 24 0 0 (-6399073), PolyRefl.mkT 10 50 24 0 0 (110946518), PolyRefl.mkT 12 48 24 0 0 (-1609495275), PolyRefl.mkT 14 46 24 0 0 (18055506472), PolyRefl.mkT 16 44 24 0 0 (-149832220337), PolyRefl.mkT 18 42 24 0 0 (912202147634), PolyRefl.mkT 20 40 24 0 0 (-4105055346835), PolyRefl.mkT 22 38 24 0 0 (13814587987676), PolyRefl.mkT 24 36 24 0 0 (-35149184466733), PolyRefl.mkT 26 34 24 0 0 (68179839553174), PolyRefl.mkT 28 32 24 0 0 (-101330458237215), PolyRefl.mkT 30 30 24 0 0 (115628068145968), PolyRefl.mkT 32 28 24 0 0 (-101330458237215), PolyRefl.mkT 34 26 24 0 0 (68179839553174), PolyRefl.mkT 36 24 24 0 0 (-35149184466733), PolyRefl.mkT 38 22 24 0 0 (13814587987676), PolyRefl.mkT 40 20 24 0 0 (-4105055346835), PolyRefl.mkT 42 18 24 0 0 (912202147634), PolyRefl.mkT 44 16 24 0 0 (-149832220337), PolyRefl.mkT 46 14 24 0 0 (18055506472), PolyRefl.mkT 48 12 24 0 0 (-1609495275), PolyRefl.mkT 50 10 24 0 0 (110946518), PolyRefl.mkT 52 8 24 0 0 (-6399073), PolyRefl.mkT 54 6 24 0 0 (317796), PolyRefl.mkT 56 4 24 0 0 (-12575), PolyRefl.mkT 58 2 24 0 0 (354), PolyRefl.mkT 60 0 24 0 0 (-5)]
def cp618_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 8 0 (16777216), PolyRefl.mkT 0 24 2 6 0 (-37748736), PolyRefl.mkT 0 24 4 4 0 (27262976), PolyRefl.mkT 0 24 6 2 0 (-6553600), PolyRefl.mkT 0 24 8 0 0 (262144), PolyRefl.mkT 2 22 0 8 0 (-67108864), PolyRefl.mkT 2 22 2 6 0 (117440512), PolyRefl.mkT 2 22 4 4 0 (-41943040), PolyRefl.mkT 2 22 6 2 0 (-13631488), PolyRefl.mkT 2 22 8 0 0 (5242880), PolyRefl.mkT 4 20 0 8 0 (-4798283776), PolyRefl.mkT 4 20 2 6 0 (10729029632), PolyRefl.mkT 4 20 4 4 0 (-7595884544), PolyRefl.mkT 4 20 6 2 0 (1677197312), PolyRefl.mkT 4 20 8 0 0 (-7864320), PolyRefl.mkT 6 18 0 8 0 (68920803328), PolyRefl.mkT 6 18 2 6 0 (-145844338688), PolyRefl.mkT 6 18 4 4 0 (94078238720), PolyRefl.mkT 6 18 6 2 0 (-17038311424), PolyRefl.mkT 6 18 8 0 0 (-15728640), PolyRefl.mkT 8 16 0 8 0 (-388979752960), PolyRefl.mkT 8 16 2 6 0 (792794759168), PolyRefl.mkT 8 16 4 4 0 (-482573549568), PolyRefl.mkT 8 16 6 2 0 (78981103616), PolyRefl.mkT 8 16 8 0 0 (29097984), PolyRefl.mkT 10 14 0 8 0 (1047837802496), PolyRefl.mkT 10 14 2 6 0 (-2083361128448), PolyRefl.mkT 10 14 4 4 0 (1226666147840), PolyRefl.mkT 10 14 6 2 0 (-190985535488), PolyRefl.mkT 10 14 8 0 0 (10485760), PolyRefl.mkT 12 12 0 8 0 (-1377140998144), PolyRefl.mkT 12 12 2 6 0 (2730944888832), PolyRefl.mkT 12 12 4 4 0 (-1600991002624), PolyRefl.mkT 12 12 6 2 0 (247255269376), PolyRefl.mkT 12 12 8 0 0 (-42991616), PolyRefl.mkT 14 10 0 8 0 (1047837802496), PolyRefl.mkT 14 10 2 6 0 (-2083361128448), PolyRefl.mkT 14 10 4 4 0 (1226666147840), PolyRefl.mkT 14 10 6 2 0 (-190985535488), PolyRefl.mkT 14 10 8 0 0 (10485760), PolyRefl.mkT 16 8 0 8 0 (-388979752960), PolyRefl.mkT 16 8 2 6 0 (792794759168), PolyRefl.mkT 16 8 4 4 0 (-482573549568), PolyRefl.mkT 16 8 6 2 0 (78981103616), PolyRefl.mkT 16 8 8 0 0 (29097984), PolyRefl.mkT 18 6 0 8 0 (68920803328), PolyRefl.mkT 18 6 2 6 0 (-145844338688), PolyRefl.mkT 18 6 4 4 0 (94078238720), PolyRefl.mkT 18 6 6 2 0 (-17038311424), PolyRefl.mkT 18 6 8 0 0 (-15728640), PolyRefl.mkT 20 4 0 8 0 (-4798283776), PolyRefl.mkT 20 4 2 6 0 (10729029632), PolyRefl.mkT 20 4 4 4 0 (-7595884544), PolyRefl.mkT 20 4 6 2 0 (1677197312), PolyRefl.mkT 20 4 8 0 0 (-7864320), PolyRefl.mkT 22 2 0 8 0 (-67108864), PolyRefl.mkT 22 2 2 6 0 (117440512), PolyRefl.mkT 22 2 4 4 0 (-41943040), PolyRefl.mkT 22 2 6 2 0 (-13631488), PolyRefl.mkT 22 2 8 0 0 (5242880), PolyRefl.mkT 24 0 0 8 0 (16777216), PolyRefl.mkT 24 0 2 6 0 (-37748736), PolyRefl.mkT 24 0 4 4 0 (27262976), PolyRefl.mkT 24 0 6 2 0 (-6553600), PolyRefl.mkT 24 0 8 0 0 (262144)]
def cp619_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 28 10 2 0 (-1), PolyRefl.mkT 0 28 12 0 0 (1), PolyRefl.mkT 2 26 10 2 0 (2), PolyRefl.mkT 2 26 12 0 0 (-18), PolyRefl.mkT 4 24 10 2 0 (549), PolyRefl.mkT 4 24 12 0 0 (43), PolyRefl.mkT 6 22 10 2 0 (1076), PolyRefl.mkT 6 22 12 0 0 (-6196), PolyRefl.mkT 8 20 10 2 0 (-1897), PolyRefl.mkT 8 20 12 0 0 (50041), PolyRefl.mkT 10 18 10 2 0 (-5858), PolyRefl.mkT 10 18 12 0 0 (-202382), PolyRefl.mkT 12 16 10 2 0 (-2747), PolyRefl.mkT 12 16 12 0 0 (474203), PolyRefl.mkT 14 14 10 2 0 (1368), PolyRefl.mkT 14 14 12 0 0 (-631384), PolyRefl.mkT 16 12 10 2 0 (-2747), PolyRefl.mkT 16 12 12 0 0 (474203), PolyRefl.mkT 18 10 10 2 0 (-5858), PolyRefl.mkT 18 10 12 0 0 (-202382), PolyRefl.mkT 20 8 10 2 0 (-1897), PolyRefl.mkT 20 8 12 0 0 (50041), PolyRefl.mkT 22 6 10 2 0 (1076), PolyRefl.mkT 22 6 12 0 0 (-6196), PolyRefl.mkT 24 4 10 2 0 (549), PolyRefl.mkT 24 4 12 0 0 (43), PolyRefl.mkT 26 2 10 2 0 (2), PolyRefl.mkT 26 2 12 0 0 (-18), PolyRefl.mkT 28 0 10 2 0 (-1), PolyRefl.mkT 28 0 12 0 0 (1)]
def cp620_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 32 10 2 0 (16), PolyRefl.mkT 0 32 12 0 0 (4), PolyRefl.mkT 2 30 10 2 0 (-128), PolyRefl.mkT 2 30 12 0 0 (-256), PolyRefl.mkT 4 28 10 2 0 (-8576), PolyRefl.mkT 4 28 12 0 0 (8800), PolyRefl.mkT 6 26 10 2 0 (35456), PolyRefl.mkT 6 26 12 0 0 (-147712), PolyRefl.mkT 8 24 10 2 0 (124864), PolyRefl.mkT 8 24 12 0 0 (1268080), PolyRefl.mkT 10 22 10 2 0 (-105600), PolyRefl.mkT 10 22 12 0 0 (-8001280), PolyRefl.mkT 12 20 10 2 0 (-488064), PolyRefl.mkT 12 20 12 0 0 (28370080), PolyRefl.mkT 14 18 10 2 0 (-191872), PolyRefl.mkT 14 18 12 0 0 (-58631936), PolyRefl.mkT 16 16 10 2 0 (219232), PolyRefl.mkT 16 16 12 0 0 (75579160), PolyRefl.mkT 18 14 10 2 0 (-191872), PolyRefl.mkT 18 14 12 0 0 (-58631936), PolyRefl.mkT 20 12 10 2 0 (-488064), PolyRefl.mkT 20 12 12 0 0 (28370080), PolyRefl.mkT 22 10 10 2 0 (-105600), PolyRefl.mkT 22 10 12 0 0 (-8001280), PolyRefl.mkT 24 8 10 2 0 (124864), PolyRefl.mkT 24 8 12 0 0 (1268080), PolyRefl.mkT 26 6 10 2 0 (35456), PolyRefl.mkT 26 6 12 0 0 (-147712), PolyRefl.mkT 28 4 10 2 0 (-8576), PolyRefl.mkT 28 4 12 0 0 (8800), PolyRefl.mkT 30 2 10 2 0 (-128), PolyRefl.mkT 30 2 12 0 0 (-256), PolyRefl.mkT 32 0 10 2 0 (16), PolyRefl.mkT 32 0 12 0 0 (4)]
def cp621_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 38 12 0 0 (32805), PolyRefl.mkT 4 36 12 0 0 (-1724814), PolyRefl.mkT 6 34 12 0 0 (38924469), PolyRefl.mkT 8 32 12 0 0 (-502877520), PolyRefl.mkT 10 30 12 0 0 (4137196804), PolyRefl.mkT 12 28 12 0 0 (-22637887368), PolyRefl.mkT 14 26 12 0 0 (83165394484), PolyRefl.mkT 16 24 12 0 0 (-202017066032), PolyRefl.mkT 18 22 12 0 0 (313796295334), PolyRefl.mkT 20 20 12 0 0 (-303274513748), PolyRefl.mkT 22 18 12 0 0 (191545344118), PolyRefl.mkT 24 16 12 0 0 (-83407286576), PolyRefl.mkT 26 14 12 0 0 (25762389076), PolyRefl.mkT 28 12 12 0 0 (-5679928968), PolyRefl.mkT 30 10 12 0 0 (883299940), PolyRefl.mkT 32 8 12 0 0 (-93800016), PolyRefl.mkT 34 6 12 0 0 (6373341), PolyRefl.mkT 36 4 12 0 0 (-242190), PolyRefl.mkT 38 2 12 0 0 (3645)]
def cp622_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 5 (-36), PolyRefl.mkT 0 4 0 3 3 (120), PolyRefl.mkT 0 4 0 5 1 (-36), PolyRefl.mkT 1 3 0 0 6 (24), PolyRefl.mkT 1 3 0 2 4 (-216), PolyRefl.mkT 1 3 0 4 2 (264), PolyRefl.mkT 1 3 0 6 0 (-8), PolyRefl.mkT 2 2 0 1 5 (72), PolyRefl.mkT 2 2 0 3 3 (-240), PolyRefl.mkT 2 2 0 5 1 (72), PolyRefl.mkT 3 1 0 0 6 (-8), PolyRefl.mkT 3 1 0 2 4 (-24), PolyRefl.mkT 3 1 0 4 2 (-24), PolyRefl.mkT 3 1 0 6 0 (-8), PolyRefl.mkT 4 0 0 1 5 (12), PolyRefl.mkT 4 0 0 3 3 (-40), PolyRefl.mkT 4 0 0 5 1 (12)]
def cp623_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-36), PolyRefl.mkT 0 4 0 3 1 (156), PolyRefl.mkT 0 4 2 1 1 (-36), PolyRefl.mkT 1 3 0 0 4 (24), PolyRefl.mkT 1 3 0 2 2 (-240), PolyRefl.mkT 1 3 0 4 0 (504), PolyRefl.mkT 1 3 2 0 2 (24), PolyRefl.mkT 1 3 2 2 0 (-264), PolyRefl.mkT 1 3 4 0 0 (24), PolyRefl.mkT 2 2 0 1 3 (72), PolyRefl.mkT 2 2 0 3 1 (-312), PolyRefl.mkT 2 2 2 1 1 (72), PolyRefl.mkT 3 1 0 0 4 (-8), PolyRefl.mkT 3 1 0 2 2 (-16), PolyRefl.mkT 3 1 0 4 0 (-8), PolyRefl.mkT 3 1 2 0 2 (-8), PolyRefl.mkT 3 1 2 2 0 (-8), PolyRefl.mkT 3 1 4 0 0 (-8), PolyRefl.mkT 4 0 0 1 3 (12), PolyRefl.mkT 4 0 0 3 1 (-52), PolyRefl.mkT 4 0 2 1 1 (12)]
def cp624_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (-48), PolyRefl.mkT 0 4 2 3 1 (48), PolyRefl.mkT 0 4 4 1 1 (-9), PolyRefl.mkT 1 3 0 6 0 (-128), PolyRefl.mkT 1 3 2 4 0 (192), PolyRefl.mkT 1 3 4 2 0 (-72), PolyRefl.mkT 1 3 6 0 0 (6), PolyRefl.mkT 2 2 0 5 1 (96), PolyRefl.mkT 2 2 2 3 1 (-96), PolyRefl.mkT 2 2 4 1 1 (18), PolyRefl.mkT 3 1 6 0 0 (-2), PolyRefl.mkT 4 0 0 5 1 (16), PolyRefl.mkT 4 0 2 3 1 (-16), PolyRefl.mkT 4 0 4 1 1 (3)]
def cp625_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (-48), PolyRefl.mkT 0 4 2 3 1 (48), PolyRefl.mkT 0 4 4 1 1 (-9), PolyRefl.mkT 1 3 0 6 0 (128), PolyRefl.mkT 1 3 2 4 0 (-192), PolyRefl.mkT 1 3 4 2 0 (72), PolyRefl.mkT 1 3 6 0 0 (-6), PolyRefl.mkT 2 2 0 5 1 (96), PolyRefl.mkT 2 2 2 3 1 (-96), PolyRefl.mkT 2 2 4 1 1 (18), PolyRefl.mkT 3 1 6 0 0 (2), PolyRefl.mkT 4 0 0 5 1 (16), PolyRefl.mkT 4 0 2 3 1 (-16), PolyRefl.mkT 4 0 4 1 1 (3)]
def cp626_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 12 0 (2304), PolyRefl.mkT 0 8 2 10 0 (-6912), PolyRefl.mkT 0 8 4 8 0 (7776), PolyRefl.mkT 0 8 6 6 0 (-4032), PolyRefl.mkT 0 8 8 4 0 (945), PolyRefl.mkT 0 8 10 2 0 (-81), PolyRefl.mkT 2 6 0 12 0 (7168), PolyRefl.mkT 2 6 2 10 0 (-21504), PolyRefl.mkT 2 6 4 8 0 (24192), PolyRefl.mkT 2 6 6 6 0 (-13056), PolyRefl.mkT 2 6 8 4 0 (3708), PolyRefl.mkT 2 6 10 2 0 (-540), PolyRefl.mkT 2 6 12 0 0 (36), PolyRefl.mkT 4 4 0 12 0 (7680), PolyRefl.mkT 4 4 2 10 0 (-23040), PolyRefl.mkT 4 4 4 8 0 (25920), PolyRefl.mkT 4 4 6 6 0 (-12928), PolyRefl.mkT 4 4 8 4 0 (2382), PolyRefl.mkT 4 4 10 2 0 (18), PolyRefl.mkT 4 4 12 0 0 (-24), PolyRefl.mkT 6 2 0 12 0 (3072), PolyRefl.mkT 6 2 2 10 0 (-9216), PolyRefl.mkT 6 2 4 8 0 (10368), PolyRefl.mkT 6 2 6 6 0 (-5376), PolyRefl.mkT 6 2 8 4 0 (1260), PolyRefl.mkT 6 2 10 2 0 (-108), PolyRefl.mkT 6 2 12 0 0 (4), PolyRefl.mkT 8 0 0 12 0 (256), PolyRefl.mkT 8 0 2 10 0 (-768), PolyRefl.mkT 8 0 4 8 0 (864), PolyRefl.mkT 8 0 6 6 0 (-448), PolyRefl.mkT 8 0 8 4 0 (105), PolyRefl.mkT 8 0 10 2 0 (-9)]
def cp627_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 32 0 6 0 (6879707136), PolyRefl.mkT 0 32 2 4 0 (-10319560704), PolyRefl.mkT 0 32 4 2 0 (3869835264), PolyRefl.mkT 0 32 6 0 0 (-429981696), PolyRefl.mkT 2 30 0 6 0 (-189574152192), PolyRefl.mkT 2 30 2 4 0 (284361228288), PolyRefl.mkT 2 30 4 2 0 (-106635460608), PolyRefl.mkT 2 30 6 0 0 (11083972608), PolyRefl.mkT 4 28 0 6 0 (2234121191424), PolyRefl.mkT 4 28 2 4 0 (-3351181787136), PolyRefl.mkT 4 28 4 2 0 (1256693170176), PolyRefl.mkT 4 28 6 0 0 (-105998450688), PolyRefl.mkT 6 26 0 6 0 (-13866394189824), PolyRefl.mkT 6 26 2 4 0 (20799591284736), PolyRefl.mkT 6 26 4 2 0 (-7799846731776), PolyRefl.mkT 6 26 6 0 0 (296256798720), PolyRefl.mkT 8 24 0 6 0 (43647911329792), PolyRefl.mkT 8 24 2 4 0 (-65471866994688), PolyRefl.mkT 8 24 4 2 0 (24551950123008), PolyRefl.mkT 8 24 6 0 0 (2440092712960), PolyRefl.mkT 10 22 0 6 0 (-36382357585920), PolyRefl.mkT 10 22 2 4 0 (54573536378880), PolyRefl.mkT 10 22 4 2 0 (-20465076142080), PolyRefl.mkT 10 22 6 0 0 (-25310451466240), PolyRefl.mkT 12 20 0 6 0 (-143859073941504), PolyRefl.mkT 12 20 2 4 0 (215788610912256), PolyRefl.mkT 12 20 4 2 0 (-80920729092096), PolyRefl.mkT 12 20 6 0 0 (97123631628288), PolyRefl.mkT 14 18 0 6 0 (244737445462016), PolyRefl.mkT 14 18 2 4 0 (-367106168193024), PolyRefl.mkT 14 18 4 2 0 (137664813072384), PolyRefl.mkT 14 18 6 0 0 (-177092907499520), PolyRefl.mkT 16 16 0 6 0 (289122885304320), PolyRefl.mkT 16 16 2 4 0 (-433684327956480), PolyRefl.mkT 16 16 4 2 0 (162631622983680), PolyRefl.mkT 16 16 6 0 0 (141061612765184), PolyRefl.mkT 18 14 0 6 0 (-110346073276416), PolyRefl.mkT 18 14 2 4 0 (165519109914624), PolyRefl.mkT 18 14 4 2 0 (-62069666217984), PolyRefl.mkT 18 14 6 0 0 (-78668307628032), PolyRefl.mkT 20 12 0 6 0 (-56879560523776), PolyRefl.mkT 20 12 2 4 0 (85319340785664), PolyRefl.mkT 20 12 4 2 0 (-31994752794624), PolyRefl.mkT 20 12 6 0 0 (31807372263424), PolyRefl.mkT 22 10 0 6 0 (40615752499200), PolyRefl.mkT 22 10 2 4 0 (-60923628748800), PolyRefl.mkT 22 10 4 2 0 (22846360780800), PolyRefl.mkT 22 10 6 0 0 (-8445829316608), PolyRefl.mkT 24 8 0 6 0 (-9092928110592), PolyRefl.mkT 24 8 2 4 0 (13639392165888), PolyRefl.mkT 24 8 4 2 0 (-5114772062208), PolyRefl.mkT 24 8 6 0 0 (1324289359872), PolyRefl.mkT 26 6 0 6 0 (686716616704), PolyRefl.mkT 26 6 2 4 0 (-1030074925056), PolyRefl.mkT 26 6 4 2 0 (386278096896), PolyRefl.mkT 26 6 6 0 0 (-93376217088), PolyRefl.mkT 28 4 0 6 0 (60246982656), PolyRefl.mkT 28 4 2 4 0 (-90370473984), PolyRefl.mkT 28 4 4 2 0 (33888927744), PolyRefl.mkT 28 4 6 0 0 (-3123707904), PolyRefl.mkT 30 2 0 6 0 (-14269022208), PolyRefl.mkT 30 2 2 4 0 (21403533312), PolyRefl.mkT 30 2 4 2 0 (-8026324992), PolyRefl.mkT 30 2 6 0 0 (976748544), PolyRefl.mkT 32 0 0 6 0 (764411904), PolyRefl.mkT 32 0 2 4 0 (-1146617856), PolyRefl.mkT 32 0 4 2 0 (429981696), PolyRefl.mkT 32 0 6 0 0 (-47775744)]
def cp628_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 5 (-36), PolyRefl.mkT 0 4 0 3 3 (120), PolyRefl.mkT 0 4 0 5 1 (-36), PolyRefl.mkT 1 3 0 0 6 (8), PolyRefl.mkT 1 3 0 2 4 (-264), PolyRefl.mkT 1 3 0 4 2 (216), PolyRefl.mkT 1 3 0 6 0 (-24), PolyRefl.mkT 2 2 0 1 5 (72), PolyRefl.mkT 2 2 0 3 3 (-240), PolyRefl.mkT 2 2 0 5 1 (72), PolyRefl.mkT 3 1 0 0 6 (8), PolyRefl.mkT 3 1 0 2 4 (24), PolyRefl.mkT 3 1 0 4 2 (24), PolyRefl.mkT 3 1 0 6 0 (8), PolyRefl.mkT 4 0 0 1 5 (12), PolyRefl.mkT 4 0 0 3 3 (-40), PolyRefl.mkT 4 0 0 5 1 (12)]
def cp629_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-36), PolyRefl.mkT 0 4 0 3 1 (156), PolyRefl.mkT 0 4 2 1 1 (-36), PolyRefl.mkT 1 3 0 0 4 (8), PolyRefl.mkT 1 3 0 2 2 (-272), PolyRefl.mkT 1 3 0 4 0 (488), PolyRefl.mkT 1 3 2 0 2 (8), PolyRefl.mkT 1 3 2 2 0 (-280), PolyRefl.mkT 1 3 4 0 0 (8), PolyRefl.mkT 2 2 0 1 3 (72), PolyRefl.mkT 2 2 0 3 1 (-312), PolyRefl.mkT 2 2 2 1 1 (72), PolyRefl.mkT 3 1 0 0 4 (8), PolyRefl.mkT 3 1 0 2 2 (16), PolyRefl.mkT 3 1 0 4 0 (8), PolyRefl.mkT 3 1 2 0 2 (8), PolyRefl.mkT 3 1 2 2 0 (8), PolyRefl.mkT 3 1 4 0 0 (8), PolyRefl.mkT 4 0 0 1 3 (12), PolyRefl.mkT 4 0 0 3 1 (-52), PolyRefl.mkT 4 0 2 1 1 (12)]
def cp630_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (-48), PolyRefl.mkT 0 4 2 3 1 (48), PolyRefl.mkT 0 4 4 1 1 (-9), PolyRefl.mkT 1 3 0 6 0 (-128), PolyRefl.mkT 1 3 2 4 0 (192), PolyRefl.mkT 1 3 4 2 0 (-72), PolyRefl.mkT 1 3 6 0 0 (2), PolyRefl.mkT 2 2 0 5 1 (96), PolyRefl.mkT 2 2 2 3 1 (-96), PolyRefl.mkT 2 2 4 1 1 (18), PolyRefl.mkT 3 1 6 0 0 (2), PolyRefl.mkT 4 0 0 5 1 (16), PolyRefl.mkT 4 0 2 3 1 (-16), PolyRefl.mkT 4 0 4 1 1 (3)]
def cp631_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (-48), PolyRefl.mkT 0 4 2 3 1 (48), PolyRefl.mkT 0 4 4 1 1 (-9), PolyRefl.mkT 1 3 0 6 0 (128), PolyRefl.mkT 1 3 2 4 0 (-192), PolyRefl.mkT 1 3 4 2 0 (72), PolyRefl.mkT 1 3 6 0 0 (-2), PolyRefl.mkT 2 2 0 5 1 (96), PolyRefl.mkT 2 2 2 3 1 (-96), PolyRefl.mkT 2 2 4 1 1 (18), PolyRefl.mkT 3 1 6 0 0 (-2), PolyRefl.mkT 4 0 0 5 1 (16), PolyRefl.mkT 4 0 2 3 1 (-16), PolyRefl.mkT 4 0 4 1 1 (3)]
def cp632_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 12 0 (2304), PolyRefl.mkT 0 8 2 10 0 (-6912), PolyRefl.mkT 0 8 4 8 0 (7776), PolyRefl.mkT 0 8 6 6 0 (-4032), PolyRefl.mkT 0 8 8 4 0 (945), PolyRefl.mkT 0 8 10 2 0 (-81), PolyRefl.mkT 2 6 0 12 0 (7168), PolyRefl.mkT 2 6 2 10 0 (-21504), PolyRefl.mkT 2 6 4 8 0 (24192), PolyRefl.mkT 2 6 6 6 0 (-12032), PolyRefl.mkT 2 6 8 4 0 (2172), PolyRefl.mkT 2 6 10 2 0 (36), PolyRefl.mkT 2 6 12 0 0 (4), PolyRefl.mkT 4 4 0 12 0 (7680), PolyRefl.mkT 4 4 2 10 0 (-23040), PolyRefl.mkT 4 4 4 8 0 (25920), PolyRefl.mkT 4 4 6 6 0 (-13952), PolyRefl.mkT 4 4 8 4 0 (3918), PolyRefl.mkT 4 4 10 2 0 (-558), PolyRefl.mkT 4 4 12 0 0 (8), PolyRefl.mkT 6 2 0 12 0 (3072), PolyRefl.mkT 6 2 2 10 0 (-9216), PolyRefl.mkT 6 2 4 8 0 (10368), PolyRefl.mkT 6 2 6 6 0 (-5376), PolyRefl.mkT 6 2 8 4 0 (1260), PolyRefl.mkT 6 2 10 2 0 (-108), PolyRefl.mkT 6 2 12 0 0 (4), PolyRefl.mkT 8 0 0 12 0 (256), PolyRefl.mkT 8 0 2 10 0 (-768), PolyRefl.mkT 8 0 4 8 0 (864), PolyRefl.mkT 8 0 6 6 0 (-448), PolyRefl.mkT 8 0 8 4 0 (105), PolyRefl.mkT 8 0 10 2 0 (-9)]
def cp633_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 32 0 6 0 (6879707136), PolyRefl.mkT 0 32 2 4 0 (-10319560704), PolyRefl.mkT 0 32 4 2 0 (3869835264), PolyRefl.mkT 2 30 0 6 0 (-189574152192), PolyRefl.mkT 2 30 2 4 0 (284361228288), PolyRefl.mkT 2 30 4 2 0 (-106635460608), PolyRefl.mkT 2 30 6 0 0 (764411904), PolyRefl.mkT 4 28 0 6 0 (2234121191424), PolyRefl.mkT 4 28 2 4 0 (-3351181787136), PolyRefl.mkT 4 28 4 2 0 (1256693170176), PolyRefl.mkT 4 28 6 0 0 (-33634123776), PolyRefl.mkT 6 26 0 6 0 (-13866394189824), PolyRefl.mkT 6 26 2 4 0 (20799591284736), PolyRefl.mkT 6 26 4 2 0 (-7799846731776), PolyRefl.mkT 6 26 6 0 0 (570392838144), PolyRefl.mkT 8 24 0 6 0 (43647911329792), PolyRefl.mkT 8 24 2 4 0 (-65471866994688), PolyRefl.mkT 8 24 4 2 0 (24551950123008), PolyRefl.mkT 8 24 6 0 0 (-5168087171072), PolyRefl.mkT 10 22 0 6 0 (-36382357585920), PolyRefl.mkT 10 22 2 4 0 (54573536378880), PolyRefl.mkT 10 22 4 2 0 (-20465076142080), PolyRefl.mkT 10 22 6 0 0 (27584348815360), PolyRefl.mkT 12 20 0 6 0 (-143859073941504), PolyRefl.mkT 12 20 2 4 0 (215788610912256), PolyRefl.mkT 12 20 4 2 0 (-80920729092096), PolyRefl.mkT 12 20 6 0 0 (-88132439506944), PolyRefl.mkT 14 18 0 6 0 (244737445462016), PolyRefl.mkT 14 18 2 4 0 (-367106168193024), PolyRefl.mkT 14 18 4 2 0 (137664813072384), PolyRefl.mkT 14 18 6 0 0 (161796817158144), PolyRefl.mkT 16 16 0 6 0 (289122885304320), PolyRefl.mkT 16 16 2 4 0 (-433684327956480), PolyRefl.mkT 16 16 4 2 0 (162631622983680), PolyRefl.mkT 16 16 6 0 0 (-159131793096704), PolyRefl.mkT 18 14 0 6 0 (-110346073276416), PolyRefl.mkT 18 14 2 4 0 (165519109914624), PolyRefl.mkT 18 14 4 2 0 (-62069666217984), PolyRefl.mkT 18 14 6 0 0 (85564937207808), PolyRefl.mkT 20 12 0 6 0 (-56879560523776), PolyRefl.mkT 20 12 2 4 0 (85319340785664), PolyRefl.mkT 20 12 4 2 0 (-31994752794624), PolyRefl.mkT 20 12 6 0 0 (-28252399730688), PolyRefl.mkT 22 10 0 6 0 (40615752499200), PolyRefl.mkT 22 10 2 4 0 (-60923628748800), PolyRefl.mkT 22 10 4 2 0 (22846360780800), PolyRefl.mkT 22 10 6 0 0 (5907344785408), PolyRefl.mkT 24 8 0 6 0 (-9092928110592), PolyRefl.mkT 24 8 2 4 0 (13639392165888), PolyRefl.mkT 24 8 4 2 0 (-5114772062208), PolyRefl.mkT 24 8 6 0 0 (-755981352960), PolyRefl.mkT 26 6 0 6 0 (686716616704), PolyRefl.mkT 26 6 2 4 0 (-1030074925056), PolyRefl.mkT 26 6 4 2 0 (386278096896), PolyRefl.mkT 26 6 6 0 0 (50456428544), PolyRefl.mkT 28 4 0 6 0 (60246982656), PolyRefl.mkT 28 4 2 4 0 (-90370473984), PolyRefl.mkT 28 4 4 2 0 (33888927744), PolyRefl.mkT 28 4 6 0 0 (-641728512), PolyRefl.mkT 30 2 0 6 0 (-14269022208), PolyRefl.mkT 30 2 2 4 0 (21403533312), PolyRefl.mkT 30 2 4 2 0 (-8026324992), PolyRefl.mkT 30 2 6 0 0 (-84934656), PolyRefl.mkT 32 0 0 6 0 (764411904), PolyRefl.mkT 32 0 2 4 0 (-1146617856), PolyRefl.mkT 32 0 4 2 0 (429981696)]
def cp634_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 20 8 0 0 (1), PolyRefl.mkT 2 18 8 0 0 (-48), PolyRefl.mkT 4 16 8 0 0 (557), PolyRefl.mkT 6 14 8 0 0 (-2816), PolyRefl.mkT 8 12 8 0 0 (7506), PolyRefl.mkT 10 10 8 0 0 (-10912), PolyRefl.mkT 12 8 8 0 0 (7506), PolyRefl.mkT 14 6 8 0 0 (-2816), PolyRefl.mkT 16 4 8 0 0 (557), PolyRefl.mkT 18 2 8 0 0 (-48), PolyRefl.mkT 20 0 8 0 0 (1)]
def cp635_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 12 0 0 0 (-64), PolyRefl.mkT 2 10 0 0 0 (1152), PolyRefl.mkT 4 8 0 0 0 (-7104), PolyRefl.mkT 6 6 0 0 0 (16128), PolyRefl.mkT 8 4 0 0 0 (-7104), PolyRefl.mkT 10 2 0 0 0 (1152), PolyRefl.mkT 12 0 0 0 0 (-64)]
def cp636_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 16 4 0 0 (16), PolyRefl.mkT 2 14 0 4 0 (4096), PolyRefl.mkT 2 14 2 2 0 (-4096), PolyRefl.mkT 2 14 4 0 0 (-640), PolyRefl.mkT 4 12 0 4 0 (-57344), PolyRefl.mkT 4 12 2 2 0 (57344), PolyRefl.mkT 4 12 4 0 0 (5056), PolyRefl.mkT 6 10 0 4 0 (258048), PolyRefl.mkT 6 10 2 2 0 (-258048), PolyRefl.mkT 6 10 4 0 0 (-14720), PolyRefl.mkT 8 8 0 4 0 (-409600), PolyRefl.mkT 8 8 2 2 0 (409600), PolyRefl.mkT 8 8 4 0 0 (24672), PolyRefl.mkT 10 6 0 4 0 (258048), PolyRefl.mkT 10 6 2 2 0 (-258048), PolyRefl.mkT 10 6 4 0 0 (-14720), PolyRefl.mkT 12 4 0 4 0 (-57344), PolyRefl.mkT 12 4 2 2 0 (57344), PolyRefl.mkT 12 4 4 0 0 (5056), PolyRefl.mkT 14 2 0 4 0 (4096), PolyRefl.mkT 14 2 2 2 0 (-4096), PolyRefl.mkT 14 2 4 0 0 (-640), PolyRefl.mkT 16 0 4 0 0 (16)]
def cp637_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 4 24 20 0 0 (3), PolyRefl.mkT 6 22 20 0 0 (-70), PolyRefl.mkT 8 20 20 0 0 (647), PolyRefl.mkT 10 18 20 0 0 (-3016), PolyRefl.mkT 12 16 20 0 0 (7542), PolyRefl.mkT 14 14 20 0 0 (-10212), PolyRefl.mkT 16 12 20 0 0 (7542), PolyRefl.mkT 18 10 20 0 0 (-3016), PolyRefl.mkT 20 8 20 0 0 (647), PolyRefl.mkT 22 6 20 0 0 (-70), PolyRefl.mkT 24 4 20 0 0 (3)]
def cp638_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 4 4 0 (-4), PolyRefl.mkT 0 8 6 2 0 (4), PolyRefl.mkT 2 6 4 4 0 (32), PolyRefl.mkT 2 6 6 2 0 (-32), PolyRefl.mkT 2 6 8 0 0 (-1), PolyRefl.mkT 4 4 4 4 0 (-56), PolyRefl.mkT 4 4 6 2 0 (56), PolyRefl.mkT 4 4 8 0 0 (6), PolyRefl.mkT 6 2 4 4 0 (32), PolyRefl.mkT 6 2 6 2 0 (-32), PolyRefl.mkT 6 2 8 0 0 (-1), PolyRefl.mkT 8 0 4 4 0 (-4), PolyRefl.mkT 8 0 6 2 0 (4)]
def cp639_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 12 0 0 (-64), PolyRefl.mkT 2 22 12 0 0 (1536), PolyRefl.mkT 4 20 12 0 0 (-14976), PolyRefl.mkT 6 18 12 0 0 (77312), PolyRefl.mkT 8 16 12 0 0 (-234432), PolyRefl.mkT 10 14 12 0 0 (445440), PolyRefl.mkT 12 12 12 0 0 (-549632), PolyRefl.mkT 14 10 12 0 0 (445440), PolyRefl.mkT 16 8 12 0 0 (-234432), PolyRefl.mkT 18 6 12 0 0 (77312), PolyRefl.mkT 20 4 12 0 0 (-14976), PolyRefl.mkT 22 2 12 0 0 (1536), PolyRefl.mkT 24 0 12 0 0 (-64)]
def cp640_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 20 12 0 0 (64), PolyRefl.mkT 2 18 8 4 0 (4096), PolyRefl.mkT 2 18 10 2 0 (-4096), PolyRefl.mkT 2 18 12 0 0 (-384), PolyRefl.mkT 4 16 8 4 0 (-65536), PolyRefl.mkT 4 16 10 2 0 (65536), PolyRefl.mkT 4 16 12 0 0 (-5312), PolyRefl.mkT 6 14 8 4 0 (376832), PolyRefl.mkT 6 14 10 2 0 (-376832), PolyRefl.mkT 6 14 12 0 0 (56832), PolyRefl.mkT 8 12 8 4 0 (-983040), PolyRefl.mkT 8 12 10 2 0 (983040), PolyRefl.mkT 8 12 12 0 0 (-191360), PolyRefl.mkT 10 10 8 4 0 (1335296), PolyRefl.mkT 10 10 10 2 0 (-1335296), PolyRefl.mkT 10 10 12 0 0 (280320), PolyRefl.mkT 12 8 8 4 0 (-983040), PolyRefl.mkT 12 8 10 2 0 (983040), PolyRefl.mkT 12 8 12 0 0 (-191360), PolyRefl.mkT 14 6 8 4 0 (376832), PolyRefl.mkT 14 6 10 2 0 (-376832), PolyRefl.mkT 14 6 12 0 0 (56832), PolyRefl.mkT 16 4 8 4 0 (-65536), PolyRefl.mkT 16 4 10 2 0 (65536), PolyRefl.mkT 16 4 12 0 0 (-5312), PolyRefl.mkT 18 2 8 4 0 (4096), PolyRefl.mkT 18 2 10 2 0 (-4096), PolyRefl.mkT 18 2 12 0 0 (-384), PolyRefl.mkT 20 0 12 0 0 (64)]
def cp641_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 12 0 0 (1), PolyRefl.mkT 2 22 12 0 0 (-58), PolyRefl.mkT 4 20 12 0 0 (1156), PolyRefl.mkT 6 18 12 0 0 (-10470), PolyRefl.mkT 8 16 12 0 0 (48197), PolyRefl.mkT 10 14 12 0 0 (-119108), PolyRefl.mkT 12 12 12 0 0 (166032), PolyRefl.mkT 14 10 12 0 0 (-119820), PolyRefl.mkT 16 8 12 0 0 (47611), PolyRefl.mkT 18 6 12 0 0 (-10594), PolyRefl.mkT 20 4 12 0 0 (1196), PolyRefl.mkT 22 2 12 0 0 (-46), PolyRefl.mkT 24 0 12 0 0 (-1)]
def cp642_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 2 0 (1024), PolyRefl.mkT 0 6 2 0 0 (-768), PolyRefl.mkT 2 4 0 2 0 (-7168), PolyRefl.mkT 2 4 2 0 0 (3328), PolyRefl.mkT 4 2 0 2 0 (7168), PolyRefl.mkT 4 2 2 0 0 (-3328), PolyRefl.mkT 6 0 0 2 0 (-1024), PolyRefl.mkT 6 0 2 0 0 (768)]
def cp643_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 4 2 0 (2), PolyRefl.mkT 0 10 6 0 0 (-1), PolyRefl.mkT 2 8 4 2 0 (-58), PolyRefl.mkT 2 8 6 0 0 (32), PolyRefl.mkT 4 6 4 2 0 (196), PolyRefl.mkT 4 6 6 0 0 (-114), PolyRefl.mkT 6 4 4 2 0 (-196), PolyRefl.mkT 6 4 6 0 0 (88), PolyRefl.mkT 8 2 4 2 0 (58), PolyRefl.mkT 8 2 6 0 0 (-21), PolyRefl.mkT 10 0 4 2 0 (-2)]
def cp644_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 14 4 2 0 (-32), PolyRefl.mkT 0 14 6 0 0 (8), PolyRefl.mkT 2 12 4 2 0 (1120), PolyRefl.mkT 2 12 6 0 0 (-296), PolyRefl.mkT 4 10 4 2 0 (-8736), PolyRefl.mkT 4 10 6 0 0 (3496), PolyRefl.mkT 6 8 4 2 0 (22880), PolyRefl.mkT 6 8 6 0 0 (-10568), PolyRefl.mkT 8 6 4 2 0 (-22880), PolyRefl.mkT 8 6 6 0 0 (12824), PolyRefl.mkT 10 4 4 2 0 (8736), PolyRefl.mkT 10 4 6 0 0 (-4984), PolyRefl.mkT 12 2 4 2 0 (-1120), PolyRefl.mkT 12 2 6 0 0 (568), PolyRefl.mkT 14 0 4 2 0 (32), PolyRefl.mkT 14 0 6 0 0 (-24)]
def cp645_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 8 4 0 0 (-9), PolyRefl.mkT 4 6 4 0 0 (36), PolyRefl.mkT 6 4 4 0 0 (-62), PolyRefl.mkT 8 2 4 0 0 (20), PolyRefl.mkT 10 0 4 0 0 (-1)]
def cp646_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 4 (-6), PolyRefl.mkT 0 2 0 2 2 (20), PolyRefl.mkT 0 2 0 4 0 (-6), PolyRefl.mkT 2 0 0 0 4 (2), PolyRefl.mkT 2 0 0 2 2 (-28), PolyRefl.mkT 2 0 0 4 0 (2)]
def cp647_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 0 2 (-6), PolyRefl.mkT 0 2 0 2 0 (26), PolyRefl.mkT 0 2 2 0 0 (-6), PolyRefl.mkT 2 0 0 0 2 (2), PolyRefl.mkT 2 0 0 2 0 (-30), PolyRefl.mkT 2 0 2 0 0 (2)]
def cp648_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 2 0 4 0 (-16), PolyRefl.mkT 0 2 2 2 0 (16), PolyRefl.mkT 0 2 4 0 0 (-3), PolyRefl.mkT 2 0 0 4 0 (16), PolyRefl.mkT 2 0 2 2 0 (-16), PolyRefl.mkT 2 0 4 0 0 (1)]
def cp649_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 2 0 (-64), PolyRefl.mkT 0 6 2 0 0 (16), PolyRefl.mkT 2 4 0 2 0 (448), PolyRefl.mkT 2 4 2 0 0 (-240), PolyRefl.mkT 4 2 0 2 0 (-448), PolyRefl.mkT 4 2 2 0 0 (240), PolyRefl.mkT 6 0 0 2 0 (64), PolyRefl.mkT 6 0 2 0 0 (-16)]
def cp650_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-24), PolyRefl.mkT 0 4 0 3 1 (24), PolyRefl.mkT 1 3 0 0 4 (-8), PolyRefl.mkT 1 3 0 2 2 (112), PolyRefl.mkT 1 3 0 4 0 (-8), PolyRefl.mkT 2 2 0 1 3 (48), PolyRefl.mkT 2 2 0 3 1 (-48), PolyRefl.mkT 3 1 0 0 4 (-8), PolyRefl.mkT 3 1 0 2 2 (-16), PolyRefl.mkT 3 1 0 4 0 (-8), PolyRefl.mkT 4 0 0 1 3 (8), PolyRefl.mkT 4 0 0 3 1 (-8)]
def cp651_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-24), PolyRefl.mkT 1 3 0 0 2 (-8), PolyRefl.mkT 1 3 0 2 0 (120), PolyRefl.mkT 1 3 2 0 0 (-8), PolyRefl.mkT 2 2 0 1 1 (48), PolyRefl.mkT 3 1 0 0 2 (-8), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 3 1 2 0 0 (-8), PolyRefl.mkT 4 0 0 1 1 (8)]
def cp652_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (6), PolyRefl.mkT 0 4 2 1 1 (-3), PolyRefl.mkT 1 3 0 4 0 (-16), PolyRefl.mkT 1 3 2 2 0 (16), PolyRefl.mkT 1 3 4 0 0 (-1), PolyRefl.mkT 2 2 0 3 1 (-12), PolyRefl.mkT 2 2 2 1 1 (6), PolyRefl.mkT 3 1 4 0 0 (-1), PolyRefl.mkT 4 0 0 3 1 (-2), PolyRefl.mkT 4 0 2 1 1 (1)]
def cp653_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (6), PolyRefl.mkT 0 4 2 1 1 (-3), PolyRefl.mkT 1 3 0 4 0 (16), PolyRefl.mkT 1 3 2 2 0 (-16), PolyRefl.mkT 1 3 4 0 0 (1), PolyRefl.mkT 2 2 0 3 1 (-12), PolyRefl.mkT 2 2 2 1 1 (6), PolyRefl.mkT 3 1 4 0 0 (1), PolyRefl.mkT 4 0 0 3 1 (-2), PolyRefl.mkT 4 0 2 1 1 (1)]
def cp654_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 8 0 (36), PolyRefl.mkT 0 8 2 6 0 (-72), PolyRefl.mkT 0 8 4 4 0 (45), PolyRefl.mkT 0 8 6 2 0 (-9), PolyRefl.mkT 2 6 0 8 0 (112), PolyRefl.mkT 2 6 2 6 0 (-224), PolyRefl.mkT 2 6 4 4 0 (108), PolyRefl.mkT 2 6 6 2 0 (4), PolyRefl.mkT 2 6 8 0 0 (1), PolyRefl.mkT 4 4 0 8 0 (120), PolyRefl.mkT 4 4 2 6 0 (-240), PolyRefl.mkT 4 4 4 4 0 (182), PolyRefl.mkT 4 4 6 2 0 (-62), PolyRefl.mkT 4 4 8 0 0 (2), PolyRefl.mkT 6 2 0 8 0 (48), PolyRefl.mkT 6 2 2 6 0 (-96), PolyRefl.mkT 6 2 4 4 0 (60), PolyRefl.mkT 6 2 6 2 0 (-12), PolyRefl.mkT 6 2 8 0 0 (1), PolyRefl.mkT 8 0 0 8 0 (4), PolyRefl.mkT 8 0 2 6 0 (-8), PolyRefl.mkT 8 0 4 4 0 (5), PolyRefl.mkT 8 0 6 2 0 (-1)]
def cp655_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 4 0 (46656), PolyRefl.mkT 0 24 2 2 0 (-46656), PolyRefl.mkT 2 22 0 4 0 (-808704), PolyRefl.mkT 2 22 2 2 0 (808704), PolyRefl.mkT 2 22 4 0 0 (-20736), PolyRefl.mkT 4 20 0 4 0 (5277312), PolyRefl.mkT 4 20 2 2 0 (-5277312), PolyRefl.mkT 4 20 4 0 0 (700416), PolyRefl.mkT 6 18 0 4 0 (-11759360), PolyRefl.mkT 6 18 2 2 0 (11759360), PolyRefl.mkT 6 18 4 0 0 (-7598848), PolyRefl.mkT 8 16 0 4 0 (-14287936), PolyRefl.mkT 8 16 2 2 0 (14287936), PolyRefl.mkT 8 16 4 0 0 (38178816), PolyRefl.mkT 10 14 0 4 0 (67011072), PolyRefl.mkT 10 14 2 2 0 (-67011072), PolyRefl.mkT 10 14 4 0 0 (-89082368), PolyRefl.mkT 12 12 0 4 0 (76051200), PolyRefl.mkT 12 12 2 2 0 (-76051200), PolyRefl.mkT 12 12 4 0 0 (86700032), PolyRefl.mkT 14 10 0 4 0 (-5309952), PolyRefl.mkT 14 10 2 2 0 (5309952), PolyRefl.mkT 14 10 4 0 0 (-36488704), PolyRefl.mkT 16 8 0 4 0 (-13790784), PolyRefl.mkT 16 8 2 2 0 (13790784), PolyRefl.mkT 16 8 4 0 0 (8597504), PolyRefl.mkT 18 6 0 4 0 (3994880), PolyRefl.mkT 18 6 2 2 0 (-3994880), PolyRefl.mkT 18 6 4 0 0 (-1029376), PolyRefl.mkT 20 4 0 4 0 (-217472), PolyRefl.mkT 20 4 2 2 0 (217472), PolyRefl.mkT 20 4 4 0 0 (40960), PolyRefl.mkT 22 2 0 4 0 (-43776), PolyRefl.mkT 22 2 2 2 0 (43776), PolyRefl.mkT 22 2 4 0 0 (2304), PolyRefl.mkT 24 0 0 4 0 (5184), PolyRefl.mkT 24 0 2 2 0 (-5184)]
def cp656_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (8), PolyRefl.mkT 0 4 0 3 1 (-8), PolyRefl.mkT 1 3 0 0 4 (-8), PolyRefl.mkT 1 3 0 2 2 (112), PolyRefl.mkT 1 3 0 4 0 (-8), PolyRefl.mkT 2 2 0 1 3 (48), PolyRefl.mkT 2 2 0 3 1 (-48), PolyRefl.mkT 3 1 0 0 4 (-8), PolyRefl.mkT 3 1 0 2 2 (-16), PolyRefl.mkT 3 1 0 4 0 (-8), PolyRefl.mkT 4 0 0 1 3 (-24), PolyRefl.mkT 4 0 0 3 1 (24)]
def cp657_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (8), PolyRefl.mkT 1 3 0 0 2 (-8), PolyRefl.mkT 1 3 0 2 0 (120), PolyRefl.mkT 1 3 2 0 0 (-8), PolyRefl.mkT 2 2 0 1 1 (48), PolyRefl.mkT 3 1 0 0 2 (-8), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 3 1 2 0 0 (-8), PolyRefl.mkT 4 0 0 1 1 (-24)]
def cp658_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-2), PolyRefl.mkT 0 4 2 1 1 (1), PolyRefl.mkT 1 3 0 4 0 (-16), PolyRefl.mkT 1 3 2 2 0 (16), PolyRefl.mkT 1 3 4 0 0 (-1), PolyRefl.mkT 2 2 0 3 1 (-12), PolyRefl.mkT 2 2 2 1 1 (6), PolyRefl.mkT 3 1 4 0 0 (-1), PolyRefl.mkT 4 0 0 3 1 (6), PolyRefl.mkT 4 0 2 1 1 (-3)]
def cp659_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-2), PolyRefl.mkT 0 4 2 1 1 (1), PolyRefl.mkT 1 3 0 4 0 (16), PolyRefl.mkT 1 3 2 2 0 (-16), PolyRefl.mkT 1 3 4 0 0 (1), PolyRefl.mkT 2 2 0 3 1 (-12), PolyRefl.mkT 2 2 2 1 1 (6), PolyRefl.mkT 3 1 4 0 0 (1), PolyRefl.mkT 4 0 0 3 1 (6), PolyRefl.mkT 4 0 2 1 1 (-3)]
def cp660_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 2 0 (-64), PolyRefl.mkT 0 6 2 0 0 (48), PolyRefl.mkT 2 4 0 2 0 (448), PolyRefl.mkT 2 4 2 0 0 (-208), PolyRefl.mkT 4 2 0 2 0 (-448), PolyRefl.mkT 4 2 2 0 0 (208), PolyRefl.mkT 6 0 0 2 0 (64), PolyRefl.mkT 6 0 2 0 0 (-48)]
def cp661_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (24), PolyRefl.mkT 0 4 0 3 1 (-24), PolyRefl.mkT 1 3 0 0 4 (-8), PolyRefl.mkT 1 3 0 2 2 (112), PolyRefl.mkT 1 3 0 4 0 (-8), PolyRefl.mkT 2 2 0 1 3 (-48), PolyRefl.mkT 2 2 0 3 1 (48), PolyRefl.mkT 3 1 0 0 4 (-8), PolyRefl.mkT 3 1 0 2 2 (-16), PolyRefl.mkT 3 1 0 4 0 (-8), PolyRefl.mkT 4 0 0 1 3 (-8), PolyRefl.mkT 4 0 0 3 1 (8)]
def cp662_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (24), PolyRefl.mkT 1 3 0 0 2 (-8), PolyRefl.mkT 1 3 0 2 0 (120), PolyRefl.mkT 1 3 2 0 0 (-8), PolyRefl.mkT 2 2 0 1 1 (-48), PolyRefl.mkT 3 1 0 0 2 (-8), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 3 1 2 0 0 (-8), PolyRefl.mkT 4 0 0 1 1 (-8)]
def cp663_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-6), PolyRefl.mkT 0 4 2 1 1 (3), PolyRefl.mkT 1 3 0 4 0 (-16), PolyRefl.mkT 1 3 2 2 0 (16), PolyRefl.mkT 1 3 4 0 0 (-1), PolyRefl.mkT 2 2 0 3 1 (12), PolyRefl.mkT 2 2 2 1 1 (-6), PolyRefl.mkT 3 1 4 0 0 (-1), PolyRefl.mkT 4 0 0 3 1 (2), PolyRefl.mkT 4 0 2 1 1 (-1)]
def cp664_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-6), PolyRefl.mkT 0 4 2 1 1 (3), PolyRefl.mkT 1 3 0 4 0 (16), PolyRefl.mkT 1 3 2 2 0 (-16), PolyRefl.mkT 1 3 4 0 0 (1), PolyRefl.mkT 2 2 0 3 1 (12), PolyRefl.mkT 2 2 2 1 1 (-6), PolyRefl.mkT 3 1 4 0 0 (1), PolyRefl.mkT 4 0 0 3 1 (2), PolyRefl.mkT 4 0 2 1 1 (-1)]
def cp665_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 8 0 0 (-1), PolyRefl.mkT 2 6 8 0 0 (4), PolyRefl.mkT 4 4 8 0 0 (10), PolyRefl.mkT 6 2 8 0 0 (4), PolyRefl.mkT 8 0 8 0 0 (-1)]
def cp666_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-12), PolyRefl.mkT 1 3 0 0 2 (24), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 2 2 0 1 1 (24), PolyRefl.mkT 3 1 0 0 2 (-8), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 4 0 0 1 1 (4)]
def cp667_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-3), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 1 3 2 0 0 (6), PolyRefl.mkT 2 2 0 1 1 (6), PolyRefl.mkT 3 1 2 0 0 (-2), PolyRefl.mkT 4 0 0 1 1 (1)]
def cp668_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-3), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 1 3 2 0 0 (-6), PolyRefl.mkT 2 2 0 1 1 (6), PolyRefl.mkT 3 1 2 0 0 (2), PolyRefl.mkT 4 0 0 1 1 (1)]
def cp669_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 28 12 0 0 (1), PolyRefl.mkT 2 26 12 0 0 (-12), PolyRefl.mkT 4 24 12 0 0 (675), PolyRefl.mkT 6 22 12 0 0 (-12424), PolyRefl.mkT 8 20 12 0 0 (92881), PolyRefl.mkT 10 18 12 0 0 (-336756), PolyRefl.mkT 12 16 12 0 0 (622923), PolyRefl.mkT 14 14 12 0 0 (-593392), PolyRefl.mkT 16 12 12 0 0 (318155), PolyRefl.mkT 18 10 12 0 0 (-100212), PolyRefl.mkT 20 8 12 0 0 (17937), PolyRefl.mkT 22 6 12 0 0 (-1672), PolyRefl.mkT 24 4 12 0 0 (99), PolyRefl.mkT 26 2 12 0 0 (-12), PolyRefl.mkT 28 0 12 0 0 (1)]
def cp670_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 8 0 (65536), PolyRefl.mkT 0 24 2 6 0 (-131072), PolyRefl.mkT 0 24 4 4 0 (73728), PolyRefl.mkT 0 24 6 2 0 (-8192), PolyRefl.mkT 0 24 8 0 0 (256), PolyRefl.mkT 2 22 0 8 0 (786432), PolyRefl.mkT 2 22 2 6 0 (-1572864), PolyRefl.mkT 2 22 4 4 0 (851968), PolyRefl.mkT 2 22 6 2 0 (-65536), PolyRefl.mkT 2 22 8 0 0 (7168), PolyRefl.mkT 4 20 0 8 0 (-43909120), PolyRefl.mkT 4 20 2 6 0 (87818240), PolyRefl.mkT 4 20 4 4 0 (-49987584), PolyRefl.mkT 4 20 6 2 0 (6078464), PolyRefl.mkT 4 20 8 0 0 (-81408), PolyRefl.mkT 6 18 0 8 0 (498860032), PolyRefl.mkT 6 18 2 6 0 (-997720064), PolyRefl.mkT 6 18 4 4 0 (579665920), PolyRefl.mkT 6 18 6 2 0 (-80805888), PolyRefl.mkT 6 18 8 0 0 (35840), PolyRefl.mkT 8 16 0 8 0 (-2475753472), PolyRefl.mkT 8 16 2 6 0 (4951506944), PolyRefl.mkT 8 16 4 4 0 (-2923372544), PolyRefl.mkT 8 16 6 2 0 (447619072), PolyRefl.mkT 8 16 8 0 0 (716544), PolyRefl.mkT 10 14 0 8 0 (5680660480), PolyRefl.mkT 10 14 2 6 0 (-11361320960), PolyRefl.mkT 10 14 4 4 0 (6781272064), PolyRefl.mkT 10 14 6 2 0 (-1100611584), PolyRefl.mkT 10 14 8 0 0 (768000), PolyRefl.mkT 12 12 0 8 0 (-5379457024), PolyRefl.mkT 12 12 2 6 0 (10758914048), PolyRefl.mkT 12 12 4 4 0 (-6410895360), PolyRefl.mkT 12 12 6 2 0 (1031438336), PolyRefl.mkT 12 12 8 0 0 (-156672), PolyRefl.mkT 14 10 0 8 0 (2505572352), PolyRefl.mkT 14 10 2 6 0 (-5011144704), PolyRefl.mkT 14 10 4 4 0 (2963931136), PolyRefl.mkT 14 10 6 2 0 (-458358784), PolyRefl.mkT 14 10 8 0 0 (-362496), PolyRefl.mkT 16 8 0 8 0 (-563150848), PolyRefl.mkT 16 8 2 6 0 (1126301696), PolyRefl.mkT 16 8 4 4 0 (-656351232), PolyRefl.mkT 16 8 6 2 0 (93200384), PolyRefl.mkT 16 8 8 0 0 (61184), PolyRefl.mkT 18 6 0 8 0 (39583744), PolyRefl.mkT 18 6 2 6 0 (-79167488), PolyRefl.mkT 18 6 4 4 0 (44105728), PolyRefl.mkT 18 6 6 2 0 (-4521984), PolyRefl.mkT 18 6 8 0 0 (76800), PolyRefl.mkT 20 4 0 8 0 (6422528), PolyRefl.mkT 20 4 2 6 0 (-12845056), PolyRefl.mkT 20 4 4 4 0 (7684096), PolyRefl.mkT 20 4 6 2 0 (-1261568), PolyRefl.mkT 20 4 8 0 0 (-15872), PolyRefl.mkT 22 2 0 8 0 (-1310720), PolyRefl.mkT 22 2 2 6 0 (2621440), PolyRefl.mkT 22 2 4 4 0 (-1507328), PolyRefl.mkT 22 2 6 2 0 (196608), PolyRefl.mkT 22 2 8 0 0 (-1024), PolyRefl.mkT 24 0 0 8 0 (65536), PolyRefl.mkT 24 0 2 6 0 (-131072), PolyRefl.mkT 24 0 4 4 0 (73728), PolyRefl.mkT 24 0 6 2 0 (-8192), PolyRefl.mkT 24 0 8 0 0 (256)]
def cp671_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (8), PolyRefl.mkT 0 4 0 3 1 (-8), PolyRefl.mkT 1 3 0 0 4 (-8), PolyRefl.mkT 1 3 0 2 2 (-16), PolyRefl.mkT 1 3 0 4 0 (-8), PolyRefl.mkT 2 2 0 1 3 (48), PolyRefl.mkT 2 2 0 3 1 (-48), PolyRefl.mkT 3 1 0 0 4 (-8), PolyRefl.mkT 3 1 0 2 2 (112), PolyRefl.mkT 3 1 0 4 0 (-8), PolyRefl.mkT 4 0 0 1 3 (-24), PolyRefl.mkT 4 0 0 3 1 (24)]
def cp672_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (8), PolyRefl.mkT 1 3 0 0 2 (-8), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 1 3 2 0 0 (-8), PolyRefl.mkT 2 2 0 1 1 (48), PolyRefl.mkT 3 1 0 0 2 (-8), PolyRefl.mkT 3 1 0 2 0 (120), PolyRefl.mkT 3 1 2 0 0 (-8), PolyRefl.mkT 4 0 0 1 1 (-24)]
def cp673_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-2), PolyRefl.mkT 0 4 2 1 1 (1), PolyRefl.mkT 1 3 4 0 0 (-1), PolyRefl.mkT 2 2 0 3 1 (-12), PolyRefl.mkT 2 2 2 1 1 (6), PolyRefl.mkT 3 1 0 4 0 (-16), PolyRefl.mkT 3 1 2 2 0 (16), PolyRefl.mkT 3 1 4 0 0 (-1), PolyRefl.mkT 4 0 0 3 1 (6), PolyRefl.mkT 4 0 2 1 1 (-3)]
def cp674_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-2), PolyRefl.mkT 0 4 2 1 1 (1), PolyRefl.mkT 1 3 4 0 0 (1), PolyRefl.mkT 2 2 0 3 1 (-12), PolyRefl.mkT 2 2 2 1 1 (6), PolyRefl.mkT 3 1 0 4 0 (16), PolyRefl.mkT 3 1 2 2 0 (-16), PolyRefl.mkT 3 1 4 0 0 (1), PolyRefl.mkT 4 0 0 3 1 (6), PolyRefl.mkT 4 0 2 1 1 (-3)]
def cp675_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-12), PolyRefl.mkT 1 3 0 0 2 (8), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 2 2 0 1 1 (24), PolyRefl.mkT 3 1 0 0 2 (8), PolyRefl.mkT 3 1 0 2 0 (-24), PolyRefl.mkT 4 0 0 1 1 (4)]
def cp676_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-3), PolyRefl.mkT 1 3 2 0 0 (2), PolyRefl.mkT 2 2 0 1 1 (6), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 3 1 2 0 0 (2), PolyRefl.mkT 4 0 0 1 1 (1)]
def cp677_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-3), PolyRefl.mkT 1 3 2 0 0 (-2), PolyRefl.mkT 2 2 0 1 1 (6), PolyRefl.mkT 3 1 0 2 0 (8), PolyRefl.mkT 3 1 2 0 0 (-2), PolyRefl.mkT 4 0 0 1 1 (1)]
def cp678_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-4), PolyRefl.mkT 1 3 0 0 2 (8), PolyRefl.mkT 1 3 0 2 0 (-24), PolyRefl.mkT 2 2 0 1 1 (-24), PolyRefl.mkT 3 1 0 0 2 (8), PolyRefl.mkT 3 1 0 2 0 (8), PolyRefl.mkT 4 0 0 1 1 (12)]
def cp679_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-1), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 1 3 2 0 0 (2), PolyRefl.mkT 2 2 0 1 1 (-6), PolyRefl.mkT 3 1 2 0 0 (2), PolyRefl.mkT 4 0 0 1 1 (3)]
def cp680_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-1), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 1 3 2 0 0 (-2), PolyRefl.mkT 2 2 0 1 1 (-6), PolyRefl.mkT 3 1 2 0 0 (-2), PolyRefl.mkT 4 0 0 1 1 (3)]
def cp681_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 4 0 (1), PolyRefl.mkT 0 8 2 2 0 (-1), PolyRefl.mkT 2 6 0 4 0 (76), PolyRefl.mkT 2 6 2 2 0 (-44), PolyRefl.mkT 2 6 4 0 0 (4), PolyRefl.mkT 4 4 0 4 0 (30), PolyRefl.mkT 4 4 2 2 0 (-62), PolyRefl.mkT 4 4 4 0 0 (8), PolyRefl.mkT 6 2 0 4 0 (-36), PolyRefl.mkT 6 2 2 2 0 (36), PolyRefl.mkT 6 2 4 0 0 (4), PolyRefl.mkT 8 0 0 4 0 (9), PolyRefl.mkT 8 0 2 2 0 (-9)]
def cp682_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 16 0 2 0 (9), PolyRefl.mkT 2 14 0 2 0 (592), PolyRefl.mkT 2 14 2 0 0 (272), PolyRefl.mkT 4 12 0 2 0 (-6412), PolyRefl.mkT 4 12 2 0 0 (-4416), PolyRefl.mkT 6 10 0 2 0 (20384), PolyRefl.mkT 6 10 2 0 0 (14800), PolyRefl.mkT 8 8 0 2 0 (5710), PolyRefl.mkT 8 8 2 0 0 (-12544), PolyRefl.mkT 10 6 0 2 0 (-14064), PolyRefl.mkT 10 6 2 0 0 (1456), PolyRefl.mkT 12 4 0 2 0 (6372), PolyRefl.mkT 12 4 2 0 0 (576), PolyRefl.mkT 14 2 0 2 0 (-1152), PolyRefl.mkT 14 2 2 0 0 (-144), PolyRefl.mkT 16 0 0 2 0 (81)]
def cp683_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (16), PolyRefl.mkT 0 4 0 3 1 (-16), PolyRefl.mkT 1 3 0 0 4 (-16), PolyRefl.mkT 1 3 0 2 2 (96), PolyRefl.mkT 1 3 0 4 0 (-16), PolyRefl.mkT 2 2 0 1 3 (32), PolyRefl.mkT 2 2 0 3 1 (-32), PolyRefl.mkT 3 1 0 0 4 (16), PolyRefl.mkT 3 1 0 2 2 (-96), PolyRefl.mkT 3 1 0 4 0 (16), PolyRefl.mkT 4 0 0 1 3 (16), PolyRefl.mkT 4 0 0 3 1 (-16)]
def cp684_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (16), PolyRefl.mkT 1 3 0 0 2 (-16), PolyRefl.mkT 1 3 0 2 0 (112), PolyRefl.mkT 1 3 2 0 0 (-16), PolyRefl.mkT 2 2 0 1 1 (32), PolyRefl.mkT 3 1 0 0 2 (16), PolyRefl.mkT 3 1 0 2 0 (-112), PolyRefl.mkT 3 1 2 0 0 (16), PolyRefl.mkT 4 0 0 1 1 (16)]
def cp685_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 20 0 6 0 (256), PolyRefl.mkT 0 20 2 4 0 (-320), PolyRefl.mkT 0 20 4 2 0 (80), PolyRefl.mkT 0 20 6 0 0 (-4), PolyRefl.mkT 2 18 0 6 0 (512), PolyRefl.mkT 2 18 2 4 0 (-128), PolyRefl.mkT 2 18 4 2 0 (-96), PolyRefl.mkT 2 18 6 0 0 (-40), PolyRefl.mkT 4 16 0 6 0 (-70400), PolyRefl.mkT 4 16 2 4 0 (92096), PolyRefl.mkT 4 16 4 2 0 (-23024), PolyRefl.mkT 4 16 6 0 0 (1100), PolyRefl.mkT 6 14 0 6 0 (628736), PolyRefl.mkT 6 14 2 4 0 (-902656), PolyRefl.mkT 6 14 4 2 0 (269184), PolyRefl.mkT 6 14 6 0 0 (3104), PolyRefl.mkT 8 12 0 6 0 (-2092544), PolyRefl.mkT 8 12 2 4 0 (3168640), PolyRefl.mkT 8 12 4 2 0 (-1078880), PolyRefl.mkT 8 12 6 0 0 (1976), PolyRefl.mkT 10 10 0 6 0 (2804736), PolyRefl.mkT 10 10 2 4 0 (-4256512), PolyRefl.mkT 10 10 4 2 0 (1452480), PolyRefl.mkT 10 10 6 0 0 (16), PolyRefl.mkT 12 8 0 6 0 (-2092544), PolyRefl.mkT 12 8 2 4 0 (3168640), PolyRefl.mkT 12 8 4 2 0 (-1078880), PolyRefl.mkT 12 8 6 0 0 (1976), PolyRefl.mkT 14 6 0 6 0 (628736), PolyRefl.mkT 14 6 2 4 0 (-902656), PolyRefl.mkT 14 6 4 2 0 (269184), PolyRefl.mkT 14 6 6 0 0 (3104), PolyRefl.mkT 16 4 0 6 0 (-70400), PolyRefl.mkT 16 4 2 4 0 (92096), PolyRefl.mkT 16 4 4 2 0 (-23024), PolyRefl.mkT 16 4 6 0 0 (1100), PolyRefl.mkT 18 2 0 6 0 (512), PolyRefl.mkT 18 2 2 4 0 (-128), PolyRefl.mkT 18 2 4 2 0 (-96), PolyRefl.mkT 18 2 6 0 0 (-40), PolyRefl.mkT 20 0 0 6 0 (256), PolyRefl.mkT 20 0 2 4 0 (-320), PolyRefl.mkT 20 0 4 2 0 (80), PolyRefl.mkT 20 0 6 0 0 (-4)]
def cp686_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 5 (-12), PolyRefl.mkT 0 4 0 3 3 (40), PolyRefl.mkT 0 4 0 5 1 (-12), PolyRefl.mkT 1 3 0 0 6 (8), PolyRefl.mkT 1 3 0 2 4 (-264), PolyRefl.mkT 1 3 0 4 2 (216), PolyRefl.mkT 1 3 0 6 0 (-24), PolyRefl.mkT 2 2 0 1 5 (-72), PolyRefl.mkT 2 2 0 3 3 (240), PolyRefl.mkT 2 2 0 5 1 (-72), PolyRefl.mkT 3 1 0 0 6 (8), PolyRefl.mkT 3 1 0 2 4 (24), PolyRefl.mkT 3 1 0 4 2 (24), PolyRefl.mkT 3 1 0 6 0 (8), PolyRefl.mkT 4 0 0 1 5 (36), PolyRefl.mkT 4 0 0 3 3 (-120), PolyRefl.mkT 4 0 0 5 1 (36)]
def cp687_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-12), PolyRefl.mkT 0 4 0 3 1 (52), PolyRefl.mkT 0 4 2 1 1 (-12), PolyRefl.mkT 1 3 0 0 4 (8), PolyRefl.mkT 1 3 0 2 2 (-272), PolyRefl.mkT 1 3 0 4 0 (488), PolyRefl.mkT 1 3 2 0 2 (8), PolyRefl.mkT 1 3 2 2 0 (-280), PolyRefl.mkT 1 3 4 0 0 (8), PolyRefl.mkT 2 2 0 1 3 (-72), PolyRefl.mkT 2 2 0 3 1 (312), PolyRefl.mkT 2 2 2 1 1 (-72), PolyRefl.mkT 3 1 0 0 4 (8), PolyRefl.mkT 3 1 0 2 2 (16), PolyRefl.mkT 3 1 0 4 0 (8), PolyRefl.mkT 3 1 2 0 2 (8), PolyRefl.mkT 3 1 2 2 0 (8), PolyRefl.mkT 3 1 4 0 0 (8), PolyRefl.mkT 4 0 0 1 3 (36), PolyRefl.mkT 4 0 0 3 1 (-156), PolyRefl.mkT 4 0 2 1 1 (36)]
def cp688_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (-16), PolyRefl.mkT 0 4 2 3 1 (16), PolyRefl.mkT 0 4 4 1 1 (-3), PolyRefl.mkT 1 3 0 6 0 (-128), PolyRefl.mkT 1 3 2 4 0 (192), PolyRefl.mkT 1 3 4 2 0 (-72), PolyRefl.mkT 1 3 6 0 0 (2), PolyRefl.mkT 2 2 0 5 1 (-96), PolyRefl.mkT 2 2 2 3 1 (96), PolyRefl.mkT 2 2 4 1 1 (-18), PolyRefl.mkT 3 1 6 0 0 (2), PolyRefl.mkT 4 0 0 5 1 (48), PolyRefl.mkT 4 0 2 3 1 (-48), PolyRefl.mkT 4 0 4 1 1 (9)]
def cp689_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (-16), PolyRefl.mkT 0 4 2 3 1 (16), PolyRefl.mkT 0 4 4 1 1 (-3), PolyRefl.mkT 1 3 0 6 0 (128), PolyRefl.mkT 1 3 2 4 0 (-192), PolyRefl.mkT 1 3 4 2 0 (72), PolyRefl.mkT 1 3 6 0 0 (-2), PolyRefl.mkT 2 2 0 5 1 (-96), PolyRefl.mkT 2 2 2 3 1 (96), PolyRefl.mkT 2 2 4 1 1 (-18), PolyRefl.mkT 3 1 6 0 0 (-2), PolyRefl.mkT 4 0 0 5 1 (48), PolyRefl.mkT 4 0 2 3 1 (-48), PolyRefl.mkT 4 0 4 1 1 (9)]
def cp690_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 12 0 (256), PolyRefl.mkT 0 8 2 10 0 (-768), PolyRefl.mkT 0 8 4 8 0 (864), PolyRefl.mkT 0 8 6 6 0 (-448), PolyRefl.mkT 0 8 8 4 0 (105), PolyRefl.mkT 0 8 10 2 0 (-9), PolyRefl.mkT 2 6 0 12 0 (19456), PolyRefl.mkT 2 6 2 10 0 (-58368), PolyRefl.mkT 2 6 4 8 0 (65664), PolyRefl.mkT 2 6 6 6 0 (-33536), PolyRefl.mkT 2 6 8 4 0 (7212), PolyRefl.mkT 2 6 10 2 0 (-396), PolyRefl.mkT 2 6 12 0 0 (4), PolyRefl.mkT 4 4 0 12 0 (7680), PolyRefl.mkT 4 4 2 10 0 (-23040), PolyRefl.mkT 4 4 4 8 0 (25920), PolyRefl.mkT 4 4 6 6 0 (-13952), PolyRefl.mkT 4 4 8 4 0 (3918), PolyRefl.mkT 4 4 10 2 0 (-558), PolyRefl.mkT 4 4 12 0 0 (8), PolyRefl.mkT 6 2 0 12 0 (-9216), PolyRefl.mkT 6 2 2 10 0 (27648), PolyRefl.mkT 6 2 4 8 0 (-31104), PolyRefl.mkT 6 2 6 6 0 (16128), PolyRefl.mkT 6 2 8 4 0 (-3780), PolyRefl.mkT 6 2 10 2 0 (324), PolyRefl.mkT 6 2 12 0 0 (4), PolyRefl.mkT 8 0 0 12 0 (2304), PolyRefl.mkT 8 0 2 10 0 (-6912), PolyRefl.mkT 8 0 4 8 0 (7776), PolyRefl.mkT 8 0 6 6 0 (-4032), PolyRefl.mkT 8 0 8 4 0 (945), PolyRefl.mkT 8 0 10 2 0 (-81)]
def cp691_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 32 0 6 0 (764411904), PolyRefl.mkT 0 32 2 4 0 (-1146617856), PolyRefl.mkT 0 32 4 2 0 (429981696), PolyRefl.mkT 2 30 0 6 0 (34653339648), PolyRefl.mkT 2 30 2 4 0 (-51980009472), PolyRefl.mkT 2 30 4 2 0 (19492503552), PolyRefl.mkT 2 30 6 0 0 (1443889152), PolyRefl.mkT 4 28 0 6 0 (-1440038780928), PolyRefl.mkT 4 28 2 4 0 (2160058171392), PolyRefl.mkT 4 28 4 2 0 (-810021814272), PolyRefl.mkT 4 28 6 0 0 (-52961476608), PolyRefl.mkT 6 26 0 6 0 (21029359452160), PolyRefl.mkT 6 26 2 4 0 (-31544039178240), PolyRefl.mkT 6 26 4 2 0 (11829014691840), PolyRefl.mkT 6 26 6 0 0 (808167931904), PolyRefl.mkT 8 24 0 6 0 (-164702814470144), PolyRefl.mkT 8 24 2 4 0 (247054221705216), PolyRefl.mkT 8 24 4 2 0 (-92645333139456), PolyRefl.mkT 8 24 6 0 0 (-6783531745280), PolyRefl.mkT 10 22 0 6 0 (753419597905920), PolyRefl.mkT 10 22 2 4 0 (-1130129396858880), PolyRefl.mkT 10 22 4 2 0 (423798523822080), PolyRefl.mkT 10 22 6 0 0 (33995568971776), PolyRefl.mkT 12 20 0 6 0 (-1942862245658624), PolyRefl.mkT 12 20 2 4 0 (2914293368487936), PolyRefl.mkT 12 20 4 2 0 (-1092860013182976), PolyRefl.mkT 12 20 6 0 0 (-102435754344448), PolyRefl.mkT 14 18 0 6 0 (2252979344244736), PolyRefl.mkT 14 18 2 4 0 (-3379469016367104), PolyRefl.mkT 14 18 4 2 0 (1267300881137664), PolyRefl.mkT 14 18 6 0 0 (176553896968192), PolyRefl.mkT 16 16 0 6 0 (289122885304320), PolyRefl.mkT 16 16 2 4 0 (-433684327956480), PolyRefl.mkT 16 16 4 2 0 (162631622983680), PolyRefl.mkT 16 16 6 0 0 (-159131793096704), PolyRefl.mkT 18 14 0 6 0 (-2118587972059136), PolyRefl.mkT 18 14 2 4 0 (3177881958088704), PolyRefl.mkT 18 14 4 2 0 (-1191705734283264), PolyRefl.mkT 18 14 6 0 0 (70807857397760), PolyRefl.mkT 20 12 0 6 0 (1742123611193344), PolyRefl.mkT 20 12 2 4 0 (-2613185416790016), PolyRefl.mkT 20 12 4 2 0 (979944531296256), PolyRefl.mkT 20 12 6 0 0 (-13949084893184), PolyRefl.mkT 22 10 0 6 0 (-749186202992640), PolyRefl.mkT 22 10 2 4 0 (1123779304488960), PolyRefl.mkT 22 10 4 2 0 (-421417239183360), PolyRefl.mkT 22 10 6 0 0 (-503875371008), PolyRefl.mkT 24 8 0 6 0 (199257797689344), PolyRefl.mkT 24 8 2 4 0 (-298886696534016), PolyRefl.mkT 24 8 4 2 0 (112082511200256), PolyRefl.mkT 24 8 6 0 0 (859463221248), PolyRefl.mkT 26 6 0 6 0 (-34209037025280), PolyRefl.mkT 26 6 2 4 0 (51313555537920), PolyRefl.mkT 26 6 4 2 0 (-19242583326720), PolyRefl.mkT 26 6 6 0 0 (-187318665216), PolyRefl.mkT 28 4 0 6 0 (3734406955008), PolyRefl.mkT 28 4 2 4 0 (-5601610432512), PolyRefl.mkT 28 4 4 2 0 (2100603912192), PolyRefl.mkT 28 4 6 0 0 (18685624320), PolyRefl.mkT 30 2 0 6 0 (-238496514048), PolyRefl.mkT 30 2 2 4 0 (357744771072), PolyRefl.mkT 30 2 4 2 0 (-134154289152), PolyRefl.mkT 30 2 6 0 0 (-764411904), PolyRefl.mkT 32 0 0 6 0 (6879707136), PolyRefl.mkT 32 0 2 4 0 (-10319560704), PolyRefl.mkT 32 0 4 2 0 (3869835264)]
def cp692_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-8), PolyRefl.mkT 0 4 0 3 1 (8), PolyRefl.mkT 1 3 0 0 4 (8), PolyRefl.mkT 1 3 0 2 2 (16), PolyRefl.mkT 1 3 0 4 0 (8), PolyRefl.mkT 2 2 0 1 3 (-48), PolyRefl.mkT 2 2 0 3 1 (48), PolyRefl.mkT 3 1 0 0 4 (-24), PolyRefl.mkT 3 1 0 2 2 (80), PolyRefl.mkT 3 1 0 4 0 (-24), PolyRefl.mkT 4 0 0 1 3 (24), PolyRefl.mkT 4 0 0 3 1 (-24)]
def cp693_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-8), PolyRefl.mkT 1 3 0 0 2 (8), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 1 3 2 0 0 (8), PolyRefl.mkT 2 2 0 1 1 (-48), PolyRefl.mkT 3 1 0 0 2 (-24), PolyRefl.mkT 3 1 0 2 0 (104), PolyRefl.mkT 3 1 2 0 0 (-24), PolyRefl.mkT 4 0 0 1 1 (24)]
def cp694_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (2), PolyRefl.mkT 0 4 2 1 1 (-1), PolyRefl.mkT 1 3 4 0 0 (1), PolyRefl.mkT 2 2 0 3 1 (12), PolyRefl.mkT 2 2 2 1 1 (-6), PolyRefl.mkT 3 1 0 4 0 (-16), PolyRefl.mkT 3 1 2 2 0 (16), PolyRefl.mkT 3 1 4 0 0 (-3), PolyRefl.mkT 4 0 0 3 1 (-6), PolyRefl.mkT 4 0 2 1 1 (3)]
def cp695_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (2), PolyRefl.mkT 0 4 2 1 1 (-1), PolyRefl.mkT 1 3 4 0 0 (-1), PolyRefl.mkT 2 2 0 3 1 (12), PolyRefl.mkT 2 2 2 1 1 (-6), PolyRefl.mkT 3 1 0 4 0 (16), PolyRefl.mkT 3 1 2 2 0 (-16), PolyRefl.mkT 3 1 4 0 0 (3), PolyRefl.mkT 4 0 0 3 1 (-6), PolyRefl.mkT 4 0 2 1 1 (3)]
def cp696_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 44 16 0 0 (1), PolyRefl.mkT 2 42 16 0 0 (-146), PolyRefl.mkT 4 40 16 0 0 (8263), PolyRefl.mkT 6 38 16 0 0 (-244140), PolyRefl.mkT 8 36 16 0 0 (4266227), PolyRefl.mkT 10 34 16 0 0 (-47557802), PolyRefl.mkT 12 32 16 0 0 (354205429), PolyRefl.mkT 14 30 16 0 0 (-1810011664), PolyRefl.mkT 16 28 16 0 0 (6430059162), PolyRefl.mkT 18 26 16 0 0 (-15946280132), PolyRefl.mkT 20 24 16 0 0 (27570150710), PolyRefl.mkT 22 22 16 0 0 (-33113386120), PolyRefl.mkT 24 20 16 0 0 (27570150710), PolyRefl.mkT 26 18 16 0 0 (-15946280132), PolyRefl.mkT 28 16 16 0 0 (6430059162), PolyRefl.mkT 30 14 16 0 0 (-1810011664), PolyRefl.mkT 32 12 16 0 0 (354205429), PolyRefl.mkT 34 10 16 0 0 (-47557802), PolyRefl.mkT 36 8 16 0 0 (4266227), PolyRefl.mkT 38 6 16 0 0 (-244140), PolyRefl.mkT 40 4 16 0 0 (8263), PolyRefl.mkT 42 2 16 0 0 (-146), PolyRefl.mkT 44 0 16 0 0 (1)]
def cp697_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 12 0 0 0 (4096), PolyRefl.mkT 2 10 0 0 0 (-73728), PolyRefl.mkT 4 8 0 0 0 (454656), PolyRefl.mkT 6 6 0 0 0 (-1032192), PolyRefl.mkT 8 4 0 0 0 (454656), PolyRefl.mkT 10 2 0 0 0 (-73728), PolyRefl.mkT 12 0 0 0 0 (4096)]
def cp698_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 2 14 0 4 0 (1048576), PolyRefl.mkT 2 14 2 2 0 (-786432), PolyRefl.mkT 4 12 0 4 0 (-14680064), PolyRefl.mkT 4 12 2 2 0 (13107200), PolyRefl.mkT 6 10 0 4 0 (66060288), PolyRefl.mkT 6 10 2 2 0 (-66322432), PolyRefl.mkT 6 10 4 0 0 (4194304), PolyRefl.mkT 8 8 0 4 0 (-104857600), PolyRefl.mkT 8 8 2 2 0 (108003328), PolyRefl.mkT 8 8 4 0 0 (-8388608), PolyRefl.mkT 10 6 0 4 0 (66060288), PolyRefl.mkT 10 6 2 2 0 (-66322432), PolyRefl.mkT 10 6 4 0 0 (4194304), PolyRefl.mkT 12 4 0 4 0 (-14680064), PolyRefl.mkT 12 4 2 2 0 (13107200), PolyRefl.mkT 14 2 0 4 0 (1048576), PolyRefl.mkT 14 2 2 2 0 (-786432)]
def cp699_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 20 8 0 0 (1), PolyRefl.mkT 2 18 6 2 0 (-64), PolyRefl.mkT 2 18 8 0 0 (-30), PolyRefl.mkT 4 16 6 2 0 (1792), PolyRefl.mkT 4 16 8 0 0 (365), PolyRefl.mkT 6 14 6 2 0 (-4352), PolyRefl.mkT 6 14 8 0 0 (-7400), PolyRefl.mkT 8 12 6 2 0 (-1792), PolyRefl.mkT 8 12 8 0 0 (32146), PolyRefl.mkT 10 10 6 2 0 (8832), PolyRefl.mkT 10 10 8 0 0 (-51188), PolyRefl.mkT 12 8 6 2 0 (-1792), PolyRefl.mkT 12 8 8 0 0 (32146), PolyRefl.mkT 14 6 6 2 0 (-4352), PolyRefl.mkT 14 6 8 0 0 (-7400), PolyRefl.mkT 16 4 6 2 0 (1792), PolyRefl.mkT 16 4 8 0 0 (365), PolyRefl.mkT 18 2 6 2 0 (-64), PolyRefl.mkT 18 2 8 0 0 (-30), PolyRefl.mkT 20 0 8 0 0 (1)]
def cp700_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 8 0 0 (-16), PolyRefl.mkT 2 22 6 2 0 (-1024), PolyRefl.mkT 2 22 8 0 0 (1856), PolyRefl.mkT 4 20 6 2 0 (34816), PolyRefl.mkT 4 20 8 0 0 (-50208), PolyRefl.mkT 6 18 6 2 0 (-242688), PolyRefl.mkT 6 18 8 0 0 (399936), PolyRefl.mkT 8 16 6 2 0 (417792), PolyRefl.mkT 8 16 8 0 0 (-1613552), PolyRefl.mkT 10 14 6 2 0 (243712), PolyRefl.mkT 10 14 8 0 0 (3776128), PolyRefl.mkT 12 12 6 2 0 (-905216), PolyRefl.mkT 12 12 8 0 0 (-5093824), PolyRefl.mkT 14 10 6 2 0 (243712), PolyRefl.mkT 14 10 8 0 0 (3776128), PolyRefl.mkT 16 8 6 2 0 (417792), PolyRefl.mkT 16 8 8 0 0 (-1613552), PolyRefl.mkT 18 6 6 2 0 (-242688), PolyRefl.mkT 18 6 8 0 0 (399936), PolyRefl.mkT 20 4 6 2 0 (34816), PolyRefl.mkT 20 4 8 0 0 (-50208), PolyRefl.mkT 22 2 6 2 0 (-1024), PolyRefl.mkT 22 2 8 0 0 (1856), PolyRefl.mkT 24 0 8 0 0 (-16)]
def cp701_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 5 (-12), PolyRefl.mkT 0 4 0 3 3 (40), PolyRefl.mkT 0 4 0 5 1 (-12), PolyRefl.mkT 1 3 0 0 6 (24), PolyRefl.mkT 1 3 0 2 4 (-216), PolyRefl.mkT 1 3 0 4 2 (264), PolyRefl.mkT 1 3 0 6 0 (-8), PolyRefl.mkT 2 2 0 1 5 (-72), PolyRefl.mkT 2 2 0 3 3 (240), PolyRefl.mkT 2 2 0 5 1 (-72), PolyRefl.mkT 3 1 0 0 6 (-8), PolyRefl.mkT 3 1 0 2 4 (-24), PolyRefl.mkT 3 1 0 4 2 (-24), PolyRefl.mkT 3 1 0 6 0 (-8), PolyRefl.mkT 4 0 0 1 5 (36), PolyRefl.mkT 4 0 0 3 3 (-120), PolyRefl.mkT 4 0 0 5 1 (36)]
def cp702_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-12), PolyRefl.mkT 0 4 0 3 1 (52), PolyRefl.mkT 0 4 2 1 1 (-12), PolyRefl.mkT 1 3 0 0 4 (24), PolyRefl.mkT 1 3 0 2 2 (-240), PolyRefl.mkT 1 3 0 4 0 (504), PolyRefl.mkT 1 3 2 0 2 (24), PolyRefl.mkT 1 3 2 2 0 (-264), PolyRefl.mkT 1 3 4 0 0 (24), PolyRefl.mkT 2 2 0 1 3 (-72), PolyRefl.mkT 2 2 0 3 1 (312), PolyRefl.mkT 2 2 2 1 1 (-72), PolyRefl.mkT 3 1 0 0 4 (-8), PolyRefl.mkT 3 1 0 2 2 (-16), PolyRefl.mkT 3 1 0 4 0 (-8), PolyRefl.mkT 3 1 2 0 2 (-8), PolyRefl.mkT 3 1 2 2 0 (-8), PolyRefl.mkT 3 1 4 0 0 (-8), PolyRefl.mkT 4 0 0 1 3 (36), PolyRefl.mkT 4 0 0 3 1 (-156), PolyRefl.mkT 4 0 2 1 1 (36)]
def cp703_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (-16), PolyRefl.mkT 0 4 2 3 1 (16), PolyRefl.mkT 0 4 4 1 1 (-3), PolyRefl.mkT 1 3 0 6 0 (-128), PolyRefl.mkT 1 3 2 4 0 (192), PolyRefl.mkT 1 3 4 2 0 (-72), PolyRefl.mkT 1 3 6 0 0 (6), PolyRefl.mkT 2 2 0 5 1 (-96), PolyRefl.mkT 2 2 2 3 1 (96), PolyRefl.mkT 2 2 4 1 1 (-18), PolyRefl.mkT 3 1 6 0 0 (-2), PolyRefl.mkT 4 0 0 5 1 (48), PolyRefl.mkT 4 0 2 3 1 (-48), PolyRefl.mkT 4 0 4 1 1 (9)]
def cp704_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (-16), PolyRefl.mkT 0 4 2 3 1 (16), PolyRefl.mkT 0 4 4 1 1 (-3), PolyRefl.mkT 1 3 0 6 0 (128), PolyRefl.mkT 1 3 2 4 0 (-192), PolyRefl.mkT 1 3 4 2 0 (72), PolyRefl.mkT 1 3 6 0 0 (-6), PolyRefl.mkT 2 2 0 5 1 (-96), PolyRefl.mkT 2 2 2 3 1 (96), PolyRefl.mkT 2 2 4 1 1 (-18), PolyRefl.mkT 3 1 6 0 0 (2), PolyRefl.mkT 4 0 0 5 1 (48), PolyRefl.mkT 4 0 2 3 1 (-48), PolyRefl.mkT 4 0 4 1 1 (9)]
def cp705_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 5 (36), PolyRefl.mkT 0 4 0 3 3 (-120), PolyRefl.mkT 0 4 0 5 1 (36), PolyRefl.mkT 1 3 0 0 6 (24), PolyRefl.mkT 1 3 0 2 4 (-216), PolyRefl.mkT 1 3 0 4 2 (264), PolyRefl.mkT 1 3 0 6 0 (-8), PolyRefl.mkT 2 2 0 1 5 (-72), PolyRefl.mkT 2 2 0 3 3 (240), PolyRefl.mkT 2 2 0 5 1 (-72), PolyRefl.mkT 3 1 0 0 6 (-8), PolyRefl.mkT 3 1 0 2 4 (-24), PolyRefl.mkT 3 1 0 4 2 (-24), PolyRefl.mkT 3 1 0 6 0 (-8), PolyRefl.mkT 4 0 0 1 5 (-12), PolyRefl.mkT 4 0 0 3 3 (40), PolyRefl.mkT 4 0 0 5 1 (-12)]
def cp706_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (36), PolyRefl.mkT 0 4 0 3 1 (-156), PolyRefl.mkT 0 4 2 1 1 (36), PolyRefl.mkT 1 3 0 0 4 (24), PolyRefl.mkT 1 3 0 2 2 (-240), PolyRefl.mkT 1 3 0 4 0 (504), PolyRefl.mkT 1 3 2 0 2 (24), PolyRefl.mkT 1 3 2 2 0 (-264), PolyRefl.mkT 1 3 4 0 0 (24), PolyRefl.mkT 2 2 0 1 3 (-72), PolyRefl.mkT 2 2 0 3 1 (312), PolyRefl.mkT 2 2 2 1 1 (-72), PolyRefl.mkT 3 1 0 0 4 (-8), PolyRefl.mkT 3 1 0 2 2 (-16), PolyRefl.mkT 3 1 0 4 0 (-8), PolyRefl.mkT 3 1 2 0 2 (-8), PolyRefl.mkT 3 1 2 2 0 (-8), PolyRefl.mkT 3 1 4 0 0 (-8), PolyRefl.mkT 4 0 0 1 3 (-12), PolyRefl.mkT 4 0 0 3 1 (52), PolyRefl.mkT 4 0 2 1 1 (-12)]
def cp707_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (48), PolyRefl.mkT 0 4 2 3 1 (-48), PolyRefl.mkT 0 4 4 1 1 (9), PolyRefl.mkT 1 3 0 6 0 (-128), PolyRefl.mkT 1 3 2 4 0 (192), PolyRefl.mkT 1 3 4 2 0 (-72), PolyRefl.mkT 1 3 6 0 0 (6), PolyRefl.mkT 2 2 0 5 1 (-96), PolyRefl.mkT 2 2 2 3 1 (96), PolyRefl.mkT 2 2 4 1 1 (-18), PolyRefl.mkT 3 1 6 0 0 (-2), PolyRefl.mkT 4 0 0 5 1 (-16), PolyRefl.mkT 4 0 2 3 1 (16), PolyRefl.mkT 4 0 4 1 1 (-3)]
def cp708_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (48), PolyRefl.mkT 0 4 2 3 1 (-48), PolyRefl.mkT 0 4 4 1 1 (9), PolyRefl.mkT 1 3 0 6 0 (128), PolyRefl.mkT 1 3 2 4 0 (-192), PolyRefl.mkT 1 3 4 2 0 (72), PolyRefl.mkT 1 3 6 0 0 (-6), PolyRefl.mkT 2 2 0 5 1 (-96), PolyRefl.mkT 2 2 2 3 1 (96), PolyRefl.mkT 2 2 4 1 1 (-18), PolyRefl.mkT 3 1 6 0 0 (2), PolyRefl.mkT 4 0 0 5 1 (-16), PolyRefl.mkT 4 0 2 3 1 (16), PolyRefl.mkT 4 0 4 1 1 (-3)]
def cp709_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 16 8 0 0 (-1), PolyRefl.mkT 2 14 8 0 0 (24), PolyRefl.mkT 4 12 8 0 0 (36), PolyRefl.mkT 6 10 8 0 0 (-88), PolyRefl.mkT 8 8 8 0 0 (-198), PolyRefl.mkT 10 6 8 0 0 (-88), PolyRefl.mkT 12 4 8 0 0 (36), PolyRefl.mkT 14 2 8 0 0 (24), PolyRefl.mkT 16 0 8 0 0 (-1)]
def cp710_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-4), PolyRefl.mkT 1 3 0 0 2 (8), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 2 2 0 1 1 (-24), PolyRefl.mkT 3 1 0 0 2 (8), PolyRefl.mkT 3 1 0 2 0 (-24), PolyRefl.mkT 4 0 0 1 1 (12)]
def cp711_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-1), PolyRefl.mkT 1 3 2 0 0 (2), PolyRefl.mkT 2 2 0 1 1 (-6), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 3 1 2 0 0 (2), PolyRefl.mkT 4 0 0 1 1 (3)]
def cp712_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-1), PolyRefl.mkT 1 3 2 0 0 (-2), PolyRefl.mkT 2 2 0 1 1 (-6), PolyRefl.mkT 3 1 0 2 0 (8), PolyRefl.mkT 3 1 2 0 0 (-2), PolyRefl.mkT 4 0 0 1 1 (3)]
def cp713_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 0 2 0 (-1024), PolyRefl.mkT 0 10 2 0 0 (512), PolyRefl.mkT 2 8 0 2 0 (13312), PolyRefl.mkT 2 8 2 0 0 (-6656), PolyRefl.mkT 4 6 0 2 0 (-51200), PolyRefl.mkT 4 6 2 0 0 (25600), PolyRefl.mkT 6 4 0 2 0 (51200), PolyRefl.mkT 6 4 2 0 0 (-25600), PolyRefl.mkT 8 2 0 2 0 (-13312), PolyRefl.mkT 8 2 2 0 0 (6656), PolyRefl.mkT 10 0 0 2 0 (1024), PolyRefl.mkT 10 0 2 0 0 (-512)]
def cp714_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 12 4 4 0 (-8), PolyRefl.mkT 0 12 6 2 0 (6), PolyRefl.mkT 0 12 8 0 0 (-1), PolyRefl.mkT 2 10 4 4 0 (112), PolyRefl.mkT 2 10 6 2 0 (-88), PolyRefl.mkT 2 10 8 0 0 (24), PolyRefl.mkT 4 8 4 4 0 (-504), PolyRefl.mkT 4 8 6 2 0 (430), PolyRefl.mkT 4 8 8 0 0 (-121), PolyRefl.mkT 6 6 4 4 0 (800), PolyRefl.mkT 6 6 6 2 0 (-800), PolyRefl.mkT 6 6 8 0 0 (248), PolyRefl.mkT 8 4 4 4 0 (-504), PolyRefl.mkT 8 4 6 2 0 (578), PolyRefl.mkT 8 4 8 0 0 (-195), PolyRefl.mkT 10 2 4 4 0 (112), PolyRefl.mkT 10 2 6 2 0 (-136), PolyRefl.mkT 10 2 8 0 0 (48), PolyRefl.mkT 12 0 4 4 0 (-8), PolyRefl.mkT 12 0 6 2 0 (10), PolyRefl.mkT 12 0 8 0 0 (-3)]
def cp715_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 14 4 2 0 (512), PolyRefl.mkT 0 14 6 0 0 (-384), PolyRefl.mkT 2 12 4 2 0 (-7680), PolyRefl.mkT 2 12 6 0 0 (5504), PolyRefl.mkT 4 10 4 2 0 (39424), PolyRefl.mkT 4 10 6 0 0 (-25984), PolyRefl.mkT 6 8 4 2 0 (-83456), PolyRefl.mkT 6 8 6 0 0 (46464), PolyRefl.mkT 8 6 4 2 0 (83456), PolyRefl.mkT 8 6 6 0 0 (-36992), PolyRefl.mkT 10 4 4 2 0 (-39424), PolyRefl.mkT 10 4 6 0 0 (13440), PolyRefl.mkT 12 2 4 2 0 (7680), PolyRefl.mkT 12 2 6 0 0 (-2176), PolyRefl.mkT 14 0 4 2 0 (-512), PolyRefl.mkT 14 0 6 0 0 (128)]
def cp716_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 26 12 2 0 (8), PolyRefl.mkT 0 26 14 0 0 (-5), PolyRefl.mkT 2 24 12 2 0 (-312), PolyRefl.mkT 2 24 14 0 0 (199), PolyRefl.mkT 4 22 12 2 0 (4448), PolyRefl.mkT 4 22 14 0 0 (-2790), PolyRefl.mkT 6 20 12 2 0 (-32160), PolyRefl.mkT 6 20 14 0 0 (19434), PolyRefl.mkT 8 18 12 2 0 (133736), PolyRefl.mkT 8 18 14 0 0 (-76839), PolyRefl.mkT 10 16 12 2 0 (-339544), PolyRefl.mkT 10 16 14 0 0 (184597), PolyRefl.mkT 12 14 12 2 0 (538368), PolyRefl.mkT 12 14 14 0 0 (-276868), PolyRefl.mkT 14 12 12 2 0 (-538368), PolyRefl.mkT 14 12 14 0 0 (261500), PolyRefl.mkT 16 10 12 2 0 (339544), PolyRefl.mkT 16 10 14 0 0 (-154947), PolyRefl.mkT 18 8 12 2 0 (-133736), PolyRefl.mkT 18 8 14 0 0 (56897), PolyRefl.mkT 20 6 12 2 0 (32160), PolyRefl.mkT 20 6 14 0 0 (-12726), PolyRefl.mkT 22 4 12 2 0 (-4448), PolyRefl.mkT 22 4 14 0 0 (1658), PolyRefl.mkT 24 2 12 2 0 (312), PolyRefl.mkT 24 2 14 0 0 (-113), PolyRefl.mkT 26 0 12 2 0 (-8), PolyRefl.mkT 26 0 14 0 0 (3)]
def cp717_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 38 16 2 0 (-64), PolyRefl.mkT 0 38 18 0 0 (8), PolyRefl.mkT 2 36 16 2 0 (3392), PolyRefl.mkT 2 36 18 0 0 (-424), PolyRefl.mkT 4 34 16 2 0 (-74560), PolyRefl.mkT 4 34 18 0 0 (10456), PolyRefl.mkT 6 32 16 2 0 (919104), PolyRefl.mkT 6 32 18 0 0 (-152696), PolyRefl.mkT 8 30 16 2 0 (-7167232), PolyRefl.mkT 8 30 18 0 0 (1440160), PolyRefl.mkT 10 28 16 2 0 (37619968), PolyRefl.mkT 10 28 18 0 0 (-9164320), PolyRefl.mkT 12 26 16 2 0 (-137743616), PolyRefl.mkT 12 26 18 0 0 (40365664), PolyRefl.mkT 14 24 16 2 0 (359432448), PolyRefl.mkT 14 24 18 0 0 (-125077728), PolyRefl.mkT 16 22 16 2 0 (-677026688), PolyRefl.mkT 16 22 18 0 0 (275592304), PolyRefl.mkT 18 20 16 2 0 (927496576), PolyRefl.mkT 18 20 18 0 0 (-434743088), PolyRefl.mkT 20 18 16 2 0 (-927496576), PolyRefl.mkT 20 18 18 0 0 (492753488), PolyRefl.mkT 22 16 16 2 0 (677026688), PolyRefl.mkT 22 16 18 0 0 (-401434384), PolyRefl.mkT 24 14 16 2 0 (-359432448), PolyRefl.mkT 24 14 18 0 0 (234354720), PolyRefl.mkT 26 12 16 2 0 (137743616), PolyRefl.mkT 26 12 18 0 0 (-97377952), PolyRefl.mkT 28 10 16 2 0 (-37619968), PolyRefl.mkT 28 10 18 0 0 (28455648), PolyRefl.mkT 30 8 16 2 0 (7167232), PolyRefl.mkT 30 8 18 0 0 (-5727072), PolyRefl.mkT 32 6 16 2 0 (-919104), PolyRefl.mkT 32 6 18 0 0 (766408), PolyRefl.mkT 34 4 16 2 0 (74560), PolyRefl.mkT 34 4 18 0 0 (-64104), PolyRefl.mkT 36 2 16 2 0 (-3392), PolyRefl.mkT 36 2 18 0 0 (2968), PolyRefl.mkT 38 0 16 2 0 (64), PolyRefl.mkT 38 0 18 0 0 (-56)]
def cp718_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (24), PolyRefl.mkT 0 4 0 3 1 (-24), PolyRefl.mkT 1 3 0 0 4 (-24), PolyRefl.mkT 1 3 0 2 2 (80), PolyRefl.mkT 1 3 0 4 0 (-24), PolyRefl.mkT 2 2 0 1 3 (-48), PolyRefl.mkT 2 2 0 3 1 (48), PolyRefl.mkT 3 1 0 0 4 (8), PolyRefl.mkT 3 1 0 2 2 (16), PolyRefl.mkT 3 1 0 4 0 (8), PolyRefl.mkT 4 0 0 1 3 (-8), PolyRefl.mkT 4 0 0 3 1 (8)]
def cp719_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (24), PolyRefl.mkT 1 3 0 0 2 (-24), PolyRefl.mkT 1 3 0 2 0 (104), PolyRefl.mkT 1 3 2 0 0 (-24), PolyRefl.mkT 2 2 0 1 1 (-48), PolyRefl.mkT 3 1 0 0 2 (8), PolyRefl.mkT 3 1 0 2 0 (8), PolyRefl.mkT 3 1 2 0 0 (8), PolyRefl.mkT 4 0 0 1 1 (-8)]
def cp720_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-6), PolyRefl.mkT 0 4 2 1 1 (3), PolyRefl.mkT 1 3 0 4 0 (-16), PolyRefl.mkT 1 3 2 2 0 (16), PolyRefl.mkT 1 3 4 0 0 (-3), PolyRefl.mkT 2 2 0 3 1 (12), PolyRefl.mkT 2 2 2 1 1 (-6), PolyRefl.mkT 3 1 4 0 0 (1), PolyRefl.mkT 4 0 0 3 1 (2), PolyRefl.mkT 4 0 2 1 1 (-1)]
def cp721_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 3 1 (-6), PolyRefl.mkT 0 4 2 1 1 (3), PolyRefl.mkT 1 3 0 4 0 (16), PolyRefl.mkT 1 3 2 2 0 (-16), PolyRefl.mkT 1 3 4 0 0 (3), PolyRefl.mkT 2 2 0 3 1 (12), PolyRefl.mkT 2 2 2 1 1 (-6), PolyRefl.mkT 3 1 4 0 0 (-1), PolyRefl.mkT 4 0 0 3 1 (2), PolyRefl.mkT 4 0 2 1 1 (-1)]
def cp722_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 60 24 0 0 (-5), PolyRefl.mkT 2 58 24 0 0 (594), PolyRefl.mkT 4 56 24 0 0 (-29087), PolyRefl.mkT 6 54 24 0 0 (914180), PolyRefl.mkT 8 52 24 0 0 (-23188321), PolyRefl.mkT 10 50 24 0 0 (469561318), PolyRefl.mkT 12 48 24 0 0 (-6996038635), PolyRefl.mkT 14 46 24 0 0 (74100114792), PolyRefl.mkT 16 44 24 0 0 (-557801887409), PolyRefl.mkT 18 42 24 0 0 (3010736942626), PolyRefl.mkT 20 40 24 0 0 (-11747835514899), PolyRefl.mkT 22 38 24 0 0 (33338004520508), PolyRefl.mkT 24 36 24 0 0 (-69174060708397), PolyRefl.mkT 26 34 24 0 0 (105679298980134), PolyRefl.mkT 28 32 24 0 0 (-120013815351071), PolyRefl.mkT 30 30 24 0 0 (102460346145968), PolyRefl.mkT 32 28 24 0 0 (-66467220893983), PolyRefl.mkT 34 26 24 0 0 (33032259444966), PolyRefl.mkT 36 24 24 0 0 (-12636714813101), PolyRefl.mkT 38 22 24 0 0 (3727925183804), PolyRefl.mkT 40 20 24 0 0 (-848747246995), PolyRefl.mkT 42 18 24 0 0 (149909581282), PolyRefl.mkT 44 16 24 0 0 (-20971929521), PolyRefl.mkT 46 14 24 0 0 (2439125352), PolyRefl.mkT 48 12 24 0 0 (-250438379), PolyRefl.mkT 50 10 24 0 0 (22947494), PolyRefl.mkT 52 8 24 0 0 (-1793249), PolyRefl.mkT 54 6 24 0 0 (118276), PolyRefl.mkT 56 4 24 0 0 (-6687), PolyRefl.mkT 58 2 24 0 0 (274), PolyRefl.mkT 60 0 24 0 0 (-5)]
def cp723_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 0 8 0 (16777216), PolyRefl.mkT 0 24 2 6 0 (-37748736), PolyRefl.mkT 0 24 4 4 0 (27262976), PolyRefl.mkT 0 24 6 2 0 (-6553600), PolyRefl.mkT 0 24 8 0 0 (262144), PolyRefl.mkT 2 22 0 8 0 (201326592), PolyRefl.mkT 2 22 2 6 0 (-486539264), PolyRefl.mkT 2 22 4 4 0 (394264576), PolyRefl.mkT 2 22 6 2 0 (-118489088), PolyRefl.mkT 2 22 8 0 0 (9437184), PolyRefl.mkT 4 20 0 8 0 (-11240734720), PolyRefl.mkT 4 20 2 6 0 (24687673344), PolyRefl.mkT 4 20 4 4 0 (-16991125504), PolyRefl.mkT 4 20 6 2 0 (3556245504), PolyRefl.mkT 4 20 8 0 0 (-7864320), PolyRefl.mkT 6 18 0 8 0 (127708168192), PolyRefl.mkT 6 18 2 6 0 (-268452233216), PolyRefl.mkT 6 18 4 4 0 (171354095616), PolyRefl.mkT 6 18 6 2 0 (-30405558272), PolyRefl.mkT 6 18 8 0 0 (-36700160), PolyRefl.mkT 8 16 0 8 0 (-633792888832), PolyRefl.mkT 8 16 2 6 0 (1284568514560), PolyRefl.mkT 8 16 4 4 0 (-775168196608), PolyRefl.mkT 8 16 6 2 0 (124883566592), PolyRefl.mkT 8 16 8 0 0 (29097984), PolyRefl.mkT 10 14 0 8 0 (1454249082880), PolyRefl.mkT 10 14 2 6 0 (-2872158715904), PolyRefl.mkT 10 14 4 4 0 (1675557339136), PolyRefl.mkT 10 14 6 2 0 (-257196818432), PolyRefl.mkT 10 14 8 0 0 (52428800), PolyRefl.mkT 12 12 0 8 0 (-1377140998144), PolyRefl.mkT 12 12 2 6 0 (2730944888832), PolyRefl.mkT 12 12 4 4 0 (-1600991002624), PolyRefl.mkT 12 12 6 2 0 (247255269376), PolyRefl.mkT 12 12 8 0 0 (-42991616), PolyRefl.mkT 14 10 0 8 0 (641426522112), PolyRefl.mkT 14 10 2 6 0 (-1294563540992), PolyRefl.mkT 14 10 4 4 0 (777774956544), PolyRefl.mkT 14 10 6 2 0 (-124774252544), PolyRefl.mkT 14 10 8 0 0 (-31457280), PolyRefl.mkT 16 8 0 8 0 (-144166617088), PolyRefl.mkT 16 8 2 6 0 (301021003776), PolyRefl.mkT 16 8 4 4 0 (-189978902528), PolyRefl.mkT 16 8 6 2 0 (33078640640), PolyRefl.mkT 16 8 8 0 0 (29097984), PolyRefl.mkT 18 6 0 8 0 (10133438464), PolyRefl.mkT 18 6 2 6 0 (-23236444160), PolyRefl.mkT 18 6 4 4 0 (16802381824), PolyRefl.mkT 18 6 6 2 0 (-3671064576), PolyRefl.mkT 18 6 8 0 0 (5242880), PolyRefl.mkT 20 4 0 8 0 (1644167168), PolyRefl.mkT 20 4 2 6 0 (-3229614080), PolyRefl.mkT 20 4 4 4 0 (1799356416), PolyRefl.mkT 20 4 6 2 0 (-201850880), PolyRefl.mkT 20 4 8 0 0 (-7864320), PolyRefl.mkT 22 2 0 8 0 (-335544320), PolyRefl.mkT 22 2 2 6 0 (721420288), PolyRefl.mkT 22 2 4 4 0 (-478150656), PolyRefl.mkT 22 2 6 2 0 (91226112), PolyRefl.mkT 22 2 8 0 0 (1048576), PolyRefl.mkT 24 0 0 8 0 (16777216), PolyRefl.mkT 24 0 2 6 0 (-37748736), PolyRefl.mkT 24 0 4 4 0 (27262976), PolyRefl.mkT 24 0 6 2 0 (-6553600), PolyRefl.mkT 24 0 8 0 0 (262144)]
def cp724_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 28 10 2 0 (-1), PolyRefl.mkT 0 28 12 0 0 (1), PolyRefl.mkT 2 26 10 2 0 (-14), PolyRefl.mkT 2 26 12 0 0 (-22), PolyRefl.mkT 4 24 10 2 0 (901), PolyRefl.mkT 4 24 12 0 0 (283), PolyRefl.mkT 6 22 10 2 0 (2420), PolyRefl.mkT 6 22 12 0 0 (-13308), PolyRefl.mkT 8 20 10 2 0 (-2121), PolyRefl.mkT 8 20 12 0 0 (94121), PolyRefl.mkT 10 18 10 2 0 (-12594), PolyRefl.mkT 10 18 12 0 0 (-331082), PolyRefl.mkT 12 16 10 2 0 (-12027), PolyRefl.mkT 12 16 12 0 0 (628283), PolyRefl.mkT 14 14 10 2 0 (1368), PolyRefl.mkT 14 14 12 0 0 (-593736), PolyRefl.mkT 16 12 10 2 0 (6533), PolyRefl.mkT 16 12 12 0 0 (315451), PolyRefl.mkT 18 10 10 2 0 (878), PolyRefl.mkT 18 10 12 0 0 (-100682), PolyRefl.mkT 20 8 10 2 0 (-1673), PolyRefl.mkT 20 8 12 0 0 (18601), PolyRefl.mkT 22 6 10 2 0 (-268), PolyRefl.mkT 22 6 12 0 0 (-1532), PolyRefl.mkT 24 4 10 2 0 (197), PolyRefl.mkT 24 4 12 0 0 (27), PolyRefl.mkT 26 2 10 2 0 (18), PolyRefl.mkT 26 2 12 0 0 (-22), PolyRefl.mkT 28 0 10 2 0 (-1), PolyRefl.mkT 28 0 12 0 0 (1)]
def cp725_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 32 10 2 0 (16), PolyRefl.mkT 0 32 12 0 0 (4), PolyRefl.mkT 2 30 10 2 0 (128), PolyRefl.mkT 2 30 12 0 0 (-512), PolyRefl.mkT 4 28 10 2 0 (-15744), PolyRefl.mkT 4 28 12 0 0 (18912), PolyRefl.mkT 6 26 10 2 0 (48000), PolyRefl.mkT 6 26 12 0 0 (-305280), PolyRefl.mkT 8 24 10 2 0 (251840), PolyRefl.mkT 8 24 12 0 0 (2521712), PolyRefl.mkT 10 22 10 2 0 (-40832), PolyRefl.mkT 10 22 12 0 0 (-14447360), PolyRefl.mkT 12 20 10 2 0 (-982656), PolyRefl.mkT 12 20 12 0 0 (44482336), PolyRefl.mkT 14 18 10 2 0 (-974976), PolyRefl.mkT 14 18 12 0 0 (-73996160), PolyRefl.mkT 16 16 10 2 0 (219232), PolyRefl.mkT 16 16 12 0 0 (71890200), PolyRefl.mkT 18 14 10 2 0 (591232), PolyRefl.mkT 18 14 12 0 0 (-42046464), PolyRefl.mkT 20 12 10 2 0 (6528), PolyRefl.mkT 20 12 12 0 0 (14977312), PolyRefl.mkT 22 10 10 2 0 (-170368), PolyRefl.mkT 22 10 12 0 0 (-3239808), PolyRefl.mkT 24 8 10 2 0 (-2112), PolyRefl.mkT 24 8 12 0 0 (455280), PolyRefl.mkT 26 6 10 2 0 (22912), PolyRefl.mkT 26 6 12 0 0 (-50944), PolyRefl.mkT 28 4 10 2 0 (-1408), PolyRefl.mkT 28 4 12 0 0 (3040), PolyRefl.mkT 30 2 10 2 0 (-384), PolyRefl.mkT 30 2 12 0 0 (-128), PolyRefl.mkT 32 0 10 2 0 (16), PolyRefl.mkT 32 0 12 0 0 (4)]
def cp726_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 2 0 (-512), PolyRefl.mkT 0 6 2 0 0 (256), PolyRefl.mkT 2 4 0 2 0 (3584), PolyRefl.mkT 2 4 2 0 0 (-1792), PolyRefl.mkT 4 2 0 2 0 (-3584), PolyRefl.mkT 4 2 2 0 0 (1792), PolyRefl.mkT 6 0 0 2 0 (512), PolyRefl.mkT 6 0 2 0 0 (-256)]
def cp727_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 4 2 0 (4), PolyRefl.mkT 0 10 6 0 0 (-3), PolyRefl.mkT 2 8 4 2 0 (-84), PolyRefl.mkT 2 8 6 0 0 (53), PolyRefl.mkT 4 6 4 2 0 (424), PolyRefl.mkT 4 6 6 0 0 (-238), PolyRefl.mkT 6 4 4 2 0 (-424), PolyRefl.mkT 6 4 6 0 0 (186), PolyRefl.mkT 8 2 4 2 0 (84), PolyRefl.mkT 8 2 6 0 0 (-31), PolyRefl.mkT 10 0 4 2 0 (-4), PolyRefl.mkT 10 0 6 0 0 (1)]
def cp728_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 14 4 2 0 (32), PolyRefl.mkT 0 14 6 0 0 (-8), PolyRefl.mkT 2 12 4 2 0 (-864), PolyRefl.mkT 2 12 6 0 0 (296), PolyRefl.mkT 4 10 4 2 0 (7456), PolyRefl.mkT 4 10 6 0 0 (-2984), PolyRefl.mkT 6 8 4 2 0 (-24416), PolyRefl.mkT 6 8 6 0 0 (11080), PolyRefl.mkT 8 6 4 2 0 (24416), PolyRefl.mkT 8 6 6 0 0 (-13336), PolyRefl.mkT 10 4 4 2 0 (-7456), PolyRefl.mkT 10 4 6 0 0 (4472), PolyRefl.mkT 12 2 4 2 0 (864), PolyRefl.mkT 12 2 6 0 0 (-568), PolyRefl.mkT 14 0 4 2 0 (-32), PolyRefl.mkT 14 0 6 0 0 (24)]
def cp729_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 5 (12), PolyRefl.mkT 0 4 0 3 3 (-40), PolyRefl.mkT 0 4 0 5 1 (12), PolyRefl.mkT 1 3 0 0 6 (8), PolyRefl.mkT 1 3 0 2 4 (-264), PolyRefl.mkT 1 3 0 4 2 (216), PolyRefl.mkT 1 3 0 6 0 (-24), PolyRefl.mkT 2 2 0 1 5 (72), PolyRefl.mkT 2 2 0 3 3 (-240), PolyRefl.mkT 2 2 0 5 1 (72), PolyRefl.mkT 3 1 0 0 6 (8), PolyRefl.mkT 3 1 0 2 4 (24), PolyRefl.mkT 3 1 0 4 2 (24), PolyRefl.mkT 3 1 0 6 0 (8), PolyRefl.mkT 4 0 0 1 5 (-36), PolyRefl.mkT 4 0 0 3 3 (120), PolyRefl.mkT 4 0 0 5 1 (-36)]
def cp730_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (12), PolyRefl.mkT 0 4 0 3 1 (-52), PolyRefl.mkT 0 4 2 1 1 (12), PolyRefl.mkT 1 3 0 0 4 (8), PolyRefl.mkT 1 3 0 2 2 (-272), PolyRefl.mkT 1 3 0 4 0 (488), PolyRefl.mkT 1 3 2 0 2 (8), PolyRefl.mkT 1 3 2 2 0 (-280), PolyRefl.mkT 1 3 4 0 0 (8), PolyRefl.mkT 2 2 0 1 3 (72), PolyRefl.mkT 2 2 0 3 1 (-312), PolyRefl.mkT 2 2 2 1 1 (72), PolyRefl.mkT 3 1 0 0 4 (8), PolyRefl.mkT 3 1 0 2 2 (16), PolyRefl.mkT 3 1 0 4 0 (8), PolyRefl.mkT 3 1 2 0 2 (8), PolyRefl.mkT 3 1 2 2 0 (8), PolyRefl.mkT 3 1 4 0 0 (8), PolyRefl.mkT 4 0 0 1 3 (-36), PolyRefl.mkT 4 0 0 3 1 (156), PolyRefl.mkT 4 0 2 1 1 (-36)]
def cp731_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (16), PolyRefl.mkT 0 4 2 3 1 (-16), PolyRefl.mkT 0 4 4 1 1 (3), PolyRefl.mkT 1 3 0 6 0 (-128), PolyRefl.mkT 1 3 2 4 0 (192), PolyRefl.mkT 1 3 4 2 0 (-72), PolyRefl.mkT 1 3 6 0 0 (2), PolyRefl.mkT 2 2 0 5 1 (96), PolyRefl.mkT 2 2 2 3 1 (-96), PolyRefl.mkT 2 2 4 1 1 (18), PolyRefl.mkT 3 1 6 0 0 (2), PolyRefl.mkT 4 0 0 5 1 (-48), PolyRefl.mkT 4 0 2 3 1 (48), PolyRefl.mkT 4 0 4 1 1 (-9)]
def cp732_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (16), PolyRefl.mkT 0 4 2 3 1 (-16), PolyRefl.mkT 0 4 4 1 1 (3), PolyRefl.mkT 1 3 0 6 0 (128), PolyRefl.mkT 1 3 2 4 0 (-192), PolyRefl.mkT 1 3 4 2 0 (72), PolyRefl.mkT 1 3 6 0 0 (-2), PolyRefl.mkT 2 2 0 5 1 (96), PolyRefl.mkT 2 2 2 3 1 (-96), PolyRefl.mkT 2 2 4 1 1 (18), PolyRefl.mkT 3 1 6 0 0 (-2), PolyRefl.mkT 4 0 0 5 1 (-48), PolyRefl.mkT 4 0 2 3 1 (48), PolyRefl.mkT 4 0 4 1 1 (-9)]
def cp733_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (4), PolyRefl.mkT 1 3 0 0 2 (8), PolyRefl.mkT 1 3 0 2 0 (-24), PolyRefl.mkT 2 2 0 1 1 (24), PolyRefl.mkT 3 1 0 0 2 (8), PolyRefl.mkT 3 1 0 2 0 (8), PolyRefl.mkT 4 0 0 1 1 (-12)]
def cp734_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (1), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 1 3 2 0 0 (2), PolyRefl.mkT 2 2 0 1 1 (6), PolyRefl.mkT 3 1 2 0 0 (2), PolyRefl.mkT 4 0 0 1 1 (-3)]
def cp735_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (1), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 1 3 2 0 0 (-2), PolyRefl.mkT 2 2 0 1 1 (6), PolyRefl.mkT 3 1 2 0 0 (-2), PolyRefl.mkT 4 0 0 1 1 (-3)]
def cp736_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (12), PolyRefl.mkT 1 3 0 0 2 (-8), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 2 2 0 1 1 (-24), PolyRefl.mkT 3 1 0 0 2 (24), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 4 0 0 1 1 (-4)]
def cp737_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (3), PolyRefl.mkT 1 3 2 0 0 (-2), PolyRefl.mkT 2 2 0 1 1 (-6), PolyRefl.mkT 3 1 0 2 0 (-8), PolyRefl.mkT 3 1 2 0 0 (6), PolyRefl.mkT 4 0 0 1 1 (-1)]
def cp738_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (3), PolyRefl.mkT 1 3 2 0 0 (2), PolyRefl.mkT 2 2 0 1 1 (-6), PolyRefl.mkT 3 1 0 2 0 (8), PolyRefl.mkT 3 1 2 0 0 (-6), PolyRefl.mkT 4 0 0 1 1 (-1)]
def cp739_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 5 (36), PolyRefl.mkT 0 4 0 3 3 (-120), PolyRefl.mkT 0 4 0 5 1 (36), PolyRefl.mkT 1 3 0 0 6 (8), PolyRefl.mkT 1 3 0 2 4 (-264), PolyRefl.mkT 1 3 0 4 2 (216), PolyRefl.mkT 1 3 0 6 0 (-24), PolyRefl.mkT 2 2 0 1 5 (-72), PolyRefl.mkT 2 2 0 3 3 (240), PolyRefl.mkT 2 2 0 5 1 (-72), PolyRefl.mkT 3 1 0 0 6 (8), PolyRefl.mkT 3 1 0 2 4 (24), PolyRefl.mkT 3 1 0 4 2 (24), PolyRefl.mkT 3 1 0 6 0 (8), PolyRefl.mkT 4 0 0 1 5 (-12), PolyRefl.mkT 4 0 0 3 3 (40), PolyRefl.mkT 4 0 0 5 1 (-12)]
def cp740_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (36), PolyRefl.mkT 0 4 0 3 1 (-156), PolyRefl.mkT 0 4 2 1 1 (36), PolyRefl.mkT 1 3 0 0 4 (8), PolyRefl.mkT 1 3 0 2 2 (-272), PolyRefl.mkT 1 3 0 4 0 (488), PolyRefl.mkT 1 3 2 0 2 (8), PolyRefl.mkT 1 3 2 2 0 (-280), PolyRefl.mkT 1 3 4 0 0 (8), PolyRefl.mkT 2 2 0 1 3 (-72), PolyRefl.mkT 2 2 0 3 1 (312), PolyRefl.mkT 2 2 2 1 1 (-72), PolyRefl.mkT 3 1 0 0 4 (8), PolyRefl.mkT 3 1 0 2 2 (16), PolyRefl.mkT 3 1 0 4 0 (8), PolyRefl.mkT 3 1 2 0 2 (8), PolyRefl.mkT 3 1 2 2 0 (8), PolyRefl.mkT 3 1 4 0 0 (8), PolyRefl.mkT 4 0 0 1 3 (-12), PolyRefl.mkT 4 0 0 3 1 (52), PolyRefl.mkT 4 0 2 1 1 (-12)]
def cp741_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (48), PolyRefl.mkT 0 4 2 3 1 (-48), PolyRefl.mkT 0 4 4 1 1 (9), PolyRefl.mkT 1 3 0 6 0 (-128), PolyRefl.mkT 1 3 2 4 0 (192), PolyRefl.mkT 1 3 4 2 0 (-72), PolyRefl.mkT 1 3 6 0 0 (2), PolyRefl.mkT 2 2 0 5 1 (-96), PolyRefl.mkT 2 2 2 3 1 (96), PolyRefl.mkT 2 2 4 1 1 (-18), PolyRefl.mkT 3 1 6 0 0 (2), PolyRefl.mkT 4 0 0 5 1 (-16), PolyRefl.mkT 4 0 2 3 1 (16), PolyRefl.mkT 4 0 4 1 1 (-3)]
def cp742_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (48), PolyRefl.mkT 0 4 2 3 1 (-48), PolyRefl.mkT 0 4 4 1 1 (9), PolyRefl.mkT 1 3 0 6 0 (128), PolyRefl.mkT 1 3 2 4 0 (-192), PolyRefl.mkT 1 3 4 2 0 (72), PolyRefl.mkT 1 3 6 0 0 (-2), PolyRefl.mkT 2 2 0 5 1 (-96), PolyRefl.mkT 2 2 2 3 1 (96), PolyRefl.mkT 2 2 4 1 1 (-18), PolyRefl.mkT 3 1 6 0 0 (-2), PolyRefl.mkT 4 0 0 5 1 (-16), PolyRefl.mkT 4 0 2 3 1 (16), PolyRefl.mkT 4 0 4 1 1 (-3)]
def cp743_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 5 (12), PolyRefl.mkT 0 4 0 3 3 (-40), PolyRefl.mkT 0 4 0 5 1 (12), PolyRefl.mkT 1 3 0 0 6 (8), PolyRefl.mkT 1 3 0 2 4 (24), PolyRefl.mkT 1 3 0 4 2 (24), PolyRefl.mkT 1 3 0 6 0 (8), PolyRefl.mkT 2 2 0 1 5 (72), PolyRefl.mkT 2 2 0 3 3 (-240), PolyRefl.mkT 2 2 0 5 1 (72), PolyRefl.mkT 3 1 0 0 6 (8), PolyRefl.mkT 3 1 0 2 4 (-264), PolyRefl.mkT 3 1 0 4 2 (216), PolyRefl.mkT 3 1 0 6 0 (-24), PolyRefl.mkT 4 0 0 1 5 (-36), PolyRefl.mkT 4 0 0 3 3 (120), PolyRefl.mkT 4 0 0 5 1 (-36)]
def cp744_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (12), PolyRefl.mkT 0 4 0 3 1 (-52), PolyRefl.mkT 0 4 2 1 1 (12), PolyRefl.mkT 1 3 0 0 4 (8), PolyRefl.mkT 1 3 0 2 2 (16), PolyRefl.mkT 1 3 0 4 0 (8), PolyRefl.mkT 1 3 2 0 2 (8), PolyRefl.mkT 1 3 2 2 0 (8), PolyRefl.mkT 1 3 4 0 0 (8), PolyRefl.mkT 2 2 0 1 3 (72), PolyRefl.mkT 2 2 0 3 1 (-312), PolyRefl.mkT 2 2 2 1 1 (72), PolyRefl.mkT 3 1 0 0 4 (8), PolyRefl.mkT 3 1 0 2 2 (-272), PolyRefl.mkT 3 1 0 4 0 (488), PolyRefl.mkT 3 1 2 0 2 (8), PolyRefl.mkT 3 1 2 2 0 (-280), PolyRefl.mkT 3 1 4 0 0 (8), PolyRefl.mkT 4 0 0 1 3 (-36), PolyRefl.mkT 4 0 0 3 1 (156), PolyRefl.mkT 4 0 2 1 1 (-36)]
def cp745_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (16), PolyRefl.mkT 0 4 2 3 1 (-16), PolyRefl.mkT 0 4 4 1 1 (3), PolyRefl.mkT 1 3 6 0 0 (2), PolyRefl.mkT 2 2 0 5 1 (96), PolyRefl.mkT 2 2 2 3 1 (-96), PolyRefl.mkT 2 2 4 1 1 (18), PolyRefl.mkT 3 1 0 6 0 (-128), PolyRefl.mkT 3 1 2 4 0 (192), PolyRefl.mkT 3 1 4 2 0 (-72), PolyRefl.mkT 3 1 6 0 0 (2), PolyRefl.mkT 4 0 0 5 1 (-48), PolyRefl.mkT 4 0 2 3 1 (48), PolyRefl.mkT 4 0 4 1 1 (-9)]
def cp746_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (16), PolyRefl.mkT 0 4 2 3 1 (-16), PolyRefl.mkT 0 4 4 1 1 (3), PolyRefl.mkT 1 3 6 0 0 (-2), PolyRefl.mkT 2 2 0 5 1 (96), PolyRefl.mkT 2 2 2 3 1 (-96), PolyRefl.mkT 2 2 4 1 1 (18), PolyRefl.mkT 3 1 0 6 0 (128), PolyRefl.mkT 3 1 2 4 0 (-192), PolyRefl.mkT 3 1 4 2 0 (72), PolyRefl.mkT 3 1 6 0 0 (-2), PolyRefl.mkT 4 0 0 5 1 (-48), PolyRefl.mkT 4 0 2 3 1 (48), PolyRefl.mkT 4 0 4 1 1 (-9)]
def cp747_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 2 0 (64), PolyRefl.mkT 0 6 2 0 0 (-48), PolyRefl.mkT 2 4 0 2 0 (-448), PolyRefl.mkT 2 4 2 0 0 (208), PolyRefl.mkT 4 2 0 2 0 (448), PolyRefl.mkT 4 2 2 0 0 (-208), PolyRefl.mkT 6 0 0 2 0 (-64), PolyRefl.mkT 6 0 2 0 0 (48)]
def cp748_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 5 (36), PolyRefl.mkT 0 4 0 3 3 (-120), PolyRefl.mkT 0 4 0 5 1 (36), PolyRefl.mkT 1 3 0 0 6 (8), PolyRefl.mkT 1 3 0 2 4 (24), PolyRefl.mkT 1 3 0 4 2 (24), PolyRefl.mkT 1 3 0 6 0 (8), PolyRefl.mkT 2 2 0 1 5 (-72), PolyRefl.mkT 2 2 0 3 3 (240), PolyRefl.mkT 2 2 0 5 1 (-72), PolyRefl.mkT 3 1 0 0 6 (8), PolyRefl.mkT 3 1 0 2 4 (-264), PolyRefl.mkT 3 1 0 4 2 (216), PolyRefl.mkT 3 1 0 6 0 (-24), PolyRefl.mkT 4 0 0 1 5 (-12), PolyRefl.mkT 4 0 0 3 3 (40), PolyRefl.mkT 4 0 0 5 1 (-12)]
def cp749_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (36), PolyRefl.mkT 0 4 0 3 1 (-156), PolyRefl.mkT 0 4 2 1 1 (36), PolyRefl.mkT 1 3 0 0 4 (8), PolyRefl.mkT 1 3 0 2 2 (16), PolyRefl.mkT 1 3 0 4 0 (8), PolyRefl.mkT 1 3 2 0 2 (8), PolyRefl.mkT 1 3 2 2 0 (8), PolyRefl.mkT 1 3 4 0 0 (8), PolyRefl.mkT 2 2 0 1 3 (-72), PolyRefl.mkT 2 2 0 3 1 (312), PolyRefl.mkT 2 2 2 1 1 (-72), PolyRefl.mkT 3 1 0 0 4 (8), PolyRefl.mkT 3 1 0 2 2 (-272), PolyRefl.mkT 3 1 0 4 0 (488), PolyRefl.mkT 3 1 2 0 2 (8), PolyRefl.mkT 3 1 2 2 0 (-280), PolyRefl.mkT 3 1 4 0 0 (8), PolyRefl.mkT 4 0 0 1 3 (-12), PolyRefl.mkT 4 0 0 3 1 (52), PolyRefl.mkT 4 0 2 1 1 (-12)]
def cp750_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (48), PolyRefl.mkT 0 4 2 3 1 (-48), PolyRefl.mkT 0 4 4 1 1 (9), PolyRefl.mkT 1 3 6 0 0 (2), PolyRefl.mkT 2 2 0 5 1 (-96), PolyRefl.mkT 2 2 2 3 1 (96), PolyRefl.mkT 2 2 4 1 1 (-18), PolyRefl.mkT 3 1 0 6 0 (-128), PolyRefl.mkT 3 1 2 4 0 (192), PolyRefl.mkT 3 1 4 2 0 (-72), PolyRefl.mkT 3 1 6 0 0 (2), PolyRefl.mkT 4 0 0 5 1 (-16), PolyRefl.mkT 4 0 2 3 1 (16), PolyRefl.mkT 4 0 4 1 1 (-3)]
def cp751_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (48), PolyRefl.mkT 0 4 2 3 1 (-48), PolyRefl.mkT 0 4 4 1 1 (9), PolyRefl.mkT 1 3 6 0 0 (-2), PolyRefl.mkT 2 2 0 5 1 (-96), PolyRefl.mkT 2 2 2 3 1 (96), PolyRefl.mkT 2 2 4 1 1 (-18), PolyRefl.mkT 3 1 0 6 0 (128), PolyRefl.mkT 3 1 2 4 0 (-192), PolyRefl.mkT 3 1 4 2 0 (72), PolyRefl.mkT 3 1 6 0 0 (-2), PolyRefl.mkT 4 0 0 5 1 (-16), PolyRefl.mkT 4 0 2 3 1 (16), PolyRefl.mkT 4 0 4 1 1 (-3)]
def cp752_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-12), PolyRefl.mkT 1 3 0 0 2 (8), PolyRefl.mkT 1 3 0 2 0 (-24), PolyRefl.mkT 2 2 0 1 1 (24), PolyRefl.mkT 3 1 0 0 2 (8), PolyRefl.mkT 3 1 0 2 0 (8), PolyRefl.mkT 4 0 0 1 1 (4)]
def cp753_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-3), PolyRefl.mkT 1 3 0 2 0 (-8), PolyRefl.mkT 1 3 2 0 0 (2), PolyRefl.mkT 2 2 0 1 1 (6), PolyRefl.mkT 3 1 2 0 0 (2), PolyRefl.mkT 4 0 0 1 1 (1)]
def cp754_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 1 (-3), PolyRefl.mkT 1 3 0 2 0 (8), PolyRefl.mkT 1 3 2 0 0 (-2), PolyRefl.mkT 2 2 0 1 1 (6), PolyRefl.mkT 3 1 2 0 0 (-2), PolyRefl.mkT 4 0 0 1 1 (1)]
def cp755_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 12 0 0 (-1), PolyRefl.mkT 2 22 12 0 0 (-46), PolyRefl.mkT 4 20 12 0 0 (1196), PolyRefl.mkT 6 18 12 0 0 (-10594), PolyRefl.mkT 8 16 12 0 0 (47611), PolyRefl.mkT 10 14 12 0 0 (-119820), PolyRefl.mkT 12 12 12 0 0 (166032), PolyRefl.mkT 14 10 12 0 0 (-119108), PolyRefl.mkT 16 8 12 0 0 (48197), PolyRefl.mkT 18 6 12 0 0 (-10470), PolyRefl.mkT 20 4 12 0 0 (1156), PolyRefl.mkT 22 2 12 0 0 (-58), PolyRefl.mkT 24 0 12 0 0 (1)]
def cp756_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 2 0 (-1024), PolyRefl.mkT 0 6 2 0 0 (768), PolyRefl.mkT 2 4 0 2 0 (7168), PolyRefl.mkT 2 4 2 0 0 (-3328), PolyRefl.mkT 4 2 0 2 0 (-7168), PolyRefl.mkT 4 2 2 0 0 (3328), PolyRefl.mkT 6 0 0 2 0 (1024), PolyRefl.mkT 6 0 2 0 0 (-768)]
def cp757_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 4 2 0 (-2), PolyRefl.mkT 2 8 4 2 0 (58), PolyRefl.mkT 2 8 6 0 0 (-21), PolyRefl.mkT 4 6 4 2 0 (-196), PolyRefl.mkT 4 6 6 0 0 (88), PolyRefl.mkT 6 4 4 2 0 (196), PolyRefl.mkT 6 4 6 0 0 (-114), PolyRefl.mkT 8 2 4 2 0 (-58), PolyRefl.mkT 8 2 6 0 0 (32), PolyRefl.mkT 10 0 4 2 0 (2), PolyRefl.mkT 10 0 6 0 0 (-1)]
def cp758_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 14 4 2 0 (32), PolyRefl.mkT 0 14 6 0 0 (-24), PolyRefl.mkT 2 12 4 2 0 (-1120), PolyRefl.mkT 2 12 6 0 0 (568), PolyRefl.mkT 4 10 4 2 0 (8736), PolyRefl.mkT 4 10 6 0 0 (-4984), PolyRefl.mkT 6 8 4 2 0 (-22880), PolyRefl.mkT 6 8 6 0 0 (12824), PolyRefl.mkT 8 6 4 2 0 (22880), PolyRefl.mkT 8 6 6 0 0 (-10568), PolyRefl.mkT 10 4 4 2 0 (-8736), PolyRefl.mkT 10 4 6 0 0 (3496), PolyRefl.mkT 12 2 4 2 0 (1120), PolyRefl.mkT 12 2 6 0 0 (-296), PolyRefl.mkT 14 0 4 2 0 (-32), PolyRefl.mkT 14 0 6 0 0 (8)]
def cp759_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 5 (12), PolyRefl.mkT 0 4 0 3 3 (-40), PolyRefl.mkT 0 4 0 5 1 (12), PolyRefl.mkT 1 3 0 0 6 (-8), PolyRefl.mkT 1 3 0 2 4 (-24), PolyRefl.mkT 1 3 0 4 2 (-24), PolyRefl.mkT 1 3 0 6 0 (-8), PolyRefl.mkT 2 2 0 1 5 (72), PolyRefl.mkT 2 2 0 3 3 (-240), PolyRefl.mkT 2 2 0 5 1 (72), PolyRefl.mkT 3 1 0 0 6 (24), PolyRefl.mkT 3 1 0 2 4 (-216), PolyRefl.mkT 3 1 0 4 2 (264), PolyRefl.mkT 3 1 0 6 0 (-8), PolyRefl.mkT 4 0 0 1 5 (-36), PolyRefl.mkT 4 0 0 3 3 (120), PolyRefl.mkT 4 0 0 5 1 (-36)]
def cp760_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (12), PolyRefl.mkT 0 4 0 3 1 (-52), PolyRefl.mkT 0 4 2 1 1 (12), PolyRefl.mkT 1 3 0 0 4 (-8), PolyRefl.mkT 1 3 0 2 2 (-16), PolyRefl.mkT 1 3 0 4 0 (-8), PolyRefl.mkT 1 3 2 0 2 (-8), PolyRefl.mkT 1 3 2 2 0 (-8), PolyRefl.mkT 1 3 4 0 0 (-8), PolyRefl.mkT 2 2 0 1 3 (72), PolyRefl.mkT 2 2 0 3 1 (-312), PolyRefl.mkT 2 2 2 1 1 (72), PolyRefl.mkT 3 1 0 0 4 (24), PolyRefl.mkT 3 1 0 2 2 (-240), PolyRefl.mkT 3 1 0 4 0 (504), PolyRefl.mkT 3 1 2 0 2 (24), PolyRefl.mkT 3 1 2 2 0 (-264), PolyRefl.mkT 3 1 4 0 0 (24), PolyRefl.mkT 4 0 0 1 3 (-36), PolyRefl.mkT 4 0 0 3 1 (156), PolyRefl.mkT 4 0 2 1 1 (-36)]
def cp761_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (16), PolyRefl.mkT 0 4 2 3 1 (-16), PolyRefl.mkT 0 4 4 1 1 (3), PolyRefl.mkT 1 3 6 0 0 (-2), PolyRefl.mkT 2 2 0 5 1 (96), PolyRefl.mkT 2 2 2 3 1 (-96), PolyRefl.mkT 2 2 4 1 1 (18), PolyRefl.mkT 3 1 0 6 0 (-128), PolyRefl.mkT 3 1 2 4 0 (192), PolyRefl.mkT 3 1 4 2 0 (-72), PolyRefl.mkT 3 1 6 0 0 (6), PolyRefl.mkT 4 0 0 5 1 (-48), PolyRefl.mkT 4 0 2 3 1 (48), PolyRefl.mkT 4 0 4 1 1 (-9)]
def cp762_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (16), PolyRefl.mkT 0 4 2 3 1 (-16), PolyRefl.mkT 0 4 4 1 1 (3), PolyRefl.mkT 1 3 6 0 0 (2), PolyRefl.mkT 2 2 0 5 1 (96), PolyRefl.mkT 2 2 2 3 1 (-96), PolyRefl.mkT 2 2 4 1 1 (18), PolyRefl.mkT 3 1 0 6 0 (128), PolyRefl.mkT 3 1 2 4 0 (-192), PolyRefl.mkT 3 1 4 2 0 (72), PolyRefl.mkT 3 1 6 0 0 (-6), PolyRefl.mkT 4 0 0 5 1 (-48), PolyRefl.mkT 4 0 2 3 1 (48), PolyRefl.mkT 4 0 4 1 1 (-9)]
def cp763_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 8 0 12 0 (256), PolyRefl.mkT 0 8 2 10 0 (-768), PolyRefl.mkT 0 8 4 8 0 (864), PolyRefl.mkT 0 8 6 6 0 (-448), PolyRefl.mkT 0 8 8 4 0 (105), PolyRefl.mkT 0 8 10 2 0 (-9), PolyRefl.mkT 2 6 0 12 0 (3072), PolyRefl.mkT 2 6 2 10 0 (-9216), PolyRefl.mkT 2 6 4 8 0 (10368), PolyRefl.mkT 2 6 6 6 0 (-5376), PolyRefl.mkT 2 6 8 4 0 (1260), PolyRefl.mkT 2 6 10 2 0 (-108), PolyRefl.mkT 2 6 12 0 0 (4), PolyRefl.mkT 4 4 0 12 0 (7680), PolyRefl.mkT 4 4 2 10 0 (-23040), PolyRefl.mkT 4 4 4 8 0 (25920), PolyRefl.mkT 4 4 6 6 0 (-12928), PolyRefl.mkT 4 4 8 4 0 (2382), PolyRefl.mkT 4 4 10 2 0 (18), PolyRefl.mkT 4 4 12 0 0 (-24), PolyRefl.mkT 6 2 0 12 0 (7168), PolyRefl.mkT 6 2 2 10 0 (-21504), PolyRefl.mkT 6 2 4 8 0 (24192), PolyRefl.mkT 6 2 6 6 0 (-13056), PolyRefl.mkT 6 2 8 4 0 (3708), PolyRefl.mkT 6 2 10 2 0 (-540), PolyRefl.mkT 6 2 12 0 0 (36), PolyRefl.mkT 8 0 0 12 0 (2304), PolyRefl.mkT 8 0 2 10 0 (-6912), PolyRefl.mkT 8 0 4 8 0 (7776), PolyRefl.mkT 8 0 6 6 0 (-4032), PolyRefl.mkT 8 0 8 4 0 (945), PolyRefl.mkT 8 0 10 2 0 (-81)]
def cp764_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 32 0 6 0 (764411904), PolyRefl.mkT 0 32 2 4 0 (-1146617856), PolyRefl.mkT 0 32 4 2 0 (429981696), PolyRefl.mkT 0 32 6 0 0 (-47775744), PolyRefl.mkT 2 30 0 6 0 (-14269022208), PolyRefl.mkT 2 30 2 4 0 (21403533312), PolyRefl.mkT 2 30 4 2 0 (-8026324992), PolyRefl.mkT 2 30 6 0 0 (976748544), PolyRefl.mkT 4 28 0 6 0 (60246982656), PolyRefl.mkT 4 28 2 4 0 (-90370473984), PolyRefl.mkT 4 28 4 2 0 (33888927744), PolyRefl.mkT 4 28 6 0 0 (-3123707904), PolyRefl.mkT 6 26 0 6 0 (686716616704), PolyRefl.mkT 6 26 2 4 0 (-1030074925056), PolyRefl.mkT 6 26 4 2 0 (386278096896), PolyRefl.mkT 6 26 6 0 0 (-93376217088), PolyRefl.mkT 8 24 0 6 0 (-9092928110592), PolyRefl.mkT 8 24 2 4 0 (13639392165888), PolyRefl.mkT 8 24 4 2 0 (-5114772062208), PolyRefl.mkT 8 24 6 0 0 (1324289359872), PolyRefl.mkT 10 22 0 6 0 (40615752499200), PolyRefl.mkT 10 22 2 4 0 (-60923628748800), PolyRefl.mkT 10 22 4 2 0 (22846360780800), PolyRefl.mkT 10 22 6 0 0 (-8445829316608), PolyRefl.mkT 12 20 0 6 0 (-56879560523776), PolyRefl.mkT 12 20 2 4 0 (85319340785664), PolyRefl.mkT 12 20 4 2 0 (-31994752794624), PolyRefl.mkT 12 20 6 0 0 (31807372263424), PolyRefl.mkT 14 18 0 6 0 (-110346073276416), PolyRefl.mkT 14 18 2 4 0 (165519109914624), PolyRefl.mkT 14 18 4 2 0 (-62069666217984), PolyRefl.mkT 14 18 6 0 0 (-78668307628032), PolyRefl.mkT 16 16 0 6 0 (289122885304320), PolyRefl.mkT 16 16 2 4 0 (-433684327956480), PolyRefl.mkT 16 16 4 2 0 (162631622983680), PolyRefl.mkT 16 16 6 0 0 (141061612765184), PolyRefl.mkT 18 14 0 6 0 (244737445462016), PolyRefl.mkT 18 14 2 4 0 (-367106168193024), PolyRefl.mkT 18 14 4 2 0 (137664813072384), PolyRefl.mkT 18 14 6 0 0 (-177092907499520), PolyRefl.mkT 20 12 0 6 0 (-143859073941504), PolyRefl.mkT 20 12 2 4 0 (215788610912256), PolyRefl.mkT 20 12 4 2 0 (-80920729092096), PolyRefl.mkT 20 12 6 0 0 (97123631628288), PolyRefl.mkT 22 10 0 6 0 (-36382357585920), PolyRefl.mkT 22 10 2 4 0 (54573536378880), PolyRefl.mkT 22 10 4 2 0 (-20465076142080), PolyRefl.mkT 22 10 6 0 0 (-25310451466240), PolyRefl.mkT 24 8 0 6 0 (43647911329792), PolyRefl.mkT 24 8 2 4 0 (-65471866994688), PolyRefl.mkT 24 8 4 2 0 (24551950123008), PolyRefl.mkT 24 8 6 0 0 (2440092712960), PolyRefl.mkT 26 6 0 6 0 (-13866394189824), PolyRefl.mkT 26 6 2 4 0 (20799591284736), PolyRefl.mkT 26 6 4 2 0 (-7799846731776), PolyRefl.mkT 26 6 6 0 0 (296256798720), PolyRefl.mkT 28 4 0 6 0 (2234121191424), PolyRefl.mkT 28 4 2 4 0 (-3351181787136), PolyRefl.mkT 28 4 4 2 0 (1256693170176), PolyRefl.mkT 28 4 6 0 0 (-105998450688), PolyRefl.mkT 30 2 0 6 0 (-189574152192), PolyRefl.mkT 30 2 2 4 0 (284361228288), PolyRefl.mkT 30 2 4 2 0 (-106635460608), PolyRefl.mkT 30 2 6 0 0 (11083972608), PolyRefl.mkT 32 0 0 6 0 (6879707136), PolyRefl.mkT 32 0 2 4 0 (-10319560704), PolyRefl.mkT 32 0 4 2 0 (3869835264), PolyRefl.mkT 32 0 6 0 0 (-429981696)]
def cp765_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 24 12 0 0 (-1), PolyRefl.mkT 2 22 12 0 0 (58), PolyRefl.mkT 4 20 12 0 0 (-1156), PolyRefl.mkT 6 18 12 0 0 (10470), PolyRefl.mkT 8 16 12 0 0 (-48197), PolyRefl.mkT 10 14 12 0 0 (119108), PolyRefl.mkT 12 12 12 0 0 (-166032), PolyRefl.mkT 14 10 12 0 0 (119820), PolyRefl.mkT 16 8 12 0 0 (-47611), PolyRefl.mkT 18 6 12 0 0 (10594), PolyRefl.mkT 20 4 12 0 0 (-1196), PolyRefl.mkT 22 2 12 0 0 (46), PolyRefl.mkT 24 0 12 0 0 (1)]
def cp766_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 2 0 (1024), PolyRefl.mkT 0 6 2 0 0 (-256), PolyRefl.mkT 2 4 0 2 0 (-7168), PolyRefl.mkT 2 4 2 0 0 (3840), PolyRefl.mkT 4 2 0 2 0 (7168), PolyRefl.mkT 4 2 2 0 0 (-3840), PolyRefl.mkT 6 0 0 2 0 (-1024), PolyRefl.mkT 6 0 2 0 0 (256)]
def cp767_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 4 2 0 (-2), PolyRefl.mkT 0 10 6 0 0 (1), PolyRefl.mkT 2 8 4 2 0 (58), PolyRefl.mkT 2 8 6 0 0 (-26), PolyRefl.mkT 4 6 4 2 0 (-196), PolyRefl.mkT 4 6 6 0 0 (82), PolyRefl.mkT 6 4 4 2 0 (196), PolyRefl.mkT 6 4 6 0 0 (-108), PolyRefl.mkT 8 2 4 2 0 (-58), PolyRefl.mkT 8 2 6 0 0 (37), PolyRefl.mkT 10 0 4 2 0 (2), PolyRefl.mkT 10 0 6 0 0 (-2)]
def cp768_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 14 4 2 0 (-32), PolyRefl.mkT 0 14 6 0 0 (24), PolyRefl.mkT 2 12 4 2 0 (1120), PolyRefl.mkT 2 12 6 0 0 (-824), PolyRefl.mkT 4 10 4 2 0 (-8736), PolyRefl.mkT 4 10 6 0 0 (5240), PolyRefl.mkT 6 8 4 2 0 (22880), PolyRefl.mkT 6 8 6 0 0 (-12312), PolyRefl.mkT 8 6 4 2 0 (-22880), PolyRefl.mkT 8 6 6 0 0 (10056), PolyRefl.mkT 10 4 4 2 0 (8736), PolyRefl.mkT 10 4 6 0 0 (-3752), PolyRefl.mkT 12 2 4 2 0 (-1120), PolyRefl.mkT 12 2 6 0 0 (552), PolyRefl.mkT 14 0 4 2 0 (32), PolyRefl.mkT 14 0 6 0 0 (-8)]
def cp769_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 5 (-12), PolyRefl.mkT 0 4 0 3 3 (40), PolyRefl.mkT 0 4 0 5 1 (-12), PolyRefl.mkT 1 3 0 0 6 (-8), PolyRefl.mkT 1 3 0 2 4 (-24), PolyRefl.mkT 1 3 0 4 2 (-24), PolyRefl.mkT 1 3 0 6 0 (-8), PolyRefl.mkT 2 2 0 1 5 (-72), PolyRefl.mkT 2 2 0 3 3 (240), PolyRefl.mkT 2 2 0 5 1 (-72), PolyRefl.mkT 3 1 0 0 6 (24), PolyRefl.mkT 3 1 0 2 4 (-216), PolyRefl.mkT 3 1 0 4 2 (264), PolyRefl.mkT 3 1 0 6 0 (-8), PolyRefl.mkT 4 0 0 1 5 (36), PolyRefl.mkT 4 0 0 3 3 (-120), PolyRefl.mkT 4 0 0 5 1 (36)]
def cp770_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 1 3 (-12), PolyRefl.mkT 0 4 0 3 1 (52), PolyRefl.mkT 0 4 2 1 1 (-12), PolyRefl.mkT 1 3 0 0 4 (-8), PolyRefl.mkT 1 3 0 2 2 (-16), PolyRefl.mkT 1 3 0 4 0 (-8), PolyRefl.mkT 1 3 2 0 2 (-8), PolyRefl.mkT 1 3 2 2 0 (-8), PolyRefl.mkT 1 3 4 0 0 (-8), PolyRefl.mkT 2 2 0 1 3 (-72), PolyRefl.mkT 2 2 0 3 1 (312), PolyRefl.mkT 2 2 2 1 1 (-72), PolyRefl.mkT 3 1 0 0 4 (24), PolyRefl.mkT 3 1 0 2 2 (-240), PolyRefl.mkT 3 1 0 4 0 (504), PolyRefl.mkT 3 1 2 0 2 (24), PolyRefl.mkT 3 1 2 2 0 (-264), PolyRefl.mkT 3 1 4 0 0 (24), PolyRefl.mkT 4 0 0 1 3 (36), PolyRefl.mkT 4 0 0 3 1 (-156), PolyRefl.mkT 4 0 2 1 1 (36)]
def cp771_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (-16), PolyRefl.mkT 0 4 2 3 1 (16), PolyRefl.mkT 0 4 4 1 1 (-3), PolyRefl.mkT 1 3 6 0 0 (-2), PolyRefl.mkT 2 2 0 5 1 (-96), PolyRefl.mkT 2 2 2 3 1 (96), PolyRefl.mkT 2 2 4 1 1 (-18), PolyRefl.mkT 3 1 0 6 0 (-128), PolyRefl.mkT 3 1 2 4 0 (192), PolyRefl.mkT 3 1 4 2 0 (-72), PolyRefl.mkT 3 1 6 0 0 (6), PolyRefl.mkT 4 0 0 5 1 (48), PolyRefl.mkT 4 0 2 3 1 (-48), PolyRefl.mkT 4 0 4 1 1 (9)]
def cp772_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 4 0 5 1 (-16), PolyRefl.mkT 0 4 2 3 1 (16), PolyRefl.mkT 0 4 4 1 1 (-3), PolyRefl.mkT 1 3 6 0 0 (2), PolyRefl.mkT 2 2 0 5 1 (-96), PolyRefl.mkT 2 2 2 3 1 (96), PolyRefl.mkT 2 2 4 1 1 (-18), PolyRefl.mkT 3 1 0 6 0 (128), PolyRefl.mkT 3 1 2 4 0 (-192), PolyRefl.mkT 3 1 4 2 0 (72), PolyRefl.mkT 3 1 6 0 0 (-6), PolyRefl.mkT 4 0 0 5 1 (48), PolyRefl.mkT 4 0 2 3 1 (-48), PolyRefl.mkT 4 0 4 1 1 (9)]
def cp773_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 6 0 2 0 (256), PolyRefl.mkT 0 6 2 0 0 (-128), PolyRefl.mkT 2 4 0 2 0 (-1792), PolyRefl.mkT 2 4 2 0 0 (896), PolyRefl.mkT 4 2 0 2 0 (1792), PolyRefl.mkT 4 2 2 0 0 (-896), PolyRefl.mkT 6 0 0 2 0 (-256), PolyRefl.mkT 6 0 2 0 0 (128)]
def cp774_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 10 4 2 0 (12), PolyRefl.mkT 0 10 6 0 0 (-7), PolyRefl.mkT 2 8 4 2 0 (-124), PolyRefl.mkT 2 8 6 0 0 (73), PolyRefl.mkT 4 6 4 2 0 (376), PolyRefl.mkT 4 6 6 0 0 (-214), PolyRefl.mkT 6 4 4 2 0 (-376), PolyRefl.mkT 6 4 6 0 0 (162), PolyRefl.mkT 8 2 4 2 0 (124), PolyRefl.mkT 8 2 6 0 0 (-51), PolyRefl.mkT 10 0 4 2 0 (-12), PolyRefl.mkT 10 0 6 0 0 (5)]
def cp775_2_3 : PolyRefl.SPoly := [PolyRefl.mkT 0 14 4 2 0 (-48), PolyRefl.mkT 0 14 6 0 0 (20), PolyRefl.mkT 2 12 4 2 0 (784), PolyRefl.mkT 2 12 6 0 0 (-324), PolyRefl.mkT 4 10 4 2 0 (-4528), PolyRefl.mkT 4 10 6 0 0 (1892), PolyRefl.mkT 6 8 4 2 0 (11024), PolyRefl.mkT 6 8 6 0 0 (-4948), PolyRefl.mkT 8 6 4 2 0 (-11024), PolyRefl.mkT 8 6 6 0 0 (6076), PolyRefl.mkT 10 4 4 2 0 (4528), PolyRefl.mkT 10 4 6 0 0 (-2636), PolyRefl.mkT 12 2 4 2 0 (-784), PolyRefl.mkT 12 2 6 0 0 (460), PolyRefl.mkT 14 0 4 2 0 (48), PolyRefl.mkT 14 0 6 0 0 (-28)]

lemma st0_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp2_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp5_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp4_2_3) (ct := 2)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st1_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp6_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp8_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp7_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st2_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp8_2_3 u v x y z = 0) :
    PolyRefl.eval cp11_2_3 u v x y z = 0 :=
  prs_step (L := cp9_2_3) (q := cp10_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st3_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp11_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp5_2_3 u v x y z = 0) :
    PolyRefl.eval cp0_2_3 u v x y z = 0 :=
  prs_step (L := cp12_2_3) (q := cp13_2_3) (ct := 16)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st4_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp16_2_3 u v x y z = 0) :
    PolyRefl.eval cp18_2_3 u v x y z = 0 :=
  prs_step (L := cp15_2_3) (q := cp17_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st5_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp19_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp21_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp20_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st6_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp21_2_3 u v x y z = 0) :
    PolyRefl.eval cp24_2_3 u v x y z = 0 :=
  prs_step (L := cp22_2_3) (q := cp23_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st7_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp24_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp18_2_3 u v x y z = 0) :
    PolyRefl.eval cp14_2_3 u v x y z = 0 :=
  prs_step (L := cp25_2_3) (q := cp26_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st8_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp28_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp30_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp29_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st9_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp30_2_3 u v x y z = 0) :
    PolyRefl.eval cp33_2_3 u v x y z = 0 :=
  prs_step (L := cp31_2_3) (q := cp32_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st10_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp34_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp36_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp35_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st11_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp36_2_3 u v x y z = 0) :
    PolyRefl.eval cp39_2_3 u v x y z = 0 :=
  prs_step (L := cp37_2_3) (q := cp38_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st12_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp33_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp39_2_3 u v x y z = 0) :
    PolyRefl.eval cp42_2_3 u v x y z = 0 :=
  prs_step (L := cp40_2_3) (q := cp41_2_3) (ct := 4096)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st13_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp39_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp42_2_3 u v x y z = 0) :
    PolyRefl.eval cp27_2_3 u v x y z = 0 :=
  prs_step (L := cp43_2_3) (q := cp44_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st14_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp17_2_3 u v x y z = 0) :
    PolyRefl.eval cp18_2_3 u v x y z = 0 :=
  prs_step (L := cp15_2_3) (q := cp16_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st15_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp46_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp47_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp20_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st16_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp47_2_3 u v x y z = 0) :
    PolyRefl.eval cp50_2_3 u v x y z = 0 :=
  prs_step (L := cp48_2_3) (q := cp49_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st17_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp50_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp18_2_3 u v x y z = 0) :
    PolyRefl.eval cp45_2_3 u v x y z = 0 :=
  prs_step (L := cp25_2_3) (q := cp51_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st18_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp53_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp55_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp54_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st19_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp55_2_3 u v x y z = 0) :
    PolyRefl.eval cp39_2_3 u v x y z = 0 :=
  prs_step (L := cp37_2_3) (q := cp56_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st20_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp57_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp59_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp58_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st21_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp59_2_3 u v x y z = 0) :
    PolyRefl.eval cp62_2_3 u v x y z = 0 :=
  prs_step (L := cp60_2_3) (q := cp61_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st22_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp39_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp62_2_3 u v x y z = 0) :
    PolyRefl.eval cp65_2_3 u v x y z = 0 :=
  prs_step (L := cp63_2_3) (q := cp64_2_3) (ct := 16)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st23_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp62_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp65_2_3 u v x y z = 0) :
    PolyRefl.eval cp52_2_3 u v x y z = 0 :=
  prs_step (L := cp66_2_3) (q := cp67_2_3) (ct := 16)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st24_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp69_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp71_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp70_2_3) (ct := 2)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st25_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp71_2_3 u v x y z = 0) :
    PolyRefl.eval cp74_2_3 u v x y z = 0 :=
  prs_step (L := cp72_2_3) (q := cp73_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st26_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp75_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp77_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp76_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st27_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp77_2_3 u v x y z = 0) :
    PolyRefl.eval cp80_2_3 u v x y z = 0 :=
  prs_step (L := cp78_2_3) (q := cp79_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st28_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp80_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp74_2_3 u v x y z = 0) :
    PolyRefl.eval cp83_2_3 u v x y z = 0 :=
  prs_step (L := cp81_2_3) (q := cp82_2_3) (ct := 536870912)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st29_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp74_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp83_2_3 u v x y z = 0) :
    PolyRefl.eval cp68_2_3 u v x y z = 0 :=
  prs_step (L := cp84_2_3) (q := cp85_2_3) (ct := 512)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st30_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp87_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp89_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp88_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st31_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp89_2_3 u v x y z = 0) :
    PolyRefl.eval cp92_2_3 u v x y z = 0 :=
  prs_step (L := cp90_2_3) (q := cp91_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st32_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp92_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp74_2_3 u v x y z = 0) :
    PolyRefl.eval cp94_2_3 u v x y z = 0 :=
  prs_step (L := cp81_2_3) (q := cp93_2_3) (ct := 2147483648)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st33_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp74_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp94_2_3 u v x y z = 0) :
    PolyRefl.eval cp86_2_3 u v x y z = 0 :=
  prs_step (L := cp95_2_3) (q := cp96_2_3) (ct := 512)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st34_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp98_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp100_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp99_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st35_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp100_2_3 u v x y z = 0) :
    PolyRefl.eval cp102_2_3 u v x y z = 0 :=
  prs_step (L := cp22_2_3) (q := cp101_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st36_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp102_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp18_2_3 u v x y z = 0) :
    PolyRefl.eval cp97_2_3 u v x y z = 0 :=
  prs_step (L := cp25_2_3) (q := cp103_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st37_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp105_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp61_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp106_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st38_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp61_2_3 u v x y z = 0) :
    PolyRefl.eval cp62_2_3 u v x y z = 0 :=
  prs_step (L := cp60_2_3) (q := cp59_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st39_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp107_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp109_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp108_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st40_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp109_2_3 u v x y z = 0) :
    PolyRefl.eval cp112_2_3 u v x y z = 0 :=
  prs_step (L := cp110_2_3) (q := cp111_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st41_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp112_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp62_2_3 u v x y z = 0) :
    PolyRefl.eval cp115_2_3 u v x y z = 0 :=
  prs_step (L := cp113_2_3) (q := cp114_2_3) (ct := 262144)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st42_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp62_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp115_2_3 u v x y z = 0) :
    PolyRefl.eval cp104_2_3 u v x y z = 0 :=
  prs_step (L := cp116_2_3) (q := cp117_2_3) (ct := 64)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st43_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp119_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp121_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp120_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st44_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp121_2_3 u v x y z = 0) :
    PolyRefl.eval cp123_2_3 u v x y z = 0 :=
  prs_step (L := cp31_2_3) (q := cp122_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st45_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp124_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp126_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp125_2_3) (ct := 2)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st46_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp123_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp126_2_3 u v x y z = 0) :
    PolyRefl.eval cp129_2_3 u v x y z = 0 :=
  prs_step (L := cp127_2_3) (q := cp128_2_3) (ct := 262144)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st47_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp126_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp129_2_3 u v x y z = 0) :
    PolyRefl.eval cp118_2_3 u v x y z = 0 :=
  prs_step (L := cp130_2_3) (q := cp131_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st48_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp112_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp74_2_3 u v x y z = 0) :
    PolyRefl.eval cp134_2_3 u v x y z = 0 :=
  prs_step (L := cp81_2_3) (q := cp133_2_3) (ct := 2147483648)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st49_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp74_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp134_2_3 u v x y z = 0) :
    PolyRefl.eval cp132_2_3 u v x y z = 0 :=
  prs_step (L := cp135_2_3) (q := cp136_2_3) (ct := 512)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st50_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp80_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp62_2_3 u v x y z = 0) :
    PolyRefl.eval cp139_2_3 u v x y z = 0 :=
  prs_step (L := cp113_2_3) (q := cp138_2_3) (ct := 65536)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st51_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp62_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp139_2_3 u v x y z = 0) :
    PolyRefl.eval cp137_2_3 u v x y z = 0 :=
  prs_step (L := cp140_2_3) (q := cp141_2_3) (ct := 1024)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st52_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp142_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp73_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp143_2_3) (ct := 2)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st53_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp73_2_3 u v x y z = 0) :
    PolyRefl.eval cp74_2_3 u v x y z = 0 :=
  prs_step (L := cp72_2_3) (q := cp71_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st54_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp144_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp146_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp145_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st55_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp146_2_3 u v x y z = 0) :
    PolyRefl.eval cp112_2_3 u v x y z = 0 :=
  prs_step (L := cp110_2_3) (q := cp147_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st56_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp148_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp149_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp20_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st57_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp149_2_3 u v x y z = 0) :
    PolyRefl.eval cp24_2_3 u v x y z = 0 :=
  prs_step (L := cp22_2_3) (q := cp150_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st58_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp152_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp154_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp153_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st59_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp154_2_3 u v x y z = 0) :
    PolyRefl.eval cp157_2_3 u v x y z = 0 :=
  prs_step (L := cp155_2_3) (q := cp156_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st60_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp158_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp160_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp159_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st61_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp157_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp160_2_3 u v x y z = 0) :
    PolyRefl.eval cp151_2_3 u v x y z = 0 :=
  prs_step (L := cp161_2_3) (q := cp162_2_3) (ct := 4096)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st62_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp164_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp166_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp165_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st63_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp167_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp169_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp168_2_3) (ct := 2)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st64_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp169_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp166_2_3 u v x y z = 0) :
    PolyRefl.eval cp172_2_3 u v x y z = 0 :=
  prs_step (L := cp170_2_3) (q := cp171_2_3) (ct := 64)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st65_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp166_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp172_2_3 u v x y z = 0) :
    PolyRefl.eval cp163_2_3 u v x y z = 0 :=
  prs_step (L := cp173_2_3) (q := cp174_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st66_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp176_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp178_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp177_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st67_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp178_2_3 u v x y z = 0) :
    PolyRefl.eval cp181_2_3 u v x y z = 0 :=
  prs_step (L := cp179_2_3) (q := cp180_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st68_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp182_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp184_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp183_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st69_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp184_2_3 u v x y z = 0) :
    PolyRefl.eval cp187_2_3 u v x y z = 0 :=
  prs_step (L := cp185_2_3) (q := cp186_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st70_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp187_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp181_2_3 u v x y z = 0) :
    PolyRefl.eval cp190_2_3 u v x y z = 0 :=
  prs_step (L := cp188_2_3) (q := cp189_2_3) (ct := 262144)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st71_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp181_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp190_2_3 u v x y z = 0) :
    PolyRefl.eval cp175_2_3 u v x y z = 0 :=
  prs_step (L := cp191_2_3) (q := cp192_2_3) (ct := 1024)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st72_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp194_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp196_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp195_2_3) (ct := 2)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st73_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp196_2_3 u v x y z = 0) :
    PolyRefl.eval cp199_2_3 u v x y z = 0 :=
  prs_step (L := cp197_2_3) (q := cp198_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st74_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp200_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp202_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp201_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st75_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp202_2_3 u v x y z = 0) :
    PolyRefl.eval cp205_2_3 u v x y z = 0 :=
  prs_step (L := cp203_2_3) (q := cp204_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st76_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp205_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp199_2_3 u v x y z = 0) :
    PolyRefl.eval cp193_2_3 u v x y z = 0 :=
  prs_step (L := cp206_2_3) (q := cp207_2_3) (ct := 262144)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st77_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp209_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp211_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp210_2_3) (ct := 2)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st78_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp212_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp214_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp213_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st79_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp214_2_3 u v x y z = 0) :
    PolyRefl.eval cp217_2_3 u v x y z = 0 :=
  prs_step (L := cp215_2_3) (q := cp216_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st80_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp217_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp211_2_3 u v x y z = 0) :
    PolyRefl.eval cp208_2_3 u v x y z = 0 :=
  prs_step (L := cp218_2_3) (q := cp219_2_3) (ct := 16)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st81_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp220_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp222_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp221_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st82_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp222_2_3 u v x y z = 0) :
    PolyRefl.eval cp123_2_3 u v x y z = 0 :=
  prs_step (L := cp31_2_3) (q := cp223_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st83_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp62_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp166_2_3 u v x y z = 0) :
    PolyRefl.eval cp224_2_3 u v x y z = 0 :=
  prs_step (L := cp225_2_3) (q := cp226_2_3) (ct := 64)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st84_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp227_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp229_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp228_2_3) (ct := 2)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st85_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp230_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp232_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp231_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st86_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp232_2_3 u v x y z = 0) :
    PolyRefl.eval cp217_2_3 u v x y z = 0 :=
  prs_step (L := cp215_2_3) (q := cp233_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st87_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp217_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp229_2_3 u v x y z = 0) :
    PolyRefl.eval cp208_2_3 u v x y z = 0 :=
  prs_step (L := cp218_2_3) (q := cp234_2_3) (ct := 16)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st88_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp236_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp238_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp237_2_3) (ct := 2)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st89_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp157_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp238_2_3 u v x y z = 0) :
    PolyRefl.eval cp241_2_3 u v x y z = 0 :=
  prs_step (L := cp239_2_3) (q := cp240_2_3) (ct := 262144)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st90_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp238_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp241_2_3 u v x y z = 0) :
    PolyRefl.eval cp235_2_3 u v x y z = 0 :=
  prs_step (L := cp242_2_3) (q := cp243_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st91_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp245_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp247_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp246_2_3) (ct := 2)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st92_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp248_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp156_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp249_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st93_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp156_2_3 u v x y z = 0) :
    PolyRefl.eval cp157_2_3 u v x y z = 0 :=
  prs_step (L := cp155_2_3) (q := cp154_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st94_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp157_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp247_2_3 u v x y z = 0) :
    PolyRefl.eval cp252_2_3 u v x y z = 0 :=
  prs_step (L := cp250_2_3) (q := cp251_2_3) (ct := 262144)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st95_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp247_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp252_2_3 u v x y z = 0) :
    PolyRefl.eval cp244_2_3 u v x y z = 0 :=
  prs_step (L := cp242_2_3) (q := cp253_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st96_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp255_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp257_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp256_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st97_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp257_2_3 u v x y z = 0) :
    PolyRefl.eval cp259_2_3 u v x y z = 0 :=
  prs_step (L := cp78_2_3) (q := cp258_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st98_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp259_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp74_2_3 u v x y z = 0) :
    PolyRefl.eval cp260_2_3 u v x y z = 0 :=
  prs_step (L := cp81_2_3) (q := cp82_2_3) (ct := 536870912)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st99_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp74_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp260_2_3 u v x y z = 0) :
    PolyRefl.eval cp254_2_3 u v x y z = 0 :=
  prs_step (L := cp84_2_3) (q := cp261_2_3) (ct := 512)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st100_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp263_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp265_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp264_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st101_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp265_2_3 u v x y z = 0) :
    PolyRefl.eval cp267_2_3 u v x y z = 0 :=
  prs_step (L := cp203_2_3) (q := cp266_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st102_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp268_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp270_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp269_2_3) (ct := 2)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st103_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp270_2_3 u v x y z = 0) :
    PolyRefl.eval cp273_2_3 u v x y z = 0 :=
  prs_step (L := cp271_2_3) (q := cp272_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st104_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp267_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp273_2_3 u v x y z = 0) :
    PolyRefl.eval cp262_2_3 u v x y z = 0 :=
  prs_step (L := cp206_2_3) (q := cp274_2_3) (ct := 262144)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st105_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp276_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp278_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp277_2_3) (ct := 2)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st106_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp278_2_3 u v x y z = 0) :
    PolyRefl.eval cp273_2_3 u v x y z = 0 :=
  prs_step (L := cp271_2_3) (q := cp279_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st107_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp280_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp282_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp281_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st108_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp282_2_3 u v x y z = 0) :
    PolyRefl.eval cp285_2_3 u v x y z = 0 :=
  prs_step (L := cp283_2_3) (q := cp284_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st109_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp285_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp273_2_3 u v x y z = 0) :
    PolyRefl.eval cp275_2_3 u v x y z = 0 :=
  prs_step (L := cp206_2_3) (q := cp286_2_3) (ct := 262144)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st110_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp287_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp10_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp288_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st111_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp10_2_3 u v x y z = 0) :
    PolyRefl.eval cp11_2_3 u v x y z = 0 :=
  prs_step (L := cp9_2_3) (q := cp8_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st112_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp123_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp39_2_3 u v x y z = 0) :
    PolyRefl.eval cp291_2_3 u v x y z = 0 :=
  prs_step (L := cp40_2_3) (q := cp290_2_3) (ct := 4096)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st113_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp39_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp291_2_3 u v x y z = 0) :
    PolyRefl.eval cp289_2_3 u v x y z = 0 :=
  prs_step (L := cp292_2_3) (q := cp293_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st114_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp295_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp297_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp296_2_3) (ct := 2)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st115_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp297_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp126_2_3 u v x y z = 0) :
    PolyRefl.eval cp300_2_3 u v x y z = 0 :=
  prs_step (L := cp298_2_3) (q := cp299_2_3) (ct := 512)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st116_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp126_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp300_2_3 u v x y z = 0) :
    PolyRefl.eval cp294_2_3 u v x y z = 0 :=
  prs_step (L := cp301_2_3) (q := cp302_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st117_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp304_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp306_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp305_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st118_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp181_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp306_2_3 u v x y z = 0) :
    PolyRefl.eval cp303_2_3 u v x y z = 0 :=
  prs_step (L := cp307_2_3) (q := cp308_2_3) (ct := 256)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st119_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp123_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp166_2_3 u v x y z = 0) :
    PolyRefl.eval cp309_2_3 u v x y z = 0 :=
  prs_step (L := cp310_2_3) (q := cp311_2_3) (ct := 4096)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st120_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp313_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp180_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp314_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st121_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp180_2_3 u v x y z = 0) :
    PolyRefl.eval cp181_2_3 u v x y z = 0 :=
  prs_step (L := cp179_2_3) (q := cp178_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st122_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp315_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp317_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp316_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st123_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp317_2_3 u v x y z = 0) :
    PolyRefl.eval cp320_2_3 u v x y z = 0 :=
  prs_step (L := cp318_2_3) (q := cp319_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st124_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp181_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp320_2_3 u v x y z = 0) :
    PolyRefl.eval cp323_2_3 u v x y z = 0 :=
  prs_step (L := cp321_2_3) (q := cp322_2_3) (ct := 64)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st125_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp320_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp323_2_3 u v x y z = 0) :
    PolyRefl.eval cp312_2_3 u v x y z = 0 :=
  prs_step (L := cp324_2_3) (q := cp325_2_3) (ct := 64)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st126_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp92_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp62_2_3 u v x y z = 0) :
    PolyRefl.eval cp328_2_3 u v x y z = 0 :=
  prs_step (L := cp113_2_3) (q := cp327_2_3) (ct := 262144)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st127_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp62_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp328_2_3 u v x y z = 0) :
    PolyRefl.eval cp326_2_3 u v x y z = 0 :=
  prs_step (L := cp329_2_3) (q := cp330_2_3) (ct := 64)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st128_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp332_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp334_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp333_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st129_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp334_2_3 u v x y z = 0) :
    PolyRefl.eval cp337_2_3 u v x y z = 0 :=
  prs_step (L := cp335_2_3) (q := cp336_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st130_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp337_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp166_2_3 u v x y z = 0) :
    PolyRefl.eval cp331_2_3 u v x y z = 0 :=
  prs_step (L := cp310_2_3) (q := cp338_2_3) (ct := 4096)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st131_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp340_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp342_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp341_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st132_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp342_2_3 u v x y z = 0) :
    PolyRefl.eval cp345_2_3 u v x y z = 0 :=
  prs_step (L := cp343_2_3) (q := cp344_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st133_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp346_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp348_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp347_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st134_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp348_2_3 u v x y z = 0) :
    PolyRefl.eval cp351_2_3 u v x y z = 0 :=
  prs_step (L := cp349_2_3) (q := cp350_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st135_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp351_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp345_2_3 u v x y z = 0) :
    PolyRefl.eval cp339_2_3 u v x y z = 0 :=
  prs_step (L := cp352_2_3) (q := cp353_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st136_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp355_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp357_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp356_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st137_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp357_2_3 u v x y z = 0) :
    PolyRefl.eval cp259_2_3 u v x y z = 0 :=
  prs_step (L := cp78_2_3) (q := cp358_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st138_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp259_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp62_2_3 u v x y z = 0) :
    PolyRefl.eval cp359_2_3 u v x y z = 0 :=
  prs_step (L := cp113_2_3) (q := cp138_2_3) (ct := 65536)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st139_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp62_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp359_2_3 u v x y z = 0) :
    PolyRefl.eval cp354_2_3 u v x y z = 0 :=
  prs_step (L := cp140_2_3) (q := cp360_2_3) (ct := 256)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st140_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp362_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp364_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp363_2_3) (ct := 2)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st141_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp364_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp211_2_3 u v x y z = 0) :
    PolyRefl.eval cp361_2_3 u v x y z = 0 :=
  prs_step (L := cp64_2_3) (q := cp365_2_3) (ct := 32)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st142_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp366_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp367_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp99_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st143_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp367_2_3 u v x y z = 0) :
    PolyRefl.eval cp102_2_3 u v x y z = 0 :=
  prs_step (L := cp22_2_3) (q := cp368_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st144_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp33_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp126_2_3 u v x y z = 0) :
    PolyRefl.eval cp371_2_3 u v x y z = 0 :=
  prs_step (L := cp127_2_3) (q := cp370_2_3) (ct := 262144)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st145_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp126_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp371_2_3 u v x y z = 0) :
    PolyRefl.eval cp369_2_3 u v x y z = 0 :=
  prs_step (L := cp372_2_3) (q := cp373_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st146_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp157_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp306_2_3 u v x y z = 0) :
    PolyRefl.eval cp374_2_3 u v x y z = 0 :=
  prs_step (L := cp375_2_3) (q := cp376_2_3) (ct := 4096)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st147_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp378_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp380_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp379_2_3) (ct := 2)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st148_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp380_2_3 u v x y z = 0) :
    PolyRefl.eval cp383_2_3 u v x y z = 0 :=
  prs_step (L := cp381_2_3) (q := cp382_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st149_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp384_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp386_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp385_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st150_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp386_2_3 u v x y z = 0) :
    PolyRefl.eval cp388_2_3 u v x y z = 0 :=
  prs_step (L := cp349_2_3) (q := cp387_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st151_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp388_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp383_2_3 u v x y z = 0) :
    PolyRefl.eval cp377_2_3 u v x y z = 0 :=
  prs_step (L := cp389_2_3) (q := cp390_2_3) (ct := 64)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st152_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp391_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp393_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp392_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st153_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp393_2_3 u v x y z = 0) :
    PolyRefl.eval cp33_2_3 u v x y z = 0 :=
  prs_step (L := cp31_2_3) (q := cp394_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st154_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp395_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp397_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp396_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st155_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp397_2_3 u v x y z = 0) :
    PolyRefl.eval cp92_2_3 u v x y z = 0 :=
  prs_step (L := cp90_2_3) (q := cp398_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st156_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp400_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp402_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp401_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st157_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp169_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp402_2_3 u v x y z = 0) :
    PolyRefl.eval cp404_2_3 u v x y z = 0 :=
  prs_step (L := cp64_2_3) (q := cp403_2_3) (ct := 16)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st158_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp402_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp404_2_3 u v x y z = 0) :
    PolyRefl.eval cp399_2_3 u v x y z = 0 :=
  prs_step (L := cp405_2_3) (q := cp406_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st159_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp407_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp409_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp408_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st160_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp409_2_3 u v x y z = 0) :
    PolyRefl.eval cp388_2_3 u v x y z = 0 :=
  prs_step (L := cp349_2_3) (q := cp410_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st161_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp411_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp382_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp412_2_3) (ct := 2)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st162_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp382_2_3 u v x y z = 0) :
    PolyRefl.eval cp383_2_3 u v x y z = 0 :=
  prs_step (L := cp381_2_3) (q := cp380_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st163_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp62_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp39_2_3 u v x y z = 0) :
    PolyRefl.eval cp414_2_3 u v x y z = 0 :=
  prs_step (L := cp64_2_3) (q := cp63_2_3) (ct := 16)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st164_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp39_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp414_2_3 u v x y z = 0) :
    PolyRefl.eval cp413_2_3 u v x y z = 0 :=
  prs_step (L := cp415_2_3) (q := cp416_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st165_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp418_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp420_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp419_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st166_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp420_2_3 u v x y z = 0) :
    PolyRefl.eval cp423_2_3 u v x y z = 0 :=
  prs_step (L := cp421_2_3) (q := cp422_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st167_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp423_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp383_2_3 u v x y z = 0) :
    PolyRefl.eval cp417_2_3 u v x y z = 0 :=
  prs_step (L := cp389_2_3) (q := cp424_2_3) (ct := 64)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st168_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp426_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp428_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp427_2_3) (ct := 2)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st169_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp74_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp428_2_3 u v x y z = 0) :
    PolyRefl.eval cp431_2_3 u v x y z = 0 :=
  prs_step (L := cp429_2_3) (q := cp430_2_3) (ct := 4096)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st170_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp428_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp431_2_3 u v x y z = 0) :
    PolyRefl.eval cp425_2_3 u v x y z = 0 :=
  prs_step (L := cp432_2_3) (q := cp433_2_3) (ct := 16)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st171_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp435_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp437_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp436_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st172_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp437_2_3 u v x y z = 0) :
    PolyRefl.eval cp439_2_3 u v x y z = 0 :=
  prs_step (L := cp48_2_3) (q := cp438_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st173_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp441_2_3 u v x y z = 0) :
    PolyRefl.eval cp443_2_3 u v x y z = 0 :=
  prs_step (L := cp440_2_3) (q := cp442_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st174_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp439_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp443_2_3 u v x y z = 0) :
    PolyRefl.eval cp434_2_3 u v x y z = 0 :=
  prs_step (L := cp25_2_3) (q := cp444_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st175_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp123_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp402_2_3 u v x y z = 0) :
    PolyRefl.eval cp445_2_3 u v x y z = 0 :=
  prs_step (L := cp446_2_3) (q := cp447_2_3) (ct := 256)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st176_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp449_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp451_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp450_2_3) (ct := 16)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st177_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp451_2_3 u v x y z = 0) :
    PolyRefl.eval cp454_2_3 u v x y z = 0 :=
  prs_step (L := cp452_2_3) (q := cp453_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st178_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp454_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp229_2_3 u v x y z = 0) :
    PolyRefl.eval cp448_2_3 u v x y z = 0 :=
  prs_step (L := cp218_2_3) (q := cp455_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st179_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp457_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp459_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp458_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st180_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp459_2_3 u v x y z = 0) :
    PolyRefl.eval cp320_2_3 u v x y z = 0 :=
  prs_step (L := cp318_2_3) (q := cp460_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st181_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp157_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp320_2_3 u v x y z = 0) :
    PolyRefl.eval cp463_2_3 u v x y z = 0 :=
  prs_step (L := cp461_2_3) (q := cp462_2_3) (ct := 131072)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st182_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp320_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp463_2_3 u v x y z = 0) :
    PolyRefl.eval cp456_2_3 u v x y z = 0 :=
  prs_step (L := cp464_2_3) (q := cp465_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st183_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp466_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp467_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp99_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st184_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp467_2_3 u v x y z = 0) :
    PolyRefl.eval cp469_2_3 u v x y z = 0 :=
  prs_step (L := cp48_2_3) (q := cp468_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st185_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp469_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp18_2_3 u v x y z = 0) :
    PolyRefl.eval cp434_2_3 u v x y z = 0 :=
  prs_step (L := cp25_2_3) (q := cp470_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st186_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp472_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp474_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp473_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st187_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp474_2_3 u v x y z = 0) :
    PolyRefl.eval cp476_2_3 u v x y z = 0 :=
  prs_step (L := cp421_2_3) (q := cp475_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st188_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp476_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp383_2_3 u v x y z = 0) :
    PolyRefl.eval cp471_2_3 u v x y z = 0 :=
  prs_step (L := cp389_2_3) (q := cp477_2_3) (ct := 64)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st189_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp478_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp480_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp479_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st190_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp480_2_3 u v x y z = 0) :
    PolyRefl.eval cp187_2_3 u v x y z = 0 :=
  prs_step (L := cp185_2_3) (q := cp481_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st191_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp483_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp485_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp484_2_3) (ct := 2)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st192_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp485_2_3 u v x y z = 0) :
    PolyRefl.eval cp488_2_3 u v x y z = 0 :=
  prs_step (L := cp486_2_3) (q := cp487_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st193_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp187_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp488_2_3 u v x y z = 0) :
    PolyRefl.eval cp491_2_3 u v x y z = 0 :=
  prs_step (L := cp489_2_3) (q := cp490_2_3) (ct := 33554432)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st194_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp488_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp491_2_3 u v x y z = 0) :
    PolyRefl.eval cp482_2_3 u v x y z = 0 :=
  prs_step (L := cp492_2_3) (q := cp493_2_3) (ct := 512)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st195_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp494_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp496_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp495_2_3) (ct := 2)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st196_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp11_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp496_2_3 u v x y z = 0) :
    PolyRefl.eval cp0_2_3 u v x y z = 0 :=
  prs_step (L := cp12_2_3) (q := cp497_2_3) (ct := 16)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st197_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp337_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp39_2_3 u v x y z = 0) :
    PolyRefl.eval cp500_2_3 u v x y z = 0 :=
  prs_step (L := cp40_2_3) (q := cp499_2_3) (ct := 4096)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st198_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp39_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp500_2_3 u v x y z = 0) :
    PolyRefl.eval cp498_2_3 u v x y z = 0 :=
  prs_step (L := cp501_2_3) (q := cp502_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st199_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp503_2_3 u v x y z = 0) :
    PolyRefl.eval cp443_2_3 u v x y z = 0 :=
  prs_step (L := cp440_2_3) (q := cp504_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st200_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp505_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp506_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp436_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st201_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp506_2_3 u v x y z = 0) :
    PolyRefl.eval cp508_2_3 u v x y z = 0 :=
  prs_step (L := cp48_2_3) (q := cp507_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st202_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp508_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp443_2_3 u v x y z = 0) :
    PolyRefl.eval cp45_2_3 u v x y z = 0 :=
  prs_step (L := cp25_2_3) (q := cp509_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st203_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp33_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp166_2_3 u v x y z = 0) :
    PolyRefl.eval cp510_2_3 u v x y z = 0 :=
  prs_step (L := cp310_2_3) (q := cp511_2_3) (ct := 4096)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st204_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp512_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp514_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp513_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st205_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp514_2_3 u v x y z = 0) :
    PolyRefl.eval cp516_2_3 u v x y z = 0 :=
  prs_step (L := cp349_2_3) (q := cp515_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st206_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp516_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp345_2_3 u v x y z = 0) :
    PolyRefl.eval cp377_2_3 u v x y z = 0 :=
  prs_step (L := cp352_2_3) (q := cp517_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st207_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp519_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp521_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp520_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st208_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp521_2_3 u v x y z = 0) :
    PolyRefl.eval cp523_2_3 u v x y z = 0 :=
  prs_step (L := cp215_2_3) (q := cp522_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st209_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp523_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp211_2_3 u v x y z = 0) :
    PolyRefl.eval cp518_2_3 u v x y z = 0 :=
  prs_step (L := cp218_2_3) (q := cp524_2_3) (ct := 16)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st210_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp39_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp169_2_3 u v x y z = 0) :
    PolyRefl.eval cp528_2_3 u v x y z = 0 :=
  prs_step (L := cp526_2_3) (q := cp527_2_3) (ct := 512)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st211_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp169_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp528_2_3 u v x y z = 0) :
    PolyRefl.eval cp531_2_3 u v x y z = 0 :=
  prs_step (L := cp529_2_3) (q := cp530_2_3) (ct := 64)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st212_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp528_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp531_2_3 u v x y z = 0) :
    PolyRefl.eval cp525_2_3 u v x y z = 0 :=
  prs_step (L := cp532_2_3) (q := cp533_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st213_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp534_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp535_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp436_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st214_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp535_2_3 u v x y z = 0) :
    PolyRefl.eval cp537_2_3 u v x y z = 0 :=
  prs_step (L := cp22_2_3) (q := cp536_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st215_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp537_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp443_2_3 u v x y z = 0) :
    PolyRefl.eval cp97_2_3 u v x y z = 0 :=
  prs_step (L := cp25_2_3) (q := cp538_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st216_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp539_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp541_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp540_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st217_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp541_2_3 u v x y z = 0) :
    PolyRefl.eval cp543_2_3 u v x y z = 0 :=
  prs_step (L := cp421_2_3) (q := cp542_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st218_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp543_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp345_2_3 u v x y z = 0) :
    PolyRefl.eval cp471_2_3 u v x y z = 0 :=
  prs_step (L := cp352_2_3) (q := cp544_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st219_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp545_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp547_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp546_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st220_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp547_2_3 u v x y z = 0) :
    PolyRefl.eval cp80_2_3 u v x y z = 0 :=
  prs_step (L := cp78_2_3) (q := cp548_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st221_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp123_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp428_2_3 u v x y z = 0) :
    PolyRefl.eval cp552_2_3 u v x y z = 0 :=
  prs_step (L := cp550_2_3) (q := cp551_2_3) (ct := 262144)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st222_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp428_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp552_2_3 u v x y z = 0) :
    PolyRefl.eval cp549_2_3 u v x y z = 0 :=
  prs_step (L := cp130_2_3) (q := cp553_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st223_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp554_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp555_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp341_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st224_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp555_2_3 u v x y z = 0) :
    PolyRefl.eval cp345_2_3 u v x y z = 0 :=
  prs_step (L := cp343_2_3) (q := cp556_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st225_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp557_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp559_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp558_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st226_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp559_2_3 u v x y z = 0) :
    PolyRefl.eval cp516_2_3 u v x y z = 0 :=
  prs_step (L := cp349_2_3) (q := cp560_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st227_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp561_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp563_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp562_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st228_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp563_2_3 u v x y z = 0) :
    PolyRefl.eval cp565_2_3 u v x y z = 0 :=
  prs_step (L := cp283_2_3) (q := cp564_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st229_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp566_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp198_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp567_2_3) (ct := 2)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st230_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp198_2_3 u v x y z = 0) :
    PolyRefl.eval cp199_2_3 u v x y z = 0 :=
  prs_step (L := cp197_2_3) (q := cp196_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st231_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp565_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp199_2_3 u v x y z = 0) :
    PolyRefl.eval cp275_2_3 u v x y z = 0 :=
  prs_step (L := cp206_2_3) (q := cp568_2_3) (ct := 262144)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st232_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp569_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp336_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp570_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st233_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp336_2_3 u v x y z = 0) :
    PolyRefl.eval cp337_2_3 u v x y z = 0 :=
  prs_step (L := cp335_2_3) (q := cp334_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st234_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp571_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp573_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp572_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st235_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp573_2_3 u v x y z = 0) :
    PolyRefl.eval cp543_2_3 u v x y z = 0 :=
  prs_step (L := cp421_2_3) (q := cp574_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st236_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp575_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp577_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp576_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st237_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp577_2_3 u v x y z = 0) :
    PolyRefl.eval cp565_2_3 u v x y z = 0 :=
  prs_step (L := cp283_2_3) (q := cp578_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st238_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp337_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp402_2_3 u v x y z = 0) :
    PolyRefl.eval cp579_2_3 u v x y z = 0 :=
  prs_step (L := cp446_2_3) (q := cp580_2_3) (ct := 256)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st239_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp488_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp247_2_3 u v x y z = 0) :
    PolyRefl.eval cp584_2_3 u v x y z = 0 :=
  prs_step (L := cp582_2_3) (q := cp583_2_3) (ct := 4096)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st240_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp247_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp584_2_3 u v x y z = 0) :
    PolyRefl.eval cp581_2_3 u v x y z = 0 :=
  prs_step (L := cp585_2_3) (q := cp586_2_3) (ct := 16)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st241_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp488_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp238_2_3 u v x y z = 0) :
    PolyRefl.eval cp590_2_3 u v x y z = 0 :=
  prs_step (L := cp588_2_3) (q := cp589_2_3) (ct := 4096)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st242_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp238_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp590_2_3 u v x y z = 0) :
    PolyRefl.eval cp587_2_3 u v x y z = 0 :=
  prs_step (L := cp585_2_3) (q := cp591_2_3) (ct := 16)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st243_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp592_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp594_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp593_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st244_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp594_2_3 u v x y z = 0) :
    PolyRefl.eval cp523_2_3 u v x y z = 0 :=
  prs_step (L := cp215_2_3) (q := cp595_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st245_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp523_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp229_2_3 u v x y z = 0) :
    PolyRefl.eval cp518_2_3 u v x y z = 0 :=
  prs_step (L := cp218_2_3) (q := cp596_2_3) (ct := 16)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st246_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp181_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp160_2_3 u v x y z = 0) :
    PolyRefl.eval cp597_2_3 u v x y z = 0 :=
  prs_step (L := cp598_2_3) (q := cp599_2_3) (ct := 256)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st247_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp74_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp39_2_3 u v x y z = 0) :
    PolyRefl.eval cp600_2_3 u v x y z = 0 :=
  prs_step (L := cp64_2_3) (q := cp601_2_3) (ct := 16)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st248_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp602_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp604_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp603_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st249_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp604_2_3 u v x y z = 0) :
    PolyRefl.eval cp606_2_3 u v x y z = 0 :=
  prs_step (L := cp421_2_3) (q := cp605_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st250_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp606_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp345_2_3 u v x y z = 0) :
    PolyRefl.eval cp417_2_3 u v x y z = 0 :=
  prs_step (L := cp352_2_3) (q := cp607_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st251_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp609_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp487_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp610_2_3) (ct := 2)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st252_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp487_2_3 u v x y z = 0) :
    PolyRefl.eval cp488_2_3 u v x y z = 0 :=
  prs_step (L := cp486_2_3) (q := cp485_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st253_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp488_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp320_2_3 u v x y z = 0) :
    PolyRefl.eval cp608_2_3 u v x y z = 0 :=
  prs_step (L := cp321_2_3) (q := cp611_2_3) (ct := 64)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st254_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp337_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp126_2_3 u v x y z = 0) :
    PolyRefl.eval cp614_2_3 u v x y z = 0 :=
  prs_step (L := cp127_2_3) (q := cp613_2_3) (ct := 262144)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st255_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp126_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp614_2_3 u v x y z = 0) :
    PolyRefl.eval cp612_2_3 u v x y z = 0 :=
  prs_step (L := cp615_2_3) (q := cp616_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st256_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp337_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp428_2_3 u v x y z = 0) :
    PolyRefl.eval cp619_2_3 u v x y z = 0 :=
  prs_step (L := cp550_2_3) (q := cp618_2_3) (ct := 262144)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st257_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp428_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp619_2_3 u v x y z = 0) :
    PolyRefl.eval cp617_2_3 u v x y z = 0 :=
  prs_step (L := cp615_2_3) (q := cp620_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st258_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp622_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp624_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp623_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st259_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp624_2_3 u v x y z = 0) :
    PolyRefl.eval cp626_2_3 u v x y z = 0 :=
  prs_step (L := cp283_2_3) (q := cp625_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st260_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp626_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp199_2_3 u v x y z = 0) :
    PolyRefl.eval cp621_2_3 u v x y z = 0 :=
  prs_step (L := cp206_2_3) (q := cp627_2_3) (ct := 262144)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st261_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp628_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp630_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp629_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st262_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp630_2_3 u v x y z = 0) :
    PolyRefl.eval cp632_2_3 u v x y z = 0 :=
  prs_step (L := cp283_2_3) (q := cp631_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st263_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp632_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp273_2_3 u v x y z = 0) :
    PolyRefl.eval cp621_2_3 u v x y z = 0 :=
  prs_step (L := cp206_2_3) (q := cp633_2_3) (ct := 262144)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st264_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp62_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp402_2_3 u v x y z = 0) :
    PolyRefl.eval cp634_2_3 u v x y z = 0 :=
  prs_step (L := cp635_2_3) (q := cp636_2_3) (ct := 16)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st265_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp320_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp181_2_3 u v x y z = 0) :
    PolyRefl.eval cp638_2_3 u v x y z = 0 :=
  prs_step (L := cp322_2_3) (q := cp321_2_3) (ct := 64)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st266_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp181_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp638_2_3 u v x y z = 0) :
    PolyRefl.eval cp637_2_3 u v x y z = 0 :=
  prs_step (L := cp639_2_3) (q := cp640_2_3) (ct := 256)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st267_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp297_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp428_2_3 u v x y z = 0) :
    PolyRefl.eval cp643_2_3 u v x y z = 0 :=
  prs_step (L := cp298_2_3) (q := cp642_2_3) (ct := 512)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st268_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp428_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp643_2_3 u v x y z = 0) :
    PolyRefl.eval cp641_2_3 u v x y z = 0 :=
  prs_step (L := cp301_2_3) (q := cp644_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st269_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp646_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp648_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp647_2_3) (ct := 2)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st270_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp648_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp211_2_3 u v x y z = 0) :
    PolyRefl.eval cp645_2_3 u v x y z = 0 :=
  prs_step (L := cp64_2_3) (q := cp649_2_3) (ct := 32)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st271_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp650_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp652_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp651_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st272_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp652_2_3 u v x y z = 0) :
    PolyRefl.eval cp654_2_3 u v x y z = 0 :=
  prs_step (L := cp349_2_3) (q := cp653_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st273_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp654_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp383_2_3 u v x y z = 0) :
    PolyRefl.eval cp339_2_3 u v x y z = 0 :=
  prs_step (L := cp389_2_3) (q := cp655_2_3) (ct := 64)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st274_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp656_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp658_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp657_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st275_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp658_2_3 u v x y z = 0) :
    PolyRefl.eval cp476_2_3 u v x y z = 0 :=
  prs_step (L := cp421_2_3) (q := cp659_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st276_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp364_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp229_2_3 u v x y z = 0) :
    PolyRefl.eval cp361_2_3 u v x y z = 0 :=
  prs_step (L := cp64_2_3) (q := cp660_2_3) (ct := 32)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st277_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp661_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp663_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp662_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st278_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp663_2_3 u v x y z = 0) :
    PolyRefl.eval cp654_2_3 u v x y z = 0 :=
  prs_step (L := cp349_2_3) (q := cp664_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st279_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp320_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp488_2_3 u v x y z = 0) :
    PolyRefl.eval cp665_2_3 u v x y z = 0 :=
  prs_step (L := cp611_2_3) (q := cp321_2_3) (ct := 64)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st280_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp666_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp667_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp20_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st281_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp667_2_3 u v x y z = 0) :
    PolyRefl.eval cp50_2_3 u v x y z = 0 :=
  prs_step (L := cp48_2_3) (q := cp668_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st282_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp33_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp402_2_3 u v x y z = 0) :
    PolyRefl.eval cp669_2_3 u v x y z = 0 :=
  prs_step (L := cp446_2_3) (q := cp670_2_3) (ct := 256)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st283_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp671_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp673_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp672_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st284_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp673_2_3 u v x y z = 0) :
    PolyRefl.eval cp423_2_3 u v x y z = 0 :=
  prs_step (L := cp421_2_3) (q := cp674_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st285_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp675_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp676_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp436_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st286_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp676_2_3 u v x y z = 0) :
    PolyRefl.eval cp439_2_3 u v x y z = 0 :=
  prs_step (L := cp48_2_3) (q := cp677_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st287_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp678_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp679_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp436_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st288_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp679_2_3 u v x y z = 0) :
    PolyRefl.eval cp681_2_3 u v x y z = 0 :=
  prs_step (L := cp22_2_3) (q := cp680_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st289_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp681_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp443_2_3 u v x y z = 0) :
    PolyRefl.eval cp14_2_3 u v x y z = 0 :=
  prs_step (L := cp25_2_3) (q := cp682_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st290_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp683_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp453_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp684_2_3) (ct := 16)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st291_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp453_2_3 u v x y z = 0) :
    PolyRefl.eval cp454_2_3 u v x y z = 0 :=
  prs_step (L := cp452_2_3) (q := cp451_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st292_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp454_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp211_2_3 u v x y z = 0) :
    PolyRefl.eval cp448_2_3 u v x y z = 0 :=
  prs_step (L := cp218_2_3) (q := cp685_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st293_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp686_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp688_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp687_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st294_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp688_2_3 u v x y z = 0) :
    PolyRefl.eval cp690_2_3 u v x y z = 0 :=
  prs_step (L := cp203_2_3) (q := cp689_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st295_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp690_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp273_2_3 u v x y z = 0) :
    PolyRefl.eval cp193_2_3 u v x y z = 0 :=
  prs_step (L := cp206_2_3) (q := cp691_2_3) (ct := 262144)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st296_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp692_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp694_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp693_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st297_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp694_2_3 u v x y z = 0) :
    PolyRefl.eval cp606_2_3 u v x y z = 0 :=
  prs_step (L := cp421_2_3) (q := cp695_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st298_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp74_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp126_2_3 u v x y z = 0) :
    PolyRefl.eval cp699_2_3 u v x y z = 0 :=
  prs_step (L := cp697_2_3) (q := cp698_2_3) (ct := 4096)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st299_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp126_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp699_2_3 u v x y z = 0) :
    PolyRefl.eval cp696_2_3 u v x y z = 0 :=
  prs_step (L := cp432_2_3) (q := cp700_2_3) (ct := 16)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st300_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp701_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp703_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp702_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st301_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp703_2_3 u v x y z = 0) :
    PolyRefl.eval cp205_2_3 u v x y z = 0 :=
  prs_step (L := cp203_2_3) (q := cp704_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st302_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp705_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp707_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp706_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st303_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp707_2_3 u v x y z = 0) :
    PolyRefl.eval cp626_2_3 u v x y z = 0 :=
  prs_step (L := cp283_2_3) (q := cp708_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st304_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp39_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp74_2_3 u v x y z = 0) :
    PolyRefl.eval cp709_2_3 u v x y z = 0 :=
  prs_step (L := cp601_2_3) (q := cp64_2_3) (ct := 16)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st305_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp710_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp711_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp436_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st306_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp711_2_3 u v x y z = 0) :
    PolyRefl.eval cp537_2_3 u v x y z = 0 :=
  prs_step (L := cp22_2_3) (q := cp712_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st307_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp39_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp297_2_3 u v x y z = 0) :
    PolyRefl.eval cp714_2_3 u v x y z = 0 :=
  prs_step (L := cp526_2_3) (q := cp713_2_3) (ct := 512)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st308_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp297_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp714_2_3 u v x y z = 0) :
    PolyRefl.eval cp716_2_3 u v x y z = 0 :=
  prs_step (L := cp529_2_3) (q := cp715_2_3) (ct := 64)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st309_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp714_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp716_2_3 u v x y z = 0) :
    PolyRefl.eval cp525_2_3 u v x y z = 0 :=
  prs_step (L := cp532_2_3) (q := cp717_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st310_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp718_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp720_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp719_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st311_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp720_2_3 u v x y z = 0) :
    PolyRefl.eval cp351_2_3 u v x y z = 0 :=
  prs_step (L := cp349_2_3) (q := cp721_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st312_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp33_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp428_2_3 u v x y z = 0) :
    PolyRefl.eval cp724_2_3 u v x y z = 0 :=
  prs_step (L := cp550_2_3) (q := cp723_2_3) (ct := 262144)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st313_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp428_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp724_2_3 u v x y z = 0) :
    PolyRefl.eval cp722_2_3 u v x y z = 0 :=
  prs_step (L := cp372_2_3) (q := cp725_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st314_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp297_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp166_2_3 u v x y z = 0) :
    PolyRefl.eval cp727_2_3 u v x y z = 0 :=
  prs_step (L := cp170_2_3) (q := cp726_2_3) (ct := 64)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st315_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp166_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp727_2_3 u v x y z = 0) :
    PolyRefl.eval cp163_2_3 u v x y z = 0 :=
  prs_step (L := cp173_2_3) (q := cp728_2_3) (ct := 8)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st316_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp729_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp731_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp730_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st317_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp731_2_3 u v x y z = 0) :
    PolyRefl.eval cp690_2_3 u v x y z = 0 :=
  prs_step (L := cp203_2_3) (q := cp732_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st318_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp733_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp734_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp436_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st319_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp734_2_3 u v x y z = 0) :
    PolyRefl.eval cp681_2_3 u v x y z = 0 :=
  prs_step (L := cp22_2_3) (q := cp735_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st320_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp736_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp737_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp99_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st321_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp737_2_3 u v x y z = 0) :
    PolyRefl.eval cp469_2_3 u v x y z = 0 :=
  prs_step (L := cp48_2_3) (q := cp738_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st322_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp739_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp741_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp740_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st323_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp741_2_3 u v x y z = 0) :
    PolyRefl.eval cp632_2_3 u v x y z = 0 :=
  prs_step (L := cp283_2_3) (q := cp742_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st324_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp743_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp745_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp744_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st325_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp745_2_3 u v x y z = 0) :
    PolyRefl.eval cp267_2_3 u v x y z = 0 :=
  prs_step (L := cp203_2_3) (q := cp746_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st326_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp648_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp229_2_3 u v x y z = 0) :
    PolyRefl.eval cp645_2_3 u v x y z = 0 :=
  prs_step (L := cp64_2_3) (q := cp747_2_3) (ct := 32)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st327_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp748_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp750_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp749_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st328_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp750_2_3 u v x y z = 0) :
    PolyRefl.eval cp285_2_3 u v x y z = 0 :=
  prs_step (L := cp283_2_3) (q := cp751_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st329_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp752_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp753_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp436_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st330_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp753_2_3 u v x y z = 0) :
    PolyRefl.eval cp508_2_3 u v x y z = 0 :=
  prs_step (L := cp48_2_3) (q := cp754_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st331_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp169_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp428_2_3 u v x y z = 0) :
    PolyRefl.eval cp757_2_3 u v x y z = 0 :=
  prs_step (L := cp298_2_3) (q := cp756_2_3) (ct := 512)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st332_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp428_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp757_2_3 u v x y z = 0) :
    PolyRefl.eval cp755_2_3 u v x y z = 0 :=
  prs_step (L := cp301_2_3) (q := cp758_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st333_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp759_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp761_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp760_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st334_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp761_2_3 u v x y z = 0) :
    PolyRefl.eval cp763_2_3 u v x y z = 0 :=
  prs_step (L := cp203_2_3) (q := cp762_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st335_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp763_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp199_2_3 u v x y z = 0) :
    PolyRefl.eval cp262_2_3 u v x y z = 0 :=
  prs_step (L := cp206_2_3) (q := cp764_2_3) (ct := 262144)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st336_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp169_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp126_2_3 u v x y z = 0) :
    PolyRefl.eval cp767_2_3 u v x y z = 0 :=
  prs_step (L := cp298_2_3) (q := cp766_2_3) (ct := 512)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st337_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp126_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp767_2_3 u v x y z = 0) :
    PolyRefl.eval cp765_2_3 u v x y z = 0 :=
  prs_step (L := cp301_2_3) (q := cp768_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st338_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp769_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp3_2_3 u v x y z = 0) :
    PolyRefl.eval cp771_2_3 u v x y z = 0 :=
  prs_step (L := cp1_2_3) (q := cp770_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st339_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp771_2_3 u v x y z = 0) :
    PolyRefl.eval cp763_2_3 u v x y z = 0 :=
  prs_step (L := cp203_2_3) (q := cp772_2_3) (ct := 1)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st340_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp297_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp402_2_3 u v x y z = 0) :
    PolyRefl.eval cp774_2_3 u v x y z = 0 :=
  prs_step (L := cp64_2_3) (q := cp773_2_3) (ct := 16)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma st341_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (h0 : PolyRefl.eval cp402_2_3 u v x y z = 0)
    (h1 : PolyRefl.eval cp774_2_3 u v x y z = 0) :
    PolyRefl.eval cp399_2_3 u v x y z = 0 :=
  prs_step (L := cp405_2_3) (q := cp775_2_3) (ct := 4)
    (by norm_num) (by native_decide) u v x y z h0 h1

lemma leaf0_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp2_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp6_2_3 u v x y z = 0)
    : PolyRefl.eval cp0_2_3 u v x y z = 0 := by
  have h0 := st0_2_3 u v x y z hin0 hin1
  have h1 := st1_2_3 u v x y z hin2 hin1
  have h2 := st2_2_3 u v x y z hin1 h1
  have h3 := st3_2_3 u v x y z h2 h0
  exact h3

lemma leaf1_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp16_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp19_2_3 u v x y z = 0)
    : PolyRefl.eval cp14_2_3 u v x y z = 0 := by
  have h0 := st4_2_3 u v x y z hin0 hin1
  have h1 := st5_2_3 u v x y z hin2 hin0
  have h2 := st6_2_3 u v x y z hin0 h1
  have h3 := st7_2_3 u v x y z h2 h0
  exact h3

lemma leaf2_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp28_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp34_2_3 u v x y z = 0)
    : PolyRefl.eval cp27_2_3 u v x y z = 0 := by
  have h0 := st8_2_3 u v x y z hin0 hin1
  have h1 := st9_2_3 u v x y z hin1 h0
  have h2 := st10_2_3 u v x y z hin2 hin1
  have h3 := st11_2_3 u v x y z hin1 h2
  have h4 := st12_2_3 u v x y z h1 h3
  have h5 := st13_2_3 u v x y z h3 h4
  exact h5

lemma leaf3_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp17_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp46_2_3 u v x y z = 0)
    : PolyRefl.eval cp45_2_3 u v x y z = 0 := by
  have h0 := st14_2_3 u v x y z hin0 hin1
  have h1 := st15_2_3 u v x y z hin2 hin0
  have h2 := st16_2_3 u v x y z hin0 h1
  have h3 := st17_2_3 u v x y z h2 h0
  exact h3

lemma leaf4_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp53_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp57_2_3 u v x y z = 0)
    : PolyRefl.eval cp52_2_3 u v x y z = 0 := by
  have h0 := st18_2_3 u v x y z hin0 hin1
  have h1 := st19_2_3 u v x y z hin1 h0
  have h2 := st20_2_3 u v x y z hin2 hin1
  have h3 := st21_2_3 u v x y z hin1 h2
  have h4 := st22_2_3 u v x y z h1 h3
  have h5 := st23_2_3 u v x y z h3 h4
  exact h5

lemma leaf5_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp69_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp75_2_3 u v x y z = 0)
    : PolyRefl.eval cp68_2_3 u v x y z = 0 := by
  have h0 := st24_2_3 u v x y z hin0 hin1
  have h1 := st25_2_3 u v x y z hin1 h0
  have h2 := st26_2_3 u v x y z hin2 hin1
  have h3 := st27_2_3 u v x y z hin1 h2
  have h4 := st28_2_3 u v x y z h3 h1
  have h5 := st29_2_3 u v x y z h1 h4
  exact h5

lemma leaf6_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp87_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp69_2_3 u v x y z = 0)
    : PolyRefl.eval cp86_2_3 u v x y z = 0 := by
  have h0 := st30_2_3 u v x y z hin0 hin1
  have h1 := st31_2_3 u v x y z hin1 h0
  have h2 := st24_2_3 u v x y z hin2 hin1
  have h3 := st25_2_3 u v x y z hin1 h2
  have h4 := st32_2_3 u v x y z h1 h3
  have h5 := st33_2_3 u v x y z h3 h4
  exact h5

lemma leaf7_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp17_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp98_2_3 u v x y z = 0)
    : PolyRefl.eval cp97_2_3 u v x y z = 0 := by
  have h0 := st14_2_3 u v x y z hin0 hin1
  have h1 := st34_2_3 u v x y z hin2 hin0
  have h2 := st35_2_3 u v x y z hin0 h1
  have h3 := st36_2_3 u v x y z h2 h0
  exact h3

lemma leaf8_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp105_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp107_2_3 u v x y z = 0)
    : PolyRefl.eval cp104_2_3 u v x y z = 0 := by
  have h0 := st37_2_3 u v x y z hin0 hin1
  have h1 := st38_2_3 u v x y z hin1 h0
  have h2 := st39_2_3 u v x y z hin2 hin1
  have h3 := st40_2_3 u v x y z hin1 h2
  have h4 := st41_2_3 u v x y z h3 h1
  have h5 := st42_2_3 u v x y z h1 h4
  exact h5

lemma leaf9_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp119_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp124_2_3 u v x y z = 0)
    : PolyRefl.eval cp118_2_3 u v x y z = 0 := by
  have h0 := st43_2_3 u v x y z hin0 hin1
  have h1 := st44_2_3 u v x y z hin1 h0
  have h2 := st45_2_3 u v x y z hin2 hin1
  have h3 := st46_2_3 u v x y z h1 h2
  have h4 := st47_2_3 u v x y z h2 h3
  exact h4

lemma leaf10_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp107_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp69_2_3 u v x y z = 0)
    : PolyRefl.eval cp132_2_3 u v x y z = 0 := by
  have h0 := st39_2_3 u v x y z hin0 hin1
  have h1 := st40_2_3 u v x y z hin1 h0
  have h2 := st24_2_3 u v x y z hin2 hin1
  have h3 := st25_2_3 u v x y z hin1 h2
  have h4 := st48_2_3 u v x y z h1 h3
  have h5 := st49_2_3 u v x y z h3 h4
  exact h5

lemma leaf11_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp105_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp75_2_3 u v x y z = 0)
    : PolyRefl.eval cp137_2_3 u v x y z = 0 := by
  have h0 := st37_2_3 u v x y z hin0 hin1
  have h1 := st38_2_3 u v x y z hin1 h0
  have h2 := st26_2_3 u v x y z hin2 hin1
  have h3 := st27_2_3 u v x y z hin1 h2
  have h4 := st50_2_3 u v x y z h3 h1
  have h5 := st51_2_3 u v x y z h1 h4
  exact h5

lemma leaf12_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp142_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp144_2_3 u v x y z = 0)
    : PolyRefl.eval cp132_2_3 u v x y z = 0 := by
  have h0 := st52_2_3 u v x y z hin0 hin1
  have h1 := st53_2_3 u v x y z hin1 h0
  have h2 := st54_2_3 u v x y z hin2 hin1
  have h3 := st55_2_3 u v x y z hin1 h2
  have h4 := st48_2_3 u v x y z h3 h1
  have h5 := st49_2_3 u v x y z h1 h4
  exact h5

lemma leaf13_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp148_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp17_2_3 u v x y z = 0)
    : PolyRefl.eval cp14_2_3 u v x y z = 0 := by
  have h0 := st56_2_3 u v x y z hin0 hin1
  have h1 := st57_2_3 u v x y z hin1 h0
  have h2 := st14_2_3 u v x y z hin1 hin2
  have h3 := st7_2_3 u v x y z h1 h2
  exact h3

lemma leaf14_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp152_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp158_2_3 u v x y z = 0)
    : PolyRefl.eval cp151_2_3 u v x y z = 0 := by
  have h0 := st58_2_3 u v x y z hin0 hin1
  have h1 := st59_2_3 u v x y z hin1 h0
  have h2 := st60_2_3 u v x y z hin2 hin1
  have h3 := st61_2_3 u v x y z h1 h2
  exact h3

lemma leaf15_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp164_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp167_2_3 u v x y z = 0)
    : PolyRefl.eval cp163_2_3 u v x y z = 0 := by
  have h0 := st62_2_3 u v x y z hin0 hin1
  have h1 := st63_2_3 u v x y z hin2 hin1
  have h2 := st64_2_3 u v x y z h1 h0
  have h3 := st65_2_3 u v x y z h0 h2
  exact h3

lemma leaf16_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp176_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp182_2_3 u v x y z = 0)
    : PolyRefl.eval cp175_2_3 u v x y z = 0 := by
  have h0 := st66_2_3 u v x y z hin0 hin1
  have h1 := st67_2_3 u v x y z hin1 h0
  have h2 := st68_2_3 u v x y z hin2 hin1
  have h3 := st69_2_3 u v x y z hin1 h2
  have h4 := st70_2_3 u v x y z h3 h1
  have h5 := st71_2_3 u v x y z h1 h4
  exact h5

lemma leaf17_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp194_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp200_2_3 u v x y z = 0)
    : PolyRefl.eval cp193_2_3 u v x y z = 0 := by
  have h0 := st72_2_3 u v x y z hin0 hin1
  have h1 := st73_2_3 u v x y z hin1 h0
  have h2 := st74_2_3 u v x y z hin2 hin1
  have h3 := st75_2_3 u v x y z hin1 h2
  have h4 := st76_2_3 u v x y z h3 h1
  exact h4

lemma leaf18_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp209_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp212_2_3 u v x y z = 0)
    : PolyRefl.eval cp208_2_3 u v x y z = 0 := by
  have h0 := st77_2_3 u v x y z hin0 hin1
  have h1 := st78_2_3 u v x y z hin2 hin1
  have h2 := st79_2_3 u v x y z hin1 h1
  have h3 := st80_2_3 u v x y z h2 h0
  exact h3

lemma leaf19_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp124_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp220_2_3 u v x y z = 0)
    : PolyRefl.eval cp118_2_3 u v x y z = 0 := by
  have h0 := st45_2_3 u v x y z hin0 hin1
  have h1 := st81_2_3 u v x y z hin2 hin1
  have h2 := st82_2_3 u v x y z hin1 h1
  have h3 := st46_2_3 u v x y z h2 h0
  have h4 := st47_2_3 u v x y z h0 h3
  exact h4

lemma leaf20_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp57_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp164_2_3 u v x y z = 0)
    : PolyRefl.eval cp224_2_3 u v x y z = 0 := by
  have h0 := st20_2_3 u v x y z hin0 hin1
  have h1 := st21_2_3 u v x y z hin1 h0
  have h2 := st62_2_3 u v x y z hin2 hin1
  have h3 := st83_2_3 u v x y z h1 h2
  exact h3

lemma leaf21_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp227_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp230_2_3 u v x y z = 0)
    : PolyRefl.eval cp208_2_3 u v x y z = 0 := by
  have h0 := st84_2_3 u v x y z hin0 hin1
  have h1 := st85_2_3 u v x y z hin2 hin1
  have h2 := st86_2_3 u v x y z hin1 h1
  have h3 := st87_2_3 u v x y z h2 h0
  exact h3

lemma leaf22_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp152_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp236_2_3 u v x y z = 0)
    : PolyRefl.eval cp235_2_3 u v x y z = 0 := by
  have h0 := st58_2_3 u v x y z hin0 hin1
  have h1 := st59_2_3 u v x y z hin1 h0
  have h2 := st88_2_3 u v x y z hin2 hin1
  have h3 := st89_2_3 u v x y z h1 h2
  have h4 := st90_2_3 u v x y z h2 h3
  exact h4

lemma leaf23_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp245_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp248_2_3 u v x y z = 0)
    : PolyRefl.eval cp244_2_3 u v x y z = 0 := by
  have h0 := st91_2_3 u v x y z hin0 hin1
  have h1 := st92_2_3 u v x y z hin2 hin1
  have h2 := st93_2_3 u v x y z hin1 h1
  have h3 := st94_2_3 u v x y z h2 h0
  have h4 := st95_2_3 u v x y z h0 h3
  exact h4

lemma leaf24_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp255_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp142_2_3 u v x y z = 0)
    : PolyRefl.eval cp254_2_3 u v x y z = 0 := by
  have h0 := st96_2_3 u v x y z hin0 hin1
  have h1 := st97_2_3 u v x y z hin1 h0
  have h2 := st52_2_3 u v x y z hin2 hin1
  have h3 := st53_2_3 u v x y z hin1 h2
  have h4 := st98_2_3 u v x y z h1 h3
  have h5 := st99_2_3 u v x y z h3 h4
  exact h5

lemma leaf25_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp263_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp268_2_3 u v x y z = 0)
    : PolyRefl.eval cp262_2_3 u v x y z = 0 := by
  have h0 := st100_2_3 u v x y z hin0 hin1
  have h1 := st101_2_3 u v x y z hin1 h0
  have h2 := st102_2_3 u v x y z hin2 hin1
  have h3 := st103_2_3 u v x y z hin1 h2
  have h4 := st104_2_3 u v x y z h1 h3
  exact h4

lemma leaf26_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp276_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp280_2_3 u v x y z = 0)
    : PolyRefl.eval cp275_2_3 u v x y z = 0 := by
  have h0 := st105_2_3 u v x y z hin0 hin1
  have h1 := st106_2_3 u v x y z hin1 h0
  have h2 := st107_2_3 u v x y z hin2 hin1
  have h3 := st108_2_3 u v x y z hin1 h2
  have h4 := st109_2_3 u v x y z h3 h1
  exact h4

lemma leaf27_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp2_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp287_2_3 u v x y z = 0)
    : PolyRefl.eval cp0_2_3 u v x y z = 0 := by
  have h0 := st0_2_3 u v x y z hin0 hin1
  have h1 := st110_2_3 u v x y z hin2 hin1
  have h2 := st111_2_3 u v x y z hin1 h1
  have h3 := st3_2_3 u v x y z h2 h0
  exact h3

lemma leaf28_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp34_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp119_2_3 u v x y z = 0)
    : PolyRefl.eval cp289_2_3 u v x y z = 0 := by
  have h0 := st10_2_3 u v x y z hin0 hin1
  have h1 := st11_2_3 u v x y z hin1 h0
  have h2 := st43_2_3 u v x y z hin2 hin1
  have h3 := st44_2_3 u v x y z hin1 h2
  have h4 := st112_2_3 u v x y z h3 h1
  have h5 := st113_2_3 u v x y z h1 h4
  exact h5

lemma leaf29_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp124_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp295_2_3 u v x y z = 0)
    : PolyRefl.eval cp294_2_3 u v x y z = 0 := by
  have h0 := st45_2_3 u v x y z hin0 hin1
  have h1 := st114_2_3 u v x y z hin2 hin1
  have h2 := st115_2_3 u v x y z h1 h0
  have h3 := st116_2_3 u v x y z h0 h2
  exact h3

lemma leaf30_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp176_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp304_2_3 u v x y z = 0)
    : PolyRefl.eval cp303_2_3 u v x y z = 0 := by
  have h0 := st66_2_3 u v x y z hin0 hin1
  have h1 := st67_2_3 u v x y z hin1 h0
  have h2 := st117_2_3 u v x y z hin2 hin1
  have h3 := st118_2_3 u v x y z h1 h2
  exact h3

lemma leaf31_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp119_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp164_2_3 u v x y z = 0)
    : PolyRefl.eval cp309_2_3 u v x y z = 0 := by
  have h0 := st43_2_3 u v x y z hin0 hin1
  have h1 := st44_2_3 u v x y z hin1 h0
  have h2 := st62_2_3 u v x y z hin2 hin1
  have h3 := st119_2_3 u v x y z h1 h2
  exact h3

lemma leaf32_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp220_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp34_2_3 u v x y z = 0)
    : PolyRefl.eval cp289_2_3 u v x y z = 0 := by
  have h0 := st81_2_3 u v x y z hin0 hin1
  have h1 := st82_2_3 u v x y z hin1 h0
  have h2 := st10_2_3 u v x y z hin2 hin1
  have h3 := st11_2_3 u v x y z hin1 h2
  have h4 := st112_2_3 u v x y z h1 h3
  have h5 := st113_2_3 u v x y z h3 h4
  exact h5

lemma leaf33_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp313_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp315_2_3 u v x y z = 0)
    : PolyRefl.eval cp312_2_3 u v x y z = 0 := by
  have h0 := st120_2_3 u v x y z hin0 hin1
  have h1 := st121_2_3 u v x y z hin1 h0
  have h2 := st122_2_3 u v x y z hin2 hin1
  have h3 := st123_2_3 u v x y z hin1 h2
  have h4 := st124_2_3 u v x y z h1 h3
  have h5 := st125_2_3 u v x y z h3 h4
  exact h5

lemma leaf34_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp87_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp105_2_3 u v x y z = 0)
    : PolyRefl.eval cp326_2_3 u v x y z = 0 := by
  have h0 := st30_2_3 u v x y z hin0 hin1
  have h1 := st31_2_3 u v x y z hin1 h0
  have h2 := st37_2_3 u v x y z hin2 hin1
  have h3 := st38_2_3 u v x y z hin1 h2
  have h4 := st126_2_3 u v x y z h1 h3
  have h5 := st127_2_3 u v x y z h3 h4
  exact h5

lemma leaf35_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp332_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp164_2_3 u v x y z = 0)
    : PolyRefl.eval cp331_2_3 u v x y z = 0 := by
  have h0 := st128_2_3 u v x y z hin0 hin1
  have h1 := st129_2_3 u v x y z hin1 h0
  have h2 := st62_2_3 u v x y z hin2 hin1
  have h3 := st130_2_3 u v x y z h1 h2
  exact h3

lemma leaf36_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp340_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp346_2_3 u v x y z = 0)
    : PolyRefl.eval cp339_2_3 u v x y z = 0 := by
  have h0 := st131_2_3 u v x y z hin0 hin1
  have h1 := st132_2_3 u v x y z hin1 h0
  have h2 := st133_2_3 u v x y z hin2 hin1
  have h3 := st134_2_3 u v x y z hin1 h2
  have h4 := st135_2_3 u v x y z h3 h1
  exact h4

lemma leaf37_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp105_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp355_2_3 u v x y z = 0)
    : PolyRefl.eval cp354_2_3 u v x y z = 0 := by
  have h0 := st37_2_3 u v x y z hin0 hin1
  have h1 := st38_2_3 u v x y z hin1 h0
  have h2 := st136_2_3 u v x y z hin2 hin1
  have h3 := st137_2_3 u v x y z hin1 h2
  have h4 := st138_2_3 u v x y z h3 h1
  have h5 := st139_2_3 u v x y z h1 h4
  exact h5

lemma leaf38_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp362_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp209_2_3 u v x y z = 0)
    : PolyRefl.eval cp361_2_3 u v x y z = 0 := by
  have h0 := st140_2_3 u v x y z hin0 hin1
  have h1 := st77_2_3 u v x y z hin2 hin1
  have h2 := st141_2_3 u v x y z h0 h1
  exact h2

lemma leaf39_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp16_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp366_2_3 u v x y z = 0)
    : PolyRefl.eval cp97_2_3 u v x y z = 0 := by
  have h0 := st4_2_3 u v x y z hin0 hin1
  have h1 := st142_2_3 u v x y z hin2 hin0
  have h2 := st143_2_3 u v x y z hin0 h1
  have h3 := st36_2_3 u v x y z h2 h0
  exact h3

lemma leaf40_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp124_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp28_2_3 u v x y z = 0)
    : PolyRefl.eval cp369_2_3 u v x y z = 0 := by
  have h0 := st45_2_3 u v x y z hin0 hin1
  have h1 := st8_2_3 u v x y z hin2 hin1
  have h2 := st9_2_3 u v x y z hin1 h1
  have h3 := st144_2_3 u v x y z h2 h0
  have h4 := st145_2_3 u v x y z h0 h3
  exact h4

lemma leaf41_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp304_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp248_2_3 u v x y z = 0)
    : PolyRefl.eval cp374_2_3 u v x y z = 0 := by
  have h0 := st117_2_3 u v x y z hin0 hin1
  have h1 := st92_2_3 u v x y z hin2 hin1
  have h2 := st93_2_3 u v x y z hin1 h1
  have h3 := st146_2_3 u v x y z h2 h0
  exact h3

lemma leaf42_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp378_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp384_2_3 u v x y z = 0)
    : PolyRefl.eval cp377_2_3 u v x y z = 0 := by
  have h0 := st147_2_3 u v x y z hin0 hin1
  have h1 := st148_2_3 u v x y z hin1 h0
  have h2 := st149_2_3 u v x y z hin2 hin1
  have h3 := st150_2_3 u v x y z hin1 h2
  have h4 := st151_2_3 u v x y z h3 h1
  exact h4

lemma leaf43_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp391_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp34_2_3 u v x y z = 0)
    : PolyRefl.eval cp27_2_3 u v x y z = 0 := by
  have h0 := st152_2_3 u v x y z hin0 hin1
  have h1 := st153_2_3 u v x y z hin1 h0
  have h2 := st10_2_3 u v x y z hin2 hin1
  have h3 := st11_2_3 u v x y z hin1 h2
  have h4 := st12_2_3 u v x y z h1 h3
  have h5 := st13_2_3 u v x y z h3 h4
  exact h5

lemma leaf44_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp164_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp119_2_3 u v x y z = 0)
    : PolyRefl.eval cp309_2_3 u v x y z = 0 := by
  have h0 := st62_2_3 u v x y z hin0 hin1
  have h1 := st43_2_3 u v x y z hin2 hin1
  have h2 := st44_2_3 u v x y z hin1 h1
  have h3 := st119_2_3 u v x y z h2 h0
  exact h3

lemma leaf45_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp164_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp57_2_3 u v x y z = 0)
    : PolyRefl.eval cp224_2_3 u v x y z = 0 := by
  have h0 := st62_2_3 u v x y z hin0 hin1
  have h1 := st20_2_3 u v x y z hin2 hin1
  have h2 := st21_2_3 u v x y z hin1 h1
  have h3 := st83_2_3 u v x y z h2 h0
  exact h3

lemma leaf46_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp57_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp395_2_3 u v x y z = 0)
    : PolyRefl.eval cp326_2_3 u v x y z = 0 := by
  have h0 := st20_2_3 u v x y z hin0 hin1
  have h1 := st21_2_3 u v x y z hin1 h0
  have h2 := st154_2_3 u v x y z hin2 hin1
  have h3 := st155_2_3 u v x y z hin1 h2
  have h4 := st126_2_3 u v x y z h3 h1
  have h5 := st127_2_3 u v x y z h1 h4
  exact h5

lemma leaf47_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp400_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp167_2_3 u v x y z = 0)
    : PolyRefl.eval cp399_2_3 u v x y z = 0 := by
  have h0 := st156_2_3 u v x y z hin0 hin1
  have h1 := st63_2_3 u v x y z hin2 hin1
  have h2 := st157_2_3 u v x y z h1 h0
  have h3 := st158_2_3 u v x y z h0 h2
  exact h3

lemma leaf48_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp391_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp53_2_3 u v x y z = 0)
    : PolyRefl.eval cp27_2_3 u v x y z = 0 := by
  have h0 := st152_2_3 u v x y z hin0 hin1
  have h1 := st153_2_3 u v x y z hin1 h0
  have h2 := st18_2_3 u v x y z hin2 hin1
  have h3 := st19_2_3 u v x y z hin1 h2
  have h4 := st12_2_3 u v x y z h1 h3
  have h5 := st13_2_3 u v x y z h3 h4
  exact h5

lemma leaf49_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp407_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp411_2_3 u v x y z = 0)
    : PolyRefl.eval cp377_2_3 u v x y z = 0 := by
  have h0 := st159_2_3 u v x y z hin0 hin1
  have h1 := st160_2_3 u v x y z hin1 h0
  have h2 := st161_2_3 u v x y z hin2 hin1
  have h3 := st162_2_3 u v x y z hin1 h2
  have h4 := st151_2_3 u v x y z h1 h3
  exact h4

lemma leaf50_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp57_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp34_2_3 u v x y z = 0)
    : PolyRefl.eval cp413_2_3 u v x y z = 0 := by
  have h0 := st20_2_3 u v x y z hin0 hin1
  have h1 := st21_2_3 u v x y z hin1 h0
  have h2 := st10_2_3 u v x y z hin2 hin1
  have h3 := st11_2_3 u v x y z hin1 h2
  have h4 := st163_2_3 u v x y z h1 h3
  have h5 := st164_2_3 u v x y z h3 h4
  exact h5

lemma leaf51_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp411_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp418_2_3 u v x y z = 0)
    : PolyRefl.eval cp417_2_3 u v x y z = 0 := by
  have h0 := st161_2_3 u v x y z hin0 hin1
  have h1 := st162_2_3 u v x y z hin1 h0
  have h2 := st165_2_3 u v x y z hin2 hin1
  have h3 := st166_2_3 u v x y z hin1 h2
  have h4 := st167_2_3 u v x y z h3 h1
  exact h4

lemma leaf52_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp426_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp142_2_3 u v x y z = 0)
    : PolyRefl.eval cp425_2_3 u v x y z = 0 := by
  have h0 := st168_2_3 u v x y z hin0 hin1
  have h1 := st52_2_3 u v x y z hin2 hin1
  have h2 := st53_2_3 u v x y z hin1 h1
  have h3 := st169_2_3 u v x y z h2 h0
  have h4 := st170_2_3 u v x y z h0 h3
  exact h4

lemma leaf53_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp212_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp209_2_3 u v x y z = 0)
    : PolyRefl.eval cp208_2_3 u v x y z = 0 := by
  have h0 := st78_2_3 u v x y z hin0 hin1
  have h1 := st79_2_3 u v x y z hin1 h0
  have h2 := st77_2_3 u v x y z hin2 hin1
  have h3 := st80_2_3 u v x y z h1 h2
  exact h3

lemma leaf54_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp313_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp304_2_3 u v x y z = 0)
    : PolyRefl.eval cp303_2_3 u v x y z = 0 := by
  have h0 := st120_2_3 u v x y z hin0 hin1
  have h1 := st121_2_3 u v x y z hin1 h0
  have h2 := st117_2_3 u v x y z hin2 hin1
  have h3 := st118_2_3 u v x y z h1 h2
  exact h3

lemma leaf55_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp435_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp441_2_3 u v x y z = 0)
    : PolyRefl.eval cp434_2_3 u v x y z = 0 := by
  have h0 := st171_2_3 u v x y z hin0 hin1
  have h1 := st172_2_3 u v x y z hin1 h0
  have h2 := st173_2_3 u v x y z hin1 hin2
  have h3 := st174_2_3 u v x y z h1 h2
  exact h3

lemma leaf56_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp119_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp400_2_3 u v x y z = 0)
    : PolyRefl.eval cp445_2_3 u v x y z = 0 := by
  have h0 := st43_2_3 u v x y z hin0 hin1
  have h1 := st44_2_3 u v x y z hin1 h0
  have h2 := st156_2_3 u v x y z hin2 hin1
  have h3 := st175_2_3 u v x y z h1 h2
  exact h3

lemma leaf57_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp449_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp227_2_3 u v x y z = 0)
    : PolyRefl.eval cp448_2_3 u v x y z = 0 := by
  have h0 := st176_2_3 u v x y z hin0 hin1
  have h1 := st177_2_3 u v x y z hin1 h0
  have h2 := st84_2_3 u v x y z hin2 hin1
  have h3 := st178_2_3 u v x y z h1 h2
  exact h3

lemma leaf58_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp457_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp152_2_3 u v x y z = 0)
    : PolyRefl.eval cp456_2_3 u v x y z = 0 := by
  have h0 := st179_2_3 u v x y z hin0 hin1
  have h1 := st180_2_3 u v x y z hin1 h0
  have h2 := st58_2_3 u v x y z hin2 hin1
  have h3 := st59_2_3 u v x y z hin1 h2
  have h4 := st181_2_3 u v x y z h3 h1
  have h5 := st182_2_3 u v x y z h1 h4
  exact h5

lemma leaf59_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp17_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp466_2_3 u v x y z = 0)
    : PolyRefl.eval cp434_2_3 u v x y z = 0 := by
  have h0 := st14_2_3 u v x y z hin0 hin1
  have h1 := st183_2_3 u v x y z hin2 hin0
  have h2 := st184_2_3 u v x y z hin0 h1
  have h3 := st185_2_3 u v x y z h2 h0
  exact h3

lemma leaf60_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp105_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp34_2_3 u v x y z = 0)
    : PolyRefl.eval cp413_2_3 u v x y z = 0 := by
  have h0 := st37_2_3 u v x y z hin0 hin1
  have h1 := st38_2_3 u v x y z hin1 h0
  have h2 := st10_2_3 u v x y z hin2 hin1
  have h3 := st11_2_3 u v x y z hin1 h2
  have h4 := st163_2_3 u v x y z h1 h3
  have h5 := st164_2_3 u v x y z h3 h4
  exact h5

lemma leaf61_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp53_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp119_2_3 u v x y z = 0)
    : PolyRefl.eval cp289_2_3 u v x y z = 0 := by
  have h0 := st18_2_3 u v x y z hin0 hin1
  have h1 := st19_2_3 u v x y z hin1 h0
  have h2 := st43_2_3 u v x y z hin2 hin1
  have h3 := st44_2_3 u v x y z hin1 h2
  have h4 := st112_2_3 u v x y z h3 h1
  have h5 := st113_2_3 u v x y z h1 h4
  exact h5

lemma leaf62_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp472_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp378_2_3 u v x y z = 0)
    : PolyRefl.eval cp471_2_3 u v x y z = 0 := by
  have h0 := st186_2_3 u v x y z hin0 hin1
  have h1 := st187_2_3 u v x y z hin1 h0
  have h2 := st147_2_3 u v x y z hin2 hin1
  have h3 := st148_2_3 u v x y z hin1 h2
  have h4 := st188_2_3 u v x y z h1 h3
  exact h4

lemma leaf63_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp176_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp478_2_3 u v x y z = 0)
    : PolyRefl.eval cp175_2_3 u v x y z = 0 := by
  have h0 := st66_2_3 u v x y z hin0 hin1
  have h1 := st67_2_3 u v x y z hin1 h0
  have h2 := st189_2_3 u v x y z hin2 hin1
  have h3 := st190_2_3 u v x y z hin1 h2
  have h4 := st70_2_3 u v x y z h3 h1
  have h5 := st71_2_3 u v x y z h1 h4
  exact h5

lemma leaf64_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp105_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp144_2_3 u v x y z = 0)
    : PolyRefl.eval cp104_2_3 u v x y z = 0 := by
  have h0 := st37_2_3 u v x y z hin0 hin1
  have h1 := st38_2_3 u v x y z hin1 h0
  have h2 := st54_2_3 u v x y z hin2 hin1
  have h3 := st55_2_3 u v x y z hin1 h2
  have h4 := st41_2_3 u v x y z h3 h1
  have h5 := st42_2_3 u v x y z h1 h4
  exact h5

lemma leaf65_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp57_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp87_2_3 u v x y z = 0)
    : PolyRefl.eval cp326_2_3 u v x y z = 0 := by
  have h0 := st20_2_3 u v x y z hin0 hin1
  have h1 := st21_2_3 u v x y z hin1 h0
  have h2 := st30_2_3 u v x y z hin2 hin1
  have h3 := st31_2_3 u v x y z hin1 h2
  have h4 := st126_2_3 u v x y z h3 h1
  have h5 := st127_2_3 u v x y z h1 h4
  exact h5

lemma leaf66_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp483_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp182_2_3 u v x y z = 0)
    : PolyRefl.eval cp482_2_3 u v x y z = 0 := by
  have h0 := st191_2_3 u v x y z hin0 hin1
  have h1 := st192_2_3 u v x y z hin1 h0
  have h2 := st68_2_3 u v x y z hin2 hin1
  have h3 := st69_2_3 u v x y z hin1 h2
  have h4 := st193_2_3 u v x y z h3 h1
  have h5 := st194_2_3 u v x y z h1 h4
  exact h5

lemma leaf67_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp494_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp6_2_3 u v x y z = 0)
    : PolyRefl.eval cp0_2_3 u v x y z = 0 := by
  have h0 := st195_2_3 u v x y z hin0 hin1
  have h1 := st1_2_3 u v x y z hin2 hin1
  have h2 := st2_2_3 u v x y z hin1 h1
  have h3 := st196_2_3 u v x y z h2 h0
  exact h3

lemma leaf68_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp167_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp400_2_3 u v x y z = 0)
    : PolyRefl.eval cp399_2_3 u v x y z = 0 := by
  have h0 := st63_2_3 u v x y z hin0 hin1
  have h1 := st156_2_3 u v x y z hin2 hin1
  have h2 := st157_2_3 u v x y z h0 h1
  have h3 := st158_2_3 u v x y z h1 h2
  exact h3

lemma leaf69_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp34_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp332_2_3 u v x y z = 0)
    : PolyRefl.eval cp498_2_3 u v x y z = 0 := by
  have h0 := st10_2_3 u v x y z hin0 hin1
  have h1 := st11_2_3 u v x y z hin1 h0
  have h2 := st128_2_3 u v x y z hin2 hin1
  have h3 := st129_2_3 u v x y z hin1 h2
  have h4 := st197_2_3 u v x y z h3 h1
  have h5 := st198_2_3 u v x y z h1 h4
  exact h5

lemma leaf70_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp53_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp105_2_3 u v x y z = 0)
    : PolyRefl.eval cp52_2_3 u v x y z = 0 := by
  have h0 := st18_2_3 u v x y z hin0 hin1
  have h1 := st19_2_3 u v x y z hin1 h0
  have h2 := st37_2_3 u v x y z hin2 hin1
  have h3 := st38_2_3 u v x y z hin1 h2
  have h4 := st22_2_3 u v x y z h1 h3
  have h5 := st23_2_3 u v x y z h3 h4
  exact h5

lemma leaf71_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp503_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp505_2_3 u v x y z = 0)
    : PolyRefl.eval cp45_2_3 u v x y z = 0 := by
  have h0 := st199_2_3 u v x y z hin0 hin1
  have h1 := st200_2_3 u v x y z hin2 hin0
  have h2 := st201_2_3 u v x y z hin0 h1
  have h3 := st202_2_3 u v x y z h2 h0
  exact h3

lemma leaf72_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp158_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp152_2_3 u v x y z = 0)
    : PolyRefl.eval cp151_2_3 u v x y z = 0 := by
  have h0 := st60_2_3 u v x y z hin0 hin1
  have h1 := st58_2_3 u v x y z hin2 hin1
  have h2 := st59_2_3 u v x y z hin1 h1
  have h3 := st61_2_3 u v x y z h2 h0
  exact h3

lemma leaf73_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp255_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp105_2_3 u v x y z = 0)
    : PolyRefl.eval cp354_2_3 u v x y z = 0 := by
  have h0 := st96_2_3 u v x y z hin0 hin1
  have h1 := st97_2_3 u v x y z hin1 h0
  have h2 := st37_2_3 u v x y z hin2 hin1
  have h3 := st38_2_3 u v x y z hin1 h2
  have h4 := st138_2_3 u v x y z h1 h3
  have h5 := st139_2_3 u v x y z h3 h4
  exact h5

lemma leaf74_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp255_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp69_2_3 u v x y z = 0)
    : PolyRefl.eval cp254_2_3 u v x y z = 0 := by
  have h0 := st96_2_3 u v x y z hin0 hin1
  have h1 := st97_2_3 u v x y z hin1 h0
  have h2 := st24_2_3 u v x y z hin2 hin1
  have h3 := st25_2_3 u v x y z hin1 h2
  have h4 := st98_2_3 u v x y z h1 h3
  have h5 := st99_2_3 u v x y z h3 h4
  exact h5

lemma leaf75_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp418_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp411_2_3 u v x y z = 0)
    : PolyRefl.eval cp417_2_3 u v x y z = 0 := by
  have h0 := st165_2_3 u v x y z hin0 hin1
  have h1 := st166_2_3 u v x y z hin1 h0
  have h2 := st161_2_3 u v x y z hin2 hin1
  have h3 := st162_2_3 u v x y z hin1 h2
  have h4 := st167_2_3 u v x y z h1 h3
  exact h4

lemma leaf76_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp164_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp28_2_3 u v x y z = 0)
    : PolyRefl.eval cp510_2_3 u v x y z = 0 := by
  have h0 := st62_2_3 u v x y z hin0 hin1
  have h1 := st8_2_3 u v x y z hin2 hin1
  have h2 := st9_2_3 u v x y z hin1 h1
  have h3 := st203_2_3 u v x y z h2 h0
  exact h3

lemma leaf77_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp152_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp315_2_3 u v x y z = 0)
    : PolyRefl.eval cp456_2_3 u v x y z = 0 := by
  have h0 := st58_2_3 u v x y z hin0 hin1
  have h1 := st59_2_3 u v x y z hin1 h0
  have h2 := st122_2_3 u v x y z hin2 hin1
  have h3 := st123_2_3 u v x y z hin1 h2
  have h4 := st181_2_3 u v x y z h1 h3
  have h5 := st182_2_3 u v x y z h3 h4
  exact h5

lemma leaf78_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp287_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp494_2_3 u v x y z = 0)
    : PolyRefl.eval cp0_2_3 u v x y z = 0 := by
  have h0 := st110_2_3 u v x y z hin0 hin1
  have h1 := st111_2_3 u v x y z hin1 h0
  have h2 := st195_2_3 u v x y z hin2 hin1
  have h3 := st196_2_3 u v x y z h1 h2
  exact h3

lemma leaf79_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp287_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp2_2_3 u v x y z = 0)
    : PolyRefl.eval cp0_2_3 u v x y z = 0 := by
  have h0 := st110_2_3 u v x y z hin0 hin1
  have h1 := st111_2_3 u v x y z hin1 h0
  have h2 := st0_2_3 u v x y z hin2 hin1
  have h3 := st3_2_3 u v x y z h1 h2
  exact h3

lemma leaf80_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp340_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp512_2_3 u v x y z = 0)
    : PolyRefl.eval cp377_2_3 u v x y z = 0 := by
  have h0 := st131_2_3 u v x y z hin0 hin1
  have h1 := st132_2_3 u v x y z hin1 h0
  have h2 := st204_2_3 u v x y z hin2 hin1
  have h3 := st205_2_3 u v x y z hin1 h2
  have h4 := st206_2_3 u v x y z h3 h1
  exact h4

lemma leaf81_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp209_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp519_2_3 u v x y z = 0)
    : PolyRefl.eval cp518_2_3 u v x y z = 0 := by
  have h0 := st77_2_3 u v x y z hin0 hin1
  have h1 := st207_2_3 u v x y z hin2 hin1
  have h2 := st208_2_3 u v x y z hin1 h1
  have h3 := st209_2_3 u v x y z h2 h0
  exact h3

lemma leaf82_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp34_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp167_2_3 u v x y z = 0)
    : PolyRefl.eval cp525_2_3 u v x y z = 0 := by
  have h0 := st10_2_3 u v x y z hin0 hin1
  have h1 := st11_2_3 u v x y z hin1 h0
  have h2 := st63_2_3 u v x y z hin2 hin1
  have h3 := st210_2_3 u v x y z h1 h2
  have h4 := st211_2_3 u v x y z h2 h3
  have h5 := st212_2_3 u v x y z h3 h4
  exact h5

lemma leaf83_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp534_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp503_2_3 u v x y z = 0)
    : PolyRefl.eval cp97_2_3 u v x y z = 0 := by
  have h0 := st213_2_3 u v x y z hin0 hin1
  have h1 := st214_2_3 u v x y z hin1 h0
  have h2 := st199_2_3 u v x y z hin1 hin2
  have h3 := st215_2_3 u v x y z h1 h2
  exact h3

lemma leaf84_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp164_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp105_2_3 u v x y z = 0)
    : PolyRefl.eval cp224_2_3 u v x y z = 0 := by
  have h0 := st62_2_3 u v x y z hin0 hin1
  have h1 := st37_2_3 u v x y z hin2 hin1
  have h2 := st38_2_3 u v x y z hin1 h1
  have h3 := st83_2_3 u v x y z h2 h0
  exact h3

lemma leaf85_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp340_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp539_2_3 u v x y z = 0)
    : PolyRefl.eval cp471_2_3 u v x y z = 0 := by
  have h0 := st131_2_3 u v x y z hin0 hin1
  have h1 := st132_2_3 u v x y z hin1 h0
  have h2 := st216_2_3 u v x y z hin2 hin1
  have h3 := st217_2_3 u v x y z hin1 h2
  have h4 := st218_2_3 u v x y z h3 h1
  exact h4

lemma leaf86_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp105_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp545_2_3 u v x y z = 0)
    : PolyRefl.eval cp137_2_3 u v x y z = 0 := by
  have h0 := st37_2_3 u v x y z hin0 hin1
  have h1 := st38_2_3 u v x y z hin1 h0
  have h2 := st219_2_3 u v x y z hin2 hin1
  have h3 := st220_2_3 u v x y z hin1 h2
  have h4 := st50_2_3 u v x y z h3 h1
  have h5 := st51_2_3 u v x y z h1 h4
  exact h5

lemma leaf87_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp295_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp124_2_3 u v x y z = 0)
    : PolyRefl.eval cp294_2_3 u v x y z = 0 := by
  have h0 := st114_2_3 u v x y z hin0 hin1
  have h1 := st45_2_3 u v x y z hin2 hin1
  have h2 := st115_2_3 u v x y z h0 h1
  have h3 := st116_2_3 u v x y z h1 h2
  exact h3

lemma leaf88_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp220_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp426_2_3 u v x y z = 0)
    : PolyRefl.eval cp549_2_3 u v x y z = 0 := by
  have h0 := st81_2_3 u v x y z hin0 hin1
  have h1 := st82_2_3 u v x y z hin1 h0
  have h2 := st168_2_3 u v x y z hin2 hin1
  have h3 := st221_2_3 u v x y z h1 h2
  have h4 := st222_2_3 u v x y z h2 h3
  exact h4

lemma leaf89_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp46_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp17_2_3 u v x y z = 0)
    : PolyRefl.eval cp45_2_3 u v x y z = 0 := by
  have h0 := st15_2_3 u v x y z hin0 hin1
  have h1 := st16_2_3 u v x y z hin1 h0
  have h2 := st14_2_3 u v x y z hin1 hin2
  have h3 := st17_2_3 u v x y z h1 h2
  exact h3

lemma leaf90_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp494_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp287_2_3 u v x y z = 0)
    : PolyRefl.eval cp0_2_3 u v x y z = 0 := by
  have h0 := st195_2_3 u v x y z hin0 hin1
  have h1 := st110_2_3 u v x y z hin2 hin1
  have h2 := st111_2_3 u v x y z hin1 h1
  have h3 := st196_2_3 u v x y z h2 h0
  exact h3

lemma leaf91_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp554_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp557_2_3 u v x y z = 0)
    : PolyRefl.eval cp377_2_3 u v x y z = 0 := by
  have h0 := st223_2_3 u v x y z hin0 hin1
  have h1 := st224_2_3 u v x y z hin1 h0
  have h2 := st225_2_3 u v x y z hin2 hin1
  have h3 := st226_2_3 u v x y z hin1 h2
  have h4 := st206_2_3 u v x y z h3 h1
  exact h4

lemma leaf92_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp561_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp566_2_3 u v x y z = 0)
    : PolyRefl.eval cp275_2_3 u v x y z = 0 := by
  have h0 := st227_2_3 u v x y z hin0 hin1
  have h1 := st228_2_3 u v x y z hin1 h0
  have h2 := st229_2_3 u v x y z hin2 hin1
  have h3 := st230_2_3 u v x y z hin1 h2
  have h4 := st231_2_3 u v x y z h1 h3
  exact h4

lemma leaf93_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp355_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp105_2_3 u v x y z = 0)
    : PolyRefl.eval cp354_2_3 u v x y z = 0 := by
  have h0 := st136_2_3 u v x y z hin0 hin1
  have h1 := st137_2_3 u v x y z hin1 h0
  have h2 := st37_2_3 u v x y z hin2 hin1
  have h3 := st38_2_3 u v x y z hin1 h2
  have h4 := st138_2_3 u v x y z h1 h3
  have h5 := st139_2_3 u v x y z h3 h4
  exact h5

lemma leaf94_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp69_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp255_2_3 u v x y z = 0)
    : PolyRefl.eval cp254_2_3 u v x y z = 0 := by
  have h0 := st24_2_3 u v x y z hin0 hin1
  have h1 := st25_2_3 u v x y z hin1 h0
  have h2 := st96_2_3 u v x y z hin2 hin1
  have h3 := st97_2_3 u v x y z hin1 h2
  have h4 := st98_2_3 u v x y z h3 h1
  have h5 := st99_2_3 u v x y z h1 h4
  exact h5

lemma leaf95_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp569_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp34_2_3 u v x y z = 0)
    : PolyRefl.eval cp498_2_3 u v x y z = 0 := by
  have h0 := st232_2_3 u v x y z hin0 hin1
  have h1 := st233_2_3 u v x y z hin1 h0
  have h2 := st10_2_3 u v x y z hin2 hin1
  have h3 := st11_2_3 u v x y z hin1 h2
  have h4 := st197_2_3 u v x y z h1 h3
  have h5 := st198_2_3 u v x y z h3 h4
  exact h5

lemma leaf96_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp227_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp449_2_3 u v x y z = 0)
    : PolyRefl.eval cp448_2_3 u v x y z = 0 := by
  have h0 := st84_2_3 u v x y z hin0 hin1
  have h1 := st176_2_3 u v x y z hin2 hin1
  have h2 := st177_2_3 u v x y z hin1 h1
  have h3 := st178_2_3 u v x y z h2 h0
  exact h3

lemma leaf97_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp571_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp554_2_3 u v x y z = 0)
    : PolyRefl.eval cp471_2_3 u v x y z = 0 := by
  have h0 := st234_2_3 u v x y z hin0 hin1
  have h1 := st235_2_3 u v x y z hin1 h0
  have h2 := st223_2_3 u v x y z hin2 hin1
  have h3 := st224_2_3 u v x y z hin1 h2
  have h4 := st218_2_3 u v x y z h1 h3
  exact h4

lemma leaf98_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp220_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp124_2_3 u v x y z = 0)
    : PolyRefl.eval cp118_2_3 u v x y z = 0 := by
  have h0 := st81_2_3 u v x y z hin0 hin1
  have h1 := st82_2_3 u v x y z hin1 h0
  have h2 := st45_2_3 u v x y z hin2 hin1
  have h3 := st46_2_3 u v x y z h1 h2
  have h4 := st47_2_3 u v x y z h2 h3
  exact h4

lemma leaf99_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp566_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp561_2_3 u v x y z = 0)
    : PolyRefl.eval cp275_2_3 u v x y z = 0 := by
  have h0 := st229_2_3 u v x y z hin0 hin1
  have h1 := st230_2_3 u v x y z hin1 h0
  have h2 := st227_2_3 u v x y z hin2 hin1
  have h3 := st228_2_3 u v x y z hin1 h2
  have h4 := st231_2_3 u v x y z h3 h1
  exact h4

lemma leaf100_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp200_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp194_2_3 u v x y z = 0)
    : PolyRefl.eval cp193_2_3 u v x y z = 0 := by
  have h0 := st74_2_3 u v x y z hin0 hin1
  have h1 := st75_2_3 u v x y z hin1 h0
  have h2 := st72_2_3 u v x y z hin2 hin1
  have h3 := st73_2_3 u v x y z hin1 h2
  have h4 := st76_2_3 u v x y z h1 h3
  exact h4

lemma leaf101_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp194_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp575_2_3 u v x y z = 0)
    : PolyRefl.eval cp275_2_3 u v x y z = 0 := by
  have h0 := st72_2_3 u v x y z hin0 hin1
  have h1 := st73_2_3 u v x y z hin1 h0
  have h2 := st236_2_3 u v x y z hin2 hin1
  have h3 := st237_2_3 u v x y z hin1 h2
  have h4 := st231_2_3 u v x y z h3 h1
  exact h4

lemma leaf102_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp230_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp227_2_3 u v x y z = 0)
    : PolyRefl.eval cp208_2_3 u v x y z = 0 := by
  have h0 := st85_2_3 u v x y z hin0 hin1
  have h1 := st86_2_3 u v x y z hin1 h0
  have h2 := st84_2_3 u v x y z hin2 hin1
  have h3 := st87_2_3 u v x y z h1 h2
  exact h3

lemma leaf103_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp400_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp569_2_3 u v x y z = 0)
    : PolyRefl.eval cp579_2_3 u v x y z = 0 := by
  have h0 := st156_2_3 u v x y z hin0 hin1
  have h1 := st232_2_3 u v x y z hin2 hin1
  have h2 := st233_2_3 u v x y z hin1 h1
  have h3 := st238_2_3 u v x y z h2 h0
  exact h3

lemma leaf104_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp236_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp152_2_3 u v x y z = 0)
    : PolyRefl.eval cp235_2_3 u v x y z = 0 := by
  have h0 := st88_2_3 u v x y z hin0 hin1
  have h1 := st58_2_3 u v x y z hin2 hin1
  have h2 := st59_2_3 u v x y z hin1 h1
  have h3 := st89_2_3 u v x y z h2 h0
  have h4 := st90_2_3 u v x y z h0 h3
  exact h4

lemma leaf105_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp483_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp245_2_3 u v x y z = 0)
    : PolyRefl.eval cp581_2_3 u v x y z = 0 := by
  have h0 := st191_2_3 u v x y z hin0 hin1
  have h1 := st192_2_3 u v x y z hin1 h0
  have h2 := st91_2_3 u v x y z hin2 hin1
  have h3 := st239_2_3 u v x y z h1 h2
  have h4 := st240_2_3 u v x y z h2 h3
  exact h4

lemma leaf106_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp220_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp164_2_3 u v x y z = 0)
    : PolyRefl.eval cp309_2_3 u v x y z = 0 := by
  have h0 := st81_2_3 u v x y z hin0 hin1
  have h1 := st82_2_3 u v x y z hin1 h0
  have h2 := st62_2_3 u v x y z hin2 hin1
  have h3 := st119_2_3 u v x y z h1 h2
  exact h3

lemma leaf107_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp57_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp107_2_3 u v x y z = 0)
    : PolyRefl.eval cp104_2_3 u v x y z = 0 := by
  have h0 := st20_2_3 u v x y z hin0 hin1
  have h1 := st21_2_3 u v x y z hin1 h0
  have h2 := st39_2_3 u v x y z hin2 hin1
  have h3 := st40_2_3 u v x y z hin1 h2
  have h4 := st41_2_3 u v x y z h3 h1
  have h5 := st42_2_3 u v x y z h1 h4
  exact h5

lemma leaf108_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp182_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp483_2_3 u v x y z = 0)
    : PolyRefl.eval cp482_2_3 u v x y z = 0 := by
  have h0 := st68_2_3 u v x y z hin0 hin1
  have h1 := st69_2_3 u v x y z hin1 h0
  have h2 := st191_2_3 u v x y z hin2 hin1
  have h3 := st192_2_3 u v x y z hin1 h2
  have h4 := st193_2_3 u v x y z h1 h3
  have h5 := st194_2_3 u v x y z h3 h4
  exact h5

lemma leaf109_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp105_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp255_2_3 u v x y z = 0)
    : PolyRefl.eval cp354_2_3 u v x y z = 0 := by
  have h0 := st37_2_3 u v x y z hin0 hin1
  have h1 := st38_2_3 u v x y z hin1 h0
  have h2 := st96_2_3 u v x y z hin2 hin1
  have h3 := st97_2_3 u v x y z hin1 h2
  have h4 := st138_2_3 u v x y z h3 h1
  have h5 := st139_2_3 u v x y z h1 h4
  exact h5

lemma leaf110_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp75_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp57_2_3 u v x y z = 0)
    : PolyRefl.eval cp137_2_3 u v x y z = 0 := by
  have h0 := st26_2_3 u v x y z hin0 hin1
  have h1 := st27_2_3 u v x y z hin1 h0
  have h2 := st20_2_3 u v x y z hin2 hin1
  have h3 := st21_2_3 u v x y z hin1 h2
  have h4 := st50_2_3 u v x y z h1 h3
  have h5 := st51_2_3 u v x y z h3 h4
  exact h5

lemma leaf111_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp107_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp105_2_3 u v x y z = 0)
    : PolyRefl.eval cp104_2_3 u v x y z = 0 := by
  have h0 := st39_2_3 u v x y z hin0 hin1
  have h1 := st40_2_3 u v x y z hin1 h0
  have h2 := st37_2_3 u v x y z hin2 hin1
  have h3 := st38_2_3 u v x y z hin1 h2
  have h4 := st41_2_3 u v x y z h1 h3
  have h5 := st42_2_3 u v x y z h3 h4
  exact h5

lemma leaf112_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp220_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp400_2_3 u v x y z = 0)
    : PolyRefl.eval cp445_2_3 u v x y z = 0 := by
  have h0 := st81_2_3 u v x y z hin0 hin1
  have h1 := st82_2_3 u v x y z hin1 h0
  have h2 := st156_2_3 u v x y z hin2 hin1
  have h3 := st175_2_3 u v x y z h1 h2
  exact h3

lemma leaf113_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp212_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp227_2_3 u v x y z = 0)
    : PolyRefl.eval cp208_2_3 u v x y z = 0 := by
  have h0 := st78_2_3 u v x y z hin0 hin1
  have h1 := st79_2_3 u v x y z hin1 h0
  have h2 := st84_2_3 u v x y z hin2 hin1
  have h3 := st87_2_3 u v x y z h1 h2
  exact h3

lemma leaf114_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp236_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp483_2_3 u v x y z = 0)
    : PolyRefl.eval cp587_2_3 u v x y z = 0 := by
  have h0 := st88_2_3 u v x y z hin0 hin1
  have h1 := st191_2_3 u v x y z hin2 hin1
  have h2 := st192_2_3 u v x y z hin1 h1
  have h3 := st241_2_3 u v x y z h2 h0
  have h4 := st242_2_3 u v x y z h0 h3
  exact h4

lemma leaf115_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp119_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp426_2_3 u v x y z = 0)
    : PolyRefl.eval cp549_2_3 u v x y z = 0 := by
  have h0 := st43_2_3 u v x y z hin0 hin1
  have h1 := st44_2_3 u v x y z hin1 h0
  have h2 := st168_2_3 u v x y z hin2 hin1
  have h3 := st221_2_3 u v x y z h1 h2
  have h4 := st222_2_3 u v x y z h2 h3
  exact h4

lemma leaf116_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp227_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp592_2_3 u v x y z = 0)
    : PolyRefl.eval cp518_2_3 u v x y z = 0 := by
  have h0 := st84_2_3 u v x y z hin0 hin1
  have h1 := st243_2_3 u v x y z hin2 hin1
  have h2 := st244_2_3 u v x y z hin1 h1
  have h3 := st245_2_3 u v x y z h2 h0
  exact h3

lemma leaf117_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp313_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp158_2_3 u v x y z = 0)
    : PolyRefl.eval cp597_2_3 u v x y z = 0 := by
  have h0 := st120_2_3 u v x y z hin0 hin1
  have h1 := st121_2_3 u v x y z hin1 h0
  have h2 := st60_2_3 u v x y z hin2 hin1
  have h3 := st246_2_3 u v x y z h1 h2
  exact h3

lemma leaf118_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp569_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp400_2_3 u v x y z = 0)
    : PolyRefl.eval cp579_2_3 u v x y z = 0 := by
  have h0 := st232_2_3 u v x y z hin0 hin1
  have h1 := st233_2_3 u v x y z hin1 h0
  have h2 := st156_2_3 u v x y z hin2 hin1
  have h3 := st238_2_3 u v x y z h1 h2
  exact h3

lemma leaf119_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp400_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp220_2_3 u v x y z = 0)
    : PolyRefl.eval cp445_2_3 u v x y z = 0 := by
  have h0 := st156_2_3 u v x y z hin0 hin1
  have h1 := st81_2_3 u v x y z hin2 hin1
  have h2 := st82_2_3 u v x y z hin1 h1
  have h3 := st175_2_3 u v x y z h2 h0
  exact h3

lemma leaf120_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp34_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp391_2_3 u v x y z = 0)
    : PolyRefl.eval cp27_2_3 u v x y z = 0 := by
  have h0 := st10_2_3 u v x y z hin0 hin1
  have h1 := st11_2_3 u v x y z hin1 h0
  have h2 := st152_2_3 u v x y z hin2 hin1
  have h3 := st153_2_3 u v x y z hin1 h2
  have h4 := st12_2_3 u v x y z h3 h1
  have h5 := st13_2_3 u v x y z h1 h4
  exact h5

lemma leaf121_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp426_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp220_2_3 u v x y z = 0)
    : PolyRefl.eval cp549_2_3 u v x y z = 0 := by
  have h0 := st168_2_3 u v x y z hin0 hin1
  have h1 := st81_2_3 u v x y z hin2 hin1
  have h2 := st82_2_3 u v x y z hin1 h1
  have h3 := st221_2_3 u v x y z h2 h0
  have h4 := st222_2_3 u v x y z h0 h3
  exact h4

lemma leaf122_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp34_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp105_2_3 u v x y z = 0)
    : PolyRefl.eval cp52_2_3 u v x y z = 0 := by
  have h0 := st10_2_3 u v x y z hin0 hin1
  have h1 := st11_2_3 u v x y z hin1 h0
  have h2 := st37_2_3 u v x y z hin2 hin1
  have h3 := st38_2_3 u v x y z hin1 h2
  have h4 := st22_2_3 u v x y z h1 h3
  have h5 := st23_2_3 u v x y z h3 h4
  exact h5

lemma leaf123_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp483_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp236_2_3 u v x y z = 0)
    : PolyRefl.eval cp587_2_3 u v x y z = 0 := by
  have h0 := st191_2_3 u v x y z hin0 hin1
  have h1 := st192_2_3 u v x y z hin1 h0
  have h2 := st88_2_3 u v x y z hin2 hin1
  have h3 := st241_2_3 u v x y z h1 h2
  have h4 := st242_2_3 u v x y z h2 h3
  exact h4

lemma leaf124_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp28_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp53_2_3 u v x y z = 0)
    : PolyRefl.eval cp27_2_3 u v x y z = 0 := by
  have h0 := st8_2_3 u v x y z hin0 hin1
  have h1 := st9_2_3 u v x y z hin1 h0
  have h2 := st18_2_3 u v x y z hin2 hin1
  have h3 := st19_2_3 u v x y z hin1 h2
  have h4 := st12_2_3 u v x y z h1 h3
  have h5 := st13_2_3 u v x y z h3 h4
  exact h5

lemma leaf125_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp69_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp34_2_3 u v x y z = 0)
    : PolyRefl.eval cp600_2_3 u v x y z = 0 := by
  have h0 := st24_2_3 u v x y z hin0 hin1
  have h1 := st25_2_3 u v x y z hin1 h0
  have h2 := st10_2_3 u v x y z hin2 hin1
  have h3 := st11_2_3 u v x y z hin1 h2
  have h4 := st247_2_3 u v x y z h1 h3
  exact h4

lemma leaf126_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp602_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp554_2_3 u v x y z = 0)
    : PolyRefl.eval cp417_2_3 u v x y z = 0 := by
  have h0 := st248_2_3 u v x y z hin0 hin1
  have h1 := st249_2_3 u v x y z hin1 h0
  have h2 := st223_2_3 u v x y z hin2 hin1
  have h3 := st224_2_3 u v x y z hin1 h2
  have h4 := st250_2_3 u v x y z h1 h3
  exact h4

lemma leaf127_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp609_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp315_2_3 u v x y z = 0)
    : PolyRefl.eval cp608_2_3 u v x y z = 0 := by
  have h0 := st251_2_3 u v x y z hin0 hin1
  have h1 := st252_2_3 u v x y z hin1 h0
  have h2 := st122_2_3 u v x y z hin2 hin1
  have h3 := st123_2_3 u v x y z hin1 h2
  have h4 := st253_2_3 u v x y z h1 h3
  exact h4

lemma leaf128_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp332_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp124_2_3 u v x y z = 0)
    : PolyRefl.eval cp612_2_3 u v x y z = 0 := by
  have h0 := st128_2_3 u v x y z hin0 hin1
  have h1 := st129_2_3 u v x y z hin1 h0
  have h2 := st45_2_3 u v x y z hin2 hin1
  have h3 := st254_2_3 u v x y z h1 h2
  have h4 := st255_2_3 u v x y z h2 h3
  exact h4

lemma leaf129_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp366_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp16_2_3 u v x y z = 0)
    : PolyRefl.eval cp97_2_3 u v x y z = 0 := by
  have h0 := st142_2_3 u v x y z hin0 hin1
  have h1 := st143_2_3 u v x y z hin1 h0
  have h2 := st4_2_3 u v x y z hin1 hin2
  have h3 := st36_2_3 u v x y z h1 h2
  exact h3

lemma leaf130_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp441_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp435_2_3 u v x y z = 0)
    : PolyRefl.eval cp434_2_3 u v x y z = 0 := by
  have h0 := st173_2_3 u v x y z hin0 hin1
  have h1 := st171_2_3 u v x y z hin2 hin0
  have h2 := st172_2_3 u v x y z hin0 h1
  have h3 := st174_2_3 u v x y z h2 h0
  exact h3

lemma leaf131_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp75_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp69_2_3 u v x y z = 0)
    : PolyRefl.eval cp68_2_3 u v x y z = 0 := by
  have h0 := st26_2_3 u v x y z hin0 hin1
  have h1 := st27_2_3 u v x y z hin1 h0
  have h2 := st24_2_3 u v x y z hin2 hin1
  have h3 := st25_2_3 u v x y z hin1 h2
  have h4 := st28_2_3 u v x y z h1 h3
  have h5 := st29_2_3 u v x y z h3 h4
  exact h5

lemma leaf132_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp609_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp182_2_3 u v x y z = 0)
    : PolyRefl.eval cp482_2_3 u v x y z = 0 := by
  have h0 := st251_2_3 u v x y z hin0 hin1
  have h1 := st252_2_3 u v x y z hin1 h0
  have h2 := st68_2_3 u v x y z hin2 hin1
  have h3 := st69_2_3 u v x y z hin1 h2
  have h4 := st193_2_3 u v x y z h3 h1
  have h5 := st194_2_3 u v x y z h1 h4
  exact h5

lemma leaf133_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp176_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp457_2_3 u v x y z = 0)
    : PolyRefl.eval cp312_2_3 u v x y z = 0 := by
  have h0 := st66_2_3 u v x y z hin0 hin1
  have h1 := st67_2_3 u v x y z hin1 h0
  have h2 := st179_2_3 u v x y z hin2 hin1
  have h3 := st180_2_3 u v x y z hin1 h2
  have h4 := st124_2_3 u v x y z h1 h3
  have h5 := st125_2_3 u v x y z h3 h4
  exact h5

lemma leaf134_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp569_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp426_2_3 u v x y z = 0)
    : PolyRefl.eval cp617_2_3 u v x y z = 0 := by
  have h0 := st232_2_3 u v x y z hin0 hin1
  have h1 := st233_2_3 u v x y z hin1 h0
  have h2 := st168_2_3 u v x y z hin2 hin1
  have h3 := st256_2_3 u v x y z h1 h2
  have h4 := st257_2_3 u v x y z h2 h3
  exact h4

lemma leaf135_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp34_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp569_2_3 u v x y z = 0)
    : PolyRefl.eval cp498_2_3 u v x y z = 0 := by
  have h0 := st10_2_3 u v x y z hin0 hin1
  have h1 := st11_2_3 u v x y z hin1 h0
  have h2 := st232_2_3 u v x y z hin2 hin1
  have h3 := st233_2_3 u v x y z hin1 h2
  have h4 := st197_2_3 u v x y z h3 h1
  have h5 := st198_2_3 u v x y z h1 h4
  exact h5

lemma leaf136_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp144_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp105_2_3 u v x y z = 0)
    : PolyRefl.eval cp104_2_3 u v x y z = 0 := by
  have h0 := st54_2_3 u v x y z hin0 hin1
  have h1 := st55_2_3 u v x y z hin1 h0
  have h2 := st37_2_3 u v x y z hin2 hin1
  have h3 := st38_2_3 u v x y z hin1 h2
  have h4 := st41_2_3 u v x y z h1 h3
  have h5 := st42_2_3 u v x y z h3 h4
  exact h5

lemma leaf137_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp236_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp248_2_3 u v x y z = 0)
    : PolyRefl.eval cp235_2_3 u v x y z = 0 := by
  have h0 := st88_2_3 u v x y z hin0 hin1
  have h1 := st92_2_3 u v x y z hin2 hin1
  have h2 := st93_2_3 u v x y z hin1 h1
  have h3 := st89_2_3 u v x y z h2 h0
  have h4 := st90_2_3 u v x y z h0 h3
  exact h4

lemma leaf138_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp28_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp124_2_3 u v x y z = 0)
    : PolyRefl.eval cp369_2_3 u v x y z = 0 := by
  have h0 := st8_2_3 u v x y z hin0 hin1
  have h1 := st9_2_3 u v x y z hin1 h0
  have h2 := st45_2_3 u v x y z hin2 hin1
  have h3 := st144_2_3 u v x y z h1 h2
  have h4 := st145_2_3 u v x y z h2 h3
  exact h4

lemma leaf139_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp182_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp609_2_3 u v x y z = 0)
    : PolyRefl.eval cp482_2_3 u v x y z = 0 := by
  have h0 := st68_2_3 u v x y z hin0 hin1
  have h1 := st69_2_3 u v x y z hin1 h0
  have h2 := st251_2_3 u v x y z hin2 hin1
  have h3 := st252_2_3 u v x y z hin1 h2
  have h4 := st193_2_3 u v x y z h1 h3
  have h5 := st194_2_3 u v x y z h3 h4
  exact h5

lemma leaf140_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp194_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp622_2_3 u v x y z = 0)
    : PolyRefl.eval cp621_2_3 u v x y z = 0 := by
  have h0 := st72_2_3 u v x y z hin0 hin1
  have h1 := st73_2_3 u v x y z hin1 h0
  have h2 := st258_2_3 u v x y z hin2 hin1
  have h3 := st259_2_3 u v x y z hin1 h2
  have h4 := st260_2_3 u v x y z h3 h1
  exact h4

lemma leaf141_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp628_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp268_2_3 u v x y z = 0)
    : PolyRefl.eval cp621_2_3 u v x y z = 0 := by
  have h0 := st261_2_3 u v x y z hin0 hin1
  have h1 := st262_2_3 u v x y z hin1 h0
  have h2 := st102_2_3 u v x y z hin2 hin1
  have h3 := st103_2_3 u v x y z hin1 h2
  have h4 := st263_2_3 u v x y z h1 h3
  exact h4

lemma leaf142_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp245_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp609_2_3 u v x y z = 0)
    : PolyRefl.eval cp581_2_3 u v x y z = 0 := by
  have h0 := st91_2_3 u v x y z hin0 hin1
  have h1 := st251_2_3 u v x y z hin2 hin1
  have h2 := st252_2_3 u v x y z hin1 h1
  have h3 := st239_2_3 u v x y z h2 h0
  have h4 := st240_2_3 u v x y z h0 h3
  exact h4

lemma leaf143_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp87_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp57_2_3 u v x y z = 0)
    : PolyRefl.eval cp326_2_3 u v x y z = 0 := by
  have h0 := st30_2_3 u v x y z hin0 hin1
  have h1 := st31_2_3 u v x y z hin1 h0
  have h2 := st20_2_3 u v x y z hin2 hin1
  have h3 := st21_2_3 u v x y z hin1 h2
  have h4 := st126_2_3 u v x y z h1 h3
  have h5 := st127_2_3 u v x y z h3 h4
  exact h5

lemma leaf144_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp69_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp355_2_3 u v x y z = 0)
    : PolyRefl.eval cp254_2_3 u v x y z = 0 := by
  have h0 := st24_2_3 u v x y z hin0 hin1
  have h1 := st25_2_3 u v x y z hin1 h0
  have h2 := st136_2_3 u v x y z hin2 hin1
  have h3 := st137_2_3 u v x y z hin1 h2
  have h4 := st98_2_3 u v x y z h3 h1
  have h5 := st99_2_3 u v x y z h1 h4
  exact h5

lemma leaf145_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp569_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp124_2_3 u v x y z = 0)
    : PolyRefl.eval cp612_2_3 u v x y z = 0 := by
  have h0 := st232_2_3 u v x y z hin0 hin1
  have h1 := st233_2_3 u v x y z hin1 h0
  have h2 := st45_2_3 u v x y z hin2 hin1
  have h3 := st254_2_3 u v x y z h1 h2
  have h4 := st255_2_3 u v x y z h2 h3
  exact h4

lemma leaf146_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp400_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp57_2_3 u v x y z = 0)
    : PolyRefl.eval cp634_2_3 u v x y z = 0 := by
  have h0 := st156_2_3 u v x y z hin0 hin1
  have h1 := st20_2_3 u v x y z hin2 hin1
  have h2 := st21_2_3 u v x y z hin1 h1
  have h3 := st264_2_3 u v x y z h2 h0
  exact h3

lemma leaf147_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp457_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp313_2_3 u v x y z = 0)
    : PolyRefl.eval cp637_2_3 u v x y z = 0 := by
  have h0 := st179_2_3 u v x y z hin0 hin1
  have h1 := st180_2_3 u v x y z hin1 h0
  have h2 := st120_2_3 u v x y z hin2 hin1
  have h3 := st121_2_3 u v x y z hin1 h2
  have h4 := st265_2_3 u v x y z h1 h3
  have h5 := st266_2_3 u v x y z h3 h4
  exact h5

lemma leaf148_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp295_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp426_2_3 u v x y z = 0)
    : PolyRefl.eval cp641_2_3 u v x y z = 0 := by
  have h0 := st114_2_3 u v x y z hin0 hin1
  have h1 := st168_2_3 u v x y z hin2 hin1
  have h2 := st267_2_3 u v x y z h0 h1
  have h3 := st268_2_3 u v x y z h1 h2
  exact h3

lemma leaf149_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp119_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp34_2_3 u v x y z = 0)
    : PolyRefl.eval cp289_2_3 u v x y z = 0 := by
  have h0 := st43_2_3 u v x y z hin0 hin1
  have h1 := st44_2_3 u v x y z hin1 h0
  have h2 := st10_2_3 u v x y z hin2 hin1
  have h3 := st11_2_3 u v x y z hin1 h2
  have h4 := st112_2_3 u v x y z h1 h3
  have h5 := st113_2_3 u v x y z h3 h4
  exact h5

lemma leaf150_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp69_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp545_2_3 u v x y z = 0)
    : PolyRefl.eval cp68_2_3 u v x y z = 0 := by
  have h0 := st24_2_3 u v x y z hin0 hin1
  have h1 := st25_2_3 u v x y z hin1 h0
  have h2 := st219_2_3 u v x y z hin2 hin1
  have h3 := st220_2_3 u v x y z hin1 h2
  have h4 := st28_2_3 u v x y z h3 h1
  have h5 := st29_2_3 u v x y z h1 h4
  exact h5

lemma leaf151_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp209_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp646_2_3 u v x y z = 0)
    : PolyRefl.eval cp645_2_3 u v x y z = 0 := by
  have h0 := st77_2_3 u v x y z hin0 hin1
  have h1 := st269_2_3 u v x y z hin2 hin1
  have h2 := st270_2_3 u v x y z h1 h0
  exact h2

lemma leaf152_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp69_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp395_2_3 u v x y z = 0)
    : PolyRefl.eval cp86_2_3 u v x y z = 0 := by
  have h0 := st24_2_3 u v x y z hin0 hin1
  have h1 := st25_2_3 u v x y z hin1 h0
  have h2 := st154_2_3 u v x y z hin2 hin1
  have h3 := st155_2_3 u v x y z hin1 h2
  have h4 := st32_2_3 u v x y z h3 h1
  have h5 := st33_2_3 u v x y z h1 h4
  exact h5

lemma leaf153_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp313_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp478_2_3 u v x y z = 0)
    : PolyRefl.eval cp175_2_3 u v x y z = 0 := by
  have h0 := st120_2_3 u v x y z hin0 hin1
  have h1 := st121_2_3 u v x y z hin1 h0
  have h2 := st189_2_3 u v x y z hin2 hin1
  have h3 := st190_2_3 u v x y z hin1 h2
  have h4 := st70_2_3 u v x y z h3 h1
  have h5 := st71_2_3 u v x y z h1 h4
  exact h5

lemma leaf154_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp650_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp411_2_3 u v x y z = 0)
    : PolyRefl.eval cp339_2_3 u v x y z = 0 := by
  have h0 := st271_2_3 u v x y z hin0 hin1
  have h1 := st272_2_3 u v x y z hin1 h0
  have h2 := st161_2_3 u v x y z hin2 hin1
  have h3 := st162_2_3 u v x y z hin1 h2
  have h4 := st273_2_3 u v x y z h1 h3
  exact h4

lemma leaf155_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp656_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp411_2_3 u v x y z = 0)
    : PolyRefl.eval cp471_2_3 u v x y z = 0 := by
  have h0 := st274_2_3 u v x y z hin0 hin1
  have h1 := st275_2_3 u v x y z hin1 h0
  have h2 := st161_2_3 u v x y z hin2 hin1
  have h3 := st162_2_3 u v x y z hin1 h2
  have h4 := st188_2_3 u v x y z h1 h3
  exact h4

lemma leaf156_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp411_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp407_2_3 u v x y z = 0)
    : PolyRefl.eval cp377_2_3 u v x y z = 0 := by
  have h0 := st161_2_3 u v x y z hin0 hin1
  have h1 := st162_2_3 u v x y z hin1 h0
  have h2 := st159_2_3 u v x y z hin2 hin1
  have h3 := st160_2_3 u v x y z hin1 h2
  have h4 := st151_2_3 u v x y z h3 h1
  exact h4

lemma leaf157_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp158_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp248_2_3 u v x y z = 0)
    : PolyRefl.eval cp151_2_3 u v x y z = 0 := by
  have h0 := st60_2_3 u v x y z hin0 hin1
  have h1 := st92_2_3 u v x y z hin2 hin1
  have h2 := st93_2_3 u v x y z hin1 h1
  have h3 := st61_2_3 u v x y z h2 h0
  exact h3

lemma leaf158_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp209_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp592_2_3 u v x y z = 0)
    : PolyRefl.eval cp518_2_3 u v x y z = 0 := by
  have h0 := st77_2_3 u v x y z hin0 hin1
  have h1 := st243_2_3 u v x y z hin2 hin1
  have h2 := st244_2_3 u v x y z hin1 h1
  have h3 := st209_2_3 u v x y z h2 h0
  exact h3

lemma leaf159_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp622_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp194_2_3 u v x y z = 0)
    : PolyRefl.eval cp621_2_3 u v x y z = 0 := by
  have h0 := st258_2_3 u v x y z hin0 hin1
  have h1 := st259_2_3 u v x y z hin1 h0
  have h2 := st72_2_3 u v x y z hin2 hin1
  have h3 := st73_2_3 u v x y z hin1 h2
  have h4 := st260_2_3 u v x y z h1 h3
  exact h4

lemma leaf160_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp144_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp142_2_3 u v x y z = 0)
    : PolyRefl.eval cp132_2_3 u v x y z = 0 := by
  have h0 := st54_2_3 u v x y z hin0 hin1
  have h1 := st55_2_3 u v x y z hin1 h0
  have h2 := st52_2_3 u v x y z hin2 hin1
  have h3 := st53_2_3 u v x y z hin1 h2
  have h4 := st48_2_3 u v x y z h1 h3
  have h5 := st49_2_3 u v x y z h3 h4
  exact h5

lemma leaf161_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp315_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp152_2_3 u v x y z = 0)
    : PolyRefl.eval cp456_2_3 u v x y z = 0 := by
  have h0 := st122_2_3 u v x y z hin0 hin1
  have h1 := st123_2_3 u v x y z hin1 h0
  have h2 := st58_2_3 u v x y z hin2 hin1
  have h3 := st59_2_3 u v x y z hin1 h2
  have h4 := st181_2_3 u v x y z h3 h1
  have h5 := st182_2_3 u v x y z h1 h4
  exact h5

lemma leaf162_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp378_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp472_2_3 u v x y z = 0)
    : PolyRefl.eval cp471_2_3 u v x y z = 0 := by
  have h0 := st147_2_3 u v x y z hin0 hin1
  have h1 := st148_2_3 u v x y z hin1 h0
  have h2 := st186_2_3 u v x y z hin2 hin1
  have h3 := st187_2_3 u v x y z hin1 h2
  have h4 := st188_2_3 u v x y z h3 h1
  exact h4

lemma leaf163_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp362_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp227_2_3 u v x y z = 0)
    : PolyRefl.eval cp361_2_3 u v x y z = 0 := by
  have h0 := st140_2_3 u v x y z hin0 hin1
  have h1 := st84_2_3 u v x y z hin2 hin1
  have h2 := st276_2_3 u v x y z h0 h1
  exact h2

lemma leaf164_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp378_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp661_2_3 u v x y z = 0)
    : PolyRefl.eval cp339_2_3 u v x y z = 0 := by
  have h0 := st147_2_3 u v x y z hin0 hin1
  have h1 := st148_2_3 u v x y z hin1 h0
  have h2 := st277_2_3 u v x y z hin2 hin1
  have h3 := st278_2_3 u v x y z hin1 h2
  have h4 := st273_2_3 u v x y z h3 h1
  exact h4

lemma leaf165_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp142_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp107_2_3 u v x y z = 0)
    : PolyRefl.eval cp132_2_3 u v x y z = 0 := by
  have h0 := st52_2_3 u v x y z hin0 hin1
  have h1 := st53_2_3 u v x y z hin1 h0
  have h2 := st39_2_3 u v x y z hin2 hin1
  have h3 := st40_2_3 u v x y z hin1 h2
  have h4 := st48_2_3 u v x y z h3 h1
  have h5 := st49_2_3 u v x y z h1 h4
  exact h5

lemma leaf166_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp315_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp609_2_3 u v x y z = 0)
    : PolyRefl.eval cp665_2_3 u v x y z = 0 := by
  have h0 := st122_2_3 u v x y z hin0 hin1
  have h1 := st123_2_3 u v x y z hin1 h0
  have h2 := st251_2_3 u v x y z hin2 hin1
  have h3 := st252_2_3 u v x y z hin1 h2
  have h4 := st279_2_3 u v x y z h1 h3
  exact h4

lemma leaf167_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp69_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp144_2_3 u v x y z = 0)
    : PolyRefl.eval cp132_2_3 u v x y z = 0 := by
  have h0 := st24_2_3 u v x y z hin0 hin1
  have h1 := st25_2_3 u v x y z hin1 h0
  have h2 := st54_2_3 u v x y z hin2 hin1
  have h3 := st55_2_3 u v x y z hin1 h2
  have h4 := st48_2_3 u v x y z h3 h1
  have h5 := st49_2_3 u v x y z h1 h4
  exact h5

lemma leaf168_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp545_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp57_2_3 u v x y z = 0)
    : PolyRefl.eval cp137_2_3 u v x y z = 0 := by
  have h0 := st219_2_3 u v x y z hin0 hin1
  have h1 := st220_2_3 u v x y z hin1 h0
  have h2 := st20_2_3 u v x y z hin2 hin1
  have h3 := st21_2_3 u v x y z hin1 h2
  have h4 := st50_2_3 u v x y z h1 h3
  have h5 := st51_2_3 u v x y z h3 h4
  exact h5

lemma leaf169_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp426_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp332_2_3 u v x y z = 0)
    : PolyRefl.eval cp617_2_3 u v x y z = 0 := by
  have h0 := st168_2_3 u v x y z hin0 hin1
  have h1 := st128_2_3 u v x y z hin2 hin1
  have h2 := st129_2_3 u v x y z hin1 h1
  have h3 := st256_2_3 u v x y z h2 h0
  have h4 := st257_2_3 u v x y z h0 h3
  exact h4

lemma leaf170_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp478_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp313_2_3 u v x y z = 0)
    : PolyRefl.eval cp175_2_3 u v x y z = 0 := by
  have h0 := st189_2_3 u v x y z hin0 hin1
  have h1 := st190_2_3 u v x y z hin1 h0
  have h2 := st120_2_3 u v x y z hin2 hin1
  have h3 := st121_2_3 u v x y z hin1 h2
  have h4 := st70_2_3 u v x y z h1 h3
  have h5 := st71_2_3 u v x y z h3 h4
  exact h5

lemma leaf171_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp124_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp332_2_3 u v x y z = 0)
    : PolyRefl.eval cp612_2_3 u v x y z = 0 := by
  have h0 := st45_2_3 u v x y z hin0 hin1
  have h1 := st128_2_3 u v x y z hin2 hin1
  have h2 := st129_2_3 u v x y z hin1 h1
  have h3 := st254_2_3 u v x y z h2 h0
  have h4 := st255_2_3 u v x y z h0 h3
  exact h4

lemma leaf172_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp16_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp666_2_3 u v x y z = 0)
    : PolyRefl.eval cp45_2_3 u v x y z = 0 := by
  have h0 := st4_2_3 u v x y z hin0 hin1
  have h1 := st280_2_3 u v x y z hin2 hin0
  have h2 := st281_2_3 u v x y z hin0 h1
  have h3 := st17_2_3 u v x y z h2 h0
  exact h3

lemma leaf173_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp119_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp53_2_3 u v x y z = 0)
    : PolyRefl.eval cp289_2_3 u v x y z = 0 := by
  have h0 := st43_2_3 u v x y z hin0 hin1
  have h1 := st44_2_3 u v x y z hin1 h0
  have h2 := st18_2_3 u v x y z hin2 hin1
  have h3 := st19_2_3 u v x y z hin1 h2
  have h4 := st112_2_3 u v x y z h1 h3
  have h5 := st113_2_3 u v x y z h3 h4
  exact h5

lemma leaf174_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp395_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp57_2_3 u v x y z = 0)
    : PolyRefl.eval cp326_2_3 u v x y z = 0 := by
  have h0 := st154_2_3 u v x y z hin0 hin1
  have h1 := st155_2_3 u v x y z hin1 h0
  have h2 := st20_2_3 u v x y z hin2 hin1
  have h3 := st21_2_3 u v x y z hin1 h2
  have h4 := st126_2_3 u v x y z h1 h3
  have h5 := st127_2_3 u v x y z h3 h4
  exact h5

lemma leaf175_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp355_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp57_2_3 u v x y z = 0)
    : PolyRefl.eval cp354_2_3 u v x y z = 0 := by
  have h0 := st136_2_3 u v x y z hin0 hin1
  have h1 := st137_2_3 u v x y z hin1 h0
  have h2 := st20_2_3 u v x y z hin2 hin1
  have h3 := st21_2_3 u v x y z hin1 h2
  have h4 := st138_2_3 u v x y z h1 h3
  have h5 := st139_2_3 u v x y z h3 h4
  exact h5

lemma leaf176_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp400_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp28_2_3 u v x y z = 0)
    : PolyRefl.eval cp669_2_3 u v x y z = 0 := by
  have h0 := st156_2_3 u v x y z hin0 hin1
  have h1 := st8_2_3 u v x y z hin2 hin1
  have h2 := st9_2_3 u v x y z hin1 h1
  have h3 := st282_2_3 u v x y z h2 h0
  exact h3

lemma leaf177_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp609_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp236_2_3 u v x y z = 0)
    : PolyRefl.eval cp587_2_3 u v x y z = 0 := by
  have h0 := st251_2_3 u v x y z hin0 hin1
  have h1 := st252_2_3 u v x y z hin1 h0
  have h2 := st88_2_3 u v x y z hin2 hin1
  have h3 := st241_2_3 u v x y z h1 h2
  have h4 := st242_2_3 u v x y z h2 h3
  exact h4

lemma leaf178_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp57_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp545_2_3 u v x y z = 0)
    : PolyRefl.eval cp137_2_3 u v x y z = 0 := by
  have h0 := st20_2_3 u v x y z hin0 hin1
  have h1 := st21_2_3 u v x y z hin1 h0
  have h2 := st219_2_3 u v x y z hin2 hin1
  have h3 := st220_2_3 u v x y z hin1 h2
  have h4 := st50_2_3 u v x y z h3 h1
  have h5 := st51_2_3 u v x y z h1 h4
  exact h5

lemma leaf179_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp167_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp34_2_3 u v x y z = 0)
    : PolyRefl.eval cp525_2_3 u v x y z = 0 := by
  have h0 := st63_2_3 u v x y z hin0 hin1
  have h1 := st10_2_3 u v x y z hin2 hin1
  have h2 := st11_2_3 u v x y z hin1 h1
  have h3 := st210_2_3 u v x y z h2 h0
  have h4 := st211_2_3 u v x y z h0 h3
  have h5 := st212_2_3 u v x y z h3 h4
  exact h5

lemma leaf180_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp646_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp209_2_3 u v x y z = 0)
    : PolyRefl.eval cp645_2_3 u v x y z = 0 := by
  have h0 := st269_2_3 u v x y z hin0 hin1
  have h1 := st77_2_3 u v x y z hin2 hin1
  have h2 := st270_2_3 u v x y z h0 h1
  exact h2

lemma leaf181_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp378_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp671_2_3 u v x y z = 0)
    : PolyRefl.eval cp417_2_3 u v x y z = 0 := by
  have h0 := st147_2_3 u v x y z hin0 hin1
  have h1 := st148_2_3 u v x y z hin1 h0
  have h2 := st283_2_3 u v x y z hin2 hin1
  have h3 := st284_2_3 u v x y z hin1 h2
  have h4 := st167_2_3 u v x y z h3 h1
  exact h4

lemma leaf182_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp124_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp569_2_3 u v x y z = 0)
    : PolyRefl.eval cp612_2_3 u v x y z = 0 := by
  have h0 := st45_2_3 u v x y z hin0 hin1
  have h1 := st232_2_3 u v x y z hin2 hin1
  have h2 := st233_2_3 u v x y z hin1 h1
  have h3 := st254_2_3 u v x y z h2 h0
  have h4 := st255_2_3 u v x y z h0 h3
  exact h4

lemma leaf183_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp478_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp609_2_3 u v x y z = 0)
    : PolyRefl.eval cp482_2_3 u v x y z = 0 := by
  have h0 := st189_2_3 u v x y z hin0 hin1
  have h1 := st190_2_3 u v x y z hin1 h0
  have h2 := st251_2_3 u v x y z hin2 hin1
  have h3 := st252_2_3 u v x y z hin1 h2
  have h4 := st193_2_3 u v x y z h1 h3
  have h5 := st194_2_3 u v x y z h3 h4
  exact h5

lemma leaf184_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp503_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp675_2_3 u v x y z = 0)
    : PolyRefl.eval cp434_2_3 u v x y z = 0 := by
  have h0 := st199_2_3 u v x y z hin0 hin1
  have h1 := st285_2_3 u v x y z hin2 hin0
  have h2 := st286_2_3 u v x y z hin0 h1
  have h3 := st174_2_3 u v x y z h2 h0
  exact h3

lemma leaf185_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp391_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp400_2_3 u v x y z = 0)
    : PolyRefl.eval cp669_2_3 u v x y z = 0 := by
  have h0 := st152_2_3 u v x y z hin0 hin1
  have h1 := st153_2_3 u v x y z hin1 h0
  have h2 := st156_2_3 u v x y z hin2 hin1
  have h3 := st282_2_3 u v x y z h1 h2
  exact h3

lemma leaf186_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp315_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp313_2_3 u v x y z = 0)
    : PolyRefl.eval cp637_2_3 u v x y z = 0 := by
  have h0 := st122_2_3 u v x y z hin0 hin1
  have h1 := st123_2_3 u v x y z hin1 h0
  have h2 := st120_2_3 u v x y z hin2 hin1
  have h3 := st121_2_3 u v x y z hin1 h2
  have h4 := st265_2_3 u v x y z h1 h3
  have h5 := st266_2_3 u v x y z h3 h4
  exact h5

lemma leaf187_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp268_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp263_2_3 u v x y z = 0)
    : PolyRefl.eval cp262_2_3 u v x y z = 0 := by
  have h0 := st102_2_3 u v x y z hin0 hin1
  have h1 := st103_2_3 u v x y z hin1 h0
  have h2 := st100_2_3 u v x y z hin2 hin1
  have h3 := st101_2_3 u v x y z hin1 h2
  have h4 := st104_2_3 u v x y z h3 h1
  exact h4

lemma leaf188_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp53_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp167_2_3 u v x y z = 0)
    : PolyRefl.eval cp525_2_3 u v x y z = 0 := by
  have h0 := st18_2_3 u v x y z hin0 hin1
  have h1 := st19_2_3 u v x y z hin1 h0
  have h2 := st63_2_3 u v x y z hin2 hin1
  have h3 := st210_2_3 u v x y z h1 h2
  have h4 := st211_2_3 u v x y z h2 h3
  have h5 := st212_2_3 u v x y z h3 h4
  exact h5

lemma leaf189_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp400_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp391_2_3 u v x y z = 0)
    : PolyRefl.eval cp669_2_3 u v x y z = 0 := by
  have h0 := st156_2_3 u v x y z hin0 hin1
  have h1 := st152_2_3 u v x y z hin2 hin1
  have h2 := st153_2_3 u v x y z hin1 h1
  have h3 := st282_2_3 u v x y z h2 h0
  exact h3

lemma leaf190_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp457_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp483_2_3 u v x y z = 0)
    : PolyRefl.eval cp665_2_3 u v x y z = 0 := by
  have h0 := st179_2_3 u v x y z hin0 hin1
  have h1 := st180_2_3 u v x y z hin1 h0
  have h2 := st191_2_3 u v x y z hin2 hin1
  have h3 := st192_2_3 u v x y z hin1 h2
  have h4 := st279_2_3 u v x y z h1 h3
  exact h4

lemma leaf191_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp678_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp503_2_3 u v x y z = 0)
    : PolyRefl.eval cp14_2_3 u v x y z = 0 := by
  have h0 := st287_2_3 u v x y z hin0 hin1
  have h1 := st288_2_3 u v x y z hin1 h0
  have h2 := st199_2_3 u v x y z hin1 hin2
  have h3 := st289_2_3 u v x y z h1 h2
  exact h3

lemma leaf192_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp230_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp209_2_3 u v x y z = 0)
    : PolyRefl.eval cp208_2_3 u v x y z = 0 := by
  have h0 := st85_2_3 u v x y z hin0 hin1
  have h1 := st86_2_3 u v x y z hin1 h0
  have h2 := st77_2_3 u v x y z hin2 hin1
  have h3 := st80_2_3 u v x y z h1 h2
  exact h3

lemma leaf193_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp209_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp683_2_3 u v x y z = 0)
    : PolyRefl.eval cp448_2_3 u v x y z = 0 := by
  have h0 := st77_2_3 u v x y z hin0 hin1
  have h1 := st290_2_3 u v x y z hin2 hin1
  have h2 := st291_2_3 u v x y z hin1 h1
  have h3 := st292_2_3 u v x y z h2 h0
  exact h3

lemma leaf194_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp304_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp152_2_3 u v x y z = 0)
    : PolyRefl.eval cp374_2_3 u v x y z = 0 := by
  have h0 := st117_2_3 u v x y z hin0 hin1
  have h1 := st58_2_3 u v x y z hin2 hin1
  have h2 := st59_2_3 u v x y z hin1 h1
  have h3 := st146_2_3 u v x y z h2 h0
  exact h3

lemma leaf195_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp683_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp209_2_3 u v x y z = 0)
    : PolyRefl.eval cp448_2_3 u v x y z = 0 := by
  have h0 := st290_2_3 u v x y z hin0 hin1
  have h1 := st291_2_3 u v x y z hin1 h0
  have h2 := st77_2_3 u v x y z hin2 hin1
  have h3 := st292_2_3 u v x y z h1 h2
  exact h3

lemma leaf196_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp87_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp142_2_3 u v x y z = 0)
    : PolyRefl.eval cp86_2_3 u v x y z = 0 := by
  have h0 := st30_2_3 u v x y z hin0 hin1
  have h1 := st31_2_3 u v x y z hin1 h0
  have h2 := st52_2_3 u v x y z hin2 hin1
  have h3 := st53_2_3 u v x y z hin1 h2
  have h4 := st32_2_3 u v x y z h1 h3
  have h5 := st33_2_3 u v x y z h3 h4
  exact h5

lemma leaf197_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp57_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp144_2_3 u v x y z = 0)
    : PolyRefl.eval cp104_2_3 u v x y z = 0 := by
  have h0 := st20_2_3 u v x y z hin0 hin1
  have h1 := st21_2_3 u v x y z hin1 h0
  have h2 := st54_2_3 u v x y z hin2 hin1
  have h3 := st55_2_3 u v x y z hin1 h2
  have h4 := st41_2_3 u v x y z h3 h1
  have h5 := st42_2_3 u v x y z h1 h4
  exact h5

lemma leaf198_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp671_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp378_2_3 u v x y z = 0)
    : PolyRefl.eval cp417_2_3 u v x y z = 0 := by
  have h0 := st283_2_3 u v x y z hin0 hin1
  have h1 := st284_2_3 u v x y z hin1 h0
  have h2 := st147_2_3 u v x y z hin2 hin1
  have h3 := st148_2_3 u v x y z hin1 h2
  have h4 := st167_2_3 u v x y z h1 h3
  exact h4

lemma leaf199_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp411_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp656_2_3 u v x y z = 0)
    : PolyRefl.eval cp471_2_3 u v x y z = 0 := by
  have h0 := st161_2_3 u v x y z hin0 hin1
  have h1 := st162_2_3 u v x y z hin1 h0
  have h2 := st274_2_3 u v x y z hin2 hin1
  have h3 := st275_2_3 u v x y z hin1 h2
  have h4 := st188_2_3 u v x y z h3 h1
  exact h4

lemma leaf200_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp124_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp119_2_3 u v x y z = 0)
    : PolyRefl.eval cp118_2_3 u v x y z = 0 := by
  have h0 := st45_2_3 u v x y z hin0 hin1
  have h1 := st43_2_3 u v x y z hin2 hin1
  have h2 := st44_2_3 u v x y z hin1 h1
  have h3 := st46_2_3 u v x y z h2 h0
  have h4 := st47_2_3 u v x y z h0 h3
  exact h4

lemma leaf201_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp686_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp276_2_3 u v x y z = 0)
    : PolyRefl.eval cp193_2_3 u v x y z = 0 := by
  have h0 := st293_2_3 u v x y z hin0 hin1
  have h1 := st294_2_3 u v x y z hin1 h0
  have h2 := st105_2_3 u v x y z hin2 hin1
  have h3 := st106_2_3 u v x y z hin1 h2
  have h4 := st295_2_3 u v x y z h1 h3
  exact h4

lemma leaf202_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp332_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp53_2_3 u v x y z = 0)
    : PolyRefl.eval cp498_2_3 u v x y z = 0 := by
  have h0 := st128_2_3 u v x y z hin0 hin1
  have h1 := st129_2_3 u v x y z hin1 h0
  have h2 := st18_2_3 u v x y z hin2 hin1
  have h3 := st19_2_3 u v x y z hin1 h2
  have h4 := st197_2_3 u v x y z h1 h3
  have h5 := st198_2_3 u v x y z h3 h4
  exact h5

lemma leaf203_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp692_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp340_2_3 u v x y z = 0)
    : PolyRefl.eval cp417_2_3 u v x y z = 0 := by
  have h0 := st296_2_3 u v x y z hin0 hin1
  have h1 := st297_2_3 u v x y z hin1 h0
  have h2 := st131_2_3 u v x y z hin2 hin1
  have h3 := st132_2_3 u v x y z hin1 h2
  have h4 := st250_2_3 u v x y z h1 h3
  exact h4

lemma leaf204_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp505_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp503_2_3 u v x y z = 0)
    : PolyRefl.eval cp45_2_3 u v x y z = 0 := by
  have h0 := st200_2_3 u v x y z hin0 hin1
  have h1 := st201_2_3 u v x y z hin1 h0
  have h2 := st199_2_3 u v x y z hin1 hin2
  have h3 := st202_2_3 u v x y z h1 h2
  exact h3

lemma leaf205_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp280_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp276_2_3 u v x y z = 0)
    : PolyRefl.eval cp275_2_3 u v x y z = 0 := by
  have h0 := st107_2_3 u v x y z hin0 hin1
  have h1 := st108_2_3 u v x y z hin1 h0
  have h2 := st105_2_3 u v x y z hin2 hin1
  have h3 := st106_2_3 u v x y z hin1 h2
  have h4 := st109_2_3 u v x y z h1 h3
  exact h4

lemma leaf206_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp142_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp124_2_3 u v x y z = 0)
    : PolyRefl.eval cp696_2_3 u v x y z = 0 := by
  have h0 := st52_2_3 u v x y z hin0 hin1
  have h1 := st53_2_3 u v x y z hin1 h0
  have h2 := st45_2_3 u v x y z hin2 hin1
  have h3 := st298_2_3 u v x y z h1 h2
  have h4 := st299_2_3 u v x y z h2 h3
  exact h4

lemma leaf207_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp75_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp105_2_3 u v x y z = 0)
    : PolyRefl.eval cp137_2_3 u v x y z = 0 := by
  have h0 := st26_2_3 u v x y z hin0 hin1
  have h1 := st27_2_3 u v x y z hin1 h0
  have h2 := st37_2_3 u v x y z hin2 hin1
  have h3 := st38_2_3 u v x y z hin1 h2
  have h4 := st50_2_3 u v x y z h1 h3
  have h5 := st51_2_3 u v x y z h3 h4
  exact h5

lemma leaf208_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp566_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp701_2_3 u v x y z = 0)
    : PolyRefl.eval cp193_2_3 u v x y z = 0 := by
  have h0 := st229_2_3 u v x y z hin0 hin1
  have h1 := st230_2_3 u v x y z hin1 h0
  have h2 := st300_2_3 u v x y z hin2 hin1
  have h3 := st301_2_3 u v x y z hin1 h2
  have h4 := st76_2_3 u v x y z h3 h1
  exact h4

lemma leaf209_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp152_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp245_2_3 u v x y z = 0)
    : PolyRefl.eval cp244_2_3 u v x y z = 0 := by
  have h0 := st58_2_3 u v x y z hin0 hin1
  have h1 := st59_2_3 u v x y z hin1 h0
  have h2 := st91_2_3 u v x y z hin2 hin1
  have h3 := st94_2_3 u v x y z h1 h2
  have h4 := st95_2_3 u v x y z h2 h3
  exact h4

lemma leaf210_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp142_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp255_2_3 u v x y z = 0)
    : PolyRefl.eval cp254_2_3 u v x y z = 0 := by
  have h0 := st52_2_3 u v x y z hin0 hin1
  have h1 := st53_2_3 u v x y z hin1 h0
  have h2 := st96_2_3 u v x y z hin2 hin1
  have h3 := st97_2_3 u v x y z hin1 h2
  have h4 := st98_2_3 u v x y z h3 h1
  have h5 := st99_2_3 u v x y z h1 h4
  exact h5

lemma leaf211_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp53_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp28_2_3 u v x y z = 0)
    : PolyRefl.eval cp27_2_3 u v x y z = 0 := by
  have h0 := st18_2_3 u v x y z hin0 hin1
  have h1 := st19_2_3 u v x y z hin1 h0
  have h2 := st8_2_3 u v x y z hin2 hin1
  have h3 := st9_2_3 u v x y z hin1 h2
  have h4 := st12_2_3 u v x y z h3 h1
  have h5 := st13_2_3 u v x y z h1 h4
  exact h5

lemma leaf212_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp592_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp227_2_3 u v x y z = 0)
    : PolyRefl.eval cp518_2_3 u v x y z = 0 := by
  have h0 := st243_2_3 u v x y z hin0 hin1
  have h1 := st244_2_3 u v x y z hin1 h0
  have h2 := st84_2_3 u v x y z hin2 hin1
  have h3 := st245_2_3 u v x y z h1 h2
  exact h3

lemma leaf213_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp124_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp142_2_3 u v x y z = 0)
    : PolyRefl.eval cp696_2_3 u v x y z = 0 := by
  have h0 := st45_2_3 u v x y z hin0 hin1
  have h1 := st52_2_3 u v x y z hin2 hin1
  have h2 := st53_2_3 u v x y z hin1 h1
  have h3 := st298_2_3 u v x y z h2 h0
  have h4 := st299_2_3 u v x y z h0 h3
  exact h4

lemma leaf214_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp152_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp457_2_3 u v x y z = 0)
    : PolyRefl.eval cp456_2_3 u v x y z = 0 := by
  have h0 := st58_2_3 u v x y z hin0 hin1
  have h1 := st59_2_3 u v x y z hin1 h0
  have h2 := st179_2_3 u v x y z hin2 hin1
  have h3 := st180_2_3 u v x y z hin1 h2
  have h4 := st181_2_3 u v x y z h1 h3
  have h5 := st182_2_3 u v x y z h3 h4
  exact h5

lemma leaf215_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp566_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp705_2_3 u v x y z = 0)
    : PolyRefl.eval cp621_2_3 u v x y z = 0 := by
  have h0 := st229_2_3 u v x y z hin0 hin1
  have h1 := st230_2_3 u v x y z hin1 h0
  have h2 := st302_2_3 u v x y z hin2 hin1
  have h3 := st303_2_3 u v x y z hin1 h2
  have h4 := st260_2_3 u v x y z h3 h1
  exact h4

lemma leaf216_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp53_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp142_2_3 u v x y z = 0)
    : PolyRefl.eval cp709_2_3 u v x y z = 0 := by
  have h0 := st18_2_3 u v x y z hin0 hin1
  have h1 := st19_2_3 u v x y z hin1 h0
  have h2 := st52_2_3 u v x y z hin2 hin1
  have h3 := st53_2_3 u v x y z hin1 h2
  have h4 := st304_2_3 u v x y z h1 h3
  exact h4

lemma leaf217_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp710_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp441_2_3 u v x y z = 0)
    : PolyRefl.eval cp97_2_3 u v x y z = 0 := by
  have h0 := st305_2_3 u v x y z hin0 hin1
  have h1 := st306_2_3 u v x y z hin1 h0
  have h2 := st173_2_3 u v x y z hin1 hin2
  have h3 := st215_2_3 u v x y z h1 h2
  exact h3

lemma leaf218_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp426_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp569_2_3 u v x y z = 0)
    : PolyRefl.eval cp617_2_3 u v x y z = 0 := by
  have h0 := st168_2_3 u v x y z hin0 hin1
  have h1 := st232_2_3 u v x y z hin2 hin1
  have h2 := st233_2_3 u v x y z hin1 h1
  have h3 := st256_2_3 u v x y z h2 h0
  have h4 := st257_2_3 u v x y z h0 h3
  exact h4

lemma leaf219_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp98_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp17_2_3 u v x y z = 0)
    : PolyRefl.eval cp97_2_3 u v x y z = 0 := by
  have h0 := st34_2_3 u v x y z hin0 hin1
  have h1 := st35_2_3 u v x y z hin1 h0
  have h2 := st14_2_3 u v x y z hin1 hin2
  have h3 := st36_2_3 u v x y z h1 h2
  exact h3

lemma leaf220_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp209_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp449_2_3 u v x y z = 0)
    : PolyRefl.eval cp448_2_3 u v x y z = 0 := by
  have h0 := st77_2_3 u v x y z hin0 hin1
  have h1 := st176_2_3 u v x y z hin2 hin1
  have h2 := st177_2_3 u v x y z hin1 h1
  have h3 := st292_2_3 u v x y z h2 h0
  exact h3

lemma leaf221_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp295_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp34_2_3 u v x y z = 0)
    : PolyRefl.eval cp525_2_3 u v x y z = 0 := by
  have h0 := st114_2_3 u v x y z hin0 hin1
  have h1 := st10_2_3 u v x y z hin2 hin1
  have h2 := st11_2_3 u v x y z hin1 h1
  have h3 := st307_2_3 u v x y z h2 h0
  have h4 := st308_2_3 u v x y z h0 h3
  have h5 := st309_2_3 u v x y z h3 h4
  exact h5

lemma leaf222_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp53_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp220_2_3 u v x y z = 0)
    : PolyRefl.eval cp289_2_3 u v x y z = 0 := by
  have h0 := st18_2_3 u v x y z hin0 hin1
  have h1 := st19_2_3 u v x y z hin1 h0
  have h2 := st81_2_3 u v x y z hin2 hin1
  have h3 := st82_2_3 u v x y z hin1 h2
  have h4 := st112_2_3 u v x y z h3 h1
  have h5 := st113_2_3 u v x y z h1 h4
  exact h5

lemma leaf223_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp340_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp692_2_3 u v x y z = 0)
    : PolyRefl.eval cp417_2_3 u v x y z = 0 := by
  have h0 := st131_2_3 u v x y z hin0 hin1
  have h1 := st132_2_3 u v x y z hin1 h0
  have h2 := st296_2_3 u v x y z hin2 hin1
  have h3 := st297_2_3 u v x y z hin1 h2
  have h4 := st250_2_3 u v x y z h3 h1
  exact h4

lemma leaf224_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp107_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp142_2_3 u v x y z = 0)
    : PolyRefl.eval cp132_2_3 u v x y z = 0 := by
  have h0 := st39_2_3 u v x y z hin0 hin1
  have h1 := st40_2_3 u v x y z hin1 h0
  have h2 := st52_2_3 u v x y z hin2 hin1
  have h3 := st53_2_3 u v x y z hin1 h2
  have h4 := st48_2_3 u v x y z h1 h3
  have h5 := st49_2_3 u v x y z h3 h4
  exact h5

lemma leaf225_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp167_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp53_2_3 u v x y z = 0)
    : PolyRefl.eval cp525_2_3 u v x y z = 0 := by
  have h0 := st63_2_3 u v x y z hin0 hin1
  have h1 := st18_2_3 u v x y z hin2 hin1
  have h2 := st19_2_3 u v x y z hin1 h1
  have h3 := st210_2_3 u v x y z h2 h0
  have h4 := st211_2_3 u v x y z h0 h3
  have h5 := st212_2_3 u v x y z h3 h4
  exact h5

lemma leaf226_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp105_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp395_2_3 u v x y z = 0)
    : PolyRefl.eval cp326_2_3 u v x y z = 0 := by
  have h0 := st37_2_3 u v x y z hin0 hin1
  have h1 := st38_2_3 u v x y z hin1 h0
  have h2 := st154_2_3 u v x y z hin2 hin1
  have h3 := st155_2_3 u v x y z hin1 h2
  have h4 := st126_2_3 u v x y z h3 h1
  have h5 := st127_2_3 u v x y z h1 h4
  exact h5

lemma leaf227_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp575_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp194_2_3 u v x y z = 0)
    : PolyRefl.eval cp275_2_3 u v x y z = 0 := by
  have h0 := st236_2_3 u v x y z hin0 hin1
  have h1 := st237_2_3 u v x y z hin1 h0
  have h2 := st72_2_3 u v x y z hin2 hin1
  have h3 := st73_2_3 u v x y z hin1 h2
  have h4 := st231_2_3 u v x y z h1 h3
  exact h4

lemma leaf228_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp545_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp105_2_3 u v x y z = 0)
    : PolyRefl.eval cp137_2_3 u v x y z = 0 := by
  have h0 := st219_2_3 u v x y z hin0 hin1
  have h1 := st220_2_3 u v x y z hin1 h0
  have h2 := st37_2_3 u v x y z hin2 hin1
  have h3 := st38_2_3 u v x y z hin1 h2
  have h4 := st50_2_3 u v x y z h1 h3
  have h5 := st51_2_3 u v x y z h3 h4
  exact h5

lemma leaf229_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp701_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp566_2_3 u v x y z = 0)
    : PolyRefl.eval cp193_2_3 u v x y z = 0 := by
  have h0 := st300_2_3 u v x y z hin0 hin1
  have h1 := st301_2_3 u v x y z hin1 h0
  have h2 := st229_2_3 u v x y z hin2 hin1
  have h3 := st230_2_3 u v x y z hin1 h2
  have h4 := st76_2_3 u v x y z h1 h3
  exact h4

lemma leaf230_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp666_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp16_2_3 u v x y z = 0)
    : PolyRefl.eval cp45_2_3 u v x y z = 0 := by
  have h0 := st280_2_3 u v x y z hin0 hin1
  have h1 := st281_2_3 u v x y z hin1 h0
  have h2 := st4_2_3 u v x y z hin1 hin2
  have h3 := st17_2_3 u v x y z h1 h2
  exact h3

lemma leaf231_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp545_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp142_2_3 u v x y z = 0)
    : PolyRefl.eval cp68_2_3 u v x y z = 0 := by
  have h0 := st219_2_3 u v x y z hin0 hin1
  have h1 := st220_2_3 u v x y z hin1 h0
  have h2 := st52_2_3 u v x y z hin2 hin1
  have h3 := st53_2_3 u v x y z hin1 h2
  have h4 := st28_2_3 u v x y z h1 h3
  have h5 := st29_2_3 u v x y z h3 h4
  exact h5

lemma leaf232_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp395_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp142_2_3 u v x y z = 0)
    : PolyRefl.eval cp86_2_3 u v x y z = 0 := by
  have h0 := st154_2_3 u v x y z hin0 hin1
  have h1 := st155_2_3 u v x y z hin1 h0
  have h2 := st52_2_3 u v x y z hin2 hin1
  have h3 := st53_2_3 u v x y z hin1 h2
  have h4 := st32_2_3 u v x y z h1 h3
  have h5 := st33_2_3 u v x y z h3 h4
  exact h5

lemma leaf233_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp512_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp340_2_3 u v x y z = 0)
    : PolyRefl.eval cp377_2_3 u v x y z = 0 := by
  have h0 := st204_2_3 u v x y z hin0 hin1
  have h1 := st205_2_3 u v x y z hin1 h0
  have h2 := st131_2_3 u v x y z hin2 hin1
  have h3 := st132_2_3 u v x y z hin1 h2
  have h4 := st206_2_3 u v x y z h1 h3
  exact h4

lemma leaf234_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp395_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp105_2_3 u v x y z = 0)
    : PolyRefl.eval cp326_2_3 u v x y z = 0 := by
  have h0 := st154_2_3 u v x y z hin0 hin1
  have h1 := st155_2_3 u v x y z hin1 h0
  have h2 := st37_2_3 u v x y z hin2 hin1
  have h3 := st38_2_3 u v x y z hin1 h2
  have h4 := st126_2_3 u v x y z h1 h3
  have h5 := st127_2_3 u v x y z h3 h4
  exact h5

lemma leaf235_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp718_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp554_2_3 u v x y z = 0)
    : PolyRefl.eval cp339_2_3 u v x y z = 0 := by
  have h0 := st310_2_3 u v x y z hin0 hin1
  have h1 := st311_2_3 u v x y z hin1 h0
  have h2 := st223_2_3 u v x y z hin2 hin1
  have h3 := st224_2_3 u v x y z hin1 h2
  have h4 := st135_2_3 u v x y z h1 h3
  exact h4

lemma leaf236_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp19_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp16_2_3 u v x y z = 0)
    : PolyRefl.eval cp14_2_3 u v x y z = 0 := by
  have h0 := st5_2_3 u v x y z hin0 hin1
  have h1 := st6_2_3 u v x y z hin1 h0
  have h2 := st4_2_3 u v x y z hin1 hin2
  have h3 := st7_2_3 u v x y z h1 h2
  exact h3

lemma leaf237_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp69_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp87_2_3 u v x y z = 0)
    : PolyRefl.eval cp86_2_3 u v x y z = 0 := by
  have h0 := st24_2_3 u v x y z hin0 hin1
  have h1 := st25_2_3 u v x y z hin1 h0
  have h2 := st30_2_3 u v x y z hin2 hin1
  have h3 := st31_2_3 u v x y z hin1 h2
  have h4 := st32_2_3 u v x y z h3 h1
  have h5 := st33_2_3 u v x y z h1 h4
  exact h5

lemma leaf238_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp332_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp400_2_3 u v x y z = 0)
    : PolyRefl.eval cp579_2_3 u v x y z = 0 := by
  have h0 := st128_2_3 u v x y z hin0 hin1
  have h1 := st129_2_3 u v x y z hin1 h0
  have h2 := st156_2_3 u v x y z hin2 hin1
  have h3 := st238_2_3 u v x y z h1 h2
  exact h3

lemma leaf239_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp426_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp391_2_3 u v x y z = 0)
    : PolyRefl.eval cp722_2_3 u v x y z = 0 := by
  have h0 := st168_2_3 u v x y z hin0 hin1
  have h1 := st152_2_3 u v x y z hin2 hin1
  have h2 := st153_2_3 u v x y z hin1 h1
  have h3 := st312_2_3 u v x y z h2 h0
  have h4 := st313_2_3 u v x y z h0 h3
  exact h4

lemma leaf240_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp176_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp158_2_3 u v x y z = 0)
    : PolyRefl.eval cp597_2_3 u v x y z = 0 := by
  have h0 := st66_2_3 u v x y z hin0 hin1
  have h1 := st67_2_3 u v x y z hin1 h0
  have h2 := st60_2_3 u v x y z hin2 hin1
  have h3 := st246_2_3 u v x y z h1 h2
  exact h3

lemma leaf241_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp34_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp295_2_3 u v x y z = 0)
    : PolyRefl.eval cp525_2_3 u v x y z = 0 := by
  have h0 := st10_2_3 u v x y z hin0 hin1
  have h1 := st11_2_3 u v x y z hin1 h0
  have h2 := st114_2_3 u v x y z hin2 hin1
  have h3 := st307_2_3 u v x y z h1 h2
  have h4 := st308_2_3 u v x y z h2 h3
  have h5 := st309_2_3 u v x y z h3 h4
  exact h5

lemma leaf242_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp248_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp457_2_3 u v x y z = 0)
    : PolyRefl.eval cp456_2_3 u v x y z = 0 := by
  have h0 := st92_2_3 u v x y z hin0 hin1
  have h1 := st93_2_3 u v x y z hin1 h0
  have h2 := st179_2_3 u v x y z hin2 hin1
  have h3 := st180_2_3 u v x y z hin1 h2
  have h4 := st181_2_3 u v x y z h1 h3
  have h5 := st182_2_3 u v x y z h3 h4
  exact h5

lemma leaf243_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp57_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp75_2_3 u v x y z = 0)
    : PolyRefl.eval cp137_2_3 u v x y z = 0 := by
  have h0 := st20_2_3 u v x y z hin0 hin1
  have h1 := st21_2_3 u v x y z hin1 h0
  have h2 := st26_2_3 u v x y z hin2 hin1
  have h3 := st27_2_3 u v x y z hin1 h2
  have h4 := st50_2_3 u v x y z h3 h1
  have h5 := st51_2_3 u v x y z h1 h4
  exact h5

lemma leaf244_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp164_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp295_2_3 u v x y z = 0)
    : PolyRefl.eval cp163_2_3 u v x y z = 0 := by
  have h0 := st62_2_3 u v x y z hin0 hin1
  have h1 := st114_2_3 u v x y z hin2 hin1
  have h2 := st314_2_3 u v x y z h1 h0
  have h3 := st315_2_3 u v x y z h0 h2
  exact h3

lemma leaf245_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp609_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp245_2_3 u v x y z = 0)
    : PolyRefl.eval cp581_2_3 u v x y z = 0 := by
  have h0 := st251_2_3 u v x y z hin0 hin1
  have h1 := st252_2_3 u v x y z hin1 h0
  have h2 := st91_2_3 u v x y z hin2 hin1
  have h3 := st239_2_3 u v x y z h1 h2
  have h4 := st240_2_3 u v x y z h2 h3
  exact h4

lemma leaf246_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp255_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp57_2_3 u v x y z = 0)
    : PolyRefl.eval cp354_2_3 u v x y z = 0 := by
  have h0 := st96_2_3 u v x y z hin0 hin1
  have h1 := st97_2_3 u v x y z hin1 h0
  have h2 := st20_2_3 u v x y z hin2 hin1
  have h3 := st21_2_3 u v x y z hin1 h2
  have h4 := st138_2_3 u v x y z h1 h3
  have h5 := st139_2_3 u v x y z h3 h4
  exact h5

lemma leaf247_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp57_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp53_2_3 u v x y z = 0)
    : PolyRefl.eval cp413_2_3 u v x y z = 0 := by
  have h0 := st20_2_3 u v x y z hin0 hin1
  have h1 := st21_2_3 u v x y z hin1 h0
  have h2 := st18_2_3 u v x y z hin2 hin1
  have h3 := st19_2_3 u v x y z hin1 h2
  have h4 := st163_2_3 u v x y z h1 h3
  have h5 := st164_2_3 u v x y z h3 h4
  exact h5

lemma leaf248_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp554_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp571_2_3 u v x y z = 0)
    : PolyRefl.eval cp471_2_3 u v x y z = 0 := by
  have h0 := st223_2_3 u v x y z hin0 hin1
  have h1 := st224_2_3 u v x y z hin1 h0
  have h2 := st234_2_3 u v x y z hin2 hin1
  have h3 := st235_2_3 u v x y z hin1 h2
  have h4 := st218_2_3 u v x y z h3 h1
  exact h4

lemma leaf249_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp28_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp164_2_3 u v x y z = 0)
    : PolyRefl.eval cp510_2_3 u v x y z = 0 := by
  have h0 := st8_2_3 u v x y z hin0 hin1
  have h1 := st9_2_3 u v x y z hin1 h0
  have h2 := st62_2_3 u v x y z hin2 hin1
  have h3 := st203_2_3 u v x y z h1 h2
  exact h3

lemma leaf250_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp6_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp494_2_3 u v x y z = 0)
    : PolyRefl.eval cp0_2_3 u v x y z = 0 := by
  have h0 := st1_2_3 u v x y z hin0 hin1
  have h1 := st2_2_3 u v x y z hin1 h0
  have h2 := st195_2_3 u v x y z hin2 hin1
  have h3 := st196_2_3 u v x y z h1 h2
  exact h3

lemma leaf251_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp569_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp164_2_3 u v x y z = 0)
    : PolyRefl.eval cp331_2_3 u v x y z = 0 := by
  have h0 := st232_2_3 u v x y z hin0 hin1
  have h1 := st233_2_3 u v x y z hin1 h0
  have h2 := st62_2_3 u v x y z hin2 hin1
  have h3 := st130_2_3 u v x y z h1 h2
  exact h3

lemma leaf252_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp142_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp395_2_3 u v x y z = 0)
    : PolyRefl.eval cp86_2_3 u v x y z = 0 := by
  have h0 := st52_2_3 u v x y z hin0 hin1
  have h1 := st53_2_3 u v x y z hin1 h0
  have h2 := st154_2_3 u v x y z hin2 hin1
  have h3 := st155_2_3 u v x y z hin1 h2
  have h4 := st32_2_3 u v x y z h3 h1
  have h5 := st33_2_3 u v x y z h1 h4
  exact h5

lemma leaf253_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp227_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp519_2_3 u v x y z = 0)
    : PolyRefl.eval cp518_2_3 u v x y z = 0 := by
  have h0 := st84_2_3 u v x y z hin0 hin1
  have h1 := st207_2_3 u v x y z hin2 hin1
  have h2 := st208_2_3 u v x y z hin1 h1
  have h3 := st245_2_3 u v x y z h2 h0
  exact h3

lemma leaf254_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp142_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp53_2_3 u v x y z = 0)
    : PolyRefl.eval cp600_2_3 u v x y z = 0 := by
  have h0 := st52_2_3 u v x y z hin0 hin1
  have h1 := st53_2_3 u v x y z hin1 h0
  have h2 := st18_2_3 u v x y z hin2 hin1
  have h3 := st19_2_3 u v x y z hin1 h2
  have h4 := st247_2_3 u v x y z h1 h3
  exact h4

lemma leaf255_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp53_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp569_2_3 u v x y z = 0)
    : PolyRefl.eval cp498_2_3 u v x y z = 0 := by
  have h0 := st18_2_3 u v x y z hin0 hin1
  have h1 := st19_2_3 u v x y z hin1 h0
  have h2 := st232_2_3 u v x y z hin2 hin1
  have h3 := st233_2_3 u v x y z hin1 h2
  have h4 := st197_2_3 u v x y z h3 h1
  have h5 := st198_2_3 u v x y z h1 h4
  exact h5

lemma leaf256_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp268_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp729_2_3 u v x y z = 0)
    : PolyRefl.eval cp193_2_3 u v x y z = 0 := by
  have h0 := st102_2_3 u v x y z hin0 hin1
  have h1 := st103_2_3 u v x y z hin1 h0
  have h2 := st316_2_3 u v x y z hin2 hin1
  have h3 := st317_2_3 u v x y z hin1 h2
  have h4 := st295_2_3 u v x y z h3 h1
  exact h4

lemma leaf257_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp105_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp164_2_3 u v x y z = 0)
    : PolyRefl.eval cp224_2_3 u v x y z = 0 := by
  have h0 := st37_2_3 u v x y z hin0 hin1
  have h1 := st38_2_3 u v x y z hin1 h0
  have h2 := st62_2_3 u v x y z hin2 hin1
  have h3 := st83_2_3 u v x y z h1 h2
  exact h3

lemma leaf258_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp395_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp69_2_3 u v x y z = 0)
    : PolyRefl.eval cp86_2_3 u v x y z = 0 := by
  have h0 := st154_2_3 u v x y z hin0 hin1
  have h1 := st155_2_3 u v x y z hin1 h0
  have h2 := st24_2_3 u v x y z hin2 hin1
  have h3 := st25_2_3 u v x y z hin1 h2
  have h4 := st32_2_3 u v x y z h1 h3
  have h5 := st33_2_3 u v x y z h3 h4
  exact h5

lemma leaf259_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp503_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp678_2_3 u v x y z = 0)
    : PolyRefl.eval cp14_2_3 u v x y z = 0 := by
  have h0 := st199_2_3 u v x y z hin0 hin1
  have h1 := st287_2_3 u v x y z hin2 hin0
  have h2 := st288_2_3 u v x y z hin0 h1
  have h3 := st289_2_3 u v x y z h2 h0
  exact h3

lemma leaf260_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp384_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp378_2_3 u v x y z = 0)
    : PolyRefl.eval cp377_2_3 u v x y z = 0 := by
  have h0 := st149_2_3 u v x y z hin0 hin1
  have h1 := st150_2_3 u v x y z hin1 h0
  have h2 := st147_2_3 u v x y z hin2 hin1
  have h3 := st148_2_3 u v x y z hin1 h2
  have h4 := st151_2_3 u v x y z h1 h3
  exact h4

lemma leaf261_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp315_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp248_2_3 u v x y z = 0)
    : PolyRefl.eval cp456_2_3 u v x y z = 0 := by
  have h0 := st122_2_3 u v x y z hin0 hin1
  have h1 := st123_2_3 u v x y z hin1 h0
  have h2 := st92_2_3 u v x y z hin2 hin1
  have h3 := st93_2_3 u v x y z hin1 h2
  have h4 := st181_2_3 u v x y z h3 h1
  have h5 := st182_2_3 u v x y z h1 h4
  exact h5

lemma leaf262_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp592_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp209_2_3 u v x y z = 0)
    : PolyRefl.eval cp518_2_3 u v x y z = 0 := by
  have h0 := st243_2_3 u v x y z hin0 hin1
  have h1 := st244_2_3 u v x y z hin1 h0
  have h2 := st77_2_3 u v x y z hin2 hin1
  have h3 := st209_2_3 u v x y z h1 h2
  exact h3

lemma leaf263_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp295_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp53_2_3 u v x y z = 0)
    : PolyRefl.eval cp525_2_3 u v x y z = 0 := by
  have h0 := st114_2_3 u v x y z hin0 hin1
  have h1 := st18_2_3 u v x y z hin2 hin1
  have h2 := st19_2_3 u v x y z hin1 h1
  have h3 := st307_2_3 u v x y z h2 h0
  have h4 := st308_2_3 u v x y z h0 h3
  have h5 := st309_2_3 u v x y z h3 h4
  exact h5

lemma leaf264_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp705_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp566_2_3 u v x y z = 0)
    : PolyRefl.eval cp621_2_3 u v x y z = 0 := by
  have h0 := st302_2_3 u v x y z hin0 hin1
  have h1 := st303_2_3 u v x y z hin1 h0
  have h2 := st229_2_3 u v x y z hin2 hin1
  have h3 := st230_2_3 u v x y z hin1 h2
  have h4 := st260_2_3 u v x y z h1 h3
  exact h4

lemma leaf265_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp144_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp69_2_3 u v x y z = 0)
    : PolyRefl.eval cp132_2_3 u v x y z = 0 := by
  have h0 := st54_2_3 u v x y z hin0 hin1
  have h1 := st55_2_3 u v x y z hin1 h0
  have h2 := st24_2_3 u v x y z hin2 hin1
  have h3 := st25_2_3 u v x y z hin1 h2
  have h4 := st48_2_3 u v x y z h1 h3
  have h5 := st49_2_3 u v x y z h3 h4
  exact h5

lemma leaf266_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp466_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp17_2_3 u v x y z = 0)
    : PolyRefl.eval cp434_2_3 u v x y z = 0 := by
  have h0 := st183_2_3 u v x y z hin0 hin1
  have h1 := st184_2_3 u v x y z hin1 h0
  have h2 := st14_2_3 u v x y z hin1 hin2
  have h3 := st185_2_3 u v x y z h1 h2
  exact h3

lemma leaf267_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp17_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp148_2_3 u v x y z = 0)
    : PolyRefl.eval cp14_2_3 u v x y z = 0 := by
  have h0 := st14_2_3 u v x y z hin0 hin1
  have h1 := st56_2_3 u v x y z hin2 hin0
  have h2 := st57_2_3 u v x y z hin0 h1
  have h3 := st7_2_3 u v x y z h2 h0
  exact h3

lemma leaf268_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp295_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp164_2_3 u v x y z = 0)
    : PolyRefl.eval cp163_2_3 u v x y z = 0 := by
  have h0 := st114_2_3 u v x y z hin0 hin1
  have h1 := st62_2_3 u v x y z hin2 hin1
  have h2 := st314_2_3 u v x y z h0 h1
  have h3 := st315_2_3 u v x y z h1 h2
  exact h3

lemma leaf269_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp426_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp69_2_3 u v x y z = 0)
    : PolyRefl.eval cp425_2_3 u v x y z = 0 := by
  have h0 := st168_2_3 u v x y z hin0 hin1
  have h1 := st24_2_3 u v x y z hin2 hin1
  have h2 := st25_2_3 u v x y z hin1 h1
  have h3 := st169_2_3 u v x y z h2 h0
  have h4 := st170_2_3 u v x y z h0 h3
  exact h4

lemma leaf270_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp164_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp569_2_3 u v x y z = 0)
    : PolyRefl.eval cp331_2_3 u v x y z = 0 := by
  have h0 := st62_2_3 u v x y z hin0 hin1
  have h1 := st232_2_3 u v x y z hin2 hin1
  have h2 := st233_2_3 u v x y z hin1 h1
  have h3 := st130_2_3 u v x y z h2 h0
  exact h3

lemma leaf271_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp441_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp733_2_3 u v x y z = 0)
    : PolyRefl.eval cp14_2_3 u v x y z = 0 := by
  have h0 := st173_2_3 u v x y z hin0 hin1
  have h1 := st318_2_3 u v x y z hin2 hin0
  have h2 := st319_2_3 u v x y z hin0 h1
  have h3 := st289_2_3 u v x y z h2 h0
  exact h3

lemma leaf272_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp227_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp362_2_3 u v x y z = 0)
    : PolyRefl.eval cp361_2_3 u v x y z = 0 := by
  have h0 := st84_2_3 u v x y z hin0 hin1
  have h1 := st140_2_3 u v x y z hin2 hin1
  have h2 := st276_2_3 u v x y z h1 h0
  exact h2

lemma leaf273_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp449_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp209_2_3 u v x y z = 0)
    : PolyRefl.eval cp448_2_3 u v x y z = 0 := by
  have h0 := st176_2_3 u v x y z hin0 hin1
  have h1 := st177_2_3 u v x y z hin1 h0
  have h2 := st77_2_3 u v x y z hin2 hin1
  have h3 := st292_2_3 u v x y z h1 h2
  exact h3

lemma leaf274_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp313_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp182_2_3 u v x y z = 0)
    : PolyRefl.eval cp175_2_3 u v x y z = 0 := by
  have h0 := st120_2_3 u v x y z hin0 hin1
  have h1 := st121_2_3 u v x y z hin1 h0
  have h2 := st68_2_3 u v x y z hin2 hin1
  have h3 := st69_2_3 u v x y z hin1 h2
  have h4 := st70_2_3 u v x y z h3 h1
  have h5 := st71_2_3 u v x y z h1 h4
  exact h5

lemma leaf275_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp539_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp340_2_3 u v x y z = 0)
    : PolyRefl.eval cp471_2_3 u v x y z = 0 := by
  have h0 := st216_2_3 u v x y z hin0 hin1
  have h1 := st217_2_3 u v x y z hin1 h0
  have h2 := st131_2_3 u v x y z hin2 hin1
  have h3 := st132_2_3 u v x y z hin1 h2
  have h4 := st218_2_3 u v x y z h1 h3
  exact h4

lemma leaf276_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp16_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp736_2_3 u v x y z = 0)
    : PolyRefl.eval cp434_2_3 u v x y z = 0 := by
  have h0 := st4_2_3 u v x y z hin0 hin1
  have h1 := st320_2_3 u v x y z hin2 hin0
  have h2 := st321_2_3 u v x y z hin0 h1
  have h3 := st185_2_3 u v x y z h2 h0
  exact h3

lemma leaf277_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp69_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp107_2_3 u v x y z = 0)
    : PolyRefl.eval cp132_2_3 u v x y z = 0 := by
  have h0 := st24_2_3 u v x y z hin0 hin1
  have h1 := st25_2_3 u v x y z hin1 h0
  have h2 := st39_2_3 u v x y z hin2 hin1
  have h3 := st40_2_3 u v x y z hin1 h2
  have h4 := st48_2_3 u v x y z h3 h1
  have h5 := st49_2_3 u v x y z h1 h4
  exact h5

lemma leaf278_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp609_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp478_2_3 u v x y z = 0)
    : PolyRefl.eval cp482_2_3 u v x y z = 0 := by
  have h0 := st251_2_3 u v x y z hin0 hin1
  have h1 := st252_2_3 u v x y z hin1 h0
  have h2 := st189_2_3 u v x y z hin2 hin1
  have h3 := st190_2_3 u v x y z hin1 h2
  have h4 := st193_2_3 u v x y z h3 h1
  have h5 := st194_2_3 u v x y z h1 h4
  exact h5

lemma leaf279_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp478_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp483_2_3 u v x y z = 0)
    : PolyRefl.eval cp482_2_3 u v x y z = 0 := by
  have h0 := st189_2_3 u v x y z hin0 hin1
  have h1 := st190_2_3 u v x y z hin1 h0
  have h2 := st191_2_3 u v x y z hin2 hin1
  have h3 := st192_2_3 u v x y z hin1 h2
  have h4 := st193_2_3 u v x y z h1 h3
  have h5 := st194_2_3 u v x y z h3 h4
  exact h5

lemma leaf280_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp683_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp227_2_3 u v x y z = 0)
    : PolyRefl.eval cp448_2_3 u v x y z = 0 := by
  have h0 := st290_2_3 u v x y z hin0 hin1
  have h1 := st291_2_3 u v x y z hin1 h0
  have h2 := st84_2_3 u v x y z hin2 hin1
  have h3 := st178_2_3 u v x y z h1 h2
  exact h3

lemma leaf281_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp142_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp75_2_3 u v x y z = 0)
    : PolyRefl.eval cp68_2_3 u v x y z = 0 := by
  have h0 := st52_2_3 u v x y z hin0 hin1
  have h1 := st53_2_3 u v x y z hin1 h0
  have h2 := st26_2_3 u v x y z hin2 hin1
  have h3 := st27_2_3 u v x y z hin1 h2
  have h4 := st28_2_3 u v x y z h3 h1
  have h5 := st29_2_3 u v x y z h1 h4
  exact h5

lemma leaf282_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp276_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp739_2_3 u v x y z = 0)
    : PolyRefl.eval cp621_2_3 u v x y z = 0 := by
  have h0 := st105_2_3 u v x y z hin0 hin1
  have h1 := st106_2_3 u v x y z hin1 h0
  have h2 := st322_2_3 u v x y z hin2 hin1
  have h3 := st323_2_3 u v x y z hin1 h2
  have h4 := st263_2_3 u v x y z h3 h1
  exact h4

lemma leaf283_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp142_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp545_2_3 u v x y z = 0)
    : PolyRefl.eval cp68_2_3 u v x y z = 0 := by
  have h0 := st52_2_3 u v x y z hin0 hin1
  have h1 := st53_2_3 u v x y z hin1 h0
  have h2 := st219_2_3 u v x y z hin2 hin1
  have h3 := st220_2_3 u v x y z hin1 h2
  have h4 := st28_2_3 u v x y z h3 h1
  have h5 := st29_2_3 u v x y z h1 h4
  exact h5

lemma leaf284_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp276_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp686_2_3 u v x y z = 0)
    : PolyRefl.eval cp193_2_3 u v x y z = 0 := by
  have h0 := st105_2_3 u v x y z hin0 hin1
  have h1 := st106_2_3 u v x y z hin1 h0
  have h2 := st293_2_3 u v x y z hin2 hin1
  have h3 := st294_2_3 u v x y z hin1 h2
  have h4 := st295_2_3 u v x y z h3 h1
  exact h4

lemma leaf285_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp124_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp391_2_3 u v x y z = 0)
    : PolyRefl.eval cp369_2_3 u v x y z = 0 := by
  have h0 := st45_2_3 u v x y z hin0 hin1
  have h1 := st152_2_3 u v x y z hin2 hin1
  have h2 := st153_2_3 u v x y z hin1 h1
  have h3 := st144_2_3 u v x y z h2 h0
  have h4 := st145_2_3 u v x y z h0 h3
  exact h4

lemma leaf286_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp53_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp332_2_3 u v x y z = 0)
    : PolyRefl.eval cp498_2_3 u v x y z = 0 := by
  have h0 := st18_2_3 u v x y z hin0 hin1
  have h1 := st19_2_3 u v x y z hin1 h0
  have h2 := st128_2_3 u v x y z hin2 hin1
  have h3 := st129_2_3 u v x y z hin1 h2
  have h4 := st197_2_3 u v x y z h3 h1
  have h5 := st198_2_3 u v x y z h1 h4
  exact h5

lemma leaf287_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp268_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp628_2_3 u v x y z = 0)
    : PolyRefl.eval cp621_2_3 u v x y z = 0 := by
  have h0 := st102_2_3 u v x y z hin0 hin1
  have h1 := st103_2_3 u v x y z hin1 h0
  have h2 := st261_2_3 u v x y z hin2 hin1
  have h3 := st262_2_3 u v x y z hin1 h2
  have h4 := st263_2_3 u v x y z h3 h1
  exact h4

lemma leaf288_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp105_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp53_2_3 u v x y z = 0)
    : PolyRefl.eval cp413_2_3 u v x y z = 0 := by
  have h0 := st37_2_3 u v x y z hin0 hin1
  have h1 := st38_2_3 u v x y z hin1 h0
  have h2 := st18_2_3 u v x y z hin2 hin1
  have h3 := st19_2_3 u v x y z hin1 h2
  have h4 := st163_2_3 u v x y z h1 h3
  have h5 := st164_2_3 u v x y z h3 h4
  exact h5

lemma leaf289_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp34_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp220_2_3 u v x y z = 0)
    : PolyRefl.eval cp289_2_3 u v x y z = 0 := by
  have h0 := st10_2_3 u v x y z hin0 hin1
  have h1 := st11_2_3 u v x y z hin1 h0
  have h2 := st81_2_3 u v x y z hin2 hin1
  have h3 := st82_2_3 u v x y z hin1 h2
  have h4 := st112_2_3 u v x y z h3 h1
  have h5 := st113_2_3 u v x y z h1 h4
  exact h5

lemma leaf290_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp227_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp683_2_3 u v x y z = 0)
    : PolyRefl.eval cp448_2_3 u v x y z = 0 := by
  have h0 := st84_2_3 u v x y z hin0 hin1
  have h1 := st290_2_3 u v x y z hin2 hin1
  have h2 := st291_2_3 u v x y z hin1 h1
  have h3 := st178_2_3 u v x y z h2 h0
  exact h3

lemma leaf291_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp503_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp534_2_3 u v x y z = 0)
    : PolyRefl.eval cp97_2_3 u v x y z = 0 := by
  have h0 := st199_2_3 u v x y z hin0 hin1
  have h1 := st213_2_3 u v x y z hin2 hin0
  have h2 := st214_2_3 u v x y z hin0 h1
  have h3 := st215_2_3 u v x y z h2 h0
  exact h3

lemma leaf292_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp6_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp2_2_3 u v x y z = 0)
    : PolyRefl.eval cp0_2_3 u v x y z = 0 := by
  have h0 := st1_2_3 u v x y z hin0 hin1
  have h1 := st2_2_3 u v x y z hin1 h0
  have h2 := st0_2_3 u v x y z hin2 hin1
  have h3 := st3_2_3 u v x y z h1 h2
  exact h3

lemma leaf293_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp400_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp119_2_3 u v x y z = 0)
    : PolyRefl.eval cp445_2_3 u v x y z = 0 := by
  have h0 := st156_2_3 u v x y z hin0 hin1
  have h1 := st43_2_3 u v x y z hin2 hin1
  have h2 := st44_2_3 u v x y z hin1 h1
  have h3 := st175_2_3 u v x y z h2 h0
  exact h3

lemma leaf294_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp304_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp313_2_3 u v x y z = 0)
    : PolyRefl.eval cp303_2_3 u v x y z = 0 := by
  have h0 := st117_2_3 u v x y z hin0 hin1
  have h1 := st120_2_3 u v x y z hin2 hin1
  have h2 := st121_2_3 u v x y z hin1 h1
  have h3 := st118_2_3 u v x y z h2 h0
  exact h3

lemma leaf295_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp355_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp142_2_3 u v x y z = 0)
    : PolyRefl.eval cp254_2_3 u v x y z = 0 := by
  have h0 := st136_2_3 u v x y z hin0 hin1
  have h1 := st137_2_3 u v x y z hin1 h0
  have h2 := st52_2_3 u v x y z hin2 hin1
  have h3 := st53_2_3 u v x y z hin1 h2
  have h4 := st98_2_3 u v x y z h1 h3
  have h5 := st99_2_3 u v x y z h3 h4
  exact h5

lemma leaf296_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp276_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp743_2_3 u v x y z = 0)
    : PolyRefl.eval cp262_2_3 u v x y z = 0 := by
  have h0 := st105_2_3 u v x y z hin0 hin1
  have h1 := st106_2_3 u v x y z hin1 h0
  have h2 := st324_2_3 u v x y z hin2 hin1
  have h3 := st325_2_3 u v x y z hin1 h2
  have h4 := st104_2_3 u v x y z h3 h1
  exact h4

lemma leaf297_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp646_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp227_2_3 u v x y z = 0)
    : PolyRefl.eval cp645_2_3 u v x y z = 0 := by
  have h0 := st269_2_3 u v x y z hin0 hin1
  have h1 := st84_2_3 u v x y z hin2 hin1
  have h2 := st326_2_3 u v x y z h0 h1
  exact h2

lemma leaf298_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp57_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp355_2_3 u v x y z = 0)
    : PolyRefl.eval cp354_2_3 u v x y z = 0 := by
  have h0 := st20_2_3 u v x y z hin0 hin1
  have h1 := st21_2_3 u v x y z hin1 h0
  have h2 := st136_2_3 u v x y z hin2 hin1
  have h3 := st137_2_3 u v x y z hin1 h2
  have h4 := st138_2_3 u v x y z h3 h1
  have h5 := st139_2_3 u v x y z h1 h4
  exact h5

lemma leaf299_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp245_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp152_2_3 u v x y z = 0)
    : PolyRefl.eval cp244_2_3 u v x y z = 0 := by
  have h0 := st91_2_3 u v x y z hin0 hin1
  have h1 := st58_2_3 u v x y z hin2 hin1
  have h2 := st59_2_3 u v x y z hin1 h1
  have h3 := st94_2_3 u v x y z h2 h0
  have h4 := st95_2_3 u v x y z h0 h3
  exact h4

lemma leaf300_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp69_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp426_2_3 u v x y z = 0)
    : PolyRefl.eval cp425_2_3 u v x y z = 0 := by
  have h0 := st24_2_3 u v x y z hin0 hin1
  have h1 := st25_2_3 u v x y z hin1 h0
  have h2 := st168_2_3 u v x y z hin2 hin1
  have h3 := st169_2_3 u v x y z h1 h2
  have h4 := st170_2_3 u v x y z h2 h3
  exact h4

lemma leaf301_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp105_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp400_2_3 u v x y z = 0)
    : PolyRefl.eval cp634_2_3 u v x y z = 0 := by
  have h0 := st37_2_3 u v x y z hin0 hin1
  have h1 := st38_2_3 u v x y z hin1 h0
  have h2 := st156_2_3 u v x y z hin2 hin1
  have h3 := st264_2_3 u v x y z h1 h2
  exact h3

lemma leaf302_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp220_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp53_2_3 u v x y z = 0)
    : PolyRefl.eval cp289_2_3 u v x y z = 0 := by
  have h0 := st81_2_3 u v x y z hin0 hin1
  have h1 := st82_2_3 u v x y z hin1 h0
  have h2 := st18_2_3 u v x y z hin2 hin1
  have h3 := st19_2_3 u v x y z hin1 h2
  have h4 := st112_2_3 u v x y z h1 h3
  have h5 := st113_2_3 u v x y z h3 h4
  exact h5

lemma leaf303_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp248_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp158_2_3 u v x y z = 0)
    : PolyRefl.eval cp151_2_3 u v x y z = 0 := by
  have h0 := st92_2_3 u v x y z hin0 hin1
  have h1 := st93_2_3 u v x y z hin1 h0
  have h2 := st60_2_3 u v x y z hin2 hin1
  have h3 := st61_2_3 u v x y z h1 h2
  exact h3

lemma leaf304_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp268_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp748_2_3 u v x y z = 0)
    : PolyRefl.eval cp275_2_3 u v x y z = 0 := by
  have h0 := st102_2_3 u v x y z hin0 hin1
  have h1 := st103_2_3 u v x y z hin1 h0
  have h2 := st327_2_3 u v x y z hin2 hin1
  have h3 := st328_2_3 u v x y z hin1 h2
  have h4 := st109_2_3 u v x y z h3 h1
  exact h4

lemma leaf305_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp28_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp426_2_3 u v x y z = 0)
    : PolyRefl.eval cp722_2_3 u v x y z = 0 := by
  have h0 := st8_2_3 u v x y z hin0 hin1
  have h1 := st9_2_3 u v x y z hin1 h0
  have h2 := st168_2_3 u v x y z hin2 hin1
  have h3 := st312_2_3 u v x y z h1 h2
  have h4 := st313_2_3 u v x y z h2 h3
  exact h4

lemma leaf306_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp75_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp142_2_3 u v x y z = 0)
    : PolyRefl.eval cp68_2_3 u v x y z = 0 := by
  have h0 := st26_2_3 u v x y z hin0 hin1
  have h1 := st27_2_3 u v x y z hin1 h0
  have h2 := st52_2_3 u v x y z hin2 hin1
  have h3 := st53_2_3 u v x y z hin1 h2
  have h4 := st28_2_3 u v x y z h1 h3
  have h5 := st29_2_3 u v x y z h3 h4
  exact h5

lemma leaf307_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp57_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp255_2_3 u v x y z = 0)
    : PolyRefl.eval cp354_2_3 u v x y z = 0 := by
  have h0 := st20_2_3 u v x y z hin0 hin1
  have h1 := st21_2_3 u v x y z hin1 h0
  have h2 := st96_2_3 u v x y z hin2 hin1
  have h3 := st97_2_3 u v x y z hin1 h2
  have h4 := st138_2_3 u v x y z h3 h1
  have h5 := st139_2_3 u v x y z h1 h4
  exact h5

lemma leaf308_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp142_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp426_2_3 u v x y z = 0)
    : PolyRefl.eval cp425_2_3 u v x y z = 0 := by
  have h0 := st52_2_3 u v x y z hin0 hin1
  have h1 := st53_2_3 u v x y z hin1 h0
  have h2 := st168_2_3 u v x y z hin2 hin1
  have h3 := st169_2_3 u v x y z h1 h2
  have h4 := st170_2_3 u v x y z h2 h3
  exact h4

lemma leaf309_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp332_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp426_2_3 u v x y z = 0)
    : PolyRefl.eval cp617_2_3 u v x y z = 0 := by
  have h0 := st128_2_3 u v x y z hin0 hin1
  have h1 := st129_2_3 u v x y z hin1 h0
  have h2 := st168_2_3 u v x y z hin2 hin1
  have h3 := st256_2_3 u v x y z h1 h2
  have h4 := st257_2_3 u v x y z h2 h3
  exact h4

lemma leaf310_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp426_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp119_2_3 u v x y z = 0)
    : PolyRefl.eval cp549_2_3 u v x y z = 0 := by
  have h0 := st168_2_3 u v x y z hin0 hin1
  have h1 := st43_2_3 u v x y z hin2 hin1
  have h2 := st44_2_3 u v x y z hin1 h1
  have h3 := st221_2_3 u v x y z h2 h0
  have h4 := st222_2_3 u v x y z h0 h3
  exact h4

lemma leaf311_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp355_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp69_2_3 u v x y z = 0)
    : PolyRefl.eval cp254_2_3 u v x y z = 0 := by
  have h0 := st136_2_3 u v x y z hin0 hin1
  have h1 := st137_2_3 u v x y z hin1 h0
  have h2 := st24_2_3 u v x y z hin2 hin1
  have h3 := st25_2_3 u v x y z hin1 h2
  have h4 := st98_2_3 u v x y z h1 h3
  have h5 := st99_2_3 u v x y z h3 h4
  exact h5

lemma leaf312_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp176_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp315_2_3 u v x y z = 0)
    : PolyRefl.eval cp312_2_3 u v x y z = 0 := by
  have h0 := st66_2_3 u v x y z hin0 hin1
  have h1 := st67_2_3 u v x y z hin1 h0
  have h2 := st122_2_3 u v x y z hin2 hin1
  have h3 := st123_2_3 u v x y z hin1 h2
  have h4 := st124_2_3 u v x y z h1 h3
  have h5 := st125_2_3 u v x y z h3 h4
  exact h5

lemma leaf313_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp478_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp176_2_3 u v x y z = 0)
    : PolyRefl.eval cp175_2_3 u v x y z = 0 := by
  have h0 := st189_2_3 u v x y z hin0 hin1
  have h1 := st190_2_3 u v x y z hin1 h0
  have h2 := st66_2_3 u v x y z hin2 hin1
  have h3 := st67_2_3 u v x y z hin1 h2
  have h4 := st70_2_3 u v x y z h1 h3
  have h5 := st71_2_3 u v x y z h3 h4
  exact h5

lemma leaf314_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp457_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp176_2_3 u v x y z = 0)
    : PolyRefl.eval cp637_2_3 u v x y z = 0 := by
  have h0 := st179_2_3 u v x y z hin0 hin1
  have h1 := st180_2_3 u v x y z hin1 h0
  have h2 := st66_2_3 u v x y z hin2 hin1
  have h3 := st67_2_3 u v x y z hin1 h2
  have h4 := st265_2_3 u v x y z h1 h3
  have h5 := st266_2_3 u v x y z h3 h4
  exact h5

lemma leaf315_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp391_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp124_2_3 u v x y z = 0)
    : PolyRefl.eval cp369_2_3 u v x y z = 0 := by
  have h0 := st152_2_3 u v x y z hin0 hin1
  have h1 := st153_2_3 u v x y z hin1 h0
  have h2 := st45_2_3 u v x y z hin2 hin1
  have h3 := st144_2_3 u v x y z h1 h2
  have h4 := st145_2_3 u v x y z h2 h3
  exact h4

lemma leaf316_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp57_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp400_2_3 u v x y z = 0)
    : PolyRefl.eval cp634_2_3 u v x y z = 0 := by
  have h0 := st20_2_3 u v x y z hin0 hin1
  have h1 := st21_2_3 u v x y z hin1 h0
  have h2 := st156_2_3 u v x y z hin2 hin1
  have h3 := st264_2_3 u v x y z h1 h2
  exact h3

lemma leaf317_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp441_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp752_2_3 u v x y z = 0)
    : PolyRefl.eval cp45_2_3 u v x y z = 0 := by
  have h0 := st173_2_3 u v x y z hin0 hin1
  have h1 := st329_2_3 u v x y z hin2 hin0
  have h2 := st330_2_3 u v x y z hin0 h1
  have h3 := st202_2_3 u v x y z h2 h0
  exact h3

lemma leaf318_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp158_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp313_2_3 u v x y z = 0)
    : PolyRefl.eval cp597_2_3 u v x y z = 0 := by
  have h0 := st60_2_3 u v x y z hin0 hin1
  have h1 := st120_2_3 u v x y z hin2 hin1
  have h2 := st121_2_3 u v x y z hin1 h1
  have h3 := st246_2_3 u v x y z h2 h0
  exact h3

lemma leaf319_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp167_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp164_2_3 u v x y z = 0)
    : PolyRefl.eval cp163_2_3 u v x y z = 0 := by
  have h0 := st63_2_3 u v x y z hin0 hin1
  have h1 := st62_2_3 u v x y z hin2 hin1
  have h2 := st64_2_3 u v x y z h0 h1
  have h3 := st65_2_3 u v x y z h1 h2
  exact h3

lemma leaf320_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp426_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp295_2_3 u v x y z = 0)
    : PolyRefl.eval cp641_2_3 u v x y z = 0 := by
  have h0 := st168_2_3 u v x y z hin0 hin1
  have h1 := st114_2_3 u v x y z hin2 hin1
  have h2 := st267_2_3 u v x y z h1 h0
  have h3 := st268_2_3 u v x y z h0 h2
  exact h3

lemma leaf321_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp661_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp378_2_3 u v x y z = 0)
    : PolyRefl.eval cp339_2_3 u v x y z = 0 := by
  have h0 := st277_2_3 u v x y z hin0 hin1
  have h1 := st278_2_3 u v x y z hin1 h0
  have h2 := st147_2_3 u v x y z hin2 hin1
  have h3 := st148_2_3 u v x y z hin1 h2
  have h4 := st273_2_3 u v x y z h1 h3
  exact h4

lemma leaf322_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp426_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp167_2_3 u v x y z = 0)
    : PolyRefl.eval cp755_2_3 u v x y z = 0 := by
  have h0 := st168_2_3 u v x y z hin0 hin1
  have h1 := st63_2_3 u v x y z hin2 hin1
  have h2 := st331_2_3 u v x y z h1 h0
  have h3 := st332_2_3 u v x y z h0 h2
  exact h3

lemma leaf323_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp245_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp483_2_3 u v x y z = 0)
    : PolyRefl.eval cp581_2_3 u v x y z = 0 := by
  have h0 := st91_2_3 u v x y z hin0 hin1
  have h1 := st191_2_3 u v x y z hin2 hin1
  have h2 := st192_2_3 u v x y z hin1 h1
  have h3 := st239_2_3 u v x y z h2 h0
  have h4 := st240_2_3 u v x y z h0 h3
  exact h4

lemma leaf324_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp566_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp759_2_3 u v x y z = 0)
    : PolyRefl.eval cp262_2_3 u v x y z = 0 := by
  have h0 := st229_2_3 u v x y z hin0 hin1
  have h1 := st230_2_3 u v x y z hin1 h0
  have h2 := st333_2_3 u v x y z hin2 hin1
  have h3 := st334_2_3 u v x y z hin1 h2
  have h4 := st335_2_3 u v x y z h3 h1
  exact h4

lemma leaf325_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp152_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp304_2_3 u v x y z = 0)
    : PolyRefl.eval cp374_2_3 u v x y z = 0 := by
  have h0 := st58_2_3 u v x y z hin0 hin1
  have h1 := st59_2_3 u v x y z hin1 h0
  have h2 := st117_2_3 u v x y z hin2 hin1
  have h3 := st146_2_3 u v x y z h1 h2
  exact h3

lemma leaf326_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp248_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp304_2_3 u v x y z = 0)
    : PolyRefl.eval cp374_2_3 u v x y z = 0 := by
  have h0 := st92_2_3 u v x y z hin0 hin1
  have h1 := st93_2_3 u v x y z hin1 h0
  have h2 := st117_2_3 u v x y z hin2 hin1
  have h3 := st146_2_3 u v x y z h1 h2
  exact h3

lemma leaf327_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp248_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp236_2_3 u v x y z = 0)
    : PolyRefl.eval cp235_2_3 u v x y z = 0 := by
  have h0 := st92_2_3 u v x y z hin0 hin1
  have h1 := st93_2_3 u v x y z hin1 h0
  have h2 := st88_2_3 u v x y z hin2 hin1
  have h3 := st89_2_3 u v x y z h1 h2
  have h4 := st90_2_3 u v x y z h2 h3
  exact h4

lemma leaf328_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp105_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp87_2_3 u v x y z = 0)
    : PolyRefl.eval cp326_2_3 u v x y z = 0 := by
  have h0 := st37_2_3 u v x y z hin0 hin1
  have h1 := st38_2_3 u v x y z hin1 h0
  have h2 := st30_2_3 u v x y z hin2 hin1
  have h3 := st31_2_3 u v x y z hin1 h2
  have h4 := st126_2_3 u v x y z h3 h1
  have h5 := st127_2_3 u v x y z h1 h4
  exact h5

lemma leaf329_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp182_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp176_2_3 u v x y z = 0)
    : PolyRefl.eval cp175_2_3 u v x y z = 0 := by
  have h0 := st68_2_3 u v x y z hin0 hin1
  have h1 := st69_2_3 u v x y z hin1 h0
  have h2 := st66_2_3 u v x y z hin2 hin1
  have h3 := st67_2_3 u v x y z hin1 h2
  have h4 := st70_2_3 u v x y z h1 h3
  have h5 := st71_2_3 u v x y z h3 h4
  exact h5

lemma leaf330_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp124_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp69_2_3 u v x y z = 0)
    : PolyRefl.eval cp696_2_3 u v x y z = 0 := by
  have h0 := st45_2_3 u v x y z hin0 hin1
  have h1 := st24_2_3 u v x y z hin2 hin1
  have h2 := st25_2_3 u v x y z hin1 h1
  have h3 := st298_2_3 u v x y z h2 h0
  have h4 := st299_2_3 u v x y z h0 h3
  exact h4

lemma leaf331_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp554_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp602_2_3 u v x y z = 0)
    : PolyRefl.eval cp417_2_3 u v x y z = 0 := by
  have h0 := st223_2_3 u v x y z hin0 hin1
  have h1 := st224_2_3 u v x y z hin1 h0
  have h2 := st248_2_3 u v x y z hin2 hin1
  have h3 := st249_2_3 u v x y z hin1 h2
  have h4 := st250_2_3 u v x y z h3 h1
  exact h4

lemma leaf332_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp411_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp650_2_3 u v x y z = 0)
    : PolyRefl.eval cp339_2_3 u v x y z = 0 := by
  have h0 := st161_2_3 u v x y z hin0 hin1
  have h1 := st162_2_3 u v x y z hin1 h0
  have h2 := st271_2_3 u v x y z hin2 hin1
  have h3 := st272_2_3 u v x y z hin1 h2
  have h4 := st273_2_3 u v x y z h3 h1
  exact h4

lemma leaf333_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp315_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp176_2_3 u v x y z = 0)
    : PolyRefl.eval cp637_2_3 u v x y z = 0 := by
  have h0 := st122_2_3 u v x y z hin0 hin1
  have h1 := st123_2_3 u v x y z hin1 h0
  have h2 := st66_2_3 u v x y z hin2 hin1
  have h3 := st67_2_3 u v x y z hin1 h2
  have h4 := st265_2_3 u v x y z h1 h3
  have h5 := st266_2_3 u v x y z h3 h4
  exact h5

lemma leaf334_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp304_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp176_2_3 u v x y z = 0)
    : PolyRefl.eval cp303_2_3 u v x y z = 0 := by
  have h0 := st117_2_3 u v x y z hin0 hin1
  have h1 := st66_2_3 u v x y z hin2 hin1
  have h2 := st67_2_3 u v x y z hin1 h1
  have h3 := st118_2_3 u v x y z h2 h0
  exact h3

lemma leaf335_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp167_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp124_2_3 u v x y z = 0)
    : PolyRefl.eval cp765_2_3 u v x y z = 0 := by
  have h0 := st63_2_3 u v x y z hin0 hin1
  have h1 := st45_2_3 u v x y z hin2 hin1
  have h2 := st336_2_3 u v x y z h0 h1
  have h3 := st337_2_3 u v x y z h1 h2
  exact h3

lemma leaf336_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp736_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp16_2_3 u v x y z = 0)
    : PolyRefl.eval cp434_2_3 u v x y z = 0 := by
  have h0 := st320_2_3 u v x y z hin0 hin1
  have h1 := st321_2_3 u v x y z hin1 h0
  have h2 := st4_2_3 u v x y z hin1 hin2
  have h3 := st185_2_3 u v x y z h1 h2
  exact h3

lemma leaf337_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp194_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp769_2_3 u v x y z = 0)
    : PolyRefl.eval cp262_2_3 u v x y z = 0 := by
  have h0 := st72_2_3 u v x y z hin0 hin1
  have h1 := st73_2_3 u v x y z hin1 h0
  have h2 := st338_2_3 u v x y z hin2 hin1
  have h3 := st339_2_3 u v x y z hin1 h2
  have h4 := st335_2_3 u v x y z h3 h1
  exact h4

lemma leaf338_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp441_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp710_2_3 u v x y z = 0)
    : PolyRefl.eval cp97_2_3 u v x y z = 0 := by
  have h0 := st173_2_3 u v x y z hin0 hin1
  have h1 := st305_2_3 u v x y z hin2 hin0
  have h2 := st306_2_3 u v x y z hin0 h1
  have h3 := st215_2_3 u v x y z h2 h0
  exact h3

lemma leaf339_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp142_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp87_2_3 u v x y z = 0)
    : PolyRefl.eval cp86_2_3 u v x y z = 0 := by
  have h0 := st52_2_3 u v x y z hin0 hin1
  have h1 := st53_2_3 u v x y z hin1 h0
  have h2 := st30_2_3 u v x y z hin2 hin1
  have h3 := st31_2_3 u v x y z hin1 h2
  have h4 := st32_2_3 u v x y z h3 h1
  have h5 := st33_2_3 u v x y z h1 h4
  exact h5

lemma leaf340_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp34_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp28_2_3 u v x y z = 0)
    : PolyRefl.eval cp27_2_3 u v x y z = 0 := by
  have h0 := st10_2_3 u v x y z hin0 hin1
  have h1 := st11_2_3 u v x y z hin1 h0
  have h2 := st8_2_3 u v x y z hin2 hin1
  have h3 := st9_2_3 u v x y z hin1 h2
  have h4 := st12_2_3 u v x y z h3 h1
  have h5 := st13_2_3 u v x y z h1 h4
  exact h5

lemma leaf341_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp769_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp194_2_3 u v x y z = 0)
    : PolyRefl.eval cp262_2_3 u v x y z = 0 := by
  have h0 := st338_2_3 u v x y z hin0 hin1
  have h1 := st339_2_3 u v x y z hin1 h0
  have h2 := st72_2_3 u v x y z hin2 hin1
  have h3 := st73_2_3 u v x y z hin1 h2
  have h4 := st335_2_3 u v x y z h1 h3
  exact h4

lemma leaf342_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp391_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp426_2_3 u v x y z = 0)
    : PolyRefl.eval cp722_2_3 u v x y z = 0 := by
  have h0 := st152_2_3 u v x y z hin0 hin1
  have h1 := st153_2_3 u v x y z hin1 h0
  have h2 := st168_2_3 u v x y z hin2 hin1
  have h3 := st312_2_3 u v x y z h1 h2
  have h4 := st313_2_3 u v x y z h2 h3
  exact h4

lemma leaf343_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp346_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp340_2_3 u v x y z = 0)
    : PolyRefl.eval cp339_2_3 u v x y z = 0 := by
  have h0 := st133_2_3 u v x y z hin0 hin1
  have h1 := st134_2_3 u v x y z hin1 h0
  have h2 := st131_2_3 u v x y z hin2 hin1
  have h3 := st132_2_3 u v x y z hin1 h2
  have h4 := st135_2_3 u v x y z h1 h3
  exact h4

lemma leaf344_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp391_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp164_2_3 u v x y z = 0)
    : PolyRefl.eval cp510_2_3 u v x y z = 0 := by
  have h0 := st152_2_3 u v x y z hin0 hin1
  have h1 := st153_2_3 u v x y z hin1 h0
  have h2 := st62_2_3 u v x y z hin2 hin1
  have h3 := st203_2_3 u v x y z h1 h2
  exact h3

lemma leaf345_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp28_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp400_2_3 u v x y z = 0)
    : PolyRefl.eval cp669_2_3 u v x y z = 0 := by
  have h0 := st8_2_3 u v x y z hin0 hin1
  have h1 := st9_2_3 u v x y z hin1 h0
  have h2 := st156_2_3 u v x y z hin2 hin1
  have h3 := st282_2_3 u v x y z h1 h2
  exact h3

lemma leaf346_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp158_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp176_2_3 u v x y z = 0)
    : PolyRefl.eval cp597_2_3 u v x y z = 0 := by
  have h0 := st60_2_3 u v x y z hin0 hin1
  have h1 := st66_2_3 u v x y z hin2 hin1
  have h2 := st67_2_3 u v x y z hin1 h1
  have h3 := st246_2_3 u v x y z h2 h0
  exact h3

lemma leaf347_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp554_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp718_2_3 u v x y z = 0)
    : PolyRefl.eval cp339_2_3 u v x y z = 0 := by
  have h0 := st223_2_3 u v x y z hin0 hin1
  have h1 := st224_2_3 u v x y z hin1 h0
  have h2 := st310_2_3 u v x y z hin2 hin1
  have h3 := st311_2_3 u v x y z hin1 h2
  have h4 := st135_2_3 u v x y z h3 h1
  exact h4

lemma leaf348_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp729_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp268_2_3 u v x y z = 0)
    : PolyRefl.eval cp193_2_3 u v x y z = 0 := by
  have h0 := st316_2_3 u v x y z hin0 hin1
  have h1 := st317_2_3 u v x y z hin1 h0
  have h2 := st102_2_3 u v x y z hin2 hin1
  have h3 := st103_2_3 u v x y z hin1 h2
  have h4 := st295_2_3 u v x y z h1 h3
  exact h4

lemma leaf349_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp748_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp268_2_3 u v x y z = 0)
    : PolyRefl.eval cp275_2_3 u v x y z = 0 := by
  have h0 := st327_2_3 u v x y z hin0 hin1
  have h1 := st328_2_3 u v x y z hin1 h0
  have h2 := st102_2_3 u v x y z hin2 hin1
  have h3 := st103_2_3 u v x y z hin1 h2
  have h4 := st109_2_3 u v x y z h1 h3
  exact h4

lemma leaf350_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp295_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp400_2_3 u v x y z = 0)
    : PolyRefl.eval cp399_2_3 u v x y z = 0 := by
  have h0 := st114_2_3 u v x y z hin0 hin1
  have h1 := st156_2_3 u v x y z hin2 hin1
  have h2 := st340_2_3 u v x y z h0 h1
  have h3 := st341_2_3 u v x y z h1 h2
  exact h3

lemma leaf351_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp164_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp391_2_3 u v x y z = 0)
    : PolyRefl.eval cp510_2_3 u v x y z = 0 := by
  have h0 := st62_2_3 u v x y z hin0 hin1
  have h1 := st152_2_3 u v x y z hin2 hin1
  have h2 := st153_2_3 u v x y z hin1 h1
  have h3 := st203_2_3 u v x y z h2 h0
  exact h3

lemma leaf352_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp227_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp212_2_3 u v x y z = 0)
    : PolyRefl.eval cp208_2_3 u v x y z = 0 := by
  have h0 := st84_2_3 u v x y z hin0 hin1
  have h1 := st78_2_3 u v x y z hin2 hin1
  have h2 := st79_2_3 u v x y z hin1 h1
  have h3 := st87_2_3 u v x y z h2 h0
  exact h3

lemma leaf353_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp53_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp295_2_3 u v x y z = 0)
    : PolyRefl.eval cp525_2_3 u v x y z = 0 := by
  have h0 := st18_2_3 u v x y z hin0 hin1
  have h1 := st19_2_3 u v x y z hin1 h0
  have h2 := st114_2_3 u v x y z hin2 hin1
  have h3 := st307_2_3 u v x y z h1 h2
  have h4 := st308_2_3 u v x y z h2 h3
  have h5 := st309_2_3 u v x y z h3 h4
  exact h5

lemma leaf354_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp69_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp124_2_3 u v x y z = 0)
    : PolyRefl.eval cp696_2_3 u v x y z = 0 := by
  have h0 := st24_2_3 u v x y z hin0 hin1
  have h1 := st25_2_3 u v x y z hin1 h0
  have h2 := st45_2_3 u v x y z hin2 hin1
  have h3 := st298_2_3 u v x y z h1 h2
  have h4 := st299_2_3 u v x y z h2 h3
  exact h4

lemma leaf355_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp519_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp227_2_3 u v x y z = 0)
    : PolyRefl.eval cp518_2_3 u v x y z = 0 := by
  have h0 := st207_2_3 u v x y z hin0 hin1
  have h1 := st208_2_3 u v x y z hin1 h0
  have h2 := st84_2_3 u v x y z hin2 hin1
  have h3 := st245_2_3 u v x y z h1 h2
  exact h3

lemma leaf356_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp167_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp426_2_3 u v x y z = 0)
    : PolyRefl.eval cp755_2_3 u v x y z = 0 := by
  have h0 := st63_2_3 u v x y z hin0 hin1
  have h1 := st168_2_3 u v x y z hin2 hin1
  have h2 := st331_2_3 u v x y z h0 h1
  have h3 := st332_2_3 u v x y z h1 h2
  exact h3

lemma leaf357_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp107_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp57_2_3 u v x y z = 0)
    : PolyRefl.eval cp104_2_3 u v x y z = 0 := by
  have h0 := st39_2_3 u v x y z hin0 hin1
  have h1 := st40_2_3 u v x y z hin1 h0
  have h2 := st20_2_3 u v x y z hin2 hin1
  have h3 := st21_2_3 u v x y z hin1 h2
  have h4 := st41_2_3 u v x y z h1 h3
  have h5 := st42_2_3 u v x y z h3 h4
  exact h5

lemma leaf358_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp675_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp503_2_3 u v x y z = 0)
    : PolyRefl.eval cp434_2_3 u v x y z = 0 := by
  have h0 := st285_2_3 u v x y z hin0 hin1
  have h1 := st286_2_3 u v x y z hin1 h0
  have h2 := st199_2_3 u v x y z hin1 hin2
  have h3 := st174_2_3 u v x y z h1 h2
  exact h3

lemma leaf359_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp227_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp646_2_3 u v x y z = 0)
    : PolyRefl.eval cp645_2_3 u v x y z = 0 := by
  have h0 := st84_2_3 u v x y z hin0 hin1
  have h1 := st269_2_3 u v x y z hin2 hin1
  have h2 := st326_2_3 u v x y z h1 h0
  exact h2

lemma leaf360_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp733_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp441_2_3 u v x y z = 0)
    : PolyRefl.eval cp14_2_3 u v x y z = 0 := by
  have h0 := st318_2_3 u v x y z hin0 hin1
  have h1 := st319_2_3 u v x y z hin1 h0
  have h2 := st173_2_3 u v x y z hin1 hin2
  have h3 := st289_2_3 u v x y z h1 h2
  exact h3

lemma leaf361_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp34_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp57_2_3 u v x y z = 0)
    : PolyRefl.eval cp52_2_3 u v x y z = 0 := by
  have h0 := st10_2_3 u v x y z hin0 hin1
  have h1 := st11_2_3 u v x y z hin1 h0
  have h2 := st20_2_3 u v x y z hin2 hin1
  have h3 := st21_2_3 u v x y z hin1 h2
  have h4 := st22_2_3 u v x y z h1 h3
  have h5 := st23_2_3 u v x y z h3 h4
  exact h5

lemma leaf362_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp182_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp313_2_3 u v x y z = 0)
    : PolyRefl.eval cp175_2_3 u v x y z = 0 := by
  have h0 := st68_2_3 u v x y z hin0 hin1
  have h1 := st69_2_3 u v x y z hin1 h0
  have h2 := st120_2_3 u v x y z hin2 hin1
  have h3 := st121_2_3 u v x y z hin1 h2
  have h4 := st70_2_3 u v x y z h1 h3
  have h5 := st71_2_3 u v x y z h3 h4
  exact h5

lemma leaf363_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp752_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp441_2_3 u v x y z = 0)
    : PolyRefl.eval cp45_2_3 u v x y z = 0 := by
  have h0 := st329_2_3 u v x y z hin0 hin1
  have h1 := st330_2_3 u v x y z hin1 h0
  have h2 := st173_2_3 u v x y z hin1 hin2
  have h3 := st202_2_3 u v x y z h1 h2
  exact h3

lemma leaf364_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp209_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp362_2_3 u v x y z = 0)
    : PolyRefl.eval cp361_2_3 u v x y z = 0 := by
  have h0 := st77_2_3 u v x y z hin0 hin1
  have h1 := st140_2_3 u v x y z hin2 hin1
  have h2 := st141_2_3 u v x y z h1 h0
  exact h2

lemma leaf365_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp519_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp209_2_3 u v x y z = 0)
    : PolyRefl.eval cp518_2_3 u v x y z = 0 := by
  have h0 := st207_2_3 u v x y z hin0 hin1
  have h1 := st208_2_3 u v x y z hin1 h0
  have h2 := st77_2_3 u v x y z hin2 hin1
  have h3 := st209_2_3 u v x y z h1 h2
  exact h3

lemma leaf366_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp426_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp28_2_3 u v x y z = 0)
    : PolyRefl.eval cp722_2_3 u v x y z = 0 := by
  have h0 := st168_2_3 u v x y z hin0 hin1
  have h1 := st8_2_3 u v x y z hin2 hin1
  have h2 := st9_2_3 u v x y z hin1 h1
  have h3 := st312_2_3 u v x y z h2 h0
  have h4 := st313_2_3 u v x y z h0 h3
  exact h4

lemma leaf367_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp569_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp53_2_3 u v x y z = 0)
    : PolyRefl.eval cp498_2_3 u v x y z = 0 := by
  have h0 := st232_2_3 u v x y z hin0 hin1
  have h1 := st233_2_3 u v x y z hin1 h0
  have h2 := st18_2_3 u v x y z hin2 hin1
  have h3 := st19_2_3 u v x y z hin1 h2
  have h4 := st197_2_3 u v x y z h1 h3
  have h5 := st198_2_3 u v x y z h3 h4
  exact h5

lemma leaf368_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp124_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp167_2_3 u v x y z = 0)
    : PolyRefl.eval cp765_2_3 u v x y z = 0 := by
  have h0 := st45_2_3 u v x y z hin0 hin1
  have h1 := st63_2_3 u v x y z hin2 hin1
  have h2 := st336_2_3 u v x y z h1 h0
  have h3 := st337_2_3 u v x y z h0 h2
  exact h3

lemma leaf369_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp164_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp332_2_3 u v x y z = 0)
    : PolyRefl.eval cp331_2_3 u v x y z = 0 := by
  have h0 := st62_2_3 u v x y z hin0 hin1
  have h1 := st128_2_3 u v x y z hin2 hin1
  have h2 := st129_2_3 u v x y z hin1 h1
  have h3 := st130_2_3 u v x y z h2 h0
  exact h3

lemma leaf370_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp457_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp248_2_3 u v x y z = 0)
    : PolyRefl.eval cp456_2_3 u v x y z = 0 := by
  have h0 := st179_2_3 u v x y z hin0 hin1
  have h1 := st180_2_3 u v x y z hin1 h0
  have h2 := st92_2_3 u v x y z hin2 hin1
  have h3 := st93_2_3 u v x y z hin1 h2
  have h4 := st181_2_3 u v x y z h3 h1
  have h5 := st182_2_3 u v x y z h1 h4
  exact h5

lemma leaf371_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp483_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp478_2_3 u v x y z = 0)
    : PolyRefl.eval cp482_2_3 u v x y z = 0 := by
  have h0 := st191_2_3 u v x y z hin0 hin1
  have h1 := st192_2_3 u v x y z hin1 h0
  have h2 := st189_2_3 u v x y z hin2 hin1
  have h3 := st190_2_3 u v x y z hin1 h2
  have h4 := st193_2_3 u v x y z h3 h1
  have h5 := st194_2_3 u v x y z h1 h4
  exact h5

lemma leaf372_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp53_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp391_2_3 u v x y z = 0)
    : PolyRefl.eval cp27_2_3 u v x y z = 0 := by
  have h0 := st18_2_3 u v x y z hin0 hin1
  have h1 := st19_2_3 u v x y z hin1 h0
  have h2 := st152_2_3 u v x y z hin2 hin1
  have h3 := st153_2_3 u v x y z hin1 h2
  have h4 := st12_2_3 u v x y z h3 h1
  have h5 := st13_2_3 u v x y z h1 h4
  exact h5

lemma leaf373_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp739_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp276_2_3 u v x y z = 0)
    : PolyRefl.eval cp621_2_3 u v x y z = 0 := by
  have h0 := st322_2_3 u v x y z hin0 hin1
  have h1 := st323_2_3 u v x y z hin1 h0
  have h2 := st105_2_3 u v x y z hin2 hin1
  have h3 := st106_2_3 u v x y z hin1 h2
  have h4 := st263_2_3 u v x y z h1 h3
  exact h4

lemma leaf374_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp313_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp457_2_3 u v x y z = 0)
    : PolyRefl.eval cp312_2_3 u v x y z = 0 := by
  have h0 := st120_2_3 u v x y z hin0 hin1
  have h1 := st121_2_3 u v x y z hin1 h0
  have h2 := st179_2_3 u v x y z hin2 hin1
  have h3 := st180_2_3 u v x y z hin1 h2
  have h4 := st124_2_3 u v x y z h1 h3
  have h5 := st125_2_3 u v x y z h3 h4
  exact h5

lemma leaf375_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp164_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp220_2_3 u v x y z = 0)
    : PolyRefl.eval cp309_2_3 u v x y z = 0 := by
  have h0 := st62_2_3 u v x y z hin0 hin1
  have h1 := st81_2_3 u v x y z hin2 hin1
  have h2 := st82_2_3 u v x y z hin1 h1
  have h3 := st119_2_3 u v x y z h2 h0
  exact h3

lemma leaf376_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp557_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp554_2_3 u v x y z = 0)
    : PolyRefl.eval cp377_2_3 u v x y z = 0 := by
  have h0 := st225_2_3 u v x y z hin0 hin1
  have h1 := st226_2_3 u v x y z hin1 h0
  have h2 := st223_2_3 u v x y z hin2 hin1
  have h3 := st224_2_3 u v x y z hin1 h2
  have h4 := st206_2_3 u v x y z h1 h3
  exact h4

lemma leaf377_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp400_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp105_2_3 u v x y z = 0)
    : PolyRefl.eval cp634_2_3 u v x y z = 0 := by
  have h0 := st156_2_3 u v x y z hin0 hin1
  have h1 := st37_2_3 u v x y z hin2 hin1
  have h2 := st38_2_3 u v x y z hin1 h1
  have h3 := st264_2_3 u v x y z h2 h0
  exact h3

lemma leaf378_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp400_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp295_2_3 u v x y z = 0)
    : PolyRefl.eval cp399_2_3 u v x y z = 0 := by
  have h0 := st156_2_3 u v x y z hin0 hin1
  have h1 := st114_2_3 u v x y z hin2 hin1
  have h2 := st340_2_3 u v x y z h1 h0
  have h3 := st341_2_3 u v x y z h0 h2
  exact h3

lemma leaf379_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp743_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp276_2_3 u v x y z = 0)
    : PolyRefl.eval cp262_2_3 u v x y z = 0 := by
  have h0 := st324_2_3 u v x y z hin0 hin1
  have h1 := st325_2_3 u v x y z hin1 h0
  have h2 := st105_2_3 u v x y z hin2 hin1
  have h3 := st106_2_3 u v x y z hin1 h2
  have h4 := st104_2_3 u v x y z h1 h3
  exact h4

lemma leaf380_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp209_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp230_2_3 u v x y z = 0)
    : PolyRefl.eval cp208_2_3 u v x y z = 0 := by
  have h0 := st77_2_3 u v x y z hin0 hin1
  have h1 := st85_2_3 u v x y z hin2 hin1
  have h2 := st86_2_3 u v x y z hin1 h1
  have h3 := st80_2_3 u v x y z h2 h0
  exact h3

lemma leaf381_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp248_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp245_2_3 u v x y z = 0)
    : PolyRefl.eval cp244_2_3 u v x y z = 0 := by
  have h0 := st92_2_3 u v x y z hin0 hin1
  have h1 := st93_2_3 u v x y z hin1 h0
  have h2 := st91_2_3 u v x y z hin2 hin1
  have h3 := st94_2_3 u v x y z h1 h2
  have h4 := st95_2_3 u v x y z h2 h3
  exact h4

lemma leaf382_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp142_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp355_2_3 u v x y z = 0)
    : PolyRefl.eval cp254_2_3 u v x y z = 0 := by
  have h0 := st52_2_3 u v x y z hin0 hin1
  have h1 := st53_2_3 u v x y z hin1 h0
  have h2 := st136_2_3 u v x y z hin2 hin1
  have h3 := st137_2_3 u v x y z hin1 h2
  have h4 := st98_2_3 u v x y z h3 h1
  have h5 := st99_2_3 u v x y z h1 h4
  exact h5

lemma leaf383_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp34_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp69_2_3 u v x y z = 0)
    : PolyRefl.eval cp709_2_3 u v x y z = 0 := by
  have h0 := st10_2_3 u v x y z hin0 hin1
  have h1 := st11_2_3 u v x y z hin1 h0
  have h2 := st24_2_3 u v x y z hin2 hin1
  have h3 := st25_2_3 u v x y z hin1 h2
  have h4 := st304_2_3 u v x y z h1 h3
  exact h4

lemma leaf384_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp332_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp34_2_3 u v x y z = 0)
    : PolyRefl.eval cp498_2_3 u v x y z = 0 := by
  have h0 := st128_2_3 u v x y z hin0 hin1
  have h1 := st129_2_3 u v x y z hin1 h0
  have h2 := st10_2_3 u v x y z hin2 hin1
  have h3 := st11_2_3 u v x y z hin1 h2
  have h4 := st197_2_3 u v x y z h1 h3
  have h5 := st198_2_3 u v x y z h3 h4
  exact h5

lemma leaf385_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp759_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp566_2_3 u v x y z = 0)
    : PolyRefl.eval cp262_2_3 u v x y z = 0 := by
  have h0 := st333_2_3 u v x y z hin0 hin1
  have h1 := st334_2_3 u v x y z hin1 h0
  have h2 := st229_2_3 u v x y z hin2 hin1
  have h3 := st230_2_3 u v x y z hin1 h2
  have h4 := st335_2_3 u v x y z h1 h3
  exact h4

lemma leaf386_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp248_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp315_2_3 u v x y z = 0)
    : PolyRefl.eval cp456_2_3 u v x y z = 0 := by
  have h0 := st92_2_3 u v x y z hin0 hin1
  have h1 := st93_2_3 u v x y z hin1 h0
  have h2 := st122_2_3 u v x y z hin2 hin1
  have h3 := st123_2_3 u v x y z hin1 h2
  have h4 := st181_2_3 u v x y z h1 h3
  have h5 := st182_2_3 u v x y z h3 h4
  exact h5

lemma leaf387_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp144_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp57_2_3 u v x y z = 0)
    : PolyRefl.eval cp104_2_3 u v x y z = 0 := by
  have h0 := st54_2_3 u v x y z hin0 hin1
  have h1 := st55_2_3 u v x y z hin1 h0
  have h2 := st20_2_3 u v x y z hin2 hin1
  have h3 := st21_2_3 u v x y z hin1 h2
  have h4 := st41_2_3 u v x y z h1 h3
  have h5 := st42_2_3 u v x y z h3 h4
  exact h5

lemma leaf388_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp545_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp69_2_3 u v x y z = 0)
    : PolyRefl.eval cp68_2_3 u v x y z = 0 := by
  have h0 := st219_2_3 u v x y z hin0 hin1
  have h1 := st220_2_3 u v x y z hin1 h0
  have h2 := st24_2_3 u v x y z hin2 hin1
  have h3 := st25_2_3 u v x y z hin1 h2
  have h4 := st28_2_3 u v x y z h1 h3
  have h5 := st29_2_3 u v x y z h3 h4
  exact h5

lemma leaf389_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp236_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp609_2_3 u v x y z = 0)
    : PolyRefl.eval cp587_2_3 u v x y z = 0 := by
  have h0 := st88_2_3 u v x y z hin0 hin1
  have h1 := st251_2_3 u v x y z hin2 hin1
  have h2 := st252_2_3 u v x y z hin1 h1
  have h3 := st241_2_3 u v x y z h2 h0
  have h4 := st242_2_3 u v x y z h0 h3
  exact h4

lemma leaf390_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp400_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp332_2_3 u v x y z = 0)
    : PolyRefl.eval cp579_2_3 u v x y z = 0 := by
  have h0 := st156_2_3 u v x y z hin0 hin1
  have h1 := st128_2_3 u v x y z hin2 hin1
  have h2 := st129_2_3 u v x y z hin1 h1
  have h3 := st238_2_3 u v x y z h2 h0
  exact h3

lemma leaf391_2_3 {R : Type*} [CommRing R] [IsDomain R] [CharZero R]
    (u v x y z : R)
    (hin0 : PolyRefl.eval cp483_2_3 u v x y z = 0)
    (hin1 : PolyRefl.eval cp3_2_3 u v x y z = 0)
    (hin2 : PolyRefl.eval cp457_2_3 u v x y z = 0)
    : PolyRefl.eval cp608_2_3 u v x y z = 0 := by
  have h0 := st191_2_3 u v x y z hin0 hin1
  have h1 := st192_2_3 u v x y z hin1 h0
  have h2 := st179_2_3 u v x y z hin2 hin1
  have h3 := st180_2_3 u v x y z hin1 h2
  have h4 := st253_2_3 u v x y z h1 h3
  exact h4

end ChainCert
