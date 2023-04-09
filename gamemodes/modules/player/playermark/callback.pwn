// include hook ke main gamemode
#include <YSI_Coding\y_hooks>

public OnPlayerClickMap(playerid, Float:fX, Float:fY, Float:fZ)
{
    if (!(AccountData[playerid][pAdminDuty])) return 0;
    if (AccountData[playerid][pAdmin] > 1)

    {
        new vehicleid = GetPlayerVehicleID(playerid);
        if (vehicleid > 0 && GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
        {
            SetVehiclePos(GetPlayerVehicleID(playerid), fX, fY, fZ);
        }
        else
        {
            SetPlayerPosFindZ(playerid, fX, fY, 999.0);
            SetPlayerVirtualWorld(playerid, 0);
            SetPlayerInterior(playerid, 0);
        }
        Player_ToggleTelportAntiCheat(playerid, false);
    }
    if (GetPlayerWayPointStatus(playerid))
    {
        RemovePlayerMapIcon(playerid, 20);
        // RemoveDriverMarkerPoint(playerid);
        // SetPlayerWayPointStatus(playerid, false);
    }

    if (IsPlayerInAnyVehicle(playerid) && GetPlayerState(playerid) != PLAYER_STATE_DRIVER)
    {
        SetDriverMarkerPoint(playerid, fX, fY, fZ);
    }
    return 1;
}

hook OnPlayerConnect(playerid)
{
    playerWayPoint[playerid] = false;
}

hook OnPlayerDisconnect(playerid, reason)
{
    playerWayPoint[playerid] = false;
}