vehicle player addEventHandler ["HandleDamage", { 
  _unit = _this select 0; 
  _selection = _this select 1; 
  _damage = _this select 2; 
 
  if (_selection == "?") exitWith {}; 
 
  _curDamage = damage _unit; 
  if (_selection != "") then {_curDamage = _unit getHit _selection}; 
  _newDamage = _damage - _curDamage; 
 
  _damage - _newDamage * 0.30 
}];

hint "da?o var activada";