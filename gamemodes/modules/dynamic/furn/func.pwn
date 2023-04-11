
Function:FurnObject_Load(index)
{
	new query[32];

	for(new i = 0; i != cache_num_rows(); i++)
	{
		Iter_Add(FurnObject, i);

		cache_get_field_content(i, "name", FurnStore[i][furnName], 32);

		cache_get_field_content(i, "materials", query, 32);
        sscanf(query, "p<|>dddddddddddddddd", 
        	FurnStore[i][furnMaterials][0],
			FurnStore[i][furnMaterials][1],
			FurnStore[i][furnMaterials][2],
			FurnStore[i][furnMaterials][3],
			FurnStore[i][furnMaterials][4],
			FurnStore[i][furnMaterials][5],
			FurnStore[i][furnMaterials][6],
			FurnStore[i][furnMaterials][7],
			FurnStore[i][furnMaterials][8],
			FurnStore[i][furnMaterials][9],
			FurnStore[i][furnMaterials][10],
			FurnStore[i][furnMaterials][11],
			FurnStore[i][furnMaterials][12],
			FurnStore[i][furnMaterials][13],
			FurnStore[i][furnMaterials][14],
			FurnStore[i][furnMaterials][15]
		);

        FurnStore[i][furnID] = cache_get_field_int(i, "id");
		FurnStore[i][furnModel] = cache_get_field_int(i, "model");

		FurnStore[i][furnPos][0] = cache_get_field_float(i, "x");
		FurnStore[i][furnPos][1] = cache_get_field_float(i, "y");
		FurnStore[i][furnPos][2] = cache_get_field_float(i, "z");
		FurnStore[i][furnRot][0] = cache_get_field_float(i, "rx");
		FurnStore[i][furnRot][1] = cache_get_field_float(i, "ry");
		FurnStore[i][furnRot][2] = cache_get_field_float(i, "rz");
		
		FurnStore[i][furnPrice] = cache_get_field_int(i, "price");
		FurnStore[i][furnStock] = cache_get_field_int(i, "stock");
		FurnStore[i][furnStoreId] = cache_get_field_int(i, "storeid");

		FurnObject_Refresh(i);
	}
	printf("Loaded furnobject data - %d count.", cache_num_rows());
	return 1;
}

FurnObject_Save(index)
{
	if(Iter_Contains(FurnObject, index))
	{
		new query[500];

		format(query, sizeof(query), "UPDATE `furnobject` SET model=%d,name='%s',x=%.3f,y=%.3f,z=%.3f,rx=%.3f,ry=%.3f,rz=%.3f", 
			FurnStore[index][furnModel],
			FurnStore[index][furnName],
			FurnStore[index][furnPos][0],
			FurnStore[index][furnPos][1],
			FurnStore[index][furnPos][2],
			FurnStore[index][furnRot][0],
			FurnStore[index][furnRot][1],
			FurnStore[index][furnRot][2]
		);
		format(query, sizeof(query), "%s, price=%d,stock=%d,storeid=%d,materials='%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d' WHERE id=%d", 
			query,
			FurnStore[index][furnPrice],
			FurnStore[index][furnStock],
			FurnStore[index][furnStoreId],
			FurnStore[index][furnMaterials][0],
			FurnStore[index][furnMaterials][1],
			FurnStore[index][furnMaterials][2],
			FurnStore[index][furnMaterials][3],
			FurnStore[index][furnMaterials][4],
			FurnStore[index][furnMaterials][5],
			FurnStore[index][furnMaterials][6],
			FurnStore[index][furnMaterials][7],
			FurnStore[index][furnMaterials][8],
			FurnStore[index][furnMaterials][9],
			FurnStore[index][furnMaterials][10],
			FurnStore[index][furnMaterials][11],
			FurnStore[index][furnMaterials][12],
			FurnStore[index][furnMaterials][13],
			FurnStore[index][furnMaterials][14],
			FurnStore[index][furnMaterials][15],
			FurnStore[index][furnID]
		);
		mysql_tquery(g_iHandle, query);
	}
	return 1;
}

FurnObject_Sync(index)
{
	Streamer_SetFloatData(STREAMER_TYPE_OBJECT, FurnStore[index][furnObject], E_STREAMER_X, FurnStore[index][furnPos][0]);
    Streamer_SetFloatData(STREAMER_TYPE_OBJECT, FurnStore[index][furnObject], E_STREAMER_Y, FurnStore[index][furnPos][1]);
    Streamer_SetFloatData(STREAMER_TYPE_OBJECT, FurnStore[index][furnObject], E_STREAMER_Z, FurnStore[index][furnPos][2]);

    Streamer_SetFloatData(STREAMER_TYPE_OBJECT, FurnStore[index][furnObject], E_STREAMER_R_X, FurnStore[index][furnRot][0]);
    Streamer_SetFloatData(STREAMER_TYPE_OBJECT, FurnStore[index][furnObject], E_STREAMER_R_Y, FurnStore[index][furnRot][1]);
    Streamer_SetFloatData(STREAMER_TYPE_OBJECT, FurnStore[index][furnObject], E_STREAMER_R_Z, FurnStore[index][furnRot][2]);

    Streamer_SetIntData(STREAMER_TYPE_OBJECT, FurnStore[index][furnObject], E_STREAMER_MODEL_ID, FurnStore[index][furnModel]);

    for(new i = 0; i != MAX_MATERIALS; i++) if(FurnStore[index][furnMaterials][i] > 0)
	{
			SetDynamicObjectMaterial(FurnStore[index][furnObject], i, 
			GetTModel(FurnStore[index][furnMaterials][i]), 
			GetTXDName(FurnStore[index][furnMaterials][i]), 
			GetTextureName(FurnStore[index][furnMaterials][i]), 0
		);

	}
	return 1;
}

FurnObject_Refresh(index)
{
	if(Iter_Contains(FurnObject, index)) 
	{
		if(!IsValidDynamicObject(FurnStore[index][furnObject]))
		{
			FurnStore[index][furnObject] = CreateDynamicObject(FurnStore[index][furnModel], 
				FurnStore[index][furnPos][0], FurnStore[index][furnPos][1], FurnStore[index][furnPos][2], 
				FurnStore[index][furnRot][0], FurnStore[index][furnRot][1], FurnStore[index][furnRot][2], 
				(FurnStore[index][furnStoreId]+1), 3
			);
		}
		FurnObject_Sync(index);	    
			
		if(IsValidDynamic3DTextLabel(FurnStore[index][furnLabel]))
			DestroyDynamic3DTextLabel(FurnStore[index][furnLabel]);
		
		new string[100];
		format(string, sizeof(string), ""WHITE"[id: %d]\n"YELLOW"%s \n"WHITE"Price: "GREEN"%s \n"WHITE"Stock: "GREEN"%d", index, FurnStore[index][furnName], FormatNumber(FurnStore[index][furnPrice]), FurnStore[index][furnStock]);
		FurnStore[index][furnLabel] = CreateDynamic3DTextLabel(string, COLOR_BLUE, FurnStore[index][furnPos][0], FurnStore[index][furnPos][1], FurnStore[index][furnPos][2], 5, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, FurnStore[index][furnStoreId]+1, 3);

		foreach(new i : Player) if(SQL_IsLogged(i) && IsPlayerInRangeOfPoint(i, 5, FurnStore[index][furnPos][0], FurnStore[index][furnPos][1], FurnStore[index][furnPos][2])) {
			Streamer_Update(i);
		}
	}
	return 1;
}

FurnObject_List(playerid, index)
{
	if(Iter_Contains(FurnStore, index))
	{
		new count = 0,
	    	info[255];

	    strcat(info, "Furniture\tSlot (ID)\tDistance (meters)\n");
	    foreach(new i : FurnObject) if(FurnStore[i][furnStoreId] == storeData[index][storeID])
	    {
	    	strcat(info, sprintf("%s\t%d\t%.1f\n", FurnStore[i][furnName], i, GetPlayerDistanceFromPoint(playerid, FurnStore[i][furnPos][0], FurnStore[i][furnPos][1], FurnStore[i][furnPos][2])));
	    	ListedFurnObject[playerid][count++] = i;
	    }
	    if(count != MAX_FURNSTORE_OBJECT)
	    	strcat(info, "Add New\t\n");

	    Dialog_Show(playerid, ManageFurn, DIALOG_STYLE_TABLIST_HEADERS, "Exhibits", info, "Select", "Back");
	}
	return 1;
}

FurnObject_Category(playerid)
{
	new string[120];
	for (new i = 0; i < sizeof(g_aFurnitureTypes); i ++) {
        strcat(string, sprintf("%s\n", g_aFurnitureTypes[i]));
    }
    Dialog_Show(playerid, SelectType, DIALOG_STYLE_LIST, "Object Category", string, "Modify", "Cancel");
	return 1;
}

FurnObject_Count(index)
{
	new count = 0;

	foreach(new i : FurnObject) if(FurnStore[i][furnStoreId] == storeData[index][storeID]) {
		count++;
	}
	return count;
}

FurnObject_Add(playerid, objectid, index)
{
	if(FurnObject_Count(index) >= MAX_FURNSTORE_OBJECT) return -1;

	new id = Iter_Free(FurnObject),
		Float:x, Float:y, Float:z;

	GetPlayerPos(playerid, x, y, z);
	GetXYInFrontOfPlayer(playerid, x, y, 1.5);

	format(FurnStore[id][furnName], 32, "Unnamed");

	FurnStore[id][furnPos][0] = x;
	FurnStore[id][furnPos][1] = y;
	FurnStore[id][furnPos][2] = z;
	FurnStore[id][furnRot][0] = 0;
	FurnStore[id][furnRot][1] = 0;
	FurnStore[id][furnRot][2] = 0;

	FurnStore[id][furnModel] = objectid;
	FurnStore[id][furnStoreId] = storeData[index][storeID];
	FurnStore[id][furnPrice] = 0;
	FurnStore[id][furnStock] = 0;

	Iter_Add(FurnObject, id);

	mysql_tquery(g_iHandle, "INSERT INTO `furnobject`(`price`) VALUES (0)", "FurnObject_Created", "d", id);
	
	FurnObject_Refresh(id);
	Streamer_Update(playerid);
	return id;
}

Function:FurnObject_Created(index)
{
	FurnStore[index][furnID] = cache_insert_id();
	
	FurnObject_Save(index);
	return 1;
}

hook FurnStore_Load()
{
	for(new index = 0; index != cache_num_rows(); index++)
	{
		new id = Iter_Free(FurnStore);

		Iter_Add(FurnStore, index);

		storeData[id][storeID] = cache_get_field_int(index, "id");
		storeData[id][storeOwner] = cache_get_field_int(index, "owner");
		storeData[id][storePrice] = cache_get_field_int(index, "price");
		storeData[id][storeVault] = cache_get_field_int(index, "vault");
		storeData[id][storeEmploye][0] = cache_get_field_int(index, "employe1");
		storeData[id][storeEmploye][1] = cache_get_field_int(index, "employe2");
		storeData[id][storeEmploye][2] = cache_get_field_int(index, "employe3");

		cache_get_field_content(index, "name", storeData[id][storeName], 32);
		cache_get_field_content(index, "ownername", storeData[id][storeOwnerName], MAX_PLAYER_NAME);

		storeData[id][storePos][0] = cache_get_field_float(index, "x");
		storeData[id][storePos][1] = cache_get_field_float(index, "y");
		storeData[id][storePos][2] = cache_get_field_float(index, "z");

		storeData[id][storeIntPos][0] = cache_get_field_float(index, "i_x");
		storeData[id][storeIntPos][1] = cache_get_field_float(index, "i_y");
		storeData[id][storeIntPos][2] = cache_get_field_float(index, "i_z");

		FurnStore_Refresh(id);
	}
	printf("Loaded %d furnstore", cache_num_rows());
	return 1;
}

hook OnFurnstoreCreated(index)
{
	storeData[index][storeID] = cache_insert_id();

	FurnStore_Save(index);
	FurnStore_Refresh(index);
	return 1;
}

FurnStore_Save(index)
{
	if(Iter_Contains(FurnStore, index))
	{
		new query[500];
		format(query, sizeof(query), "UPDATE furnstore SET ownername ='%s', `name` ='%s', x =%.1f, y =%.1f, z =%.1f, i_x =%.1f, \
			owner =%d, price =%d, vault =%d, employe1 =%d, employe2 =%d, employe3 =%d, i_y =%.1f, i_z =%.1f WHERE id = %d",
			storeData[index][storeOwnerName],
			storeData[index][storeName],
			storeData[index][storePos][0],
			storeData[index][storePos][1],
			storeData[index][storePos][2],
			storeData[index][storeIntPos][0],
			storeData[index][storeOwner],
			storeData[index][storePrice],
			storeData[index][storeVault],
			storeData[index][storeEmploye][0],
			storeData[index][storeEmploye][1],
			storeData[index][storeEmploye][2],
			storeData[index][storeIntPos][1],
			storeData[index][storeIntPos][2],
			storeData[index][storeID]
		);

		mysql_tquery(g_iHandle, query);
	}
	return 1;
}

FurnStore_Create(playerid, price)
{
	new index = -1;

	if((index = Iter_Free(FurnStore)) != -1)
	{
		Iter_Add(FurnStore, index);

		new Float:x, Float:y, Float:z;

		GetPlayerPos(playerid, x, y, z);

		storeData[index][storePos][0] = x;
		storeData[index][storePos][1] = y;
		storeData[index][storePos][2] = z;

		storeData[index][storeIntPos][0] = 1464.5621;
		storeData[index][storeIntPos][1] = 1768.3160;
		storeData[index][storeIntPos][2] = 10.9062;

		storeData[index][storePrice] = price;
		storeData[index][storeOwner] = 0;
		storeData[index][storeVault] = 0;
		storeData[index][storeEmploye][0] = storeData[index][storeEmploye][1] = storeData[index][storeEmploye][2] = 0;

		mysql_tquery(g_iHandle, "INSERT INTO `furnstore` (`price`) VALUES (1)", "OnFurnstoreCreated", "d", index);

		return index;
	}
	return -1;
}

FurnStore_Refresh(index)
{
	if(Iter_Contains(FurnStore, index))
	{
		if(IsValidDynamicPickup(storeData[index][storePickup]))
			DestroyDynamicPickup(storeData[index][storePickup]);

		if(IsValidDynamic3DTextLabel(storeData[index][storeLabel]))
			DestroyDynamic3DTextLabel(storeData[index][storeLabel]);

		if(IsValidDynamicCP(storeData[index][storeCP]))
			DestroyDynamicCP(storeData[index][storeCP]);

		if(storeData[index][storeOwner])  {
			storeData[index][storeLabel] = CreateDynamic3DTextLabel(sprintf("[id: %d]\n%s\n"WHITE"Owned by: "YELLOW"%s\n"WHITE"Press '"RED"H"WHITE"' to go inside", index, storeData[index][storeName], storeData[index][storeOwnerName]), X11_AZURE, storeData[index][storePos][0], storeData[index][storePos][1], storeData[index][storePos][2]+0.5, 10, _, _, 1, 0, 0);
        }
		else {
			storeData[index][storeLabel] = CreateDynamic3DTextLabel(sprintf("[id: %d]\n"WHITE"Owned by: "YELLOW"NONE\n"WHITE"Price: "YELLOW"%s\n"WHITE"Type /buyfurnstore to buy this", index, FormatNumber(storeData[index][storePrice])), X11_AZURE, storeData[index][storePos][0], storeData[index][storePos][1], storeData[index][storePos][2]+0.5, 10, _, _, 1, 0, 0);
		}

		storeData[index][storePickup] = CreateDynamicPickup(1239, 23, storeData[index][storePos][0], storeData[index][storePos][1], storeData[index][storePos][2], 0, 0, _, 5);
		storeData[index][storeCP] = CreateDynamicCP(storeData[index][storePos][0], storeData[index][storePos][1], storeData[index][storePos][2], 1.5, 0, 0, _, 3);
	}
	return 1;
}

FurnStore_Nearest(playerid)
{
	foreach(new i : FurnStore) if(IsPlayerInRangeOfPoint(playerid, 4, storeData[i][storePos][0], storeData[i][storePos][1], storeData[i][storePos][2])) {
		return i;
	}
	return 0;
}

FurnStore_Inside(playerid)
{
    if(PlayerData[playerid][pFurnStore] != -1)
    {
        foreach(new i : FurnStore) if(storeData[i][storeID] == PlayerData[playerid][pFurnStore] && GetPlayerInterior(playerid) == 3 && GetPlayerVirtualWorld(playerid) == (storeData[i][storeID]+1)) {
            return i;
        }
    }
    return -1;
}

FurnStore_IsOwner(playerid, index)
{
    if(!PlayerData[playerid][pLogged] || PlayerData[playerid][pID] == -1)
        return 0;

    if((Iter_Contains(FurnStore, index) && storeData[index][storeOwner] != 0) && storeData[index][storeOwner] == GetPlayerSQLID(playerid))
        return 1;

    return 0;
}

FurnStore_IsEmployee(playerid, index)
{
    if(!PlayerData[playerid][pLogged] || PlayerData[playerid][pID] == -1)
        return 0;

    if(Iter_Contains(FurnStore, index) && storeData[index][storeOwner] != 0) {
	    for(new i = 0; i != MAX_EMPLOYE; i++) if(storeData[index][storeEmploye][i] == GetPlayerSQLID(playerid)) {
	        return 1;
	    }
	}
    return 0;
}

GetDataByIndex(index, type = 0)
{
	new name[MAX_PLAYER_NAME] = "None",
		seen,
		Cache:getname;

	getname = mysql_query(g_iHandle, sprintf("SELECT `%s` FROM `characters` WHERE `ID`='%d'", !type ? ("Character") : ("LoginDate"), index));
	if(cache_num_rows()) {
		if(!type)
			cache_get_value(0, "Character", name);
		else {
			cache_get_value_int(0, "LoginDate", seen);
			format(name, MAX_PLAYER_NAME, "%s", GetDuration(gettime()-seen));
		}
	}
	cache_delete(getname);
	return name;
}

Employee_List(playerid, index)
{
	if(!Iter_Contains(FurnStore, index))
		return 0;

	new info[128],
		employe_count = 0;

	strcat(info, "Slot\tEmployee\tLast Login\n");
	for(new i = 0; i != MAX_EMPLOYE; i++) if(storeData[index][storeEmploye][i] > 0)
	{
		strcat(info, sprintf("%d\t%s\t%s\n", i+1, GetDataByIndex(storeData[index][storeEmploye][i]), GetDataByIndex(storeData[index][storeEmploye][i], 1)));
		SelectToFired[playerid][employe_count++] = i;
	}
	if(employe_count != MAX_EMPLOYE)
		strcat(info, "Hire\tNew employee\t-\n");

	Dialog_Show(playerid, FurnStoreEmployee, DIALOG_STYLE_TABLIST_HEADERS, "Employee Management", info, "Hire/Fire", "Close");
	return 1;
}

Dialog:SelectType(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		new furnitures[64 * 128];

		for (new i = 0; i < sizeof(g_aFurnitureData); i ++) if(g_aFurnitureData[i][e_FurnitureType] == listitem + 1) {
			strcat(furnitures, sprintf("%i\t%s\n", g_aFurnitureData[i][e_FurnitureModel], g_aFurnitureData[i][e_FurnitureName]));
		}
		ShowPlayerDialog(playerid, 1, DIALOG_STYLE_PREVIEW_MODEL, "Select Furniture", furnitures, "Select", "Close");
	}
	else FurnObject_List(playerid, ManageFurnStore[playerid]);
	return 1;
}

/*Dialog:SelectFurnObject(playerid, response, listitem, inputtext[])
{
    if (response)
    {
		SendServerMessage(playerid, "listitem: %d , model: %s", listitem, inputtext);
	}
	return 1;
}
*/
Dialog:ManageFurn(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		if(!strcmp(inputtext, "Add New"))
		{
			FurnObject_Category(playerid);
            return 1;
		}

		ManageFurnObject[playerid] = ListedFurnObject[playerid][listitem];
		Dialog_Show(playerid, ManageFurnObject, DIALOG_STYLE_LIST, "Manage Object", "Produce\nMove\nSet Name\nSet Price\nTexture\nDelete", "Select", "Close");
	}
	else Dialog_Show(playerid, FurnStoreMenu, DIALOG_STYLE_LIST, "Furniture Store Menu", "Exhibits%s", "Select", "Close", FurnStore_IsOwner(playerid, ManageFurnStore[playerid]) ? ("\nEmployee\nBank\nChange Name") : (""));
	return 1;
}

Dialog:ManageFurnObject(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		new id = ManageFurnObject[playerid];
		switch(listitem)
		{
			case 0: {
				if(IsPlayerInDynamicArea(playerid, production))
					return SendErrorMessage(playerid, "Kamu harus berada di luar area kerja terlebih dahulu.");

				Dialog_Show(playerid, FurnStoreProduct, DIALOG_STYLE_INPUT, "Produce", "Berapa banyak yang akan di produksi?.", "Start", "Close");
			}
			case 1: {
				editFurnPosition[playerid] = id;
				PlayerEditPoint(playerid, FurnStore[id][furnPos][0], FurnStore[id][furnPos][1], FurnStore[id][furnPos][2], FurnStore[id][furnRot][0], FurnStore[id][furnRot][1], FurnStore[id][furnRot][2], "editFurnObject", FurnStore[id][furnObject]);
			}
			case 2: Dialog_Show(playerid, FurnObjectName, DIALOG_STYLE_INPUT, "Set Name", "Masukkan nama untuk furniture ini", "Set", "Close");
			case 3: Dialog_Show(playerid, FurnObjectPrice, DIALOG_STYLE_INPUT, "Set Price", "Masukkan harga untuk furniture ini", "Set", "Close");
			case 4: Dialog_Show(playerid, FurnObjectTexture, DIALOG_STYLE_INPUT, "Set Texture", "Masukkan data texture dengan mengikuti format berikut:\nFormat: "YELLOW"[index(0-16)] [Model ID] [TXD Name] [Texture Name]", "Update", "Back");
			case 5: {
				DestroyDynamic3DTextLabel(FurnStore[id][furnLabel]);
				DestroyDynamicObject(FurnStore[id][furnObject]);

				mysql_tquery(g_iHandle, sprintf("DELETE FROM `furnobject` WHERE id=%d", FurnStore[id][furnID]));

				FurnStore[id][furnID] = 0;
				FurnStore[id][furnStoreId] = 0;

				Iter_Remove(FurnObject, id);
			}
		}
	}
	else FurnObject_List(playerid, ManageFurnStore[playerid]);
	return 1;
}

timer productionTimers[1000](playerid)
{
	new 
		keys,ud,lr;

    GetPlayerKeys(playerid,keys,ud,lr);
    if(keys == KEY_SPRINT && startProduce[playerid] && IsPlayerInDynamicArea(playerid, production) && GetPVarInt(playerid, "lagiedit") == 2)
    {
		if(++productionCount[playerid] >= 20)
		{
			new index = ManageFurnObject[playerid];
			FurnStore[index][furnStock] += productionAdd[playerid];

			startProduce[playerid] = false;
			stop productionTimer[playerid];

			DestroyDynamicObject(produceObject[playerid]);

			FurnObject_Refresh(index);
			FurnObject_Save(index);

			SendServerMessage(playerid, "Production successfull.");
			DeletePVar(playerid, "lagiedit");
		}
		ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.1, 0, 0, 0, 0, 0, 1);
		ShowPlayerFooter(playerid, sprintf("~b~~h~Memproduksi furniture: ~w~%d/~r~~h~20",productionCount[playerid]), 1000);
	}
}

Dialog:FurnStoreProduct(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		if(strval(inputtext) < 1 || strval(inputtext) > 10)
			return Dialog_Show(playerid, FurnStoreProduct, DIALOG_STYLE_INPUT, "Produce", "Error: Tidak dapat memasukkan kurang dari 1 dan lebih dari 10.\n\nBerapa banyak yang akan di produksi?.", "Start", "Close");

		new index = ManageFurnObject[playerid];

		startProduce[playerid] = true;

		productionAdd[playerid] = strval(inputtext);
		productionCount[playerid] = 0;

		productionTimer[playerid] = repeat productionTimers(playerid);

		produceObject[playerid] = CreateDynamicObject(FurnStore[index][furnModel], 1489.54, 1789.14, 10.90, 0.0, 0.0, 0.0, (FurnStore[index][furnStoreId]+1), 3);
		
		for(new i = 0; i != MAX_MATERIALS; i++) if(FurnStore[index][furnMaterials][i] > 0)
		{
			SetDynamicObjectMaterial(produceObject[playerid], i, 
				GetTModel(FurnStore[index][furnMaterials][i]), 
				GetTXDName(FurnStore[index][furnMaterials][i]), 
				GetTextureName(FurnStore[index][furnMaterials][i]), 0
			);

		}
		SendServerMessage(playerid, "Pergilah ke area produksi untuk memulainya.");
	}
	else Dialog_Show(playerid, ManageFurnObject, DIALOG_STYLE_LIST, "Manage Object", "Produce\nMove\nSet Name\nSet Price\nTexture\nDelete", "Select", "Close");
	return 1;
}

Dialog:FurnObjectTexture(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		new index, model, txd[32], textures[32];

		if(sscanf(inputtext, "dds[32]s[32]", index, model, txd, textures))
			return Dialog_Show(playerid, FurnObjectTexture, DIALOG_STYLE_INPUT, "Set Price", "Masukkan data texture dengan mengikuti format berikut:\nFormat: "YELLOW"[index(0-16)] [Model ID] [TXD Name] [Texture Name]", "Update", "Back");

		if(index < 0 || index > 16)
			return Dialog_Show(playerid, FurnObjectTexture, DIALOG_STYLE_INPUT, "Set Price", "ERROR: Index yang hanya dapat di gunakan 0 - 16\n\nMasukkan data texture dengan mengikuti format berikut:\nFormat: "YELLOW"[index(0-16)] [Model ID] [TXD Name] [Texture Name]", "Update", "Back");

		if(!IsValidTexture(textures))
			return Dialog_Show(playerid, FurnObjectTexture, DIALOG_STYLE_INPUT, "Set Price", "ERROR: Texture model tidak terdaftar dalam database.\n\nMasukkan data texture dengan mengikuti format berikut:\nFormat: "YELLOW"[index(0-16)] [Model ID] [TXD Name] [Texture Name]", "Update", "Back");

		FurnStore[ManageFurnObject[playerid]][furnMaterials][index] = GetTextureIndex(textures);
		
		FurnObject_Refresh(ManageFurnObject[playerid]);
		FurnObject_Save(ManageFurnObject[playerid]);

		Dialog_Show(playerid, ManageFurnObject, DIALOG_STYLE_LIST, "Manage Object", "Produce\nMove\nSet Name\nSet Price\nTexture\nDelete", "Select", "Close");
	}
	else Dialog_Show(playerid, ManageFurnObject, DIALOG_STYLE_LIST, "Manage Object", "Produce\nMove\nSet Name\nSet Price\nTexture\nDelete", "Select", "Close");
	return 1;
}

Dialog:FurnObjectName(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		if(isnull(inputtext))
			return Dialog_Show(playerid, FurnObjectName, DIALOG_STYLE_INPUT, "Set Name", "ERROR: Nama tidak boleh kosong\nMasukkan nama untuk furniture ini", "Set", "Close");

		if(strval(inputtext) > 32)
			return Dialog_Show(playerid, FurnObjectName, DIALOG_STYLE_INPUT, "Set Name", "ERROR: Nama terlalu panjang, maksimal 32 karakter\nMasukkan nama untuk furniture ini", "Set", "Close");

		format(FurnStore[ManageFurnObject[playerid]][furnName], 32, inputtext);
		FurnObject_Refresh(ManageFurnObject[playerid]);
		FurnObject_Save(ManageFurnObject[playerid]);
		SendServerMessage(playerid, "Nama telah di ganti menjadi: "COL_GREEN"%s", FurnStore[ManageFurnObject[playerid]][furnName]);
	}
	return 1;
}

Dialog:FurnObjectPrice(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		if(isnull(inputtext))
			return Dialog_Show(playerid, FurnObjectPrice, DIALOG_STYLE_INPUT, "Set Name", "ERROR: Harga tidak boleh kosong\nMasukkan harga untuk furniture ini", "Set", "Close");

		if(strval(inputtext) < 1)
			return Dialog_Show(playerid, FurnObjectPrice, DIALOG_STYLE_INPUT, "Set Name", "ERROR: Harga tidak sesuai, tidak dapat di bawah harga 1\nMasukkan harga untuk furniture ini", "Set", "Close");

		FurnStore[ManageFurnObject[playerid]][furnPrice] = strval(inputtext);
		FurnObject_Refresh(ManageFurnObject[playerid]);
		FurnObject_Save(ManageFurnObject[playerid]);
		SendServerMessage(playerid, "Harga telah di ganti menjadi: "YELLOW"%s", FormatNumber((FurnStore[ManageFurnObject[playerid]][furnPrice])));
	}
	return 1;
}

Dialog:FurnStoreMenu(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		new index = ManageFurnStore[playerid];

		switch(listitem)
		{
			case 0: FurnObject_List(playerid, index);
			case 1: Employee_List(playerid, index);
			case 2: Dialog_Show(playerid, FurnStoreBank, DIALOG_STYLE_LIST, "Furniture Store Bank", "Deposit\nWithdraw\nCurrent balance: %s", "Select", "Close", FormatNumber(storeData[index][storeVault]));
			case 3: Dialog_Show(playerid, FurnStoreName, DIALOG_STYLE_INPUT, "Furniture Store Change Name", "Masukkan nama baru untuk furniture store ini:", "Change", "Close");
		}
	}
	return 1;
}

Dialog:FurnStoreEmployee(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		if(!strcmp(inputtext, "Hire"))
			return Dialog_Show(playerid, HireEmployee, DIALOG_STYLE_INPUT, "Hire Employee", "Masukkan nama ataupun id player yang akan di pekerjakan:", "Hire", "Close");

		Dialog_Show(playerid, FiredEmployee, DIALOG_STYLE_MSGBOX, "Fired Employee", "Kamu yakin ingin memecat pegawai ini?", "Fired", "No");
		SetPVarInt(playerid, "SelectToFired", SelectToFired[playerid][listitem]);
	}
	return 1;
}

Dialog:HireEmployee(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		new userid,
			index = ManageFurnStore[playerid];

		if(sscanf(inputtext, "u", userid)) 
			return Dialog_Show(playerid, HireEmployee, DIALOG_STYLE_INPUT, "Hire Employee", "ERROR: ID atau playerid tidak di masukkan\nMasukkan nama ataupun id player yang akan di pekerjakan:", "Hire", "Close");

		if(!IsPlayerNearPlayer(playerid, userid, 5.0))
			return Dialog_Show(playerid, HireEmployee, DIALOG_STYLE_INPUT, "Hire Employee", "ERROR: Player tersebut tidak berada dekat denganmu\nMasukkan nama ataupun id player yang akan di pekerjakan:", "Hire", "Close");

		if(IsPlayerConnected(userid) && SQL_IsLogged(userid))
		{
			for(new i = 0; i != MAX_EMPLOYE; i++) if(!storeData[index][storeEmploye][i])
			{
				storeData[index][storeEmploye][i] = GetPlayerSQLID(userid);
				FurnStore_Save(index);
				SendServerMessage(playerid, "Kamu telah mempekerjakan "YELLOW"%s "WHITE"ke dalam furniture store milikmu.", ReturnName(userid, 0));
				SendServerMessage(playerid, "Kamu telah dipekerjakan oleh "YELLOW"%s "WHITE"di furniture store miliknya.", ReturnName(playerid, 0));
				printf("Slot: %d", i);
				return 1;
			}
		}
		Dialog_Show(playerid, HireEmployee, DIALOG_STYLE_INPUT, "Hire Employee", "ERROR: ID atau playerid tidak berada dalam server\nMasukkan nama ataupun id player yang akan di pekerjakan:", "Hire", "Close");
		return 1;
	}
	return 1;
}

Dialog:FiredEmployee(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		new index = ManageFurnStore[playerid],
			list = GetPVarInt(playerid, "SelectToFired");

		if(response)
		{
			storeData[index][storeEmploye][list] = 0;
			FurnStore_Save(index);

			SendServerMessage(playerid, "Kamu telah memecat pegawai dari furniture store milikmu.");

			DeletePVar(playerid, "SelectToFired");
			ManageFurnStore[playerid] = -1;
		}
		else Employee_List(playerid, index);
	}
	return 1;
}

Dialog:FurnStoreBank(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		switch(listitem)
		{
			case 0: Dialog_Show(playerid, BankSelect, DIALOG_STYLE_INPUT, "Deposit", "Masukkan berapa uang yang akan kamu simpan:", "Deposit", "Close"), SetPVarInt(playerid, "bankSelect", 1);
			case 1: Dialog_Show(playerid, BankSelect, DIALOG_STYLE_INPUT, "Withdraw", "Masukkan berapa uang yang akan kamu ambil:", "Withdraw", "Close"), SetPVarInt(playerid, "bankSelect", 2);
			case 2: Dialog_Show(playerid, ShowOnly, DIALOG_STYLE_MSGBOX, "Balance", "Current balance on this furniture store: %s", "Close", "", FormatNumber(storeData[ManageFurnStore[playerid]][storeVault]));
		}
	}
	return 1;
}

Dialog:BankSelect(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		new index = ManageFurnStore[playerid],
			type = GetPVarInt(playerid, "bankSelect");

		if(strval(inputtext) < 1)
			return Dialog_Show(playerid, BankSelect, DIALOG_STYLE_INPUT, (type == 1) ? ("Deposit") : ("Withdraw"), "ERROR: Tidak dapat memasukkan input kurang dari 0\nMasukkan berapa uang yang akan kamu %s:", (type == 1) ? ("Deposit") : ("Withdraw"), "Close", (type == 1) ? ("simpan") : ("ambil"));

		if(type == 1) {
			if(GetMoney(playerid) < strval(inputtext))
				return Dialog_Show(playerid, BankSelect, DIALOG_STYLE_INPUT, "Deposit", "ERROR: Uang kamu tidak mencukupi\nMasukkan berapa uang yang akan kamu simpan:", "Deposit", "Close");
		}
		else {
			if(strval(inputtext) > storeData[index][storeVault])
				return Dialog_Show(playerid, BankSelect, DIALOG_STYLE_INPUT, "Withdraw", "ERROR: Uang dalam furniture store tidak mencukupi\nMasukkan berapa uang yang akan kamu ambil:", "Withdraw", "Close");
		}

		switch(type)
		{
			case 1: GiveMoney(playerid, -strval(inputtext)), storeData[index][storeVault] += strval(inputtext);
			case 2: GiveMoney(playerid, strval(inputtext)), storeData[index][storeVault] -= strval(inputtext);
		}
		SendServerMessage(playerid, "Kamu telah %s uang sebesar %s %s furniture store.", (type == 1) ? ("menyimpan") : ("mengambil"), FormatNumber(strval(inputtext)), (type == 1) ? ("untuk") : ("dari"));
		FurnStore_Save(index);

		DeletePVar(playerid, "bankSelect");
	}
	return 1;
}

Dialog:FurnStoreName(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		if(isnull(inputtext))
			return Dialog_Show(playerid, FurnStoreName, DIALOG_STYLE_INPUT, "Furniture Store Change Name", "ERROR: Masukkan nama yang benar, tidak boleh di kosongkan\nMasukkan nama baru untuk furniture store ini:", "Change", "Close");

		if(strlen(inputtext) > 32)
			return Dialog_Show(playerid, FurnStoreName, DIALOG_STYLE_INPUT, "Furniture Store Change Name", "ERROR: Nama yang kamu masukkan terlalu panjang ...\n ... maksimal memasukkan 32 karakter\nMasukkan nama baru untuk furniture store ini:", "Change", "Close");

		format(storeData[ManageFurnStore[playerid]][storeName], 32, ColouredText(inputtext));

		SendServerMessage(playerid, "Nama furniture store di ganti menjadi: %s", storeData[ManageFurnStore[playerid]][storeName]);

		FurnStore_Save(ManageFurnStore[playerid]);
		FurnStore_Refresh(ManageFurnStore[playerid]);
	}
	return 1;
}

hook editFurnObject(playerid, objectid, response, Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz, Float:offx, Float:offy, Float:offz)
{
	if(response == EDIT_RESPONSE_CANCEL)
    {
        if(editFurnPosition[playerid] != -1) 
        {
            new i = editFurnPosition[playerid];
			FurnObject_Refresh(i);
            
            editFurnPosition[playerid] = -1;
        }
    }
    if(response == EDIT_RESPONSE_FINAL)
    {
        new id = editFurnPosition[playerid];

        if(Iter_Contains(FurnObject, id))
        {
            FurnStore[id][furnPos][0] = x;
            FurnStore[id][furnPos][1] = y;
            FurnStore[id][furnPos][2] = z;
            FurnStore[id][furnRot][0] = rx;
            FurnStore[id][furnRot][1] = ry;
            FurnStore[id][furnRot][2] = rz;

            FurnObject_Refresh(id);
            FurnObject_Save(id);

            editFurnPosition[playerid] = -1;
        }
    }
	return 1;
}

hook editLokasiFurn(playerid, objectid, response, Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz, Float:offx, Float:offy, Float:offz)
{
	if(response == EDIT_RESPONSE_CANCEL)
    {
        if(startProduce[playerid])
        {
        	PlayerEditPoint(playerid, 1489.54, 1789.14, 10.90, 0.0, 0.0, 0.0, "editLokasiFurn", produceObject[playerid]);
        	ShowPlayerFooter(playerid, "~r~~h~Tidak dapat menekan 'ESC' dalam mode ini");
        }
    }
    if(response == EDIT_RESPONSE_FINAL)
    {
        if(startProduce[playerid])
        {
        	if(!IsPointInDynamicArea(production, x, y, z))
        		return PlayerEditPoint(playerid, 1489.54, 1789.14, 10.90, 0.0, 0.0, 0.0, "editLokasiFurn", produceObject[playerid]), ShowPlayerFooter(playerid, "~r~~h~Tidak dapat di lakukan di luar area produksi.");

        	SendServerMessage(playerid, "Mulailah memproduksi furniture dengan menahan tombol "RED"'SPACE'");
        	SetPVarInt(playerid, "lagiedit", 2);
        }
    }
	return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(PRESSED(KEY_CTRL_BACK))
	{
		static
			id = -1;

		if((id = FurnStore_Nearest(playerid)) != -1 && IsPlayerInDynamicCP(playerid, storeData[id][storeCP]))
        {
//            if(storeData[id][storeLocked]) return GameTextForPlayer(playerid, "~r~Locked", 1500, 1);

            SetPlayerPosEx(playerid, storeData[id][storeIntPos][0], storeData[id][storeIntPos][1], storeData[id][storeIntPos][2], 2500);
            SetPlayerFacingAngle(playerid, 272.8804);
            SetPlayerInterior(playerid, 3);
            SetPlayerVirtualWorld(playerid, storeData[id][storeID] + 1);

            Streamer_Update(playerid);

            PlayerData[playerid][pFurnStore] = storeData[id][storeID];
            SetPlayerWeather(playerid, 0);
            SetPlayerTime(playerid, 12, 0);
            return 1;
        }
        if((id = FurnStore_Inside(playerid)) != -1 && IsPlayerInRangeOfPoint(playerid, 2.5, storeData[id][storeIntPos][0], storeData[id][storeIntPos][1], storeData[id][storeIntPos][2]))
        {
            SetPlayerPos(playerid, storeData[id][storePos][0], storeData[id][storePos][1], storeData[id][storePos][2]);
            SetPlayerInterior(playerid, 0);
            SetPlayerVirtualWorld(playerid, 0);
            SetCameraBehindPlayer(playerid);

            PlayerData[playerid][pFurnStore] = -1;
            return 1;
        }
    }
	return 1;
}


hook OnPlayerEnterDynamicArea(playerid, areaid)
{
	if(areaid == production && startProduce[playerid] && GetPVarInt(playerid, "lagiedit") == 0)
	{
		ShowPlayerFooter(playerid, "Posisikan furniture pada area kerja");

		PlayerEditPoint(playerid, 1489.54, 1789.14, 10.90, 0.0, 0.0, 0.0, "editLokasiFurn", produceObject[playerid]);
		SetPVarInt(playerid, "lagiedit", 1);
	}
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	if (dialogid == 1)
    {
        if (response)
        {
	        new id = -1;
		        	
			id = FurnObject_Add(playerid, strval(inputtext), ManageFurnStore[playerid]);

			if(id == -1)
				return SendErrorMessage(playerid, "Furniture object untuk furniture store ini sudah mencapai batas maksimal.");

			ManageFurnObject[playerid] = id;
			Dialog_Show(playerid, ManageFurnObject, DIALOG_STYLE_LIST, "Manage Object", "Produce\nMove\nSet Name\nSet Price\nTexture\nDelete", "Select", "Close");

			ShowPlayerFooter(playerid, "Object baru telah di buat, silahkan untuk memposisikan object dengan benar~n~Menyalah gunakan akan mendapat sanksi berupa ~r~~h~BANNED 3 hari.", 5000);
		}
		else FurnObject_Category(playerid);
	}
	return 1;
}