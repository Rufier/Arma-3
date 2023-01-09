player  linkItem "itemGPS";
player  linkItem "itemMAP";
execVM "scripts\ambiente.sqf";
execVM "scripts\key_init.sqf";
call compile preprocessFile "UI\HUD.sqf";
[] spawn ICE_HUD;
systemchat "Servidor creado por Alberto Rufier";
execVM "scripts\camara.sqf";
execVM "scripts\presentacion.sqf";
\\(player) addAction["tp script", {
    execVM "scripts\tp.sqf";
}];

