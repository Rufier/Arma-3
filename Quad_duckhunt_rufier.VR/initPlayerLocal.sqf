player  linkItem "itemGPS";
player  linkItem "itemMAP";
player  linkItem "itemradio";
execVM "scripts\markerguay.sqf";
execVM "scripts\key_init.sqf";
execVM "voiceControl.sqf";
player addEventHandler ["HandleRating", {0}];
player addEventHandler ["InventoryOpened", { 
  [_this select 0, _this select 1] spawn {    
    waituntil {!(isnull (finddisplay 602))}; 
    closeDialog 602; hint "Los patos no saben abrir mochilas :(" 
   }; 
  null 
}];