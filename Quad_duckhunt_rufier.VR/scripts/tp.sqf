player allowdamage false;
["TaskSucceeded", ["2", "Bien hecho! ahora te toca tu premio. Disfruta del vuelo con CuakAIR "]] call BIS_fnc_showNotification;
sleep 2;
titleText ["", "BLACK OUT", 3];
sleep 2;
player setDir 220;
player setpos [26744.279,24800.178,66.065];
execvm 'scripts\camara2.sqf';
sleep 6;
[parseText format
	["<t align='center' size='1.2'><t font='PuristaBold' size='1.2'>%1</t>", "Eres invencible durante 10 segundos! mata a ese desgraciado!!!!"], 
 [0.35, 0.2, 0.3, 2], 
 [5, 5], 
 2, 
 1.2, 
 0 
] spawn BIS_fnc_textTiles;
execvm 'scripts\llamita.sqf';
hintSilent "Invencible.   10";
sleep 0.33;
hintSilent "Invencible..  10";
sleep 0.33;
hintSilent "Invencible... 10";
sleep 0.33;
hintSilent "Invencible.   9";
sleep 0.33;
hintSilent "Invencible..  9";
sleep 0.33;
hintSilent "Invencible... 9";
sleep 0.33;
hintSilent "Invencible.   8";
sleep 0.33;
hintSilent "Invencible..  8";
sleep 0.33;
hintSilent "Invencible... 8";
sleep 0.33;
hintSilent "Invencible.   7";
sleep 0.33;
hintSilent "Invencible..  7";
sleep 0.33;
hintSilent "Invencible... 7";
sleep 0.33;
hintSilent "Invencible.   6";
sleep 0.33;
hintSilent "Invencible..  6";
sleep 0.33;
hintSilent "Invencible... 6";
sleep 0.33;
hintSilent "Invencible.   5";
sleep 0.33;
hintSilent "Invencible..  5";
sleep 0.33;
hintSilent "Invencible... 5";
sleep 0.33;
hintSilent "Invencible.   4";
sleep 0.33;
hintSilent "Invencible..  4";
sleep 0.33;
hintSilent "Invencible... 4";
sleep 0.33;
hintSilent "Invencible.   3";
sleep 0.33;
hintSilent "Invencible..  3";
sleep 0.33;
hintSilent "Invencible... 3";
sleep 0.33;
hintSilent "Invencible.   2";
sleep 0.33;
hintSilent "Invencible..  2";
sleep 0.33;
hintSilent "Invencible... 2";
sleep 0.33;
hintSilent "Invencible.   1";
sleep 0.33;
hintSilent "Invencible..  1";
sleep 0.33;
hintSilent "Invencible... 1";
sleep 0.33;
hintSilent "";
sleep 0.5;
{ 
  deletevehicle _x; 
} forEach attachedObjects player;
player allowdamage true;
[parseText format
	["<t align='center' size='1.2'><t font='PuristaBold' size='1.2'>%1</t>", "ya no eres invencible :("], 
 [0.35, 0.2, 0.3, 2], 
 [5, 5], 
 2, 
 1.2, 
 0 
] spawn BIS_fnc_textTiles;