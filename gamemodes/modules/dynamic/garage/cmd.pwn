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
    if (CheckAdmin(playerid, 5))
        return PermissionError(playerid);

    static garage_id;

    if (sscanf(params, "d", garage_id)) return SendErrorMessage(playerid, "/destroygarage [garage id]");
    if (!GarageInfo[garage_id][garageExists]) return SendErrorMessage(playerid, "Invalid garage id.");

    SendServerMessage(playerid, "You have successfully destroy garage ID: %d.", garage_id);
    Garage_Destroy(garage_id);
    return 1;
}

CMD:editgarage(playerid, params[])
{
    if (CheckAdmin(playerid, 5))
        return PermissionError(playerid);

    new string[128],
        garage_id,
        category[10];

    if (sscanf(params, "ds[10]S()[128]", garage_id, category, string)) return SendSyntaxMessage(playerid, "/editgarage [id] [location/price/type/lock/sell/houselink]");
    if (!GarageInfo[garage_id][garageExists]) return SendErrorMessage(playerid, "Invalid garage id.");

    if (!strcmp(category, "location"))
    {
        GetPlayerPos(playerid, GarageInfo[garage_id][garageLoc][0], GarageInfo[garage_id][garageLoc][1], GarageInfo[garage_id][garageLoc][2]);
        GetPlayerFacingAngle(playerid, GarageInfo[garage_id][garageLoc][3]);

        Garage_Sync(garage_id);

        SendServerMessage(playerid, "You have successfully edit location of garage id %d", garage_id);
    }
    else if (!strcmp(category, "price"))
    {
        new price;

        if (sscanf(string, "d", price)) return SendSyntaxMessage(playerid, "/editgarage garage_id price [value]");
        if (price < 1) return SendErrorMessage(playerid, "Price minimum is $1.");

        GarageInfo[garage_id][garagePrice] = price;
        Garage_Sync(garage_id);

        SendServerMessage(playerid, "You have successfully edit price of garage id %d to %s", garage_id, FormatNumber(price));
    }
    else if (!strcmp(category, "type"))
    {
        new type;

        if (sscanf(string, "d", type)) return SendSyntaxMessage(playerid, "/editgarage garage_id type [1-3]");
        if (type < 1 || type > 3) return SendErrorMessage(playerid, "Invalid type garage id.");

        GarageInfo[garage_id][garageType] = type;
        Garage_Sync(garage_id);

        SendServerMessage(playerid, "You have successfully edit type of garage id %d to %d", garage_id, type);
    }
    else if (!strcmp(category, "lock"))
    {
        new lock;

        if (sscanf(string, "d", lock)) return SendSyntaxMessage(playerid, "/editgarage garage_id lock [0/1]");
        if (lock < 0 || lock > 1) return SendErrorMessage(playerid, "Only 0 (unlock) or 1 (lock).");

        GarageInfo[garage_id][garageLock] = lock;
        Garage_Sync(garage_id);

        SendServerMessage(playerid, "You have successfully %s of garage id %d.", GarageInfo[garage_id][garageLock] ? ("Lock") : ("Unlock"), garage_id);
    }
    else if (!strcmp(category, "houselink"))
    {
        new houseid;

        if (sscanf(string, "d", houseid)) return SendSyntaxMessage(playerid, "/editgarage garage_id houselink [houseid]");
        if (!HouseData[houseid][houseExists]) return SendErrorMessage(playerid, "Invalid house garage_id.");

        GarageInfo[garage_id][garageHouseLink] = HouseData[houseid][houseID];
        if (HouseData[houseid][houseOwner])
        {
            GarageInfo[garage_id][garageOwnerId] = HouseData[houseid][houseOwner];
            format(GarageInfo[garage_id][garageOwner], MAX_PLAYER_NAME, HouseData[houseid][houseOwnerName]);
        }

        Garage_Sync(garage_id);

        SendServerMessage(playerid, "You have successfully linked this garage to house id %d.", houseid);
    }
    else if (!strcmp(category, "sell"))
    {
        if (!GarageInfo[garage_id][garageOwnerId]) return SendErrorMessage(playerid, "This garage is for sale!.");
        if (GarageInfo[garage_id][garageHouseLink]) return SendErrorMessage(playerid, "This garage linked to houseid!.");

        mysql_tquery(g_iHandle, sprintf("UPDATE `player_vehicles` SET `Garage`= 0, Pos1 = '%.01f', Pos2 = '%.01f', Pos3 = '%.01f', Pos4 = '%.01f' WHERE Garage='%d'",
                                        GarageInfo[garage_id][garageLoc][0],  GarageInfo[garage_id][garageLoc][1], GarageInfo[garage_id][garageLoc][2], GarageInfo[garage_id][garageLoc][3],
                                        GarageInfo[garage_id][garageID])
                    );

        GarageInfo[garage_id][garageOwnerId] = 0;
        GarageInfo[garage_id][garageOwner] = EOS;
        GarageInfo[garage_id][garageLock] = 1;
        GarageInfo[garage_id][garageInside] = 0;
        Garage_Sync(garage_id);
    }
    Garage_Save(garage_id);
    return 1;
}

/*Command List Player*/
CMD:garage(playerid, params[])
{
    static string[128],
           garage_id = -1,
           category[10];

    if (sscanf(params, "s[10]S()[128]", category, string)) return SendSyntaxMessage(playerid, "/garage [buy/enter/exit/lock/sell/approve/abandon]");

    if (!strcmp(category, "buy"))
    {
        if ((garage_id = Garage_Nearest(playerid)) == -1) return SendErrorMessage(playerid, "You're not in nearest any garage.");
        if (GarageInfo[garage_id][garageOwnerId]) return SendErrorMessage(playerid, "This garage owned by someone.");
        if (Garage_GetCount(playerid) >= 2) return SendErrorMessage(playerid, "You have two garage now!.");
        if (GetMoney(playerid) < GarageInfo[garage_id][garagePrice]) return SendErrorMessage(playerid, "You dont have enough money to buy this garage.");
        if (GarageInfo[garage_id][garageHouseLink]) return SendErrorMessage(playerid, "This garage linked to the house, buy house near this garage to owned this garage.");

        GarageInfo[garage_id][garageOwnerId] = PlayerData[playerid][pID];
        format(GarageInfo[garage_id][garageOwner], MAX_PLAYER_NAME, "%s", ReturnName(playerid, 0));
        GiveMoney(playerid, -GarageInfo[garage_id][garagePrice], ECONOMY_ADD_SUPPLY, "bought garage");

        SendServerMessage(playerid, "You've bough this garage.");

        Garage_Sync(garage_id);
    }
    else if (!strcmp(category, "enter"))
    {
        if ((garage_id = Garage_Nearest(playerid)) == -1) return SendErrorMessage(playerid, "You're not in nearest any garage.");
        if (GarageInfo[garage_id][garageLock]) return GameTextForPlayer(playerid, "~r~Locked", 1500, 1);
        if (IsPlayerInAnyVehicle(playerid))
        {
            static vehicleid = -1;

            if ((vehicleid = GetPlayerVehicleID(playerid)) != -1)
            {
                if (!Vehicle_IsOwned(playerid, vehicleid)) return SendErrorMessage(playerid, "This is not your vehicle.");
                if (!Garage_IsOwner(playerid, garage_id)) return SendErrorMessage(playerid, "This garage isn't owned by you.");
                if (IsAPlane(GetPlayerVehicleID(playerid)) || IsAHelicopter(GetPlayerVehicleID(playerid)) || IsLoadableVehicle(GetPlayerVehicleID(playerid))) return SendErrorMessage(playerid, "Can't loaded this vehicle.");
                if (GarageInfo[garage_id][garageInside] >= GarageInfo[garage_id][garageType]) return SendErrorMessage(playerid, "Can't put more vehicle to this garage.");

                GarageInfo[garage_id][garageInside] ++;
                VehicleData[vehicleid][vehGarage] = 1;
                VehicleData[vehicleid][vehState] = 8;

                VehicleData[vehicleid][vehInterior] = GarageInfo[garage_id][Interior];
                VehicleData[vehicleid][vehVirtual] = GarageInfo[garage_id][garageID] + 1000;

                SetVehiclePos(VehicleData[vehicleid][vehVehicleID], GarageInfo[garage_id][garageLocInt][0], GarageInfo[garage_id][garageLocInt][1], GarageInfo[garage_id][garageLocInt][2]);
                SetVehicleZAngle(VehicleData[vehicleid][vehVehicleID], GarageInfo[garage_id][garageLocInt][3]);

                LinkVehicleToInterior(VehicleData[vehicleid][vehVehicleID], GarageInfo[garage_id][Interior]);
                SetVehicleVirtualWorld(VehicleData[vehicleid][vehVehicleID], VehicleData[vehicleid][vehVirtual]);

                SetPlayerInterior(playerid, GarageInfo[garage_id][Interior]);
                SetPlayerVirtualWorld(playerid, GarageInfo[garage_id][garageID] + 1000);

                Vehicle_Save(vehicleid);
                Garage_Sync(garage_id);

                PlayerData[playerid][pGarage] = GarageInfo[garage_id][garageID];
                SetCameraBehindPlayer(playerid);

                SetPlayerWeather(playerid, 8);
                SetPlayerTime(playerid, 20, 0);
            }
            else SendErrorMessage(playerid, "Harus kendaraan pribadi untuk menyimpan kedalam garasi!");
        }
        else
        {
            SetPlayerPosEx(playerid, GarageInfo[garage_id][garageLocInt][0], GarageInfo[garage_id][garageLocInt][1], GarageInfo[garage_id][garageLocInt][2]), SetPlayerFacingAngle(playerid, GarageInfo[garage_id][garageLocInt][3]);
            SetPlayerInterior(playerid, GarageInfo[garage_id][Interior]);
            SetPlayerVirtualWorld(playerid, GarageInfo[garage_id][garageID] + 1000);
            PlayerData[playerid][pGarage] = GarageInfo[garage_id][garageID];
            SetCameraBehindPlayer(playerid);
        }
    }
    else if (!strcmp(category, "sell"))
    {
        if ((garage_id = Garage_Nearest(playerid)) == -1) return SendErrorMessage(playerid, "You're not in nearest any garage.");
        if (!Garage_IsOwner(playerid, garage_id)) return SendErrorMessage(playerid, "This garage isn't owned by you.");

        new userid,
            price;

        if (GarageInfo[garage_id][garageHouseLink])
            return SendErrorMessage(playerid, "This garage can't sell by yourself, sell your house to sell this garage too.");

        if (GarageInfo[garage_id][garageInside])
            return SendErrorMessage(playerid, "Take out all vehicle from this garage.");

        if (sscanf(string, "dd", userid, price))
            return SendSyntaxMessage(playerid, "/garage sell [userid] [price]");

        if (userid == playerid)
            return SendErrorMessage(playerid, "This garage owned by you!.");

        if (userid == INVALID_PLAYER_ID || !IsPlayerNearPlayer(playerid, userid, 5.0))
            return SendErrorMessage(playerid, "That player is disconnected or not near you.");

        if (Garage_GetCount(userid) >= 2)
            return SendErrorMessage(playerid, "That player have two garage now!.");

        if (price < 0)
            return SendErrorMessage(playerid, "Price can't under 0.");

        PlayerData[userid][pGarageSeller] = playerid;
        PlayerData[userid][pGarageOffered] = garage_id;
        PlayerData[userid][pGarageValue] = price;

        SendServerMessage(playerid, "You have requested %s to purchase your garage (%s).", ReturnName(userid, 0), FormatNumber(price));
        SendServerMessage(userid, "%s has offered you their garage for %s (type \"/garage approve\" to accept).", ReturnName(playerid, 0), FormatNumber(price));
    }
    else if (!strcmp(category, "abandon"))
    {
        if ((garage_id = Garage_Nearest(playerid)) == -1) return SendErrorMessage(playerid, "You're not in nearest any garage.");
        if (!Garage_IsOwner(playerid, garage_id)) return SendErrorMessage(playerid, "This garage isn't owned by you.");
        if (GarageInfo[garage_id][garageHouseLink]) return SendErrorMessage(playerid, "Can't abandon this garage, this garage linked to other house garage_id.");

        new confirm[8];

        if (GarageInfo[garage_id][garageInside]) return SendErrorMessage(playerid, "Keluarkan semua kendaraan anda terlebih dahulu!.");
        if (sscanf(string, "s[8]", confirm)) return SendSyntaxMessage(playerid, "/garage abandon 'confirm'");

        GarageInfo[garage_id][garageOwnerId] = 0;
        Garage_Sync(garage_id);

        SendServerMessage(playerid, "Kamu telah menghapus garage tersebut.");
        Log_Save(E_LOG_GARAGE, sprintf("[%s] %s telah menghapus garage ID: %d.", ReturnDate(), ReturnName(playerid), garage_id));
    }
    else if (!strcmp(category, "approve"))
    {
        if (PlayerData[playerid][pGarageSeller] == INVALID_PLAYER_ID) return SendErrorMessage(playerid, "No one sell garage for you.");

        new sellerid = PlayerData[playerid][pGarageSeller],
            garageid = PlayerData[playerid][pGarageOffered],
            price = PlayerData[playerid][pGarageValue];

        if (!IsPlayerNearPlayer(playerid, sellerid, 6.0)) return SendErrorMessage(playerid, "You are not near that player.");
        if (GetMoney(playerid) < price) return SendErrorMessage(playerid, "You have insufficient funds to purchase this garage.");
        if (Garage_Nearest(playerid) != garageid) return SendErrorMessage(playerid, "You must be near the garage to purchase it.");
        if (!Garage_IsOwner(sellerid, garageid)) return SendErrorMessage(playerid, "This garage offer is no longer valid.");

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
    else if (!strcmp(category, "lock"))
    {
        if ((garage_id = (Garage_Inside(playerid) == -1) ? (Garage_Nearest(playerid)) : (Garage_Inside(playerid))) != -1 && Garage_IsOwner(playerid, garage_id))
        {
            if (!GarageInfo[garage_id][garageLock]) GarageInfo[garage_id][garageLock] = true;
            else GarageInfo[garage_id][garageLock] = false;

            SendServerMessage(playerid, "You have %s this garage.", GarageInfo[garage_id][garageLock] ? ("Lock") : ("Unlock"));
            Garage_Sync(garage_id);
            return 1;
        }
        SendErrorMessage(playerid, "You're not inside/outside your garage.");
    }
    else if (!strcmp(category, "exit"))
    {
        if ((garage_id = Garage_Inside(playerid)) != -1 && IsPlayerInRangeOfPoint(playerid, 4, GarageInfo[garage_id][garageLocInt][0], GarageInfo[garage_id][garageLocInt][1], GarageInfo[garage_id][garageLocInt][2]))
        {
            if (IsPlayerInAnyVehicle(playerid))
            {
                if (GetPlayerState(playerid) != PLAYER_STATE_DRIVER) return SendErrorMessage(playerid, "You must in driver to enter this garage.");

                static vehicleid = -1;

                if ((vehicleid = GetPlayerVehicleID(playerid)) != -1)
                {
                    if (!Vehicle_IsOwned(playerid, vehicleid)) return SendErrorMessage(playerid, "This is not your vehicle.");
                    if (!Garage_IsOwner(playerid, garage_id)) return SendErrorMessage(playerid, "This garage isn't owned by you.");

                    VehicleData[vehicleid][vehGarage] = 0;
                    VehicleData[vehicleid][vehState] = 1;
                    GarageInfo[garage_id][garageInside] --;

                    VehicleData[vehicleid][vehInterior] = 0;
                    VehicleData[vehicleid][vehVirtual] = 0;

                    SetVehiclePos(VehicleData[vehicleid][vehVehicleID], GarageInfo[garage_id][garageLoc][0], GarageInfo[garage_id][garageLoc][1], GarageInfo[garage_id][garageLoc][2]);
                    SetVehicleZAngle(VehicleData[vehicleid][vehVehicleID], GarageInfo[garage_id][garageLoc][3]);

                    LinkVehicleToInterior(VehicleData[vehicleid][vehVehicleID], 0);
                    SetVehicleVirtualWorld(VehicleData[vehicleid][vehVehicleID], 0);

                    SetPlayerInterior(playerid, 0);
                    SetPlayerVirtualWorld(playerid, 0);

                    Garage_Sync(garage_id);

                    PlayerData[playerid][pGarage] = -1;
                    SetCameraBehindPlayer(playerid);
                }
            }
            else
            {
                SetPlayerPosEx(playerid, GarageInfo[garage_id][garageLoc][0], GarageInfo[garage_id][garageLoc][1], GarageInfo[garage_id][garageLoc][2]), SetPlayerFacingAngle(playerid, GarageInfo[garage_id][garageLoc][3]);

                SetPlayerInterior(playerid, 0);
                SetPlayerVirtualWorld(playerid, 0);
                PlayerData[playerid][pGarage] = -1;
                SetCameraBehindPlayer(playerid);
            }
            return 1;
        }
        SendErrorMessage(playerid, "You're not in nearest any garage.");
    }
    else if(!strcmp(category, "interior"))
    {
        GetPlayerPos(playerid, GarageInfo[garage_id][garageLocInt][0], GarageInfo[garage_id][garageLocInt][1], GarageInfo[garage_id][garageLocInt][2]);
        GetPlayerFacingAngle(playerid, GarageInfo[garage_id][garageLocInt][3]);

        GarageInfo[garage_id][Interior] = GetPlayerInterior(playerid);

        foreach (new i : Player)
        {
            if(PlayerData[i][pGarage] == GarageInfo[garage_id][garageID])
            {
                SetPlayerPos(i, GarageInfo[garage_id][garageLocInt][0], GarageInfo[garage_id][garageLocInt][1], GarageInfo[garage_id][garageLocInt][2]);
                SetPlayerFacingAngle(i, GarageInfo[garage_id][garageLocInt][3]);

                SetPlayerInterior(i, GarageInfo[garage_id][Interior]);
                SetCameraBehindPlayer(i);
            }
        }
        Garage_Sync(garage_id);
        Garage_Save(garage_id);
        SendAdminMessage(X11_TOMATO_1, "AdmCmd: %s has adjusted the interior spawn of garage ID: %d.", ReturnName(playerid, 0), garage_id);
        return 1;
    }
    return 1;
}