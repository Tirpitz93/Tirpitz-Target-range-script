#define fileName "fn_tajin_aimedAt.sqf"
//#define DEBUGTHIS true
#include "MACRO.h"
DEBUG("starting deviation check");
private ["_actor","_target","_wpn","_pos0","_pos1","_wdir","_dst","_pos2","_deviation","_aiming"];
ID2;
_actor = _this select 0;
_target = _this select 1;
if (weaponLowered _actor || isNull _actor || isNull _target) exitWith {False};
_wpn = currentWeapon _actor;
_pos0 = eyePos _actor;
_pos1 = getPosASL _target;
_wdir = _actor weaponDirection _wpn;
_dst = _pos0 distance _pos1;
_pos2 = (_wdir vectorMultiply _dst);
_deviation = _pos2 distance _pos1;
_veh2 = "RoadCone_F" createVehicle position _target; 
_veh2 attachTo [_target, _target worldToModel ASLToAGL [_pos2 select 0, _pos2 select 1, (_pos2 select 2)]];

DEBUG2(str ("target: "+ str  _target));
DEBUG2(str ("distance: "+ str  _dst));
DEBUG2("deviation: "+str  _deviation);
drawLine3D [_pos0, _pos2, [1,1,0,1]]; 

DEBUG("ending deviation check");
(_deviation < 200)