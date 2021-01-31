#define fileName "fn_setEquip.sqf"
#include "MACRO.h";

ID;
	_arr = _this;
	_elem0 = _arr select 0;
	DEBUG2(("Equip Array(s): " + str _arr));
	if (typeName _elem0 == "STRING") then {
		SETT("reqEquip", (_arr));
		INFO("required equip set");
	};