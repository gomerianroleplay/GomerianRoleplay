CMD:createobject(playerid, params[]) {
  if (AccountData[playerid][pAdmin] < 8)
    return PermissionError(playerid);

  new modelid;
  if (sscanf(params, "d", modelid))
    return SendSyntaxMessage(playerid, "/createobject [modelid]");

  new id, Float:x, Float:y, Float:z, Float:angle;
  GetPlayerPos(playerid, z, z, z);
  GetPlayerFacingAngle(playerid, angle);
  
  id = Object_Create(modelid, x, y, z, 0.0, 0.0, angle, GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid));

  if (id == INVALID_ITERATOR_SLOT) return SendErrorMessage(playerid, "The objects has reached the maximum!");
  SendClientMessageEx(playerid, X11_YELLOW, "OBJECT: "WHITE"You've successfully created object id: %d", id);
  Streamer_Update(playerid);
  return 1;
}

CMD:editobject(playerid, params[]) {
  if (AccountData[playerid][pAdmin] < 8)
    return PermissionError(playerid);

  new opt[64], value[128];
  if (sscanf(params, "s[64]S()[128]", opt, value)) {
    SendSyntaxMessage(playerid, "/editobject [option]");
    SendClientMessageEx(playerid, X11_YELLOW, "[OPTIONS]: "WHITE"position, fixpos, model, copy, gethere, material, resetmaterial, textprop, resettextprop, vw, int, drawdistance, house");
    return 1;
  }

  if (!strcmp(opt, "position")) {
    new id;
    if (sscanf(value, "d", id))
      return SendSyntaxMessage(playerid, "/editobject position [object id]");

    if (!Iter_Contains(Obj, id)) return SendErrorMessage(playerid, "Invalid object id!");

    PlayerData[playerid][pEditingMode] = 1;
    PlayerData[playerid][pEditObject] = id;
    EditDynamicObject(playerid, ObjData[id][oObject]);
    SendServerMessage(playerid, "OBJECT You're now editing object id: %d", id);
  } else if (!strcmp(opt, "fixpos")) {
    new id, Float:pos[6];
    if (sscanf(value, "dffffff", id, pos[0], pos[1], pos[2], pos[3], pos[4], pos[5]))
      return SendSyntaxMessage(playerid, "/editobject position [object id] [x] [y] [z] [rx] [ry] [rz]");

    if (!Iter_Contains(Obj, id)) return SendErrorMessage(playerid, "Invalid object id!");

    ObjData[id][oPos][0] = pos[0];
    ObjData[id][oPos][1] = pos[1];
    ObjData[id][oPos][2] = pos[2];
    ObjData[id][oRot][0] = pos[3];
    ObjData[id][oRot][1] = pos[4];
    ObjData[id][oRot][2] = pos[5];
    SetDynamicObjectPos(ObjData[id][oObject], pos[0], pos[1], pos[2]);
    SetDynamicObjectRot(ObjData[id][oObject], pos[3], pos[4], pos[5]);
    
    Object_Save(id);
    SendServerMessage(playerid, "OBJECT You've changed fix position of object id: %d", id);
  } else if (!strcmp(opt, "model")) {
    new id, newmodel;
    if (sscanf(value, "dd", id, newmodel))
      return SendSyntaxMessage(playerid, "/editobject model [object id] [modelid]");

    if (!Iter_Contains(Obj, id)) return SendErrorMessage(playerid, "Invalid object id!");
    ObjData[id][oModel] = newmodel;
    Object_Refresh(id);
    Object_Save(id);
    Streamer_Update(playerid);
    SendServerMessage(playerid, "OBJECT You've changed model of object id: %d", id);
  } else if (!strcmp(opt, "copy")) {
    new id;
    if (sscanf(value, "d", id))
      return SendSyntaxMessage(playerid, "/editobject copy [object id]");

    if (!Iter_Contains(Obj, id)) return SendErrorMessage(playerid, "Invalid object id!");

    new newobj, model, index, modelid, txdname[32], texture[32], color;
    new ind,text[256],size,font[32],fsize,bold,fcolor,bcolor,alignment;
    new Float:position[3], Float:rotation[3], vw, int;
    model = Streamer_GetIntData(STREAMER_TYPE_OBJECT, ObjData[id][oObject], E_STREAMER_MODEL_ID);
    Streamer_GetFloatData(STREAMER_TYPE_OBJECT,ObjData[id][oObject],E_STREAMER_X,position[0]);
    Streamer_GetFloatData(STREAMER_TYPE_OBJECT,ObjData[id][oObject],E_STREAMER_Y,position[1]);
    Streamer_GetFloatData(STREAMER_TYPE_OBJECT,ObjData[id][oObject],E_STREAMER_Z,position[2]);
    Streamer_GetFloatData(STREAMER_TYPE_OBJECT,ObjData[id][oObject],E_STREAMER_R_X,rotation[0]);
    Streamer_GetFloatData(STREAMER_TYPE_OBJECT,ObjData[id][oObject],E_STREAMER_R_Y,rotation[1]);
    Streamer_GetFloatData(STREAMER_TYPE_OBJECT,ObjData[id][oObject],E_STREAMER_R_Z,rotation[2]);
    vw = Streamer_GetIntData(STREAMER_TYPE_OBJECT,ObjData[id][oObject],E_STREAMER_WORLD_ID);
    int = Streamer_GetIntData(STREAMER_TYPE_OBJECT,ObjData[id][oObject],E_STREAMER_INTERIOR_ID);
    newobj = Object_Create(model, position[0], position[1], position[2], rotation[0], rotation[1], rotation[2], vw, int);

    if (newobj == cellmin) return SendErrorMessage(playerid, "Server has reached the maximum of Objects!");

    GetDynamicObjectMaterial(ObjData[id][oObject], index, modelid, txdname, texture, color);
    ObjData[newobj][oMaterials][index] = GetTextureIndex(texture);
    ObjData[newobj][oMatsColor][index] = color;

    if (ObjData[id][oMatsText]) {
      GetDynamicObjectMaterialText(ObjData[id][oObject],ind,text,size,font,fsize,bold,fcolor,bcolor,alignment);
      ObjData[newobj][oMatsTextIndex] = ind;
      FixText(text);
      format(ObjData[newobj][oText], 256, "%s", text);
      ObjData[newobj][oMatsTextSize] = size;
      format(ObjData[newobj][oMatsTextFont], 32, "%s", font);
      ObjData[newobj][oMatsTextFontSize] = fsize;
      ObjData[newobj][oMatsTextBold] = bold;
      ObjData[newobj][oMatsTextColor] = fcolor;
      ObjData[newobj][oMatsTextBackColor] = bcolor;
      ObjData[newobj][oMatsTextAlignment] = alignment;
    }
    Object_Refresh(newobj);
    Object_Save(newobj);
    Streamer_Update(playerid);
    SendServerMessage(playerid, "OBJECT You've copied object id  %d to object id %d", id, newobj);
  } else if (!strcmp(opt, "gethere")) {
    new id;
    if (sscanf(value, "d", id))
      return SendSyntaxMessage(playerid, "/editobject gethere [object id]");

    if (!Iter_Contains(Obj, id)) return SendErrorMessage(playerid, "Invalid object id!");

    new Float:pos[4];
    GetPlayerPos(playerid, pos[0], pos[1], pos[2]);
    GetPlayerFacingAngle(playerid, pos[3]);

    pos[0] += 1.0 * floatsin(-pos[3], degrees);
    pos[1] += 1.0 * floatcos(-pos[3], degrees);

    ObjData[id][oPos][0] = pos[0];
    ObjData[id][oPos][1] = pos[1];
    ObjData[id][oPos][2] = pos[2];
    ObjData[id][oRot][2] = pos[3];
    ObjData[id][oVw] = GetPlayerVirtualWorld(playerid);
    ObjData[id][oInt] = GetPlayerInterior(playerid);
    
    Object_Refresh(id);
    Object_Save(id);
    Streamer_Update(playerid);
    SendServerMessage(playerid, "OBJECT You've been gethere object id %d to you.", id);
  } else if (!strcmp(opt, "material")) {
    new slot,index,model,txdname[32],texture[32],color[4];

    if (sscanf(value,"ddds[32]s[32]D(0)D(0)D(0)D(0)",slot,index,model,txdname,texture,color[0],color[1],color[2],color[3]))
    return SendSyntaxMessage(playerid, "/editobject material [object id] [index] [model] [txdname] [texture] [opt: alpha] [opt: red] [opt: green] [opt: blue]");

    if (!Iter_Contains(Obj, slot))
    return SendErrorMessage(playerid, "Invalid object id!");

    if ((index > MAX_MATERIALS) || (index < 0))
    return SendErrorMessage(playerid,"index cannot go below 0 or over %d!", MAX_MATERIALS);

    if (IsValidDynamicObject(ObjData[slot][oObject]))
      DestroyDynamicObject(ObjData[slot][oObject]), ObjData[slot][oObject] = INVALID_STREAMER_ID;

    ObjData[slot][oMaterials][index] = GetTextureIndex(texture);
    ObjData[slot][oMatsColor][index] = RGBAToInt(color[0], color[1], color[2], color[3]);
    Object_Refresh(slot);
    Object_Save(slot);
    Streamer_Update(playerid);
  } else if (!strcmp(opt, "resetmaterial")) {
    new id, index;
    if (sscanf(value, "dd", id, index))
      return SendSyntaxMessage(playerid, "/editobject resetmaterial [object id] [index]");

    if (!Iter_Contains(Obj, id))
      return SendErrorMessage(playerid, "Invalid object id!");

    ObjData[id][oMatsColor][index] = 0;
    ObjData[id][oMaterials][index] = 0;
//    RemoveDynamicObjectMaterial(ObjData[id][oObject], index);

    Object_Save(id);
    Streamer_Update(playerid);
    SendServerMessage(playerid, "OBJECT You've reset object material of object id: ", id);
  } else if (!strcmp(opt, "textprop")) {
    new id, index;
    if (sscanf(value, "dd", id, index))
      return SendSyntaxMessage(playerid, "/editobject textprop [object id] [index]");

    if (!Iter_Contains(Obj, id))
      return SendErrorMessage(playerid, "Invalid object id!");

    if((index >= 9) || (index < 0))
      return SendErrorMessage(playerid,"index cannot go below 0 or over 9!");

    if (ObjData[id][oMatsText]) {
      new ind,text[256],size,font[32],fsize,bold,fcolor,bcolor,alignment;
      GetDynamicObjectMaterialText(ObjData[id][oObject],ind,text,size,font,fsize,bold,fcolor,bcolor,alignment);
      ObjData[id][oMatsTextIndex] = index;
      FixText(text);
      format(ObjData[id][oText], 256, "%s", text);
      ObjData[id][oMatsTextSize] = size;
      format(ObjData[id][oMatsTextFont], 32, "%s", font);
      ObjData[id][oMatsTextFontSize] = fsize;
      ObjData[id][oMatsTextBold] = bold;
      ObjData[id][oMatsTextColor] = fcolor;
      ObjData[id][oMatsTextBackColor] = bcolor;
      ObjData[id][oMatsTextAlignment] = alignment;
      Streamer_Update(playerid);
      SetDynamicObjectMaterialText(ObjData[id][oObject],ObjData[id][oMatsTextIndex],ObjData[id][oText],ObjData[id][oMatsTextSize],ObjData[id][oMatsTextFont],ObjData[id][oMatsTextFontSize],ObjData[id][oMatsTextBold],ObjData[id][oMatsTextColor],ObjData[id][oMatsTextBackColor],ObjData[id][oMatsTextAlignment]);
      SetPVarInt(playerid, "EditObjMatsTextID", id);
      SetPVarInt(playerid, "EditObjMatsTextIndex", index);
      Dialog_Show(playerid,Object_TextMenu,DIALOG_STYLE_LIST,"Material Text","Text\nResolution\nFont\nFont Size\nToggle Bold\nFont Color\nBackground Color\nText Alignment","Select","Close");
    } else {
      ObjData[id][oMatsText] = 1;
      ObjData[id][oMatsTextIndex] = index;
      new text[256];
      format(text,sizeof(text),"Text Here");
      FixText(text);
      format(ObjData[id][oText], 256, text);
      ObjData[id][oMatsTextSize] = OBJECT_MATERIAL_SIZE_256x128;
      format(ObjData[id][oMatsTextFont], 32, "Arial");
      ObjData[id][oMatsTextFontSize] = 24;
      ObjData[id][oMatsTextBold] = 1;
      ObjData[id][oMatsTextColor] = 0xFFFFFFFF;
      ObjData[id][oMatsTextBackColor] = 0xFF000000;
      ObjData[id][oMatsTextAlignment] = 0;
      SetDynamicObjectMaterialText(ObjData[id][oObject],ObjData[id][oMatsTextIndex],ObjData[id][oText],ObjData[id][oMatsTextSize],ObjData[id][oMatsTextFont],ObjData[id][oMatsTextFontSize],ObjData[id][oMatsTextBold],ObjData[id][oMatsTextColor],ObjData[id][oMatsTextBackColor],ObjData[id][oMatsTextAlignment]);
      Streamer_Update(playerid);
      SetPVarInt(playerid, "EditObjMatsTextID", id);
      SetPVarInt(playerid, "EditObjMatsTextIndex", index);
      Dialog_Show(playerid,Object_TextMenu,DIALOG_STYLE_LIST,"Material Text","Text\nResolution\nFont\nFont Size\nToggle Bold\nFont Color\nBackground Color\nText Alignment","Select","Close");
      Object_Save(id);
    }
  } else if (!strcmp(opt, "resettextprop")) {
    new id;
    if (sscanf(value, "d", id))
      return SendSyntaxMessage(playerid, "/editobject resettextprop [object id]");

    if (!Iter_Contains(Obj, id))
      return SendErrorMessage(playerid, "Invalid object id!");

    //RemoveDynamicObjectMaterialText(ObjData[id][oObject], ObjData[id][oMatsTextIndex]);
    ObjData[id][oMatsText] = 0;
    ObjData[id][oMatsTextIndex] = 0;
    format(ObjData[id][oText], 256, "Text Here");
    ObjData[id][oMatsTextSize] = OBJECT_MATERIAL_SIZE_256x128;
    format(ObjData[id][oMatsTextFont], 32, "Arial");
    ObjData[id][oMatsTextFontSize] = 24;
    ObjData[id][oMatsTextBold] = 1;
    ObjData[id][oMatsTextColor] = 0xFFFFFFFF;
    ObjData[id][oMatsTextBackColor] = 0xFF000000;
    ObjData[id][oMatsTextAlignment] = 0;
    Object_Refresh(id);
    Object_Save(id);
    Streamer_Update(playerid);
    SendServerMessage(playerid, "OBJECT You've reset text prop of object id: %d",id);
  } else if (!strcmp(opt, "vw")) {
    new id, vw;
    if (sscanf(value, "dd", id, vw))
      return SendSyntaxMessage(playerid, "/editobject vw [object id] [virtual world]");

    if (!Iter_Contains(Obj, id))
      return SendErrorMessage(playerid, "Invalid object id!");

    ObjData[id][oVw] = vw;
    Object_Refresh(id);
    Object_Save(id);
    SendServerMessage(playerid, "OBJECT You've change virtual world of object id: %d to %d",id,vw);
  } else if (!strcmp(opt, "int")) {
    new id, int;
    if (sscanf(value, "dd", id, int))
      return SendSyntaxMessage(playerid, "/editobject int [object id] [interior id]");

    if (!Iter_Contains(Obj, id))
      return SendErrorMessage(playerid, "Invalid object id!");

    ObjData[id][oInt] = int;
    Object_Refresh(id);
    Object_Save(id);
    SendServerMessage(playerid, "OBJECT You've change interior id of object id:  %d to %d",id,int);
  } 
  return 1;
}

CMD:destroyobject(playerid, params[]) {
  if (AccountData[playerid][pAdmin] < 8) 
    return PermissionError(playerid);

  new id;
  if (sscanf(params, "d", id))
    return SendSyntaxMessage(playerid, "/destroyobject [object id]");

  if (!Iter_Contains(Obj, id)) return SendErrorMessage(playerid, "Invalid object id!");

  Object_Delete(id);
  SendServerMessage(playerid, "OBJECT You've deleted object id: %d", id);
  Streamer_Update(playerid);
  return 1;
}

CMD:objectinfo(playerid, params[]) {
  if (AccountData[playerid][pAdmin] < 8)
    return PermissionError(playerid);

  new id, str[1024];
  if (sscanf(params, "d", id))
    return SendSyntaxMessage(playerid, "/objectinfo [object id]");

  if (!Iter_Contains(Obj, id))
    return SendErrorMessage(playerid, "Invalid object id!");

  strcat(str,sprintf("Model:\t%d\n",ObjData[id][oModel]));
  strcat(str,sprintf("Position X:\t%.2f\n",ObjData[id][oPos][0]));
  strcat(str,sprintf("Position Y:\t%.2f\n",ObjData[id][oPos][1]));
  strcat(str,sprintf("Position Z:\t%.2f\n",ObjData[id][oPos][2]));
  strcat(str,sprintf("Position RotX:\t%.2f\n",ObjData[id][oRot][0]));
  strcat(str,sprintf("Position RotY:\t%.2f\n",ObjData[id][oRot][1]));
  strcat(str,sprintf("Position RotZ:\t%.2f\n",ObjData[id][oRot][2]));
  strcat(str,sprintf("Virtual World:\t%d\n",ObjData[id][oVw]));
  strcat(str,sprintf("Interior ID:\t%d\n",ObjData[id][oInt]));
  for (new j = 0; j < MAX_MATERIALS; j ++) if (ObjData[id][oMaterials][j] > 0) {
    strcat(str,sprintf("\nMaterial Index:\t%d\n",j));
    strcat(str,sprintf("Material Model:\t%d\n",GetTModel(ObjData[id][oMaterials][j])));
    strcat(str,sprintf("Material TxdName:\t%s\n",GetTXDName(ObjData[id][oMaterials][j])));
    strcat(str,sprintf("Material Texture:\t%s",GetTextureName(ObjData[id][oMaterials][j])));
  }
  if (ObjData[id][oMatsText]) {
    strcat(str,sprintf("\nMaterial Text Index:\t%d\n",ObjData[id][oMatsTextIndex]));
    strcat(str,sprintf("Material Text (text):\t%s\n",ObjData[id][oText]));
    strcat(str,sprintf("Material Text Resolution:\t%s\n",TextResolution[(ObjData[id][oMatsTextSize]/10)-1]));
    strcat(str,sprintf("Material Text Font:\t%s\n",ObjData[id][oMatsTextFont]));
    strcat(str,sprintf("Material Text Font Size:\t%d\n",ObjData[id][oMatsTextFontSize]));
    strcat(str,sprintf("Material Text Bold:\t%s\n",(ObjData[id][oMatsTextBold]) ? ("YES") : ("NO")));
    strcat(str,sprintf("Material Text Color:\t%d\n",ObjData[id][oMatsTextColor]));
    strcat(str,sprintf("Material Text Background:\t%d\n",ObjData[id][oMatsTextBackColor]));
    strcat(str,sprintf("Material Text Alignment:\t%s",(ObjData[id][oMatsTextAlignment] == 0) ? ("Left") : ((ObjData[id][oMatsTextAlignment] == 1) ? ("Center") : ((ObjData[id][oMatsTextAlignment] == 2) ? ("Right") : ("")))));
  }
  Dialog_Show(playerid, ShowOnly, DIALOG_STYLE_TABLIST, "Object ID", str, "OK", "");
  return 1;
}