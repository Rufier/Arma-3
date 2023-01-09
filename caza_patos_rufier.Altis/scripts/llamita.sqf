_u = vehicle player; 
 
 
_l1 = "#lightpoint" createVehicleLocal getpos _u; 
 
_l1 setLightDayLight true; 
 
_l1 setLightColor [2, 2, 0]; 
 
_l1 setLightBrightness 0.015; 
 
_l1 setLightAmbient [10, 2.5, 0]; 
 
_l1 lightAttachObject [_u, [0, 0, 0]]; 
 
_l1 setLightAttenuation [3, 0, 0, 0.6]; 
 
 
 
_source01 = "#particlesource" createVehicleLocal getpos _u; 
_source01 setParticleClass "ObjectDestructionFire1Tiny"; 
_l1 attachTo [_u, [0,0.3,0.5], "Spine3"]; 
 
_source01 attachTo [_u, [0.08,0.3,0.55], "Spine3"];

\\ [[player],"scripts\llamita.sqf"] remoteExec ["execVM"]; 
 
