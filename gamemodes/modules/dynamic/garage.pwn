#define GARAGE_INTERIOR	4
#define MAX_GARAGE 15
// #include <YSI_Game\y_vehicledata>
// #include <YSI_Coding\y_hooks>

/*Variable List*/
new const Float:garageInterior[][4] = {
	{-1790.5884,1434.1504,7.1875,180.1477},
	{-1790.5884,1434.1504,7.1875,180.1477},
	{-1790.5884,1434.1504,7.1875,180.1477},
	{-1790.5884,1434.1504,7.1875,180.1477}

};

/*Enums List*/
enum E_GARAGES {
    garageID,
    garageOwner[32],
    garageOwnerId,
    Float:garageLoc[4],
	Float:garageLocInt[4],
	garagePrice,
	garageType,
	garageLock,
	Text3D:garageLabel,
	garageHouseLink,
	garageExists,
	garageInside,
	garagePickup,

};

new GarageInfo[MAX_GARAGE][E_GARAGES];

/*Function:List*/
Function:Garage_Load()
{
	if(!cache_num_rows()) return printf("[Dynamic Garage] There are no one garage loaded to the server.");

	for(new id = 0; id != cache_num_rows(); id++) if (id < MAX_GARAGE && !GarageInfo[id][garageExists])
	{	
		new part[64];

		GarageInfo[id][garageExists] = true;

		cache_get_field_content(id, "garageOwner", GarageInfo[id][garageOwner], MAX_PLAYER_NAME);

		cache_get_field_content(id, "Location", part, sizeof(part));
		sscanf(part, "p<|>ffff", GarageInfo[id][garageLoc][0], GarageInfo[id][garageLoc][1], GarageInfo[id][garageLoc][2], GarageInfo[id][garageLoc][3]);

		cache_get_field_content(id, "LocationInt", part, sizeof(part));
		sscanf(part, "p<|>ffff", GarageInfo[id][garageLocInt][0], GarageInfo[id][garageLocInt][1], GarageInfo[id][garageLocInt][2], GarageInfo[id][garageLocInt][3]);

		GarageInfo[id][garageID] = cache_get_field_int(id, "garageID");
		GarageInfo[id][garageOwnerId] = cache_get_field_int(id, "garageOwnerID");
		GarageInfo[id][garagePrice] = cache_get_field_int(id, "Price");
		GarageInfo[id][garageType] = cache_get_field_int(id, "Type");
		GarageInfo[id][garageLock] = cache_get_field_int(id, "Lock");
		GarageInfo[id][garageInside] = cache_get_field_int(id, "Inside");
		GarageInfo[id][garageHouseLink] = cache_get_field_int(id, "HouseLink");
		Garage_Sync(id);
	}
	return 1;
}

stock Garage_Save(id)
{
	new query[300];
	format(query, sizeof(query), "UPDATE `garage` SET `garageOwner`='%s', `Location`='%.02f|%.02f|%.02f|%.02f', `garageOwnerID`='%d', `Inside`='%d', `HouseLink`='%d'", 
		GarageInfo[id][garageOwner],
		GarageInfo[id][garageLoc][0],
		GarageInfo[id][garageLoc][1],
		GarageInfo[id][garageLoc][2],
		GarageInfo[id][garageLoc][3],
		GarageInfo[id][garageOwnerId],
		GarageInfo[id][garageInside],
		GarageInfo[id][garageHouseLink]
	);
	format(query, sizeof(query), "%s, `Price`='%d', `Type`='%d', `Lock`='%d', `LocationInt`='%.02f|%.02f|%.02f|%.02f' WHERE `garageID` = '%d'", 
		query,
		GarageInfo[id][garagePrice],
		GarageInfo[id][garageType],
		GarageInfo[id][garageLock],
		GarageInfo[id][garageLocInt][0],
		GarageInfo[id][garageLocInt][1],
		GarageInfo[id][garageLocInt][2],
		GarageInfo[id][garageLocInt][3],
		GarageInfo[id][garageID]
	);
	return mysql_tquery(g_iHandle, query);
}

stock Garage_Sync(id)
{
	if (GarageInfo[id][garageExists]) 
	{
		new str[500];

		if(IsValidDynamicPickup(GarageInfo[id][garagePickup]))
			DestroyDynamicPickup(GarageInfo[id][garagePickup]);

		if(IsValidDynamic3DTextLabel(GarageInfo[id][garageLabel]))
			DestroyDynamic3DTextLabel(GarageInfo[id][garageLabel]);

		if(GarageInfo[id][garageOwnerId]) 
			if(GarageInfo[id][garageHouseLink]) format(str, sizeof(str), "%s's garage\n"WHITE"House Garage Id: "YELLOW"%d\n"WHITE"Vehicle Inside: {FFFF00}%d{FFFFFF}/{FFFF00}%d\n"WHITE"Type '{FFFF00}/garage"WHITE"' to use this.", GarageInfo[id][garageOwner], GetHouseByID(GarageInfo[id][garageHouseLink]), GarageInfo[id][garageInside], GarageInfo[id][garageType]);
			else format(str, sizeof(str), "%s's garage\n"WHITE"Vehicle Inside: {FFFF00}%d{FFFFFF}/{FFFF00}%d\n"WHITE"Type '{FFFF00}/garage"WHITE"' to use this.", GarageInfo[id][garageOwner], GarageInfo[id][garageInside], GarageInfo[id][garageType]);
		else {
			if(GarageInfo[id][garageHouseLink]) format(str, sizeof(str), "[Garage ID: %d]\n"WHITE"House Garage Id: "YELLOW"%d\n"WHITE"Vehicle Limit: {FFFF00}%d\n"WHITE"Type '{FFFF00}/garage"WHITE"' to use this.", id, GetHouseByID(GarageInfo[id][garageHouseLink]), GarageInfo[id][garageType]);
			else format(str, sizeof(str), "[Garage ID: %d]\n"WHITE"Garage Price: {00FF00}%s\n"WHITE"Vehicle Limit: {FFFF00}%d\n"WHITE"Type '{FFFF00}/garage"WHITE"' to use this.", id, FormatNumber(GarageInfo[id][garagePrice]), GarageInfo[id][garageType]);
		}
		GarageInfo[id][garageLabel] = CreateDynamic3DTextLabel(str, COLOR_CLIENT, GarageInfo[id][garageLoc][0], GarageInfo[id][garageLoc][1], GarageInfo[id][garageLoc][2]+0.5, 7);
		GarageInfo[id][garagePickup] = CreateDynamicPickup(1239, 23, GarageInfo[id][garageLoc][0], GarageInfo[id][garageLoc][1], GarageInfo[id][garageLoc][2], -1, -1, -1, 10);
		
		Garage_Save(id);
	}
	return 1;
}

stock Garage_FreeID()
{
	for(new id = 0; id != MAX_GARAGE; id++) if(!GarageInfo[id][garageExists]) {
		return id;
	}
	return -1;
}

stock Garage_Nearest(playerid)
{
	for(new id = 0; id != MAX_GARAGE; id++) if(GarageInfo[id][garageExists] && IsPlayerInRangeOfPoint(playerid, 4.0, GarageInfo[id][garageLoc][0], GarageInfo[id][garageLoc][1], GarageInfo[id][garageLoc][2])) {
		return id;
	}
	return -1;
}

stock Garage_Inside(playerid)
{
    if(PlayerData[playerid][pGarage] != -1)
    {
        for (new i = 0; i != MAX_GARAGE; i ++) if(GarageInfo[i][garageExists] && GarageInfo[i][garageID] == PlayerData[playerid][pGarage]) {
            return i;
        }
    }
    return -1;
}

stock Garage_IsOwner(playerid, id)
{
    if(!PlayerData[playerid][pLogged] || PlayerData[playerid][pID] == -1)
        return 0;

    if((GarageInfo[id][garageExists] && GarageInfo[id][garageOwnerId] != 0) && GarageInfo[id][garageOwnerId] == PlayerData[playerid][pID])
        return 1;

    return 0;
}

stock Garage_SQLID(id)
{
    for (new i = 0; i != MAX_GARAGE; i ++) if(GarageInfo[i][garageExists] && GarageInfo[i][garageID] == id) {
        return i;
    }

    return 0;
}


stock Garage_GetCount(playerid)
{
    new count = 0;
    for (new i = 0; i != MAX_GARAGE; i++) if(GarageInfo[i][garageExists] && Garage_IsOwner(playerid, i)) {
        count++;
    }
    return count;
}

stock Garage_Destroy(id)
{
	mysql_tquery(g_iHandle, sprintf("DELETE FROM `garage` WHERE `garageID`='%d'", GarageInfo[id][garageID]));
	mysql_tquery(g_iHandle, sprintf("UPDATE `player_vehicles` SET `Garage`= 0, Pos1 = '%.01f', Pos2 = '%.01f', Pos3 = '%.01f', Pos4 = '%.01f' WHERE Garage='%d'", 
		GarageInfo[id][garageLoc][0],  GarageInfo[id][garageLoc][1], GarageInfo[id][garageLoc][2], GarageInfo[id][garageLoc][3], 
		GarageInfo[id][garageID])
	);

	Garage_Reset(id);
	return 1;
}

stock Garage_Reset(id)
{
	if(!GarageInfo[id][garageExists])
		return 0;

	if(IsValidDynamicPickup(GarageInfo[id][garagePickup]))
		DestroyDynamicPickup(GarageInfo[id][garagePickup]);

	if(IsValidDynamic3DTextLabel(GarageInfo[id][garageLabel]))
		DestroyDynamic3DTextLabel(GarageInfo[id][garageLabel]);

	GarageInfo[id][garageOwner] = EOS;

	GarageInfo[id][garageExists] = false;
	GarageInfo[id][garageID] = 0;
	GarageInfo[id][garageType] = 0;
	GarageInfo[id][garagePrice] = 0;
	GarageInfo[id][garageInside] = 0;
	GarageInfo[id][garageOwnerId] = 0;
	GarageInfo[id][garageLock] = 1;
	GarageInfo[id][garageHouseLink] = 0;

	return 1;
}

stock Garage_Create(playerid, price, type)
{
	static
		id = -1;

	if((id = Garage_FreeID()) != -1) 
	{
		GetPlayerPos(playerid, GarageInfo[id][garageLoc][0], GarageInfo[id][garageLoc][1], GarageInfo[id][garageLoc][2]);
		GetPlayerFacingAngle(playerid, GarageInfo[id][garageLoc][3]);

		GarageInfo[id][garageLocInt][0] = garageInterior[0][0];
		GarageInfo[id][garageLocInt][1] = garageInterior[0][1];
		GarageInfo[id][garageLocInt][2] = garageInterior[0][2];
		GarageInfo[id][garageLocInt][3] = garageInterior[0][3];

		GarageInfo[id][garageExists] = true;
		GarageInfo[id][garageType] = type;
		GarageInfo[id][garagePrice] = price;
		GarageInfo[id][garageInside] = 0;
		GarageInfo[id][garageOwnerId] = 0;
		GarageInfo[id][garageOwner] = EOS;
		GarageInfo[id][garageLock] = 1;
		GarageInfo[id][garageHouseLink] = 0;
		mysql_tquery(g_iHandle, sprintf("INSERT INTO `garage` (`Price`) VALUES (%d)", GarageInfo[id][garagePrice]), "Garage_Created", "d", id);
		return id;
	} 
	return 1;
}

/*Function:other List*/
Function:Garage_Created(id)
{
	GarageInfo[id][garageID] = cache_insert_id();
	//sync = refresh
	Garage_Sync(id);
	Garage_Save(id);
	return 1;
}

/*Command List Admin*/
CMD:creategarage(playerid, params[])
{
   	if(CheckAdmin(playerid, 5))
        return PermissionError(playerid);

	static
		price, type, id;

	if(sscanf(params, "dd", price, type)) return SendSyntaxMessage(playerid, "/creategarage [price] [type 1-3]");
	if(type < 1 || type > 3) return SendErrorMessage(playerid, "Invalid type id.");
	if(price < 1) return SendErrorMessage(playerid, "Price minimum is $1.");

	id = Garage_Create(playerid, price, type);
	if(id == -1)
		return SendErrorMessage(playerid, "The server has reached the limit for garage.");

    SendServerMessage(playerid, "You have successfully created garage ID: %d.", id);
	return 1;
}

CMD:destroygarage(playerid, params[])
{
   	if(CheckAdmin(playerid, 5))
        return PermissionError(playerid);

	static
		id;

	if(sscanf(params, "d", id)) return SendErrorMessage(playerid, "/destroygarage [id]");
	if(!GarageInfo[id][garageExists]) return SendErrorMessage(playerid, "Invalid garage id.");

	SendServerMessage(playerid, "You have successfully destroy garage ID: %d.", id);
	Garage_Destroy(id);
	return 1;
}

CMD:editgarage(playerid, params[])
{
   	if(CheckAdmin(playerid, 5))
        return PermissionError(playerid);

	new 
		string[128],
		id,
		category[10];

	if(sscanf(params, "ds[10]S()[128]", id, category, string)) return SendSyntaxMessage(playerid, "/editgarage [id] [location/price/type/lock/sell/houselink]");
	if(!GarageInfo[id][garageExists]) return SendErrorMessage(playerid, "Invalid garage id.");

	if(!strcmp(category, "location"))
	{
		GetPlayerPos(playerid, GarageInfo[id][garageLoc][0], GarageInfo[id][garageLoc][1], GarageInfo[id][garageLoc][2]);
		GetPlayerFacingAngle(playerid, GarageInfo[id][garageLoc][3]);

		Garage_Sync(id);

		SendServerMessage(playerid, "You have successfully edit location of garage id %d", id);
	}
	else if(!strcmp(category, "price"))
	{
		new price;

		if(sscanf(string, "d", price)) return SendSyntaxMessage(playerid, "/editgarage id price [value]");
		if(price < 1) return SendErrorMessage(playerid, "Price minimum is $1.");

		GarageInfo[id][garagePrice] = price;
		Garage_Sync(id);

		SendServerMessage(playerid, "You have successfully edit price of garage id %d to %s", id, FormatNumber(price));
	}
	else if(!strcmp(category, "type"))
	{
		new type;

		if(sscanf(string, "d", type)) return SendSyntaxMessage(playerid, "/editgarage id type [1-3]");
		if(type < 1 || type > 3) return SendErrorMessage(playerid, "Invalid type id.");

		GarageInfo[id][garageType] = type;
		Garage_Sync(id);

		SendServerMessage(playerid, "You have successfully edit type of garage id %d to %d", id, type);
	}
	else if(!strcmp(category, "lock"))
	{
		new lock;

		if(sscanf(string, "d", lock)) return SendSyntaxMessage(playerid, "/editgarage id lock [0/1]");
		if(lock < 0 || lock > 1) return SendErrorMessage(playerid, "Only 0 (unlock) or 1 (lock).");

		GarageInfo[id][garageLock] = lock;
		Garage_Sync(id);

		SendServerMessage(playerid, "You have successfully %s of garage id %d.", GarageInfo[id][garageLock] ? ("Lock") : ("Unlock"), id);
	}
	else if(!strcmp(category, "houselink"))
	{
		new houseid;

		if(sscanf(string, "d", houseid)) return SendSyntaxMessage(playerid, "/editgarage id houselink [houseid]");
		if(!HouseData[houseid][houseExists]) return SendErrorMessage(playerid, "Invalid house id.");

		GarageInfo[id][garageHouseLink] = HouseData[houseid][houseID];
		if(HouseData[houseid][houseOwner]) {
			GarageInfo[id][garageOwnerId] = HouseData[houseid][houseOwner];
			format(GarageInfo[id][garageOwner], MAX_PLAYER_NAME, HouseData[houseid][houseOwnerName]);
		}

		Garage_Sync(id);

		SendServerMessage(playerid, "You have successfully linked this garage to house id %d.", houseid);
	}
	else if(!strcmp(category, "sell"))
	{
		if (!GarageInfo[id][garageOwnerId]) return SendErrorMessage(playerid, "This garage is for sale!.");
		if (GarageInfo[id][garageHouseLink]) return SendErrorMessage(playerid, "This garage linked to houseid!.");

		mysql_tquery(g_iHandle, sprintf("UPDATE `player_vehicles` SET `Garage`= 0, Pos1 = '%.01f', Pos2 = '%.01f', Pos3 = '%.01f', Pos4 = '%.01f' WHERE Garage='%d'", 
			GarageInfo[id][garageLoc][0],  GarageInfo[id][garageLoc][1], GarageInfo[id][garageLoc][2], GarageInfo[id][garageLoc][3], 
			GarageInfo[id][garageID])
		);

		GarageInfo[id][garageOwnerId] = 0;
		GarageInfo[id][garageOwner] = EOS;
		GarageInfo[id][garageLock] = 1;
		GarageInfo[id][garageInside] = 0;
		Garage_Sync(id);
	}
	Garage_Save(id);
	return 1;
}

/*Command List Player*/
CMD:garage(playerid, params[])
{
	static 
		string[128],
		id = -1,
		category[10];

	if(sscanf(params, "s[10]S()[128]", category, string)) return SendSyntaxMessage(playerid, "/garage [buy/enter/exit/lock/sell/approve/abandon]");

	if(!strcmp(category, "buy"))
	{
		if((id = Garage_Nearest(playerid)) == -1) return SendErrorMessage(playerid, "You're not in nearest any garage.");
		if(GarageInfo[id][garageOwnerId]) return SendErrorMessage(playerid, "This garage owned by someone.");
		if(Garage_GetCount(playerid) >= 2) return SendErrorMessage(playerid, "You have two garage now!.");
		if(GetMoney(playerid) < GarageInfo[id][garagePrice]) return SendErrorMessage(playerid, "You dont have enough money to buy this garage.");
		if(GarageInfo[id][garageHouseLink]) return SendErrorMessage(playerid, "This garage linked to the house, buy house near this garage to owned this garage.");

		GarageInfo[id][garageOwnerId] = PlayerData[playerid][pID];
		format(GarageInfo[id][garageOwner], MAX_PLAYER_NAME, "%s", ReturnName(playerid, 0));
		GiveMoney(playerid, -GarageInfo[id][garagePrice], ECONOMY_ADD_SUPPLY, "bought garage");

		SendServerMessage(playerid, "You've bough this garage.");

		Garage_Sync(id);
	}
	else if(!strcmp(category, "enter"))
	{
		if((id = Garage_Nearest(playerid)) == -1) return SendErrorMessage(playerid, "You're not in nearest any garage.");
		if(GarageInfo[id][garageLock]) return GameTextForPlayer(playerid, "~r~Locked", 1500, 1);
		if(IsPlayerInAnyVehicle(playerid))
		{
			static 
				vehicleid = -1;

			if((vehicleid = GetPlayerVehicleID(playerid)) != -1)
			{
				if(!Vehicle_IsOwned(playerid, vehicleid)) return SendErrorMessage(playerid, "This is not your vehicle.");
				if(!Garage_IsOwner(playerid, id)) return SendErrorMessage(playerid, "This garage isn't owned by you.");
				if(IsAPlane(GetPlayerVehicleID(playerid)) || IsAHelicopter(GetPlayerVehicleID(playerid)) || IsLoadableVehicle(GetPlayerVehicleID(playerid))) return SendErrorMessage(playerid, "Can't loaded this vehicle.");
				if(GarageInfo[id][garageInside] >= GarageInfo[id][garageType]) return SendErrorMessage(playerid, "Can't put more vehicle to this garage.");

				GarageInfo[id][garageInside] ++;

				VehicleData[vehicleid][vehInterior] = GARAGE_INTERIOR+GarageInfo[id][garageType];
				VehicleData[vehicleid][vehVirtual] = GarageInfo[id][garageID]+1000;

				SetVehiclePos(VehicleData[vehicleid][vehVehicleID], GarageInfo[id][garageLocInt][0], GarageInfo[id][garageLocInt][1], GarageInfo[id][garageLocInt][2]);
				SetVehicleZAngle(VehicleData[vehicleid][vehVehicleID], GarageInfo[id][garageLocInt][3]);

				LinkVehicleToInterior(VehicleData[vehicleid][vehVehicleID], GARAGE_INTERIOR+GarageInfo[id][garageType]);
				SetVehicleVirtualWorld(VehicleData[vehicleid][vehVehicleID], VehicleData[vehicleid][vehVirtual]);

				SetPlayerInterior(playerid, GARAGE_INTERIOR+GarageInfo[id][garageType]);
				SetPlayerVirtualWorld(playerid, GarageInfo[id][garageID]+1000);

				Vehicle_Save(vehicleid);
				Garage_Sync(id);

				PlayerData[playerid][pGarage] = GarageInfo[id][garageID];
				SetCameraBehindPlayer(playerid);

				SetPlayerWeather(playerid, 8);
				SetPlayerTime(playerid, 20, 0);
			}
			else SendErrorMessage(playerid, "Harus kendaraan pribadi untuk menyimpan kedalam garasi!");
		}
		else 
		{
			SetPlayerPosEx(playerid, GarageInfo[id][garageLocInt][0], GarageInfo[id][garageLocInt][1], GarageInfo[id][garageLocInt][2]), SetPlayerFacingAngle(playerid, GarageInfo[id][garageLocInt][3]);
			SetPlayerInterior(playerid, GARAGE_INTERIOR+GarageInfo[id][garageType]);
			SetPlayerVirtualWorld(playerid, GarageInfo[id][garageID]+1000);
			PlayerData[playerid][pGarage] = GarageInfo[id][garageID];
			SetCameraBehindPlayer(playerid);
		}
	}
	else if(!strcmp(category, "sell"))
	{
		if((id = Garage_Nearest(playerid)) == -1) return SendErrorMessage(playerid, "You're not in nearest any garage.");
		if(!Garage_IsOwner(playerid, id)) return SendErrorMessage(playerid, "This garage isn't owned by you.");

		new 
			userid,
			price;

		if(GarageInfo[id][garageHouseLink]) 
			return SendErrorMessage(playerid, "This garage can't sell by yourself, sell your house to sell this garage too.");
		
		if(GarageInfo[id][garageInside]) 
			return SendErrorMessage(playerid, "Take out all vehicle from this garage.");
		
		if(sscanf(string, "dd", userid, price)) 
			return SendSyntaxMessage(playerid, "/garage sell [userid] [price]");
		
		if(userid == playerid) 
			return SendErrorMessage(playerid, "This garage owned by you!.");
		
		if(userid == INVALID_PLAYER_ID || !IsPlayerNearPlayer(playerid, userid, 5.0)) 
			return SendErrorMessage(playerid, "That player is disconnected or not near you.");
		
		if(Garage_GetCount(userid) >= 2) 
			return SendErrorMessage(playerid, "That player have two garage now!.");
		
		if(price < 0) 
			return SendErrorMessage(playerid, "Price can't under 0.");

		PlayerData[userid][pGarageSeller] = playerid;
        PlayerData[userid][pGarageOffered] = id;
        PlayerData[userid][pGarageValue] = price;

        SendServerMessage(playerid, "You have requested %s to purchase your garage (%s).", ReturnName(userid, 0), FormatNumber(price));
        SendServerMessage(userid, "%s has offered you their garage for %s (type \"/garage approve\" to accept).", ReturnName(playerid, 0), FormatNumber(price));
	}
	else if(!strcmp(category, "abandon"))
	{
		if((id = Garage_Nearest(playerid)) == -1) return SendErrorMessage(playerid, "You're not in nearest any garage.");
		if(!Garage_IsOwner(playerid, id)) return SendErrorMessage(playerid, "This garage isn't owned by you.");
		if(GarageInfo[id][garageHouseLink]) return SendErrorMessage(playerid, "Can't abandon this garage, this garage linked to other house id.");

		new 
			confirm[8];

		if(GarageInfo[id][garageInside]) return SendErrorMessage(playerid, "Keluarkan semua kendaraan anda terlebih dahulu!.");
		if(sscanf(string, "s[8]", confirm)) return SendSyntaxMessage(playerid, "/garage abandon 'confirm'");

		GarageInfo[id][garageOwnerId] = 0;
		Garage_Sync(id);

		SendServerMessage(playerid, "Kamu telah menghapus garage tersebut.");
        Log_Save(E_LOG_GARAGE, sprintf("[%s] %s telah menghapus garage ID: %d.", ReturnDate(), ReturnName(playerid), id));
	}
	else if(!strcmp(category, "approve"))
	{
		if(PlayerData[playerid][pGarageSeller] == INVALID_PLAYER_ID) return SendErrorMessage(playerid, "No one sell garage for you.");

		new
            sellerid = PlayerData[playerid][pGarageSeller],
            garageid = PlayerData[playerid][pGarageOffered],
            price = PlayerData[playerid][pGarageValue];

        if(!IsPlayerNearPlayer(playerid, sellerid, 6.0)) return SendErrorMessage(playerid, "You are not near that player.");
        if(GetMoney(playerid) < price) return SendErrorMessage(playerid, "You have insufficient funds to purchase this garage.");
        if(Garage_Nearest(playerid) != garageid) return SendErrorMessage(playerid, "You must be near the garage to purchase it.");
        if(!Garage_IsOwner(sellerid, garageid)) return SendErrorMessage(playerid, "This garage offer is no longer valid.");

        SendServerMessage(playerid, "You have successfully purchased %s's garage for %s.", ReturnName(sellerid, 0), FormatNumber(price));
        SendServerMessage(sellerid, "%s has successfully purchased your garage for %s.", ReturnName(playerid, 0), FormatNumber(price));

        format(GarageInfo[garageid][garageOwner], MAX_PLAYER_NAME, ReturnName(playerid, 0));
        GarageInfo[garageid][garageOwnerId] = GetPlayerSQLID(playerid);

        Garage_Sync(garageid);

        GiveMoney(playerid, -price);
        GiveMoney(sellerid, price);

        Log_Save(E_LOG_OFFER, sprintf("[%s] %s (%s) has sold a garage to %s (%s) for %s.", ReturnDate(), ReturnName(playerid, 0), AccountData[playerid][pIP], ReturnName(sellerid, 0), AccountData[sellerid][pIP], FormatNumber(price)));

        PlayerData[playerid][pGarageSeller] = INVALID_PLAYER_ID;
        PlayerData[playerid][pGarageOffered] = -1;
        PlayerData[playerid][pGarageValue] = 0;
	}
	else if(!strcmp(category, "lock"))
	{
		if((id = (Garage_Inside(playerid) == -1) ? (Garage_Nearest(playerid)) : (Garage_Inside(playerid))) != -1 && Garage_IsOwner(playerid, id))
		{
			if(!GarageInfo[id][garageLock]) GarageInfo[id][garageLock] = true;
			else GarageInfo[id][garageLock] = false;

			SendServerMessage(playerid, "You have %s this garage.", GarageInfo[id][garageLock] ? ("Lock") : ("Unlock"));
			Garage_Sync(id);
			return 1;
		}
		SendErrorMessage(playerid, "You're not inside/outside your garage.");
	}
	else if(!strcmp(category, "exit"))
	{
		if((id = Garage_Inside(playerid)) != -1 && IsPlayerInRangeOfPoint(playerid, 4, GarageInfo[id][garageLocInt][0], GarageInfo[id][garageLocInt][1], GarageInfo[id][garageLocInt][2]))
		{
			if(IsPlayerInAnyVehicle(playerid))
			{
				if(GetPlayerState(playerid) != PLAYER_STATE_DRIVER) return SendErrorMessage(playerid, "You must in driver to enter this garage.");

				static 
					vehicleid = -1;

				if((vehicleid = GetPlayerVehicleID(playerid)) != -1)
				{
					if(!Vehicle_IsOwned(playerid, vehicleid)) return SendErrorMessage(playerid, "This is not your vehicle.");
					if(!Garage_IsOwner(playerid, id)) return SendErrorMessage(playerid, "This garage isn't owned by you.");

					VehicleData[vehicleid][vehGarage] = 0;
					GarageInfo[id][garageInside] --;

					VehicleData[vehicleid][vehInterior] = 0;
					VehicleData[vehicleid][vehVirtual] = 0;

					SetVehiclePos(VehicleData[vehicleid][vehVehicleID], GarageInfo[id][garageLoc][0], GarageInfo[id][garageLoc][1], GarageInfo[id][garageLoc][2]);
					SetVehicleZAngle(VehicleData[vehicleid][vehVehicleID], GarageInfo[id][garageLoc][3]);

					LinkVehicleToInterior(VehicleData[vehicleid][vehVehicleID], 0);
					SetVehicleVirtualWorld(VehicleData[vehicleid][vehVehicleID], 0);

					SetPlayerInterior(playerid, 0);
					SetPlayerVirtualWorld(playerid, 0);

					Garage_Sync(id);

					PlayerData[playerid][pGarage] = -1;
					SetCameraBehindPlayer(playerid);
				}
			}
			else 
			{
				SetPlayerPosEx(playerid, GarageInfo[id][garageLoc][0], GarageInfo[id][garageLoc][1], GarageInfo[id][garageLoc][2]), SetPlayerFacingAngle(playerid, GarageInfo[id][garageLoc][3]);

				SetPlayerInterior(playerid, 0);
				SetPlayerVirtualWorld(playerid, 0);
				PlayerData[playerid][pGarage] = -1;
				SetCameraBehindPlayer(playerid);
			}
			return 1;
		}
		SendErrorMessage(playerid, "You're not in nearest any garage.");
	}
	return 1;
}