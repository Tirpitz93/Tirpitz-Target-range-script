#define fileName "fn_constructor.sqf"

#include "MACRO.h"

ID;
DEBUG2("start constructor");
INFO(("starting new exercise with parameters: " +str _this));
_rules = [];
_attempts = 1;
_id;
//hint "new Mission";
_previousActions = (_unit getVariable ["previousActions", []]);
{_unit removeAction _x} forEach _previousActions;
if (typeName _this == "STRING") then {
	//CALL1("tirp_fnc_endExcercise", "");
	_attempts = GET("attempts", 1);
	_attempts = _attempts +1;
	SETT("attempts", _attempts);
	SETT("tgtsHit", 0);
	SETT("tgtsMiss", 0);
	//_index = GET("displayResultsIndex", 2000);
	//
	_rules = GET("rules", []);
} else {
	_id = random 100000000;
	_unit setVariable ["Tirp_drill_MissionID", _id];
	SETT("tgtsHit", 0);
	SETT("tgtsMiss", 0);
	_rules = [(_this select 0), 1, (TIRP_DEFAULT_FIRING_DRILL select 0 select 1), [[]]] call BIS_fnc_param;
	DEBUG("Rulese are: "+ str _rules);
	SETT("rules", _rules);
	
	_myArr = [_unit, "Take", (_unit addEventHandler ["Take",{ID2; CALL1("tirp_fnc_EH_take", _this);}])];
	CALL1("tirp_fnc_trackEventHandlers", _myArr);
	
	

	_myArr2 = [_unit,"InventoryOpened", (_unit addEventHandler ["InventoryOpened",{ID2; CALL1("tirp_fnc_EH_inventory", _this);}])];
	CALL1("tirp_fnc_trackEventHandlers", _myArr2);

	_myArr3 = [_unit, "Fired", (_unit addEventHandler ["Fired",{ID2; CALL1("tirp_fnc_EH_fired", _this);}])];
	CALL1("tirp_fnc_trackEventHandlers", _myArr3);
	_evh = str (GET("eventHandlers", []));
	DEBUG2(_evh); 
};
INFO("Unit " + str _unit +"has started mission "+ str _id);

_defaultWeapons = [_rules select 5, _rules select 6]; 
INFO(str _rules);
//hint str _defaultWeapons;
CALL1("tirp_fnc_setWeapons", _defaultWeapons);

_defaultAmmo = ["BulletBase"];
CALL1("tirp_fnc_setAmmo", _defaultAmmo);

_defaultFiremodes = ["Single", "Burst","FullAuto", "manual", "player"];
SETT("firemodes", _defaultFiremodes);

_defaultStances = [ "STAND", "CROUCH", "PRONE", "UNDEFINED"];
SETT("stances", _defaultStances);


_range = [_rules select 0, _rules select 1];
CALL1("tirp_fnc_setRange", _range);
INFO("default rules set");

SETT("eventHandlers", []); // holds all event handlers for this mission to clean later.
SETT("runningProcesses", []); //array holding all threads started for this mission to allow clean up later
SETT("fail", false); //initialize auto fail to false. 
SETT("score", 0); //initialize score to 0 //no longer used.
SETT("introTime", 1); //time from mission initiation to first target popup script is initiated.
SETT("report", [[]]); //initialize empty report
SETT("activeTgts", []); //initialize empty array of targets that are up
SETT("reqEquip", []); //not required by default so set to empty
SETT("shotCounter", 0);
SETT("finishTime", -1);
SETT("finished", false);
if (isPlayer _unit) then {SETT("isPlayer", true)} else {SETT("isPlayer", false)};

_lane = (_rules select 4);
SETT("lane", _lane);
INFO(("Mission in Lane: " + str _lane));

//hint str _lane
SETT("timingDelay", 2);
SETT("timingDelayModifier", 1);

SETT("timingRandom", true);

_numTgts = _rules select 2;
SETT("numTgts", _numTgts);

SETT("timingDuration", 2);
SETT("timingDurationModifier", 1);
SETT("startTime", -1);
SETT("attempts", 1);

_delayCode = {
	ID;
	_val1 = GET("tgtsMiss", 0);
	_val2 = GET("tgtsHit", 0);
	_oldCount = _val1 + _val2;
	waitUntil {_val1 = GET("tgtsMiss", 0); _val2 = GET("tgtsHit", 0); _newCount = _val1 + _val2; _newCount ==  (_oldCount+1)};
	sleep 0.1;
};
SETT("finishTime", -1);
SETT("delayCode", _delayCode);

_durationCode = {
	ID;
	_val1 = GET("tgtsMiss", 0);
	_val2 = GET("tgtsHit", 0);
	_oldCount = _val1 + _val2;
	_originalDuration  = GET("timingDuration", 2);
	_modifier = GET("timingDurationModifier", 0.9);
	_val = _originalDuration * (_modifier ^ (_oldCount/2));
	INFO( str _val  + " " + str _modifier  + " " + str _oldCount  + " " + str _originalDuration);
	sleep _val;
	
};

SETT("tgtsHit", 0);
SETT("tgtsMiss", 0);
SETT("durationCode", _durationCode);
SETT("curTgts", []);
CALL1("tirp_fnc_missionParams", "");

[_unit] remoteExec ["tirp_fnc_AI", _unit, false];


[_unit,[]] call tirp_fnc_initTgts;//load available targets
[_unit, []] remoteExec ["tirp_fnc_popTgts", 2, false];


DEBUG2("end constructor");



