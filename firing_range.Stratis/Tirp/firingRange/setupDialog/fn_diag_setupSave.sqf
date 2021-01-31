#define fileName "fn_diag_setupSave.sqf"
#include "MACRO.h"

DEBUG2("saving...");
_index = (if ((_this select 0 )== 1) 
	then {
		_y = (lbSelection ((findDisplay 20000 displayCtrl ("setupPreconfiguredList" call tirp_cfg_nameToIDC) )));
		
		if (str _y == "[]") then {_y = [(lbSize ((findDisplay 20000 displayCtrl ("setupPreconfiguredList" call tirp_cfg_nameToIDC) )))]; hint (localize "STR_FR_setup_defaultOverride");};
		//hint str _y;
		_y select 0;
		} 
	else{
		_y = (lbSize ((findDisplay 20000 displayCtrl ("setupPreconfiguredList" call tirp_cfg_nameToIDC) )));
		//hint str _y;
		_y;
		}
	);
//hint str _index;
_data = [] call tirp_fnc_diag_saveCompile;

_name = ctrlText ("setupSaveName" call tirp_cfg_nameToIDC);
//hint str ((isNil "_data"));
_savedMissions = profileNamespace getVariable ["tirp_firingRange_Missions", TIRP_DEFAULT_FIRING_DRILL];
_savedMissions set [_index, [_name,_data]];
profileNamespace setVariable ["tirp_firingRange_Missions", _savedMissions];
_index call tirp_fnc_diag_dialogSetupLoad;
//DEBUG2("saved...");