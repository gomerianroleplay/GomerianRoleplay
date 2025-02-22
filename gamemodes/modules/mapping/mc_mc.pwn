#include <YSI_Coding\y_hooks>

hook OnPlayerConnect(playerid)
{
	RemoveBuildingForPlayer(playerid, 673, 2010.0625, -1104.2109, 23.0938, 0.25);
	return 1;
}

hook OnGameModeInit()
{
	CreateDynamicObject(19868, 2056.85327, -1106.00012, 23.26000,   0.00000, 0.00000, 90.00000, 0, 0);
	CreateDynamicObject(18662, 2041.82349, -1101.86853, 26.49510,   0.00000, 0.00000, 91.00000, 0, 0);
	CreateDynamicObject(942, 2044.82800, -1102.83472, 25.98020,   0.00000, 0.00000, 3.14000, 0, 0);
	CreateDynamicObject(3633, 2041.37842, -1102.54797, 23.95700,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(1712, 2056.32910, -1108.13220, 23.32670,   0.00000, 0.00000, 180.00000, 0, 0);
	CreateDynamicObject(1712, 2056.32910, -1108.13220, 23.32670,   0.00000, 0.00000, 180.00000, 0, 0);
	CreateDynamicObject(1712, 2054.83911, -1105.10645, 23.40670,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(1450, 2048.03833, -1102.12244, 24.00750,   0.00000, 0.00000, 3.00000, 0, 0);
	CreateDynamicObject(849, 2050.24463, -1107.58508, 23.76960,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(2059, 2052.75391, -1107.42029, 23.37336,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(2673, 2052.63184, -1107.82239, 23.38560,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(2115, 2055.05640, -1106.62573, 23.19230,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(1665, 2055.12207, -1106.73401, 24.01270,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(1510, 2056.09497, -1106.62500, 24.01300,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(1485, 2055.91113, -1106.59534, 24.03130,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(1455, 2055.41919, -1106.51538, 24.05730,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(19823, 2055.57666, -1106.69360, 23.99850,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(19899, 2006.40723, -1089.19080, 23.53890,   0.00000, 0.00000, -110.00000, 0, 0);
	CreateDynamicObject(19903, 2008.09485, -1090.80774, 23.60270,   0.00000, 0.00000, 190.00000, 0, 0);
	CreateDynamicObject(19627, 2006.28052, -1089.44946, 24.79090,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(19621, 2006.55664, -1089.51648, 24.88090,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(18635, 2005.39050, -1088.87708, 24.79190,   90.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(19921, 2007.16748, -1089.82275, 24.88570,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(3041, 2004.75952, -1100.73267, 24.06040,   0.00000, 0.00000, -15.00000, 0, 0);
	CreateDynamicObject(19900, 2002.79346, -1100.19495, 24.02450,   0.00000, 0.00000, -15.00000, 0, 0);
	CreateDynamicObject(19815, 2004.49963, -1101.28711, 26.05210,   0.00000, 0.00000, -194.48000, 0, 0);
	CreateDynamicObject(3403, 2004.02441, -1094.90100, 26.20160,   0.00000, 0.00000, -10.00000, 0, 0);
	CreateDynamicObject(2714, 1998.76599, -1094.07520, 27.20000,   0.00000, 0.00000, -97.00000, 0, 0);
	CreateDynamicObject(19898, 2003.61157, -1093.62964, 23.84840,   0.00000, 0.00000, -2.00000, 0, 0);
	CreateDynamicObject(19898, 2007.42773, -1092.96155, 23.84840,   0.00000, 0.00000, -2.00000, 0, 0);
	CreateDynamicObject(5520, 1995.44446, -1112.33582, 2.00000,   356.85840, 0.00000, 3.14160, 0, 0);
	CreateDynamicObject(19898, 2008.31702, -1097.51965, 23.92840,   0.00000, 0.00000, -2.00000, 0, 0);
	CreateDynamicObject(1098, 2004.72766, -1088.67151, 24.06500,   1.00000, 20.00000, 50.00000, 0, 0);
	CreateDynamicObject(16151, 2020.83093, -1104.55701, 24.20470,   0.00000, 0.00000, -105.00000, 0, 0);
	CreateDynamicObject(2226, 2023.98022, -1105.62610, 24.82000,   0.00000, 0.00000, 115.00000, 0, 0);
	CreateDynamicObject(19622, 2024.79761, -1106.57996, 24.52000,   10.00000, 0.00000, -10.00000, 0, 0);
	CreateDynamicObject(1670, 2019.86072, -1103.29272, 24.85170,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(1825, 2025.11072, -1097.00732, 23.54640,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(1825, 2021.87256, -1095.26733, 23.54640,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(17969, 2034.87756, -1100.71521, 26.44860,   0.00000, 0.00000, 70.00000, 0, 0);
	CreateDynamicObject(2837, 2027.12659, -1106.55347, 23.68459,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(0, 2047.85327, -1103.46045, 23.38000,   -13.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(3302, 2000.74695, -1090.21362, 23.75190,   -4.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(2670, 2038.44202, -1103.23792, 23.66540,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(2670, 2035.19666, -1101.68628, 23.66540,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(2677, 2036.19580, -1106.30432, 23.89780,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(2588, 2018.99341, -1105.17993, 26.00000,   0.00000, 0.00000, -17.00000, 0, 0);
	CreateDynamicObject(2587, 2018.10034, -1104.95691, 25.98610,   0.00000, 0.00000, -14.38000, 0, 0);
	CreateDynamicObject(1483, 1986.16895, -1127.35510, 26.36480,   0.00000, 0.00000, -90.00000, 0, 0);
	CreateDynamicObject(1483, 1992.66003, -1127.35510, 26.36480,   0.00000, 0.00000, -90.00000, 0, 0);
	CreateDynamicObject(19831, 2014.55408, -1118.15894, 25.18210,   0.00000, 0.00000, -90.00000, 0, 0);
	CreateDynamicObject(19632, 2014.52893, -1118.18359, 25.96600,   0.00000, 0.00000, 90.00000, 0, 0);
	CreateDynamicObject(1594, 2013.77966, -1121.55627, 25.68230,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(1368, 2004.56921, -1117.66272, 26.46940,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(2866, 2014.77661, -1119.72534, 25.20250,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(2048, 2006.17285, -1117.14294, 27.99700,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(2670, 2004.17041, -1118.50269, 25.88170,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(3119, 1995.97217, -1116.45972, 26.08090,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(1327, 2001.46155, -1099.54480, 24.96060,   0.00000, -16.00000, 75.00000, 0, 0);
	CreateDynamicObject(1437, 1992.53564, -1118.07385, 25.04710,   -5.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(19378, 2010.71851, -1110.72534, 29.27410,   0.00000, 90.00000, 90.00000, 0, 0);
	CreateDynamicObject(19378, 2015.44189, -1110.73340, 24.53410,   90.00000, 90.00000, 90.00000, 0, 0);
	CreateDynamicObject(19378, 2010.31299, -1105.44385, 24.53410,   90.00000, 90.00000, 0.00000, 0, 0);
	CreateDynamicObject(19378, 2010.73120, -1110.73328, 25.49410,   0.00000, 90.00000, 90.00000, 0, 0);
	CreateDynamicObject(19378, 2010.71362, -1115.92371, 20.31410,   0.00000, 0.00000, 90.00000, 0, 0);
	CreateDynamicObject(12950, 2020.76636, -1108.68237, 25.97200,   0.00000, 0.00000, 90.00000, 0, 0);
	CreateDynamicObject(14791, 2011.96130, -1112.19556, 31.23960,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(19366, 2010.59375, -1105.46375, 30.21410,   90.00000, 90.00000, 0.00000, 0, 0);
	CreateDynamicObject(14782, 2012.11682, -1105.92542, 30.36210,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(19366, 2013.81384, -1105.46375, 30.21410,   90.00000, 90.00000, 0.00000, 0, 0);
	CreateDynamicObject(2614, 2008.77246, -1107.63354, 27.99920,   0.00000, 0.00000, 90.00000, 0, 0);
	CreateDynamicObject(2611, 2015.30188, -1112.60205, 27.37920,   0.00000, 0.00000, -90.00000, 0, 0);
	CreateDynamicObject(1736, 2012.22046, -1105.85388, 28.24670,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(19166, 2007.96521, -1112.18396, 27.71980,   90.00000, 90.00000, 0.00000, 0, 0);
	CreateDynamicObject(2357, 2012.20764, -1108.83923, 25.98050,   0.00000, 0.00000, 90.00000, 0, 0);
	CreateDynamicObject(2124, 2012.23547, -1105.88843, 26.35120,   0.00000, 0.00000, 90.00000, 0, 0);
	CreateDynamicObject(2357, 2012.20764, -1110.59924, 25.98050,   0.00000, 0.00000, 90.00000, 0, 0);
	CreateDynamicObject(2124, 2010.69751, -1107.57520, 26.35120,   0.00000, 0.00000, -180.00000, 0, 0);
	CreateDynamicObject(2124, 2013.73755, -1107.57507, 26.35120,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(2124, 2010.69751, -1108.97510, 26.35120,   0.00000, 0.00000, -180.00000, 0, 0);
	CreateDynamicObject(2124, 2010.69751, -1110.37512, 26.35120,   0.00000, 0.00000, -180.00000, 0, 0);
	CreateDynamicObject(2124, 2010.69751, -1111.77515, 26.35120,   0.00000, 0.00000, -180.00000, 0, 0);
	CreateDynamicObject(2124, 2013.73755, -1108.97510, 26.35120,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(2124, 2013.73755, -1110.37512, 26.35120,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(2124, 2013.73755, -1111.77515, 26.35120,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(2124, 2012.23547, -1113.54834, 26.35120,   0.00000, 0.00000, -90.00000, 0, 0);
	CreateDynamicObject(19378, 2015.01294, -1115.90381, 24.53410,   90.00000, 90.00000, 0.00000, 0, 0);
	CreateDynamicObject(1649, 2007.90186, -1114.74414, 27.24280,   0.00000, 0.00000, 90.00000, 0, 0);
	CreateDynamicObject(1649, 2007.64185, -1114.74414, 27.24280,   0.00000, 0.00000, -90.00000, 0, 0);
	CreateDynamicObject(19439, 2009.65479, -1115.90442, 28.54170,   90.00000, 0.00000, 90.00000, 0, 0);
	CreateDynamicObject(19439, 2011.18616, -1115.91174, 26.93930,   90.00000, 0.00000, 90.00000, 0, 0);
	CreateDynamicObject(19439, 2011.19409, -1115.92126, 25.32750,   90.00000, 0.00000, 90.00000, 0, 0);
	CreateDynamicObject(1491, 2007.88782, -1115.97925, 25.59040,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(2964, 1999.54333, -1103.54163, 25.77890,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(338, 1999.82324, -1105.16162, 26.07890,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(3104, 1999.54321, -1103.55139, 26.71490,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(3100, 1998.87573, -1103.76794, 26.71590,   0.08000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(2995, 2000.30176, -1103.52112, 26.69560,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(1665, 2011.74255, -1111.88538, 26.40980,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(1665, 2012.68835, -1110.21643, 26.40980,   0.00000, 0.00000, 90.00000, 0, 0);
	CreateDynamicObject(1665, 2011.74255, -1110.54004, 26.40980,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(1665, 2011.77515, -1109.20813, 26.40980,   0.00000, 0.00000, -90.00000, 0, 0);
	CreateDynamicObject(1665, 2011.73865, -1107.55127, 26.40980,   0.00000, 0.00000, -90.00000, 0, 0);
	CreateDynamicObject(1665, 2012.71667, -1107.51343, 26.40980,   0.00000, 0.00000, 90.00000, 0, 0);
	CreateDynamicObject(1665, 2012.70874, -1109.00513, 26.40980,   0.00000, 0.00000, 90.00000, 0, 0);
	CreateDynamicObject(1665, 2012.68835, -1111.49646, 26.40980,   0.00000, 0.00000, 90.00000, 0, 0);
	CreateDynamicObject(2050, 1995.38416, -1102.78809, 25.98130,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(2063, 1994.34924, -1104.92175, 26.67040,   0.00000, 0.00000, -180.00000, 0, 0);
	CreateDynamicObject(2901, 1993.83923, -1104.99146, 26.32070,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(1644, 1995.31030, -1104.82568, 26.14030,   0.00000, 0.00000, 130.00000, 0, 0);
	CreateDynamicObject(1579, 1995.18298, -1104.85620, 26.58020,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(2670, 1995.60400, -1103.76538, 25.92080,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(2670, 2008.00061, -1128.14856, 24.40600,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(2670, 1988.82312, -1119.40015, 25.86100,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(1650, 2004.11072, -1088.38416, 23.81650,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(11738, 2022.82849, -1105.66150, 25.77370,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(2103, 1994.97302, -1104.86206, 27.47570,   0.00000, 0.00000, 170.00000, 0, 0);
	CreateDynamicObject(14527, 2012.06775, -1112.78027, 26.86000,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(14527, 2012.06775, -1109.00000, 26.86000,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(2047, 2011.90686, -1116.01392, 28.86680,   0.00000, 0.00000, 0.00000, 0, 0);
	CreateDynamicObject(2197, 2009.12158, -1110.00330, 25.58270,   0.00000, 0.00000, 90.00000, 0, 0);
}
