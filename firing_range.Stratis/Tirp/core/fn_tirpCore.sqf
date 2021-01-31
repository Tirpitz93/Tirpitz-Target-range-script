#include "MACRO.h"

[] spawn {
	
	TIRP_coreInit = false;

	TIRP_modules =["firingRange", "misc", "movingTgts", "resupply"];

	TIRP_diaryEntries = [["tirpModules", ["General Information", "This mission contains scripts made by Lonja ""Tirpitz""."]]];

	DEBUG2(str TIRP_diaryEntries);
	
	{
		waitUntil { _var = missionNamespace getVariable ["TIRP_" + str _x + "_loaded", true]; !(isNil "_var");};
		missionNamespace setVariable ["TIRP_" + _x + "_loaded", true]; 
		//hint _x;
	} forEach TIRP_modules;
	
	TIRP_diaryEntries call tirp_fnc_tirpDiary;
	
	TIRP_modulesLoaded = true;
	TIRP_coreInit = true;	
	
	INFO("tirp core loaded");
};