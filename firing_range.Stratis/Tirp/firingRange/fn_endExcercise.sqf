#define fileName "fn_endExcercise.sqf"
#include "MACRO.h"

ID;
DEBUG2("ending mission");
SETT("finishTime", time);
SETT("complete", true);
//_unit commandTarget _unit;
//_unit commandTarget objNull;
//commandStop _unit;
//doStop _unit ; 
//_unit = MEMBER("unit", nil);
_processes = GET("runningProcesses", []);
DEBUG2("starting endExercise");
_EHs = GET("eventHandlers", []);
{//remove player event handlers
	CALL1("tirp_fnc_removeEventHandler", _x);
} forEach _EHs;
	
	//hint str _this;
{//terminate scripts to reduce load
	terminate _x;
} forEach (_processes);
_report = GET("report", []);
_index = _unit addAction["display result", {[(_this select 0), ((_this select 0) getVariable ["Tirp_drill_MissionID", -1])] call tirp_fnc_displayResult;} ];
SETT("displayResultsIndex", _index);
SETT("curTgts", []);
SETT("finished", true);

_previousActions = (_unit getVariable ["previousActions", []]);
_previousActions pushback _index;
_unit setVariable ["previousActions", _previousActions];
