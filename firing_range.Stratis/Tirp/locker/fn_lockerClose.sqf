#define fileName "fn_lockerClose.sqf"
#include "MACRO.h"

//hint "Closing box...";
	
	
	_box = _this select 1;
	_status = _box getVariable ["inUse", 0];
	if (_status == 0) exitWith {hint "nothing done because box was not in use by script";};
	
	if (_status == 3) exitWith { hint "box is being loaded";_box setVariable ["inUse", 4];	};
	if (_status == 1) then {
		//hint "box has been used and is being emptied for next user";
		_ammo = getMagazineCargo _box;
		
		_weapons = getWeaponCargo _box;
		
		_items = getItemCargo _box;
		
		_contents = [_weapons, _ammo, _items];
		
		
		clearItemCargoGlobal _box;
		clearWeaponCargoGlobal _box;
		clearMagazineCargoGlobal _box;
		profileNamespace setVariable ["tirp_LockerContents", _contents];
		
		_box setVariable ["inUse", 2];	
		_box setVariable ["user", nil];
	};
	if (_status == 2) exitWith { hint "box has been loaded"; _box setVariable ["inUse", 3];	};