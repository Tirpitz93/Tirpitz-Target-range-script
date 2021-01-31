#define fileName "fn_diag_runCurrent.sqf"
#include "MACRO.h"
DEBUG2("running mission created from dialog");
closeDialog 0;
[] spawn {

_missionIndex = (profileNamespace getVariable ["tirp_FD_currentMissionSelectionID", 0]);

_rules = (((profileNamespace getVariable ["tirp_firingRange_Missions", (TIRP_DEFAULT_FIRING_DRILL)] ) select _missionIndex) );
INFO("selected mission index = " + str _rules);
[player, [_rules]] call tirp_fnc_constructor;

};