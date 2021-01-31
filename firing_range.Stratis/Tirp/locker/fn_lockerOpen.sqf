#define fileName "fn_lockerOpen.sqf"
#include "MACRO.h"


//hint "opening box...";
_box = _this select 1;
_inUse = _box getVariable ["inUse", 0];

_result = false;
//hint str _inUse;
if (_inUse == 0) exitWith { hint "box not used by script continuing..."; _result = false;_result;};

if (_inUse == 1) exitWith { hint "box is being used by someone else please wait for it to be ready...";
	_user = _box getVariable ["user", "none"];
	_result = true;
	_result;};
	
if (_inUse == 3) exitWith { hint "your contents is being fetched....";
	_result = false;
	_box setVariable ["inUse", 1];
	_result;};
if (_inUse == 2)  then {
		_uid = (str getPlayerUID player);
		_box setVariable ["user", _uid ];
		_box setVariable ["inUse", 3];
		_result = true;
		
		hint (str _inUse + " " +  str (_box getVariable "inUse"));

		//hint "box will be loaded with your contents soon...";
		
		clearItemCargoGlobal _box;
		clearWeaponCargoGlobal _box;
		clearMagazineCargoGlobal _box;
		_userContents = profileNamespace getVariable["tirp_LockerContents", [[["srifle_DMR_03_F"],[3]], [["30Rnd_556x45_Stanag"],[5]],[["U_B_CombatUniform_mcam_vest"],[90]]]];
		{
			_box addWeaponCargoGlobal [_x, (_userContents select 0 select 1 select _forEachIndex)];
			//hint str getWeaponCargo _box;
			
			
		} forEach (_userContents select 0 select 0);
		
		{
			
			_box addMagazineCargoGlobal [_x, (_userContents select 1 select 1 select _forEachIndex)];
			//hint str getMagazineCargo _box;
			
		} forEach (_userContents select 1 select 0);
		{
			
			_box addItemCargoGlobal [_x, (_userContents select 2 select 1 select _forEachIndex)];
			//hint str getItemCargo _box;
			
		} forEach (_userContents select 2 select 0);
		
		
		
		_this spawn {
			sleep 0.001;
			 ((_this select 1) setVariable ["inUse", 3]);
			 (_this select 0) action ["Gear", (_this select 1)];
			 
		 };
	 
	 

};

_result
