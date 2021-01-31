#define fileName "popTgts_sub1.sqf"
#include "MACRO.h"
ID;
DEBUG2((str _this));
_targets = _this select 1;
_delay = _this select 2;
_delayCode = _this select 3;
_length =GET("numTgts", 1);
_randomise = _this select 5;
_tgtTime = _this select 6;
_durationCode = _this select 7;
//_unit = _this select 8;
_lane = _this select 9;
if (typeName _randomise == "ARRAY") then { if (_length > count _randomise) then {_count = 0; while {count _randomise <= _length} do {_randomise pushBack (_randomise select _count); if (_count >= count _randomise) then {_cound =0} else {_count = _count+1};}; };};
INFO(("randomization is set to: " + str _randomise));

if (!_randomise && (_length > count _targets)) then {_length = count _targets};
SETT("numTgts", _length);
_thisTgt = objNull;
DEBUG2(str _length);
for "_i" from 0 to (_length -1) do  {
if (typeName _randomise == "BOOL") then {
	if (_randomise) then {
		_thisTgt = (_targets select floor random count _targets);
		} 
		else {_thisTgt = (_targets select _i);
	};
} 
else {
	_thisTgt = (missionNamespace getVariable ("lane_" + str (_lane) + "_tgt_" + (str (_randomise select _i))));
};
if (isNull _thisTgt) exitWith {};

DEBUG2(("the next target is: " + str _thisTgt));
DEBUG2(("the next target delay: " + str _delay));
if !(_i ==0) then {
[_unit] call _delayCode;
};
playSound3D ["a3\sounds_f\sfx\beep_target.wss", (missionNamespace getVariable ("lane_" + str _lane)), false, getPos (missionNamespace getVariable ("lane_" + str _lane)), 0.5, 1, 0];
_thisTgt animate["terc",0];
INFO(str _thisTgt + " was raised");
_report = GET("report", []);
INFO(str _report);
_thisTgt setVariable ["targetUpTime", time];
_thisTgt setVariable ["validTgt", true];
//[_unit, ["add", _thisTgt]] call tirp_fnc_manageCurTgts;
_arr = ["add", _thisTgt];
_curTgts = GET("curTgts", []);
_curTgts = _curTgts + [_thisTgt];
SETT("curTgts", _curTgts);
_curTgts = GET("curTgts", ["hello world"]);
INFO(str _curTgts);
_tgtEH = [_thisTgt,"Hit", (_thisTgt addEventHandler ["Hit", {["EH_Tgt_Hit", _this] call ((_this select 1) getVariable "Mission");}])];

["trackEventHandler", _tgtEH] call ((_unit) getVariable "Mission");
_isPlayer = _this select 8;

//INFO(str _unit);
//INFO(str _thisTgt);
_unit commandTarget _thisTgt;

DEBUG2(("the target " + str _thisTgt + " will stay up for " + str _tgtTime));

_handle = [_unit,[[_tgtTime, _i], _thisTgt, _durationCode, (_this select 7), _isPlayer, _unit, _lane]] spawn tirp_fnc_popTgts_sub2;
CALL1("tirp_fnc_trackProcesses", _handle);
_thisTgt setVariable [str ( "Tirp_drill_" + str _id + "_" + "thread"), _handle];


};
//wait untill all targets have been hit or have gone down

waitUntil {_var = GET("tgtsHit", 0); _var2 = GET("tgtsMiss", 0);_var3 = GET("numTgts", 10);  (_var +_var2 >= _var3);};

CALL1("tirp_fnc_endExcercise", "");