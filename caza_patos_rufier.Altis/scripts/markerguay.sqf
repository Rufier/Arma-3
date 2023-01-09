andy_map_Noobs = [];
                andy_map_Bitches = [];
                if (isnil "andy_map_Map_Markers") then {
                        andy_map_Map_Markers = 0;
                };
                if (andy_map_Map_Markers == 0) then {
                        andy_map_Map_Markers = 1;
                        
                } else {
                        andy_map_Map_Markers = 0;
                        
                };
                while {
                        andy_map_Map_Markers == 1
                }
                do {
                        {
                                if ((vehicle _x isKindOf "LandVehicle") || (vehicle _x isKindOf "Air") || (vehicle _x isKindOf "Ship")) then {
                                        if (count(crew vehicle _x) > 0) then {
                                                {
                                                        if (!(_x in andy_map_Noobs) and(alive _x) and(side _x == side player) and(getPlayerUID _x != "")) then {
                                                                private["_pos", "_l44", "_l45"];
                                                                _l45 = vehicle _x;
                                                                _pos = visiblePosition _x;
                                                                _l44 = createMarkerLocal[format["CRW%1%2", _pos select 0, _pos select 1], [(_pos select 0) + 20, _pos select 1, 0]];
                                                                _l8 = (gettext(configFile >> 'CfgVehicles' >> (typeof vehicle _x) >> 'displayName'));
                                                                _l44 setMarkerTypeLocal "mil_dot";
                                                                _l44 setMarkerTextLocal format["%1", name _x];
                                                                      if (_x == player) then {
                                                               _l44 setMarkerColorLocal "ColorGreen";
                                                                _l44 setMarkerTextLocal format["%1"];
                                                               _l44 setMarkerTypeLocal "mil_dot";
                                                                   };
                                                                 
                                                                
                                                                
                                                                _l44 setMarkerSizeLocal[1, 1];
                                                                andy_map_Noobs set[count andy_map_Noobs, _x];
                                                                [_x, _l44, _l45] spawn {
                                                                        private["_l46", "_l47", "_l48"];
                                                                        _l46 = _this select 0;
                                                                        _l47 = _this select 1;
                                                                        while {
                                                                                (andy_map_Map_Markers == 1) and(alive _l46) and(vehicle _l46 != _l46) and(getPlayerUID _l46 != "")
                                                                        }
                                                                        do {
                                                                                _l48 = ((crew vehicle _l46) find _l46);
                                                                                _l47 setMarkerPosLocal([(visiblePosition _l46 select 0) + 20, (visiblePosition _l46 select 1) - (25 + _l48 * 20), 0]);
                                                                                sleep 0.01;
                                                                        };
                                                                        deleteMarkerLocal _l47;
                                                                        if (_l46 in andy_map_Noobs) then {
                                                                                andy_map_Noobs set[(andy_map_Noobs find _l46), -1];
                                                                                andy_map_Noobs = andy_map_Noobs - [-1];
                                                                        };
                                                                        true;
                                                                };
                                                        };
                                                }
                                                forEach crew vehicle _x;
                                        };
                                } else {
                                        if (!(_x in andy_map_Bitches) and(vehicle _x == _x) and(side _x == side player) and(getPlayerUID _x != "")) then {
                                                private["_pos", "_l44"];
                                                _pos = visiblePosition _x;
                                                _l44 = createMarkerLocal[format["PLR%1%2", _pos select 0, _pos select 1], [(_pos select 0) + 20, _pos select 1, 0]];
                                                _l44 setMarkerTypeLocal "mil_dot";
                                                _l44 setMarkerSizeLocal[1, 1];
                                                if ((side _x == side player) and(side _x != resistance)) then {
                                                        _l44 setMarkerColorLocal "ColorWhite";
                                                } else {
                                                        _l44 setMarkerColorLocal "Colorwhite";
                                                };
                                                _l44 setMarkerTextLocal format["%1", name _x];
                                                if (_x == player) then {
                                                        _l44 setMarkerColorLocal "ColorGreen";
                                               _l44 setMarkerTextLocal format["%1"];
                                                                                              };
                                                andy_map_Bitches set[count andy_map_Bitches, _x];
                                                [_x, _l44] spawn {
                                                        private["_l46", "_l47"];
                                                        _l46 = _this select 0;
                                                        _l47 = _this select 1;
                                                        while {
                                                                (andy_map_Map_Markers == 1) and(alive _l46) and(vehicle _l46 == _l46) and(getPlayerUID _l46 != "")
                                                        }
                                                        do {
                                                                _l47 setMarkerPosLocal([visiblePosition _l46 select 0, visiblePosition _l46 select 1, 0]);
                                                                sleep 0.01;
                                                        };
                                                        deleteMarkerLocal _l47;
                                                        if (_l46 in andy_map_Bitches) then {
                                                                andy_map_Bitches set[(andy_map_Bitches find _l46), -1];
                                                                andy_map_Bitches = andy_map_Bitches - [-1];
                                                        };
                                                        true;
                                                };
                                        };
                                };
                        }
                        forEach playableUnits;
                        sleep 0.3;
                }; {
                        _l44 = str _x;
                        deleteMarkerLocal _l44;
                }
                forEach playableUnits;
};