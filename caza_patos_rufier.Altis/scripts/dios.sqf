if (isNil "dios") then {dios = 0;};
                if (dios==0) then {dios=1;hint "Modo dios activado"; systemChat format ["%1 TIENE EL MODO DIOS ACTIVADO",name player];}else{dios=0;hint "Modo dios desactivado"; systemChat format ["%1 YA NO ES UN DIOS :(",name player]};
               
                if (dios == 1) then
                {    
                   [ 
 [ 
  player, 
  "scripts\hintdios.sqf" 
 ], 
 "execvm" 
] call BIS_fnc_MP;
                     player setdamage 0;
                     player allowDamage false;
                    _expl1 = "Sign_Arrow_green_F" createVehicle position player; _expl1 attachTo [player, [0, 0, 1], "Head"]; _expl1 setVectorDirAndUp [ [0, 0, 0], [-1.5, 5.5, 0] ];
                }
                else
                {

                   [ 
 [ 
  player, 
  "scripts\hintdios2.sqf" 
 ], 
 "execvm" 
] call BIS_fnc_MP;
                      { 
  deletevehicle _x; 
} forEach attachedObjects player;
                      player allowDamage true;
                };


