/// scipt tapones por Alberto Rufier\\\

                publicvariable "tapon";
 
                if (isNil "tapones") then {tapones = 0;};
                if (tapones==0) then {tapones=1;hint "Te has puesto los tapones";}else{tapones=0;hint "Te has quitado los tapones";};
               
                if (tapones == 1) then
                {
                      1 fadeSound 0.2;
                }
                else
                {
                        1 fadeSound 1;
                };