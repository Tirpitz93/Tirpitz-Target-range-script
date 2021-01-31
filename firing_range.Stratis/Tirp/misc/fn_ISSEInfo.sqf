tirp_fnc_baseWeapons = {
//Config

_allWeaponTypes = ["AssaultRifle","MachineGun","SniperRifle","Shotgun","Rifle","SubmachineGun","HandGun", "Mortar", "Throw", "GrenadeLauncher"];

// Other types (if you like them to include): GrenadeLauncher,Launcher,MissileLauncher,Mortar,RocketLauncher
//Full List: https://community.bistudio.com/wiki/BIS_fnc_itemType -> section Weapon

_allBannedWeapons=[];  //add banned weapons (eg M107_epoch), make shure to use the base version of the weapon

//Main Script
_ItemMap = [];

_baseWeapons = [];
_baseWeaponsNames = [];
_wpList = (configFile >> "cfgWeapons") call BIS_fnc_getCfgSubClasses;
{
	
	_itemType = _x call bis_fnc_itemType;
	if (((_itemType select 0) == "Weapon") && ((_itemType select 1) in _allWeaponTypes)) then {
		_baseName = _x	call BIS_fnc_baseWeapon;
		diag_log str (_baseName);
		if (!(_baseName in _baseWeaponsNames) && !(_baseName in _allBannedWeapons)) then {
			_icon = getText (configFile >> "CfgWeapons" >> _baseName >> "picture");
			if ((_baseName call ISSE_Cfg_Weapons_GetName) != "rifle" && _icon != "")then {
			
				_baseWeapons pushBack  [_baseName, _icon, _baseName call ISSE_Cfg_Weapons_GetName];
			};
			_baseWeaponsNames pushBack _baseName;
		};
	};

} foreach _wpList;



//hint str _baseWeapons;
//copyToClipboard str _baseWeapons;

// find all classes that contain "base",
// all other classes add to sub tree of equivalent base className
// 
_baseWeapons;
};

tirp_fnc_baseItems = {
//Config

_allWeaponTypes = ["AccessoryMuzzle",
			"AccessoryPointer",
			"AccessorySights",
			"Binocular",
			"NVGoggles",
			"UAVTerminal",
			"VehicleWeapon",
			"Glasses",
			"Headgear",
			"Vest",
			"Uniform"];

// Other types (if you like them to include): GrenadeLauncher,Launcher,MissileLauncher,Mortar,RocketLauncher
//Full List: https://community.bistudio.com/wiki/BIS_fnc_itemType -> section Weapon

_allBannedWeapons=[];  //add banned weapons (eg M107_epoch), make shure to use the base version of the weapon

//Main Script
_ItemMap = [];

_baseWeapons = [];
_baseWeaponsNames = [];
_wpList = (configFile >> "cfgWeapons") call BIS_fnc_getCfgSubClasses;
{
	
	_itemType = _x call bis_fnc_itemType;
	if (((_itemType select 0) == "Item") && ((_itemType select 1) in _allWeaponTypes)) then {
		_baseName = _x	call BIS_fnc_baseWeapon;
		//diag_log str (_baseName);
		if (!(_baseName in _baseWeaponsNames) && !(_baseName in _allBannedWeapons)) then {
			_icon = getText (configFile >> "CfgWeapons" >> _baseName >> "picture");
			_baseWeapons pushBack  [_baseName, _icon, _baseName call ISSE_Cfg_Weapons_GetName];
			_baseWeaponsNames pushBack _baseName;
		};
	};

} foreach _wpList;



//hint str _baseWeapons;
//copyToClipboard str _baseWeapons;

// find all classes that contain "base",
// all other classes add to sub tree of equivalent base className
// 
_baseWeapons;
};





ISSE_Cfg_WeaponInfo = {
    private["_cfg", "_name", "_DescShort", "_DescLong", "_Pic", "_Type"];
    _name = _this;
    _cfg = (configFile >> "CfgWeapons" >> _name);
    _DescShort = if (isText(_cfg >> "displayName")) then {
        getText(_cfg >> "displayName")
    }
    else {
        "/"
    };
	
    _DescLong  = if (isText(_cfg >> "Library" >> "libTextDesc")) then {
        getText(_cfg >> "Library" >> "libTextDesc")
    }
    else {
        "/"
    };
	
    _Pic = if (isText(_cfg >> "picture")) then {
        getText(_cfg >> "picture")
    }
    else {
        "/"
    };
	
    _Type = if (isText(_cfg >> "type")) then {
        parseNumber(getText(_cfg >> "type"))
    }
    else {
        getNumber(_cfg >> "type")
    };
	
    [_DescShort, _DescLong, _Type, _Pic]
};

ISSE_Cfg_MagazineInfo = {
    private["_cfg", "_name", "_DescShort", "_DescLong", "_Type", "_Count", "_Pic"];
    _name = _this;
    _cfg = (configFile >> "CfgMagazines" >> _name);
	
    _DescShort = if (isText(_cfg >> "displayName")) then {
        getText(_cfg >>"displayName")
    }
    else {
        "/"
    };
	
    _DescLong  = if (isText(_cfg >> "Library" >> "libTextDesc")) then {
        getText(_cfg >> "Library" >>"libTextDesc")
    }
    else {
        "/"
    };
	
    _Pic = if (isText(_cfg >> "picture")) then {
        getText(_cfg >> "picture")
    }
    else {
        "/"
    };
	
    _Type = if (isText(_cfg >> "type")) then {
        parseNumber(getText(_cfg >>"type"))
    }
    else {
        getNumber(_cfg >> "type")
    };
	
    _Count = if (isText(_cfg >> "count")) then {
        parseNumber(getText(_cfg >> "count"))
    }
    else {
        getNumber(_cfg >> "count")
    };
	
    [_DescShort, _DescLong, _Type, _Pic]
};

ISSE_Cfg_VehicleInfo = {
    private["_cfg", "_name", "_DescShort", "_DescLong", "_Type", "_MaxSpeed", "_MaxFuel", "_Pic"];
    _name = _this;
    _cfg  = (configFile >>  "CfgVehicles" >>  _name);
	
    _DescShort = if (isText(_cfg >> "displayName")) then {
        getText(_cfg >> "displayName")
    }
    else {
        "/"
    };
	
    _DescLong = if (isText(_cfg >> "Library" >> "libTextDesc")) then {
        getText(_cfg >> "Library" >> "libTextDesc")
    }
    else {
        "/"
    };
	
    _Pic = if (isText(_cfg >> "picture")) then {
        getText(_cfg >> "picture")
    }
    else {
        "/"
    };
	
    _Type = if (isText(_cfg >> "type")) then {
        parseNumber(getText(_cfg >> "type"))
    }
    else {
        getNumber(_cfg >> "type")
    };
	
    _MaxSpeed = if (isText(_cfg >> "maxSpeed")) then {
        parseNumber(getText(_cfg >> "maxSpeed"))
    }
    else {
        getNumber(_cfg >> "maxSpeed")
    };
	
    _MaxFuel = if (isText(_cfg >>    "fuelCapacity")) then {
        parseNumber(getText(_cfg >> "fuelCapacity"))
    }
    else {
        getNumber(_cfg >>"fuelCapacity")
    };
	
    [_DescShort, _DescLong, _Type, _Pic, _MaxSpeed, _MaxFuel]
};

ISSE_Cfg_Weapons_GetName  = {
    (_this call ISSE_Cfg_WeaponInfo) select 0
};

ISSE_Cfg_Weapons_GetDesc  = {
    (_this call ISSE_Cfg_WeaponInfo) select 1
};

ISSE_Cfg_Weapons_GetType  = {
    (_this call ISSE_Cfg_WeaponInfo) select 2
};

ISSE_Cfg_Weapons_GetPic   = {
    (_this call ISSE_Cfg_WeaponInfo) select 3
};

ISSE_Cfg_Magazine_GetName = {
    (_this call ISSE_Cfg_MagazineInfo) select 0
};

ISSE_Cfg_Magazine_GetDesc = {
    (_this call ISSE_Cfg_MagazineInfo) select 1
};

ISSE_Cfg_Magazine_GetType = {
    (_this call ISSE_Cfg_MagazineInfo) select 2
};

ISSE_Cfg_Magazine_GetPic  = {
    (_this call ISSE_Cfg_MagazineInfo) select 3
};

ISSE_Cfg_Vehicle_GetName  = {
    (_this call ISSE_Cfg_VehicleInfo) select 0
};

ISSE_Cfg_Vehicle_GetDesc  = {
    (_this call ISSE_Cfg_VehicleInfo) select 1
};

ISSE_Cfg_Vehicle_GetType  = {
    (_this call ISSE_Cfg_VehicleInfo) select 2
};

ISSE_Cfg_Vehicle_GetPic   = {
    (_this call ISSE_Cfg_VehicleInfo) select 3
};

ISSE_Cfg_Vehicle_GetSpeed = {
    (_this call ISSE_Cfg_VehicleInfo) select 4
};

ISSE_Cfg_Vehicle_GetFuel  = {
    (_this call ISSE_Cfg_VehicleInfo) select 5
};


tirp_cfg_nameToIDC = {
	([(missionConfigFile >> "tirp_diag_rangeSetup" >> "controls">> _this),"idc",0] call BIS_fnc_returnConfigEntry);
	//_this;
};


tirp_cfg_arrayNameToIDC = {
	_arr = [];
	
	{
		_arr pushBack (_this call tirp_cfg_arrayNameToIDC);
	} foreach _this;


	_arr;
};
