#define fileName "fn_EH_fired.sqf"

#include "MACRO.h";

ID;

//hint "fired";
_shots = GET("shotCounter", 0);
_shots = _shots +1;
SETT("shotCounter", _shots);
DEBUG2(str _this);
//_unit = (_this select 0);
_weap = (_this select 1);
_mode = (_this select 3);
_ammo = (_this select 4);
_attach = (_unit weaponAccessories (currentWeapon _unit));
_stance = stance _unit;
_legit = true;
_a = 1;
while {_legit  && _a < 7} do {
	_legit = switch (_a) do {
		case 1: {
			_legit = (CALL1("tirp_fnc_checkWeapon", _weap));
			if !(_legit) then {hint "Weapon was illegal";};
			_legit;
			};
		case 2: {
			//hint str _legit;
			DEBUG2("checking attachment loop");
			_legit;};
		case 3: {
		_legit= true;
			{
				
				if (_legit  && _x != "") then {
				_currItem = _x;
					DEBUG2(("current attachment is: "+ str _currItem));
					
					_legit = CALL1("tirp_fnc_checkEquip", _currItem);
					DEBUG2(("current attachment status: " + str _legit));
				};
			} forEach _attach; 
			_legit;};
		case 4: {


			_legit = CALL1("tirp_fnc_checkAmmo", _ammo);
			_legit;};
		case 5: {

			//hint str _legit;
			//hint "it words";

			_legit = CALL1("tirp_fnc_checkMode", _ammo);
			_legit;};
		case 6: {


			_legit = CALL1("tirp_fnc_checkStance", _stance);
		_legit;};
	};
	_a = _a +1;
};
DEBUG2(str _legit);

//hint "weapon was legal"
DEBUG2("end of fired EH");