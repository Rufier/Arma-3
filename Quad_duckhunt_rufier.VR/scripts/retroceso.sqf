if (isNil "maraton") then {maraton = 0;};
                if (maraton==0) then {maraton=1;}else{maraton=0;};
               
                if (maraton == 1) then
                {
player setUnitRecoilCoefficient 0;
                }
                else
                {
player setUnitRecoilCoefficient 1;
                };