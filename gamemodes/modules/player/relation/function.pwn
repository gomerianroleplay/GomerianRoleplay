/*
This file was generated by Nickk's TextDraw editor script
Nickk888 is the author of the NTD script
*/

//Variables
new PlayerText:RelationshipTD[MAX_PLAYERS][4];
new PlayerBar:RelationshipProgressBar[MAX_PLAYERS][1];

//Textdraws
RelationStatus(playerid)
{
	RelationshipTD[playerid][0] = CreatePlayerTextDraw(playerid, 447.000000, 426.000000, "_");
	PlayerTextDrawFont(playerid, RelationshipTD[playerid][0], 1);
	PlayerTextDrawLetterSize(playerid, RelationshipTD[playerid][0], 0.600000, 1.999996);
	PlayerTextDrawTextSize(playerid, RelationshipTD[playerid][0], 298.500000, 91.000000);
	PlayerTextDrawSetOutline(playerid, RelationshipTD[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, RelationshipTD[playerid][0], 0);
	PlayerTextDrawAlignment(playerid, RelationshipTD[playerid][0], 2);
	PlayerTextDrawColor(playerid, RelationshipTD[playerid][0], -1);
	PlayerTextDrawBackgroundColor(playerid, RelationshipTD[playerid][0], 255);
	PlayerTextDrawBoxColor(playerid, RelationshipTD[playerid][0], 135);
	PlayerTextDrawUseBox(playerid, RelationshipTD[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, RelationshipTD[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid, RelationshipTD[playerid][0], 0);

    RelationshipTD[playerid][1] = CreatePlayerTextDraw(playerid, 481.000000, 432.000000, "HUD:radar_girlfriend");
    PlayerTextDrawFont(playerid, RelationshipTD[playerid][1], 4);
    PlayerTextDrawLetterSize(playerid, RelationshipTD[playerid][1], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, RelationshipTD[playerid][1], 11.500000, 12.000000);
    PlayerTextDrawSetOutline(playerid, RelationshipTD[playerid][1], 1);
    PlayerTextDrawSetShadow(playerid, RelationshipTD[playerid][1], 0);
    PlayerTextDrawAlignment(playerid, RelationshipTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, RelationshipTD[playerid][1], -1);
    PlayerTextDrawBackgroundColor(playerid, RelationshipTD[playerid][1], 255);
    PlayerTextDrawBoxColor(playerid, RelationshipTD[playerid][1], 50);
    PlayerTextDrawUseBox(playerid, RelationshipTD[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, RelationshipTD[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, RelationshipTD[playerid][1], 0);

    RelationshipTD[playerid][2] = CreatePlayerTextDraw(playerid, 402.000000, 427.000000, "Relationship:");
    PlayerTextDrawFont(playerid, RelationshipTD[playerid][2], 1);
    PlayerTextDrawLetterSize(playerid, RelationshipTD[playerid][2], 0.170833, 0.899999);
    PlayerTextDrawTextSize(playerid, RelationshipTD[playerid][2], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, RelationshipTD[playerid][2], 1);
    PlayerTextDrawSetShadow(playerid, RelationshipTD[playerid][2], 0);
    PlayerTextDrawAlignment(playerid, RelationshipTD[playerid][2], 1);
    PlayerTextDrawColor(playerid, RelationshipTD[playerid][2], 852308735);
    PlayerTextDrawBackgroundColor(playerid, RelationshipTD[playerid][2], 255);
    PlayerTextDrawBoxColor(playerid, RelationshipTD[playerid][2], 50);
    PlayerTextDrawUseBox(playerid, RelationshipTD[playerid][2], 0);
    PlayerTextDrawSetProportional(playerid, RelationshipTD[playerid][2], 1);
    PlayerTextDrawSetSelectable(playerid, RelationshipTD[playerid][2], 0);

  
    RelationshipTD[playerid][3] = CreatePlayerTextDraw(playerid, 441.000000, 428.000000, "_");
    PlayerTextDrawFont(playerid, RelationshipTD[playerid][3], 1);
    PlayerTextDrawLetterSize(playerid, RelationshipTD[playerid][3], 0.208333, 0.750000);
    PlayerTextDrawTextSize(playerid, RelationshipTD[playerid][3], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, RelationshipTD[playerid][3], 1);
    PlayerTextDrawSetShadow(playerid, RelationshipTD[playerid][3], 0);
    PlayerTextDrawAlignment(playerid, RelationshipTD[playerid][3], 1);
    PlayerTextDrawColor(playerid, RelationshipTD[playerid][3], -1);
    PlayerTextDrawBackgroundColor(playerid, RelationshipTD[playerid][3], 255);
    PlayerTextDrawBoxColor(playerid, RelationshipTD[playerid][3], 50);
    PlayerTextDrawUseBox(playerid, RelationshipTD[playerid][3], 0);
    PlayerTextDrawSetProportional(playerid, RelationshipTD[playerid][3], 1);
    PlayerTextDrawSetSelectable(playerid, RelationshipTD[playerid][3], 0);
    return 1;
}
//Player Textdraws

/*Player Progress Bars
Requires "progress2" include by Southclaws
Download: https://github.com/Southclaws/progress2/releases */


