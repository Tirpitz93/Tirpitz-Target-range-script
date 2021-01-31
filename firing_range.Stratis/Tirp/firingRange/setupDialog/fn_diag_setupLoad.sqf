#define fileName "fn_diag_setupLoad.sqf"
#include "MACRO.h"

//hint "loading...";
	_index = (lbSelection ((findDisplay 20000 displayCtrl ("setupPreconfiguredList" call tirp_cfg_nameToIDC) )));
	//hint str _index;
	if (str _index == str []) then {_index = [0]};
	_index  select 0 call tirp_fnc_diag_dialogSetupLoad;