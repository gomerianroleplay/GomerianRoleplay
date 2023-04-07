

/*
 * DEFINE
 *
**/

#define MAX_OBJ 5000
#define MAX_MATERIALS              	 		(16)
/*
 * ENUM
 *
**/

enum objData {
  oID,
  oModel,
  Float:oPos[3],
  Float:oRot[3],
  oVw,
  oInt,
  oMaterials[MAX_MATERIALS],
  oMatsColor[MAX_MATERIALS],
  oHouse,
  oBiz,
  oMatsText,
  oMatsTextIndex,
  oText[256],
  oMatsTextSize,
  oMatsTextFont[32],
  oMatsTextFontSize,
  oMatsTextBold,
  oMatsTextColor,
  oMatsTextBackColor,
  oMatsTextAlignment,
  oObject
};
new ObjData[MAX_OBJ][objData],
    Iterator:Obj<MAX_OBJ>;

// Variable
new const WinFonts[15][20] = {
  {"Arial"},
  {"Calibri"},
  {"Comic Sans MS"},
  {"Georgia"},
  {"Times New Roman"},
  {"Consolas"},
  {"Constantia"},
  {"Corbel"},
  {"Courier New"},
  {"Impact"},
  {"Lucida Console"},
  {"Palatino Linotype"},
  {"Tahoma"},
  {"Trebuchet MS"},
  {"Verdana"}
};

new const TextResolution[][] = {
  "32x32",
  "64x32",
  "64x64",
  "128x32",
  "128x64",
  "128x128",
  "256x32",
  "256x64",
  "256x128",
  "256x256",
  "512x64",
  "512x128",
  "512x256",
  "512x512"
};

/*
 * ALL HOOKS
 *
**/

#include <YSI_Coding\y_hooks>

hook OnGameModeExit() {
  foreach (new i : Obj) {
    Object_Save(i);
  }
  Iter_Clear(Obj);
  return 1;
}

/*
 * ALL CALLBACKS
 *
**/

Function: onObjectCreated(id) {
  if (!Iter_Contains(Obj, id))
    return 0;

  ObjData[id][oID] = cache_insert_id();
  Object_Save(id);
  return 1;
}

Function: Object_Load() {
  new rows = cache_num_rows(), string[32];
  if (rows) {
    for (new i = 0; i < rows; i ++) {
      Iter_Add(Obj, i);

      cache_get_value_int(i, "ID", ObjData[i][oID]);
      cache_get_value_int(i, "Model", ObjData[i][oModel]);
      cache_get_value_float(i, "X", ObjData[i][oPos][0]);
      cache_get_value_float(i, "Y", ObjData[i][oPos][1]);
      cache_get_value_float(i, "Z", ObjData[i][oPos][2]);
      cache_get_value_float(i, "RotX", ObjData[i][oRot][0]);
      cache_get_value_float(i, "RotY", ObjData[i][oRot][1]);
      cache_get_value_float(i, "RotZ", ObjData[i][oRot][2]);
      cache_get_value_int(i, "Vw", ObjData[i][oVw]);
      cache_get_value_int(i, "Int", ObjData[i][oInt]);
      
      cache_get_value(i, "Materials", string);
      sscanf(string, "p<|>dddddddddddddddd", ObjData[i][oMaterials][0], ObjData[i][oMaterials][1], ObjData[i][oMaterials][2], ObjData[i][oMaterials][3], ObjData[i][oMaterials][4], ObjData[i][oMaterials][5], ObjData[i][oMaterials][6], ObjData[i][oMaterials][7], ObjData[i][oMaterials][8], ObjData[i][oMaterials][9], ObjData[i][oMaterials][10], ObjData[i][oMaterials][11], ObjData[i][oMaterials][12], ObjData[i][oMaterials][13], ObjData[i][oMaterials][14], ObjData[i][oMaterials][15]);

      cache_get_value(i, "MatsColor", string);
      sscanf(string, "p<|>dddddddddddddddd", ObjData[i][oMatsColor][0], ObjData[i][oMatsColor][1], ObjData[i][oMatsColor][2], ObjData[i][oMatsColor][3], ObjData[i][oMatsColor][4], ObjData[i][oMatsColor][5], ObjData[i][oMatsColor][6], ObjData[i][oMatsColor][7], ObjData[i][oMatsColor][8], ObjData[i][oMatsColor][9], ObjData[i][oMatsColor][10], ObjData[i][oMatsColor][11], ObjData[i][oMatsColor][12], ObjData[i][oMatsColor][13], ObjData[i][oMatsColor][14], ObjData[i][oMatsColor][15]);

      cache_get_value_int(i, "House", ObjData[i][oHouse]);
      cache_get_value_int(i, "Business", ObjData[i][oBiz]);
      cache_get_value_int(i, "MatsText", ObjData[i][oMatsText]);
      cache_get_value_int(i, "MatsTextIndex", ObjData[i][oMatsTextIndex]);
      cache_get_value(i, "Text", ObjData[i][oText], 256);
      cache_get_value_int(i, "MatsTextSize", ObjData[i][oMatsTextSize]);
      cache_get_value(i, "MatsTextFont", ObjData[i][oMatsTextFont], 32);
      cache_get_value_int(i, "MatsTextFontSize", ObjData[i][oMatsTextFontSize]);
      cache_get_value_int(i, "MatsTextBold", ObjData[i][oMatsTextBold]);
      cache_get_value_int(i, "MatsTextColor", ObjData[i][oMatsTextColor]);
      cache_get_value_int(i, "MatsTextBackColor", ObjData[i][oMatsTextBackColor]);
      cache_get_value_int(i, "MatsTextAlignment", ObjData[i][oMatsTextAlignment]);

      Object_Refresh(i);
    }
  }
  printf("*** [Database: Loaded] object data (%d count).", rows);
  return 1;
}

/*
 * ALL functionS
 *
**/

Object_Create(model, Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz, vw = -1, int = -1) {
  new i = INVALID_ITERATOR_SLOT;

  if ((i = Iter_Free(Obj)) != INVALID_ITERATOR_SLOT) {
    Iter_Add(Obj, i);

    ObjData[i][oModel] = model;
    ObjData[i][oPos][0] = x;
    ObjData[i][oPos][1] = y;
    ObjData[i][oPos][2] = z;
    ObjData[i][oRot][0] = rx;
    ObjData[i][oRot][1] = ry;
    ObjData[i][oRot][2] = rz;
    ObjData[i][oVw] = vw;
    ObjData[i][oInt] = int;
    for (new j = 0; j < MAX_MATERIALS; j ++) {
      ObjData[i][oMaterials][j] = 0;
      ObjData[i][oMatsColor][j] = 0;
    }
    ObjData[i][oMatsText] = 0;
    ObjData[i][oMatsTextIndex] = 0;
    new text[256];
    format(text,sizeof(text),"Text Here");
    FixText(text);
    format(ObjData[i][oText], 256, text);
    ObjData[i][oMatsTextSize] = OBJECT_MATERIAL_SIZE_256x128;
    format(ObjData[i][oMatsTextFont], 32, "Arial");
    ObjData[i][oMatsTextFontSize] = 24;
    ObjData[i][oMatsTextBold] = 1;
    ObjData[i][oMatsTextColor] = 0xFFFFFFFF;
    ObjData[i][oMatsTextBackColor] = 0xFF000000;
    ObjData[i][oMatsTextAlignment] = 0;
    ObjData[i][oHouse] = -1;
    ObjData[i][oBiz] = -1;

    Object_Refresh(i);
    new query[512];
    mysql_format(g_iHandle, query, sizeof(query), "INSERT INTO `objects` (`Model`) VALUES ('%d')", model, "onObjectCreated", "d", i);
    mysql_tquery(g_iHandle, query, "onObjectCreated", "d", i);

    return i;
  }
  return INVALID_ITERATOR_SLOT;
}

Object_Save(id) {
  new query[2024];

  format(query, sizeof(query), "UPDATE `objects` SET `Model` = '%d', `X` = '%f', `Y` = '%f', `Z` = '%f', `RotX` = '%f', `RotY` = '%f', `RotZ` = '%f', `Vw` = '%d', `Int` = '%d', `Materials`='%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d', `MatsColor`='%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d|%d' WHERE `ID` = '%d'",
    ObjData[id][oModel],
    ObjData[id][oPos][0],
    ObjData[id][oPos][1],
    ObjData[id][oPos][2],
    ObjData[id][oRot][0],
    ObjData[id][oRot][1],
    ObjData[id][oRot][2],
    ObjData[id][oVw],
    ObjData[id][oInt],
    ObjData[id][oMaterials][0],
    ObjData[id][oMaterials][1],
    ObjData[id][oMaterials][2],
    ObjData[id][oMaterials][3],
    ObjData[id][oMaterials][4],
    ObjData[id][oMaterials][5],
    ObjData[id][oMaterials][6],
    ObjData[id][oMaterials][7],
    ObjData[id][oMaterials][8],
    ObjData[id][oMaterials][9],
    ObjData[id][oMaterials][10],
    ObjData[id][oMaterials][11],
    ObjData[id][oMaterials][12],
    ObjData[id][oMaterials][13],
    ObjData[id][oMaterials][14],
    ObjData[id][oMaterials][15],
    ObjData[id][oMatsColor][0],
    ObjData[id][oMatsColor][1],
    ObjData[id][oMatsColor][2],
    ObjData[id][oMatsColor][3],
    ObjData[id][oMatsColor][4],
    ObjData[id][oMatsColor][5],
    ObjData[id][oMatsColor][6],
    ObjData[id][oMatsColor][7],
    ObjData[id][oMatsColor][8],
    ObjData[id][oMatsColor][9],
    ObjData[id][oMatsColor][10],
    ObjData[id][oMatsColor][11],
    ObjData[id][oMatsColor][12],
    ObjData[id][oMatsColor][13],
    ObjData[id][oMatsColor][14],
    ObjData[id][oMatsColor][15],
    ObjData[id][oID]
  );
  mysql_tquery(g_iHandle, query);
  format(query,sizeof(query),"UPDATE `objects` SET `MatsText` = '%d', `MatsTextIndex` = '%d', `Text` = '%s', `MatsTextSize` = '%d', `MatsTextFont` = '%s', `MatsTextFontSize` = '%d', `MatsTextBold` = '%d', `MatsTextColor` = '%d', `MatsTextBackColor` = '%d', `MatsTextAlignment` = '%d', `House`='%d', `Business`='%d' WHERE `ID` = '%d'",
    ObjData[id][oMatsText],
    ObjData[id][oMatsTextIndex],
    ObjData[id][oText],
    ObjData[id][oMatsTextSize],
    ObjData[id][oMatsTextFont],
    ObjData[id][oMatsTextFontSize],
    ObjData[id][oMatsTextBold],
    ObjData[id][oMatsTextColor],
    ObjData[id][oMatsTextBackColor],
    ObjData[id][oMatsTextAlignment],
    ObjData[id][oHouse],
    ObjData[id][oBiz],
    ObjData[id][oID]
  );
  mysql_tquery(g_iHandle, query);
  return 1;
}

Object_Refresh(id) {
  if (id != -1) {
    if (!IsValidDynamicObject(ObjData[id][oObject])) {
      ObjData[id][oObject] = CreateDynamicObject(ObjData[id][oModel], ObjData[id][oPos][0], ObjData[id][oPos][1], ObjData[id][oPos][2], ObjData[id][oRot][0], ObjData[id][oRot][1], ObjData[id][oRot][2], ObjData[id][oVw], ObjData[id][oInt], -1, (ObjData[id][oInt] == 0) ? (100.00) : (50.00), (ObjData[id][oInt] == 0) ? (100.00) : (50.00));
    }
    Object_Update(id);
  }
  return 1;
}

Object_Update(id) {
  if (Iter_Contains(Obj, id)) {
    Streamer_SetIntData(STREAMER_TYPE_OBJECT,ObjData[id][oObject],E_STREAMER_MODEL_ID,ObjData[id][oModel]);
    Streamer_SetFloatData(STREAMER_TYPE_OBJECT,ObjData[id][oObject],E_STREAMER_X,ObjData[id][oPos][0]);
    Streamer_SetFloatData(STREAMER_TYPE_OBJECT,ObjData[id][oObject],E_STREAMER_Y,ObjData[id][oPos][1]);
    Streamer_SetFloatData(STREAMER_TYPE_OBJECT,ObjData[id][oObject],E_STREAMER_Z,ObjData[id][oPos][2]);
    Streamer_SetFloatData(STREAMER_TYPE_OBJECT,ObjData[id][oObject],E_STREAMER_R_X,ObjData[id][oRot][0]);
    Streamer_SetFloatData(STREAMER_TYPE_OBJECT,ObjData[id][oObject],E_STREAMER_R_Y,ObjData[id][oRot][1]);
    Streamer_SetFloatData(STREAMER_TYPE_OBJECT,ObjData[id][oObject],E_STREAMER_R_Z,ObjData[id][oRot][2]);
    Streamer_SetIntData(STREAMER_TYPE_OBJECT,ObjData[id][oObject],E_STREAMER_WORLD_ID,ObjData[id][oVw]);
    Streamer_SetIntData(STREAMER_TYPE_OBJECT,ObjData[id][oObject],E_STREAMER_INTERIOR_ID,ObjData[id][oInt]);
    Streamer_SetFloatData(STREAMER_TYPE_OBJECT,ObjData[id][oObject],E_STREAMER_DRAW_DISTANCE,(ObjData[id][oInt] == 0) ? (100.00) : (50.00));
    Streamer_SetFloatData(STREAMER_TYPE_OBJECT,ObjData[id][oObject],E_STREAMER_STREAM_DISTANCE,(ObjData[id][oInt] == 0) ? (100.00) : (50.00));

    for (new i = 0; i < MAX_MATERIALS; i ++) if (ObjData[id][oMaterials][i] > 0) {
      SetDynamicObjectMaterial(ObjData[id][oObject],i,GetTModel(ObjData[id][oMaterials][i]),GetTXDName(ObjData[id][oMaterials][i]),GetTextureName(ObjData[id][oMaterials][i]),ObjData[id][oMatsColor][i]);
    }

    if (ObjData[id][oMatsText]) {
      SetDynamicObjectMaterialText(ObjData[id][oObject],ObjData[id][oMatsTextIndex],ObjData[id][oText],ObjData[id][oMatsTextSize],ObjData[id][oMatsTextFont],ObjData[id][oMatsTextFontSize],ObjData[id][oMatsTextBold],ObjData[id][oMatsTextColor],ObjData[id][oMatsTextBackColor],ObjData[id][oMatsTextAlignment]);
    }
  }
  return 1;
}

Object_Delete(id) {
  if (Iter_Contains(Obj, id)) {
    mysql_tquery(g_iHandle, "DELETE FROM objects WHERE ID = '%d'", ObjData[id][oID]);

    if (IsValidDynamicObject(ObjData[id][oObject])) {
      DestroyDynamicObject(ObjData[id][oObject]);
      ObjData[id][oObject] = INVALID_STREAMER_ID;
    }
    
    new tmp_objData[objData];
    ObjData[id] = tmp_objData;

    Iter_Remove(Obj, id);
    return 1;
  }
  return 0;
}

// Object_Nearest(playerid) {
//   new id = -1, Float: playerdist, Float: tempdist = 9999.0;
	
//   foreach (new i : Obj)
//   {
//         playerdist = GetPlayerDistanceFromPoint(playerid, ObjData[i][oPos][0], ObjData[i][oPos][1], ObjData[i][oPos][2]);
//         if(playerdist > 5.0) continue;
// 	    if(playerdist <= tempdist) {
// 	        tempdist = playerdist;
// 	        id = i;
// 	    }
// 	}
	
//   return id;
// }

Dialog:Object_TextMenu(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		switch(listitem)
		{
			case 0:
			{
				Dialog_Show(playerid,Object_TextSetMessage,DIALOG_STYLE_INPUT,"Material Text: Set Text","Input text: (max length = 255 characters)","Set","Back");
				return 1;
			}
			case 1:
			{
				Dialog_Show(playerid,Object_TextSetResolution,DIALOG_STYLE_LIST,"Material Text: Set Resolution","32x32\n64x32\n64x64\n128x32\n128x64\n128x128\n256x32\n256x64\n256x128\n256x256\n512x64\n512x128\n512x256\n512x512","Set","Back");
				return 1;
			}
			case 2:
			{
        new fonts[256];
        Loop(i,sizeof(WinFonts)) {
          strcat(fonts,WinFonts[i],sizeof(fonts));
          strcat(fonts,"\n",sizeof(fonts));
				}
        strcat(fonts,"Custom",sizeof(fonts));
        Dialog_Show(playerid,Object_TextSetFont,DIALOG_STYLE_LIST,"Material Text: Set Font",fonts,"Set","Back"); return 1;
			}
			case 3:
			{
				Dialog_Show(playerid,Object_TextSetFontSize,DIALOG_STYLE_INPUT,"Material Text: Set Font Size","Input font size: (1-255)","Set","Back");
				return 1;
			}
			case 4:
			{
				new text[256],size,font[32],fsize,bold,fcolor,bcolor,alignment;
				new id = GetPVarInt(playerid,"EditObjMatsTextID"),
            index = GetPVarInt(playerid,"EditObjMatsTextIndex");
                GetDynamicObjectMaterialText(ObjData[id][oObject],index,text,size,font,fsize,bold,fcolor,bcolor,alignment);
                ObjData[id][oMatsTextBold] = ((bold == 1) ? 0 : 1);
                Object_Refresh(id);
                Object_Save(id);
                Dialog_Show(playerid,Object_TextMenu,DIALOG_STYLE_LIST,"Material Text","Text\nResolution\nFont\nFont Size\nToggle Bold\nFont Color\nBackground Color\nText Alignment","Select","Close");
                return 1;
			}
			case 5:
			{
				Dialog_Show(playerid,Object_TextSetFontColor,DIALOG_STYLE_INPUT,"Material Text: Set Font Color","Input color in RGBA format: (ex 255 0 0 255 = yellow)","Set","Back");
				return 1;
			}
			case 6:
			{
				Dialog_Show(playerid,Object_TextSetColor,DIALOG_STYLE_INPUT,"Material Text: Set Background Color","Input color in RGBA format: (ex 255 0 0 255 = yellow)","Set","Back");
				return 1;
			}
			case 7:
			{
				Dialog_Show(playerid,Object_TextSetAlignment,DIALOG_STYLE_LIST,"Material Text: Set Alignment","Left\nCenter\nRight","Set","Back");
				return 1;
			}
		}
	}
	DeletePVar(playerid,"EditObjMatsTextID");
	DeletePVar(playerid,"EditObjMatsTextIndex");
	return 1;
}
Dialog:Object_TextSetMessage(playerid, response, listitem, inputtext[])
{
	if(response) {
		new text[256],size,font[32],fsize,bold,fcolor,bcolor,alignment;
		new id = GetPVarInt(playerid,"EditObjMatsTextID"),
        index = GetPVarInt(playerid,"EditObjMatsTextIndex");

        GetDynamicObjectMaterialText(ObjData[id][oObject],index,text,size,font,fsize,bold,fcolor,bcolor,alignment);
        FixText(inputtext);
        format(ObjData[id][oText], 256, "%s", (isnull(inputtext)) ? (text) : (inputtext));
        Object_Refresh(id);
        Object_Save(id);
	}
	Dialog_Show(playerid,Object_TextMenu,DIALOG_STYLE_LIST,"Material Text","Text\nResolution\nFont\nFont Size\nToggle Bold\nFont Color\nBackground Color\nText Alignment","Select","Close");
	return 1;
}
Dialog:Object_TextSetResolution(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		new text[256],size,font[32],fsize,bold,fcolor,bcolor,alignment;
		new id = GetPVarInt(playerid,"EditObjMatsTextID"),
	    	index = GetPVarInt(playerid,"EditObjMatsTextIndex");
    
        GetDynamicObjectMaterialText(ObjData[id][oObject],index,text,size,font,fsize,bold,fcolor,bcolor,alignment);
        ObjData[id][oMatsTextSize] = ((listitem+1)*10);
        Object_Refresh(id);
        Object_Save(id);
	}
	Dialog_Show(playerid,Object_TextMenu,DIALOG_STYLE_LIST,"Material Text","Text\nResolution\nFont\nFont Size\nToggle Bold\nFont Color\nBackground Color\nText Alignment","Select","Close");
	return 1;
}
Dialog:Object_TextSetFont(playerid, response, listitem, inputtext[])
{
	if (!response)
    return Dialog_Show(playerid,Object_TextMenu,DIALOG_STYLE_LIST,"Material Text","Text\nResolution\nFont\nFont Size\nToggle Bold\nFont Color\nBackground Color\nText Alignment","Select","Close");
  
    if (listitem < sizeof(WinFonts)) {

    new text[256],size,font[32],fsize,bold,fcolor,bcolor,alignment;
    new id = GetPVarInt(playerid,"EditObjMatsTextID"),
        index = GetPVarInt(playerid,"EditObjMatsTextIndex");
    GetDynamicObjectMaterialText(ObjData[id][oObject],index,text,size,font,fsize,bold,fcolor,bcolor,alignment);
    format(ObjData[id][oMatsTextFont], 32, WinFonts[listitem]);
    Object_Refresh(id);
    Object_Save(id);
    } else {
      Dialog_Show(playerid,Object_TextSetCustomFont,DIALOG_STYLE_INPUT,"Material Text: Set Custom Font","Input font name:","Input","Back");
    } return 1;
}
Dialog:Object_TextSetCustomFont(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		new text[256],size,font[32],fsize,bold,fcolor,bcolor,alignment;
		new id = GetPVarInt(playerid,"EditObjMatsTextID"),
	    	index = GetPVarInt(playerid,"EditObjMatsTextIndex");
    
        GetDynamicObjectMaterialText(ObjData[id][oObject],index,text,size,font,fsize,bold,fcolor,bcolor,alignment);
        format(ObjData[id][oMatsTextFont], 32, "%s", (isnull(inputtext)) ? (text) : (inputtext));
        Object_Refresh(id);
        Object_Save(id);
	}
	Dialog_Show(playerid,Object_TextMenu,DIALOG_STYLE_LIST,"Material Text","Text\nResolution\nFont\nFont Size\nToggle Bold\nFont Color\nBackground Color\nText Alignment","Select","Close");
	return 1;
}
Dialog:Object_TextSetFontSize(playerid, response, listitem, inputtext[])
{
	if(response)
	{
      new text[256],size,font[32],fsize,bold,fcolor,bcolor,alignment;
      new id = GetPVarInt(playerid,"EditObjMatsTextID"),
        index = GetPVarInt(playerid,"EditObjMatsTextIndex");
      GetDynamicObjectMaterialText(ObjData[id][oObject],index,text,size,font,fsize,bold,fcolor,bcolor,alignment);
      ObjData[id][oMatsTextFontSize] = (isnull(inputtext)) ? fsize : strval(inputtext);
      Object_Refresh(id);
      Object_Save(id);
	}
	Dialog_Show(playerid,Object_TextMenu,DIALOG_STYLE_LIST,"Material Text","Text\nResolution\nFont\nFont Size\nToggle Bold\nFont Color\nBackground Color\nText Alignment","Select","Close");
	return 1;
}
Dialog:Object_TextSetFontColor(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		new alpha,red,green,blue;
		if(!sscanf(inputtext,"dddD(255)",red,green,blue,alpha))
		{
			new text[256],size,font[32],fsize,bold,fcolor,bcolor,alignment;
			new id = GetPVarInt(playerid,"EditObjMatsTextID"),
	        index = GetPVarInt(playerid,"EditObjMatsTextIndex");
            GetDynamicObjectMaterialText(ObjData[id][oObject],index,text,size,font,fsize,bold,fcolor,bcolor,alignment);
            ObjData[id][oMatsTextColor] = RGBAToInt(alpha,red,green,blue);
            Object_Refresh(id);
            Object_Save(id);
		}
	}
	Dialog_Show(playerid,Object_TextMenu,DIALOG_STYLE_LIST,"Material Text","Text\nResolution\nFont\nFont Size\nToggle Bold\nFont Color\nBackground Color\nText Alignment","Select","Close");
	return 1;
}
Dialog:Object_TextSetColor(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		new alpha,red,green,blue;
		if(!sscanf(inputtext,"dddD(255)",red,green,blue,alpha))
		{
			new text[256],size,font[32],fsize,bold,fcolor,bcolor,alignment;
			new id = GetPVarInt(playerid,"EditObjMatsTextID"),
	    	  index = GetPVarInt(playerid,"EditObjMatsTextIndex");
            GetDynamicObjectMaterialText(ObjData[id][oObject],index,text,size,font,fsize,bold,fcolor,bcolor,alignment);
            ObjData[id][oMatsTextBackColor] = RGBAToInt(alpha,red,green,blue);
            Object_Refresh(id);
            Object_Save(id);
		}
	}
	Dialog_Show(playerid,Object_TextMenu,DIALOG_STYLE_LIST,"Material Text","Text\nResolution\nFont\nFont Size\nToggle Bold\nFont Color\nBackground Color\nText Alignment","Select","Close");
	return 1;
}
Dialog:Object_TextSetAlignment(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		new text[256],size,font[32],fsize,bold,fcolor,bcolor,alignment;
		new id = GetPVarInt(playerid,"EditObjMatsTextID"),
        index = GetPVarInt(playerid,"EditObjMatsTextIndex");
    
        GetDynamicObjectMaterialText(ObjData[id][oObject], index, text, size, font, fsize, bold, fcolor, bcolor, alignment);
    
        ObjData[id][oMatsTextAlignment] = listitem;
        Object_Refresh(id);
        Object_Save(id);
	}
	Dialog_Show(playerid,Object_TextMenu,DIALOG_STYLE_LIST,"Material Text","Text\nResolution\nFont\nFont Size\nToggle Bold\nFont Color\nBackground Color\nText Alignment","Select","Close");
	return 1;
}
