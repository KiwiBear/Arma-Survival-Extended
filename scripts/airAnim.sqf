{
if(_x isKindOf "C_Heli_Light_01_civil_F") then {
_x animateSource["DoorR_Front_Open",1];
_x animateSource["DoorL_Front_Open",1];
_x animateSource["AddBenches",1];
_x addAction["Open FL",{(_this select 0) animateSource["DoorL_Front_Open",1];},[],1,true,true,"User1","(_target animationPhase 'DoorL_Front_Open') isEqualTo 0",6,false,"z_doorl_front"];
_x addAction["Open BL",{(_this select 0) animateSource["DoorL_Back_Open",1];},[],1,true,true,"User1","(_target animationPhase 'DoorL_Back_Open') isEqualTo 0",6,false,"z_doorl_back"];
_x addAction["Open BR",{(_this select 0) animateSource["DoorR_Back_Open",1];},[],1,true,true,"User1","(_target animationPhase 'DoorR_Back_Open') isEqualTo 0",6,false,"z_doorr_back"];
_x addAction["Open FR",{(_this select 0) animateSource["DoorR_Front_Open",1];},[],1,true,true,"User1","(_target animationPhase 'DoorR_Front_Open') isEqualTo 0",6,false,"z_doorr_front"];
_x addAction["Close FL",{(_this select 0) animateSource["DoorL_Front_Open",0];},[],1,true,true,"User1","(_target animationPhase 'DoorL_Front_Open') isEqualTo 1",6,false,"z_doorl_front"];
_x addAction["Close BL",{(_this select 0) animateSource["DoorL_Back_Open",0];},[],1,true,true,"User1","(_target animationPhase 'DoorL_Back_Open') isEqualTo 1",6,false,"z_doorl_back"];
_x addAction["Close BR",{(_this select 0) animateSource["DoorR_Back_Open",0];},[],1,true,true,"User1","(_target animationPhase 'DoorR_Back_Open') isEqualTo 1",6,false,"z_doorr_back"];
_x addAction["Close FR",{(_this select 0) animateSource["DoorR_Front_Open",0];},[],1,true,true,"User1","(_target animationPhase 'DoorR_Front_Open') isEqualTo 1",6,false,"z_doorr_front"];
_x addEventHandler["GetOut",{(_this select 0) animateSource["DoorR_Front_Open",1]; (_this select 0) animateSource["DoorL_Front_Open",1];}];
_x addEventHandler["GetIn",{(_this select 0) animateSource["DoorR_Front_Open",0]; (_this select 0) animateSource["DoorL_Front_Open",0];}];
_x addEventHandler["HandleDamage",{if((_this select 3) isEqualTo objNull) then {_d = if((_this select 3) isEqualTo objNull) then {((damage (_this select 0)) - 0.5)};}; _d}];
while{true} do {if(((count crew _x) <= 2) && (!isTouchingGround _x)) then {_x animateSource["BenchR_Up",1]; _x animateSource["BenchL_Up",1]; _x lockCargo true;}; if(isTouchingGround _x) then {_x animateSource["BenchR_Up",0]; _x animateSource["BenchL_Up",0]; _x lockCargo false; }; sleep 2;};
	};
} forEach vehicles;