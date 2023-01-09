if (!isDedicated) then { 
 [] spawn { 
  waitUntil {player == player}; 
  if (serverCommandAvailable "#kick") then { 
removeallActions player;

player addAction ["<t color='#26f01f'>   // Rufier's Adminmenu \\   </t>","execvm 'scripts\adminmenu.sqf'"];
player addAction ["TP jugador al inicio","execvm 'scripts\tpalinicio.sqf'"];
player addAction ["Curar jugador", "scripts\curarse.sqf",[],1,false,true];
player addAction ["Matar jugador", "scripts\matar.sqf",[],1,false,true];
player addAction ["Tepear jugador a mi", "scripts\tpami.sqf",[],1,false,true];
player addAction ["Tepearme a jugador", "scripts\tpael.sqf",[],1,false,true];
player addAction ["Modo dios", "scripts\dios.sqf",[],1,false,true];
player addAction ["Guardar arma", "scripts\garma.sqf",[],1,false,true];
}; 
  }; 
 }; 
