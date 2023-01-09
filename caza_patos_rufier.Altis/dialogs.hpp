class fenix_menu
{
	idd=-1;
	movingenable=false;
	
	class controls 
	{
		////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Alberto Rufier, v1.063, #Zumyfu)
////////////////////////////////////////////////////////

class Fenix_frame: RscFrame
{
	idc = 1800;
	x = 0.335 * safezoneW + safezoneX;
	y = 0.291 * safezoneH + safezoneY;
	w = 0.33 * safezoneW;
	h = 0.407 * safezoneH;
};
class fenix_imagen: RscPicture
{
	idc = 1200;
	text = "fenix.jpg";
	x = 0.335 * safezoneW + safezoneX;
	y = 0.291 * safezoneH + safezoneY;
	w = 0.33 * safezoneW;
	h = 0.407 * safezoneH;
};
class fenix_boton_1: RscButton
{
	idc = 1600;
	text = "Mover/Soltar jugador"; //--- ToDo: Localize;
	x = 0.340156 * safezoneW + safezoneX;
	y = 0.301 * safezoneH + safezoneY;
	w = 0.0928125 * safezoneW;
	h = 0.066 * safezoneH;
	action = "CloseDialog 0;_nil=[]ExecVM ""acciones\mjugador.sqf""";
};
class fenix_boton2: RscButton
{
	idc = 1601;
	text = "Quitar esposas"; //--- ToDo: Localize;
	x = 0.340156 * safezoneW + safezoneX;
	y = 0.633 * safezoneH + safezoneY;
	w = 0.0928125 * safezoneW;
	h = 0.066 * safezoneH;
	action = "CloseDialog 0;_nil=[]ExecVM ""trigger\quitar_esposas.sqf""";
};
class fenix_boton3: RscButton
{
	idc = 1602;
	text = "Reparar vehiculo"; //--- ToDo: Localize;
	x = 0.567031 * safezoneW + safezoneX;
	y = 0.633 * safezoneH + safezoneY;
	w = 0.0928125 * safezoneW;
	h = 0.066 * safezoneH;
	action = "CloseDialog 0;_nil=[]ExecVM ""trigger\repairinit.sqf""";
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////


	
	
};
};

