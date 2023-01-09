titleText ["", "PLAIN"];
sleep 6;

if (side player == west) then {
execvm 'scripts\municion.sqf';
systemchat "Servidor creado por Alberto Rufier";
hint format ["Bienvenido al Quad duckhunt Rufier,  %1.  Para ponerte tapones presiona 'F1'.  Pesiona la tecla 'T' cuando apuntes con el lanzamisiles para calcular la distancia de los patos. ",name player];
execVM "scripts\key_init.sqf";
[  
	parseText format
	["<t align='center' size='1.2'><t font='PuristaBold' size='1.6'>%1</t>", "¡Mata a esos asquerosos patos motorizados!"],
	[0.35, 0.2, 0.3, 5],
	[10, 10],
	5,
	1.2,
	0
] spawn BIS_fnc_textTiles;} else {
player addAction [("<t color=""#ffe419"">" + ("Desvolcar vehiculo") +"</t>"),"scripts\vuelco.sqf",[],2,false,true,"","cursorTarget isKindOf ""landvehicle"" and player distance cursortarget < 3 "];
player setVariable ["BIS_enableRandomization", false, true]; 
player setObjectTextureGLOBAL [0, "#(rgb,8,8,3)color(1,1,0,1)"]; 
execVM "scripts\danio.sqf";
execvm 'scripts\tag.sqf';
execVM 'scripts\ff.sqf';
systemchat "Servidor creado por Alberto Rufier";
hint format ["Bienvenido al Quad duckhunt Rufier,  %1.  Para ponerte tapones presiona 'F1'. ",name player];
execVM "scripts\key_init.sqf";
execVM "scripts\vehicloop.sqf";
[ 
	parseText format
	["<t align='center' size='1.2'><t font='PuristaBold' size='1.6'>%1</t>", "¡Corre lindo patito! hay un maldito cazador!"],
	[0.35, 0.2, 0.3, 5],
	[10, 10],
	5,
	1.2,
	0
] spawn BIS_fnc_textTiles;};

if (!isDedicated) then { 
 [] spawn { 
  waitUntil {player == player}; 
  if (serverCommandAvailable "#kick") then { 
hint 'Admin menu habilitado';
execvm 'scripts\admintabmenu.sqf';
}; 
  }; 
 }; 