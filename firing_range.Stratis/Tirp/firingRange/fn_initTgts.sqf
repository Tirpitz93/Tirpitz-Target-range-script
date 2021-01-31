#define fileName "fn_initTgts.sqf"
#include "MACRO.h"


ID;
DEBUG2("start initTgts");
_lane = GET("lane", -1);
_tgts =[];
_range = GET("range", []);
_length = GET("numTgts", 0);

DEBUG2(("range: " + str _range));
for [{_x = 0}, {_x <=99}, {_x = _x+1}] do 
{ 	_base = (missionNamespace getVariable ("lane_" +str(_lane)));
	if !(isNull (missionNamespace getVariable ("lane_" +str(_lane) + "_tgt_" + (str (_x))))) then 
	{	
		_thisTgt = (missionNamespace getVariable ("lane_" +str(_lane) + "_tgt_" + (str (_x))));
		//_base = MEMBER("unit", nil);
		
		if (((_thisTgt distance _base) >= (_range select 0) ) && ((_thisTgt distance _base) <= (_range select 1))) then {
		DEBUG2(("the target: " + str _thisTgt + "was found and is in range"));
		_tgts pushBack _thisTgt;
		_arr = [_thisTgt, "Hit",(_thisTgt addEventHandler ["Hit", {[_this select 1, _this] call tirp_fnc_EH_tgtHit;}])];
		
		CALL1("tirp_fnc_trackEventHandlers", _arr);
		_thisTgt animate["terc",1];
		_thisTgt setVariable ["validTgt", false];
		
		} else {
			DEBUG2(("the target: " + str _thisTgt + "was found but not in range"));
		};
	};
	
};
DEBUG2((str _tgts));
_targets = _tgts;
while {(count _targets ) < _length } do { //fill targets if there are too few.
	_targets pushBack (_tgts call BIS_fnc_selectRandom);
};
SETT("availTgts", _targets);

DEBUG2("end initTgts");