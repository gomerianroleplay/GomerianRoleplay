/*	Function List */

abs(number)
{
    return (number < 0 ? (-1 * number) : number);
}

SendClientErrorMessage(playerid, const fmat[], {Float, _}:...)
{
    new
        str[145];

    format(str, sizeof(str), "ERROR: %s", fmat);
    return SendClientMessage(playerid, X11_GREY_80, str);
}

SendClientSyntaxMessage(playerid, const fmat[], {Float, _}:...)
{
    new
        str[145];

    format(str, sizeof(str), "USAGE: %s", fmat);
    return SendClientMessage(playerid, X11_GREY_80, str);
}

SendClientServerMessage(playerid, const fmat[], {Float, _}:...)
{
    new
        str[145];

    format(str, sizeof(str), "SERVER: "WHITE"%s", fmat);
    return SendClientMessage(playerid, X11_GREY_80, str);
}

stock GetVehicleNeedFlip(vehicleid)//return 1 if need, 0 if not
{
    new Float:Quat[2];
    GetVehicleRotationQuat(vehicleid, Quat[0], Quat[1], Quat[0], Quat[0]);
    return (Quat[1] >= 0.60 || Quat[1] <= -0.60);
}

SendPlayerPos(playerid, Float:x, Float:y, Float:z, Float:angle, int = 0, vw = 0)
{
	if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER) 
    {
        SetVehiclePos(GetPlayerVehicleID(playerid), x, y, z);
        LinkVehicleToInterior(GetPlayerVehicleID(playerid), int);
        SetVehicleVirtualWorld(GetPlayerVehicleID(playerid), vw);
    }
    else SetPlayerPos(playerid, x, y, z);

    SetPlayerFacingAngle(playerid, angle);
    SetPlayerInterior(playerid, int);
    SetPlayerVirtualWorld(playerid, vw);

    SetCameraBehindPlayer(playerid);
	return 1;
}

Float:GetDistanceBetweenPoints(Float:x1, Float:y1, Float:z1, Float:x2, Float:y2, Float:z2)
{
    x1 -= x2;
    y1 -= y2;
    z1 -= z2;
    return floatsqroot((x1 * x1) + (y1 * y1) + (z1 * z1));
}

ConvertHBEColor(value, bool:phone = false) 
{
    if(!phone)
    {
        new color;
        if(value >= 90 && value <= 100) color = 0x15a014FF;
        else if(value >= 80 && value < 90) color = 0x1b9913FF;
        else if(value >= 70 && value < 80) color = 0x1a7f08FF;
        else if(value >= 60 && value < 70) color = 0x326305FF;
        else if(value >= 50 && value < 60) color = 0x375d04FF;
        else if(value >= 40 && value < 50) color = 0x603304FF;
        else if(value >= 30 && value < 40) color = 0xd72800FF;
        else if(value >= 10 && value < 30) color = 0xfb3508FF;
        else if(value >= 0 && value < 10) color = 0xFF0000FF;
        else color = X11_WHITE;
        return color;
    }
    else
    {
        new color;
        if(value >= 90 && value <= 100) color = 0xFFFFFFFF;
        else if(value >= 80 && value < 90) color = 0xFFFFFFFF; //Tandaincolor
        else if(value >= 70 && value < 80) color = 0xFFFFFFFF;
        else if(value >= 60 && value < 70) color = 0xFFFFFFFF;
        else if(value >= 50 && value < 60) color = 0xFFFFFFFF;
        else if(value >= 40 && value < 50) color = 0x603304FF;
        else if(value >= 30 && value < 40) color = 0xfb3508FF;
        else if(value >= 10 && value < 30) color = 0xfb3508FF;
        else if(value >= 0 && value < 10) color = 0xFF0000FF;
        else color = X11_WHITE;
        return color;        
    }
}

UpdateCharacterInt(playerid, const column_name[], value)
{
	mysql_tquery(g_iHandle, sprintf("UPDATE `characters` SET `%s` = '%d' WHERE `ID` = '%d';", column_name, value, GetPlayerSQLID(playerid)));
	return 1;
}

stock UpdateCharacterFloat(playerid, const column_name[], Float:value) 
{
	mysql_tquery(g_iHandle, sprintf("UPDATE `characters` SET `%s` = '%.4f' WHERE `ID`='%d';", column_name, value, GetPlayerSQLID(playerid)));
	return 1;
}

UpdateCharacterString(playerid, const column_name[], value[]) 
{
	mysql_tquery(g_iHandle, sprintf("UPDATE `characters` SET `%s` = '%s' WHERE `ID`='%d';", column_name, SQL_ReturnEscaped(value), GetPlayerSQLID(playerid)));
	return 1;
}

GetEngineStatus(vehicleid)
{
    static engine, lights, alarm, doors, bonnet, boot, objective;
    GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);

    if(engine != 1)
        return 0;

    return 1;
}

GetHoodStatus(vehicleid)
{
    static engine, lights, alarm, doors, bonnet, boot, objective;
    GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);

    if(bonnet != 1)
        return 0;

    return 1;
}

GetTrunkStatus(vehicleid)
{
    static engine, lights, alarm, doors, bonnet, boot, objective;
    GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);

    if(boot != 1)
        return 0;

    return 1;
}

stock GetAlarmStatus(vehicleid)
{
    static engine, lights, alarm, doors, bonnet, boot, objective;
    GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);

    if(alarm != 1)
        return 0;

    return 1;
}

GetDoorStatus(vehicleid)
{
    static engine, lights, alarm, doors, bonnet, boot, objective;
    GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);

    if(doors != 1)
        return 0;

    return 1;
}

GetLightStatus(vehicleid)
{
    static engine, lights, alarm, doors, bonnet, boot, objective;
    GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);

    if(lights != 1)
        return 0;

    return 1;
}

SetEngineStatus(vehicleid, status)
{
    static engine, lights, alarm, doors, bonnet, boot, objective;
    GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);
    return SetVehicleParamsEx(vehicleid, status, lights, alarm, doors, bonnet, boot, objective);
}

SetLightStatus(vehicleid, status)
{
    static engine, lights, alarm, doors, bonnet, boot, objective;
    GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);
    return SetVehicleParamsEx(vehicleid, engine, status, alarm, doors, bonnet, boot, objective);
}

SetTrunkStatus(vehicleid, status)
{
    static engine, lights, alarm, doors, bonnet, boot, objective;
    GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);
    return SetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, status, objective);
}

SetHoodStatus(vehicleid, status)
{
    static engine, lights, alarm, doors, bonnet, boot, objective;
    GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);
    return SetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, status, boot, objective);
}

SetDoorStatus(vehicleid, status)
{
    static engine, lights, alarm, doors, bonnet, boot, objective;
    GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);
    return SetVehicleParamsEx(vehicleid, engine, lights, alarm, status, bonnet, boot, objective);
}

stock SetAlarmStatus(vehicleid, status)
{
    static engine, lights, alarm, doors, bonnet, boot, objective;
    GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);
    return SetVehicleParamsEx(vehicleid, engine, lights, status, doors, bonnet, boot, objective);
}

stock IsPoweredVehicle(vehicleid)
{
    new
        model = GetVehicleModel(vehicleid);

    if (400 <= model <= 611)
    {
        static const g_EngineInfo[] = {
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
            1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
            1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
            1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
            1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1,
            1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0
        };

        return g_EngineInfo[model - 400];
    }
    return 0;
}

GetPlayerAnimation(playerid, animlib[], animname[])
{
    static
        l_animlib[32],
        l_animname[32];

    GetAnimationName(GetPlayerAnimationIndex(playerid),l_animlib,32,l_animname,32);
    
    if (strcmp(animlib, l_animlib, true) == 0 && strcmp(animname, l_animname, true) == 0)
        return true;

    return false;
}
stock Float:cache_get_field_float(row, const field_name[]);

//Global Function Server Side Health
Float:GetHealth(playerid)
{
    return PlayerData[playerid][pHealth]; 
}
Float:GetArmour(playerid)
{
    return PlayerData[playerid][pArmorStatus]; 
}

Player_IsFactionSalaryExceeded(playerid)
{
    if (Economy_GetMaxFactSalaryWeekly() == 0)
    {
        return 0;
    }

    return (PlayerData[playerid][pFactionSalaryCollected] >= Economy_GetMaxFactSalaryWeekly() ? 1 : 0);
}