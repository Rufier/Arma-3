//Camara creada by Alberto Rufier

_jugador = player;

titleText ["", "BLACK OUT", 0.5]; // para que no se vean "teleports" de cámara
sleep 0.6;
titleText ["", "BLACK IN", 1.6];

_posIni = _jugador modelToWorld [0, -600, 150]; // esto pillaría la posición que está 20 metros delante de _jugador y a 6m de altura.
_posFin = _jugador modelToWorld [0, 0, 1.7];

_Cam = "camera" camCreate _posIni; // creo la cámara

showCinemaBorder false; // quito los bordes feos
_Cam cameraEffect ["INTERNAL", "BACK"];// me meto en la cámara


_Cam camSetTarget _jugador;	 // apunto al objetivo
_Cam camSetPos _posFin; // voy al objetivo
_Cam camCommit 5; // hago las dos líneas de arriba en el tiempo que marco

sleep 5;

_cam cameraEffect ["terminate","back"];
camDestroy _cam;



