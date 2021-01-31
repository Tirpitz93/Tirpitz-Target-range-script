#define fileName "fn_EH_take.sqf"
#include "MACRO.h"

ID;
	//hint "eh take";
	if ((_this select 0) == (_this select 1) and {isClass (configFile >> "CfgMagazines" >> (_this select 2))}) then {
		//hint "Reloaded";
		};