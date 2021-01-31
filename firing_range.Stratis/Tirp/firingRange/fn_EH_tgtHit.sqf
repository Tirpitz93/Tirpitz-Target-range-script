#define fileName "fn_EH_tgtHit.sqf"
#include "MACRO.h"

ID;
DEBUG2("tgt hit handler start");
_hitcount = GET("tgtsHit", 0);
_hitcount = _hitcount +1;
SETT("tgtsHit", _hitcount);
//CALL1("tirp_fnc_incrementTarget", 1);

terminate _handle;
//_unit = GET("unit", nil);
_lane = GET("lane", nil);
_centrePos2 = "";
_lastResult = [];
_tgt = (_this select 0);

if (_this select 1 == _unit ) then {
//hint "the player hit the target";
} else {
	DEBUG2("target was hit by someone else.");
	//["manage_curTgts", [_tgt, "sub"]] call (_unit getVariable "mission");
	exit;
};
_isPlayer = GET("isPlayer", False);

/*if !(_isPlayer) then { //AI only code
	//doStop _unit;
	DEBUG2("unit has been commanded to stop");
	//hint "unit has been commanded to stop shooting";
};*/
_score = 0;

_tgtType = "";
//DEBUG2("calling manage_curTgts to sub tgt.");
//CALL1("tirp_fnc_manageTgts", [_thisTgt]);

_tgt removeAllEventHandlers "Hit";
_tgt removeAllEventHandlers "hit";
//INFO((str(_tgt getVariable "validTgt")));
_new = [];
if (_tgt getVariable "validTgt") then {

	_score = 5;
	_tgt setVariable ["craters", (_tgt getVariable ["craters", []])];
	_pos = getPos (_this select 0);
	_tgtType = typeOf _tgt;
	_zone = false;
	_acc = false;
	_moving = false;
	_civ = false;
	DEBUG2("Target type: " + _tgtType);



		
	DEBUG2(str _new);
	if (_tgtType find "Acc2" >= 0) then { //accuracy target
		_acc = true;
	};
	if (_tgtType find "Moving" >= 0) then { //moving  target
		_moving = true;
	};
	if (_tgtType find "Acc1" >= 0) then { //zone  target
		_zone = true;
	};
	if (_tgtType find "Civ" >= 0 || _tgtType find "Hostage" >= 0) then { //moving  target
		_civ = true;
	};
	if (_civ) then {SETT("fail", true);
		_score = -50;};

	_impactPos = [0,0,0];
	_new = "";
	if (_acc && !_moving) then {
		DEBUG2("accuracy non moving");
		_pos set [2, ((_pos select 2)+ 0.83)];
		DEBUG2(str _pos);
		
		if (tirpDebug >= 2) then  {
			_testObj = "Land_PenBlack_F" createVehicle _pos;
			_centrePos = _tgt worldToModel _pos;
			_testObj attachTo [_tgt, _centrePos, "target2"];
		};
		_current = (_pos nearObjects ["#crater",1]) + (_pos nearObjects ["#crateronvehicle",1]);

		_new = _current - (_tgt getVariable "craters" );
		
		
		
		//newCraters = craters - currentCraters;
		_distance = ((_new select 0) distance _pos);
		DEBUG2(str _distance);
		
		DEBUG2(("Hit Distance from centre: " + str _distance));
		DEBUG2(("Vertical Hit Distance from centre: " + str ((_pos select 2 ) - ((getPos (_new select 0) select 2)))));
		_score = round ((0.12-( _distance/3))*100);
		if (_score < 0.4) then {_score = 0};
		if (isNil "_score") then {
			DEBUG2("the score is nil for some reason");
			DEBUG2(str _distance);
			
			} else { DEBUG2("the score is not nil");};
		DEBUG2("score: " + (str _score));
		hint str _score;
	};
	if (_acc && _moving) then {
		_pos set [2, ((_pos select 2)+ 1.1)];
		if (tirpDebug >= 2) then {
			_testObj = "Land_PenBlack_F" createVehicle _pos;
			_centrePos = _tgt worldToModel _pos;
			_centrePos set [1, ((_centrePos select 1) +0.15)];
			_pos = _tgt modelToWorld _centrePos;
			_testObj attachTo [_tgt, _centrePos];
		};
		_current = (_pos nearObjects ["#crater",1]) + (_pos nearObjects ["#crateronvehicle",1]);

		_new = _current - (_tgt getVariable ["craters", []]);
		
		//newCraters = craters - currentCraters;
		_distance = ((_new select 0) distance _pos);
		DEBUG2(("Hit Distance from centre: " + str _distance));
		DEBUG2(("Vertical Hit Distance from centre: " + str ((_pos select 2 ) - ((getPos (_new select 0) select 2)))));
		_score = round ((0.12-( _distance/4))*100);
		if (_score < 0) then {_score = 0};
	};

	if (_zone && !_moving) then {
		DEBUG2("zone non moving");
		_pos1 = call compile str  _pos;
		//hint str _pos1;
		_pos set [2, ((_pos select 2)+ 1.48)]; //headshot
		_pos1 set [2, ((_pos1 select 2)+ 1.05)]; //bodyshot
		if (tirpDebug >= 2) then  {
			_testObj = "Land_PenBlack_F" createVehicle _pos;
			_centrePos = _tgt worldToModel _pos;
			_testObj attachTo [_tgt, _centrePos, "camo"];
			
			_testObj = "Land_PenRed_F" createVehicle _pos1;
			_centrePos = _tgt worldToModel _pos1;
			_testObj attachTo [_tgt, _centrePos, "target3"];
		};
		
		_current = (_pos nearObjects ["#crater",0.5]) + (_pos nearObjects ["#crateronvehicle",0.5]) + (_pos1 nearObjects ["#crater",0.5]) + (_pos1 nearObjects ["#crateronvehicle",0.5]);

		_new = _current - (_tgt getVariable "craters" );
		
		//newCraters = craters - currentCraters;
		_distance = ((_new select 0) distance _pos);
		_distance1 = ((_new select 0) distance _pos1);
		DEBUG2(("Hit Distance from centre: " + str _distance));
		DEBUG2(("Vertical Hit Distance from centre: " + str ((_pos select 2 ) - ((getPos (_new select 0) select 2)))));
		if (_distance < 0.075) then 
			{_score = 20} else 
			{ if (_distance1 < 0.25) then 
				{_score = 10}; 
				if (_distance1 < 0.11) then 
				{_score = 15};
			};
		if (_score < 0) then 
			{_score = 0};
		//hint str _score;
	};
	if (_zone && _moving) then {
		DEBUG2("zone moving");
		_pos1 = call compile str _pos;
		_pos set [2, ((_pos select 2)+ 1.75)];// headshot
		_pos1 set [2, ((_pos1 select 2)+ 1.3)]; //bodyshot
		//_pos set [2, ((_pos select 2)+ 1.2)]; 
		//done: tgt plate offset relative to target orientation
		if (tirpDebug >= 2) then {
			_testObj = "Land_PenBlack_F" createVehicle _pos;
			_centrePos = _tgt worldToModel _pos;
			_centrePos set [1, ((_centrePos select 1) +0.15)];
			_pos = _tgt modelToWorld _centrePos;
			_testObj attachTo [_tgt, _centrePos , "camo"];
			
			_testObj = "Land_PenRed_F" createVehicle _pos1;
			_centrePos = _tgt worldToModel _pos1;
			_centrePos set [1, ((_centrePos select 1) +0.15)];
			_pos1 = _tgt modelToWorld _centrePos;
			_testObj attachTo [_tgt, _centrePos, "target3"];
		};
		
		_current = (_pos nearObjects ["#crater",0.5]) + (_pos nearObjects ["#crateronvehicle",0.5]) + (_pos1 nearObjects ["#crater",0.5]) + (_pos1 nearObjects ["#crateronvehicle",0.5]);

		_new = _current - (_tgt getVariable ["craters", []]);
		
		//newCraters = craters - currentCraters;
		_distance = ((_new select 0) distance _pos);
		_distance1 = ((_new select 0) distance _pos1);
		DEBUG2(("Hit Distance from centre: " + str _distance));
		DEBUG2(("Vertical Hit Distance from centre: " + str ((_pos select 2 ) - ((getPos (_new select 0) select 2)))));
		if (_distance < 0.075) then {_score = 20} else { if (_distance1 < 0.25)then {_score = 10}; if (_distance1 < 0.11) then {_score = 15};};
		if (_score < 0) then {_score = 0};
	};


	if (!_acc && !_zone && !_civ) then {
		DEBUG2("plain target");
		_pos1 = call compile str  _pos;
		//hint str _pos1;
		_pos set [2, ((_pos select 2)+ 1.48)]; //headshot
		_pos1 set [2, ((_pos1 select 2)+ 1.05)]; //bodyshot
		if (tirpDebug >= 2) then  {
			_testObj = "Land_PenBlack_F" createVehicle _pos;
			_centrePos = _tgt worldToModel _pos;
			_testObj attachTo [_tgt, _centrePos, "target2"];
			
			_testObj = "Land_PenRed_F" createVehicle _pos1;
			_centrePos = _tgt worldToModel _pos1;
			_testObj attachTo [_tgt, _centrePos, "target3"];
		};
		
		_current = (_pos nearObjects ["#crater",0.5]) + (_pos nearObjects ["#crateronvehicle",0.5]) + (_pos1 nearObjects ["#crater",0.5]) + (_pos1 nearObjects ["#crateronvehicle",0.5]);

		_new = _current - (_tgt getVariable "craters" );
		
		//newCraters = craters - currentCraters;
		_distance = ((_new select 0) distance _pos);
		_distance1 = ((_new select 0) distance _pos1);
		DEBUG2(("Hit Distance from centre: " + str _distance));
		DEBUG2(("Vertical Hit Distance from centre: " + str ((_pos select 2 ) - ((getPos (_new select 0) select 2)))));
		if (_distance < 0.075) then 
			{_score = 20} else 
			{ if (_distance1 < 0.25) then 
				{_score = 10}; 
				if (_distance1 < 0.11) then 
				{_score = 15};
			};
		if (_score < 0) then 
			{_score = 0};
		//hint str _score;
		_score = 8;
	};
	
	_impactPos = getPos (_new select 0);
	_centrePos2 = [];
	if (tirpDebug >= 2) then  {
			_testObj2 = "Land_PencilGreen_F" createVehicle (_impactPos);
			_centrePos2 = _tgt worldToModel (_impactPos);
			_testObj2 attachTo [_tgt, _centrePos2];
		};
	if (count _new == 0) then {_centrePos2 = [-5,-5,-5]; _score = 0};
	DEBUG2(str _centrePos2);
	_tgt setVariable ["craters", ((_tgt getVariable ["craters", []])+ _new)];

	_tgt setVariable ["validTgt", false];

	if !(_isPlayer) then { //AI only code
		//commandStop _unit;
	};

	playSound3D ["a3\Ui_f\data\Sound\CfgNotifications\taskAssigned.wss", (missionNamespace getVariable ("lane_" + str _lane)), false, getPos (missionNamespace getVariable ("lane_" + str _lane)), 0.5, 1, 0];
	_tgt setVariable ["tgtHit", true];
	if !(_tgtType == "") then {
	_lastResult = [_score, currentWeapon _unit, stance _unit, round (_unit distance _tgt), time - ( _tgt getVariable ["targetUpTime", 0]),  _tgtType, _centrePos2];
	CALL1("tirp_fnc_addReport", _lastResult);};
	//hint str _score;
}
else {_score = 0;playSound3D ["A3\Sounds_F_Bootcamp\SFX\VR\Spawn.wss", (missionNamespace getVariable ("lane_" + str _lane)), false, getPos (missionNamespace getVariable ("lane_" + str _lane)), 0.5, 1, 0];
	//hint  _tgtType;
	if !(_tgtType == "") then {
	_lastResult = [0, currentWeapon _unit, stance _unit, round (_unit distance _tgt), time - ( _tgt getVariable ["targetUpTime", 0]),  _tgtType, _centrePos2];
	CALL1("tirp_fnc_addReport", _lastResult);};
};

_score = [_score];
DEBUG2(str _score);
//CALL1("tirp_fnc_handleScore", _score);
_thisTgt removeAllEventHandlers "Hit";

//_tgt = lane_1_tgt_1;
//_arr = [_thisTgt, "sub"];
_curTgts = GET("curTgts", []);
_curTgts = _curTgts - [_thisTgt];

SETT("curTgts", _curTgts);
DEBUG2("curTgts conatains: " + str _curTgts);
_handle = (_thisTgt getVariable [str ( "Tirp_drill_" + str _id + "_" + "thread"), ([] spawn{})]);
INFO("tgt hit handler end");
