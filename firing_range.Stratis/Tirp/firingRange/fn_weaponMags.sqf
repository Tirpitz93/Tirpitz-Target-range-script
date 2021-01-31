#define fileName "fn_weaponMags.sqf"
/*
	File: fn_weaponMags.sqf
	Author: Tirpitz
	
	Description:
	returns array of compatible magazines for supplied weapon.
	
	Parameter(s):

	_this select 0: <string> weapon classname

	Returns:
	<array> of magazine classnames. or 0 if none found
	
	
*/

private ["_unit", "_weapon", "_magazineCount", "_magazineClass", "_weaponExists", "_magazines", "_i", "_muzzles", "_muzzle"];

_unit = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_weapon = [_this, 1, "", [""]] call BIS_fnc_param;
_magazineCount = [_this, 2, 0, [0]] call BIS_fnc_param;
_magazineClass = [_this, 3, 0, [0, ""]] call BIS_fnc_param;
_weaponExists = isClass (configFile / "CfgWeapons" / _weapon);
_magazines = [];
//Add magazines

if (_weaponExists) then
{
	_magazines = getArray (configFile / "CfgWeapons" / _weapon / "magazines");
	if (count _magazines > 0 && _weaponExists) then
	{
		
	}
	else
	{
		_magazines = 0;
	};
};
_magazines
	