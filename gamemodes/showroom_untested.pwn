// Scripted by poxer, with love :-*


#include <a_samp> 			// by SA:MP Dev Team ♥
#include <zcmd>      		// by Zeex ♥
#include <sscanf2>   		// by Y_Less ♥
#include <easyDialog> 		// by Emmet_ ♥
//#include <streamer> 		// by Incognito ♥
#include <strlib> 			// by Slice ♥
#include <crashdetect> 		// by 0x5A656578 ♥

// Dialogs: 1000 (commands), 1001 (changelog) // don't mind about this, we are using easyDialog now.



AntiDeAMX()
{
	new a[][] =
	{
		"Unarmed (Fist)",
		"Brass K"
	};
	#pragma unused a
}

enum
	e_Player
{
	LastVehicle,
	IsAdmin
};

new Player[MAX_PLAYERS][e_Player];
new PlayerText: CarName;

new aVehicleNames[][] =
{
        {"Landstalker"},    {"Bravura"},            {"Buffalo"},            {"Linerunner"},     {"Perrenial"},      {"Sentinel"},       {"Dumper"},
        {"Firetruck"},      {"Trashmaster"},        {"Stretch"},            {"Manana"},         {"Infernus"},       {"Voodoo"},         {"Pony"},           {"Mule"},
        {"Cheetah"},        {"Ambulance"},          {"Leviathan"},          {"Moonbeam"},       {"Esperanto"},      {"Taxi"},           {"Washington"},
        {"Bobcat"},         {"Mr Whoopee"},         {"BF Injection"},       {"Hunter"},         {"Premier"},        {"Enforcer"},       {"Securicar"},
        {"Banshee"},        {"Predator"},           {"Bus"},{"Rhino"},      {"Barracks"},       {"Hotknife"},       {"Artic Trailer 1"},      {"Previon"},
        {"Coach"},          {"Cabbie"},             {"Stallion"},           {"Rumpo"},          {"RC Bandit"},      {"Romero"},         {"Packer"},         {"Monster"},
        {"Admiral"},        {"Squalo"},             {"Seasparrow"},         {"Pizzaboy"},       {"Tram"},           {"Artic Trailer 2"},      {"Turismo"},
        {"Speeder"},        {"Reefer"},             {"Tropic"},             {"Flatbed"},        {"Yankee"},         {"Caddy"},          {"Solair"},         {"Berkley's RC Van"},
        {"Skimmer"},        {"PCJ-6_0_0"},          {"Faggio"},             {"Freeway"},        {"RC Baron"},       {"RC Raider"},      {"Glendale"},       {"Oceanic"},
        {"Sanchez"},        {"Sparrow"},            {"Patriot"},            {"Quad"},           {"Coastguard"},     {"Dinghy"},         {"Hermes"},         {"Sabre"},
        {"Rustler"},        {"ZR-3_5_0"},           {"Walton"},             {"Regina"},         {"Comet"},{"BMX"},  {"Burrito"},        {"Camper"},         {"Marquis"},
        {"Baggage"},        {"Dozer"},              {"Maverick"},           {"News Chopper"},   {"Rancher"},        {"FBI Rancher"},    {"Virgo"},          {"Greenwood"},
        {"Jetmax"},         {"Hotring"},            {"Sandking"},           {"Blista Compact"}, {"Police Maverick"},{"Boxville"},       {"Benson"},
        {"Mesa"},           {"RC Goblin"},          {"Hotring Racer A"},    {"Hotring Racer B"},{"Bloodring Banger"},{"Rancher"},
        {"Super GT"},       {"Elegant"},            {"Journey"},            {"Bike"},           {"Mountain Bike"},  {"Beagle"},         {"Cropdust"},       {"Stunt"},
        {"Tanker"},         {"Roadtrain"},          {"Nebula"},             {"Majestic"},       {"Buccaneer"},      {"Shamal"},         {"Hydra"},          {"FCR-900"},
        {"NRG-500"},        {"HPV1000"},            {"Cement Truck"},       {"Tow Truck"},      {"Fortune"},        {"Cadrona"},        {"FBI Truck"},
        {"Willard"},        {"Forklift"},           {"Tractor"},            {"Combine"},        {"Feltzer"},        {"Remington"},      {"Slamvan"},
        {"Blade"},          {"Freight"},            {"Streak"},             {"Vortex"},         {"Vincent"},        {"Bullet"},         {"Clover"},         {"Sadler"},
        {"Firetruck LA"},   {"Hustler"},            {"Intruder"},           {"Primo"},          {"Cargobob"},       {"Tampa"},          {"Sunrise"},        {"Merit"},
        {"Utility"},        {"Nevada"},             {"Yosemite"},           {"Windsor"},        {"Monster A"},      {"Monster B"},      {"Uranus"},         {"Jester"},
        {"Sultan"},         {"Stratum"},            {"Elegy"},              {"Raindance"},      {"RC Tiger"},       {"Flash"},          {"Tahoma"},         {"Savanna"},
        {"Bandito"},        {"Freight Flat"},       {"Streak Carriage"},    {"Kart"},           {"Mower"},          {"Duneride"},       {"Sweeper"},
        {"Broadway"},       {"Tornado"},            {"AT-400"},             {"DFT-30"},         {"Huntley"},        {"Stafford"},       {"BF-400"},         {"Newsvan"},
        {"Tug"},            {"Chemical Trailer"},          {"Emperor"},            {"Wayfarer"},       {"Euros"},          {"Hotdog"},         {"Club"},           {"Freight Carriage"},
        {"Artic Trailer 3"},      {"Andromada"},          {"Dodo"},               {"RC Cam"},         {"Launch"},         {"Police Car LSPD"},{"Police Car SFPD"},
        {"Police _LVPD"},   {"Police Ranger"},      {"Picador"},            {"SWAT. Van"},      {"Alpha"},          {"Phoenix"},        {"Glendale"},
        {"Sadler"},         {"Luggage Trailer A"},  {"Luggage Trailer B"},  {"Stair Trailer"},{"Boxville"},         {"Farm Plow"},
        {"Utility Trailer"}
};

main()
{
	print("-------------------------------");
	print(" Showroom v1.0.1 Loaded :) ");
	print("-------------------------------");
}


public OnGameModeInit()
{
	AntiDeAMX();
	SetGameModeText("Showroom v1.0.1");
	UsePlayerPedAnims();
	DisableInteriorEnterExits();
	
	// Classes
	AddPlayerClass(3, 1940.7081,-2116.0146,13.6953,270.0000,0,0,0,0,0,0); // 
	AddPlayerClass(4, 1940.7081,-2116.0146,13.6953,270.0000,0,0,0,0,0,0); // 
	AddPlayerClass(5, 1940.7081,-2116.0146,13.6953,270.0000,0,0,0,0,0,0); // 
	AddPlayerClass(18, 1940.7081,-2116.0146,13.6953,270.0000,0,0,0,0,0,0); // 
	AddPlayerClass(26, 1940.7081,-2116.0146,13.6953,270.0000,0,0,0,0,0,0); // 
	AddPlayerClass(49, 1940.7081,-2116.0146,13.6953,270.0000,0,0,0,0,0,0); // 
	AddPlayerClass(51, 1940.7081,-2116.0146,13.6953,270.0000,0,0,0,0,0,0); // 
	AddPlayerClass(53, 1940.7081,-2116.0146,13.6953,270.0000,0,0,0,0,0,0); // 
	AddPlayerClass(80, 1940.7081,-2116.0146,13.6953,270.0000,0,0,0,0,0,0); // 
	AddPlayerClass(155, 1940.7081,-2116.0146,13.6953,270.0000,0,0,0,0,0,0); // 
	AddPlayerClass(230, 1940.7081,-2116.0146,13.6953,270.0000,0,0,0,0,0,0); // 
	
	// Cars
	AddStaticVehicleEx(411,1947.1027,-2110.8489,13.2741,269.6516,64,1, 180); // 
	AddStaticVehicleEx(415,1947.0807,-2117.3584,13.3187,270.6575,25,1, 180); // 
	AddStaticVehicleEx(429,1947.2411,-2123.6582,13.2265,269.7552,13,13, 180); // 
	AddStaticVehicleEx(434,1947.3462,-2130.1499,13.5134,270.5853,12,12, 180); // 
	AddStaticVehicleEx(451,1947.7021,-2136.5476,13.2531,270.8062,125,125, 180); // 
	AddStaticVehicleEx(522,1968.5656,-2123.4812,13.1203,113.7795,3,8, 180); // 
	AddStaticVehicleEx(521,1968.6559,-2125.6023,13.1176,114.4376,75,13, 180); // 
	AddStaticVehicleEx(522,1968.7225,-2127.7478,13.1183,118.3975,6,25, 180); // 
	AddStaticVehicleEx(521,1968.8687,-2129.8645,13.1179,116.2982,87,118, 180); // 
	AddStaticVehicleEx(522,1968.9025,-2131.7871,13.1174,113.2075,7,79, 180); // 
	AddStaticVehicleEx(521,1968.9799,-2133.7654,13.1157,112.0292,92,3, 180); // 
	AddStaticVehicleEx(522,1968.9727,-2135.7576,13.1174,113.0199,8,82, 180); // 
	AddStaticVehicleEx(521,1969.1440,-2137.8059,13.1162,112.0444,115,118, 180); // 
	AddStaticVehicleEx(522,1969.2780,-2139.5725,13.1171,111.0512,36,105, 180); // 
	AddStaticVehicleEx(521,1969.3142,-2141.1599,13.1150,115.1064,25,118, 180); // 
	AddStaticVehicleEx(477,1947.0459,-2114.1316,13.3006,270.4208,94,1, 180); // 
	AddStaticVehicleEx(480,1947.2621,-2120.5645,13.3200,270.7855,12,12, 180); // 
	AddStaticVehicleEx(496,1947.3982,-2126.9395,13.2629,270.0524,66,72, 180); // 
	AddStaticVehicleEx(506,1947.6582,-2133.3162,13.2504,270.0591,6,6, 180); // 
	AddStaticVehicleEx(494,1941.4596,-2141.7681,13.4523,180.2881,36,13, 180); // 
	AddStaticVehicleEx(502,1937.5325,-2141.3684,13.4543,181.2041,36,88, 180); // 
	AddStaticVehicleEx(503,1931.9705,-2141.0706,13.4574,179.2300,87,74, 180); // 
	AddStaticVehicleEx(556,1946.9948,-2142.4072,13.9225,220.8184,1,1, 180); // 
	AddStaticVehicleEx(568,1928.3525,-2140.2769,13.4294,180.2291,9,39, 180); // 
	AddStaticVehicleEx(522,1969.4821,-2142.6897,13.1173,114.8150,226,233, 180); // 
	return 1;
}

public OnGameModeExit()
{
	print("-------------------------------");
	print("Stunt Showroom v1.0.1 Unloaded :(");
	print("-------------------------------");
	return 1;
}

PoxerSuperClassSelection(playerid)
{
 	SetPlayerInterior(playerid, 7);
	SetPlayerPos(playerid, -1395.8593,-204.5580,1051.3346);
	SetPlayerFacingAngle(playerid, 90.0000);
	SetPlayerCameraPos(playerid, -1403.0548,-204.5701,1051.3326);
	SetPlayerCameraLookAt(playerid, -1392.0723,-204.6087,1051.3387);
	SetPlayerTime(playerid, 00, 01);
}


public OnPlayerRequestClass(playerid, classid)
{
	PoxerSuperClassSelection(playerid);
	return 1;
}


public OnPlayerConnect(playerid)
{
	RemoveBuildingForPlayer(playerid, 1226, 1965.9219, -2134.5859, 16.3828, 0.25); // A lamp that interrups with the bikes.
	PlayAudioStreamForPlayer(playerid, "http://vps433560.ovh.net/123/intro.mp3");
	SomeSpam(playerid);
	CarNameTD(playerid);
	SendClientMessage(playerid, 0x00BFFFFF, "Welcome to {FFFFFF}A Stunt Server.");
	SendClientMessage(playerid, 0x87CEFAFF, "Useful commands: /v, /repair, /nitro, /hydraulics (/hs).");
	SendClientMessage(playerid, 0x87CEFAFF, "Type /cmds to see more useful commands!");
	SendDeathMessage(INVALID_PLAYER_ID, playerid, 200);
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
    SendDeathMessage(INVALID_PLAYER_ID, playerid, 201);
	return 1;
}

public OnPlayerSpawn(playerid)
{
	SetPlayerInterior(playerid, 0);
	StopAudioStreamForPlayer(playerid);
	SetPlayerTime(playerid, 12, 00);
	return 1;
}

public OnPlayerCommandPerformed(playerid, cmdtext[], success)
{
	new name[MAX_PLAYER_NAME];
	GetPlayerName(playerid, name, MAX_PLAYER_NAME);
	if(!success) return SendClientMessage(playerid, 0xFF0000FF, "You have inserted an invalid command. Check /cmds to get a list of commands.");
	return 1;
}

forward CarTD(playerid);

public CarTD(playerid)
{
	PlayerTextDrawHide(playerid, CarName);
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	if(newstate ==  PLAYER_STATE_DRIVER || newstate == PLAYER_STATE_PASSENGER)
	{
		new str[60];
		new vehicleid = GetPlayerVehicleID(playerid);
		new model = GetVehicleModel(vehicleid); //get the vehicle model of the player's vehicle
		
		format(str, sizeof(str), "~h~~r~%s", aVehicleNames[model - 400]); //store the vehicle's name
		{
			PlayerTextDrawSetString(playerid, CarName, str);
			PlayerTextDrawShow(playerid, CarName);
			SetTimer("CarTD", 3000, false);
		}
	}
	return 1;
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////// CMDS HERE ////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

CMD:cmds(playerid, params[]) // A list of the commands and what they do.
{
	Dialog_Show(playerid, cmds_dialog, DIALOG_STYLE_MSGBOX, "Commands list", "/v (/car) \n\
																	/color \n\
																	/repair (/fix) \n\
																	/nitro (/nos) \n\
																	/hydraulics (/hs) \n\
																	/flip \n\
																	/godcar (/gc)\n\
																	/goto \n\
																	/heal (/hp) \n\
																	/respawn \n\
																	/weather \n\
																	/time \n\
																	/stopmusic \n\
																	/changelog \n\
																	/credits", "Close", "");
	return 1;
}


CMD:v(playerid, params[]) // Spawns a car. Taken from AttDef 2.7 sourcecode. The credits for this CMD goes to them.
{
	if(isnull(params)) return SendClientMessage(playerid, 0x00BFFFFF, "USAGE: {FFFFFF}/v vehicleid");
	if(IsPlayerInAnyVehicle(playerid) && GetPlayerState(playerid) != PLAYER_STATE_DRIVER) return SendClientMessage(playerid, -1, "Can't spawn a vehicle while you are not the driver.");

	new veh;
	new playername[MAX_PLAYER_NAME];
		
	GetPlayerName(playerid, playername, MAX_PLAYER_NAME);

	if(IsNumeric(params))
		veh = strval(params);
	else
		veh = GetVehicleModelID(params);

	if(veh < 400 || veh > 611) return SendClientMessage(playerid, -1, "Invalid Vehicle Name."); //In samp there is no vehile with ID below 400 or above 611

	new Float:Pos[4];
	GetPlayerPos(playerid, Pos[0], Pos[1], Pos[2]);
	GetPlayerFacingAngle(playerid, Pos[3]);
	
	if(IsPlayerInAnyVehicle(playerid)) {
	Player[playerid][LastVehicle] = -1;
	DestroyVehicle(GetPlayerVehicleID(playerid)); //If you are already in a vehicle and use /car, it will destroy that vehicle first and spawn the new one.
	}
	
	new MyVehicle = CreateVehicle(veh, Pos[0], Pos[1], Pos[2], Pos[3], -1, -1, -1); //Creates the specific vehicle u were looking for (veh).

	new plate[32];
	format(plate, sizeof(plate), "%s", playername);
	SetVehicleNumberPlate(MyVehicle, plate);
	SetVehicleToRespawn(MyVehicle);

	LinkVehicleToInterior(MyVehicle, GetPlayerInterior(playerid)); //Links vehicle interior to the current player interior.
	SetVehicleVirtualWorld(MyVehicle, GetPlayerVirtualWorld(playerid)); //Sets vehicle virtual world the the current virtual world of the player.
	PutPlayerInVehicle(playerid, MyVehicle, 0); //Puts player in the driver seat.

	Player[playerid][LastVehicle] = GetPlayerVehicleID(playerid);
	return 1;
}

CMD:car(playerid, params[])
{
	return cmd_v(playerid, params);
}

CMD:nitro(playerid, params[]) // Adds nitro to a vehicle.
{
	if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, 0xFF0000FF, "ERROR: You must be inside a vehicle in order to add Nitro.");
	new carro = GetPlayerVehicleID(playerid); // carro = a slang for car in spanish.
	AddVehicleComponent(carro, 1010); // Nitro
	SendClientMessage(playerid, 0x00BFFFFF, "Nitro added.");
	return 1;
}

CMD:nos(playerid, params[]) // Does the same than /nitro
{
	return cmd_nitro(playerid, params);
}

CMD:hydraulics(playerid, params[]) // Adds hydraulics to a vehicle.
{
	if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, 0xFF0000FF, "ERROR: You must be inside a vehicle in order to add Hydraulics.");
	new carro = GetPlayerVehicleID(playerid);
	AddVehicleComponent(carro, 1087); // hydraulics
	SendClientMessage(playerid, 0x00BFFFFF, "Hydraulics added.");
	return 1;
}

CMD:hs(playerid, params[]) // Does the same than /nitro
{
	return cmd_hydraulics(playerid, params);
}

CMD:repair(playerid, params[]) // Repairs the player's vehicle.
{
	if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, 0xFF0000FF, "ERROR: You are not in a vehicle!");
	RepairVehicle(GetPlayerVehicleID(playerid));
	SetVehicleHealth(GetPlayerVehicleID(playerid), 10000);
	SendClientMessage(playerid, 0x00BFFFFF, "Your vehicle has been repaired!");
	return 1;
}

CMD:respawn(playerid, params[]) // Takes the player back to spawn and refills their health bar.
{
	if(IsPlayerInAnyVehicle(playerid))
	{
		new playerveh = GetPlayerVehicleID(playerid);
		SetVehiclePos(playerveh, 1961.6196,-2106.9402,13.3828);
		SetVehicleZAngle(playerveh,180.0000);
		SetPlayerHealth(playerid, 100);
		RepairVehicle(playerveh);
		SetVehicleHealth(GetPlayerVehicleID(playerid), 10000);
	}
	else
	{
		SpawnPlayer(playerid);
	}
	return 1;
}

CMD:fix(playerid, params[]) // Does the same than /repair
{
	return cmd_repair(playerid, params);
}

CMD:goto(playerid, params[]) // Teleports the player to another player.
{
	new targetid;
	new name[MAX_PLAYER_NAME], string[128];
	
	if(sscanf(params, "u", targetid)) return SendClientMessage(playerid, 0x00BFFFFF, "USAGE: {FFFFFF}/goto <playerid/name>");
	if(!IsPlayerConnected(targetid)) return SendClientMessage(playerid, 0xFF0000FF, "ERROR: The target player isn't connected.");
	if(targetid == playerid) return SendClientMessage(playerid, 0xFF0000FF, "ERROR: You can't teleport to yourself.");
	
	new Float:target_x, Float:target_y, Float:target_z;
	new Float:target_angle;
	
	GetPlayerPos(targetid, target_x, target_y, target_z);
	GetPlayerFacingAngle(targetid, target_angle);
	
	SetPlayerPos(playerid, target_x, target_y +1, target_z);
	
	GetPlayerName(targetid, name, MAX_PLAYER_NAME);
	
	format(string, 128, "{00BFFF}You have teleported to {FFFFFF}%s's (id: %d){00BFFF} location.", name, targetid);
	return 1;
}

CMD:heal(playerid, params[]) // Sets the player's health to 100 percent.
{
	SetPlayerHealth(playerid, 100);
	return 1;
}

CMD:hp(playerid, params[]) // Does the same than /heal
{
	return cmd_heal(playerid, params);
}

CMD:changelog(playerid, params[]) // Shows a log with the changes done in the gamemode
{
	Dialog_Show(playerid, changelog_dialog, DIALOG_STYLE_MSGBOX, "Changelog", "{00BFFF}Showroom {FFFFFF}1.0.1:\n - Code improvement and optimization. Thanks to Dayron for this. \n\
																				- A textdraw with the vehicle name is now shown when a player gets on a vehicle.", "Close", "");
	return 1;
}

CMD:credits(playerid, params[])
{
	Dialog_Show(playerid, credits, DIALOG_STYLE_MSGBOX, "Credits", "{FFFFFF}SA:MP Dev Team - SA:MP Server\n\
																	Zeex - ZCMD\n\
																	Y_Less - sscanf2\n\
																	Emmet_ - easyDialog\n\
																	Incognito - Streamer\n\
																	Slice - strlib\n\
																	0x5A656578 - crashdetect\n\
																	poxer - Gamemode script", "Close", "");
	return 1;
}


CMD:flip(playerid, params[])
{
	if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, 0xFF0000FF, "ERROR: You must be in a vehicle in order to flip it.");
	
	new vehid = GetPlayerVehicleID(playerid);
	new Float:Ang;
	
	GetVehicleZAngle(vehid, Ang);
	SetVehicleZAngle(vehid, Ang);
	RepairVehicle(vehid);
	SetVehicleHealth(vehid, 10000);
	SendClientMessage(playerid, 0x00BFFFFF, "Your vehicle has been flipped.");
	return 1;
}

CMD:color(playerid, params[])
{
	new c1, c2;
	new vehicleid = GetPlayerVehicleID(playerid);
	if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, 0xFF0000FF, "ERROR: You must be in a vehicle in order to change its colors.");
	if(sscanf(params, "dd", c1, c2)) return SendClientMessage(playerid, 0x00BFFFFF, "USAGE: {FFFFFF}/color <color1> <color2>");
	ChangeVehicleColor(vehicleid, c1, c2);
	SendClientMessage(playerid, 0x00BFFFFF, "You have changed your vehicle color(s).");
	return 1;
}

CMD:godcar(playerid, params[])
{
	if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, 0xFF0000FF, "ERROR: You must be in a vehicle in order to use this command.");
	new vehid = GetPlayerVehicleID(playerid);
	SetVehicleHealth(vehid, 54321);
	SendClientMessage(playerid, 0x00BFFFFF, "Your vehicle is now as strong as Thor's hammer.");
	return 1;
}

CMD:gc(playerid, params[])
{
	return cmd_godcar(playerid, params);
}

CMD:stopmusic(playerid, params[]) // for(new admins = 0; admins < MAX_PLAYERS; admins++)
{
	StopAudioStreamForPlayer(playerid);
	return 1;
}

CMD:8track(playerid, params[]) // The CMD I've used to get into the track and make the class selection screen, delete this CMD if you want. Not listed on /cmds.
{
	SetPlayerInterior(playerid, 7);
	SetPlayerPos(playerid, -1398.0653,-217.0289, 1051.1158);
	return 1;
}

CMD:time(playerid, params[]) // add message: you set target's time to %s , maybe admin blabla setyourtime to %s
{
	new time;
	
	if(isnull(params)) return SendClientMessage(playerid, 0x00BFFFFF, "USAGE: {FFFFFF}/time <hour>");
	
	if(IsNumeric(params))
	{
		time = strval(params);
	}
	if(time > 24) return SendClientMessage(playerid, 0xFF0000FF, "ERROR: Invalid Time.");
	SetPlayerTime(playerid, time, 0);
	return 1;
}

CMD:weather(playerid, params[]) // add message: you set target's time to %s , maybe admin blabla setyourtime to %s
{
	new weather;
	if(isnull(params)) return SendClientMessage(playerid, 0x00BFFFFF, "USAGE: {FFFFFF}/weather <weatherid>");
	if(IsNumeric(params))
	{
		weather = strval(params);
	}
	SetPlayerWeather(playerid, weather); //
	return 1;
}

///////////////////////// ADMIN CMDS ////////////////////////


CMD:makeadmin(playerid, params[])
{
	if(IsPlayerAdmin(playerid) || Player[playerid][IsAdmin] == 1)
	{	
		new targetid;
		
		if(sscanf(params, "u", targetid)) return SendClientMessage(playerid, 0x00BFFFFF, "USAGE: {FFFFFF}/makeadmin <id/playername>");
		if(!IsPlayerConnected(targetid)) return SendClientMessage(playerid, 0xFF0000FF, "ERROR: The target player is not connected.");
		Player[targetid][IsAdmin] = 1;
		new adminname[MAX_PLAYER_NAME], target[MAX_PLAYER_NAME];
		GetPlayerName(playerid, adminname, MAX_PLAYER_NAME);
		GetPlayerName(targetid, target, MAX_PLAYER_NAME);
		SendClientMessage(playerid, 0x00BFFFFF, sprintf("Admin {FFFFFF}%s(id:%i) {00BFFF}has made you admin.", adminname, playerid));
		SendClientMessage(playerid, 0x00BFFFFF, sprintf("You have made {FFFFFF}%s's (id:%i) {00BFFF}an admin.", target, targetid));
	}
	return 1;
}

CMD:demote(playerid, params[])
{
	if(IsPlayerAdmin(playerid) || Player[playerid][IsAdmin] == 1)
	{	
		new targetid;
		
		if(sscanf(params, "u", targetid)) return SendClientMessage(playerid, 0x00BFFFFF, "USAGE: {FFFFFF}/demote <id/playername>");
		if(!IsPlayerConnected(targetid)) return SendClientMessage(playerid, 0xFF0000FF, "ERROR: The target player is not connected.");
		Player[targetid][IsAdmin] = 0;
		new adminname[MAX_PLAYER_NAME], target[MAX_PLAYER_NAME];
		GetPlayerName(playerid, adminname, MAX_PLAYER_NAME);
		GetPlayerName(targetid, target, MAX_PLAYER_NAME);
		SendClientMessage(playerid, -1, sprintf("Admin {FFFFFF}%s(id:%i) {00BFFF}has demoted you.", adminname, playerid));
		SendClientMessage(playerid, -1, sprintf("You have demoted {FFFFFF}%s's (id:%i).", target, targetid));
	}
	return 1;
}

CMD:dveh(playerid, params[]) // Destroys a vehicle, this is in case someone bugs a veh and you need to remove it or something.
{	
	if(IsPlayerAdmin(playerid) || Player[playerid][IsAdmin] == 1)
	{
		new vehid;
		if(sscanf(params, "d", vehid)) return SendClientMessage(playerid, 0x00BFFFFF, "USAGE: {FFFFFF}/dveh <vehicleid>");
		DestroyVehicle(vehid);
	
		//if(sucess) return SendClientMessage(playerid, -1, "Success");
		//else return SendClientMessage(playerid, -1, "Ouch!");
	}
	return 1;
}

CMD:ip(playerid, params[])
{
	if(IsPlayerAdmin(playerid) || Player[playerid][IsAdmin] == 1) // only admins, sorry not sorry :-*
	{
		new pip[16], string[128], pname[MAX_PLAYER_NAME];
		new targetid;
		if(sscanf(params, "u", targetid)) return SendClientMessage(playerid, 0x00BFFFFF, "USAGE: {FFFFFF}/ip <id/playername>");
		if(!IsPlayerConnected(targetid)) return SendClientMessage(playerid, 0xFF0000FF, "ERROR: The target player is not connected.");
		GetPlayerIp(targetid, pip, sizeof(pip));
		GetPlayerName(targetid, pname, sizeof(pname));
		format(string, 128, "Player: %s (id:%d). IP: %s", pname, targetid, pip);
		SendClientMessage(playerid, -1, string);
	}
	return 1;
}

CMD:acmds(playerid, params[]) //a list of the admin cmds //add /restart
{
	if(IsPlayerAdmin(playerid) || Player[playerid][IsAdmin] == 1) // only admins, sorry not sorry :-*
	{	
		Dialog_Show(playerid, acmds_dialog, DIALOG_STYLE_MSGBOX, "Admin Commands list", "/ip -> Checks a player's IP address.\n\
																				/dveh -> Destroys a vehicle\n\
																				/givegun -> Gives a player a gun\n\
																				/settime -> Sets a player's time\n\
																				/setweather -> Sets a player's weather\n\
																				/makeadmin -> Makes a player admin\n\
																				/demote -> Demote a player\n\
																				/playmusic -> Plays a song\n\
																				/stopmusicforall -> Stops the music for everyone\n\
																				/restart -> Idk what it does", "Ok", "");
	}
	return 1;
}

CMD:restart(playerid, params[])
{	
	if(IsPlayerAdmin(playerid) || Player[playerid][IsAdmin] == 1)
	{
	 SendClientMessageToAll(0xFFFFFFFF, "Server is going to be restarted now. Please, rejoin!");
	 SendRconCommand("gmx");
	}
	return 1;
}

CMD:givegun(playerid, params[])
{
	if(IsPlayerAdmin(playerid) || Player[playerid][IsAdmin] == 1)
	{
		new targetid, weapon, ammunation;
		if(sscanf(params, "udd", targetid, weapon, ammunation)) return SendClientMessage(playerid,  0x00BFFFFF, "USAGE: {FFFFFF}/givegun <id/playername> <weaponid> <ammunation>");
		if(!IsPlayerConnected(targetid)) return SendClientMessage(playerid, 0xFF0000FF, "ERROR: The target player is not connected.");
		if(weapon > 46) return SendClientMessage(playerid, 0xFF0000FF, "ERROR: Max weaponid is 46.");
		GivePlayerWeapon(targetid, weapon, ammunation);
	}
	return 1;
}


CMD:settime(playerid, params[]) // Sets a player time.
{
	if(IsPlayerAdmin(playerid) || Player[playerid][IsAdmin] == 1)
	{
		new targetid, hour;
		if(sscanf(params, "ud", targetid, hour)) return SendClientMessage(playerid,  0x00BFFFFF, "USAGE: {FFFFFF}/settime <id/playername> <hour>");
		if(!IsPlayerConnected(targetid)) return SendClientMessage(playerid, 0xFF0000FF, "ERROR: The target player is not connected.");
		if(hour > 24) return SendClientMessage(playerid, 0xFF0000FF, "ERROR: Invalid Time.");
		SetPlayerTime(targetid, hour, 0); //
		new name[MAX_PLAYER_NAME], aname[MAX_PLAYER_NAME];
		GetPlayerName(targetid, name, MAX_PLAYER_NAME);
		GetPlayerName(playerid, aname, MAX_PLAYER_NAME);
		SendClientMessage(playerid, -1, sprintf("You have set %s (id: %d) time to: %d", name, targetid, hour));
		SendClientMessage(targetid, -1, sprintf("%s (id: %d) has set your time to: %d", aname, playerid, hour));
	}
	return 1;
}

CMD:setweather(playerid, params[]) // Sets a player weather
{
	if(IsPlayerAdmin(playerid) || Player[playerid][IsAdmin] == 1)
	{
		new targetid, weather;
		if(sscanf(params, "ud", targetid, weather)) return SendClientMessage(playerid,  0x00BFFFFF, "USAGE: {FFFFFF}/setweather <id/playername> <weather>");
		if(!IsPlayerConnected(targetid)) return SendClientMessage(playerid, 0xFF0000FF, "ERROR: The target player is not connected.");
		SetPlayerWeather(targetid, weather); //
		new name[MAX_PLAYER_NAME], aname[MAX_PLAYER_NAME];
		GetPlayerName(targetid, name, MAX_PLAYER_NAME);
		GetPlayerName(playerid, aname, MAX_PLAYER_NAME);
		SendClientMessage(playerid, -1, sprintf("You have set %s (id: %d) weather to: %d", name, targetid, weather));
		SendClientMessage(targetid, -1, sprintf("%s (id: %d) has set your weather to: %d", aname, playerid, weather));
	}
	return 1;
}


CMD:playmusic(playerid, params[]) // Plays music for every online player.
{
	if(IsPlayerAdmin(playerid) || Player[playerid][IsAdmin] == 1)
	{
		for(new everyone = 0; everyone < MAX_PLAYERS; everyone++)
		{
			if(!IsPlayerNPC(everyone) || IsPlayerConnected(everyone)) {
				PlayAudioStreamForPlayer(everyone, params); }
		}
		new name[MAX_PLAYER_NAME];
		GetPlayerName(playerid, name, MAX_PLAYER_NAME);
		SendClientMessageToAll(0x00BFFFFF, sprintf("Admin {FFFFFF}%s(id:%i) {00BFFF}is now playing a song.", name, playerid));
	}
	return 1;
}



CMD:stopmusicforall(playerid, params[]) // Stops the music for every player.
{
	if(IsPlayerAdmin(playerid) || Player[playerid][IsAdmin] == 1)
	{
		for(new everyone = 0; everyone < MAX_PLAYERS; everyone++)
		{
			if(!IsPlayerNPC(everyone) || IsPlayerConnected(everyone)) {
				StopAudioStreamForPlayer(everyone); }
		}
	}
	return 1;
}


forward KickTimer(playerid);

public KickTimer(targetid)
{
	Kick(targetid);

}

CMD:kick(playerid, params[])
{
	if(IsPlayerAdmin(playerid) || Player[playerid][IsAdmin] == 1)
	{
		new targetid, reason[64], admin[MAX_PLAYER_NAME], kicked[MAX_PLAYER_NAME];
		if(sscanf(params, "us[64]", targetid, reason)) return SendClientMessage(playerid, -1, "Usage: /kick targetid reason");
		if(!IsPlayerConnected(targetid)) return SendClientMessage(playerid, -1, "Target is not connected");
		if(strlen(reason) > 64) return SendClientMessage(playerid, -1, "ERROR: Reason length is too long");
		
		GetPlayerName(playerid, admin, MAX_PLAYER_NAME);
		GetPlayerName(targetid, kicked, [MAX_PLAYER_NAME];
		
		
		SendClientMessageToAll(-1, sprintf("%s (id: %d) has been kicked by %s (id: %d). Reason: %s", kicked, targetid, admin, playerid, reason);
		SetTimer(targetid, "KickTimer", 50, 0);
	}
	return 1;
}



///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

SomeSpam(playerid, spam = 10) // The client messages shown when a player connects
{
    for(new i; i != spam; i++)
        SendClientMessage(playerid, 0x000000FF, "");
}  

CarNameTD(playerid)
{
	//new model = GetVehicleModel(vehicleid);
	CarName = CreatePlayerTextDraw(playerid, 600.0, 420.0, "ERROR");
	PlayerTextDrawColor(playerid, CarName, 0x000000FF);
	//PlayerTextDrawBackgroundColor(playerid, CarName, 0x000000FF);
	PlayerTextDrawAlignment(playerid, CarName , 2); // Align the textdraw text in the center
	PlayerTextDrawSetShadow(playerid, CarName, 1);
	PlayerTextDrawLetterSize(playerid, CarName, 0.5, 2.0);
	PlayerTextDrawFont(playerid, CarName, 3);
	PlayerTextDrawSetProportional(playerid, CarName, 1);
	PlayerTextDrawSetOutline(playerid, CarName, 0);
}

stock GetVehicleModelID(vehiclename[]) // From AttDef 2.7 Code. Used on /v.
{
	for(new i = 0; i < 211; i++){
        if(strfind(aVehicleNames[i], vehiclename, true) != -1)
        return i + 400;
    } return -1;
}

/*stock IsNumeric(string[]){ // From AttDef 2.7 Code. Used on /v.
    for (new i = 0, j = strlen(string); i < j; i++){
    	if (string[i] > '9' || string[i] < '0') return 0;
    }
    return 1;
}*/

IsNumeric(string[])
    return !sscanf(string, "{i}");----