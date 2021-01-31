#define fileName "fn_setBarredWeapons.sqf"
#include "MACRO.h";


ID;
	_arr = _this;
	_elem0 = _arr select 0;
	DEBUG2(("Equip Array(s): " + str _arr));
	if (typeName _elem0 == "STRING") then {
		SETT("allowedEquip", (_arr));
		SETT("bannedEquip", []);
		INFO("just allowed Equip were set");
		} 
	else{
		SETT("allowedEquip", (_arr select 0));
		SETT("bannedEquip", (_arr select 1));
		INFO("allowed and banned Equip set");
	};