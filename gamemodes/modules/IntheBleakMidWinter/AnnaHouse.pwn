#include <YSI_Coding\y_hooks>

//Map Exported with Texture Studio By: [uL]Pottus, Crayder, Svyatoy, encoder, devhub/////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Map Information////////////////////////////////////////////////////////////////////////////////////////////////
/*
	Exported on "2023-03-29 14:47:08" by "IntheBleakMidWinter"
	Created by "IntheBleakMidWinter"
*/
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
hook OnPlayerConnect(playerid){
RemoveBuildingForPlayer(playerid, 4508, -953.882, -271.203, 38.421, 0.250);
RemoveBuildingForPlayer(playerid, 3444, 2172.409, 769.734, 12.343, 0.250);
RemoveBuildingForPlayer(playerid, 3537, 2172.409, 769.734, 12.343, 0.250);
}


hook OnGameModeInit(){
new tmpobjid, object_world = -1, object_int = -1;
tmpobjid = CreateDynamicObject(19379, 2162.629638, 756.323364, 8.320317, 360.000000, 180.000000, 90.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 14651, "ab_trukstpd", "Bow_bar_flooring", 0x00000000);
tmpobjid = CreateDynamicObject(19379, 2172.247314, 756.323364, 8.320317, 360.000000, 180.000000, 90.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 14651, "ab_trukstpd", "Bow_bar_flooring", 0x00000000);
tmpobjid = CreateDynamicObject(19379, 2181.916503, 756.313354, 8.320317, 360.000000, 180.000000, 90.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 14651, "ab_trukstpd", "Bow_bar_flooring", 0x00000000);
tmpobjid = CreateDynamicObject(18762, 2157.423339, 756.525817, 12.262808, 0.000000, 0.000000, 0.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 13691, "bevcunto2_lahills", "stonewall3_la", 0x00000000);
tmpobjid = CreateDynamicObject(19379, 2162.629638, 756.503540, 8.320317, 360.000000, 180.000000, 90.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 14651, "ab_trukstpd", "Bow_bar_flooring", 0x00000000);
tmpobjid = CreateDynamicObject(19379, 2172.258300, 756.503540, 8.320317, 360.000000, 180.000000, 90.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 14651, "ab_trukstpd", "Bow_bar_flooring", 0x00000000);
tmpobjid = CreateDynamicObject(19379, 2181.896240, 756.503540, 8.320317, 360.000000, 180.000000, 90.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 14651, "ab_trukstpd", "Bow_bar_flooring", 0x00000000);
tmpobjid = CreateDynamicObject(18762, 2157.423339, 773.897705, 12.262808, 0.000000, 0.000000, 0.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 13691, "bevcunto2_lahills", "stonewall3_la", 0x00000000);
tmpobjid = CreateDynamicObject(18762, 2157.423339, 783.129943, 12.262808, 0.000000, 0.000000, 0.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 13691, "bevcunto2_lahills", "stonewall3_la", 0x00000000);
tmpobjid = CreateDynamicObject(18762, 2165.209228, 783.129943, 12.262808, 0.000000, 0.000000, 0.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 13691, "bevcunto2_lahills", "stonewall3_la", 0x00000000);
tmpobjid = CreateDynamicObject(18762, 2172.752441, 783.129943, 12.262808, 0.000000, 0.000000, 0.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 13691, "bevcunto2_lahills", "stonewall3_la", 0x00000000);
tmpobjid = CreateDynamicObject(18762, 2180.637451, 783.129943, 12.262808, 0.000000, 0.000000, 0.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 13691, "bevcunto2_lahills", "stonewall3_la", 0x00000000);
tmpobjid = CreateDynamicObject(18762, 2187.233642, 783.129943, 12.262808, 0.000000, 0.000000, 0.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 13691, "bevcunto2_lahills", "stonewall3_la", 0x00000000);
tmpobjid = CreateDynamicObject(18762, 2187.233642, 777.047546, 12.262808, 0.000000, 0.000000, 0.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 13691, "bevcunto2_lahills", "stonewall3_la", 0x00000000);
tmpobjid = CreateDynamicObject(18762, 2187.233642, 770.626831, 12.262808, 0.000000, 0.000000, 0.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 13691, "bevcunto2_lahills", "stonewall3_la", 0x00000000);
tmpobjid = CreateDynamicObject(18762, 2187.233642, 764.216735, 12.262808, 0.000000, 0.000000, 0.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 13691, "bevcunto2_lahills", "stonewall3_la", 0x00000000);
tmpobjid = CreateDynamicObject(18762, 2165.118896, 756.525817, 12.262808, 0.000000, 0.000000, 0.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 13691, "bevcunto2_lahills", "stonewall3_la", 0x00000000);
tmpobjid = CreateDynamicObject(18762, 2172.701904, 756.525817, 12.262808, 0.000000, 0.000000, 0.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 13691, "bevcunto2_lahills", "stonewall3_la", 0x00000000);
tmpobjid = CreateDynamicObject(18762, 2180.716796, 756.525817, 12.262808, 0.000000, 0.000000, 0.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 13691, "bevcunto2_lahills", "stonewall3_la", 0x00000000);
tmpobjid = CreateDynamicObject(18762, 2187.230712, 756.525817, 12.262808, 0.000000, 0.000000, 0.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 13691, "bevcunto2_lahills", "stonewall3_la", 0x00000000);
tmpobjid = CreateDynamicObject(3444, 2172.409912, 769.734008, 12.343795, 0.000000, 0.000000, 0.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
SetDynamicObjectMaterial(tmpobjid, 1, 14534, "ab_wooziea", "walp72S", 0x00000000);
SetDynamicObjectMaterial(tmpobjid, 2, 14534, "ab_wooziea", "walp72S", 0x00000000);
SetDynamicObjectMaterial(tmpobjid, 4, 14534, "ab_wooziea", "dt_office_roof", 0x00000000);
SetDynamicObjectMaterial(tmpobjid, 5, 10765, "airportgnd_sfse", "white", 0x00000000);
SetDynamicObjectMaterial(tmpobjid, 6, 3603, "bevmans01_la", "pavepat2_128", 0x00000000);
SetDynamicObjectMaterial(tmpobjid, 7, 4604, "buildblk555", "gm_labuld5_c", 0x00000000);
SetDynamicObjectMaterial(tmpobjid, 8, 4835, "airoads_las", "grassdry_128HV", 0x00000000);
SetDynamicObjectMaterial(tmpobjid, 9, 4835, "airoads_las", "grassdry_128HV", 0x00000000);
SetDynamicObjectMaterial(tmpobjid, 10, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
SetDynamicObjectMaterial(tmpobjid, 14, 2755, "ab_dojowall", "ab_trellis", 0x00000000);
tmpobjid = CreateDynamicObject(19379, 2162.629638, 782.974182, 8.320317, 360.000000, 180.000000, 90.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 14651, "ab_trukstpd", "Bow_bar_flooring", 0x00000000);
tmpobjid = CreateDynamicObject(19379, 2162.669677, 783.304504, 8.320317, 360.000000, 180.000000, 90.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 14651, "ab_trukstpd", "Bow_bar_flooring", 0x00000000);
tmpobjid = CreateDynamicObject(19379, 2172.291015, 783.304504, 8.320317, 360.000000, 180.000000, 90.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 14651, "ab_trukstpd", "Bow_bar_flooring", 0x00000000);
tmpobjid = CreateDynamicObject(19379, 2181.919189, 783.304504, 8.320317, 360.000000, 180.000000, 90.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 14651, "ab_trukstpd", "Bow_bar_flooring", 0x00000000);
tmpobjid = CreateDynamicObject(19379, 2181.919189, 782.964172, 8.320317, 360.000000, 180.000000, 90.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 14651, "ab_trukstpd", "Bow_bar_flooring", 0x00000000);
tmpobjid = CreateDynamicObject(19379, 2172.293945, 782.964172, 8.320317, 360.000000, 180.000000, 90.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 14651, "ab_trukstpd", "Bow_bar_flooring", 0x00000000);
tmpobjid = CreateDynamicObject(19379, 2187.301757, 777.844665, 8.320317, 360.000000, 180.000000, 180.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 14651, "ab_trukstpd", "Bow_bar_flooring", 0x00000000);
tmpobjid = CreateDynamicObject(19379, 2187.301757, 768.213867, 8.320317, 360.000000, 180.000000, 180.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 14651, "ab_trukstpd", "Bow_bar_flooring", 0x00000000);
tmpobjid = CreateDynamicObject(19379, 2187.301757, 761.662597, 8.320317, 360.000000, 180.000000, -179.800018, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 14651, "ab_trukstpd", "Bow_bar_flooring", 0x00000000);
tmpobjid = CreateDynamicObject(19433, 2157.829345, 758.756591, 12.693863, 90.000000, 0.000000, 180.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 14651, "ab_trukstpd", "Bow_bar_flooring", 0x00000000);
tmpobjid = CreateDynamicObject(19433, 2157.829345, 762.237548, 12.693863, 90.000000, 0.000000, 180.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 14651, "ab_trukstpd", "Bow_bar_flooring", 0x00000000);
tmpobjid = CreateDynamicObject(19433, 2157.829345, 765.728820, 12.693863, 90.000000, 0.000000, 180.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 14651, "ab_trukstpd", "Bow_bar_flooring", 0x00000000);
tmpobjid = CreateDynamicObject(19433, 2157.829345, 769.228759, 12.693863, 90.000000, 0.000000, 180.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 14651, "ab_trukstpd", "Bow_bar_flooring", 0x00000000);
tmpobjid = CreateDynamicObject(19433, 2157.829345, 772.589538, 12.693863, 90.000000, 0.000000, 180.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 14651, "ab_trukstpd", "Bow_bar_flooring", 0x00000000);
tmpobjid = CreateDynamicObject(19433, 2157.428955, 772.059020, 10.323851, 90.000000, 0.000000, 180.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 14651, "ab_trukstpd", "Bow_bar_flooring", 0x00000000);
tmpobjid = CreateDynamicObject(19433, 2157.428955, 768.568359, 10.323851, 90.000000, 0.000000, 180.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 14651, "ab_trukstpd", "Bow_bar_flooring", 0x00000000);
tmpobjid = CreateDynamicObject(19433, 2157.428955, 765.078186, 10.323851, 90.000000, 0.000000, 180.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 14651, "ab_trukstpd", "Bow_bar_flooring", 0x00000000);
tmpobjid = CreateDynamicObject(19433, 2157.428955, 761.587036, 10.323851, 90.000000, 0.000000, 180.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 14651, "ab_trukstpd", "Bow_bar_flooring", 0x00000000);
tmpobjid = CreateDynamicObject(19433, 2157.428955, 758.086975, 10.323851, 90.000000, 0.000000, 180.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 14651, "ab_trukstpd", "Bow_bar_flooring", 0x00000000);
tmpobjid = CreateDynamicObject(3407, 2156.648193, 773.806701, 9.820312, 0.000000, 0.000000, -90.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 10023, "bigwhitesfe", "recessed_light_SF", 0x00000000);
tmpobjid = CreateDynamicObject(19433, 2157.448974, 772.460266, 10.542724, 1200.000000, 180.000000, 360.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 14651, "ab_trukstpd", "Bow_bar_flooring", 0x00000000);
tmpobjid = CreateDynamicObject(19433, 2157.458984, 758.220275, 10.690319, -250.000000, 0.000000, 180.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 14651, "ab_trukstpd", "Bow_bar_flooring", 0x00000000);
tmpobjid = CreateDynamicObject(2111, 2162.379394, 769.179565, 10.596347, 0.000000, 0.000000, 0.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "sl_vicwall02", 0x00000000);
tmpobjid = CreateDynamicObject(2096, 2164.205566, 769.250793, 10.308115, 0.000000, 0.000000, 270.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "sl_vicwin01", 0x00000000);
tmpobjid = CreateDynamicObject(19482, 2157.728759, 765.240966, 11.780311, 0.000000, 0.000000, 180.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterialText(tmpobjid, 0, "{ffffff} Anna Kobayakawa's House", 90, "Arial", 20, 1, 0x00000000, 0x00000000, 0);
tmpobjid = CreateDynamicObject(19482, 2157.679443, 765.626342, 11.341868, 0.000000, 0.000000, 540.000000, object_world, object_int, -1, 300.00, 300.00); 
SetDynamicObjectMaterial(tmpobjid, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
SetDynamicObjectMaterialText(tmpobjid, 0, "{ffffff}103th, RockShore, Las Venturas", 90, "Arial", 20, 1, 0x00000000, 0x00000000, 0);
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
tmpobjid = CreateDynamicObject(19076, 2163.055175, 760.829406, 10.147285, 0.000000, 0.000000, 0.000000, object_world, object_int, -1, 300.00, 300.00); 
tmpobjid = CreateDynamicObject(19786, 2175.180175, 779.333129, 12.571003, 0.000000, 0.000000, 270.000000, object_world, object_int, -1, 300.00, 300.00);
}
