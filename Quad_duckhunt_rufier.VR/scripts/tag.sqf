if (player == vehicle player) then { 
   onEachFrame { 
    _l49 = nearestobjects[player, ["CAManBase"], 1400]; { 
     if ((side _x != side player) && (getPlayerUID _x != "")  && ((player distance _x) < 99999))  then { 
      drawIcon3D["", [1, 0, 0, 1], [visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 1], 0.1, 0.1, 45, (format["%2 : %1m", round(player distance _x), name _x]), 1, 0.04, "TahomaB"] 
     } else { 
      if ((getPlayerUID _x != "") && ((player distance _x) < 99999)) then { 
       drawIcon3D["", [0, 0.5, 1, 1], [visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 1], 0.1, 0.1, 45, (format["%2 : %1m", round(player distance _x), name _x]), 1, 0.04, "TahomaB"] 
      }; 
     }; 
    } 
    foreach playableUnits; 
   }; 
  } else { 
   onEachFrame { 
    nil 
   }; 
  }; 
 };