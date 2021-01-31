#define fileName "fn_popTgts.sqf"

#include "MACRO.h"
ID;
_pop = {
ID;
DEBUG2("start popTgts");
_popup = {};
_rules = GET("rules", []);

_intro = GET("introTime", 5);
//_unit = MEMBER("unit", nil);
DEBUG2((str _intro));
if (_intro > 0) then {
	if (isPlayer _unit) then {
		for "_i" from 0 to (floor (_intro)) do {
			titleText [("Your firing drill starts in: " +str (_intro-_i) + " get into position soldier!"), "PLAIN", 0.1]; 
			sleep 1;
		};
	};
	
};
SETT("startTime", time);
_delay = 2; //MEMBER("timingDelay", nil);
_delayCode = GET("delayCode", {});
_randomise = GET("timingRandom", True);
_targets = GET("availTgts", []);
//_unit =  GET("unit", nil);
_length = GET("numTgts", 1);
_tgtTime = GET("timingDuration", 2);
_durationCode = GET("durationCode", {});
_isPlayer = GET("isPlayer", false);
_lane = GET("lane", -1);


DEBUG2((str _targets));
_handle = [_unit,[_unit, _targets, _delay, _delayCode, _length, _randomise, _tgtTime, _durationCode, _isPlayer, _lane]] spawn tirp_fnc_popTgts_sub1;


CALL1("tirp_fnc_trackProcesses", _handle);
};
_handle2 = [_unit,[]] spawn _pop; // start mission (automatic atm)
CALL1("tirp_fnc_trackProcesses", _handle2);