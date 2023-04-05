#include <YSI_Coding\y_hooks>
#include <YSI_Game\y_vehicledata>
#define GARAGE_INTERIOR	0
#define MAX_GARAGE 15


/*Enums List*/
enum E_GARAGES
{
    garageID,
    garageOwner[32],
    garageOwnerId,
    Float:garageLoc[4],
    Float:garageLocInt[4],
    Text3D:garageLabel,
    garagePrice,
    garageType,
    garageLock,
    garageHouseLink,
    garageExists,
    garageInside,
    garagePickup,
    Interior
};

/*Variable List*/
new GarageInfo[MAX_GARAGE][E_GARAGES],
    Iterator:Garages<MAX_GARAGE>;

new const Float:garageInterior[][4] =
{
    {-1722.2788, 1019.1301, 17.5859, 95.7513}
};

// Event List
hook OnGameModeInitEx()
{
    mysql_pquery(g_iHandle, "SELECT * FROM `garage` ORDER BY `garageID` ASC", "Garage_Load", "");
}

forward Garage_Load();
public Garage_Load()
{
    if (cache_num_rows())
    {
        for (new i = 0; i < cache_num_rows(); i++) if (i < MAX_GARAGE && !GarageInfo[i][garageExists])
            {
                Iter_Add(Garages, i);
                new part[64];

                GarageInfo[i][garageExists] = true;

                cache_get_field_content(i, "garageOwner", GarageInfo[i][garageOwner], MAX_PLAYER_NAME);

                cache_get_field_content(i, "Location", part, sizeof(part));
                sscanf(part, "p<|>ffff", GarageInfo[i][garageLoc][0], GarageInfo[i][garageLoc][1], GarageInfo[i][garageLoc][2], GarageInfo[i][garageLoc][3]);

                cache_get_field_content(i, "LocationInt", part, sizeof(part));
                sscanf(part, "p<|>ffff", GarageInfo[i][garageLocInt][0], GarageInfo[i][garageLocInt][1], GarageInfo[i][garageLocInt][2], GarageInfo[i][garageLocInt][3]);

                GarageInfo[i][garageID]        = cache_get_field_int(i, "garageID");
                GarageInfo[i][garageOwnerId]   = cache_get_field_int(i, "garageOwnerID");
                GarageInfo[i][garagePrice]     = cache_get_field_int(i, "Price");
                GarageInfo[i][garageType]      = cache_get_field_int(i, "Type");
                GarageInfo[i][garageLock]      = cache_get_field_int(i, "Lock");
                GarageInfo[i][garageInside]    = cache_get_field_int(i, "Inside");
                GarageInfo[i][garageHouseLink] = cache_get_field_int(i, "HouseLink");
                GarageInfo[i][Interior]  = cache_get_field_int(i, "Interior");
                Garage_Sync(i);
            }
        printf("*** Loaded %d garages.", cache_num_rows());
    }
    return 1;
}

forward Garage_Created(garage_id);
public Garage_Created(garage_id)
{
    if (Garage_Exists(garage_id))
    {
        GarageInfo[garage_id][garageID] = cache_insert_id();
        //sync = refresh
        Garage_Sync(garage_id);
        Garage_Save(garage_id);
        return 1;
    }
    return 0;
}

// func list
Garage_Create(playerid, price, type)
{
    new garage_id = INVALID_ITERATOR_SLOT;

    for (new i = 0; i != MAX_GARAGE; i ++) if (GarageInfo[i][garageExists] == false)
    {
        garage_id = i;
        //Iter_Add(Garages, garage_id);
        GetPlayerPos(playerid, GarageInfo[garage_id][garageLoc][0], GarageInfo[garage_id][garageLoc][1], GarageInfo[garage_id][garageLoc][2]);
        GetPlayerFacingAngle(playerid, GarageInfo[garage_id][garageLoc][3]);

        GarageInfo[garage_id][garageLocInt][0] = garageInterior[0][0]; // x
        GarageInfo[garage_id][garageLocInt][1] = garageInterior[0][1]; // y
        GarageInfo[garage_id][garageLocInt][2] = garageInterior[0][2]; // z
        GarageInfo[garage_id][garageLocInt][3] = garageInterior[0][3]; // Angle

        GarageInfo[garage_id][garageExists] = true; // check existansist of garages = true/false
        GarageInfo[garage_id][garageType] = type; // slot
        GarageInfo[garage_id][garagePrice] = price;
        GarageInfo[garage_id][garageInside] = 0; // value veh inside
        GarageInfo[garage_id][garageOwnerId] = 0;
        GarageInfo[garage_id][garageOwner] = EOS;
        GarageInfo[garage_id][garageLock] = 1; //bool
        GarageInfo[garage_id][garageHouseLink] = 0;
        mysql_tquery(g_iHandle, sprintf("INSERT INTO `garage` (`Price`) VALUES (%d)", GarageInfo[garage_id][garagePrice]), "Garage_Created", "d", garage_id);
        return garage_id;
    }
    return INVALID_ITERATOR_SLOT;
}

Garage_Destroy(garage_id)
{
    if (Garage_Exists(garage_id))
    {
        if(Garage_Reset(garage_id)){
            mysql_tquery(g_iHandle, sprintf("DELETE FROM `garage` WHERE `garageID`='%d'", GarageInfo[garage_id][garageID]));
            mysql_tquery(g_iHandle, sprintf("UPDATE `player_vehicles` SET `Garage`= 0, Pos1 = '%.01f', Pos2 = '%.01f', Pos3 = '%.01f', Pos4 = '%.01f' WHERE Garage='%d'",
                                            GarageInfo[garage_id][garageLoc][0],  GarageInfo[garage_id][garageLoc][1], GarageInfo[garage_id][garageLoc][2], GarageInfo[garage_id][garageLoc][3],
                                            GarageInfo[garage_id][garageID])
                        );
        }
    }
    return 1;
}

Garage_Reset(garage_id)
{
    if (!GarageInfo[garage_id][garageExists])
        return 0;

    if (IsValidDynamicPickup(GarageInfo[garage_id][garagePickup]))
        DestroyDynamicPickup(GarageInfo[garage_id][garagePickup]);

    if (IsValidDynamic3DTextLabel(GarageInfo[garage_id][garageLabel]))
        DestroyDynamic3DTextLabel(GarageInfo[garage_id][garageLabel]);

    GarageInfo[garage_id][garageOwner] = EOS;

    GarageInfo[garage_id][garageExists] = false;
    GarageInfo[garage_id][garageID] = 0;
    GarageInfo[garage_id][garageType] = 0;
    GarageInfo[garage_id][garagePrice] = 0;
    GarageInfo[garage_id][garageInside] = 0;
    GarageInfo[garage_id][garageOwnerId] = 0;
    GarageInfo[garage_id][garageLock] = 1;
    GarageInfo[garage_id][garageHouseLink] = 0;
    GarageInfo[garage_id][garageLabel] = Text3D:INVALID_STREAMER_ID;
    GarageInfo[garage_id][garagePickup] = INVALID_STREAMER_ID;

    return 1;
}

Garage_Sync(garage_id)
{
    if (GarageInfo[garage_id][garageExists])
    {
        new str[500];

        if (IsValidDynamicPickup(GarageInfo[garage_id][garagePickup]))
            DestroyDynamicPickup(GarageInfo[garage_id][garagePickup]);

        if (IsValidDynamic3DTextLabel(GarageInfo[garage_id][garageLabel]))
            DestroyDynamic3DTextLabel(GarageInfo[garage_id][garageLabel]);

        if (GarageInfo[garage_id][garageOwnerId])
            if (GarageInfo[garage_id][garageHouseLink]) format(str, sizeof(str), "%s's garage\n"WHITE"House Garage Id: "YELLOW"%d\n"WHITE"Vehicle Inside: {FFFF00}%d{FFFFFF}/{FFFF00}%d\n"WHITE"Type '{FFFF00}/garage"WHITE"' to use this.", GarageInfo[garage_id][garageOwner], GetHouseByID(GarageInfo[garage_id][garageHouseLink]), GarageInfo[garage_id][garageInside], GarageInfo[garage_id][garageType]);
            else format(str, sizeof(str), "%s's garage\n"WHITE"Vehicle Inside: {FFFF00}%d{FFFFFF}/{FFFF00}%d\n"WHITE"Type '{FFFF00}/garage"WHITE"' to use this.", GarageInfo[garage_id][garageOwner], GarageInfo[garage_id][garageInside], GarageInfo[garage_id][garageType]);
        else
        {
            if (GarageInfo[garage_id][garageHouseLink]) format(str, sizeof(str), "[Garage ID: %d]\n"WHITE"House Garage Id: "YELLOW"%d\n"WHITE"Vehicle Limit: {FFFF00}%d\n"WHITE"Type '{FFFF00}/garage"WHITE"' to use this.", garage_id, GetHouseByID(GarageInfo[garage_id][garageHouseLink]), GarageInfo[garage_id][garageType]);
            else format(str, sizeof(str), "[Garage ID: %d]\n"WHITE"Garage Price: {00FF00}%s\n"WHITE"Vehicle Limit: {FFFF00}%d\n"WHITE"Type '{FFFF00}/garage"WHITE"' to use this.", garage_id, FormatNumber(GarageInfo[garage_id][garagePrice]), GarageInfo[garage_id][garageType]);
        }
        GarageInfo[garage_id][garageLabel] = CreateDynamic3DTextLabel(str, COLOR_CLIENT, GarageInfo[garage_id][garageLoc][0], GarageInfo[garage_id][garageLoc][1], GarageInfo[garage_id][garageLoc][2] + 0.5, 7);
        GarageInfo[garage_id][garagePickup] = CreateDynamicPickup(1239, 23, GarageInfo[garage_id][garageLoc][0], GarageInfo[garage_id][garageLoc][1], GarageInfo[garage_id][garageLoc][2], -1, -1, -1, 10);

        Garage_Save(garage_id);
    }
    return 1;
}

Garage_Save(garage_id)
{
    if (Garage_Exists(garage_id))
    {
        new query[300];
        format(query, sizeof(query), "UPDATE `garage` SET `garageOwner`='%s', `Location`='%.02f|%.02f|%.02f|%.02f', `garageOwnerID`='%d', `Inside`='%d', `HouseLink`='%d'",
               GarageInfo[garage_id][garageOwner],
               GarageInfo[garage_id][garageLoc][0],
               GarageInfo[garage_id][garageLoc][1],
               GarageInfo[garage_id][garageLoc][2],
               GarageInfo[garage_id][garageLoc][3],
               GarageInfo[garage_id][garageOwnerId],
               GarageInfo[garage_id][garageInside],
               GarageInfo[garage_id][garageHouseLink]
              );
        format(query, sizeof(query), "%s, `Price`='%d', `Type`='%d', `Lock`='%d', `LocationInt`='%.02f|%.02f|%.02f|%.02f', `Interior`='%d' WHERE `garageID` = '%d'",
               query,
               GarageInfo[garage_id][garagePrice],
               GarageInfo[garage_id][garageType],
               GarageInfo[garage_id][garageLock],
               GarageInfo[garage_id][garageLocInt][0],
               GarageInfo[garage_id][garageLocInt][1],
               GarageInfo[garage_id][garageLocInt][2],
               GarageInfo[garage_id][garageLocInt][3],
               GarageInfo[garage_id][Interior],
               GarageInfo[garage_id][garageID]
              );
        return mysql_tquery(g_iHandle, query);
    }
    return 1;
}

Garage_Exists(garage_id)
{
    if (Iter_Contains(Garages, garage_id))
        return 1;

    return 0;
}

Garage_Nearest(playerid)
{
    for (new i = 0; i != MAX_GARAGE; i++) if(GarageInfo[i][garageExists] && IsPlayerInRangeOfPoint(playerid, 2.5, GarageInfo[i][garageLoc][0], GarageInfo[i][garageLoc][1], GarageInfo[i][garageLoc][2]))
    {
        //if(GetPlayerInterior(playerid) == GarageInfo[i][houseExterior] && GetPlayerVirtualWorld(playerid) == GarageInfo[i][houseExteriorVW])
        return i;
    }
    return -1;
}



Garage_FreeID()
{
    for (new id = 0; id != MAX_GARAGE; id++) if (!GarageInfo[garage_id][garageExists])
        {
            return id;
        }
    return -1;
}



Garage_Inside(playerid)
{
    if (PlayerData[playerid][pGarage] != -1)
    {
        for (new i = 0; i != MAX_GARAGE; i ++) if (GarageInfo[i][garageExists] && GarageInfo[i][garageID] == PlayerData[playerid][pGarage])
            {
                return i;
            }
    }
    return -1;
}

Garage_IsOwner(playerid, garage_id)
{
    if (!PlayerData[playerid][pLogged] || PlayerData[playerid][pID] == -1)
        return 0;

    if ((GarageInfo[garage_id][garageExists] && GarageInfo[garage_id][garageOwnerId] != 0) && GarageInfo[garage_id][garageOwnerId] == PlayerData[playerid][pID])
        return 1;

    return 0;
}

Garage_SQLID(garage_id)
{
    for (new i = 0; i != MAX_GARAGE; i ++) if (GarageInfo[i][garageExists] && GarageInfo[i][garageID] == id)
        {
            return i;
        }

    return 0;
}


Garage_GetCount(playerid)
{
    new count = 0;
    for (new i = 0; i != MAX_GARAGE; i++) if (GarageInfo[i][garageExists] && Garage_IsOwner(playerid, i))
        {
            count++;
        }
    return count;
}


