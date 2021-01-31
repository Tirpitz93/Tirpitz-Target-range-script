//Config

_allWeaponTypes = ["AssaultRifle","MachineGun","SniperRifle","Shotgun","Rifle","SubmachineGun","HandGun", "Mortar", "Throw", "GrenadeLauncher"];

// Other types (if you like them to include): GrenadeLauncher,Launcher,MissileLauncher,Mortar,RocketLauncher
//Full List: https://community.bistudio.com/wiki/BIS_fnc_itemType -> section Weapon

_allBannedWeapons=[];  //add banned weapons (eg M107_epoch), make shure to use the base version of the weapon

//Main Script
_ItemMap = [];

_baseWeapons = [];
_wpList = (configFile >> "cfgWeapons") call BIS_fnc_getCfgSubClasses;
{
	if (getnumber (configFile >> "cfgWeapons" >> _x >> "scope") == 2) then {
		_itemType = _x call bis_fnc_itemType;
		if (((_itemType select 0) == "Weapon") && ((_itemType select 1) in _allWeaponTypes)) then {
			_baseName = _x	call BIS_fnc_baseWeapon;
			if (!(_baseName in _baseWeapons) && !(_baseName in _allBannedWeapons)) then {
				_baseWeapons = _baseWeapons + [_baseName];
			};
		};
	};
} foreach _wpList;



//hint str _baseWeapons;
//copyToClipboard str _baseWeapons;

// find all classes that contain "base",
// all other classes add to sub tree of equivalent base className
// 