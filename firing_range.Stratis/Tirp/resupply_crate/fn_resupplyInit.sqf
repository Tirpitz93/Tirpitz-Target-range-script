#include "MACRO.h"

[] spawn {
	waitUntil {!(isNil "TIRP_modules")};
		if !("resupply" in TIRP_modules) exitWith {INFO("Resupply not activated")
	};
	TIRP_diaryEntries pushBack ["tirpModules", ["TRUSTED Resupply", "TRUSTED: Tirpitz ResUpply Script Taw EDition<br></br>Delivering custom ammo box loadouts to the TAW members in the field.<br></br>Giving you a second chance to forget your equipment."]];
	
	DEBUG2("Resupply initialized");
	TIRP_resupply_loaded= true;
}