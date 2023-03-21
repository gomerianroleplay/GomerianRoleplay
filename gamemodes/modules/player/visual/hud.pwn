#include <YSI_Coding\y_hooks>

Safezone_Init(playerid)
{
	SafeZone[playerid] = CreatePlayerTextDraw(playerid, 423.000000, 5.000000, "Safezone Area");
	PlayerTextDrawFont(playerid, SafeZone[playerid], 3);
	PlayerTextDrawLetterSize(playerid, SafeZone[playerid], 0.275000, 1.349999);
	PlayerTextDrawTextSize(playerid, SafeZone[playerid], 565.500000, 17.000000);
	PlayerTextDrawSetOutline(playerid, SafeZone[playerid], 1);
	PlayerTextDrawSetShadow(playerid, SafeZone[playerid], 0);
	PlayerTextDrawAlignment(playerid, SafeZone[playerid], 1);
	PlayerTextDrawColor(playerid, SafeZone[playerid], 9109759);
	PlayerTextDrawBackgroundColor(playerid, SafeZone[playerid], 255);
	PlayerTextDrawBoxColor(playerid, SafeZone[playerid], 50);
	PlayerTextDrawUseBox(playerid, SafeZone[playerid], 0);
	PlayerTextDrawSetProportional(playerid, SafeZone[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, SafeZone[playerid], 0);
	return 1;
}
HUD_Init(playerid)
{
	PlayerTextdraws[playerid][textdraw_playerGUI][0] = CreatePlayerTextDraw(playerid, 592.000000, 400.000000, "ld_beat:cring");
	PlayerTextDrawFont(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][0], 4);
	PlayerTextDrawLetterSize(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][0], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][0], 52.500000, 53.500000);
	PlayerTextDrawSetOutline(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][0], 1);
	PlayerTextDrawSetShadow(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][0], 0);
	PlayerTextDrawAlignment(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][0], 1);
	PlayerTextDrawColor(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][0], 16777215);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][0], 255);
	PlayerTextDrawBoxColor(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][0], 50);
	PlayerTextDrawUseBox(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][0], 1);
	PlayerTextDrawSetProportional(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][0], 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][0], 0);

	PlayerTextdraws[playerid][textdraw_playerGUI][1] = CreatePlayerTextDraw(playerid, 596.000000, 404.000000, "ld_beat:chit");
	PlayerTextDrawFont(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][1], 4);
	PlayerTextDrawLetterSize(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][1], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][1], 45.000000, 45.500000);
	PlayerTextDrawSetOutline(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][1], 1);
	PlayerTextDrawSetShadow(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][1], 0);
	PlayerTextDrawAlignment(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][1], 1);
	PlayerTextDrawColor(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][1], 1111638778);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][1], 255);
	PlayerTextDrawBoxColor(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][1], 50);
	PlayerTextDrawUseBox(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][1], 1);
	PlayerTextDrawSetProportional(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][1], 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][1], 0);

	PlayerTextdraws[playerid][textdraw_playerGUI][2] = CreatePlayerTextDraw(playerid, 550.000000, 400.000000, "ld_beat:cring");
	PlayerTextDrawFont(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][2], 4);
	PlayerTextDrawLetterSize(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][2], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][2], 52.500000, 53.500000);
	PlayerTextDrawSetOutline(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][2], 1);
	PlayerTextDrawSetShadow(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][2], 0);
	PlayerTextDrawAlignment(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][2], 1);
	PlayerTextDrawColor(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][2], 16777215);
	
	PlayerTextDrawBackgroundColor(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][2], 255);
	PlayerTextDrawBoxColor(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][2], 50);
	PlayerTextDrawUseBox(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][2], 1);
	PlayerTextDrawSetProportional(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][2], 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][2], 0);

	PlayerTextdraws[playerid][textdraw_playerGUI][3] = CreatePlayerTextDraw(playerid, 554.000000, 404.000000, "ld_beat:chit");
	PlayerTextDrawFont(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][3], 4);
	PlayerTextDrawLetterSize(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][3], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][3], 45.000000, 45.500000);
	PlayerTextDrawSetOutline(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][3], 1);
	PlayerTextDrawSetShadow(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][3], 0);
	PlayerTextDrawAlignment(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][3], 1);
	PlayerTextDrawColor(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][3], 1111638778);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][3], 255);
	PlayerTextDrawBoxColor(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][3], 50);
	PlayerTextDrawUseBox(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][3], 1);
	PlayerTextDrawSetProportional(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][3], 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][3], 0);

	PlayerTextdraws[playerid][textdraw_playerGUI][4] = CreatePlayerTextDraw(playerid, 570.000000, 417.000000, "HUD:radar_datefood");
	PlayerTextDrawFont(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][4], 4);
	PlayerTextDrawLetterSize(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][4], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][4], 12.000000, 10.500000);
	PlayerTextDrawSetOutline(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][4], 1);
	PlayerTextDrawSetShadow(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][4], 0);
	PlayerTextDrawAlignment(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][4], 1);
	PlayerTextDrawColor(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][4], -1);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][4], 255);
	PlayerTextDrawBoxColor(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][4], 50);
	PlayerTextDrawUseBox(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][4], 1);
	PlayerTextDrawSetProportional(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][4], 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][4], 0);

	PlayerTextdraws[playerid][textdraw_playerGUI][5] = CreatePlayerTextDraw(playerid, 612.000000, 417.000000, "HUD:radar_diner");
	PlayerTextDrawFont(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][5], 4);
	PlayerTextDrawLetterSize(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][5], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][5], 12.000000, 10.500000);
	PlayerTextDrawSetOutline(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][5], 1);
	PlayerTextDrawSetShadow(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][5], 0);
	PlayerTextDrawAlignment(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][5], 1);
	PlayerTextDrawColor(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][5], -1);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][5], 255);
	PlayerTextDrawBoxColor(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][5], 50);
	PlayerTextDrawUseBox(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][5], 1);
	PlayerTextDrawSetProportional(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][5], 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][5], 0);

	//Hunger
	PlayerTextdraws[playerid][textdraw_playerGUI][6] = CreatePlayerTextDraw(playerid, 577.000000, 429.000000, "99.9%");
	PlayerTextDrawFont(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][6], 1);
	PlayerTextDrawLetterSize(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][6], 0.175000, 0.700000);
	PlayerTextDrawTextSize(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][6], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][6], 1);
	PlayerTextDrawSetShadow(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][6], 0);
	PlayerTextDrawAlignment(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][6], 2);
	PlayerTextDrawColor(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][6], -1);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][6], 255);
	PlayerTextDrawBoxColor(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][6], 50);
	PlayerTextDrawUseBox(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][6], 0);
	PlayerTextDrawSetProportional(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][6], 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][6], 0);

	//Energy
	PlayerTextdraws[playerid][textdraw_playerGUI][7] = CreatePlayerTextDraw(playerid, 619.000000, 429.000000, "99.9%");
	PlayerTextDrawFont(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][7], 1);
	PlayerTextDrawLetterSize(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][7], 0.175000, 0.700000);
	PlayerTextDrawTextSize(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][7], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][7], 1);
	PlayerTextDrawSetShadow(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][7], 0);
	PlayerTextDrawAlignment(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][7], 2);
	PlayerTextDrawColor(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][7], -1);
	PlayerTextDrawBackgroundColor(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][7], 255);
	PlayerTextDrawBoxColor(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][7], 50);
	PlayerTextDrawUseBox(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][7], 0);
	PlayerTextDrawSetProportional(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][7], 1);
	PlayerTextDrawSetSelectable(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][7], 0);
	return 1;
}

HUD1_Init(playerid)
{
	BOX_HUD1[playerid] = CreatePlayerTextDraw(playerid, 571.000000, 103.000000, "_");
	PlayerTextDrawFont(playerid, BOX_HUD1[playerid], 1);
	PlayerTextDrawLetterSize(playerid, BOX_HUD1[playerid], 0.600000, 1.599993);
	PlayerTextDrawTextSize(playerid, BOX_HUD1[playerid], 298.500000, 73.500000);
	PlayerTextDrawSetOutline(playerid, BOX_HUD1[playerid], 1);
	PlayerTextDrawSetShadow(playerid, BOX_HUD1[playerid], 0);
	PlayerTextDrawAlignment(playerid, BOX_HUD1[playerid], 2);
	PlayerTextDrawColor(playerid, BOX_HUD1[playerid], -1);
	PlayerTextDrawBackgroundColor(playerid, BOX_HUD1[playerid], 255);
	PlayerTextDrawBoxColor(playerid, BOX_HUD1[playerid], 135);
	PlayerTextDrawUseBox(playerid, BOX_HUD1[playerid], 1);
	PlayerTextDrawSetProportional(playerid, BOX_HUD1[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, BOX_HUD1[playerid], 0);

	BURGERICON_HUD1[playerid] = CreatePlayerTextDraw(playerid, 537.000000, 104.000000, "HUD:radar_burgershot");
	PlayerTextDrawFont(playerid, BURGERICON_HUD1[playerid], 4);
	PlayerTextDrawLetterSize(playerid, BURGERICON_HUD1[playerid], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, BURGERICON_HUD1[playerid], 12.000000, 11.500000);
	PlayerTextDrawSetOutline(playerid, BURGERICON_HUD1[playerid], 1);
	PlayerTextDrawSetShadow(playerid, BURGERICON_HUD1[playerid], 0);
	PlayerTextDrawAlignment(playerid, BURGERICON_HUD1[playerid], 1);
	PlayerTextDrawColor(playerid, BURGERICON_HUD1[playerid], -1);
	PlayerTextDrawBackgroundColor(playerid, BURGERICON_HUD1[playerid], 255);
	PlayerTextDrawBoxColor(playerid, BURGERICON_HUD1[playerid], 50);
	PlayerTextDrawUseBox(playerid, BURGERICON_HUD1[playerid], 1);
	PlayerTextDrawSetProportional(playerid, BURGERICON_HUD1[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, BURGERICON_HUD1[playerid], 0);

	BURGERVALUE_HUD1[playerid] = CreatePlayerTextDraw(playerid, 553.000000, 104.000000, "100");
	PlayerTextDrawFont(playerid, BURGERVALUE_HUD1[playerid], 1);
	PlayerTextDrawLetterSize(playerid, BURGERVALUE_HUD1[playerid], 0.208333, 1.150000);
	PlayerTextDrawTextSize(playerid, BURGERVALUE_HUD1[playerid], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, BURGERVALUE_HUD1[playerid], 1);
	PlayerTextDrawSetShadow(playerid, BURGERVALUE_HUD1[playerid], 0);
	PlayerTextDrawAlignment(playerid, BURGERVALUE_HUD1[playerid], 1);
	PlayerTextDrawColor(playerid, BURGERVALUE_HUD1[playerid], -1);
	PlayerTextDrawBackgroundColor(playerid, BURGERVALUE_HUD1[playerid], 255);
	PlayerTextDrawBoxColor(playerid, BURGERVALUE_HUD1[playerid], 50);
	PlayerTextDrawUseBox(playerid, BURGERVALUE_HUD1[playerid], 0);
	PlayerTextDrawSetProportional(playerid, BURGERVALUE_HUD1[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, BURGERVALUE_HUD1[playerid], 0);

	DRINKICON_HUD1[playerid] = CreatePlayerTextDraw(playerid, 573.000000, 104.000000, "HUD:radar_diner");
	PlayerTextDrawFont(playerid, DRINKICON_HUD1[playerid], 4);
	PlayerTextDrawLetterSize(playerid, DRINKICON_HUD1[playerid], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, DRINKICON_HUD1[playerid], 12.000000, 11.500000);
	PlayerTextDrawSetOutline(playerid, DRINKICON_HUD1[playerid], 1);
	PlayerTextDrawSetShadow(playerid, DRINKICON_HUD1[playerid], 0);
	PlayerTextDrawAlignment(playerid, DRINKICON_HUD1[playerid], 1);
	PlayerTextDrawColor(playerid, DRINKICON_HUD1[playerid], -1);
	PlayerTextDrawBackgroundColor(playerid, DRINKICON_HUD1[playerid], 255);
	PlayerTextDrawBoxColor(playerid, DRINKICON_HUD1[playerid], 50);
	PlayerTextDrawUseBox(playerid, DRINKICON_HUD1[playerid], 1);
	PlayerTextDrawSetProportional(playerid, DRINKICON_HUD1[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, DRINKICON_HUD1[playerid], 0);

	DRINKVALUE_HUD1[playerid] = CreatePlayerTextDraw(playerid, 588.000000, 104.000000, "100");
	PlayerTextDrawFont(playerid, DRINKVALUE_HUD1[playerid], 1);
	PlayerTextDrawLetterSize(playerid, DRINKVALUE_HUD1[playerid], 0.208333, 1.150000);
	PlayerTextDrawTextSize(playerid, DRINKVALUE_HUD1[playerid], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, DRINKVALUE_HUD1[playerid], 1);
	PlayerTextDrawSetShadow(playerid, DRINKVALUE_HUD1[playerid], 0);
	PlayerTextDrawAlignment(playerid, DRINKVALUE_HUD1[playerid], 1);
	PlayerTextDrawColor(playerid, DRINKVALUE_HUD1[playerid], -1);
	PlayerTextDrawBackgroundColor(playerid, DRINKVALUE_HUD1[playerid], 255);
	PlayerTextDrawBoxColor(playerid, DRINKVALUE_HUD1[playerid], 50);
	PlayerTextDrawUseBox(playerid, DRINKVALUE_HUD1[playerid], 0);
	PlayerTextDrawSetProportional(playerid, DRINKVALUE_HUD1[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, DRINKVALUE_HUD1[playerid], 0);
	return 1;
}

HUD2_Init(playerid)
{
	BOX_HUD2[playerid] = CreatePlayerTextDraw(playerid, 590.000000, 427.000000, "_");
	PlayerTextDrawFont(playerid, BOX_HUD2[playerid], 1);
	PlayerTextDrawLetterSize(playerid, BOX_HUD2[playerid], 0.600000, 1.899997);
	PlayerTextDrawTextSize(playerid, BOX_HUD2[playerid], 298.500000, 94.500000);
	PlayerTextDrawSetOutline(playerid, BOX_HUD2[playerid], 1);
	PlayerTextDrawSetShadow(playerid, BOX_HUD2[playerid], 0);
	PlayerTextDrawAlignment(playerid, BOX_HUD2[playerid], 2);
	PlayerTextDrawColor(playerid, BOX_HUD2[playerid], -1);
	PlayerTextDrawBackgroundColor(playerid, BOX_HUD2[playerid], 255);
	PlayerTextDrawBoxColor(playerid, BOX_HUD2[playerid], 135);
	PlayerTextDrawUseBox(playerid, BOX_HUD2[playerid], 1);
	PlayerTextDrawSetProportional(playerid, BOX_HUD2[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, BOX_HUD2[playerid], 0);

	BURGERICON_HUD2[playerid] = CreatePlayerTextDraw(playerid, 548.000000, 430.000000, "HUD:radar_burgershot");
	PlayerTextDrawFont(playerid, BURGERICON_HUD2[playerid], 4);
	PlayerTextDrawLetterSize(playerid, BURGERICON_HUD2[playerid], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, BURGERICON_HUD2[playerid], 12.500000, 12.000000);
	PlayerTextDrawSetOutline(playerid, BURGERICON_HUD2[playerid], 1);
	PlayerTextDrawSetShadow(playerid, BURGERICON_HUD2[playerid], 0);
	PlayerTextDrawAlignment(playerid, BURGERICON_HUD2[playerid], 1);
	PlayerTextDrawColor(playerid, BURGERICON_HUD2[playerid], -1);
	PlayerTextDrawBackgroundColor(playerid, BURGERICON_HUD2[playerid], 255);
	PlayerTextDrawBoxColor(playerid, BURGERICON_HUD2[playerid], 50);
	PlayerTextDrawUseBox(playerid, BURGERICON_HUD2[playerid], 1);
	PlayerTextDrawSetProportional(playerid, BURGERICON_HUD2[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, BURGERICON_HUD2[playerid], 0);

	BURGERVALUE_HUD2[playerid] = CreatePlayerTextDraw(playerid, 565.000000, 430.000000, "100");
	PlayerTextDrawFont(playerid, BURGERVALUE_HUD2[playerid], 1);
	PlayerTextDrawLetterSize(playerid, BURGERVALUE_HUD2[playerid], 0.308333, 1.150000);
	PlayerTextDrawTextSize(playerid, BURGERVALUE_HUD2[playerid], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, BURGERVALUE_HUD2[playerid], 1);
	PlayerTextDrawSetShadow(playerid, BURGERVALUE_HUD2[playerid], 0);
	PlayerTextDrawAlignment(playerid, BURGERVALUE_HUD2[playerid], 1);
	PlayerTextDrawColor(playerid, BURGERVALUE_HUD2[playerid], -1);
	PlayerTextDrawBackgroundColor(playerid, BURGERVALUE_HUD2[playerid], 255);
	PlayerTextDrawBoxColor(playerid, BURGERVALUE_HUD2[playerid], 50);
	PlayerTextDrawUseBox(playerid, BURGERVALUE_HUD2[playerid], 0);
	PlayerTextDrawSetProportional(playerid, BURGERVALUE_HUD2[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, BURGERVALUE_HUD2[playerid], 0);

	DRINKICON_HUD2[playerid] = CreatePlayerTextDraw(playerid, 593.000000, 430.000000, "HUD:radar_diner");
	PlayerTextDrawFont(playerid, DRINKICON_HUD2[playerid], 4);
	PlayerTextDrawLetterSize(playerid, DRINKICON_HUD2[playerid], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, DRINKICON_HUD2[playerid], 12.500000, 12.000000);
	PlayerTextDrawSetOutline(playerid, DRINKICON_HUD2[playerid], 1);
	PlayerTextDrawSetShadow(playerid, DRINKICON_HUD2[playerid], 0);
	PlayerTextDrawAlignment(playerid, DRINKICON_HUD2[playerid], 1);
	PlayerTextDrawColor(playerid, DRINKICON_HUD2[playerid], -1);
	PlayerTextDrawBackgroundColor(playerid, DRINKICON_HUD2[playerid], 255);
	PlayerTextDrawBoxColor(playerid, DRINKICON_HUD2[playerid], 50);
	PlayerTextDrawUseBox(playerid, DRINKICON_HUD2[playerid], 1);
	PlayerTextDrawSetProportional(playerid, DRINKICON_HUD2[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, DRINKICON_HUD2[playerid], 0);

	DRINKVALUE_HUD2[playerid] = CreatePlayerTextDraw(playerid, 609.000000, 430.000000, "100");
	PlayerTextDrawFont(playerid, DRINKVALUE_HUD2[playerid], 1);
	PlayerTextDrawLetterSize(playerid, DRINKVALUE_HUD2[playerid], 0.308333, 1.150000);
	PlayerTextDrawTextSize(playerid, DRINKVALUE_HUD2[playerid], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, DRINKVALUE_HUD2[playerid], 1);
	PlayerTextDrawSetShadow(playerid, DRINKVALUE_HUD2[playerid], 0);
	PlayerTextDrawAlignment(playerid, DRINKVALUE_HUD2[playerid], 1);
	PlayerTextDrawColor(playerid, DRINKVALUE_HUD2[playerid], -1);
	PlayerTextDrawBackgroundColor(playerid, DRINKVALUE_HUD2[playerid], 255);
	PlayerTextDrawBoxColor(playerid, DRINKVALUE_HUD2[playerid], 50);
	PlayerTextDrawUseBox(playerid, DRINKVALUE_HUD2[playerid], 0);
	PlayerTextDrawSetProportional(playerid, DRINKVALUE_HUD2[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, DRINKVALUE_HUD2[playerid], 0);
	return 1;
}


ShowHud_0(playerid)
{
    PlayerTextDrawShow(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][0]);
    PlayerTextDrawShow(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][1]);
    PlayerTextDrawShow(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][2]);
    PlayerTextDrawShow(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][3]);
    PlayerTextDrawShow(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][4]);
    PlayerTextDrawShow(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][5]);
    PlayerTextDrawShow(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][6]);
    PlayerTextDrawShow(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][7]);
    return 1;
}


ShowHud_1(playerid)
{
    PlayerTextDrawShow(playerid, BOX_HUD1[playerid]);
    PlayerTextDrawShow(playerid, BURGERICON_HUD1[playerid]);
    PlayerTextDrawShow(playerid, BURGERVALUE_HUD1[playerid]);
    PlayerTextDrawShow(playerid, DRINKICON_HUD1[playerid]);
    PlayerTextDrawShow(playerid, DRINKVALUE_HUD1[playerid]);
    return 1;
}

ShowHud_2(playerid)
{
    PlayerTextDrawShow(playerid, BOX_HUD2[playerid]);
    PlayerTextDrawShow(playerid, BURGERICON_HUD2[playerid]);
    PlayerTextDrawShow(playerid, BURGERVALUE_HUD2[playerid]);
    PlayerTextDrawShow(playerid, DRINKICON_HUD2[playerid]);
    PlayerTextDrawShow(playerid, DRINKVALUE_HUD2[playerid]);
    return 1;
}


//Hide
HideHud_0(playerid)
{
    PlayerTextDrawHide(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][0]);
    PlayerTextDrawHide(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][1]);
    PlayerTextDrawHide(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][2]);
    PlayerTextDrawHide(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][3]);
    PlayerTextDrawHide(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][4]);
    PlayerTextDrawHide(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][5]);
    PlayerTextDrawHide(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][6]);
    PlayerTextDrawHide(playerid, PlayerTextdraws[playerid][textdraw_playerGUI][7]);
    return 1;
}


HideHud_1(playerid)
{
    PlayerTextDrawHide(playerid, BOX_HUD1[playerid]);
    PlayerTextDrawHide(playerid, BURGERICON_HUD1[playerid]);
    PlayerTextDrawHide(playerid, BURGERVALUE_HUD1[playerid]);
    PlayerTextDrawHide(playerid, DRINKICON_HUD1[playerid]);
    PlayerTextDrawHide(playerid, DRINKVALUE_HUD1[playerid]);
    return 1;
}

HideHud_2(playerid)
{
    PlayerTextDrawHide(playerid, BOX_HUD2[playerid]);
    PlayerTextDrawHide(playerid, BURGERICON_HUD2[playerid]);
    PlayerTextDrawHide(playerid, BURGERVALUE_HUD2[playerid]);
    PlayerTextDrawHide(playerid, DRINKICON_HUD2[playerid]);
    PlayerTextDrawHide(playerid, DRINKVALUE_HUD2[playerid]);
    return 1;
}

CMD:hudstyle(playerid, params[])
{
	Dialog_Show(playerid, HUDSTYLE, DIALOG_STYLE_LIST, "Hud Style", "Future\nSimple\nClassic", "Select", "Close");
	return 1;
}

Dialog:HUDSTYLE(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
		{
			if(listitem == 0)
			{
				SpeedometerNew_Hide(playerid);
				Speedometer_Show(playerid);
			}
			else
			{
				Speedometer_Hide(playerid);
				SpeedometerNew_Show(playerid);
			}
		}

		switch(listitem)
		{
			case 0:
			{
				ShowHud_0(playerid);
				HideHud_1(playerid);
				HideHud_2(playerid);
				SendServerMessage(playerid, "You change your hud style to "LIGHTBLUE"Future mode");
			}
			case 1:
			{
				ShowHud_1(playerid);
				HideHud_0(playerid);
				HideHud_2(playerid);
				SendServerMessage(playerid, "You change your hud style to "LIGHTBLUE"Simple mode");
			}
			case 2:
			{
				ShowHud_2(playerid);
				HideHud_1(playerid);
				HideHud_0(playerid);
				SendServerMessage(playerid, "You change your hud style to "LIGHTBLUE"Classic mode");
			}
		}
		PlayerData[playerid][pHudStyle] = listitem;
	}
	return 1;
}