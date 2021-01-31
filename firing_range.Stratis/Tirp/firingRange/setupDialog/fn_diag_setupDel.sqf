#define fileName "fn_diag_setupDel .sqf"
#include "MACRO.h"
hint "deleting...";
_index = (lbSelection ((findDisplay 20000 displayCtrl ("setupPreconfiguredList" call tirp_cfg_nameToIDC) )));
//hint str _index;
if (str _index == str []) exitWith {hint localize "STR_FR_setup_defaultDel"};
_index = _index select 0;
_savedMissions = profileNamespace getVariable ["tirp_firingRange_Missions", TIRP_DEFAULT_FIRING_DRILL];
_savedMissions deleteAt _index;
profileNamespace setVariable ["tirp_firingRange_Missions", _savedMissions];

_y = (lbSize ((findDisplay 20000 displayCtrl ("setupPreconfiguredList" call tirp_cfg_nameToIDC) )));
if (_index >= _y-1) then {_index = _y-2;};
//hint ("index is: " + str _index);
_index call tirp_fnc_diag_dialogSetupLoad;
hint "deleting done";