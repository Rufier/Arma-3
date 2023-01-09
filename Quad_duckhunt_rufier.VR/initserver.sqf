if (isNil "killd") then {killd = 0;};
killd=0;

_endGameThread = [] spawn {
if (isdedicated) then {
	while {true} do {
		_westCount = allplayers select {side _x == west && alive _x};
                _eastCount = allplayers select {side _x == east && alive _x};
sleep 0.5;

if (count _westCount >= 1) then {
if (count _eastCount >= 1) then
{killd = 1;};
};

sleep 2;

if (killd==1) then {

if (count _westCount == 0) then
{

"eastwon1" call BIS_fnc_endMissionServer;
killd=0;
};

if (count _eastCount == 0) then
{

"westwon1" call BIS_fnc_endMissionServer;
killd=0;
};
		};
	};
};
};

