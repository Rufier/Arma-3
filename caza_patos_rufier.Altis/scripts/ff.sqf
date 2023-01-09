{
	if (side _x isEqualTo EAST) then
	{
		_x addEventHandler
		[
			"HandleDamage",
			{
				_returnDamage = (_this select 2);
				if ((side (_this select 0)) isEqualTo (side (_this select 3))) then
				{
					_returnDamage = 0;
				};
				_returnDamage;
			}
		];
	};
} forEach allUnits;