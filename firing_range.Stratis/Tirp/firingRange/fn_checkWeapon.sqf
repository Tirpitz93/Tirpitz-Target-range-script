#define fileName "fn_checkWeapon.sqf"

#include "MACRO.h"

ID;
DEBUG2("checking weapon...");
_weapon = _this;
_banned = false;
_allowed = false;
_allowedWeapons = GET("allowedWeapons", []);
_bannedWeapons = GET("bannedWeapons", []);
DEBUG2("Allowed weapons are: " + str (_allowedWeapons));
{
		_bool = _weapon isKindOf [_x, configFile >> "CfgWeapons"];
		if (_bool) exitwith {_allowed = true;
			DEBUG2("Weapon was found in legal weapons");
		};
} forEach (_allowedWeapons);
	
if (_isLegal) then {
	{
		_bool = _weapon isKindOf [_x, configFile >> "CfgWeapons"];
		if (_bool) exitWith {_banned = true;
			DEBUG2("Weapon was found in Banned weapons");
			SETT("reason","The item: " + (_weapon call ISSE_Cfg_Weapons_GetName) +" was not allowed");
		};
		
	} forEach (_bannedWeapons);
};


DEBUG2(("Weapon was: " + str _isLegal));
(_allowed && ! _banned);