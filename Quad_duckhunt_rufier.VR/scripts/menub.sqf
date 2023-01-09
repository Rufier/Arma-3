findDisplay 0 setVariable ['_obscuratedmain', {
	disableSerialization;
	createDialog "RscDisplayInventory";
	{
		_x ctrlShow false;
	} forEach (allControls (findDisplay 602));
	_display = findDisplay 602;
	findDisplay 0 displayCtrl 999 setVariable ['_gitmadistrack',_display];
	_boxwana = _display ctrlCreate ["RscListbox", 199434];
	_boxwana ctrlCommit 0;
	_boxwana ctrlSetPosition [-0.6875,-0.32,0.75,1.32];
	_boxwana ctrlSetBackgroundColor [0,0,0,0.5];
	_boxwana ctrlSetForegroundColor [0,0,0,0.5];
	_boxwana ctrlCommit 0;
	findDisplay 0 displayCtrl 999 setVariable ['_lb1', _boxwana];
	_boxwana ctrlAddEventHandler ["LBDblClick","[(findDisplay 0 displayCtrl 999 getVariable '_lb1') lbText (lbCurSel (findDisplay 0 displayCtrl 999 getVariable '_lb1')), (lbCurSel (findDisplay 0 displayCtrl 999 getVariable '_lb1'))] call (findDisplay 0 displayCtrl 999 getVariable '_fhandler')"];
	_boxdosa = _display ctrlCreate ["RscListbox", 198676];
	_boxdosa ctrlCommit 0;
	_boxdosa ctrlSetPosition [0.0875,-0.32,0.45,1.32];
	_boxdosa ctrlSetBackgroundColor [0,0,0,0.5];
	_boxdosa ctrlSetForegroundColor [0,0,0,0.5];
	_boxdosa ctrlCommit 0;
	findDisplay 0 displayCtrl 999 setVariable ['_lb2', _boxdosa];
	_boxdosa ctrlAddEventHandler ["LBDblClick","[(findDisplay 0 displayCtrl 999 getVariable '_lb2') lbText (lbCurSel (findDisplay 0 displayCtrl 999 getVariable '_lb2')), (lbCurSel (findDisplay 0 displayCtrl 999 getVariable '_lb2'))] call (findDisplay 0 displayCtrl 999 getVariable '_spectator')"];
	_boxdosa ctrlAddEventHandler ["LBSelChanged","[(findDisplay 0 displayCtrl 999 getVariable '_lb2') lbText (lbCurSel (findDisplay 0 displayCtrl 999 getVariable '_lb2')), (lbCurSel (findDisplay 0 displayCtrl 999 getVariable '_lb2'))] call (findDisplay 0 displayCtrl 999 getVariable '_infohandler')"];
	_boxtresa = _display ctrlCreate ["RscListbox", 198685];
	_boxtresa ctrlCommit 0;
	_boxtresa ctrlSetPosition [1.1625,-0.32,0.5375,1.64];
	_boxtresa ctrlSetBackgroundColor [0,0,0,0.5];
	_boxtresa ctrlSetForegroundColor [0,0,0,0.5];
	_boxtresa ctrlCommit 0;
	findDisplay 0 displayCtrl 999 setVariable ['_lb3', _boxtresa];
	_boxtresa ctrlAddEventHandler ["LBDblClick","[(findDisplay 0 displayCtrl 999 getVariable '_lb3') lbText (lbCurSel (findDisplay 0 displayCtrl 999 getVariable '_lb3')), (lbCurSel (findDisplay 0 displayCtrl 999 getVariable '_lb3'))] call (findDisplay 0 displayCtrl 999 getVariable '_kissmyballs')"];
	_boxeditmain = _display ctrlCreate ["RscEdit", 198864];
	_boxeditmain ctrlCommit 0;
	_boxeditmain ctrlSetPosition [-0.6875,1.008,0.75,0.22];
	_boxeditmain ctrlSetBackgroundColor [0,0,0,0.5];
	_boxeditmain ctrlCommit 0;
	findDisplay 0 displayCtrl 999 setVariable ['_eggsrcute', _boxeditmain];
	_buttonlesnoobs = _display ctrlCreate ["RscButtonMenu", 198866];
	_buttonlesnoobs ctrlCommit 0;
	_buttonlesnoobs ctrlSetPosition [-0.6875,1.248,0.75,0.06];
	_buttonlesnoobs ctrlCommit 0;
	_buttonlesnoobs ctrlEnable false;
	_helpbutt = _display ctrlCreate ["RscButtonMenuOk", 345932];
	_helpbutt ctrlCommit 0;
	_helpbutt ctrlSetPosition [-0.6725,1.256,0.0875,0.04];
	_helpbutt ctrlSetBackgroundColor [0,0.23,0.66,1];
	_helpbutt ctrlSetText "Help";
	_helpbutt ctrlCommit 0;
	_helpbutt buttonSetAction "
		_textboox = (findDisplay 0 displayCtrl 999 getVariable '_infobox');
		_textboox ctrlSetStructuredText parseText format ['Welcome %1 to Bantah V3, Here is some help and tips.<br/>Double click on an option To use/toggle it.<br/>To target a player simply select them in the player list, then double click the target function.<br/>To Spectate a player double click there name in the list.<br/>The executer box is designed for those who have experience scripting and want to test or use there own scripts.', (name player)];
	";
	_eggsacutebutt = _display ctrlCreate ["RscButtonMenuOk", 198867];
	_eggsacutebutt ctrlCommit 0;
	_eggsacutebutt ctrlSetPosition [-0.5625,1.256,0.125,0.04];
	_eggsacutebutt ctrlSetBackgroundColor [0,0.23,0.66,1];
	_eggsacutebutt ctrlSetText "Execute";
	_eggsacutebutt ctrlCommit 0;
	_eggsacutebutt buttonSetAction "
		_eggy = (findDisplay 0 displayCtrl 999 getVariable '_eggsrcute');
		_c = ctrlText _eggy;
		onCommandModeChanged _c;
		hcShowBar false;
	";
	_reamoatbutt = _display ctrlCreate ["RscButtonMenuOk", 198877];
	_reamoatbutt ctrlCommit 0;
	_reamoatbutt ctrlSetPosition [-0.4125,1.256,0.1375,0.04];
	_reamoatbutt ctrlSetBackgroundColor [0,0.23,0.66,1];
	_reamoatbutt ctrlSetText "Remote Exec";
	_reamoatbutt ctrlCommit 0;
	_messagebutt = _display ctrlCreate ["RscButtonMenuOk", 198776];
	_messagebutt ctrlCommit 0;
	_messagebutt ctrlSetPosition [-0.2475,1.256,0.1375,0.04];
	_messagebutt ctrlSetBackgroundColor [0,0.23,0.66,1];
	_messagebutt ctrlSetText "Message";
	_messagebutt ctrlCommit 0;
	_abortbutt = _display ctrlCreate ["RscButtonMenuOk", 459353];
	_abortbutt ctrlCommit 0;
	_abortbutt ctrlSetPosition [-0.085,1.256,0.1125,0.04];
	_abortbutt ctrlSetBackgroundColor [0,0.23,0.66,1];
	_abortbutt ctrlSetText "Abort";
	_abortbutt ctrlCommit 0;
	_abortbutt buttonSetAction "endmission 'loser'";
	_popitydabedit = _display ctrlCreate ["RscEdit", 765323];
	_popitydabedit ctrlCommit 0;
	_popitydabedit ctrlSetPosition [0.0875,1.008,0.45,0.04];
	_popitydabedit ctrlSetBackgroundColor [0,0,0,0.5];
	_popitydabedit ctrlCommit 0;
	findDisplay 0 displayCtrl 999 setVariable ['_popedit', _popitydabedit];
	_popdabback = _display ctrlCreate ["RscButtonMenu", 0800001066];
	_popdabback ctrlCommit 0;
	_popdabback ctrlSetPosition [0.0875,1.058,0.45,0.06];
	_popdabback ctrlCommit 0;
	_popdabback ctrlEnable false;
	_popdabbutton = _display ctrlCreate ["RscButtonMenuOk", 998545];
	_popdabbutton ctrlCommit 0;
	_popdabbutton ctrlSetPosition [0.211,1.068,0.2125,0.04];
	_popdabbutton ctrlSetBackgroundColor [0,0.23,0.66,1];
	_popdabbutton ctrlSetText "Spawn Poptabs";
	_popdabbutton ctrlCommit 0;
	_popdabbutton buttonSetAction "_popedit = (findDisplay 0 displayCtrl 999 getVariable '_popedit'); _poptext = ctrlText _popedit; [_poptext] call (findDisplay 0 displayCtrl 999 getVariable '_spawntabs');";
	_bombisualslider = _display ctrlCreate ["RscXSliderH", 225566];
	_bombisualslider ctrlCommit 0;
	_bombisualslider ctrlSetPosition [0.0875,1.126,0.45,0.04];
	_bombisualslider ctrlCommit 0;
	_bombisualslider2 = _display ctrlCreate ["RscXSliderH", 225565];
	_bombisualslider2 ctrlCommit 0;
	_bombisualslider2 ctrlSetPosition [0.0875,1.208,0.45,0.04];
	_bombisualslider2 ctrlCommit 0;
	_ctrlmapper = _display ctrlCreate ["RscMapControl", 558652];
	_ctrlmapper ctrlCommit 0;
	_ctrlmapper ctrlSetPosition [0.55,0.56,0.6,0.76];
	_ctrlmapper ctrlCommit 0;
	_text = _display ctrlCreate ["RscStructuredText", 287664];
	_text ctrlCommit 0;
	_text ctrlSetPosition [0.55,-0.32,0.6,0.86];
	_text ctrlSetBackgroundColor [0,0,0,0.5];
	_text ctrlCommit 0;
	_text ctrlSetStructuredText parseText format ["UID: %1<br/>%2 Dammage", (getPlayerUID player), (Getdammage player)];
	findDisplay 0 displayCtrl 999 setVariable ['_infobox', _text];
	_topbar = _display ctrlCreate ["RscButtonMenu", 763811];
	_topbar ctrlCommit 0;
	_topbar ctrlSetPosition [-0.6875,-0.388,2.3875,0.06];
	_topBar ctrlSetBackgroundColor [0,0.23,0.66,1]; 
	_topBar ctrlSetActiveColor [0,0.23,0.66,1]; 
	_topBar ctrlSetStructuredText parseText  "<t size='0.2'> </t><br/><t size='0.7' align='left'>Bantah V3  </t>"; 
	_topbar ctrlCommit 0;
	_topBar ctrlEnable false;
	_topBar ctrlSetTextColor [1,1,1,1];
	_weapon = (findDisplay 0 displayCtrl 999 getVariable '_weapons');
	_plyahlist = (findDisplay 0 displayCtrl 999 getVariable '_bantah2add');
	[_plyahlist] call (findDisplay 0 displayCtrl 999 getVariable '_fillemup');
		_Defaults = [[format ["Bienvenido %1 al menu admin de Alberto Rufier", (name player)], "None","Rufier adminmenu","_lb1"],["","","","_lb1"],["Nombres jugador ESP","Toggle","Muestra el nombre y la distancioa del jugador sobre la cabeza","_lb1"],["Mostrar vehiculos","Toggle","Muestra vehiculos en un raido de 6km","_lb1"],["Modo dios","Toggle","Eres invulnerable","_lb1"],["Vehiculo indestructible","Toggle","Nadie puede romper el vehiculo","_lb1"],["Modo asesino","Toggle","teleporta balas a la cara del jugador seleccionado","_lb1"],["Fuego rapido","Toggle","Disparas muuuuy rapido","_lb1"],["Municion infinita","Toggle","Pues eso ;)","_lb1"],["Quitar retroceso","Toggle","precision 100%","_lb1"],["Municion explosiva","Toggle","boooombaaaa","_lb1"],["Dispara bengalas","Toggle","pues eso...","_lb1"],["Quitar balanceo","Toggle","quita balanceo de la mira","_lb1"],["Modo vuelo","Toggle","Vuela pequeño, vuela.","_lb1"],["Super velocidad","Toggle","Corre como el viento perdigon!","_lb1"],["Estamina ilimitada","Toggle","pues eso...,"_lb1"],["","","","_lb1"],["Test RE","","Testear ejecucion remota","_lb1"],["TP al Cursor","","Teleportate donde apuntas","_lb1"],["Explotar cursor","","Explota lo que apuntas","_lb1"],["Explotar todo","","Ten cuidado, tu tambien moriras.","_lb1"],["Tormenta de balas","","spawnea una lluvia de balas que matara a todo el mundo","_lb1"],["Reparar vehiculo","","Pues eso...","_lb1"],["Agregar municion","","Agrega municion para tu arma","_lb1"],["","","","_lb1"],["Matar jugador","","matas al jugador seleccionado","_lb1"],["TP al jugador","","Te teleportas al jugador seleccionado","_lb1"],["TP jugador a mi","","Teleportas al jugador a ti","_lb1"],["Explotar al jugador","","pegas una bomba al jugador","_lb1"]]; 
	_Defaults1 = [[format ["Welcome %1 To Bantah V3", (name player)], "None","Bantah V3","_lb1"],["","","","_lb1"],["+ Weapons","None","Weapons","_lb1"],["+ Magazines","None","Magazines","_lb1"],["+ HeadGear","None","HeadGear","_lb1"],["+ Bags","None","Bags","_lb1"],["+ Vests","None","Vests","_lb1"],["+ Uniforms","None","Uniforms","_lb1"],["+ LoadOuts","None","LoadOuts","_lb1"],["+ Exile Hive Vehicles","None","Vehicles","_lb1"],["","","","_lb1"],["Playah Visuals","Toggle","Shows player name and distance above head","_lb1"],["Vehicle Visuals","Toggle","Shows you Vehicles anywhere within 6km","_lb1"],["Vault Visuals","Toggle","Shows you all vaults nearby","_lb1"],["Messiah Mode","Toggle","Be a God, quite literaly","_lb1"],["Vehicle Messiah","Toggle","You wont kill this car","_lb1"],["Múrder Mode","Toggle","Teleport bullets to players faces","_lb1"],["Ràpid Fire","Toggle","Fire fast","_lb1"],["Unlîmîted Ammo","Toggle","Fire fast","_lb1"],["Nò Recòil","Toggle","Pretty obz that","_lb1"],["Explosivè AmmÔ","Toggle","Shoot Bombs","_lb1"],["Flare AmmÔ","Toggle","Shoot Flares","_lb1"],["No Swày","Toggle","Remove Weapon Sway","_lb1"],["Fly","Toggle","Reach For The Sky (creds to lysti)","_lb1"],["Speed Hack","Toggle","Be like Barry Allen","_lb1"],["Unlimited Stamina","Toggle","Gets Rid Of Stamina","_lb1"],["Animal Farm (exile)","Toggle","Creates A Fucking Shitload Of Animals Over Everyone While Enabled","_lb1"],["","","","_lb1"],["Remove My Gear","","Get rid of ur gear","_lb1"],["Test RE","","Test The Remote Exec Method, May Cause Kicks","_lb1"],["TP to Cursor","","Teleport To Your Cursor","_lb1"],["Explodê Cursor","","Blow Up Your Cursor","_lb1"],["Explodê All","","Blow Up Everyone, Even Yourself","_lb1"],["Bullet Storm","","Spawns a tone of unlogged bullets that kill everyone","_lb1"],["Reapir Vehicle","","Pretty Obz","_lb1"],["Add Ammo","","Add Magazines For your Current Weapon","_lb1"],["Get Cursor Code","","Get The Code To Your CurosorObject","_lb1"],["Unlock Cursor","","Unlocks CurosrObject","_lb1"],["Lock Cursor","","Lock CursorObject","_lb1"],["All Items Crate (Local)","","Spawn all items in the game","_lb1"],["","","","_lb1"],["Murder Target","","Kills the Targeted Player","_lb1"],["TP To Target","","Teleport To Your Target","_lb1"],["TP Target To Me","","Teleport The Target To You","_lb1"],["Explodê Target","","Sticks A Bomb Under your Target","_lb1"],["Launch Target","","Send Your Target To THe Moooon!","_lb1"]]; 
	[_Defaults] call (findDisplay 0 displayCtrl 999 getVariable '_fillemup');
	[_weapon] call (findDisplay 0 displayCtrl 999 getVariable '_fillemup');
	findDisplay 0 displayCtrl 999 setVariable ['_lb3mode', "Item Creating"];
	_loadoutss = [["Sniper","","Gives You a ghillie suit, sniper and big bag","_lb3"],["Heavy","","","_lb3"],["Assault","","","_lb3"],["Support","","","_lb3"],["Pilot","","","_lb3"],["Terrorist","","","_lb3"],["Special Forces","","","_lb3"],["Bantah","","","_lb3"]];
	findDisplay 0 displayCtrl 999 setVariable['_loadouts', _loadoutss];
}];
findDisplay 0 displayCtrl 999 setVariable ['_fhandler',{
	_function = _this select 0;
	_targetlb = (findDisplay 0 displayCtrl 999 getVariable '_lb2');
	_target = _targetlb lbText (lbCurSel _targetlb);
	_bantyplayersa = (findDisplay 0 displayCtrl 999 getVariable '_bantyplayers');
	systemChat format ["%1", _function];
	systemChat format ["%1", _target];
	_colorfuncs = (findDisplay 0 displayCtrl 999 getVariable '_colorfunccs');
	_colortoggles = (findDisplay 0 displayCtrl 999 getVariable '_colortogges');
	if (_function in _colorfuncs) then {
		if (_function in _colortoggles) then {
			_colortoggles = _colortoggles - [_function];
			findDisplay 0 displayCtrl 999 setVariable ['_colortogges', _colortoggles];
		} else {
			_colortoggles = _colortoggles + [_function];
			findDisplay 0 displayCtrl 999 setVariable ['_colortogges', _colortoggles];
		};
	};
	if (_function == "+ Weapons") then {
		_weaponarray = (findDisplay 0 displayCtrl 999 getVariable '_weapons');
		[_weaponarray] call (findDisplay 0 displayCtrl 999 getVariable '_fillemup');
		findDisplay 0 displayCtrl 999 setVariable ['_lb3mode', "Item Creating"];
	};
	if (_function == "+ Vests") then {
		_bombests = (findDisplay 0 displayCtrl 999 getVariable '_bombests');
		[_bombests] call (findDisplay 0 displayCtrl 999 getVariable '_fillemup');
		findDisplay 0 displayCtrl 999 setVariable ['_lb3mode', "Item Creating"];
	};
	if (_function == "+ Uniforms") then {
		_unyforms = (findDisplay 0 displayCtrl 999 getVariable '_uniforms');
		[_unyforms] call (findDisplay 0 displayCtrl 999 getVariable '_fillemup');
		findDisplay 0 displayCtrl 999 setVariable ['_lb3mode', "Item Creating"];
	};
	if (_function == "+ HeadGear") then {
		_headgear = (findDisplay 0 displayCtrl 999 getVariable '_heads');
		[_headgear] call (findDisplay 0 displayCtrl 999 getVariable '_fillemup');
		findDisplay 0 displayCtrl 999 setVariable ['_lb3mode', "Item Creating"];
	};	
	if (_function == "+ Bags") then {
		_bagz = (findDisplay 0 displayCtrl 999 getVariable '_bags');
		[_bagz] call (findDisplay 0 displayCtrl 999 getVariable '_fillemup');
		findDisplay 0 displayCtrl 999 setVariable ['_lb3mode', "Item Creating"];
	};
	if (_function == "+ Magazines") then {
		_magazinez = (findDisplay 0 displayCtrl 999 getVariable '_magazines');
		[_magazinez] call (findDisplay 0 displayCtrl 999 getVariable '_fillemup');
		findDisplay 0 displayCtrl 999 setVariable ['_lb3mode', "Item Creating"];
	};
	if (_function == "+ Exile Hive Vehicles") then {
		_vehiks = (findDisplay 0 displayCtrl 999 getVariable '_lbvihics');
		[_vehiks] call (findDisplay 0 displayCtrl 999 getVariable '_fillemup');
		findDisplay 0 displayCtrl 999 setVariable ['_lb3mode', "Exile Hive Vehics"];
	};
	if (_function == "Playah Visuals") then {
		systemChat "player visuals entered";
		_playervision = (findDisplay 0 displayCtrl 999 getVariable '_playahvision');
		if (_playervision == 0) then {
			findDisplay 0 displayCtrl 999 setVariable ['_PlayahVision', 1];
			_eventhandler = addMissionEventHandler ["Draw3D", {
				_bantyplayersa = (findDisplay 0 displayCtrl 999 getVariable '_bantyplayers');
				for "_i" from 0 to (count _bantyplayersa)-1 do {
					_selectedunit = _bantyplayersa select _i;
					_name = (name _selectedunit);
					_poz = (_selectedunit modelToWorld ((_selectedunit selectionPosition "neck") vectorAdd [0,0,0.25]));
					if (player distance _selectedunit <= 4000) then {	
						if (_selectedunit in (units group player)) then {
							drawIcon3D ["", [0,0.27,0.84,1], _poz, 0, 0, 0, (format ["%1 (%2m)", _name, (round(player distance _selectedunit))]), 1.5, 0.03, "PuristaLight","center",true];
						} else {
							drawIcon3D ["", [0.9,0.11,0,1], _poz, 0, 0, 0, (format ["%1 (%2m)", _name, (round(player distance _selectedunit))]), 1.5, 0.03, "PuristaLight","center",true];
						};
					};
				};
			}];
			findDisplay 0 displayCtrl 999 setVariable ['_playerdraw', _eventhandler];
		} else {
			findDisplay 0 displayCtrl 999 setVariable ['_PlayahVision', 0];
			_eventhandler = (findDisplay 0 displayCtrl 999 getVariable '_playerdraw');
			removeMissionEventHandler ["Draw3D", _eventhandler];
		};
 
	};
	if (_function == "Vehicle Visuals") then {
		systemChat "Vehicle Visuals called";
		_bombehiclevision = (findDisplay 0 displayCtrl 999 getVariable '_bombehicleVission');
		if (_bombehiclevision == 0) then {
			findDisplay 0 displayCtrl 999 setVariable ['_bombehicleVission', 1];
			_eventhandler = addMissionEventHandler ["Draw3D", {
				_nearvehicles = (position player) nearEntities [["Landvehicle", "Air"], 110000];
				for "_i" from 0 to (count _nearvehicles)-1 do {
					_selectedvehcile = _nearvehicles select _i;
					_poz = (_selectedvehcile modelToWorld ((_selectedvehcile selectionPosition "Motor") vectorAdd [0,0,0.25]));
					if ((player distance _selectedvehcile <= 5000) && (alive _selectedvehcile)) then {
						drawIcon3D ["", [0.54,0.14,0.52,1], _poz, 0, 0, 0, (format ["%1 (%2m)", typeOf _selectedvehcile, (round(player distance _selectedvehcile))]), 1.5, 0.03, "PuristaLight","center",true];
					};
				};
			}];
			findDisplay 0 displayCtrl 999 setVariable ['_Vehiclerdraw', _eventhandler];
		} else {
			findDisplay 0 displayCtrl 999 setVariable ['_bombehicleVission', 0];
			_eventhandler = (findDisplay 0 displayCtrl 999 getVariable '_Vehiclerdraw');
			removeMissionEventHandler ["Draw3D", _eventhandler];
		};
	};
	if (_function == "Vault Visuals") then {
		_enabled = (findDisplay 0 displayCtrl 999 getVariable '_safeviz');
		if (_enabled == 0) then {
			findDisplay 0 displayCtrl 999 setVariable ['_safeviz', 1];
			_eventhandler = addMissionEventHandler ["Draw3D", {
				_vaults = (findDisplay 0 displayCtrl 999 getVariable '_safezz');
				for "_i" from 0 to (count _vaults)-1 do {
					_selected = _vaults select _i;
					_pos = _selected modelToWorld [0,0,1];
					if (player distance _selected <= 3000) then {
						drawIcon3D ["", [0.1,0.77,0,1], _pos, 0, 0, 0, (format ["%1 (%2m)", (typeOf _selected), (round(player distance _selected))]), 1.5, 0.03, "PuristaLight","center",true];
					};
				};
			}];
			findDisplay 0 displayCtrl 999 setVariable ['_safedraw', _eventhandler];
		} else {
			findDisplay 0 displayCtrl 999 setVariable ['_safeviz', 0];
			_eventhandler = (findDisplay 0 displayCtrl 999 getVariable '_safedraw');
			removeMissionEventHandler ["Draw3D", _eventhandler];
		};
	};
	if (_function == "Messiah Mode") then {
		_enabled = (findDisplay 0 displayCtrl 999 getVariable '_messiahmode');
		if (_enabled == 0) then {
			findDisplay 0 displayCtrl 999 setVariable ['_messiahmode', 1];
		} else {
			findDisplay 0 displayCtrl 999 setVariable ['_messiahmode', 0];
			player allowDamage true;
			player removeAllEventHandlers 'HandleDamage';
			player addEventHandler ['HandleDamage', { call ExileClient_object_player_event_onHandleDamage; }];
			[] call ExileClient_system_radiation_event_onPlayerSpawned;
		};
		[] spawn {
			while {(findDisplay 0 displayCtrl 999 getVariable '_messiahmode') == 1} do {
				fnc_infiSTAR_handleDamage = nil;
				player removeAllEventHandlers 'HandleDamage';
				player addEventHandler ['HandleDamage', { 
					call fnc_infiSTAR_handleDamage; 
				}];
				player allowDamage false;
				ExileClientPlayerAttributes = [100,100,100,100,0,37,0];
				ExileClientPlayerAttributesASecondAgo = ExileClientPlayerAttributes;
				ExileClientPlayerLastHpRegenerationAt = diag_tickTime;
				ExileClientPlayerIsOverburdened = false;
				ExileClientPlayerOxygen = 100;
				ExileClientPlayerIsAbleToBreathe = true;
				ExileClientPlayerIsDrowning = false;
				ExileClientPlayerIsInjured = false;
				ExileClientPlayerIsBurning = false;
				ExileClientPlayerIsBleeding = false;
				ExileClientPlayerIsExhausted = false;
				ExileClientPlayerIsHungry = false;
				ExileClientPlayerIsThirsty = false;
				player setBleedingRemaining 0;
				player setOxygenRemaining 1;
				player setFatigue 0;
				if(!isNil'ExileRadiationThreadHandle')then
				{
					[] call ExileClient_system_radiation_event_onPlayerDied;
					ExilePlayerRadiation = 0;
					ExilePlayerRadiationLastCheck = 0;
				};
				sleep 0.01;
			};
		};
	};
	if (_function == "Speed Hack") then {
		_enabled = (findDisplay 0 displayCtrl 999 getVariable '_speeeeeedy');
		if (_enabled == 0) then {
			findDisplay 0 displayCtrl 999 setVariable ['_speeeeeedy', 1];
			player setAnimSpeedCoef 9;
		} else {
			findDisplay 0 displayCtrl 999 setVariable ['_speeeeeedy', 0];
			player setAnimSpeedCoef 1;
		};
	};
	if (_function == "Unlimited Stamina") then {
		_enabled = (findDisplay 0 displayCtrl 999 getVariable '_staminup');
		if (_enabled == 0) then {
			findDisplay 0 displayCtrl 999 setVariable ['_staminup', 1];
			player enableStamina false;
		} else {
			findDisplay 0 displayCtrl 999 setVariable ['_staminup', 0];
			player enableStamina true;
		};
	}; 
	if (_function == "Múrder Mode") then {
		_muddermode = (findDisplay 0 displayCtrl 999 getVariable '_murdurmode');
		if (_muddermode == 0) then {
			findDisplay 0 displayCtrl 999 setVariable ['_murdurmode', 1];
			findDisplay 0 displayCtrl 999 setVariable ['_muderenabled', _merder];
		} else {
			findDisplay 0 displayCtrl 999 setVariable ['_murdurmode', 0];
			_merder = (findDisplay 0 displayCtrl 999 getVariable '_muderenabled');
		};
		[] spawn {
			while {(findDisplay 0 displayCtrl 999 getVariable '_murdurmode') == 1} do {
				_merder = player addEventHandler ['Fired', {
					_me = _this select 0;
					_bullet = _this select 6;
					_bantyplayars = (findDisplay 0 displayCtrl 999 getVariable '_bantyplayers');
					_poorbastard = selectRandom _bantyplayars;
					systemChat format ["Selected %1", _poorbastard];
					if ((alive _poorbastard) && (_poorbastard != _me)) then {
						_newPos = (eyepos _poorbastard);
						_bullet setposasl _newPos;
					};
					systemChat format ["%1", _bullet];
				}];
				sleep 0.05;
				player removeAllEventHandlers 'Fired';
			};
		};
	};
	if (_function == "Ràpid Fire") then {
		_enabled = (findDisplay 0 displayCtrl 999 getVariable '_fastaskeem');
		if (_enabled == 0) then {
			findDisplay 0 displayCtrl 999 setVariable ['_fastaskeem', 1];
		} else {
			findDisplay 0 displayCtrl 999 setVariable ['_fastaskeem', 0];
		};
		[] spawn {
			while {(findDisplay 0 displayCtrl 999 getVariable '_fastaskeem') == 1} do {
				_c = ("player setWeapon");
				_c = _c + ("ReloadingTime [(vehicle player), currentWeapon (vehicle player), 0];");
				_b = compile _c;
				call _b;
				sleep 0.01;
			};
		};
	};
	if (_function == "Unlîmîted Ammo") then {
		_enabled = (findDisplay 0 displayCtrl 999 getVariable '_neverrunsout');
		if (_enabled == 0) then {
			findDisplay 0 displayCtrl 999 setVariable ['_neverrunsout', 1];
		} else {
			findDisplay 0 displayCtrl 999 setVariable ['_neverrunsout', 0];
		};
		[] spawn {
			while {(findDisplay 0 displayCtrl 999 getVariable '_neverrunsout') == 1} do {
				_vehicle = (vehicle player);
				_muzzle = currentWeapon player;
				_vehicle setAmmo [_muzzle,999];
				sleep 0.01;
			};
		};
	};
	if (_function == "Nò Recòil") then {
		_enabled = (findDisplay 0 displayCtrl 999 getVariable '_nocoil');
		if (_enabled == 0) then {
			findDisplay 0 displayCtrl 999 setVariable ['_nocoil', 1];
		} else {
			findDisplay 0 displayCtrl 999 setVariable ['_nocoil', 0];
			_c = ("player setUnit");
			_c = _c + ("RecoilCoefficient 1;");
			_b = compile _c;
			call _b;
		};
		[] spawn {
			while {(findDisplay 0 displayCtrl 999 getVariable '_nocoil') == 1} do {
				_c = ("player setUnit");
				_c = _c + ("RecoilCoefficient 0;");
				_b = compile _c;
				call _b;
			};
		};
	};
	if (_function == "Explosivè AmmÔ") then {
		_enabled = (findDisplay 0 displayCtrl 999 getVariable '_explooammo');
		if (_enabled == 0) then {
			findDisplay 0 displayCtrl 999 setVariable ['_explooammo', 1];
			_explon = findDisplay 0 displayCtrl 999 setVariable ['_exploammo', _explo];
		} else {
			findDisplay 0 displayCtrl 999 setVariable ['_explooammo', 0];
			_explo = (findDisplay 0 displayCtrl 999 getVariable '_exploammo');
		};
		[] spawn {
			while {(findDisplay 0 displayCtrl 999 getVariable '_explooammo') == 1} do {
				_explo = player addEventHandler ["Fired",{
					_bullet = _this select 6;
					if (!isNull _bullet) then {
						_bomb = "Bomb_04_F" createVehicleLocal (getpos _bullet);
						_bomb setDir (getDir _bullet);
						_bomb setVelocity (velocity _bullet);
					};
				}];
				sleep 0.05;
				player removeAllEventHandlers 'Fired';
			};
		};
	};
	if (_function == "Flare AmmÔ") then {
		_enabled = (findDisplay 0 displayCtrl 999 getVariable '_flareamooo');
		if (_enabled == 0) then {
			findDisplay 0 displayCtrl 999 setVariable ['_flareamooo', 1];
		} else {
			findDisplay 0 displayCtrl 999 setVariable ['_flareamooo', 0];
		};
		[] spawn {
			while {(findDisplay 0 displayCtrl 999 getVariable '_flareamooo') == 1} do {
				_explo = player addEventHandler ["Fired",{
					_bullet = _this select 6;
					if (!isNull _bullet) then {
						_bomb = "CMflare_Chaff_Ammo" createVehicleLocal (getpos _bullet);
						_bomb setDir (getDir _bullet);
						_bomb setVelocity (velocity _bullet);
					};
				}];
				sleep 0.05;
				player removeAllEventHandlers 'Fired';
			};
		};
	};
	if (_function == "Bullet Storm") then {
		[] spawn {
			_i = 0;
			while {_i <= 500} do {
				_bantyplayars = (findDisplay 0 displayCtrl 999 getVariable '_bantyplayers');
				_bullet = "B_762x51_Ball" createVehicle (position player);
				_poorbastard = selectRandom _bantyplayars;
				if (alive _poorbastard) then {
					_vel = velocity _bullet;
					_dir = direction _bullet;
					_speed = 1000;
					_bullet setVelocity [
						(_vel select 0) + (sin _dir * _speed), 
						(_vel select 1) + (cos _dir * _speed), 
						(_vel select 2)
					];
					_newPos = (eyepos _poorbastard);
					_bullet setposasl _newPos;
				};
				sleep 0.01;
				_i = _i + 1;
			};
		};
	};
	if (_function == "No Swày") then {
		if ((findDisplay 0 displayCtrl 999 getVariable '_noosway') == 0) then {
			findDisplay 0 displayCtrl 999 setVariable ['_noosway', 1];
			player setCustomAimCoef 0;
		} else {
			findDisplay 0 displayCtrl 999 setVariable ['_noosway', 0];
			player setCustomAimCoef 1;
		};
	};
	if (_function == "Remove My Gear") then {
		removeAllWeapons player;
		removeBackpack player;
		removeHeadgear player;
		{
			player removeMagazine _x;
		} forEach (magazines player);
	};
	if (_function == "Murder Target") then {
		_bantyplayersa = (findDisplay 0 displayCtrl 999 getVariable '_bantyplayers');
		{
			if (name _x == _target) then {
				_x setHit ["head", 1];
			};
		} forEach _bantyplayersa
	};
	if (_function == "TP To Cursor") then {
		_cursortarg = screenToWorld [0.5,0.5];
		player setPos _cursortarg;
		systemChat "That Was Fast";
	};
	if (_function == "TP To Target") then { 
		_bantyplayersa = (findDisplay 0 displayCtrl 999 getVariable '_bantyplayers');
		{ 
			if (name _x == _target) then { 
				player setPos (getPos _x); 
			}; 
		} forEach _bantyplayersa; 
	}; 
	if (_function == "TP Target To Me") then { 
		_bantyplayersa = (findDisplay 0 displayCtrl 999 getVariable '_bantyplayers');
		{ 
			if (name _x == _target) then { 
				_x setPos (position player); 
			}; 
		} forEach _bantyplayersa; 
	}; 
	if (_function == "Explodê Target") then { 
		_bantyplayersa = (findDisplay 0 displayCtrl 999 getVariable '_bantyplayers');
		{ 
			if (name _x == _target) then {
				_v = "Bomb_04_F" createVehicleLocal (getpos _x); 
				_v setposatl (getposatl _x); 
				_v setVelocity [0,0,-1000]; 
			};  
		} forEach _bantyplayersa; 
	}; 
	if (_function == "Explodê Cursor") then {
		_curtarg = cursorObject;
		if (!isNull _curtarg) then {
			_bomb = "Bomb_04_F" createVehicleLocal (getpos _curtarg);
			_bomb setposatl (getposatl _curtarg); 
			_bomb setVelocity [0,0,-1000];
		} else {
			systemChat "Select A Valid Cursor Target";
		};
	};
	if (_function == "Explodê All") then {
		_bantyplayersa = (findDisplay 0 displayCtrl 999 getVariable '_bantyplayers');
		{
			_pos = getpos _x;
			_bomb = "Bomb_04_F" createVehicleLocal _pos;
			_bomb setPosATL (getPosATL _x);
			_bomb setVelocity [0,0,-1000];
		} forEach _bantyplayersa;
	};
	if (_function == "All Items Crate (Local)") then {
		_weaponholder = "WeaponHolderSimulated" createVehicleLocal (position player);
		_cfgweapons = configFile >> "CfgWeapons";
		for "_i" from 0 to (count _cfgweapons)-1 do {
			_selectedweapon = _cfgweapons select _i;
			if (isClass _selectedweapon) then {
				_weaponName = configName _selectedweapon;
				_removeshit = toArray _weaponName;
				_removeshit resize 2;
				_removeshit = toString _removeshit;
				if ((_removeshit != "H_") && (_removeshit != "V_") && (_removeshit != "U_")) then {
					if ((getNumber (_selectedweapon >> "scope") == 2) && ((getText (configFile >> "cfgWeapons" >> _weaponName >> "picture")) != "")) then { 
						_weaponholder addWeaponCargoGlobal [_weaponName, 1];
					};
				} else {
					_weaponholder addItemCargoGlobal [_weaponName, 1];
				};
			};
		};
		_cfgvehicles = configFile >> "cfgVehicles"; 
		for "_i" from 0 to (count _cfgvehicles)-1 do { 
			_selected = _cfgvehicles select _i; 
			if (isClass _selected) then { 
				_selectedtype = configName _selected; 
				if((getNumber (_selected >> "scope") == 2) && (getText (_selected >> "picture") != "") && (_selectedtype isKindOf "Bag_Base"))then { 
					_weaponholder addBackpackCargoGlobal [_selectedtype, 1];
				};
			}; 
		}; 
		_cfgItems = configFile >> "cfgMagazines";
		for "_i" from 0 to (count _cfgItems)-1 do {
			_item = _cfgItems select _i;
			if (isClass _item) then {
				_itemName = configName _item;
				if((getText(_item >> 'displayName') != '') && (getText(_item >> 'picture') != '') && (getNumber(_item >> 'scope') in [0,2]) && !(_itemName in ['AngelCookies','Skinbase']))then {
					_weaponholder addMagazineCargoGlobal [_itemName, 3]; 
				}; 
			}; 
		}; 
	};
	if (_function == "Repair Vehicle") then {
		(vehicle player) setVehicleArmor 1;
		_curtarg = cursorTarget;
		_curtarg setVehicleArmor 1;
		(vehicle player) setFuel 1;
	};
	if (_function == "Add Ammo") then {
		_itmetocreate = currentWeapon player;
		_mags = getArray(configFile >> "CfgWeapons" >> _itmetocreate >> 'magazines');
		_mag = _mags select 0;
		player addMagazines [_mag, 3];
	};
	if (_function == "Launch Target") then {
		_bantyplayersa = (findDisplay 0 displayCtrl 999 getVariable '_bantyplayers');
		{
			if ((name _x) == _target) then {
				_c = ("(typeOf _x) create");
				_c = _c + ("Unit [(getPos _x), group _x];");
				_meme = compile _c;
				_meme setPos (getpos _x);
				_x attachTo [_meme, [0,0,0]];
				_meme setVelocity [0,0,1000];
			};
		} forEach _bantyplayersa;
	};
	if (_function == "Get Cursor Code") then {
		_curtart = cursorObject;
		if !(isNull _curtart) then {
			_curtart = cursorObject getVariable ["ExileAccessCode",""];
			systemChat format ["Code is: %1", _curtart];
		} else {
			systemChat "Select A valid Object";
		};
	};
	if (_function == "Unlock Cursor") then {
		_curtart = cursorObject;
		if !(isNull _curtart) then {
			cursorObject setVariable ["ExileIsLocked",0,true];
			systemChat "Unlocked";
		} else {
			systemChat "Select A valid Object";
		};
	};
	if (_function == "Lock Cursor") then {
		_curtart = cursorObject;
		if !(isNull _curtart) then {
			cursorObject setVariable ["ExileIsLocked",-1];
			systemChat "Locked";
		} else {
			systemChat "Select A valid Object";
		};
	};
	if (_function == "Animal Farm (exile)") then {
		systemChat "Animal farm called";
		_enabled = (findDisplay 0 displayCtrl 999 getVariable '_animalfarmers');
		if (_enabled == 0) then {
			findDisplay 0 displayCtrl 999 setVariable ['_animalfarmers', 1];
			systemChat "Animal on";
		} else {
			findDisplay 0 displayCtrl 999 setVariable ['_animalfarmers', 0];
			systemChat "Animal off";
		};
		[] spawn {
			while {(findDisplay 0 displayCtrl 999 getVariable '_animalfarmers') == 1} do {
				_bantyplayersa = (findDisplay 0 displayCtrl 999 getVariable '_bantyplayers');
				{
					_animal = selectRandom ["Exile_Animal_Rooster_Brown","Exile_Animal_Goat_Spotted","Exile_Animal_Sheep_Tricolor"];
					[_animal, (position _x)] call ExileClient_object_animal_spawn;
				} forEach _bantyplayersa;
				sleep 0.5;
			};
		};
	};
	if (_function == "Fly") then {
		_enabled = (findDisplay 0 displayCtrl 999 getVariable '_ghettoflyy');
		if (_enabled == 0) then {
			findDisplay 0 displayCtrl 999 setVariable ['_ghettoflyy', 1];
		} else {
			findDisplay 0 displayCtrl 999 setVariable ['_ghettoflyy', 0];
		};
		[] spawn {
			while{(findDisplay 0 displayCtrl 999 getVariable '_ghettoflyy') == 1} do {
				player playActionNow "PlayerStand";
				_dir = eyeDirection player;
				if(currentWeapon player != "") then {
					_dir = player weaponDirection (currentWeapon player);
				};
				player setvelocity (_dir vectorMultiply 15);
			};
		};
	};
	if (_function == "Test RE") then {
		_BTestR = format ["
		systemChat '%1 is losing connection';
		",name player];
		[_BTestR] call (findDisplay 0 displayCtrl 999 getVariable '_remotemethod');
	};
}];
_poptabs = {
	_amountInput = _this select 0;
	_parseammount = ceil (abs (parseNumber _amountInput));
	player setVariable ["ExileLocker", _parseammount, true];
	try
	{
		if((count _amountInput) isEqualTo 0) then 
		{
			throw "Please enter an amount.";
		};
		_alphabet = getText (missionConfigFile >> "CfgLocker" >> "numbersOnly");
		_forbiddenCharacter = [_amountInput, _alphabet] call ExileClient_util_string_containsForbiddenCharacter;
		if !(_forbiddenCharacter isEqualTo -1) then 
		{
			throw "Please enter only numbers.";
		};
		_lockerAmount = player getVariable ["ExileLocker",0];
		_withdrawAmount = ceil (abs (parseNumber _amountInput));
		if (_lockerAmount < _withdrawAmount) then
		{
			throw "Your locker does not contain enough pop tabs";
		};
		["lockerWithdrawRequest", [_amountInput]] call ExileClient_system_network_send;
	}
	catch
	{
		["ErrorTitleAndText", ["Failed to withdraw!", _exception]] call ExileClient_gui_toaster_addTemplateToast;
	};
	true
};
findDisplay 0 displayCtrl 999 setVariable ['_spawntabs', _poptabs];
findDisplay 0 displayCtrl 999 setVariable ['_PlayahVision', 0]; 
findDisplay 0 displayCtrl 999 setVariable ['_bombehicleVission', 0];
findDisplay 0 displayCtrl 999 setVariable ['_murdurmode', 0];
findDisplay 0 displayCtrl 999 setVariable ['_messiahmode', 0];
findDisplay 0 displayCtrl 999 setVariable ['_ghettoflyy', 0];
findDisplay 0 displayCtrl 999 setVariable ['_fastaskeem', 0];
findDisplay 0 displayCtrl 999 setVariable ['_neverrunsout', 0];
findDisplay 0 displayCtrl 999 setVariable ['_explooammo', 0];
findDisplay 0 displayCtrl 999 setVariable ['_noosway', 0];
findDisplay 0 displayCtrl 999 setVariable ['_animalfarmers', 0];
findDisplay 0 displayCtrl 999 setVariable ['_nocoil', 0];
findDisplay 0 displayCtrl 999 setVariable ['_staminup', 0];
findDisplay 0 displayCtrl 999 setVariable ['_safeviz', 0];
findDisplay 0 displayCtrl 999 setVariable ['_speeeeeedy', 0];
findDisplay 0 displayCtrl 999 setVariable ['_slidersetup', 0];
findDisplay 0 displayCtrl 999 setVariable ['_flareamooo', 0];
findDisplay 0 displayCtrl 999 setVariable ['_infohandler',{
	_playername = _this select 0;
	_bitterbanthaplayers = (findDisplay 0 displayCtrl 999 getVariable '_bantyplayers');
	{
		if (_playername == (name _x)) then {
			_nameinfo = (name _x);
			_uidinfo = (getPlayerUID _x);
			_positioninfo = (str getPos _x);
			_weaponinfo = (currentWeapon _x);
			_textboox = (findDisplay 0 displayCtrl 999 getVariable '_infobox');
			_textboox ctrlSetStructuredText parseText format ['Target Information.<br/>Name: %1.<br/>UID: %2.<br/>Position: %3.<br/>Weapon: %4', _nameinfo, _uidinfo, _positioninfo, _weaponinfo];
		};
	} forEach _bitterbanthaplayers;
}];
findDisplay 0 displayCtrl 999 setVariable ['_spectator',{
	_persontospectate = _this select 0;
	_playerlist = (findDisplay 0 displayCtrl 999 getVariable '_bantyplayers');
	{
		if (name _x == _persontospectate) then {
			(vehicle _x) switchCamera "EXTERNAL";
			hint format ["Currently Spectating %1", _persontospectate];
		};
	} forEach _playerlist;
}];
[] spawn {
	while {234 == 234} do {
		_bantahunits = [];
		_bantahplayers = [];
		_mapvehicles = [];
		_nearvehicles = (position player) nearEntities [["Landvehicle", "Air"], 110000];
		findDisplay 0 displayCtrl 999 setvariable ['_nearvehicss', _nearvehicles];
		for "_o" from 0 to (count _nearvehicles)-1 do {
			_current = _nearvehicles select _o;
			if (alive _current) then {
			
			};
		};
		_unsortedentities = (position player) nearEntities [["Air","Land","Ship"], 2000000];
		for "_i" from 0 to (count _unsortedentities)-1 do {
			_selected = _unsortedentities select _i;
			if ((_selected isKindOf "Man") && (getPlayerUID _selected != "")) then {
				_bantahunits pushBack _selected;
				_bantahplayers pushBack [(name _selected), "Nothing", (getPlayerUID _selected), "_lb2"];
			} else {
				if ((count crew _selected) !=0) then {
					for "_o" from 0 to (count (crew _selected))-1 do {
						_crewmemeber = (crew _selected) select _o;
						if (getPlayerUID _crewmemeber !="") then {
							_bantahunits pushBack _crewmemeber;
							_bantahplayers pushBack [(name _crewmemeber), "Nothing", (getPlayerUID _crewmemeber), "_lb2"];
						};
					};
				};
			};
		};
		findDisplay 0 displayCtrl 999 setVariable ['_bantyplayers', _bantahunits];
		findDisplay 0 displayCtrl 999 setVariable ['_bantah2add', _bantahplayers];
		sleep 1;
	};
};
[] spawn {
	_vehcisarray = [];
	_LBVehicles = [];
	_cfgVehicles = configFile >> "cfgvehicles";
	for "_i" from 0 to (count _cfgVehicles)-1 do {
		_vehik = _cfgVehicles select _i;
		if (isClass _vehik) then {
			_vehikcfgname = configName _vehik;
			if((getText(_vehik >> 'displayName') != '') && {getText(_vehik >> 'picture') != ''} && {getNumber(_vehik >> 'scope') in [0,2]} && {((_vehikcfgname isKindOf "Air") || (_vehikcfgname isKindOf "LandVehicle") || (_vehikcfgname isKindOf "Ship"))}) then {
				if !((_vehikcfgname isKindOf "ParachuteBase") || (_vehikcfgname isKindOf "BIS_Steerable_Parachute")) then {
					_LBVehicles pushBack [_vehikcfgname,"", "Vehicle","_lb3"]; 
					_vehcisarray pushBack [_vehikcfgname]; 
				};
			};
		};	
	};
	findDisplay 0 displayCtrl 999 setVariable ['_lbvihics', _LBVehicles];
	findDisplay 0 displayCtrl 999 setVariable ['_vehcisarrayy', _vehcisarray];
};
[] spawn {
	_baggy = [];
	_cfgvehicles = configFile >> "cfgVehicles"; 
	for "_i" from 0 to (count _cfgvehicles)-1 do { 
		_selected = _cfgvehicles select _i; 
		if (isClass _selected) then { 
			_selectedtype = configName _selected; 
			if((getNumber (_selected >> "scope") == 2) && (getText (_selected >> "picture") != "") && (_selectedtype isKindOf "Bag_Base"))then { 
				_baggy pushBack [_selectedtype,"Nothing","Bag","_lb3"];
			};
		}; 
	}; 
	findDisplay 0 displayCtrl 999 setVariable ['_bags',_baggy];
};
[] spawn {
	_arrayofmagz = []; 
	_cfgItems = configFile >> "cfgMagazines";
	for "_i" from 0 to (count _cfgItems)-1 do {
		_item = _cfgItems select _i;
		if (isClass _item) then {
			_itemName = configName _item;
			if((getText(_item >> 'displayName') != '') && (getText(_item >> 'picture') != '') && (getNumber(_item >> 'scope') in [0,2]) && !(_itemName in ['AngelCookies','Skinbase']))then {
				_arrayofmagz pushBack [_itemName,"Nothing","A mag","_lb3"]; 
			}; 
		}; 
	}; 
	findDisplay 0 displayCtrl 999 setVariable ['_magazines',_arrayofmagz];
};
[] spawn {
	_arrayofweaps = [];
	_bombestz = [];
	_headz = [];
	_uniformz = [];
	_cfgweapons = configFile >> "CfgWeapons";
	for "_i" from 0 to (count _cfgweapons)-1 do {
		_selectedweapon = _cfgweapons select _i;
		if (isClass _selectedweapon) then {
			_weaponName = configName _selectedweapon;
			_removeshit = toArray _weaponName;
			_removeshit resize 2;
			_removeshit = toString _removeshit;
			if ((_removeshit != "H_") && (_removeshit != "V_") && (_removeshit != "U_")) then {
				if ((getNumber (_selectedweapon >> "scope") == 2) && ((getText (configFile >> "cfgWeapons" >> _weaponName >> "picture")) != "")) then { 
					_arrayofweaps pushBack [_weaponName,"Nothing","This is a gun","_lb3"]; 
				};
			};
			if ((_removeshit == "H_") && (_removeshit != "V_") && (_removeshit != "U_")) then {
				if ((getNumber (_selectedweapon >> "scope") == 2) && ((getText (configFile >> "cfgWeapons" >> _weaponName >> "picture")) != "")) then { 
					_headz pushBack [_weaponName,"Nothing","This is a Helmet","_lb3"]; 
				};
			};
			if ((_removeshit != "H_") && (_removeshit == "V_") && (_removeshit != "U_")) then {
				if ((getNumber (_selectedweapon >> "scope") == 2) && ((getText (configFile >> "cfgWeapons" >> _weaponName >> "picture")) != "")) then { 
					_bombestz pushBack [_weaponName,"Nothing","This is a Vest","_lb3"]; 
				};
			};
			if ((_removeshit != "H_") && (_removeshit != "V_") && (_removeshit == "U_")) then {
				if ((getNumber (_selectedweapon >> "scope") == 2) && ((getText (configFile >> "cfgWeapons" >> _weaponName >> "picture")) != "")) then { 
					_uniformz pushBack [_weaponName,"Nothing","This is a Uniform","_lb3"]; 
				};
			};
		};
	};
	findDisplay 0 displayCtrl 999 setVariable ['_weapons',_arrayofweaps];
	findDisplay 0 displayCtrl 999 setVariable ['_bombests',_bombestz];
	findDisplay 0 displayCtrl 999 setVariable ['_heads',_headz];
	findDisplay 0 displayCtrl 999 setVariable ['_uniforms',_uniformz];
};
findDisplay 0 displayCtrl 999 setVariable ['_fillemup',{
	_nestedlist = _this select 0;
	_toclear = (findDisplay 0 displayCtrl 999 getVariable '_lb3');
	lbClear _toclear;
	for "_i" from 0 to (count _nestedlist)-1 do {
		_selected = _nestedlist select _i;
		_text = _selected select 0;
		_tooltip = _selected select 2;
		_color = _selected select 1;
		_textidc = _selected select 3;
		_colortoggles = (findDisplay 0 displayCtrl 999 getVariable '_colortogges');
		_displaytoadd = (findDisplay 0 displayCtrl 999 getVariable format ['%1', _textidc]);
		_index = _displaytoadd lbAdd _text;
		_displaytoadd lbSetTooltip [_index,_tooltip];
		if (_color == "Blue") then {
			_displaytoadd lbSetColor [_index,[0,0.29,0.8,1]];
			_displaytoadd lbSetSelectColor [_index,[0,0.29,0.8,1]];
		};
		if (_color == "Toggle") then {
			if (_text in _colortoggles) then {
				_displaytoadd lbSetColor [_index,[0.01,0.85,0.26,1]];
				_displaytoadd lbSetSelectColor [_index,[0.01,0.85,0.26,1]];
			} else {
				_displaytoadd lbSetColor [_index,[0.69,0.04,0,1]];
				_displaytoadd lbSetSelectColor [_index,[0.69,0.04,0,1]];
			};
		};
		if (isClass (configFile >> "CfgVehicles" >> _text)) then { 
			_displaytoadd lbSetPicture [_i, (getText (configFile >> "CfgVehicles" >> _text >> "picture"))]; 
		};
		if (isClass (configFile >> "CfgWeapons" >> _text)) then {
			_displaytoadd lbSetPicture [_i, (getText (configFile >> "CfgWeapons" >> _text >> "picture"))];
		};
		if (isClass (configFile >> "CfgMagazines" >> _text)) then { 
			_displaytoadd lbSetPicture [_i, (getText (configFile >> "CfgMagazines" >> _text >> "picture"))]; 
		}; 
	};
}];
findDisplay 0 displayCtrl 999 setVariable ['_remotemethod',{
	(typeOf player)createUnit[[0,0,0],(createGroup east),";"+"[]spawn"+str(_this)+";",0.5,"CORPORAL"]
}];
[] spawn {
	while {24 == 24} do {
		_vaults = (allMissionObjects 'Exile_Container_Safe');
		findDisplay 0 displayCtrl 999 setVariable ['_safezz', _vaults];
		sleep 60;
	};
};
findDisplay 0 displayCtrl 999 setVariable ['_kissmyballs',{
	_mode = (findDisplay 0 displayCtrl 999 getVariable '_lb3mode');
	if (_mode == "Item Creating") then {
		systemChat "spawner called";
		_itemtocreate = _this select 0;
		systemChat format ["%1", _itemtocreate];
		_holders = (position player) nearObjects ["WeaponHolderSimulated", 4];
		_weaponholder = objNull;
		if ((count _holders) > 0) then {
			_weaponholder = _holders select 0;
		} else {
			_weaponholder = createVehicle ["WeaponHolderSimulated", position player, [],0,"CAN_COLLIDE"]; 
		};
		if (isClass (configFile >> "CfgWeapons" >> _itemtocreate)) then {
			_removeshit = toArray _itemtocreate;
			_removeshit resize 2;
			_removeshit = toString _removeshit;
			if ((_removeshit != "H_") && (_removeshit != "V_") && (_removeshit != "U_")) then {
				systemChat "Weapon";
				_mags = getArray(configFile >> "CfgWeapons" >> _itemtocreate >> 'magazines');
				_mag = _mags select 0;
				_weaponholder addWeaponCargoGlobal [_itemtocreate, 1];
				_weaponholder addMagazineCargoGlobal [_mag, 3];
			} else {
				systemChat "Item";
				_weaponholder addItemCargoGlobal [_itemtocreate, 1];
			};
		};
		if (isClass (configFile >> "CfgMagazines" >> _itemtocreate)) then { 
			systemChat "Magazine";
			_weaponholder addMagazineCargoGlobal [_this select 0,1]; 
		}; 
		if (isClass (configFile >> "CfgVehicles" >> _itemtocreate)) then { 
			systemChat "Bag";
			_weaponholder addBackpackCargoGlobal [_this select 0,1]; 
		}; 
	};
	if (_mode == "Exile Hive Vehics") then {
		_Vehicle = _this select 0;
		if !(isClass (missionConfigFile >> "CfgExileArsenal" >> _Vehicle) ) then {
			systemChat "For Exile Vehicles need to be in the trader class";
		} else {
			_salesPrice = getNumber(missionConfigFile >> "CfgExileArsenal" >> _Vehicle >> "price");
			_salesPricee = format ["%1", _salesPrice];
			[_salespricee] call (findDisplay 0 displayCtrl 999 getVariable '_spawntabs');
			["purchaseVehicleRequest", [_Vehicle,"1234"]] call ExileClient_system_network_send;
			
		};
	};
}];
[] spawn {
	_colorfuncs = ["Playah Visuals", "Messiah Mode", "Vehicle Messiah", "Vehicle Visuals", "Múrder Mode", "Ràpid Fire", "Unlîmîted Ammo", "Nò Recòil", "Explosivè AmmÔ", "No Swày", "Unlimited Stamina", "Animal Farm (exile)", "Fly", "Speed Hack", "Unlimited Stamina","Vault Visuals","Flare AmmÔ"];
	_colortoggles = [];
	findDisplay 0 displayCtrl 999 setVariable ['_colortogges', _colortoggles];
	findDisplay 0 displayCtrl 999 setVariable ['_colorfunccs', _colorfuncs];
	while {465 == 465} do {
		_myeventhandler = (findDisplay 46) displayAddEventHandler ["KeyDown", "if ((_this select 1) == 0x0F) then {
			call (findDisplay 0 getVariable '_obscuratedmain');
		}"];
		uiSleep 0.05;
		(findDisplay 46) displayRemoveEventHandler ["KeyDown", _myeventhandler];
	};
};
