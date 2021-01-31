#define fileName ""
#include "MACRO.h"
ID;
DEBUG2("checking equip");
_weapon = _this;
_isLegal = false;
_equip = GET("allowedWeapons",[]);

DEBUG2("Allowed Equip is: " + str _equip);
_banned = GET("bannedWeapons", []);
_reason = "still doing alright";
DEBUG2((str _equip));
{
		_bool = _weapon isKindOf [_x, configFile >> "CfgWeapons"];
		if (_bool) exitWith {_isLegal = true;
		DEBUG2(("the current attachment was legal: " + str _isLegal));
		
		};
} forEach (_equip);
	
if (_isLegal) then {
	{
		_bool = _weapon isKindOf [_x, configFile >> "CfgWeapons"];
		if (_bool) exitWith {_isLegal = false;
		DEBUG2(("the current attachment was illegal: " + str _isLegal));
		SETT("reason","The item: " + (_weapon call ISSE_Cfg_Weapons_GetName) +" was not allowed");};
		
	} forEach (_banned);
};
DEBUG2(("equipment was: " + str _isLegal));

_isLegal;