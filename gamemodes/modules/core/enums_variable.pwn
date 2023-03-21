/*
	Enum's variable list
*/
// Define
#define INVALID_TAKE_CRATES -1
#define INVALID_SELECTED_TARGET -1
//============================== LOCAL =============================
	
new AccountData[MAX_PLAYERS][ucpData];
new CharacterList[MAX_PLAYERS][MAX_CHARACTERS][MAX_PLAYER_NAME + 1];
new PlayerData[MAX_PLAYERS][playerData];
new FactionData[MAX_FACTIONS][factionData];
new HouseData[MAX_HOUSES][houseData];
new PlayerTextdraws[MAX_PLAYERS][playerTextraws];
new JobData[MAX_DYNAMIC_JOBS][jobData];
new ObjectData[MAX_TEXTOBJECT][objectData];
new BillBoardData[MAX_BILLBOARDS][billboardData];
new CrateData[MAX_CRATES][crateData];
new BusinessData[MAX_BUSINESSES][businessData];
new EntranceData[MAX_ENTRANCES][entranceData];
new AccData[MAX_PLAYERS][MAX_ACC][acc];
new FactionRanks[MAX_FACTIONS][15][32];
new GarbageData[MAX_GARBAGE_BINS][garbageData];
new ImpoundData[MAX_IMPOUND_LOTS][impoundData];
new WorkshopData[MAX_WORKSHOP][workshopEnums],
	Iterator:Workshop<MAX_WORKSHOP>;

new TakeCrates[MAX_PLAYERS] = { INVALID_TAKE_CRATES, ... };
new selectedTarget[MAX_PLAYERS] = { INVALID_SELECTED_TARGET, ... };
//new RentPoint[MAX_RENT_POINT][rentPoint];

new CallerPlayerID[MAX_PLAYERS] = {INVALID_PLAYER_ID, ...};

new ServerData[serverPropertise];

//AFK Timer
// new Float:PlayerPosAFK[MAX_PLAYERS][6];
// new AFKMath[MAX_PLAYERS];
// new Angka1[MAX_PLAYERS];
// new Angka2[MAX_PLAYERS];
// new Hasil[MAX_PLAYERS];


//Hauler
new CarryWoods[MAX_PLAYERS];
new CarryComponent[MAX_PLAYERS];

new AdsHolder[MAX_PLAYERS][255];
new PhoneHolder[MAX_PLAYERS];

new OfferID[MAX_PLAYERS];
new OfferPrice[MAX_PLAYERS];

// new Timer:AFKTimerHolder[MAX_PLAYERS];

//Pulsa
new TransferAmount[MAX_PLAYERS];
new kuranginCredits[MAX_PLAYERS];
new makeCall[MAX_PLAYERS];

//Turbo Changer
new bool:DisableTurbo[MAX_VEHICLES] = {false, ...};
new bool:ChangeTurboOne[MAX_VEHICLES] = {true, ...};
new bool:ChangeTurboTwo[MAX_VEHICLES] = {true, ...};
new bool:ChangeTurboThree[MAX_VEHICLES] = {true, ...};

//ApplyAnimnationEx Player Var
new RecentAnim[MAX_PLAYERS];


//Phonetextdraw
new PlayerText:PlayerTD[MAX_PLAYERS][1];
new PlayerText:BOX1[MAX_PLAYERS];
new PlayerText:BOX2[MAX_PLAYERS];
new PlayerText:ScreenBG[MAX_PLAYERS];
new PlayerText:BOX3[MAX_PLAYERS];
new PlayerText:MidButton[MAX_PLAYERS];
new PlayerText:Contacts[MAX_PLAYERS];
new PlayerText:Messages[MAX_PLAYERS];
new PlayerText:AcceptCall[MAX_PLAYERS];
new PlayerText:DeniedCall[MAX_PLAYERS];
new PlayerText:DialNumber[MAX_PLAYERS];
new PlayerText:PhoneNumber[MAX_PLAYERS];
new PlayerText:MissedCall[MAX_PLAYERS];
new PlayerText:RingTone[MAX_PLAYERS];
new PlayerText:Credits[MAX_PLAYERS];
new PlayerText:CarGPS[MAX_PLAYERS];
new PlayerText:PhoneOff[MAX_PLAYERS];
new PlayerText:ShareLocation[MAX_PLAYERS];
new PlayerBar:BarAtas[MAX_PLAYERS];

new PlayerText:PhoneTimeMinimize[MAX_PLAYERS];
new PlayerText:PhoneTimeMaximize[MAX_PLAYERS];


//Phone Minimize
new PlayerText:MinimizeBG[MAX_PLAYERS];
new PlayerText:MinimizePhoneNumb[MAX_PLAYERS];
new PlayerText:MinimizeWallpaper[MAX_PLAYERS];
new PlayerText:PhoneOnButton[MAX_PLAYERS];
new PlayerText:PhoneOnText[MAX_PLAYERS];
new PlayerBar:BarBawah[MAX_PLAYERS];

//Incoming Call
// new PlayerText:IncomingNumber[MAX_PLAYERS];
// new PlayerText:IncomingCall[MAX_PLAYERS];

//Phone Battery
new BatteryCounter[MAX_PLAYERS];
new ChargePhone[MAX_PLAYERS];


//Fishing
new FishListItem[MAX_PLAYERS];

new BaitEaten[MAX_PLAYERS];
new FishClicked[MAX_PLAYERS];
new FishClickedReduce[MAX_PLAYERS];
new Timer:MancingTimer[MAX_PLAYERS];

new PlayerText:FishingPowerText[MAX_PLAYERS];
new PlayerBar:FishingProgressBar[MAX_PLAYERS];

//Bleeding
new BleedingTimer[MAX_PLAYERS];
new BleedingNotification[MAX_PLAYERS];

//Backup checkpoint reset
new BackupCheckPoint[MAX_PLAYERS];
new ShareLocationCP[MAX_PLAYERS];

//Smoking and Drinking
new PlayerSmoking[MAX_PLAYERS];

new PlayerDeath[MAX_PLAYERS];

//Speed Radar
new 
  PlayerText:RadarBOX[MAX_PLAYERS],
  PlayerText:SpeedRadarTD[MAX_PLAYERS],
  PlayerText:SpeedTextTD[MAX_PLAYERS],
  PlayerText:ModelTextTD[MAX_PLAYERS],
  PlayerText:PlateTextTD[MAX_PLAYERS],
  PlayerText:SeparatorTD[MAX_PLAYERS],
  PlayerText:ModelTD[MAX_PLAYERS],
  PlayerText:SpeedTD[MAX_PLAYERS],
  PlayerText:PlateTD[MAX_PLAYERS]
;

new PlayerText:SafeZone[MAX_PLAYERS];

//HUD_1

new PlayerText:BOX_HUD1[MAX_PLAYERS];
new PlayerText:BURGERICON_HUD1[MAX_PLAYERS];
new PlayerText:BURGERVALUE_HUD1[MAX_PLAYERS];
new PlayerText:DRINKICON_HUD1[MAX_PLAYERS];
new PlayerText:DRINKVALUE_HUD1[MAX_PLAYERS];

//HUD_2

new PlayerText:BOX_HUD2[MAX_PLAYERS];
new PlayerText:BURGERICON_HUD2[MAX_PLAYERS];
new PlayerText:BURGERVALUE_HUD2[MAX_PLAYERS];
new PlayerText:DRINKICON_HUD2[MAX_PLAYERS];
new PlayerText:DRINKVALUE_HUD2[MAX_PLAYERS];