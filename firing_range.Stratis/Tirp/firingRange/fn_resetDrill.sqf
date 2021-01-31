#define fileName "fn_resetDrill.sqf"
#include "MACRO.h"

ID;
DEBUG2("start reset");
INFO(("resetting exercise with parameters: " +str _this));


//_unit setVariable ["Tirp_drill_MissionID", _id];

INFO("Unit " + str _unit +" has started mission "+ str _id);

//_rules = [_this, 1, (TIRP_DEFAULT_FIRING_DRILL select 0 select 1), [[]]] call BIS_fnc_param;
//SETT("rules", _rules);

//_defaultWeapons = [_rules select 5, _rules select 6]; ////
//INFO(str _rules);
//hint str _defaultWeapons;
//CALL1("tirp_fnc_setWeapons", _defaultWeapons);

//_defaultAmmo = ["BulletBase"];
//CALL1("tirp_fnc_setAmmo", _defaultAmmo);

//_defaultFiremodes = ["Single", "Burst","FullAuto", "manual", "player"];
//CALL1("tirp_fnc_setFiremodes", _defaultFiremodes);

//_range = [_rules select 0, _rules select 1];
//CALL1("tirp_fnc_setRange", _range);
//INFO("default rules set");
CALL1("clearEH","");

SETT("tirp_fnc_eventHandlers", []); // holds all event handlers for this mission to clean later.
CALL1("tirp_fnc_clearProcesses")
SETT("runningProcesses", []); //array holding all threads started for this mission to allow clean up later

SETT("fail", false); //initialize auto fail to false. 
SETT("score", 0); //initialize score to 0 //no longer used.
//SETT("curTgt", 0); //inmitialize last target popped to 0

SETT("introTime", 5); //time from mission initiation to first target popup script is initiated.
SETT("report", [[]]); //initialize empty report

//SETT("activeTgts", []); //initialize empty array of targets that are up
SETT("reqEquip", []); //not required by default so set to empty
SETT("shotCounter", 0);
SETT("finishTime", -1);

//if (isPlayer _unit) then {SETT("isPlayer", true)} else {SETT("isPlayer", false)};

_myArr = [_unit, "Take", (_unit addEventHandler ["Take",{ID2; CALL1("tirp_fnc_EH_take", _this);}])];
CALL1("tirp_fnc_trackEventHandlers", _myArr);
_evh = str (GET("eventHandlers", []));
DEBUG2(_evh); 

_myArr2 = [_unit,"InventoryOpened", (_unit addEventHandler ["InventoryOpened",{ID2; CALL1("tirp_fnc_EH_inventory", _this);}])];
CALL1("tirp_fnc_trackEventHandlers", _myArr2);

_myArr3 = [_unit, "Fired", (_unit addEventHandler ["Fired",{ID2; CALL1("tirp_fnc_EH_fired", _this);}])];
CALL1("tirp_fnc_trackEventHandlers", _myArr3);

//_lane = (_rules select 4);
//MEMBER("lane", _lane);
//SETT("lane", _lane);
//INFO(("Mission in Lane: " + str _lane));

//hint str _lane
//SETT("timingDelay", 2);
//SETT("timingDelayModifier", 0.9);
//MEMBER("timingDelayMidifier", 0.9);
//SETT("timingRandom", false);
//MEMBER("timingRandom", false);
//_numTgts = _rules select 2;
//SETT("numTgts", _numTgts);
//MEMBER("numTgts", _numTgts);
//SETT("timingDuration", 2);//MEMBER("timingDuration", 2);
//SETT("timingDurationModifier", 0.9);//MEMBER("timingDurationModifier", 0.9);
SETT("startTime", -1);//MEMBER("missionStartTime", 0); //initialize start time to zero, to be set in first pop tgts run

SETT("curTgts", []);//MEMBER("_curTgts", []);
_attempts = GET("attempts", 1);
_attempts = _attempts +1;
SETT("attempts", _attempts);
CALL1("tirp_fnc_missionParams", "");
DEBUG
[_unit,[]] spawn tirp_fnc_AI;
[_unit,[]] call tirp_fnc_initTgts;//load available targets
[_unit,[]] spawn tirp_fnc_popTgts; // start mission (automatic atm)


DEBUG2("end reset");


