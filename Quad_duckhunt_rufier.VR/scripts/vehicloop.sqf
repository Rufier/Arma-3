while {true} do {
if(player != vehicle player) then {
vehicle player addEventHandler ["HandleDamage", { 
  _unit = vehicle player; 
  _selection = _this select 1; 
  _damage = _this select 2; 
 
  if (_selection == "?") exitWith {}; 
 
  _curDamage = damage _unit; 
  if (_selection != "") then {_curDamage = _unit getHit _selection}; 
  _newDamage = _damage - _curDamage; 
 
  _damage - _newDamage * 0.93 
}];

sleep 3;


    }else{
    vehicle player addEventHandler ["HandleDamage", { 
  _unit = vehicle player; 
  _selection = _this select 1; 
  _damage = _this select 2; 
 
  if (_selection == "?") exitWith {}; 
 
  _curDamage = damage _unit; 
  if (_selection != "") then {_curDamage = _unit getHit _selection}; 
  _newDamage = _damage - _curDamage; 
 
  _damage - _newDamage * 0 
}];
sleep 3;	    
   };  };

