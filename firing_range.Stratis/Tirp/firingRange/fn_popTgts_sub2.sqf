#define fileName "popTgts_sub2.sqf"
#include "MACRO.h"
ID;

_delayParams = ((_this select 0)+ [(_this select 3)]);
_thisTgt = _this select 1;
_durationCode = GET("durationCode",{3});
_isPlayer = GET("isPlayer",true);
_lane = GET("lane",-1);
[_unit] call _durationCode;

_thisTgt animate["terc",1];
INFO((str _thisTgt) + " was lowered");

if (_thisTgt getVariable "validTgt") then {
	playSound3D ["A3\Sounds_F_Bootcamp\SFX\VR\Spawn.wss", (missionNamespace getVariable ("lane_" + str _lane)), false, getPos (missionNamespace getVariable ("lane_" + str _lane)), 0.5, 1, 0];
	_lastResult = [-1,"NONE", stance _unit, round (_unit distance _thisTgt), time - ( _thisTgt getVariable ["targetUpTime", 0]), (typeOf _thisTgt), [-50,-50,-500]];
	CALL1("tirp_fnc_addReport", _lastResult);
	_misscount = GET("tgtsMiss", 0);
_misscount = _misscount +1;
SETT("tgtsMiss", _misscount);

_thisTgt setVariable ["validTgt", false];

}; 
_curTgts = GET("curTgts", []);
_curTgts = _curTgts - [_thisTgt];
SETT("curTgts", _curTgts);


 
