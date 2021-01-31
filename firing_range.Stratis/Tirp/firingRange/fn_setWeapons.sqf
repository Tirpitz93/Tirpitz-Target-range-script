#define fileName "fn_setWeapons.sqf"
#include "MACRO.h";

ID;
_arr = _this;
_elem0 = _arr select 0;
DEBUG2(("Weapon Array(s): " + str _arr));
if (typeName _elem0 == "STRING") then {
	SETT("allowedWeapons", (_arr));
	SETT("bannedWeapons", []);
	INFO("just allowed weapons were set");
}
else{
	SETT("allowedWeapons", (_arr select 0));
	SETT("bannedWeapons", (_arr select 1));
	INFO("allowed and banned weapons set");
};
0;