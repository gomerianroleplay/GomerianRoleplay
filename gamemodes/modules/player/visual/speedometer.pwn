#include <YSI_Coding\y_hooks>

/**
 *
 * Macros
 *
 */
#define TEXTDRAW_BRIGHT2  "~h~~h~"

#define SPEEDO_Y_COORD    (5.0)

/**
 *
 * Variables
 *
 */

// new
//   PlayerText:g_Speedo_Main_Box[MAX_PLAYERS],
//   PlayerText:g_Speedo_Vehicle_Name[MAX_PLAYERS],
//   PlayerText:g_Speedo_Speed_Label[MAX_PLAYERS],
//   PlayerText:g_Speedo_Model_Preview[MAX_PLAYERS],
//   PlayerText:g_Speedo_Transmission_Label[MAX_PLAYERS],
//   PlayerText:g_Speedo_Damage_Label[MAX_PLAYERS],
//   PlayerText:g_Speedo_Speed_Separator[MAX_PLAYERS],
//   PlayerText:g_Speedo_Transmission_Separator[MAX_PLAYERS],
//   PlayerText:g_Speedo_Damage_Separator[MAX_PLAYERS],
//   PlayerText:g_Speedo_Speed_Value[MAX_PLAYERS],
//   PlayerText:g_Speedo_Mileage_Label[MAX_PLAYERS],
//   PlayerText:g_Speedo_Fuel_Label[MAX_PLAYERS],
//   PlayerText:g_Speedo_Mileage_Separator[MAX_PLAYERS],
//   PlayerText:g_Speedo_Transmission_Value[MAX_PLAYERS],
//   PlayerText:g_Speedo_Damage_Value[MAX_PLAYERS],
//   PlayerText:g_Speedo_Mileage_Value[MAX_PLAYERS],
//   PlayerBar:g_Speedo_Fuel_Bar[MAX_PLAYERS]
// ;

new PlayerText:SpeedoRing_1[MAX_PLAYERS];
new PlayerText:SpeedoCircle_1[MAX_PLAYERS];
new PlayerText:SpeedoRing_2[MAX_PLAYERS];
new PlayerText:SpeedoCircle_2[MAX_PLAYERS];
new PlayerText:SpeedoRing_3[MAX_PLAYERS];
new PlayerText:SpeedoCircle_3[MAX_PLAYERS];
new PlayerText:Speedo_KMH[MAX_PLAYERS];
new PlayerText:Speedo_KMH_Amount[MAX_PLAYERS];
new PlayerText:Speedo_Fuel[MAX_PLAYERS];
new PlayerText:Speedo_Fuel_Amount[MAX_PLAYERS];
new PlayerText:Speedo_Health_Amount[MAX_PLAYERS];
new PlayerText:Speedo_Health[MAX_PLAYERS];



new PlayerText:BOX_SPEEDO[MAX_PLAYERS];
new PlayerText:SPEED_SPEEDO[MAX_PLAYERS];
new PlayerText:HEALTH_SPEEDO[MAX_PLAYERS];
new PlayerText:FUEL_SPEEDO[MAX_PLAYERS];
new PlayerText:SEPARATOR_SPEEDO_1[MAX_PLAYERS];
new PlayerText:SEPARATOR_SPEEDO_2[MAX_PLAYERS];
new PlayerText:SEPARATOR_SPEEDO_3[MAX_PLAYERS];
new PlayerText:SPEEDVALUE_SPEEDO[MAX_PLAYERS];
new PlayerText:HEALTHVALUE_SPEEDO[MAX_PLAYERS];
new PlayerText:FUELVALUE_SPEEDO[MAX_PLAYERS];
/**
 *
 * Functions
 *
 */
SpeedometerNew_Init(playerid)
{
  	BOX_SPEEDO[playerid] = CreatePlayerTextDraw(playerid, 285.000000, 391.000000, "_");
    PlayerTextDrawFont(playerid, BOX_SPEEDO[playerid], 1);
    PlayerTextDrawLetterSize(playerid, BOX_SPEEDO[playerid], 0.600000, 5.950003);
    PlayerTextDrawTextSize(playerid, BOX_SPEEDO[playerid], 298.500000, 139.500000);
    PlayerTextDrawSetOutline(playerid, BOX_SPEEDO[playerid], 1);
    PlayerTextDrawSetShadow(playerid, BOX_SPEEDO[playerid], 0);
    PlayerTextDrawAlignment(playerid, BOX_SPEEDO[playerid], 2);
    PlayerTextDrawColor(playerid, BOX_SPEEDO[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, BOX_SPEEDO[playerid], 255);
    PlayerTextDrawBoxColor(playerid, BOX_SPEEDO[playerid], 135);
    PlayerTextDrawUseBox(playerid, BOX_SPEEDO[playerid], 1);
    PlayerTextDrawSetProportional(playerid, BOX_SPEEDO[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, BOX_SPEEDO[playerid], 0);

    SPEED_SPEEDO[playerid] = CreatePlayerTextDraw(playerid, 220.000000, 394.000000, "~b~Speed");
    PlayerTextDrawFont(playerid, SPEED_SPEEDO[playerid], 1);
    PlayerTextDrawLetterSize(playerid, SPEED_SPEEDO[playerid], 0.404166, 1.350000);
    PlayerTextDrawTextSize(playerid, SPEED_SPEEDO[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, SPEED_SPEEDO[playerid], 1);
    PlayerTextDrawSetShadow(playerid, SPEED_SPEEDO[playerid], 0);
    PlayerTextDrawAlignment(playerid, SPEED_SPEEDO[playerid], 1);
    PlayerTextDrawColor(playerid, SPEED_SPEEDO[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, SPEED_SPEEDO[playerid], 255);
    PlayerTextDrawBoxColor(playerid, SPEED_SPEEDO[playerid], 50);
    PlayerTextDrawUseBox(playerid, SPEED_SPEEDO[playerid], 0);
    PlayerTextDrawSetProportional(playerid, SPEED_SPEEDO[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, SPEED_SPEEDO[playerid], 0);

    HEALTH_SPEEDO[playerid] = CreatePlayerTextDraw(playerid, 220.000000, 410.000000, "~b~Health");
    PlayerTextDrawFont(playerid, HEALTH_SPEEDO[playerid], 1);
    PlayerTextDrawLetterSize(playerid, HEALTH_SPEEDO[playerid], 0.404166, 1.350000);
    PlayerTextDrawTextSize(playerid, HEALTH_SPEEDO[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, HEALTH_SPEEDO[playerid], 1);
    PlayerTextDrawSetShadow(playerid, HEALTH_SPEEDO[playerid], 0);
    PlayerTextDrawAlignment(playerid, HEALTH_SPEEDO[playerid], 1);
    PlayerTextDrawColor(playerid, HEALTH_SPEEDO[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, HEALTH_SPEEDO[playerid], 255);
    PlayerTextDrawBoxColor(playerid, HEALTH_SPEEDO[playerid], 50);
    PlayerTextDrawUseBox(playerid, HEALTH_SPEEDO[playerid], 0);
    PlayerTextDrawSetProportional(playerid, HEALTH_SPEEDO[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, HEALTH_SPEEDO[playerid], 0);

    FUEL_SPEEDO[playerid] = CreatePlayerTextDraw(playerid, 219.000000, 427.000000, "~b~Fuel");
    PlayerTextDrawFont(playerid, FUEL_SPEEDO[playerid], 1);
    PlayerTextDrawLetterSize(playerid, FUEL_SPEEDO[playerid], 0.404166, 1.350000);
    PlayerTextDrawTextSize(playerid, FUEL_SPEEDO[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, FUEL_SPEEDO[playerid], 1);
    PlayerTextDrawSetShadow(playerid, FUEL_SPEEDO[playerid], 0);
    PlayerTextDrawAlignment(playerid, FUEL_SPEEDO[playerid], 1);
    PlayerTextDrawColor(playerid, FUEL_SPEEDO[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, FUEL_SPEEDO[playerid], 255);
    PlayerTextDrawBoxColor(playerid, FUEL_SPEEDO[playerid], 50);
    PlayerTextDrawUseBox(playerid, FUEL_SPEEDO[playerid], 0);
    PlayerTextDrawSetProportional(playerid, FUEL_SPEEDO[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, FUEL_SPEEDO[playerid], 0);

    SEPARATOR_SPEEDO_1[playerid] = CreatePlayerTextDraw(playerid, 274.000000, 395.000000, ":");
    PlayerTextDrawFont(playerid, SEPARATOR_SPEEDO_1[playerid], 1);
    PlayerTextDrawLetterSize(playerid, SEPARATOR_SPEEDO_1[playerid], 0.404166, 1.350000);
    PlayerTextDrawTextSize(playerid, SEPARATOR_SPEEDO_1[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, SEPARATOR_SPEEDO_1[playerid], 1);
    PlayerTextDrawSetShadow(playerid, SEPARATOR_SPEEDO_1[playerid], 0);
    PlayerTextDrawAlignment(playerid, SEPARATOR_SPEEDO_1[playerid], 1);
    PlayerTextDrawColor(playerid, SEPARATOR_SPEEDO_1[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, SEPARATOR_SPEEDO_1[playerid], 255);
    PlayerTextDrawBoxColor(playerid, SEPARATOR_SPEEDO_1[playerid], 50);
    PlayerTextDrawUseBox(playerid, SEPARATOR_SPEEDO_1[playerid], 0);
    PlayerTextDrawSetProportional(playerid, SEPARATOR_SPEEDO_1[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, SEPARATOR_SPEEDO_1[playerid], 0);

    SEPARATOR_SPEEDO_2[playerid] = CreatePlayerTextDraw(playerid, 274.000000, 410.000000, ":");
    PlayerTextDrawFont(playerid, SEPARATOR_SPEEDO_2[playerid], 1);
    PlayerTextDrawLetterSize(playerid, SEPARATOR_SPEEDO_2[playerid], 0.404166, 1.350000);
    PlayerTextDrawTextSize(playerid, SEPARATOR_SPEEDO_2[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, SEPARATOR_SPEEDO_2[playerid], 1);
    PlayerTextDrawSetShadow(playerid, SEPARATOR_SPEEDO_2[playerid], 0);
    PlayerTextDrawAlignment(playerid, SEPARATOR_SPEEDO_2[playerid], 1);
    PlayerTextDrawColor(playerid, SEPARATOR_SPEEDO_2[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, SEPARATOR_SPEEDO_2[playerid], 255);
    PlayerTextDrawBoxColor(playerid, SEPARATOR_SPEEDO_2[playerid], 50);
    PlayerTextDrawUseBox(playerid, SEPARATOR_SPEEDO_2[playerid], 0);
    PlayerTextDrawSetProportional(playerid, SEPARATOR_SPEEDO_2[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, SEPARATOR_SPEEDO_2[playerid], 0);

    SEPARATOR_SPEEDO_3[playerid] = CreatePlayerTextDraw(playerid, 274.000000, 427.000000, ":");
    PlayerTextDrawFont(playerid, SEPARATOR_SPEEDO_3[playerid], 1);
    PlayerTextDrawLetterSize(playerid, SEPARATOR_SPEEDO_3[playerid], 0.404166, 1.350000);
    PlayerTextDrawTextSize(playerid, SEPARATOR_SPEEDO_3[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, SEPARATOR_SPEEDO_3[playerid], 1);
    PlayerTextDrawSetShadow(playerid, SEPARATOR_SPEEDO_3[playerid], 0);
    PlayerTextDrawAlignment(playerid, SEPARATOR_SPEEDO_3[playerid], 1);
    PlayerTextDrawColor(playerid, SEPARATOR_SPEEDO_3[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, SEPARATOR_SPEEDO_3[playerid], 255);
    PlayerTextDrawBoxColor(playerid, SEPARATOR_SPEEDO_3[playerid], 50);
    PlayerTextDrawUseBox(playerid, SEPARATOR_SPEEDO_3[playerid], 0);
    PlayerTextDrawSetProportional(playerid, SEPARATOR_SPEEDO_3[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, SEPARATOR_SPEEDO_3[playerid], 0);

    SPEEDVALUE_SPEEDO[playerid] = CreatePlayerTextDraw(playerid, 285.000000, 395.000000, "300Km/h");
    PlayerTextDrawFont(playerid, SPEEDVALUE_SPEEDO[playerid], 1);
    PlayerTextDrawLetterSize(playerid, SPEEDVALUE_SPEEDO[playerid], 0.345833, 1.350000);
    PlayerTextDrawTextSize(playerid, SPEEDVALUE_SPEEDO[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, SPEEDVALUE_SPEEDO[playerid], 1);
    PlayerTextDrawSetShadow(playerid, SPEEDVALUE_SPEEDO[playerid], 0);
    PlayerTextDrawAlignment(playerid, SPEEDVALUE_SPEEDO[playerid], 1);
    PlayerTextDrawColor(playerid, SPEEDVALUE_SPEEDO[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, SPEEDVALUE_SPEEDO[playerid], 255);
    PlayerTextDrawBoxColor(playerid, SPEEDVALUE_SPEEDO[playerid], 50);
    PlayerTextDrawUseBox(playerid, SPEEDVALUE_SPEEDO[playerid], 0);
    PlayerTextDrawSetProportional(playerid, SPEEDVALUE_SPEEDO[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, SPEEDVALUE_SPEEDO[playerid], 0);

    HEALTHVALUE_SPEEDO[playerid] = CreatePlayerTextDraw(playerid, 285.000000, 411.000000, "2000");
    PlayerTextDrawFont(playerid, HEALTHVALUE_SPEEDO[playerid], 1);
    PlayerTextDrawLetterSize(playerid, HEALTHVALUE_SPEEDO[playerid], 0.345833, 1.350000);
    PlayerTextDrawTextSize(playerid, HEALTHVALUE_SPEEDO[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, HEALTHVALUE_SPEEDO[playerid], 1);
    PlayerTextDrawSetShadow(playerid, HEALTHVALUE_SPEEDO[playerid], 0);
    PlayerTextDrawAlignment(playerid, HEALTHVALUE_SPEEDO[playerid], 1);
    PlayerTextDrawColor(playerid, HEALTHVALUE_SPEEDO[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, HEALTHVALUE_SPEEDO[playerid], 255);
    PlayerTextDrawBoxColor(playerid, HEALTHVALUE_SPEEDO[playerid], 50);
    PlayerTextDrawUseBox(playerid, HEALTHVALUE_SPEEDO[playerid], 0);
    PlayerTextDrawSetProportional(playerid, HEALTHVALUE_SPEEDO[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, HEALTHVALUE_SPEEDO[playerid], 0);

    FUELVALUE_SPEEDO[playerid] = CreatePlayerTextDraw(playerid, 285.000000, 427.000000, "100");
    PlayerTextDrawFont(playerid, FUELVALUE_SPEEDO[playerid], 1);
    PlayerTextDrawLetterSize(playerid, FUELVALUE_SPEEDO[playerid], 0.345833, 1.350000);
    PlayerTextDrawTextSize(playerid, FUELVALUE_SPEEDO[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, FUELVALUE_SPEEDO[playerid], 1);
    PlayerTextDrawSetShadow(playerid, FUELVALUE_SPEEDO[playerid], 0);
    PlayerTextDrawAlignment(playerid, FUELVALUE_SPEEDO[playerid], 1);
    PlayerTextDrawColor(playerid, FUELVALUE_SPEEDO[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, FUELVALUE_SPEEDO[playerid], 255);
    PlayerTextDrawBoxColor(playerid, FUELVALUE_SPEEDO[playerid], 50);
    PlayerTextDrawUseBox(playerid, FUELVALUE_SPEEDO[playerid], 0);
    PlayerTextDrawSetProportional(playerid, FUELVALUE_SPEEDO[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, FUELVALUE_SPEEDO[playerid], 0);
    return 1;
}

Speedometer_Initialize(playerid)
{
  
    SpeedoRing_1[playerid] = CreatePlayerTextDraw(playerid, 592.000000, 356.000000, "ld_beat:cring");
    PlayerTextDrawFont(playerid, SpeedoRing_1[playerid], 4);
    PlayerTextDrawLetterSize(playerid, SpeedoRing_1[playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, SpeedoRing_1[playerid], 52.500000, 53.500000);
    PlayerTextDrawSetOutline(playerid, SpeedoRing_1[playerid], 1);
    PlayerTextDrawSetShadow(playerid, SpeedoRing_1[playerid], 0);
    PlayerTextDrawAlignment(playerid, SpeedoRing_1[playerid], 1);
    PlayerTextDrawColor(playerid, SpeedoRing_1[playerid], 16777215);
    PlayerTextDrawBackgroundColor(playerid, SpeedoRing_1[playerid], 255);
    PlayerTextDrawBoxColor(playerid, SpeedoRing_1[playerid], 50);
    PlayerTextDrawUseBox(playerid, SpeedoRing_1[playerid], 1);
    PlayerTextDrawSetProportional(playerid, SpeedoRing_1[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, SpeedoRing_1[playerid], 0);

    SpeedoCircle_1[playerid] = CreatePlayerTextDraw(playerid, 596.000000, 360.000000, "ld_beat:chit");
    PlayerTextDrawFont(playerid, SpeedoCircle_1[playerid], 4);
    PlayerTextDrawLetterSize(playerid, SpeedoCircle_1[playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, SpeedoCircle_1[playerid], 45.000000, 45.500000);
    PlayerTextDrawSetOutline(playerid, SpeedoCircle_1[playerid], 1);
    PlayerTextDrawSetShadow(playerid, SpeedoCircle_1[playerid], 0);
    PlayerTextDrawAlignment(playerid, SpeedoCircle_1[playerid], 1);
    PlayerTextDrawColor(playerid, SpeedoCircle_1[playerid], 1111638778);
    PlayerTextDrawBackgroundColor(playerid, SpeedoCircle_1[playerid], 255);
    PlayerTextDrawBoxColor(playerid, SpeedoCircle_1[playerid], 50);
    PlayerTextDrawUseBox(playerid, SpeedoCircle_1[playerid], 1);
    PlayerTextDrawSetProportional(playerid, SpeedoCircle_1[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, SpeedoCircle_1[playerid], 0);

    SpeedoRing_2[playerid] = CreatePlayerTextDraw(playerid, 550.000000, 356.000000, "ld_beat:cring");
    PlayerTextDrawFont(playerid, SpeedoRing_2[playerid], 4);
    PlayerTextDrawLetterSize(playerid, SpeedoRing_2[playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, SpeedoRing_2[playerid], 52.500000, 53.500000);
    PlayerTextDrawSetOutline(playerid, SpeedoRing_2[playerid], 1);
    PlayerTextDrawSetShadow(playerid, SpeedoRing_2[playerid], 0);
    PlayerTextDrawAlignment(playerid, SpeedoRing_2[playerid], 1);
    PlayerTextDrawColor(playerid, SpeedoRing_2[playerid], 16777215);
    PlayerTextDrawBackgroundColor(playerid, SpeedoRing_2[playerid], 255);
    PlayerTextDrawBoxColor(playerid, SpeedoRing_2[playerid], 50);
    PlayerTextDrawUseBox(playerid, SpeedoRing_2[playerid], 1);
    PlayerTextDrawSetProportional(playerid, SpeedoRing_2[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, SpeedoRing_2[playerid], 0);

    SpeedoCircle_2[playerid] = CreatePlayerTextDraw(playerid, 554.000000, 360.000000, "ld_beat:chit");
    PlayerTextDrawFont(playerid, SpeedoCircle_2[playerid], 4);
    PlayerTextDrawLetterSize(playerid, SpeedoCircle_2[playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, SpeedoCircle_2[playerid], 45.000000, 45.500000);
    PlayerTextDrawSetOutline(playerid, SpeedoCircle_2[playerid], 1);
    PlayerTextDrawSetShadow(playerid, SpeedoCircle_2[playerid], 0);
    PlayerTextDrawAlignment(playerid, SpeedoCircle_2[playerid], 1);
    PlayerTextDrawColor(playerid, SpeedoCircle_2[playerid], 1111638778);
    PlayerTextDrawBackgroundColor(playerid, SpeedoCircle_2[playerid], 255);
    PlayerTextDrawBoxColor(playerid, SpeedoCircle_2[playerid], 50);
    PlayerTextDrawUseBox(playerid, SpeedoCircle_2[playerid], 1);
    PlayerTextDrawSetProportional(playerid, SpeedoCircle_2[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, SpeedoCircle_2[playerid], 0);

    SpeedoRing_3[playerid] = CreatePlayerTextDraw(playerid, 507.000000, 356.000000, "ld_beat:cring");
    PlayerTextDrawFont(playerid, SpeedoRing_3[playerid], 4);
    PlayerTextDrawLetterSize(playerid, SpeedoRing_3[playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, SpeedoRing_3[playerid], 52.500000, 53.500000);
    PlayerTextDrawSetOutline(playerid, SpeedoRing_3[playerid], 1);
    PlayerTextDrawSetShadow(playerid, SpeedoRing_3[playerid], 0);
    PlayerTextDrawAlignment(playerid, SpeedoRing_3[playerid], 1);
    PlayerTextDrawColor(playerid, SpeedoRing_3[playerid], 16777215);
    PlayerTextDrawBackgroundColor(playerid, SpeedoRing_3[playerid], 255);
    PlayerTextDrawBoxColor(playerid, SpeedoRing_3[playerid], 50);
    PlayerTextDrawUseBox(playerid, SpeedoRing_3[playerid], 1);
    PlayerTextDrawSetProportional(playerid, SpeedoRing_3[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, SpeedoRing_3[playerid], 0);

    SpeedoCircle_3[playerid] = CreatePlayerTextDraw(playerid, 511.000000, 360.000000, "ld_beat:chit");
    PlayerTextDrawFont(playerid, SpeedoCircle_3[playerid], 4);
    PlayerTextDrawLetterSize(playerid, SpeedoCircle_3[playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, SpeedoCircle_3[playerid], 45.000000, 45.500000);
    PlayerTextDrawSetOutline(playerid, SpeedoCircle_3[playerid], 1);
    PlayerTextDrawSetShadow(playerid, SpeedoCircle_3[playerid], 0);
    PlayerTextDrawAlignment(playerid, SpeedoCircle_3[playerid], 1);
    PlayerTextDrawColor(playerid, SpeedoCircle_3[playerid], 1111638778);
    PlayerTextDrawBackgroundColor(playerid, SpeedoCircle_3[playerid], 255);
    PlayerTextDrawBoxColor(playerid, SpeedoCircle_3[playerid], 50);
    PlayerTextDrawUseBox(playerid, SpeedoCircle_3[playerid], 1);
    PlayerTextDrawSetProportional(playerid, SpeedoCircle_3[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, SpeedoCircle_3[playerid], 0);

    Speedo_KMH[playerid] = CreatePlayerTextDraw(playerid, 618.500000, 372.000000, "KM/H");
    PlayerTextDrawFont(playerid, Speedo_KMH[playerid], 2);
    PlayerTextDrawLetterSize(playerid, Speedo_KMH[playerid], 0.137500, 1.000000);
    PlayerTextDrawTextSize(playerid, Speedo_KMH[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Speedo_KMH[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Speedo_KMH[playerid], 0);
    PlayerTextDrawAlignment(playerid, Speedo_KMH[playerid], 2);
    PlayerTextDrawColor(playerid, Speedo_KMH[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Speedo_KMH[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Speedo_KMH[playerid], 50);
    PlayerTextDrawUseBox(playerid, Speedo_KMH[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Speedo_KMH[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Speedo_KMH[playerid], 0);

    Speedo_KMH_Amount[playerid] = CreatePlayerTextDraw(playerid, 618.500000, 383.000000, "250");
    PlayerTextDrawFont(playerid, Speedo_KMH_Amount[playerid], 2);
    PlayerTextDrawLetterSize(playerid, Speedo_KMH_Amount[playerid], 0.137500, 1.000000);
    PlayerTextDrawTextSize(playerid, Speedo_KMH_Amount[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Speedo_KMH_Amount[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Speedo_KMH_Amount[playerid], 0);
    PlayerTextDrawAlignment(playerid, Speedo_KMH_Amount[playerid], 2);
    PlayerTextDrawColor(playerid, Speedo_KMH_Amount[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Speedo_KMH_Amount[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Speedo_KMH_Amount[playerid], 50);
    PlayerTextDrawUseBox(playerid, Speedo_KMH_Amount[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Speedo_KMH_Amount[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Speedo_KMH_Amount[playerid], 0);

    Speedo_Fuel[playerid] = CreatePlayerTextDraw(playerid, 523.000000, 367.000000, "Preview_Model");
    PlayerTextDrawFont(playerid, Speedo_Fuel[playerid], 5);
    PlayerTextDrawLetterSize(playerid, Speedo_Fuel[playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, Speedo_Fuel[playerid], 19.500000, 18.000000);
    PlayerTextDrawSetOutline(playerid, Speedo_Fuel[playerid], 0);
    PlayerTextDrawSetShadow(playerid, Speedo_Fuel[playerid], 0);
    PlayerTextDrawAlignment(playerid, Speedo_Fuel[playerid], 1);
    PlayerTextDrawColor(playerid, Speedo_Fuel[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Speedo_Fuel[playerid], 0);
    PlayerTextDrawBoxColor(playerid, Speedo_Fuel[playerid], 255);
    PlayerTextDrawUseBox(playerid, Speedo_Fuel[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Speedo_Fuel[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Speedo_Fuel[playerid], 0);
    PlayerTextDrawSetPreviewModel(playerid, Speedo_Fuel[playerid], 1650);
    PlayerTextDrawSetPreviewRot(playerid, Speedo_Fuel[playerid], 0.000000, 0.000000, -3.000000, 1.000000);
    PlayerTextDrawSetPreviewVehCol(playerid, Speedo_Fuel[playerid], 1, 1);

    Speedo_Fuel_Amount[playerid] = CreatePlayerTextDraw(playerid, 533.500000, 383.000000, "120L");
    PlayerTextDrawFont(playerid, Speedo_Fuel_Amount[playerid], 2);
    PlayerTextDrawLetterSize(playerid, Speedo_Fuel_Amount[playerid], 0.137500, 1.000000);
    PlayerTextDrawTextSize(playerid, Speedo_Fuel_Amount[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Speedo_Fuel_Amount[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Speedo_Fuel_Amount[playerid], 0);
    PlayerTextDrawAlignment(playerid, Speedo_Fuel_Amount[playerid], 2);
    PlayerTextDrawColor(playerid, Speedo_Fuel_Amount[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Speedo_Fuel_Amount[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Speedo_Fuel_Amount[playerid], 50);
    PlayerTextDrawUseBox(playerid, Speedo_Fuel_Amount[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Speedo_Fuel_Amount[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Speedo_Fuel_Amount[playerid], 0);

    Speedo_Health_Amount[playerid] = CreatePlayerTextDraw(playerid, 576.500000, 383.000000, "2000");
    PlayerTextDrawFont(playerid, Speedo_Health_Amount[playerid], 2);
    PlayerTextDrawLetterSize(playerid, Speedo_Health_Amount[playerid], 0.137500, 1.000000);
    PlayerTextDrawTextSize(playerid, Speedo_Health_Amount[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, Speedo_Health_Amount[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Speedo_Health_Amount[playerid], 0);
    PlayerTextDrawAlignment(playerid, Speedo_Health_Amount[playerid], 2);
    PlayerTextDrawColor(playerid, Speedo_Health_Amount[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Speedo_Health_Amount[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Speedo_Health_Amount[playerid], 50);
    PlayerTextDrawUseBox(playerid, Speedo_Health_Amount[playerid], 0);
    PlayerTextDrawSetProportional(playerid, Speedo_Health_Amount[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Speedo_Health_Amount[playerid], 0);

    Speedo_Health[playerid] = CreatePlayerTextDraw(playerid, 570.500000, 369.000000, "HUD:radar_impound");
    PlayerTextDrawFont(playerid, Speedo_Health[playerid], 4);
    PlayerTextDrawLetterSize(playerid, Speedo_Health[playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, Speedo_Health[playerid], 11.500000, 13.000000);
    PlayerTextDrawSetOutline(playerid, Speedo_Health[playerid], 1);
    PlayerTextDrawSetShadow(playerid, Speedo_Health[playerid], 0);
    PlayerTextDrawAlignment(playerid, Speedo_Health[playerid], 1);
    PlayerTextDrawColor(playerid, Speedo_Health[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, Speedo_Health[playerid], 255);
    PlayerTextDrawBoxColor(playerid, Speedo_Health[playerid], 50);
    PlayerTextDrawUseBox(playerid, Speedo_Health[playerid], 1);
    PlayerTextDrawSetProportional(playerid, Speedo_Health[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, Speedo_Health[playerid], 0);
    return 1;
  // g_Speedo_Main_Box[playerid] = CreatePlayerTextDraw(playerid, 570.000000, SPEEDO_Y_COORD+335.000000, "__");
  // PlayerTextDrawFont(playerid, g_Speedo_Main_Box[playerid], 1);
  // PlayerTextDrawLetterSize(playerid, g_Speedo_Main_Box[playerid], 0.600000, 7.149991);
  // PlayerTextDrawTextSize(playerid, g_Speedo_Main_Box[playerid], 298.500000, 139.500000);
  // PlayerTextDrawSetOutline(playerid, g_Speedo_Main_Box[playerid], 1);
  // PlayerTextDrawSetShadow(playerid, g_Speedo_Main_Box[playerid], 0);
  // PlayerTextDrawAlignment(playerid, g_Speedo_Main_Box[playerid], 2);
  // PlayerTextDrawColor(playerid, g_Speedo_Main_Box[playerid], -1);
  // PlayerTextDrawBackgroundColor(playerid, g_Speedo_Main_Box[playerid], 255);
  // PlayerTextDrawBoxColor(playerid, g_Speedo_Main_Box[playerid], 135);
  // PlayerTextDrawUseBox(playerid, g_Speedo_Main_Box[playerid], 1);
  // PlayerTextDrawSetProportional(playerid, g_Speedo_Main_Box[playerid], 1);
  // PlayerTextDrawSetSelectable(playerid, g_Speedo_Main_Box[playerid], 0);

  // g_Speedo_Vehicle_Name[playerid] = CreatePlayerTextDraw(playerid, 570.000000, SPEEDO_Y_COORD+321.000000, "Vehicle Name");
  // PlayerTextDrawFont(playerid, g_Speedo_Vehicle_Name[playerid], 2);
  // PlayerTextDrawLetterSize(playerid, g_Speedo_Vehicle_Name[playerid], 0.183329, 1.149999);
  // PlayerTextDrawTextSize(playerid, g_Speedo_Vehicle_Name[playerid], 405.000000, 139.500000);
  // PlayerTextDrawSetOutline(playerid, g_Speedo_Vehicle_Name[playerid], 0);
  // PlayerTextDrawSetShadow(playerid, g_Speedo_Vehicle_Name[playerid], 0);
  // PlayerTextDrawAlignment(playerid, g_Speedo_Vehicle_Name[playerid], 2);
  // PlayerTextDrawColor(playerid, g_Speedo_Vehicle_Name[playerid], -126);
  // PlayerTextDrawBackgroundColor(playerid, g_Speedo_Vehicle_Name[playerid], 255);
  // PlayerTextDrawBoxColor(playerid, g_Speedo_Vehicle_Name[playerid], 128);
  // PlayerTextDrawUseBox(playerid, g_Speedo_Vehicle_Name[playerid], 1);
  // PlayerTextDrawSetProportional(playerid, g_Speedo_Vehicle_Name[playerid], 1);
  // PlayerTextDrawSetSelectable(playerid, g_Speedo_Vehicle_Name[playerid], 0);

  // g_Speedo_Speed_Label[playerid] = CreatePlayerTextDraw(playerid, 503.000000, SPEEDO_Y_COORD+335.000000, "SPEED");
  // PlayerTextDrawFont(playerid, g_Speedo_Speed_Label[playerid], 2);
  // PlayerTextDrawLetterSize(playerid, g_Speedo_Speed_Label[playerid], 0.150000, 1.000000);
  // PlayerTextDrawTextSize(playerid, g_Speedo_Speed_Label[playerid], 773.000000, 20.500000);
  // PlayerTextDrawSetOutline(playerid, g_Speedo_Speed_Label[playerid], 0);
  // PlayerTextDrawSetShadow(playerid, g_Speedo_Speed_Label[playerid], 0);
  // PlayerTextDrawAlignment(playerid, g_Speedo_Speed_Label[playerid], 1);
  // PlayerTextDrawColor(playerid, g_Speedo_Speed_Label[playerid], 11150847);
  // PlayerTextDrawBackgroundColor(playerid, g_Speedo_Speed_Label[playerid], 255);
  // PlayerTextDrawBoxColor(playerid, g_Speedo_Speed_Label[playerid], 50);
  // PlayerTextDrawUseBox(playerid, g_Speedo_Speed_Label[playerid], 0);
  // PlayerTextDrawSetProportional(playerid, g_Speedo_Speed_Label[playerid], 1);
  // PlayerTextDrawSetSelectable(playerid, g_Speedo_Speed_Label[playerid], 0);

  // g_Speedo_Model_Preview[playerid] = CreatePlayerTextDraw(playerid, 597.000000, SPEEDO_Y_COORD+319.000000, "TextDraw");
  // PlayerTextDrawFont(playerid, g_Speedo_Model_Preview[playerid], 5);
  // PlayerTextDrawLetterSize(playerid, g_Speedo_Model_Preview[playerid], 0.600000, 2.000000);
  // PlayerTextDrawTextSize(playerid, g_Speedo_Model_Preview[playerid], 44.000000, 54.000000);
  // PlayerTextDrawSetOutline(playerid, g_Speedo_Model_Preview[playerid], 1);
  // PlayerTextDrawSetShadow(playerid, g_Speedo_Model_Preview[playerid], 0);
  // PlayerTextDrawAlignment(playerid, g_Speedo_Model_Preview[playerid], 1);
  // PlayerTextDrawColor(playerid, g_Speedo_Model_Preview[playerid], -1);
  // PlayerTextDrawBackgroundColor(playerid, g_Speedo_Model_Preview[playerid], 0);
  // PlayerTextDrawBoxColor(playerid, g_Speedo_Model_Preview[playerid], 0);
  // PlayerTextDrawUseBox(playerid, g_Speedo_Model_Preview[playerid], 1);
  // PlayerTextDrawSetProportional(playerid, g_Speedo_Model_Preview[playerid], 1);
  // PlayerTextDrawSetSelectable(playerid, g_Speedo_Model_Preview[playerid], 0);
  // PlayerTextDrawSetPreviewModel(playerid, g_Speedo_Model_Preview[playerid], 400);
  // PlayerTextDrawSetPreviewRot(playerid, g_Speedo_Model_Preview[playerid], -8.000000, 3.000000, -47.000000, 0.799996);
  // PlayerTextDrawSetPreviewVehCol(playerid, g_Speedo_Model_Preview[playerid], 1, 1);

  // g_Speedo_Transmission_Label[playerid] = CreatePlayerTextDraw(playerid, 503.000000, SPEEDO_Y_COORD+345.000000, "TRANSMISSION");
  // PlayerTextDrawFont(playerid, g_Speedo_Transmission_Label[playerid], 2);
  // PlayerTextDrawLetterSize(playerid, g_Speedo_Transmission_Label[playerid], 0.150000, 1.000000);
  // PlayerTextDrawTextSize(playerid, g_Speedo_Transmission_Label[playerid], 773.000000, 20.500000);
  // PlayerTextDrawSetOutline(playerid, g_Speedo_Transmission_Label[playerid], 0);
  // PlayerTextDrawSetShadow(playerid, g_Speedo_Transmission_Label[playerid], 0);
  // PlayerTextDrawAlignment(playerid, g_Speedo_Transmission_Label[playerid], 1);
  // PlayerTextDrawColor(playerid, g_Speedo_Transmission_Label[playerid], 11150847);
  // PlayerTextDrawBackgroundColor(playerid, g_Speedo_Transmission_Label[playerid], 255);
  // PlayerTextDrawBoxColor(playerid, g_Speedo_Transmission_Label[playerid], 50);
  // PlayerTextDrawUseBox(playerid, g_Speedo_Transmission_Label[playerid], 0);
  // PlayerTextDrawSetProportional(playerid, g_Speedo_Transmission_Label[playerid], 1);
  // PlayerTextDrawSetSelectable(playerid, g_Speedo_Transmission_Label[playerid], 0);

  // g_Speedo_Damage_Label[playerid] = CreatePlayerTextDraw(playerid, 503.000000, SPEEDO_Y_COORD+355.000000, "DAMAGE");
  // PlayerTextDrawFont(playerid, g_Speedo_Damage_Label[playerid], 2);
  // PlayerTextDrawLetterSize(playerid, g_Speedo_Damage_Label[playerid], 0.150000, 1.000000);
  // PlayerTextDrawTextSize(playerid, g_Speedo_Damage_Label[playerid], 773.000000, 20.500000);
  // PlayerTextDrawSetOutline(playerid, g_Speedo_Damage_Label[playerid], 0);
  // PlayerTextDrawSetShadow(playerid, g_Speedo_Damage_Label[playerid], 0);
  // PlayerTextDrawAlignment(playerid, g_Speedo_Damage_Label[playerid], 1);
  // PlayerTextDrawColor(playerid, g_Speedo_Damage_Label[playerid], 11150847);
  // PlayerTextDrawBackgroundColor(playerid, g_Speedo_Damage_Label[playerid], 255);
  // PlayerTextDrawBoxColor(playerid, g_Speedo_Damage_Label[playerid], 50);
  // PlayerTextDrawUseBox(playerid, g_Speedo_Damage_Label[playerid], 0);
  // PlayerTextDrawSetProportional(playerid, g_Speedo_Damage_Label[playerid], 1);
  // PlayerTextDrawSetSelectable(playerid, g_Speedo_Damage_Label[playerid], 0);

  // g_Speedo_Speed_Separator[playerid] = CreatePlayerTextDraw(playerid, 550.000000, SPEEDO_Y_COORD+334.000000, ":");
  // PlayerTextDrawFont(playerid, g_Speedo_Speed_Separator[playerid], 2);
  // PlayerTextDrawLetterSize(playerid, g_Speedo_Speed_Separator[playerid], 0.150000, 1.000000);
  // PlayerTextDrawTextSize(playerid, g_Speedo_Speed_Separator[playerid], 773.000000, 20.500000);
  // PlayerTextDrawSetOutline(playerid, g_Speedo_Speed_Separator[playerid], 0);
  // PlayerTextDrawSetShadow(playerid, g_Speedo_Speed_Separator[playerid], 0);
  // PlayerTextDrawAlignment(playerid, g_Speedo_Speed_Separator[playerid], 1);
  // PlayerTextDrawColor(playerid, g_Speedo_Speed_Separator[playerid], 11150847);
  // PlayerTextDrawBackgroundColor(playerid, g_Speedo_Speed_Separator[playerid], 255);
  // PlayerTextDrawBoxColor(playerid, g_Speedo_Speed_Separator[playerid], 50);
  // PlayerTextDrawUseBox(playerid, g_Speedo_Speed_Separator[playerid], 0);
  // PlayerTextDrawSetProportional(playerid, g_Speedo_Speed_Separator[playerid], 1);
  // PlayerTextDrawSetSelectable(playerid, g_Speedo_Speed_Separator[playerid], 0);

  // g_Speedo_Transmission_Separator[playerid] = CreatePlayerTextDraw(playerid, 550.000000, SPEEDO_Y_COORD+344.000000, ":");
  // PlayerTextDrawFont(playerid, g_Speedo_Transmission_Separator[playerid], 2);
  // PlayerTextDrawLetterSize(playerid, g_Speedo_Transmission_Separator[playerid], 0.150000, 1.000000);
  // PlayerTextDrawTextSize(playerid, g_Speedo_Transmission_Separator[playerid], 773.000000, 20.500000);
  // PlayerTextDrawSetOutline(playerid, g_Speedo_Transmission_Separator[playerid], 0);
  // PlayerTextDrawSetShadow(playerid, g_Speedo_Transmission_Separator[playerid], 0);
  // PlayerTextDrawAlignment(playerid, g_Speedo_Transmission_Separator[playerid], 1);
  // PlayerTextDrawColor(playerid, g_Speedo_Transmission_Separator[playerid], 11150847);
  // PlayerTextDrawBackgroundColor(playerid, g_Speedo_Transmission_Separator[playerid], 255);
  // PlayerTextDrawBoxColor(playerid, g_Speedo_Transmission_Separator[playerid], 50);
  // PlayerTextDrawUseBox(playerid, g_Speedo_Transmission_Separator[playerid], 0);
  // PlayerTextDrawSetProportional(playerid, g_Speedo_Transmission_Separator[playerid], 1);
  // PlayerTextDrawSetSelectable(playerid, g_Speedo_Transmission_Separator[playerid], 0);

  // g_Speedo_Damage_Separator[playerid] = CreatePlayerTextDraw(playerid, 550.000000, SPEEDO_Y_COORD+354.000000, ":");
  // PlayerTextDrawFont(playerid, g_Speedo_Damage_Separator[playerid], 2);
  // PlayerTextDrawLetterSize(playerid, g_Speedo_Damage_Separator[playerid], 0.150000, 1.000000);
  // PlayerTextDrawTextSize(playerid, g_Speedo_Damage_Separator[playerid], 773.000000, 20.500000);
  // PlayerTextDrawSetOutline(playerid, g_Speedo_Damage_Separator[playerid], 0);
  // PlayerTextDrawSetShadow(playerid, g_Speedo_Damage_Separator[playerid], 0);
  // PlayerTextDrawAlignment(playerid, g_Speedo_Damage_Separator[playerid], 1);
  // PlayerTextDrawColor(playerid, g_Speedo_Damage_Separator[playerid], 11150847);
  // PlayerTextDrawBackgroundColor(playerid, g_Speedo_Damage_Separator[playerid], 255);
  // PlayerTextDrawBoxColor(playerid, g_Speedo_Damage_Separator[playerid], 50);
  // PlayerTextDrawUseBox(playerid, g_Speedo_Damage_Separator[playerid], 0);
  // PlayerTextDrawSetProportional(playerid, g_Speedo_Damage_Separator[playerid], 1);
  // PlayerTextDrawSetSelectable(playerid, g_Speedo_Damage_Separator[playerid], 0);

  // g_Speedo_Speed_Value[playerid] = CreatePlayerTextDraw(playerid, 557.000000, SPEEDO_Y_COORD+334.000000, "999 KMH");
  // PlayerTextDrawFont(playerid, g_Speedo_Speed_Value[playerid], 2);
  // PlayerTextDrawLetterSize(playerid, g_Speedo_Speed_Value[playerid], 0.150000, 1.000000);
  // PlayerTextDrawTextSize(playerid, g_Speedo_Speed_Value[playerid], 773.000000, 20.500000);
  // PlayerTextDrawSetOutline(playerid, g_Speedo_Speed_Value[playerid], 0);
  // PlayerTextDrawSetShadow(playerid, g_Speedo_Speed_Value[playerid], 0);
  // PlayerTextDrawAlignment(playerid, g_Speedo_Speed_Value[playerid], 1);
  // PlayerTextDrawColor(playerid, g_Speedo_Speed_Value[playerid], -1);
  // PlayerTextDrawBackgroundColor(playerid, g_Speedo_Speed_Value[playerid], 255);
  // PlayerTextDrawBoxColor(playerid, g_Speedo_Speed_Value[playerid], 50);
  // PlayerTextDrawUseBox(playerid, g_Speedo_Speed_Value[playerid], 0);
  // PlayerTextDrawSetProportional(playerid, g_Speedo_Speed_Value[playerid], 1);
  // PlayerTextDrawSetSelectable(playerid, g_Speedo_Speed_Value[playerid], 0);

  // g_Speedo_Mileage_Label[playerid] = CreatePlayerTextDraw(playerid, 503.000000, SPEEDO_Y_COORD+365.000000, "MILEAGE");
  // PlayerTextDrawFont(playerid, g_Speedo_Mileage_Label[playerid], 2);
  // PlayerTextDrawLetterSize(playerid, g_Speedo_Mileage_Label[playerid], 0.150000, 1.000000);
  // PlayerTextDrawTextSize(playerid, g_Speedo_Mileage_Label[playerid], 773.000000, 20.500000);
  // PlayerTextDrawSetOutline(playerid, g_Speedo_Mileage_Label[playerid], 0);
  // PlayerTextDrawSetShadow(playerid, g_Speedo_Mileage_Label[playerid], 0);
  // PlayerTextDrawAlignment(playerid, g_Speedo_Mileage_Label[playerid], 1);
  // PlayerTextDrawColor(playerid, g_Speedo_Mileage_Label[playerid], 11150847);
  // PlayerTextDrawBackgroundColor(playerid, g_Speedo_Mileage_Label[playerid], 255);
  // PlayerTextDrawBoxColor(playerid, g_Speedo_Mileage_Label[playerid], 50);
  // PlayerTextDrawUseBox(playerid, g_Speedo_Mileage_Label[playerid], 0);
  // PlayerTextDrawSetProportional(playerid, g_Speedo_Mileage_Label[playerid], 1);
  // PlayerTextDrawSetSelectable(playerid, g_Speedo_Mileage_Label[playerid], 0);

  // g_Speedo_Fuel_Label[playerid] = CreatePlayerTextDraw(playerid, 503.000000, SPEEDO_Y_COORD+375.000000, "FUEL");
  // PlayerTextDrawFont(playerid, g_Speedo_Fuel_Label[playerid], 2);
  // PlayerTextDrawLetterSize(playerid, g_Speedo_Fuel_Label[playerid], 0.150000, 1.000000);
  // PlayerTextDrawTextSize(playerid, g_Speedo_Fuel_Label[playerid], 773.000000, 20.500000);
  // PlayerTextDrawSetOutline(playerid, g_Speedo_Fuel_Label[playerid], 0);
  // PlayerTextDrawSetShadow(playerid, g_Speedo_Fuel_Label[playerid], 0);
  // PlayerTextDrawAlignment(playerid, g_Speedo_Fuel_Label[playerid], 1);
  // PlayerTextDrawColor(playerid, g_Speedo_Fuel_Label[playerid], 11150847);
  // PlayerTextDrawBackgroundColor(playerid, g_Speedo_Fuel_Label[playerid], 255);
  // PlayerTextDrawBoxColor(playerid, g_Speedo_Fuel_Label[playerid], 50);
  // PlayerTextDrawUseBox(playerid, g_Speedo_Fuel_Label[playerid], 0);
  // PlayerTextDrawSetProportional(playerid, g_Speedo_Fuel_Label[playerid], 1);
  // PlayerTextDrawSetSelectable(playerid, g_Speedo_Fuel_Label[playerid], 0);

  // g_Speedo_Mileage_Separator[playerid] = CreatePlayerTextDraw(playerid, 550.000000, SPEEDO_Y_COORD+364.000000, ":");
  // PlayerTextDrawFont(playerid, g_Speedo_Mileage_Separator[playerid], 2);
  // PlayerTextDrawLetterSize(playerid, g_Speedo_Mileage_Separator[playerid], 0.150000, 1.000000);
  // PlayerTextDrawTextSize(playerid, g_Speedo_Mileage_Separator[playerid], 773.000000, 20.500000);
  // PlayerTextDrawSetOutline(playerid, g_Speedo_Mileage_Separator[playerid], 0);
  // PlayerTextDrawSetShadow(playerid, g_Speedo_Mileage_Separator[playerid], 0);
  // PlayerTextDrawAlignment(playerid, g_Speedo_Mileage_Separator[playerid], 1);
  // PlayerTextDrawColor(playerid, g_Speedo_Mileage_Separator[playerid], 11150847);
  // PlayerTextDrawBackgroundColor(playerid, g_Speedo_Mileage_Separator[playerid], 255);
  // PlayerTextDrawBoxColor(playerid, g_Speedo_Mileage_Separator[playerid], 50);
  // PlayerTextDrawUseBox(playerid, g_Speedo_Mileage_Separator[playerid], 0);
  // PlayerTextDrawSetProportional(playerid, g_Speedo_Mileage_Separator[playerid], 1);
  // PlayerTextDrawSetSelectable(playerid, g_Speedo_Mileage_Separator[playerid], 0);

  // g_Speedo_Transmission_Value[playerid] = CreatePlayerTextDraw(playerid, 557.000000, SPEEDO_Y_COORD+344.000000, "~r~R ~b~N ~g~D");
  // PlayerTextDrawFont(playerid, g_Speedo_Transmission_Value[playerid], 2);
  // PlayerTextDrawLetterSize(playerid, g_Speedo_Transmission_Value[playerid], 0.150000, 1.000000);
  // PlayerTextDrawTextSize(playerid, g_Speedo_Transmission_Value[playerid], 773.000000, 20.500000);
  // PlayerTextDrawSetOutline(playerid, g_Speedo_Transmission_Value[playerid], 1);
  // PlayerTextDrawSetShadow(playerid, g_Speedo_Transmission_Value[playerid], 0);
  // PlayerTextDrawAlignment(playerid, g_Speedo_Transmission_Value[playerid], 1);
  // PlayerTextDrawColor(playerid, g_Speedo_Transmission_Value[playerid], 852308735);
  // PlayerTextDrawBackgroundColor(playerid, g_Speedo_Transmission_Value[playerid], 255);
  // PlayerTextDrawBoxColor(playerid, g_Speedo_Transmission_Value[playerid], 50);
  // PlayerTextDrawUseBox(playerid, g_Speedo_Transmission_Value[playerid], 0);
  // PlayerTextDrawSetProportional(playerid, g_Speedo_Transmission_Value[playerid], 1);
  // PlayerTextDrawSetSelectable(playerid, g_Speedo_Transmission_Value[playerid], 0);

  // g_Speedo_Damage_Value[playerid] = CreatePlayerTextDraw(playerid, 557.000000, SPEEDO_Y_COORD+354.000000, "9999 / 9999");
  // PlayerTextDrawFont(playerid, g_Speedo_Damage_Value[playerid], 2);
  // PlayerTextDrawLetterSize(playerid, g_Speedo_Damage_Value[playerid], 0.150000, 1.000000);
  // PlayerTextDrawTextSize(playerid, g_Speedo_Damage_Value[playerid], 773.000000, 20.500000);
  // PlayerTextDrawSetOutline(playerid, g_Speedo_Damage_Value[playerid], 0);
  // PlayerTextDrawSetShadow(playerid, g_Speedo_Damage_Value[playerid], 0);
  // PlayerTextDrawAlignment(playerid, g_Speedo_Damage_Value[playerid], 1);
  // PlayerTextDrawColor(playerid, g_Speedo_Damage_Value[playerid], -1);
  // PlayerTextDrawBackgroundColor(playerid, g_Speedo_Damage_Value[playerid], 255);
  // PlayerTextDrawBoxColor(playerid, g_Speedo_Damage_Value[playerid], 50);
  // PlayerTextDrawUseBox(playerid, g_Speedo_Damage_Value[playerid], 0);
  // PlayerTextDrawSetProportional(playerid, g_Speedo_Damage_Value[playerid], 1);
  // PlayerTextDrawSetSelectable(playerid, g_Speedo_Damage_Value[playerid], 0);

  // g_Speedo_Mileage_Value[playerid] = CreatePlayerTextDraw(playerid, 557.000000, SPEEDO_Y_COORD+364.000000, "99.999 / 99.999");
  // PlayerTextDrawFont(playerid, g_Speedo_Mileage_Value[playerid], 2);
  // PlayerTextDrawLetterSize(playerid, g_Speedo_Mileage_Value[playerid], 0.150000, 1.000000);
  // PlayerTextDrawTextSize(playerid, g_Speedo_Mileage_Value[playerid], 773.000000, 20.500000);
  // PlayerTextDrawSetOutline(playerid, g_Speedo_Mileage_Value[playerid], 0);
  // PlayerTextDrawSetShadow(playerid, g_Speedo_Mileage_Value[playerid], 0);
  // PlayerTextDrawAlignment(playerid, g_Speedo_Mileage_Value[playerid], 1);
  // PlayerTextDrawColor(playerid, g_Speedo_Mileage_Value[playerid], -1);
  // PlayerTextDrawBackgroundColor(playerid, g_Speedo_Mileage_Value[playerid], 255);
  // PlayerTextDrawBoxColor(playerid, g_Speedo_Mileage_Value[playerid], 50);
  // PlayerTextDrawUseBox(playerid, g_Speedo_Mileage_Value[playerid], 0);
  // PlayerTextDrawSetProportional(playerid, g_Speedo_Mileage_Value[playerid], 1);
  // PlayerTextDrawSetSelectable(playerid, g_Speedo_Mileage_Value[playerid], 0);

  // g_Speedo_Fuel_Bar[playerid] = CreatePlayerProgressBar(playerid, 504.000000, SPEEDO_Y_COORD+388.000000, 136.500000, 5.500000, 11150847, 100.000000, 0);
  // SetPlayerProgressBarValue(playerid, g_Speedo_Fuel_Bar[playerid], 50.000000);
  // return 1;
}

Speedometer_Destroy(playerid)
{
	PlayerTextDrawDestroy(playerid, SpeedoRing_1[playerid]);
	PlayerTextDrawDestroy(playerid, SpeedoCircle_1[playerid]);
	PlayerTextDrawDestroy(playerid, SpeedoRing_2[playerid]);
	PlayerTextDrawDestroy(playerid, SpeedoCircle_2[playerid]);
	PlayerTextDrawDestroy(playerid, SpeedoRing_3[playerid]);
	PlayerTextDrawDestroy(playerid, SpeedoCircle_3[playerid]);
	PlayerTextDrawDestroy(playerid, Speedo_KMH[playerid]);
	PlayerTextDrawDestroy(playerid, Speedo_KMH_Amount[playerid]);
	PlayerTextDrawDestroy(playerid, Speedo_Fuel[playerid]);
	PlayerTextDrawDestroy(playerid, Speedo_Fuel_Amount[playerid]);
	PlayerTextDrawDestroy(playerid, Speedo_Health_Amount[playerid]);
	PlayerTextDrawDestroy(playerid, Speedo_Health[playerid]);
  // PlayerTextDrawDestroy(playerid, g_Speedo_Main_Box[playerid]);
  // PlayerTextDrawDestroy(playerid, g_Speedo_Vehicle_Name[playerid]);
  // PlayerTextDrawDestroy(playerid, g_Speedo_Speed_Label[playerid]);
  // PlayerTextDrawDestroy(playerid, g_Speedo_Model_Preview[playerid]);
  // PlayerTextDrawDestroy(playerid, g_Speedo_Transmission_Label[playerid]);
  // PlayerTextDrawDestroy(playerid, g_Speedo_Damage_Label[playerid]);
  // PlayerTextDrawDestroy(playerid, g_Speedo_Speed_Separator[playerid]);
  // PlayerTextDrawDestroy(playerid, g_Speedo_Transmission_Separator[playerid]);
  // PlayerTextDrawDestroy(playerid, g_Speedo_Damage_Separator[playerid]);
  // PlayerTextDrawDestroy(playerid, g_Speedo_Speed_Value[playerid]);
  // PlayerTextDrawDestroy(playerid, g_Speedo_Mileage_Label[playerid]);
  // PlayerTextDrawDestroy(playerid, g_Speedo_Fuel_Label[playerid]);
  // PlayerTextDrawDestroy(playerid, g_Speedo_Mileage_Separator[playerid]);
  // PlayerTextDrawDestroy(playerid, g_Speedo_Transmission_Value[playerid]);
  // PlayerTextDrawDestroy(playerid, g_Speedo_Damage_Value[playerid]);
  // PlayerTextDrawDestroy(playerid, g_Speedo_Mileage_Value[playerid]);
  // DestroyPlayerProgressBar(playerid, g_Speedo_Fuel_Bar[playerid]);
}

Speedometer_Hide(playerid)
{
  // PlayerTextDrawHide(playerid, g_Speedo_Main_Box[playerid]);
  // PlayerTextDrawHide(playerid, g_Speedo_Vehicle_Name[playerid]);
  // PlayerTextDrawHide(playerid, g_Speedo_Speed_Label[playerid]);
  // PlayerTextDrawHide(playerid, g_Speedo_Model_Preview[playerid]);
  // PlayerTextDrawHide(playerid, g_Speedo_Transmission_Label[playerid]);
  // PlayerTextDrawHide(playerid, g_Speedo_Damage_Label[playerid]);
  // PlayerTextDrawHide(playerid, g_Speedo_Speed_Separator[playerid]);
  // PlayerTextDrawHide(playerid, g_Speedo_Transmission_Separator[playerid]);
  // PlayerTextDrawHide(playerid, g_Speedo_Damage_Separator[playerid]);
  // PlayerTextDrawHide(playerid, g_Speedo_Speed_Value[playerid]);
  // PlayerTextDrawHide(playerid, g_Speedo_Mileage_Label[playerid]);
  // PlayerTextDrawHide(playerid, g_Speedo_Fuel_Label[playerid]);
  // PlayerTextDrawHide(playerid, g_Speedo_Mileage_Separator[playerid]);
  // PlayerTextDrawHide(playerid, g_Speedo_Transmission_Value[playerid]);
  // PlayerTextDrawHide(playerid, g_Speedo_Damage_Value[playerid]);
  // PlayerTextDrawHide(playerid, g_Speedo_Mileage_Value[playerid]);
  // HidePlayerProgressBar(playerid, g_Speedo_Fuel_Bar[playerid]);
		PlayerTextDrawHide(playerid, SpeedoRing_1[playerid]);
		PlayerTextDrawHide(playerid, SpeedoCircle_1[playerid]);
		PlayerTextDrawHide(playerid, SpeedoRing_2[playerid]);
		PlayerTextDrawHide(playerid, SpeedoCircle_2[playerid]);
		PlayerTextDrawHide(playerid, SpeedoRing_3[playerid]);
		PlayerTextDrawHide(playerid, SpeedoCircle_3[playerid]);
		PlayerTextDrawHide(playerid, Speedo_KMH[playerid]);
		PlayerTextDrawHide(playerid, Speedo_KMH_Amount[playerid]);
		PlayerTextDrawHide(playerid, Speedo_Fuel[playerid]);
		PlayerTextDrawHide(playerid, Speedo_Fuel_Amount[playerid]);
		PlayerTextDrawHide(playerid, Speedo_Health_Amount[playerid]);
		PlayerTextDrawHide(playerid, Speedo_Health[playerid]);
}

// Speedometer_UpdateModel(playerid)
// {
//   new
//     name[32],
//     vehicleid = GetPlayerVehicleID(playerid)
//   ;

//   if (vehicleid == INVALID_VEHICLE_ID)
//   {
//     return 0;
//   }

//   new modelid = GetVehicleModel(vehicleid);

//   if (modelid < 400 || modelid > 611)
//   {
//     return 0;
//   }

//   new color1, color2;
//   GetVehicleColor(vehicleid, color1, color2);

//   // Mendapatkan nama kendaraan dan meng-update nya.
//   strcat(name, GetVehicleNameByVehicle(vehicleid));

//   PlayerTextDrawSetString(playerid, g_Speedo_Vehicle_Name[playerid], name);
//   PlayerTextDrawSetPreviewModel(playerid, g_Speedo_Model_Preview[playerid], modelid);
//   PlayerTextDrawSetPreviewVehCol(playerid, g_Speedo_Model_Preview[playerid], color1, color2);
//   return 1;
// }

SpeedometerNew_Hide(playerid)
{
  PlayerTextDrawHide(playerid, BOX_SPEEDO[playerid]);
  PlayerTextDrawHide(playerid, SPEED_SPEEDO[playerid]);
  PlayerTextDrawHide(playerid, HEALTH_SPEEDO[playerid]);
  PlayerTextDrawHide(playerid, FUEL_SPEEDO[playerid]);
  PlayerTextDrawHide(playerid, SEPARATOR_SPEEDO_1[playerid]);
  PlayerTextDrawHide(playerid, SEPARATOR_SPEEDO_2[playerid]);
  PlayerTextDrawHide(playerid, SEPARATOR_SPEEDO_3[playerid]);
  PlayerTextDrawHide(playerid, SPEEDVALUE_SPEEDO[playerid]);
  PlayerTextDrawHide(playerid, HEALTHVALUE_SPEEDO[playerid]);
  PlayerTextDrawHide(playerid, FUELVALUE_SPEEDO[playerid]);
  return 1;
}

SpeedometerNew_Show(playerid)
{
  PlayerTextDrawShow(playerid, BOX_SPEEDO[playerid]);
  PlayerTextDrawShow(playerid, SPEED_SPEEDO[playerid]);
  PlayerTextDrawShow(playerid, HEALTH_SPEEDO[playerid]);
  PlayerTextDrawShow(playerid, FUEL_SPEEDO[playerid]);
  PlayerTextDrawShow(playerid, SEPARATOR_SPEEDO_1[playerid]);
  PlayerTextDrawShow(playerid, SEPARATOR_SPEEDO_2[playerid]);
  PlayerTextDrawShow(playerid, SEPARATOR_SPEEDO_3[playerid]);
  PlayerTextDrawShow(playerid, SPEEDVALUE_SPEEDO[playerid]);
  PlayerTextDrawShow(playerid, HEALTHVALUE_SPEEDO[playerid]);
  PlayerTextDrawShow(playerid, FUELVALUE_SPEEDO[playerid]);
  return 1;
}
Speedometer_Show(playerid)
{
  PlayerTextDrawShow(playerid, SpeedoRing_1[playerid]);
  PlayerTextDrawShow(playerid, SpeedoCircle_1[playerid]);
  PlayerTextDrawShow(playerid, SpeedoRing_2[playerid]);
  PlayerTextDrawShow(playerid, SpeedoCircle_2[playerid]);
  PlayerTextDrawShow(playerid, SpeedoRing_3[playerid]);
  PlayerTextDrawShow(playerid, SpeedoCircle_3[playerid]);
  PlayerTextDrawShow(playerid, Speedo_KMH[playerid]);
  PlayerTextDrawShow(playerid, Speedo_KMH_Amount[playerid]);
  PlayerTextDrawShow(playerid, Speedo_Fuel[playerid]);
  PlayerTextDrawShow(playerid, Speedo_Fuel_Amount[playerid]);
  PlayerTextDrawShow(playerid, Speedo_Health_Amount[playerid]);
  PlayerTextDrawShow(playerid, Speedo_Health[playerid]);
  // Speedometer_UpdateModel(playerid);

  // PlayerTextDrawShow(playerid, g_Speedo_Main_Box[playerid]);
  // PlayerTextDrawShow(playerid, g_Speedo_Vehicle_Name[playerid]);
  // PlayerTextDrawShow(playerid, g_Speedo_Speed_Label[playerid]);
  // PlayerTextDrawShow(playerid, g_Speedo_Model_Preview[playerid]);
  // PlayerTextDrawShow(playerid, g_Speedo_Transmission_Label[playerid]);
  // PlayerTextDrawShow(playerid, g_Speedo_Damage_Label[playerid]);
  // PlayerTextDrawShow(playerid, g_Speedo_Speed_Separator[playerid]);
  // PlayerTextDrawShow(playerid, g_Speedo_Transmission_Separator[playerid]);
  // PlayerTextDrawShow(playerid, g_Speedo_Damage_Separator[playerid]);
  // PlayerTextDrawShow(playerid, g_Speedo_Speed_Value[playerid]);
  // PlayerTextDrawShow(playerid, g_Speedo_Mileage_Label[playerid]);
  // PlayerTextDrawShow(playerid, g_Speedo_Fuel_Label[playerid]);
  // PlayerTextDrawShow(playerid, g_Speedo_Mileage_Separator[playerid]);
  // PlayerTextDrawShow(playerid, g_Speedo_Transmission_Value[playerid]);
  // PlayerTextDrawShow(playerid, g_Speedo_Damage_Value[playerid]);
  // PlayerTextDrawShow(playerid, g_Speedo_Mileage_Value[playerid]);
  // ShowPlayerProgressBar(playerid, g_Speedo_Fuel_Bar[playerid]);
}

// Speedometer_GetTransmission(vehicleid, dest[], len = sizeof(dest))
// {
//   if (IsVehicleDrivingBackwards(vehicleid))
//   {
//     format(dest, len, "~r~"TEXTDRAW_BRIGHT2"R ~b~N ~g~D");
//   }
//   else if (GetVehicleSpeed(vehicleid) < 1.0)
//   {
//     format(dest, len, "~r~R ~b~"TEXTDRAW_BRIGHT2"N ~g~D");
//   }
//   else
//   {
//     format(dest, len, "~r~R ~b~N ~g~"TEXTDRAW_BRIGHT2"D");
//   }

//   return 1;
// }

Speedometer_Update(playerid)
{
  // Mendapatkan ID kendaraan player.
  new vehicleid = GetPlayerVehicleID(playerid);

  // Abaikan jika kendaraannya tidak valid.
  if (vehicleid == INVALID_VEHICLE_ID)
  {
    return 1;
  }

  // Abaikan jika kendaraannya tidak memiliki speedometer.
  if (!IsSpeedoVehicle(vehicleid))
  {
    return 1;
  }

  new
    speed = floatround(GetVehicleSpeed(vehicleid)),
    // transmission[40],
    // Float:max_health = 1000.0,
    Float:health,
    Float:fuel = Vehicle_GetFuel(vehicleid)
  ;

  // Mendapatkan health kendaraan.
  GetVehicleHealth(vehicleid, health);

  // Mendapatkan state transmisi kendaraan,
  // Speedometer_GetTransmission(vehicleid, transmission);

  // Memeriksa upgrade engine kendaraan.
  // Fungsinya untuk mencocokkan health kendaraan dengan engine upgrade-nya.
  if (VehicleData[Vehicle_ReturnID(vehicleid)][vehEngineUpgrade] == 1)
  {
    if (health > 2000.0)
    {
      health = 2000.0;
    }
    // max_health = 2000.0;
  }
  else
  {
    if (health > 1000.0)
    {
      health = 1000.0;
    }
  }
  if(PlayerData[playerid][pHudStyle] == 0)
  {
    PlayerTextDrawSetString(playerid, Speedo_KMH_Amount[playerid], sprintf("%d", speed));
    // PlayerTextDrawSetString(playerid, g_Speedo_Transmission_Value[playerid], transmission);
    PlayerTextDrawSetString(playerid, Speedo_Health_Amount[playerid], sprintf("%.0f", health));
    PlayerTextDrawSetString(playerid, Speedo_Fuel_Amount[playerid], sprintf("%.0fL", fuel));
  }
  else
  {
    PlayerTextDrawSetString(playerid, SPEEDVALUE_SPEEDO[playerid], sprintf("%d Km/h", speed));
    // PlayerTextDrawSetString(playerid, g_Speedo_Transmission_Value[playerid], transmission);
    PlayerTextDrawSetString(playerid, HEALTHVALUE_SPEEDO[playerid], sprintf("%.0f", health));
    PlayerTextDrawSetString(playerid, FUELVALUE_SPEEDO[playerid], sprintf("%.0fL", fuel));
  }

  // if (IsABicycle(vehicleid))
  // {
  //   // PlayerTextDrawSetString(playerid, g_Speedo_Mileage_Value[playerid], "- / -");
  //   PlayerTextDrawSetString(playerid, g_Speedo_Mileage_Value[playerid], "- / -");
  // }
  // else
  // {
  //   new
  //     accumulated_mileage = Vehicle_GetAccumulatedMileage(vehicleid),
  //     current_mileage = Vehicle_GetCurrentMileage(vehicleid)
  //     // durability_mileage = Vehicle_GetDurabilityMileage(vehicleid)
  //   ;

  //   PlayerTextDrawSetString(
  //     playerid,
  //     g_Speedo_Mileage_Value[playerid],
  //     // sprintf("%s / %s", FormatNumber(accumulated_mileage + current_mileage, "", "."), FormatNumber(accumulated_mileage + durability_mileage, "", "."))
  //     sprintf("%s", FormatNumber(accumulated_mileage + current_mileage, "", "."))
  //   );
  // }
  // SetPlayerProgressBarValue(playerid, g_Speedo_Fuel_Bar[playerid], fuel);
  return 1;
}

/**
 *
 * Callbacks
 *
 */

ptask Player_SpeedoUpdate[1000](playerid)
{
    if((!PlayerData[playerid][pLogged]) || !PlayerData[playerid][pCreated] || PlayerData[playerid][pKicked])
        return 0;
    
    // Abaikan jika state player bukan pengemudi.
    // Abaikan jika opsi speedomter dimatikan.
    if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER && !PlayerData[playerid][pDisableSpeedo])
    {
        Speedometer_Update(playerid);
    }
    return 1;
}

SpeedRadar_Init(playerid)
{
    RadarBOX[playerid] = CreatePlayerTextDraw(playerid, 557.000000, 121.000000, "_");
    PlayerTextDrawFont(playerid, RadarBOX[playerid], 1);
    PlayerTextDrawLetterSize(playerid, RadarBOX[playerid], 0.600000, 5.899997);
    PlayerTextDrawTextSize(playerid, RadarBOX[playerid], 298.500000, 106.000000);
    PlayerTextDrawSetOutline(playerid, RadarBOX[playerid], 1);
    PlayerTextDrawSetShadow(playerid, RadarBOX[playerid], 0);
    PlayerTextDrawAlignment(playerid, RadarBOX[playerid], 2);
    PlayerTextDrawColor(playerid, RadarBOX[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, RadarBOX[playerid], 255);
    PlayerTextDrawBoxColor(playerid, RadarBOX[playerid], 100);
    PlayerTextDrawUseBox(playerid, RadarBOX[playerid], 1);
    PlayerTextDrawSetProportional(playerid, RadarBOX[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, RadarBOX[playerid], 0);

    SpeedRadarTD[playerid] = CreatePlayerTextDraw(playerid, 533.000000, 119.000000, "Speed Radar");
    PlayerTextDrawFont(playerid, SpeedRadarTD[playerid], 1);
    PlayerTextDrawLetterSize(playerid, SpeedRadarTD[playerid], 0.212500, 1.000000);
    PlayerTextDrawTextSize(playerid, SpeedRadarTD[playerid], 620.000000, 15.500000);
    PlayerTextDrawSetOutline(playerid, SpeedRadarTD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, SpeedRadarTD[playerid], 0);
    PlayerTextDrawAlignment(playerid, SpeedRadarTD[playerid], 1);
    PlayerTextDrawColor(playerid, SpeedRadarTD[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, SpeedRadarTD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, SpeedRadarTD[playerid], 50);
    PlayerTextDrawUseBox(playerid, SpeedRadarTD[playerid], 0);
    PlayerTextDrawSetProportional(playerid, SpeedRadarTD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, SpeedRadarTD[playerid], 0);

    SpeedTextTD[playerid] = CreatePlayerTextDraw(playerid, 509.000000, 146.000000, "Speed");
    PlayerTextDrawFont(playerid, SpeedTextTD[playerid], 1);
    PlayerTextDrawLetterSize(playerid, SpeedTextTD[playerid], 0.225000, 1.100000);
    PlayerTextDrawTextSize(playerid, SpeedTextTD[playerid], 620.000000, 15.500000);
    PlayerTextDrawSetOutline(playerid, SpeedTextTD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, SpeedTextTD[playerid], 0);
    PlayerTextDrawAlignment(playerid, SpeedTextTD[playerid], 1);
    PlayerTextDrawColor(playerid, SpeedTextTD[playerid], 16777215);
    PlayerTextDrawBackgroundColor(playerid, SpeedTextTD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, SpeedTextTD[playerid], 50);
    PlayerTextDrawUseBox(playerid, SpeedTextTD[playerid], 0);
    PlayerTextDrawSetProportional(playerid, SpeedTextTD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, SpeedTextTD[playerid], 0);

    ModelTextTD[playerid] = CreatePlayerTextDraw(playerid, 509.000000, 132.000000, "Model");
    PlayerTextDrawFont(playerid, ModelTextTD[playerid], 1);
    PlayerTextDrawLetterSize(playerid, ModelTextTD[playerid], 0.225000, 1.100000);
    PlayerTextDrawTextSize(playerid, ModelTextTD[playerid], 620.000000, 15.500000);
    PlayerTextDrawSetOutline(playerid, ModelTextTD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, ModelTextTD[playerid], 0);
    PlayerTextDrawAlignment(playerid, ModelTextTD[playerid], 1);
    PlayerTextDrawColor(playerid, ModelTextTD[playerid], 16777215);
    PlayerTextDrawBackgroundColor(playerid, ModelTextTD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, ModelTextTD[playerid], 50);
    PlayerTextDrawUseBox(playerid, ModelTextTD[playerid], 0);
    PlayerTextDrawSetProportional(playerid, ModelTextTD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, ModelTextTD[playerid], 0);

    PlateTextTD[playerid] = CreatePlayerTextDraw(playerid, 509.500000, 161.000000, "Plate");
    PlayerTextDrawFont(playerid, PlateTextTD[playerid], 1);
    PlayerTextDrawLetterSize(playerid, PlateTextTD[playerid], 0.225000, 1.100000);
    PlayerTextDrawTextSize(playerid, PlateTextTD[playerid], 620.000000, 15.500000);
    PlayerTextDrawSetOutline(playerid, PlateTextTD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, PlateTextTD[playerid], 0);
    PlayerTextDrawAlignment(playerid, PlateTextTD[playerid], 1);
    PlayerTextDrawColor(playerid, PlateTextTD[playerid], 16777215);
    PlayerTextDrawBackgroundColor(playerid, PlateTextTD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, PlateTextTD[playerid], 50);
    PlayerTextDrawUseBox(playerid, PlateTextTD[playerid], 0);
    PlayerTextDrawSetProportional(playerid, PlateTextTD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, PlateTextTD[playerid], 0);

    SeparatorTD[playerid] = CreatePlayerTextDraw(playerid, 538.000000, 127.000000, ":~n~:~n~:");
    PlayerTextDrawFont(playerid, SeparatorTD[playerid], 1);
    PlayerTextDrawLetterSize(playerid, SeparatorTD[playerid], 0.316666, 1.650002);
    PlayerTextDrawTextSize(playerid, SeparatorTD[playerid], 620.000000, 15.500000);
    PlayerTextDrawSetOutline(playerid, SeparatorTD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, SeparatorTD[playerid], 0);
    PlayerTextDrawAlignment(playerid, SeparatorTD[playerid], 1);
    PlayerTextDrawColor(playerid, SeparatorTD[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, SeparatorTD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, SeparatorTD[playerid], 50);
    PlayerTextDrawUseBox(playerid, SeparatorTD[playerid], 0);
    PlayerTextDrawSetProportional(playerid, SeparatorTD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, SeparatorTD[playerid], 0);

    ModelTD[playerid] = CreatePlayerTextDraw(playerid, 548.000000, 132.000000, "N/A");
    PlayerTextDrawFont(playerid, ModelTD[playerid], 1);
    PlayerTextDrawLetterSize(playerid, ModelTD[playerid], 0.204165, 0.949998);
    PlayerTextDrawTextSize(playerid, ModelTD[playerid], 614.500000, 17.000000);
    PlayerTextDrawSetOutline(playerid, ModelTD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, ModelTD[playerid], 0);
    PlayerTextDrawAlignment(playerid, ModelTD[playerid], 1);
    PlayerTextDrawColor(playerid, ModelTD[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, ModelTD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, ModelTD[playerid], 50);
    PlayerTextDrawUseBox(playerid, ModelTD[playerid], 0);
    PlayerTextDrawSetProportional(playerid, ModelTD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, ModelTD[playerid], 0);

    SpeedTD[playerid] = CreatePlayerTextDraw(playerid, 548.000000, 147.000000, "N/A");
    PlayerTextDrawFont(playerid, SpeedTD[playerid], 1);
    PlayerTextDrawLetterSize(playerid, SpeedTD[playerid], 0.204165, 0.949998);
    PlayerTextDrawTextSize(playerid, SpeedTD[playerid], 614.500000, 17.000000);
    PlayerTextDrawSetOutline(playerid, SpeedTD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, SpeedTD[playerid], 0);
    PlayerTextDrawAlignment(playerid, SpeedTD[playerid], 1);
    PlayerTextDrawColor(playerid, SpeedTD[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, SpeedTD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, SpeedTD[playerid], 50);
    PlayerTextDrawUseBox(playerid, SpeedTD[playerid], 0);
    PlayerTextDrawSetProportional(playerid, SpeedTD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, SpeedTD[playerid], 0);

    PlateTD[playerid] = CreatePlayerTextDraw(playerid, 548.000000, 162.000000, "N/A");
    PlayerTextDrawFont(playerid, PlateTD[playerid], 1);
    PlayerTextDrawLetterSize(playerid, PlateTD[playerid], 0.204165, 0.949998);
    PlayerTextDrawTextSize(playerid, PlateTD[playerid], 614.500000, 17.000000);
    PlayerTextDrawSetOutline(playerid, PlateTD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, PlateTD[playerid], 0);
    PlayerTextDrawAlignment(playerid, PlateTD[playerid], 1);
    PlayerTextDrawColor(playerid, PlateTD[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, PlateTD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, PlateTD[playerid], 50);
    PlayerTextDrawUseBox(playerid, PlateTD[playerid], 0);
    PlayerTextDrawSetProportional(playerid, PlateTD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, PlateTD[playerid], 0);
    return 1;
}


EnableSpeedRadar(playerid)
{
    PlayerTextDrawShow(playerid, RadarBOX[playerid]);
    PlayerTextDrawShow(playerid, SpeedRadarTD[playerid]);
    PlayerTextDrawShow(playerid, SpeedTextTD[playerid]);
    PlayerTextDrawShow(playerid, ModelTextTD[playerid]);
    PlayerTextDrawShow(playerid, PlateTextTD[playerid]);
    PlayerTextDrawShow(playerid, SeparatorTD[playerid]);
    PlayerTextDrawShow(playerid, ModelTD[playerid]);
    PlayerTextDrawShow(playerid, SpeedTD[playerid]);
    PlayerTextDrawShow(playerid, PlateTD[playerid]);
    Player_RadarToggle[playerid] = true;
    return 1;
}

DisableSpeedRadar(playerid)
{
    PlayerTextDrawHide(playerid, RadarBOX[playerid]);
    PlayerTextDrawHide(playerid, SpeedRadarTD[playerid]);
    PlayerTextDrawHide(playerid, SpeedTextTD[playerid]);
    PlayerTextDrawHide(playerid, ModelTextTD[playerid]);
    PlayerTextDrawHide(playerid, PlateTextTD[playerid]);
    PlayerTextDrawHide(playerid, SeparatorTD[playerid]);
    PlayerTextDrawHide(playerid, ModelTD[playerid]);
    PlayerTextDrawHide(playerid, SpeedTD[playerid]);
    PlayerTextDrawHide(playerid, PlateTD[playerid]);
    Player_RadarToggle[playerid] = false;
    return 1;
}