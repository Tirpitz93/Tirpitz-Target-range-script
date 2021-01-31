#define fileName "fn_setAmmo.sqf"
#include "MACRO.h"

ID;
_arr = _this;
_elem0 = _arr select 0;
DEBUG2(("Ammo Array(s): " + str _arr));
if (typeName _elem0 == "STRING") then {
	SETT("allowedAmmo", (_arr));
	SETT("bannedAmmo", []);
	INFO("just allowed Ammo were set");
} 
else{
	SETT("allowedAmmo", (_arr select 0));
	SETT("bannedAmmo", (_arr select 1));
	INFO("allowed and banned Ammo set");
};

0;