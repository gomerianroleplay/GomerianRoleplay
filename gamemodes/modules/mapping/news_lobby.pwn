#include <YSI_Coding\y_hooks>

#define NEWS_INTERIOR_MAP	7

hook OnPlayerConnect(playerid)
{
	RemoveBuildingForPlayer(playerid, 1531, 2173.590, -2165.189, 15.304, 0.250);
	RemoveBuildingForPlayer(playerid, 3622, 2162.850, -2159.750, 15.671, 0.250);
	RemoveBuildingForPlayer(playerid, 3687, 2162.850, -2159.750, 15.671, 0.250);
	RemoveBuildingForPlayer(playerid, 3622, 2150.199, -2172.360, 15.671, 0.250);
	RemoveBuildingForPlayer(playerid, 3687, 2150.199, -2172.360, 15.671, 0.250);
	RemoveBuildingForPlayer(playerid, 3622, 2135.739, -2186.449, 15.671, 0.250);
	RemoveBuildingForPlayer(playerid, 3687, 2135.739, -2186.449, 15.671, 0.250);
}

hook OnScriptInit()
{
	new tmpobjid;
	tmpobjid = CreateDynamicObject(19378, 2146.617675, -2177.366455, 12.554369, 180.000000, 90.000000, 90.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3922, "bistro", "DinerFloor", 0x00000000);
	tmpobjid = CreateDynamicObject(19378, 2146.617675, -2166.865478, 12.554369, 0.000000, 270.000000, -90.000007, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3922, "bistro", "DinerFloor", 0x00000000);
	tmpobjid = CreateDynamicObject(19378, 2156.246093, -2177.366455, 12.554369, -0.000007, 270.000000, -89.999961, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3922, "bistro", "DinerFloor", 0x00000000);
	tmpobjid = CreateDynamicObject(19378, 2156.246093, -2166.865478, 12.554369, -0.000014, 270.000000, -89.999938, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3922, "bistro", "DinerFloor", 0x00000000);
	tmpobjid = CreateDynamicObject(19378, 2146.627685, -2156.374267, 12.554369, -0.000007, 270.000000, -89.999961, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3922, "bistro", "DinerFloor", 0x00000000);
	tmpobjid = CreateDynamicObject(19378, 2146.617675, -2145.891601, 12.554369, -0.000007, 270.000000, -89.999961, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3922, "bistro", "DinerFloor", 0x00000000);
	tmpobjid = CreateDynamicObject(19378, 2156.246093, -2156.374267, 12.554369, -0.000014, 270.000000, -89.999893, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3922, "bistro", "DinerFloor", 0x00000000);
	tmpobjid = CreateDynamicObject(19378, 2156.246093, -2145.891601, 12.554369, -0.000014, 270.000000, -89.999893, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 3922, "bistro", "DinerFloor", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2160.944091, -2143.630371, 15.120305, 0.000000, 0.000000, 0.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2160.944091, -2149.530517, 15.120305, 0.000000, 0.000000, 0.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2160.944091, -2155.459960, 15.120305, 0.000000, 0.000000, 0.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2160.944091, -2161.379638, 15.120305, 0.000000, 0.000000, 0.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2160.880126, -2145.504150, 12.310300, 0.000000, 0.000000, 0.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 19607, "enexmarkers", "enexmarker4-3", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2160.880126, -2155.132568, 12.310300, 0.000000, 0.000000, 0.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 19607, "enexmarkers", "enexmarker4-3", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2160.880126, -2164.643554, 12.310300, 0.000000, 0.000000, 0.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 19607, "enexmarkers", "enexmarker4-3", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2162.539794, -2145.504150, 14.070304, 0.000000, 90.000000, 0.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2162.539794, -2155.064208, 14.070304, 0.000000, 90.000000, 0.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2162.539794, -2159.540527, 14.070304, 0.000000, 90.000000, 0.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2160.880126, -2145.504150, 18.880310, 0.000000, 0.000000, 0.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2160.880126, -2155.114501, 18.880310, 0.000000, 0.000000, 0.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2160.880126, -2164.744384, 18.880310, 0.000000, 0.000000, 0.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2143.742675, -2161.354003, 15.120305, 0.000000, -0.000007, 179.999847, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2143.742675, -2155.453857, 15.120305, 0.000000, -0.000007, 179.999847, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2143.742675, -2149.524414, 15.120305, 0.000000, -0.000007, 179.999847, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2143.742675, -2143.604736, 15.120305, 0.000000, -0.000007, 179.999847, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2143.806640, -2159.480224, 12.310300, 0.000000, -0.000007, 179.999847, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 19607, "enexmarkers", "enexmarker4-3", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2143.806640, -2149.851806, 12.310300, 0.000000, -0.000007, 179.999847, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 19607, "enexmarkers", "enexmarker4-3", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2143.806640, -2145.449218, 12.310300, 0.000000, -0.000007, 179.999847, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 19607, "enexmarkers", "enexmarker4-3", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2142.146972, -2159.480224, 14.070304, 0.000000, 89.999992, 179.999847, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2142.146972, -2149.920166, 14.070304, 0.000000, 89.999992, 179.999847, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2142.146972, -2145.443847, 14.070304, 0.000000, 89.999992, 179.999847, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2143.806640, -2159.480224, 18.880310, 0.000000, -0.000007, 179.999847, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2143.806640, -2149.869873, 18.880310, 0.000000, -0.000007, 179.999847, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2143.806640, -2140.239990, 18.880310, 0.000000, -0.000007, 179.999847, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2146.821289, -2164.062011, 15.120305, -0.000014, -0.000014, -90.000091, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2140.600830, -2164.062011, 15.120305, -0.000007, -0.000014, -90.000114, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2134.671386, -2164.062011, 15.120305, -0.000007, -0.000014, -90.000114, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2128.751708, -2164.062011, 15.120305, -0.000007, -0.000014, -90.000114, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2144.947509, -2163.998046, 12.310300, -0.000014, -0.000014, -90.000091, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 19607, "enexmarkers", "enexmarker4-3", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2134.998779, -2163.998046, 12.310300, -0.000007, -0.000014, -90.000114, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 19607, "enexmarkers", "enexmarker4-3", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2130.596191, -2163.998046, 12.310300, -0.000007, -0.000014, -90.000114, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 19607, "enexmarkers", "enexmarker4-3", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2144.947509, -2165.657714, 14.070304, -0.000014, 89.999984, -90.000091, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2135.067138, -2165.657714, 14.070304, -0.000007, 89.999984, -90.000114, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2130.590820, -2165.657714, 14.070304, -0.000007, 89.999984, -90.000114, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2144.987548, -2163.998046, 18.880310, -0.000014, -0.000014, -90.000091, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2135.016845, -2163.998046, 18.880310, -0.000007, -0.000014, -90.000114, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2125.386962, -2163.998046, 18.880310, -0.000007, -0.000014, -90.000114, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19449, 2148.656982, -2141.783935, 14.280295, -0.000007, -0.000014, 89.999824, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 4010, "lanblokb2", "bluewhitewindow", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2156.454345, -2141.783935, 15.120305, -0.000007, -0.000014, 89.999824, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2158.615234, -2141.783935, 15.120305, -0.000007, -0.000014, 89.999824, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2164.534912, -2141.783935, 15.120305, -0.000007, -0.000014, 89.999824, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2158.287841, -2141.847900, 12.310300, -0.000007, -0.000014, 89.999824, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 19607, "enexmarkers", "enexmarker4-3", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2162.690429, -2141.847900, 12.310300, -0.000007, -0.000014, 89.999824, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 19607, "enexmarkers", "enexmarker4-3", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2158.219482, -2140.188232, 14.070304, -0.000007, 89.999984, 89.999824, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2162.695800, -2140.188232, 14.070304, -0.000007, 89.999984, 89.999824, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2148.659423, -2141.847900, 17.760292, -0.000007, -0.000014, 89.999824, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2158.269775, -2141.847900, 18.880310, -0.000007, -0.000014, 89.999824, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2167.899658, -2141.847900, 18.880310, -0.000007, -0.000014, 89.999824, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19378, 2156.246093, -2147.112792, 18.774368, -0.000014, 270.000000, -89.999893, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18787, "matramps", "cardboard4-16", 0x00000000);
	tmpobjid = CreateDynamicObject(19378, 2146.627441, -2147.112792, 18.774368, -0.000014, 270.000000, -89.999893, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18787, "matramps", "cardboard4-16", 0x00000000);
	tmpobjid = CreateDynamicObject(19378, 2156.246093, -2157.602050, 18.774368, -0.000022, 270.000000, -89.999870, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18787, "matramps", "cardboard4-16", 0x00000000);
	tmpobjid = CreateDynamicObject(19378, 2146.627441, -2157.602050, 18.774368, -0.000022, 270.000000, -89.999870, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18787, "matramps", "cardboard4-16", 0x00000000);
	tmpobjid = CreateDynamicObject(19378, 2156.246093, -2168.062500, 18.774368, -0.000029, 270.000000, -89.999847, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18787, "matramps", "cardboard4-16", 0x00000000);
	tmpobjid = CreateDynamicObject(19378, 2146.627441, -2168.062500, 18.774368, -0.000029, 270.000000, -89.999847, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18787, "matramps", "cardboard4-16", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2160.944091, -2167.298828, 15.120305, 0.000000, 0.000000, 0.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2162.539794, -2169.150878, 14.070304, 0.000000, 90.000000, 0.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2155.797363, -2168.274658, 15.120305, -0.000022, -0.000014, -90.000068, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2157.635742, -2168.210693, 12.310300, -0.000022, -0.000014, -90.000068, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 19607, "enexmarkers", "enexmarker4-3", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2157.635742, -2169.870361, 14.070304, -0.000022, 89.999984, -90.000068, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19462, 2157.645751, -2168.210693, 18.880310, -0.000022, -0.000014, -90.000068, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2160.507812, -2168.274658, 15.120305, -0.000022, -0.000014, -90.000068, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2152.767333, -2165.344482, 15.120305, -0.000022, -0.000014, -0.000068, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14738, "whorebar", "AH_wdblinds", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2152.767333, -2165.344482, 20.230339, -0.000022, -0.000014, -0.000068, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14738, "whorebar", "AH_wdblinds", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2149.815185, -2165.344482, 15.120305, -0.000022, -0.000007, -0.000068, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14738, "whorebar", "AH_wdblinds", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2149.815185, -2165.344482, 20.230339, -0.000022, -0.000007, -0.000068, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14738, "whorebar", "AH_wdblinds", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2152.737304, -2171.308837, 19.350311, 359.999969, -0.000007, -0.000068, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2152.737304, -2171.308837, 10.850299, 179.999969, -0.000007, -0.000068, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2152.767333, -2171.278808, 15.120305, -0.000022, -0.000007, -0.000068, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1675, "wshxrefhse", "washdecowall3256", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2155.617187, -2174.250732, 19.350311, -0.000022, 0.000000, 89.999877, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2155.617187, -2174.250732, 10.850299, 0.000022, 179.999969, -90.000061, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2155.587158, -2174.220703, 15.120305, -0.000014, 0.000000, 89.999877, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1675, "wshxrefhse", "washdecowall3256", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2155.587158, -2175.942626, 19.350311, -0.000014, 0.000007, -0.000114, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2155.587158, -2175.942626, 10.850299, 0.000014, 179.999969, 179.999862, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2155.617187, -2175.912597, 15.120305, -0.000007, 0.000007, -0.000114, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1675, "wshxrefhse", "washdecowall3256", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2152.896484, -2178.154541, 19.350311, -0.000022, 0.000014, -90.000061, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2152.896484, -2178.154541, 10.850299, 0.000022, 179.999969, 89.999824, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2152.926513, -2178.184570, 15.120305, -0.000014, 0.000014, -90.000061, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1675, "wshxrefhse", "washdecowall3256", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2147.006835, -2178.154541, 19.350311, -0.000029, 0.000014, -90.000038, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2147.006835, -2178.154541, 10.850299, 0.000029, 179.999969, 89.999801, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2147.036865, -2178.184570, 15.120305, -0.000022, 0.000014, -90.000038, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1675, "wshxrefhse", "washdecowall3256", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2149.799560, -2171.242187, 19.350311, -0.000037, 0.000007, 179.999877, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2149.799560, -2171.242187, 10.850299, 0.000037, 179.999969, -0.000190, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2149.769531, -2171.272216, 15.120305, -0.000029, 0.000007, 179.999877, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1675, "wshxrefhse", "washdecowall3256", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2149.799560, -2177.140625, 19.350311, -0.000037, 0.000000, 179.999832, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2149.799560, -2177.140625, 10.850299, 0.000037, 179.999969, -0.000190, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19464, 2149.769531, -2177.170654, 15.120305, -0.000029, 0.000000, 179.999832, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 1675, "wshxrefhse", "washdecowall3256", 0x00000000);
	tmpobjid = CreateDynamicObject(19449, 2151.147216, -2165.671142, 20.775476, -135.000030, 270.000000, 0.000128, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18787, "matramps", "cardboard4-16", 0x00000000);
	tmpobjid = CreateDynamicObject(19378, 2153.308837, -2174.278808, 17.384368, 0.000000, 270.000000, -90.000007, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18787, "matramps", "cardboard4-16", 0x00000000);
	tmpobjid = CreateDynamicObject(14855, 2144.010009, -2159.783935, 17.070337, 0.000000, 0.000000, 90.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 6869, "vegastemp1", "vgnbarb_wall_128", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 1, 14525, "imy_motel2", "mp_motel_reception", 0x00000000);
	tmpobjid = CreateDynamicObject(18070, 2159.244628, -2163.822265, 13.070307, 0.000000, 0.000000, 180.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 6869, "vegastemp1", "vgnbarb_wall_128", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 2155.667480, -2165.274414, 15.120305, -0.000022, -0.000014, -0.000068, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14738, "whorebar", "AH_wdblinds", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 2155.667480, -2165.274414, 20.110315, -0.000022, -0.000014, -0.000068, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14738, "whorebar", "AH_wdblinds", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 2153.145507, -2165.274414, 15.120305, -0.000022, -0.000007, -0.000068, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14738, "whorebar", "AH_wdblinds", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, 2153.145507, -2165.274414, 20.110315, -0.000022, -0.000007, -0.000068, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14738, "whorebar", "AH_wdblinds", 0x00000000);
	tmpobjid = CreateDynamicObject(19893, 2157.433837, -2162.104736, 13.570302, 0.000000, 0.000000, 45.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 3434, "skullsign", "vgsn_scrollsgn", 0x00000000);
	tmpobjid = CreateDynamicObject(19893, 2147.565429, -2158.136474, 13.580311, 0.000000, 0.000000, -45.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 3434, "skullsign", "vgsn_scrollsgn", 0x00000000);
	tmpobjid = CreateDynamicObject(19893, 2148.153076, -2158.497558, 13.580311, 0.000000, 0.000000, -45.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 3434, "skullsign", "vgsn_scrollsgn", 0x00000000);
	tmpobjid = CreateDynamicObject(19604, 2160.797119, -2144.430175, 12.640307, 90.000000, 90.000000, 0.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18067, "intclothes_acc", "mp_cloth_vicrug", 0x00000000);
	tmpobjid = CreateDynamicObject(19359, 2160.897705, -2149.776123, 15.760313, 0.000000, 0.000000, 0.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14859, "gf1", "mp_apt1_pos1", 0x00000000);
	tmpobjid = CreateDynamicObject(19604, 2160.797119, -2159.962158, 12.640307, 90.000000, 90.000000, 0.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18067, "intclothes_acc", "mp_cloth_vicrug", 0x00000000);
	tmpobjid = CreateDynamicObject(19359, 2160.897705, -2154.307373, 15.360304, 0.000000, 0.000000, 0.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14859, "gf1", "mp_apt1_pos2", 0x00000000);
	tmpobjid = CreateDynamicObject(19604, 2143.887207, -2154.320312, 12.640307, 90.000000, 90.000000, 0.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18067, "intclothes_acc", "mp_cloth_vicrug", 0x00000000);
	tmpobjid = CreateDynamicObject(19359, 2143.786865, -2149.625976, 15.760313, 0.000000, 0.000000, 180.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14859, "gf1", "mp_apt1_pos3", 0x00000000);
	tmpobjid = CreateDynamicObject(19604, 2143.887207, -2144.858398, 12.640307, 90.000000, 90.000000, 0.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18067, "intclothes_acc", "mp_cloth_vicrug", 0x00000000);
	tmpobjid = CreateDynamicObject(19465, 2151.285644, -2172.138671, 15.090306, 0.000000, 0.000000, 90.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18901, "matclothes", "skullygrn", 0x00000000);
	tmpobjid = CreateDynamicObject(19477, 2147.869873, -2163.933349, 16.200313, 0.000007, 0.000000, 89.999977, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(tmpobjid, 0, "{00FFFF}S", 50, "Ariel", 65, 1, 0x00000000, 0x00000000, 1);
	tmpobjid = CreateDynamicObject(19477, 2146.348144, -2163.933349, 16.030309, 0.000007, 0.000000, 89.999977, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(tmpobjid, 0, "{00FFFF}ummers", 120, "Engravers MT", 65, 1, 0x00000000, 0x00000000, 1);
	tmpobjid = CreateDynamicObject(19477, 2147.869873, -2163.933349, 16.200313, 0.000007, 0.000000, 89.999977, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(tmpobjid, 0, "{00FFFF}c", 50, "Webdings", 56, 1, 0x00000000, 0x00000000, 1);
	tmpobjid = CreateDynamicObject(19477, 2147.309326, -2163.933349, 14.960301, 0.000007, 0.000000, 89.999977, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(tmpobjid, 0, "{00FFFF}N", 50, "Ariel", 65, 1, 0x00000000, 0x00000000, 1);
	tmpobjid = CreateDynamicObject(19477, 2147.309326, -2163.933349, 14.980298, 0.000007, 0.000000, 89.999977, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(tmpobjid, 0, "{00FFFF}c", 50, "Webdings", 56, 1, 0x00000000, 0x00000000, 1);
	tmpobjid = CreateDynamicObject(19477, 2146.258056, -2163.933349, 14.780288, 0.000007, 0.000000, 89.999977, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(tmpobjid, 0, "{00FFFF}ews", 120, "Engravers MT", 65, 1, 0x00000000, 0x00000000, 1);
	tmpobjid = CreateDynamicObject(2257, 2159.348144, -2168.129394, 15.520311, 0.000000, 0.000000, 180.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14392, "dr_gsstudio", "golddisc_128", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 1, 14802, "lee_bdupsflat", "Bdup_Poster", 0x00000000);
	tmpobjid = CreateDynamicObject(2257, 2157.087402, -2168.129394, 15.520311, 0.000000, 0.000000, 180.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14392, "dr_gsstudio", "golddisc_128", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 1, 13761, "lahills_whisky", "discharger", 0x00000000);
	tmpobjid = CreateDynamicObject(19939, 2158.376953, -2161.547363, 13.090312, 0.000000, 90.000000, 90.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 14525, "imy_motel2", "mp_motel_reception", 0x00000000);

	CreateDynamicObject(1569, 2149.782714, -2141.821044, 12.640307, 0.000000, 0.000014, 179.999938, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1569, 2146.891845, -2141.821044, 12.640307, 0.000000, -0.000014, -0.000060, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1502, 2156.053466, -2165.182617, 11.400300, 0.000000, 0.000000, 180.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1502, 2152.731933, -2165.182617, 11.400300, 0.000000, 0.000000, 360.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1713, 2155.752685, -2147.891845, 12.640308, 0.000000, 0.000007, 0.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1713, 2153.271728, -2150.932373, 12.640308, 0.000007, 0.000000, 89.999977, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1713, 2160.094482, -2149.300781, 12.640308, 0.000007, 0.000000, 269.999969, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1713, 2155.242431, -2153.593017, 12.640308, 0.000000, 0.000007, 0.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1708, 2156.500244, -2152.589111, 12.640308, 0.000000, 0.000000, 180.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1708, 2157.971679, -2152.589111, 12.640308, 0.000000, 0.000000, 180.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1713, 2153.271728, -2157.015869, 12.640308, 0.000014, 0.000000, 89.999954, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1713, 2160.094482, -2155.384277, 12.640308, 0.000000, 0.000000, -90.000007, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1708, 2156.500244, -2158.672607, 12.640308, 0.000000, -0.000007, 179.999954, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1708, 2157.971679, -2158.672607, 12.640308, 0.000000, -0.000007, 179.999954, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1722, 2149.322265, -2152.648437, 12.640307, 0.000000, 0.000000, 180.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1722, 2148.151855, -2152.648437, 12.640307, 0.000000, 0.000000, 180.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1722, 2147.041259, -2152.648437, 12.640307, 0.000000, 0.000000, 180.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1722, 2145.900390, -2152.648437, 12.640307, 0.000000, 0.000000, 180.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1722, 2144.729248, -2152.648437, 12.640307, 0.000000, 0.000000, 180.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1722, 2149.322265, -2150.597900, 12.640307, 0.000000, -0.000007, 179.999954, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1722, 2148.151855, -2150.597900, 12.640307, 0.000000, -0.000007, 179.999954, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1722, 2147.041259, -2150.597900, 12.640307, 0.000000, -0.000007, 179.999954, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1722, 2145.900390, -2150.597900, 12.640307, 0.000000, -0.000007, 179.999954, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1722, 2144.729248, -2150.597900, 12.640307, 0.000000, -0.000007, 179.999954, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1722, 2149.322265, -2148.656250, 12.640307, 0.000000, -0.000014, 179.999908, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1722, 2148.151855, -2148.656250, 12.640307, 0.000000, -0.000014, 179.999908, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1722, 2147.041259, -2148.656250, 12.640307, 0.000000, -0.000014, 179.999908, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1722, 2145.900390, -2148.656250, 12.640307, 0.000000, -0.000014, 179.999908, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1722, 2144.729248, -2148.656250, 12.640307, 0.000000, -0.000014, 179.999908, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(2008, 2158.426757, -2162.240478, 12.750308, 0.000000, 0.000000, 0.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1714, 2158.699462, -2163.780761, 12.640306, 0.000000, 0.000000, 585.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1714, 2159.970458, -2163.950927, 12.640306, 0.000000, 0.000000, 900.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(2827, 2146.196533, -2157.490478, 13.570313, 0.000000, 0.000000, 540.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(2827, 2145.446289, -2157.490478, 13.570313, 0.000000, 0.000000, -144.100036, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1714, 2145.818847, -2159.302490, 12.640307, 0.000000, 0.000000, 180.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1714, 2147.090087, -2159.883056, 12.640307, 0.000000, 0.000000, 151.800018, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1827, 2156.820800, -2150.211914, 12.640307, 0.000000, 0.000000, 0.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1827, 2156.820800, -2156.135009, 12.640307, 0.000000, 0.000000, 0.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(3811, 2154.864013, -2142.062500, 12.990303, 0.000000, 0.000000, 270.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(3811, 2157.233886, -2142.062500, 12.990303, 0.000000, 0.000000, 270.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(3811, 2159.614990, -2142.062500, 12.990303, 0.000000, 0.000000, 270.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 
	CreateDynamicObject(1566, 2155.440185, -2177.591552, 14.120308, 0.000000, 0.000000, 90.000000, -1, NEWS_INTERIOR_MAP, -1, 300.00, 300.00); 

	// Removeable object
	CreateDynamicObject(3622, 2135.74219, -2186.44531, 15.67190,   3.14160, 0.00000, 315.106660, 0, 0);
	CreateDynamicObject(3622, 2150.19531, -2172.35938, 15.67190,   3.14160, 0.00000, 315.106690, 0, 0);
	CreateDynamicObject(3622, 2162.85156, -2159.75000, 15.67190,   3.14160, 0.00000, 315.106690, 0, 0);
}