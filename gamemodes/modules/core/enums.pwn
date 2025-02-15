/*
	Script enums List
*/

//============================== GLOBAL =============================

enum
{
    CARGO_NONE = 0,
    CARGO_MART,
    CARGO_GUN,
    CARGO_CLOTHES,
    CARGO_MEAL,
    CARGO_DEALER,
    CARGO_FUEL,
    CARGO_FURNITURE,
    CARGO_ELECTRONICS,
    CARGO_BAR
}
enum
{
    INVALID_CHECKPOINT_INDEX = 0,
    APARTMENT_CHECKPOINT_INDEX
};


enum
{
    INVALID_AREA_INDEX = 0,
    ATM_AREA_INDEX,
    PLANT_AREA_INDEX,
    SPEED_AREA_INDEX,
    BARRICADE_AREA_INDEX,
    FIRE_AREA_INDEX,
    VENDING_AREA_INDEX,
    DRUGLAB_AREA_INDEX
};

enum    _:E_ISSUE
{
    THREAD_CREATE_CHAR = 1,
    THREAD_CHARACTERS,
    THREAD_SHOW_CHARACTERS,
    THREAD_LIST_CHARACTERS,
    THREAD_LOAD_CHARACTERS,
    THREAD_VERIFY_PASS,
    THREAD_VERIFY_EMAIL,
    THREAD_FIND_USERNAME,
    THREAD_LOAD_INVENTORY,
    THREAD_BAN_LOOKUP,
    THREAD_LOAD_CONTACTS,
    THREAD_LOAD_LOCATIONS,
    THREAD_LOAD_TICKETS,
    THREAD_LOAD_ACC,
    THREAD_LOAD_DAMAGES,
    THREAD_LOAD_WEAPONS,
    THREAD_LOAD_AMMO,
    THREAD_LOAD_WEPATTACH
}

enum    _:E_SELECTION_TYPE
{
    MODEL_SELECTION_NONE = 0,
    MODEL_SELECTION_AKSESORIS,
    MODEL_SELECTION_GLASSES,
    MODEL_SELECTION_SKIN,
    MODEL_SELECTION_INVENTORY,
    MODEL_SELECTION_DEALER,
    MODEL_SELECTION_DEALER_ADD,
    MODEL_SELECTION_BUY_CAR,
    MODEL_SELECTION_FURNITURE,
    MODEL_SELECTION_SKINS,
    MODEL_SELECTION_ADD_SKIN,
    MODEL_SELECTION_FACTION_SKIN,
    MODEL_SELECTION_WHELLS,
    MODEL_SELECTION_ROADBLOCK,
    MODEL_SELECTION_VEHOBJECT
}

enum    _:E_FACTION_TYPE
{
    FACTION_NONE = 0,
    FACTION_POLICE,
    FACTION_NEWS,
    FACTION_MEDIC,
    FACTION_GOV,
    FACTION_GANG,
    FACTION_SADOC,
    FACTION_LEGAL
}

enum    _:E_JOB_TYPE
{
    JOB_NONE = 0,
    JOB_COURIER,
    JOB_MECHANIC,
    JOB_TAXI,
    JOB_UNLOADER,
    JOB_MINER,
    JOB_FOOD_VENDOR,
    JOB_SORTER,
    JOB_ARMS_DEALER,
    JOB_LUMBERJACK,
    JOB_HAULER,
    JOB_FARMER
}

enum    _:E_EDITING_TYPE
{
    NOTHING = 0,
    GATE,
    LUMBER,
    OBJECTTEXT,
    FURNITURE,
    OBJECT,
    VEHICLE,
    ROADBLOCK
}

enum    _:E_AMMO_TYPE
{
    AMMO_TYPE_NORMAL = 0,
    AMMO_TYPE_RUBBER,
    AMMO_TYPE_SURPLUSE
}

enum    _:E_PREVIEWMODEL_DIALOG
{
    DIALOG_NONE = 0,
    DIALOG_BUYVEHICLE,
    DIALOG_VIPCAR,
    DIALOG_DELETE_VIPCAR,
    DIALOG_RENTVEH,
    DIALOG_BARRICADE,
    DIALOG_SELECT_WHEELS,
    DIALOG_MOD_SELECT_WHEELS
}

enum    _:E_HOUSE_TYPE
{
    TYPE_SMALL = 0,
    TYPE_MEDIUM,
    TYPE_LARGE
}

//============================== LOCAL =============================

enum ucpData
{
    pID,
    pUsername[MAX_PLAYER_NAME + 1],
    pPassword[65],
    pSalt[65],
    pIP[16],
    pMail[32],
    pVerifyCode[32],

    pAdmin,
    pAdminRankName[25],
    pAdminDuty,
    pAdminDutyTime,
    pAdminAcceptReport,
    pAdminDeniedReport,
    pAdminAcceptStuck,
    pAdminDeniedStuck,
    pAdminBanned,
    pAdminUnbanned,
    pAdminJail,
    pAdminAnswer,

    pReportPoint,
    pLoginAttempts,
    pLoginDate,
    pRegisterDate,
    pLogged,
    pBanned,
    pAdminHide,
    pLeaveIP[16],
    pDisableTester,
    Timer:pLoginTimer,
    Timer:pEmailTimer
}

enum playerData
{
    pID,
    pCharacter,
    pLogged,
    //pTempName[MAX_PLAYER_NAME + 1],
    //pUsername[MAX_PLAYER_NAME +1],
    PlayerText:pTextdraws[4],
    pLoginAttempts,
    pRconAttemp,
    pCreated,
    pGender,
    pBirthdate[24],
    pOrigin[32],
    pSkin,
    pSkinFaction,
    pEditType,
    Float:pPos[4],
    Float:tPos[3],
    Float:pAdmMark[4],
    pAdmMarkInt,
    pAdmMarkVW,
    Float:pHealth,
    pInterior,
    pWorld,
    pApartment,
    pApartmentBuilding,
    pHospital,
    pHospitalInt,
    pHospitalTime,
    pKilled,
    pMoney,
    pBankMoney,
    pOwnsBillboard,
    pWalkStyle,
    pShowFooter,
    pFooterTimer,
    pReportTime,
    pSpectator,
    pJailTime,
    pJailReason[32],
    pJailedBy[24],
    pKicked,
    pMuted,
    pDisplayStats,
    pCharacterMenu,
    pLastShot,
    pLastWeapon,
    pShotTime,
    pInventoryItem,
    pStorageItem,
    pStorageSelect,
    pProductModify,
    pTutorialTime,
    pTutorialObject,
    pTutorialObjectGate,
    pHouse,
    pFurnStore,
    pBusiness,
    pEntrance,
    pDealership,
    pContact,
    pKiller,
    pKillerReason,
    pAksesoris,
    pGasPump,
    pGasStation,
    pEditPump,
    pEditLumber,
    pEditTextObject,
    pEditAtm,
    pEditFurniture,
    pEditRoadblock,
    pSelectFurniture,
    pRefill,
    pRefillPrice,
    pDealerCar,
    pEditingItem[32 char],
    pHouseSeller,
    pHouseOffered,
    pHouseValue,

    pApartmentSeller,
    pApartmentOffered,
    pApartmentValue,

    pVendingSeller,
    pVendingOffered,
    pVendingValue,

    pBusinessSeller,
    pBusinessOffered,
    pBusinessValue,
    pBodySeller,
    pBodyOffered,
    pWorkshopSeller,
    pWorkshopOffered,
    pWorkshopValue,
    pCarSeller,
    pCarOffered,
    pCarValue,
    pShakeOffer,
    pShakeType,
    pFriskOffer,
    pFoodSeller,
    pFoodType,
    pFoodPrice,
    pFactionOffer,
    pFactionOffered,
    pHouseLights,
    pPhone,
    pPhoneOff,
    Float:pPhoneBattery,
    pLottery,
    pLotteryB,
    Float:pHunger,
    Float:pDead,
    Float:pEnergy,
    pCooking,
    pCookingTime,
    pCookingHouse,
    pCookingApart,
    pPlayingHours,
    pScore,
    pMinutes,
    pCanPaycheck,
    Float:pArmorStatus,
    pClothesType,
    pDMVTime,
    pTestStage,
    pFurnitureType,
    pJob,
    pJobLeave,
    pJobLeaveTime,
    pTaxiFee,
    pTaxiPlayer,
    pFirstAid,
    Timer:pAidTimer,
    pIncomingCall,
    pCallLine,
    pMining,
    pMineTime,
    pMineCount,
    pMinedRock,
    pMineSalary,
    pCarryCrate,
    pCrateVehicle,
    pCrafting,
    pHarvesting,
    pFaction,
    pFactionID,
    pFactionRank,
    pFactionDiv,
    pFactionEdit,
    pSelectedSlot,
    pOnDuty,
    pUndercoverDuty,
    pTazer,
    pBeanBullets,
    pStunned,
    pCuffed,
    pTied,
    pDrag,
    pDragged,
    pDraggedBy,
    Timer:pDragTimer,
    pWarrants,
    pMDCPlayer,
    pTrackTime,
    pCP,
    pPrisoned,
    pInjured,
    Text3D:pInjuredTag,
    pGiveupTime,
    pBroadcast,
    pNewsGuest,
    pMuteTime,
    pTransfer,
    pFuelCan,
    pDisableOOC,
    pDisableAdmin,
    pDisablePM,
    pDisableFaction,
    pDisableTester,
    pDisableBC,
    pDisableAnim,
    pDisableLogin,
    pDisableSpeedo,
    pNameChange[32],
    pDrugUsed,
    pDrugTime,
    pFingerTime,
    pFingerItem,
    pWeapon,
    pBackpackLoot,
    pGiveItem,
    pChannel,
    pEmergency,
    pFactionCall,
    pFactionCallID,
    pSanHotline,
    pTargets,
    pTargetLevel,
    pVendorTime,
    pLoopAnim,
    pExecute,
    pTakeItems,
    PlayerBar:pDrinkBar,
    pCuttingProgress,
    pPlaceAd,
    pAdvertise[120],
    Timer:pAdvertiseTimer,
    pTaxiCalled,
    pMechanicCalled,
    pSpeedTime,
    pMarker,
    pBleeding,
    pBleedTime,
    pBandage,
    pLoadType,
    pLoadCrate,
    pLoading,
    pUnloading,
    pUnloadVehicle,
    pShipment,
    pDeliverShipment,
    pWarnings,
    pSorting,
    pSortCrate,
    pHUD,
    pMaskID,
    pMaskOn,
    pFactionMod,
    pCapacity,
    pPlayRadio,
    pLeaveTime,
    pDetectorTime,
    pPicking,
    pPickCar,
    pPickTime,
    pJetpack,
    pBizJob,
    pBizJobDuty,
    pBizDuty,
    pBizDutyHour,
    pFreeze,
    Timer:pFreezeTimer,
    Text3D:pNameTag,
    Text3D:pTabOut,
    Text3D:pAdoTag,
    pSpawnPoint,
    PlayerBar:fuelbar,
    pPemberitahuan,
    pTrashmasterDelay,
    pDelayFishing,
    pDelayTruck,
    pMoneytransDelay,
    pBoxvilleDelay,
    pWorkLocation,
    pJump,
    pRentVehicle,
    pDealer,
    pWrong,
    pRegUser,
    pDealerVehicle,
    pDealerEdit,
    pRepair,
    pDrivingLicense,
    pDrivingLicenseExpired,
    pIDCardExpired,
    pFlyingLicense,
    pFlyingLicenseExpired,
    pBoatLicense,
    pBoatLicenseExpired,
    pFirearmLicense,
    pFirearmLicenseExpired,
    pBusinessLicense,
    pBusinessLicenseExpired,
    pWorkshopLicense,
    pWorkshopLicenseExpired,
    pLumberLicense,
    pLumberLicenseExpired,
    pBLSLicense,
    pBLSLicenseExpired,
    pHour,
    pMinute,
    pSecond,
    pAlias[MAX_PLAYER_NAME],
    pDisableAPM,
    pDisableLDO,
    pDisableRADIO,
    pTestSurgey,
    pSurgeyID,
    pStartSurgey,
    pSurgeyFix,
    pSurgeryTimer,
    pHidegun,
    pLaginembak,
    pRegisterDate,
    pLastVehicleWarn,
    pLastVehicleTime,
    pLastVehicle,
    pStuck,
    bool:pAdoActive,
    pLastCar,
    pCustomPlate,
    pPlate[24],
    pPlateID,
    pJobDuty,
    pSalary,
    pJobTime,
    pEditVehicleObject,
    pEditVehicleObjectSlot,
    pCWarn,
    pTWarn,
    pEditingMode,
    pEditObject,
    pFishing,
    Timer:pFishingTime,
    pWoodCheckpoint,
    pWoodDelay,
    pDelivery,
    pLumberDelay,
    pCheatAmmo,
    bool:pTogHud,
    pBadge,
    pSTNKVehicle,
    pSTNKUserid,
    pSTNKPrice,
    pCough,
    pCoughTime,
    pMigrainTime,
    pMigrainRate,
    pFever,
    pFeverTime,
    pCoughPills,
    pMigrainPills,
    pFiverPills,
    pMigrainUsed,
    pFeverUsed,
    pUsePills,
    pAcceptInspect,
    pAcceptDrag,
    pGarage,
    pGunAuthority,
    pTaxiRunDistance,
    pEditSlot,
    pSweeperDelay,
    pBusDelay,
    pAudioPlay,
    pVehAudioPlay,
    pOnDrag,
    pDisableInfluentext,
    pEntranceTick,
    pTestWarns,
    pFightStyle,
    pOnAnim,
    // Skills
    pMechanicLevel,
    pMechanicEXP,

    // Couple System
    pStatus, // 0 Single, 1 Dating, 2 Married
    Float:pLove,
    pPartnerName[MAX_PLAYER_NAME],
    pTogRelation,
    pPartnerID, //ID SQL Untuk partnernya.

    //Nyimpen jam onduty player dan hourlynya
    pFactionDuty,
    pFactionHour,
    // Menyimpan waktu kapan duty hour di-reset.
    pFactionSalaryCollected,
    pFactionSalaryResettedAt,

    //Nyimpen license trucker
    pTruckLicense,
    pTruckLicenseExpired,

    //Experience
    pExp,

    //Pulsa
    pCredits,

    //Accent
    pAccent[40],

    pFreq[6],
    pLiveMode,

    //Parked Vehicle
    pParkedVehicle,

    //Drunk Script
    pDrunk,
    pDrunkTime,

    pLastActor,
    pLastBiz,

    pSpecialEffect,

    pHudStyle,

    //Garage
    pGarageSeller,
    pGarageOffered,
    pGarageValue,


};

enum factionData
{
    factionID,
    factionExists,
    factionName[225],
    factionMotd[225],
    factionColor,
    factionType,
    factionRanks,
    Float:factionLockerPos[3],
    factionLockerInt,
    factionLockerWorld,
    factionSkins[8],
    factionWeapons[10],
    factionAmmo[10],
    factionDurability[10],
    factionGunRank[10],
    factionSerial[10],
    factionMoney,
    Text3D:factionText3D,
    factionPickup,
    Float:SpawnX,
    Float:SpawnY,
    Float:SpawnZ,
    SpawnInterior,
    SpawnVW,
    factionWithdraw[MAX_PLAYER_NAME],
    factionWithdrawMoney,
    factionDeposit[MAX_PLAYER_NAME],
    factionDepositMoney,
    factionSalary[15],
    factionNumber,
};

enum houseData
{
    houseID,
    houseExists,
    houseOwner,
    housePrice,
    houseOwnerName[32],
    houseAddress[32],
    Float:housePos[4],
    Float:houseInt[4],
    houseInterior,
    houseExterior,
    houseExteriorVW,
    houseLocked,
    houseMoney,
    Text3D:houseText3D,
    housePickup,
    houseCheckpoint,
    houseLights,
    houseWeaponSlot[5],
    houseWeapons[5],
    houseAmmo[5],
    houseDurability[5],
    houseSerial[5],
    houseLastVisited,
    furniture[MAX_HOUSE_FURNITURE],

    //House Parking Spawn
    houseParkingSlot,
    houseParkingSlotUsed,
    //Float:houseParkingPos[4]
    housePacket,
    houseSeal
};

enum playerTextraws
{
    PlayerText:textdraw_prison,
    PlayerText:textdraw_map,
    PlayerText:textdraw_ammo,
    PlayerText:textdraw_footer,
    PlayerText:textdraw_supply,
    PlayerText:textdraw_record,
    PlayerText:textdraw_speedometer[4],
    PlayerText:textdraw_taxi[4],
    PlayerText:textdraw_playerGUI[8],
    PlayerText:textdraw_spectate[2],
    PlayerText:textdraw_trash[2],
    PlayerText:textdraw_registrasi[10],
    PlayerText:textdraw_clothes[6],
    PlayerText:textdraw_moneyhud,
    PlayerText:textdraw_switch,
    PlayerText:textdraw_sick,
    PlayerText:textdraw_timegui[2],
    PlayerText:textdraw_box,
    PlayerText:textdraw_blindfold
};

enum jobData
{
    jobID,
    jobExists,
    jobType,
    Float:jobPos[3],
    Float:jobPoint[3],
    Float:jobDeliver[3],
    jobInterior,
    jobWorld,
    jobPointInt,
    jobPointWorld,
    jobStock,
    jobPickups[3],
    jobIcon,
    jobPrison,
    Text3D:jobText3D[3]
};

enum objectData
{
    oID,
    oExists,
    oModel,
    oText[255],
    oFontNames[24],
    Float:oPos[6],
    oFontColor,
    oBackColor,
    oVw,
    oInt,
    objectText,
    oFontSize
};

enum billboardData
{
    bbID,
    bbExists,
    bbName[32],
    bbMessage[230],
    bbOwner,
    bbPrice,
    bbRange,
    Float:bbPos[4],
    Text3D:bbText3D
};

enum crateData
{
    crateID,
    crateExists,
    crateType,
    Float:cratePos[4],
    crateInterior,
    crateWorld,
    crateObject,
    crateVehicle,
    Text3D:crateText3D
};

enum businessData
{
    bizID,
    bizExists,
    bOwnerName[25],
    bizName[32],
    bizMessage[128],
    bizOwner,
    bizType,
    bizPrice,
    Float:bizPos[4],
    Float:bizInt[4],
    Float:bizSpawn[4],
    Float:bizDeliver[3],
    bizInterior,
    bizExterior,
    bizExteriorVW,
    bizLocked,
    bizVault,
    bizProducts,
    bizPickup,
    bizShipment,
    bizPrices[20],
    Text3D:bizText3D,
    Text3D:bizDeliverText3D,
    bizDeliverPickup,
    bizSeal,
    bizCargo,
    bizJob,
    bizWarn,
    bizLink[128],
    bizDurability
};

enum entranceData
{
    entranceID,
    entranceExists,
    entranceName[128],
    entrancePass[32],
    entranceIcon,
    entranceLocked,
    Float:entrancePos[4],
    Float:entranceInt[4],
    entranceInterior,
    entranceExterior,
    entranceExteriorVW,
    entranceType,
    entranceCustom,
    entranceWorld,
    entranceVehAble,
    entranceForklift[7],
    entrancePickup,
    Text3D:entranceText3D,
    entrancePickupInt,
    Text3D:entranceText3DInt,
    entranceCheckpoint
};

enum workshopEnums
{
    wID,
    wExists,
    wName[32],
    wText[128],
    Float:wPos[3],
    Float:wBoard[6],
    wOwner,
    wToggle,
    wVault,
    wPrice,
    wComponent,
    wBoardObject,
    Text3D:wLabel,
    wPickup,
    wSeal
};

enum acc
{
    accID,
    accName[32],
    accExists,
    accColor1[3],
    accColor2[3],
    accModel,
    accBone,
    accShow,
    Float:accOffset[3],
    Float:accRot[3],
    Float:accScale[3],
};

enum garbageData
{
    garbageID,
    garbageExists,
    garbageModel,
    garbageCapacity,
    Float:garbagePos[4],
    garbageInterior,
    garbageWorld,
    garbageObject
};

enum impoundData
{
    impoundID,
    impoundExists,
    Float:impoundLot[3],
    Float:impoundRelease[4],
    Text3D:impoundText3D,
    impoundPickup
};

enum serverPropertise
{
    g_Motd[225],
    a_Motd[225],
    h_Motd[225],
    g_Players,
    Float:fish_Price,
    cow_price,
    deer_price,
    lsd_price,
    ecs_price,
    Tax,
    ServerTimer,
    ServerTime,
    ServerTimeMinute,
    ServerTimeInterval,
    ServerTimeSync,
    bool:IsRealTimeEnabled,
    wheat_price
};


/*==============================================================================
    Enums
==============================================================================*/

enum playerTemp
{
    temp_colindex,
    temp_pivot,
    temp_col1,
    temp_col2,
    temp_selectskin,
    temp_realskin,
    temp_blindfold,
    temp_vehicleid,
    temp_vehiclekey,
    bool:temp_selecttextdraw,
    Float:temp_voldpos[6]
};

enum inventoryData
{
    invExists,
    invID,
    invItem[32 char],
    invModel,
    invQuantity
};

enum houseStorage
{
    hItemID,
    hItemExists,
    hItemName[32 char],
    hItemModel,
    hItemQuantity
};

enum droppedItems
{
    droppedID,
    droppedItem[32],
    droppedPlayer[24],
    droppedModel,
    droppedQuantity,
    droppedTime,
    Float:droppedPos[3],
    droppedWeaponId,
    droppedAmmo,
    droppedInt,
    droppedWorld,
    droppedObject,
    Text3D:droppedLabel
};

enum furnitureData
{
    furnitureID,
    furnitureHouse,
    furnitureExists,
    furnitureModel,
    furnitureName[32],
    Float:furniturePos[3],
    Float:furnitureRot[3],
    furnitureObject,
    furnitureUnused
};

enum contactData
{
    contactID,
    contactExists,
    contactName[32],
    contactNumber
};


enum locationData
{
    locationID,
    locationExists,
    locationName[32],
    Float:locationPos[3],
};

enum arrestPoints
{
    arrestID,
    arrestExists,
    Float:arrestPos[3],
    arrestInterior,
    arrestWorld,
    Text3D:arrestText3D,
    arrestPickup
};

enum ticketData
{
    ticketID,
    ticketExists,
    ticketFee,
    ticketDate[36],
    ticketReason[64],
    ticketIssuer[24]
};
