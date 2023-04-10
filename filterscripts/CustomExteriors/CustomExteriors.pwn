#define FILTERSCRIPT

#include <a_samp>
#include <streamer>

#include "exteriors/aec.inc"
#include "exteriors/bv2.inc"
#include "exteriors/dl.inc"
#include "exteriors/dn.inc"
#include "exteriors/hl.inc"
#include "exteriors/ig.inc"
#include "exteriors/ikea.inc"
#include "exteriors/mc.inc"
#include "exteriors/sh.inc"
#include "exteriors/sw.inc"
#include "exteriors/tm.inc"
#include "exteriors/tx.inc"
#include "exteriors/teressa.inc"
#include "exteriors/mc_new.inc"

public OnFilterScriptInit()
{
    Init_Dealership();
    Init_Hauler();
    Init_Sweeper();
    Init_Trashmaster();
    Init_TaxiStation();
    Init_MechanicCenter();
    Init_AecHardware();
    Init_Boxville2();
    Init_IdlewoodGasStation();
    Init_Ikea();
    Init_LSMarketDoughnutShop();
    Init_TerresaExtHouse();
    Init_Mechanic_New();
    return 1;
}

public OnFilterScriptExit()
{
    return 1;
}

public OnPlayerConnect(playerid)
{
    DL_RemoveBuilding(playerid);
    HL_RemoveBuilding(playerid);
    TM_RemoveBuilding(playerid);
    MC_RemoveBuilding(playerid);
    BV2_RemoveBuilding(playerid);
    TerresaExtRemoveBuilding(playerid);
    return 1;
}
