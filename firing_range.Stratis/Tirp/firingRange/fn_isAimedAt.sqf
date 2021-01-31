/*
FileName: fn_isAimedAt.sqf
Author: Lonja Selter (function from Tajin)


*/


private ["_actor","_target","_wpn","_pos0","_pos1","_wdir","_dst","_pos2","_deviation","_aiming"];

_actor = _this select 0;
_target = _this select 1;


if (weaponLowered _actor || isNull _actor || isNull _target) exitWith {};

_wpn = currentWeapon _actor;
_pos0 = getPosASL _actor;
_pos1 = getPosASL _target;
_wdir = _actor weaponDirection _wpn;
_dst = _pos0 distance _pos1;
_pos2 = [(_pos0 select 0) + _dst * (_wdir select 0), (_pos0 select 1) + _dst * (_wdir select 1), (_pos0 select 2) + _dst * (_wdir select 2)];
_deviation = _pos2 distance _pos1;

(_deviation < 2)
	