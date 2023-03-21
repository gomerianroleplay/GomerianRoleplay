// include hook ke main gamemode
#include <YSI_Coding\y_hooks>

public OnPlayerClickMap(playerid, Float:fX, Float:fY, Float:fZ)
{
    // jika admin lebih dari > 1 = player biasa
    // next improve syntax IsAdmin
    if (AccountData[playerid][pAdmin] > 1)
    {
        // variable tujuan teleport
        SetPlayerPosFindZ(playerid, fX, fY, fZ);
        // variable untuk mengambil id kendaraan
        new vehicleid = GetPlayerVehicleID(playerid);
        // kondisi ketika player teleport use/not use car
        if (vehicleid > 0 && GetPlayerState(playerid) == PLAYER_STATE_DRIVER) // kalau memakai && kedua kondisi harus true atau akan error
        {
            // teleport dengan kendaraan
            SetVehiclePos(GetPlayerVehicleID(playerid), fX, fY, fZ);
        }
        else
        {
            //  in foot (napak) ^_^
            SetPlayerPosFindZ(playerid, fX, fY, 999.0);
            SetPlayerVirtualWorld(playerid, 0);
            SetPlayerInterior(playerid, 0);
        }
        // cheat di nonaktifkan hanya untuk clickmap
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