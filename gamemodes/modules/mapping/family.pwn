/*	Server mapping module	*/

#include <YSI_Coding\y_hooks>

hook OnPlayerConnect(playerid)
{
	//Fam Felton Block Avanue
	RemoveBuildingForPlayer(playerid, 17860, 2485.0313, -1463.8984, 25.7578, 0.25);
}

hook OnGameModeInit()
{
	//Fam Red King Block
	CreateDynamicObject(947, 2028.45508, -1774.53906, 14.70710,   0.00000, 0.00000, -180.00000);
	CreateDynamicObject(1280, 2022.65405, -1762.16833, 12.89100,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2672, 2018.31885, -1764.01831, 12.83757,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2677, 2018.44141, -1772.34741, 12.82888,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2676, 2018.05713, -1778.42102, 12.66142,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1441, 2019.90320, -1766.97620, 13.18240,   0.00000, 0.00000, -92.00000);
	CreateDynamicObject(2675, 2016.55664, -1784.24719, 12.61487,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1728, 2010.35571, -1764.80420, 16.33790,   0.00000, 0.00000, 62.00000);
	CreateDynamicObject(1728, 2013.01221, -1763.04565, 16.33790,   0.00000, 0.00000, 343.84656);
	CreateDynamicObject(2700, 2010.22046, -1766.02112, 19.05348,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2315, 2012.93774, -1764.81555, 16.33436,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1670, 2014.17883, -1764.69519, 16.87900,   0.00000, 0.00000, 193.00000);
	CreateDynamicObject(1728, 2023.77356, -1781.40784, 12.54440,   0.00000, 0.00000, -180.00000);
	CreateDynamicObject(2315, 2022.18176, -1779.97510, 12.54408,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2669, 1974.61194, -1778.70422, 17.59145,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1795, 1971.19775, -1777.79529, 16.37080,   0.00000, 0.00000, -91.00000);
	CreateDynamicObject(939, 1985.98535, -1778.27307, 18.77591,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1440, 2002.86267, -1780.94336, 16.82431,   0.00000, 0.00000, -181.00000);
	CreateDynamicObject(1728, 1979.67761, -1777.64526, 16.34300,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1347, 1982.47961, -1779.16052, 16.86770,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18662, 2011.39392, -1762.27917, 15.27240,   22.00000, 2.00000, -90.00000);
	CreateDynamicObject(18664, 2014.59033, -1762.28271, 15.01360,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(18666, 2015.94092, -1763.35510, 14.56828,   0.00000, 0.00000, -180.00000);
	CreateDynamicObject(18667, 2015.94507, -1779.95532, 14.92550,   -28.00000, 0.00000, 180.00000);
	CreateDynamicObject(19632, 1982.50293, -1779.08630, 16.81936,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19831, 1972.21289, -1781.15735, 16.25460,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1528, 1980.91638, -1777.50720, 19.12373,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2846, 1975.01807, -1779.79846, 16.37257,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2103, 1978.35950, -1777.39661, 16.33920,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1302, 1976.59375, -1777.67395, 16.40072,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2857, 2022.71375, -1779.82874, 13.03900,   -1.00000, 0.00000, -16.00000);
	CreateDynamicObject(1575, 1975.35034, -1778.03894, 16.35240,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2671, 2022.10681, -1776.42480, 12.55355,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19967, 2020.29822, -1761.96826, 12.54420,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(11745, 2013.23779, -1764.88635, 16.98340,   0.00000, 0.50000, -58.80000);
	CreateDynamicObject(1450, 2009.00146, -1777.69458, 16.94419,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1327, 2019.49866, -1786.68188, 13.49847,   0.00000, 0.00000, -62.00000);
	CreateDynamicObject(19869, 2034.29712, -1776.51929, 12.54080,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19869, 2034.32275, -1780.03101, 12.54080,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(0, 2013.90564, -1770.63843, 16.33250,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(348, 2012.64709, -1764.67432, 16.83312,   90.00000, 0.00000, 0.00000);
	CreateDynamicObject(336, 1981.80371, -1777.22156, 17.41786,   149.00000, 0.00000, 0.00000);
	CreateDynamicObject(2673, 1979.43054, -1779.06396, 16.46537,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2674, 1982.00769, -1780.31104, 16.41819,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1415, 1971.06384, -1780.88110, 12.59678,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1462, 1982.19702, -1782.37000, 12.54425,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(338, 2010.15393, -1770.86658, 16.66570,   0.00000, -16.00000, 0.00000);
	CreateDynamicObject(338, 2010.14795, -1771.08362, 16.66570,   0.00000, -16.00000, 0.00000);
	CreateDynamicObject(2838, 2022.13855, -1761.81677, 12.54638,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2964, 2014.14673, -1770.66162, 16.28204,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3065, 2028.03064, -1778.33264, 12.63438,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3087, 2027.06018, -1781.96484, 12.94400,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1280, 2026.47192, -1762.14209, 12.89100,   0.00000, 0.00000, -90.00000);

	//Fam Felton Block Avanue
	CreateDynamicObject(3092, 2500.91602, -1454.83960, 24.35430,   0.00000, 0.00000, -178.00000, -1, 0);
	CreateDynamicObject(3092, 2500.19604, -1454.83960, 24.35430,   0.00000, 0.00000, -178.00000, -1, 0);
	CreateDynamicObject(3092, 2499.45605, -1454.83960, 24.35430,   0.00000, 0.00000, -178.00000, -1, 0);
	CreateDynamicObject(3092, 2498.75610, -1454.83960, 24.35430,   0.00000, 0.00000, -178.00000, -1, 0);
	CreateDynamicObject(1442, 2501.58862, -1455.38525, 23.57430,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(19632, 2501.59741, -1455.37109, 23.91400,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(1362, 2478.51123, -1459.21753, 23.64370,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(2669, 2480.86230, -1457.15991, 24.26560,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(1798, 2480.81421, -1458.08105, 23.06560,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(974, 2477.79199, -1457.96277, 24.89840,   0.00000, 0.00000, -91.00000, -1, 0);
	CreateDynamicObject(974, 2477.79199, -1462.06274, 24.89840,   0.00000, 0.00000, -91.00000, -1, 0);
	CreateDynamicObject(16151, 2502.96729, -1464.01990, 23.34370,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(16151, 2502.95313, -1464.01099, 23.34370,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(3761, 2507.41992, -1469.13000, 25.07340,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(12950, 2511.71704, -1472.02539, 24.64370,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(3363, 2536.38135, -1473.00391, 22.99840,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(2315, 2536.89990, -1469.78003, 23.00470,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(2036, 2537.18457, -1471.13428, 23.58594,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(1670, 2536.79395, -1469.76245, 23.60470,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(1728, 2538.53125, -1469.81128, 23.04370,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(1728, 2535.93994, -1471.93994, 23.04370,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(974, 2540.71313, -1461.33484, 25.74220,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(974, 2540.56372, -1467.44092, 25.69840,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(974, 2540.40527, -1473.53967, 25.69840,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(2674, 2531.77393, -1457.47766, 23.09690,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(2674, 2530.35815, -1461.36121, 23.09690,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(2840, 2527.59912, -1461.42639, 23.09690,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(2674, 2527.27271, -1464.25378, 23.09690,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(2674, 2531.71021, -1464.09119, 23.09690,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(2840, 2524.69604, -1462.09937, 23.09690,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(2840, 2527.38647, -1460.02063, 23.09690,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(2674, 2525.46143, -1460.26990, 23.09687,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(1365, 2524.20264, -1466.57727, 24.14375,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(2840, 2525.04321, -1466.86133, 25.39690,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(2840, 2529.25488, -1469.84070, 25.24219,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(2674, 2518.56128, -1461.58557, 23.09687,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(2840, 2516.60620, -1461.69971, 23.09690,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(2674, 2517.31494, -1458.75793, 23.09687,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(2674, 2514.90308, -1462.97473, 23.09690,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(1578, 2515.81006, -1460.87646, 23.60470,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(2840, 2517.87671, -1467.28113, 23.09690,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(2674, 2511.60059, -1465.80884, 23.09690,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(2674, 2515.95776, -1465.04053, 23.09690,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(2674, 2510.85059, -1460.78625, 23.09690,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(1271, 2517.09888, -1455.25330, 23.35781,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(1271, 2516.20068, -1455.26355, 23.35780,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(1271, 2516.63379, -1455.51733, 24.05780,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(1728, 2515.07031, -1457.04395, 23.04370,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(1442, 2511.82104, -1458.90308, 23.57430,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(19632, 2511.81152, -1458.86169, 23.91400,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(1711, 2510.62549, -1457.39941, 23.04370,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(1578, 2511.76367, -1456.64441, 23.60470,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(2035, 2511.45996, -1456.09998, 23.50470,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(1212, 2512.13330, -1456.66052, 23.50470,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(1212, 2512.31030, -1456.42578, 23.50470,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(1212, 2512.23315, -1456.28357, 23.50470,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(1212, 2511.97778, -1456.23206, 23.50470,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(1670, 2512.75000, -1456.39001, 23.60470,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(1654, 2513.31006, -1456.23999, 23.60470,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(1670, 2513.33008, -1456.63000, 23.60470,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(1488, 2512.68994, -1456.81006, 23.60470,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(1728, 2511.27002, -1455.08997, 23.04370,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(1728, 2515.07031, -1457.04395, 23.04370,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(1415, 2504.28638, -1455.12122, 23.14375,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(1527, 2528.75610, -1477.76208, 24.16406,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(1527, 2522.47754, -1480.76648, 24.16406,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(2583, 2510.75269, -1454.10022, 28.36720,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(1728, 2514.72998, -1453.10999, 27.52030,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(2860, 2512.94067, -1450.99817, 28.02030,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(1670, 2513.90723, -1451.04834, 28.04030,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(2035, 2514.54004, -1451.13000, 28.02030,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(2321, 2512.83569, -1451.01831, 27.52031,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(1271, 2516.61694, -1453.79089, 27.89688,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(1342, 2517.62012, -1451.63000, 28.57340,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(355, 2506.02979, -1464.16235, 23.96800,   76.00000, -25.00000, 4.00000, -1, 0);
	CreateDynamicObject(19387, 2537.36499, -1454.19482, 24.75260,   0.00000, 0.00000, 91.00000, -1, 0);
	CreateDynamicObject(19430, 2538.94556, -1454.22778, 24.74030,   0.00000, 0.00000, 91.00000, -1, 0);
	CreateDynamicObject(2047, 2537.38818, -1454.35181, 26.07720,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(19430, 2538.96558, -1454.22778, 28.22030,   0.00000, 0.00000, 91.00000, -1, 0);
	CreateDynamicObject(19430, 2537.38550, -1454.22778, 28.22030,   0.00000, 0.00000, 91.00000, -1, 0);
	CreateDynamicObject(19430, 2536.56543, -1454.22778, 28.22030,   0.00000, 0.00000, 91.00000, -1, 0);
	CreateDynamicObject(1499, 2536.58691, -1454.28296, 22.98980,   0.00000, 0.00000, 55.00000, -1, 0);
	CreateDynamicObject(3061, 2536.98999, -1434.57361, 23.90670,   0.00000, 0.00000, -91.00000, -1, 0);
	CreateDynamicObject(1442, 2538.56763, -1435.15002, 23.59670,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(18689, 2538.54932, -1435.48254, 23.77940,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(19632, 2538.58081, -1435.18982, 23.96790,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(2674, 2531.09473, -1465.78918, 23.09690,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(2840, 2528.83643, -1463.32166, 23.09690,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(2840, 2528.36230, -1459.04932, 23.09690,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(2840, 2526.66113, -1459.14111, 23.09690,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(1412, 2520.05005, -1493.31995, 24.31090,   0.00000, 0.00000, 0.00000, -1, 0);
	CreateDynamicObject(1412, 2520.08008, -1493.31995, 26.82190,   0.00000, 0.00000, 0.00000, -1, 0);
}