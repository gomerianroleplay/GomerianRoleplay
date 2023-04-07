CMD:addfurnstore(playerid, params[])
{
	if(CheckAdmin(playerid, 9))
        return PermissionError(playerid);

	static
		price;

	if(sscanf(params, "d", price))
		return SendSyntaxMessage(playerid, "/addfurnstore [price]");

	new id = FurnStore_Create(playerid, price);

	if(id == -1)
		return SendErrorMessage(playerid, "Tidak ada slot furniture store lagi.");

	SendServerMessage(playerid, "Furniture store id %d telah di buat, gunakan /editfurnstore untuk mengubah sesuatu.", id);
	return 1;
}

CMD:destroyfurnstore(playerid, params[])
{
	if(CheckAdmin(playerid, 9))
        return PermissionError(playerid);

	static
		id;

	if(sscanf(params, "d", id))
		return SendSyntaxMessage(playerid, "/destroyfurnstore [index]");

	if(!Iter_Contains(FurnStore, id))
		return SendErrorMessage(playerid, "Invalid furnstore id.");

	foreach(new i : FurnObject) if(FurnStore[i][furnStoreId] == storeData[id][storeID])
	{
		DestroyDynamic3DTextLabel(FurnStore[i][furnLabel]);
		DestroyDynamicObject(FurnStore[i][furnObject]);

		mysql_tquery(g_iHandle, sprintf("DELETE FROM `furnobject` WHERE id=%d", FurnStore[i][furnID]));

		FurnStore[i][furnID] = 0;
		FurnStore[i][furnStoreId] = 0;

		Iter_Remove(FurnObject, i);
	}

	mysql_tquery(g_iHandle, sprintf("DELETE FROM furnstore WHERE id = %d", storeData[id][storeID]));

	storeData[id][storeID] = 0;
	storeData[id][storeOwner] = 0;

	DestroyDynamicPickup(storeData[id][storePickup]);
	DestroyDynamic3DTextLabel(storeData[id][storeLabel]);
	DestroyDynamicCP(storeData[id][storeCP]);

	Iter_Remove(FurnStore, id);	

	SendServerMessage(playerid, "Kamu telah menghapus furnstore id %d", id);
	return 1;
}

CMD:editfurnstore(playerid, params[])
{
	if(CheckAdmin(playerid, 9))
        return PermissionError(playerid);

	static
		id,
		opsi[32],
		extend_str[128];

	if(sscanf(params, "ds[32]S()[128]", id, opsi, extend_str))
		return SendSyntaxMessage(playerid, "/editfurnstore [index] [location/price/vault/resetemployee/sell]");

	if(!Iter_Contains(FurnStore, id))
		return SendErrorMessage(playerid, "Invalid furnstore id.");

	if(!strcmp(opsi, "location"))
	{
		GetPlayerPos(playerid, storeData[id][storePos][0], storeData[id][storePos][1], storeData[id][storePos][2]);

		FurnStore_Refresh(id);
		FurnStore_Save(id);
	}
	else if(!strcmp(opsi, "price"))
	{
		new price;

		if(sscanf(extend_str, "d", price))
			return SendSyntaxMessage(playerid, "/editfurnstore [id] [price]");

		storeData[id][storePrice] = price;
		SendServerMessage(playerid, "You've update price for furnstore id #%d to %d.", id, price);

		FurnStore_Refresh(id);
		FurnStore_Save(id);
	}
	else if(!strcmp(opsi, "vault"))
	{
		new vault;

		if(sscanf(extend_str, "d", vault))
			return SendSyntaxMessage(playerid, "/editfurnstore [id] [vault]");

		storeData[id][storeVault] = vault;
		SendServerMessage(playerid, "You've update vault for furnstore id #%d to %s.", id, FormatNumber(vault));

		FurnStore_Refresh(id);
		FurnStore_Save(id);
	}
	else if(!strcmp(opsi, "resetemployee"))
	{
		storeData[id][storeEmploye][0] = storeData[id][storeEmploye][1] = storeData[id][storeEmploye][2] = 0;
		SendServerMessage(playerid, "You've reset employee for furnstore id #%d", id);
		FurnStore_Save(id);
	}
	else if(!strcmp(opsi, "sell"))
	{
		if(CheckAdmin(playerid, 9))
            return PermissionError(playerid);

		if(!storeData[id][storeOwner])
			return SendErrorMessage(playerid, "There are no one owned this furnstore.");

		storeData[id][storeVault] = storeData[id][storeOwner] = 0;
		storeData[id][storeEmploye][0] = storeData[id][storeEmploye][1] = storeData[id][storeEmploye][2] = 0;
		format(storeData[id][storeOwnerName], MAX_PLAYER_NAME, "NONE");

		SendServerMessage(playerid, "You've selling furnstore id #%d.", id);

		FurnStore_Refresh(id);
		FurnStore_Save(id);
	}
	else if(!strcmp(opsi, "employee"))
	{
		if(CheckAdmin(playerid, 9))
            return PermissionError(playerid);

		ManageFurnStore[playerid] = id;
		Employee_List(playerid, id);
		SendServerMessage(playerid, "You've edit employee for furnstore id #%d", id);
	}
	else SendSyntaxMessage(playerid, "/editfurnstore [index] [location/price/vault/resetemployee/sell]");
	return 1;
}

CMD:buyfurnstore(playerid, params[])
{
	static
		id = -1;

	if((id = FurnStore_Nearest(playerid)) != -1)
	{
		if(GetMoney(playerid) < storeData[id][storePrice])
			return SendErrorMessage(playerid, "Uang kamu tidak mencukupi.");

		storeData[id][storeOwner] = GetPlayerSQLID(playerid);
		format(storeData[id][storeOwnerName], MAX_PLAYER_NAME, ReturnName2(playerid));

		FurnStore_Refresh(id);
		FurnStore_Save(id);

		GiveMoney(playerid, -storeData[id][storePrice], ECONOMY_ADD_SUPPLY, "bought furniture store");
		SendServerMessage(playerid, "Kamu telah membeli furniture store baru!.");
		return 1;
	}
	SendErrorMessage(playerid, "Kamu tidak berada di dekat furniture store.");
	return 1;
}

CMD:fsm(playerid, params[])
{
	static
		id = -1;

	if((id = FurnStore_Inside(playerid)) != -1)
	{
		if(FurnStore_IsOwner(playerid, id) || FurnStore_IsEmployee(playerid, id))
		{
			Dialog_Show(playerid, FurnStoreMenu, DIALOG_STYLE_LIST, "Furniture Store Menu", "Exhibits%s", "Select", "Close", FurnStore_IsOwner(playerid, id) ? ("\nEmployee\nBank\nChange Name") : (""));
			ManageFurnStore[playerid] = id;
			return 1;
		}
		SendErrorMessage(playerid, "Kamu bukan pemilik/pegawai furniture store ini (%d-%d).", FurnStore_IsOwner(playerid, id), FurnStore_IsEmployee(playerid, id));
		return 1;
	}
	SendErrorMessage(playerid, "Kamu tidak berada di dalam furniture store.");
	return 1;
}

CMD:gotofurnstore(playerid, params[])
{
	if(CheckAdmin(playerid, 9))
        return PermissionError(playerid);

	static
		index;

	if(sscanf(params, "d", index))
		return SendSyntaxMessage(playerid, "/gotofurnstore [id]");

	if(!Iter_Contains(FurnStore, index))
		return SendErrorMessage(playerid, "Invalid furnstore id.");

	SetPlayerPos(playerid, storeData[index][storePos][0], storeData[index][storePos][1], storeData[index][storePos][2]);
	SetPlayerInterior(playerid, 0);
	SetPlayerVirtualWorld(playerid, 0);
	SendServerMessage(playerid, "You've teleported to furn store id %d.", index);
	return 1;
}

CMD:buyfurniture(playerid, params[])
{
	static
		id = -1;

	if((id = FurnStore_Inside(playerid)) != -1)
	{
		if(!IsPlayerInRangeOfPoint(playerid, 3.0, 1470.3416,1770.1165,10.9062))
			return SendErrorMessage(playerid, "Kamu harus berada di buy point.");

		new buy[255],
			count = 0;

		strcat(buy, "#\tModel\tPrice\n");
		foreach(new index : FurnObject) if(FurnStore[index][furnStoreId] == storeData[id][storeID] && FurnStore[index][furnStock] > 0)
		{
			strcat(buy, sprintf("{000000}%d\t%s\t%s\n", index, FurnStore[index][furnName], FormatNumber(FurnStore[index][furnPrice])));
			count++;
		}
		if(count) Dialog_Show(playerid, BuyFurniture, DIALOG_STYLE_TABLIST_HEADERS, "Buy Furniture", buy, "Select", "Close");
		else SendErrorMessage(playerid, "Tidak ada furniture yang dapat di jual sekarang.");
	}
	else SendErrorMessage(playerid, "You're not inside furniture store.");
	return 1;
}