#define fileName "fn_tajin_aimedAt2.sqf"
//#define DEBUGTHIS true
#include "MACRO.h"

/*

	Author: Tajin


	Description:

	Determines if _actor is pointing his weapon close to the _target (within _tolerance in meters).

	Main use of this command was not to determine if _actor would hit _target but rather to determine if _target feels like _actor is aiming at him.



	Parameter(s):

	#0 OBJECT - _actor (the guy with the weapon)

	#1 OBJECT - _target (the person supposedly aimed at)

	#2 NUMBER - _tolerance in meters

	(distance is calculated to the actual line of fire, not the point _actor aims at. That means it will still trigger, even if you closely aim past the _target.)



	Returns:

	BOOL - TRUE when within _tolerance

*/



private ["_actor","_target","_pos0","_pos1"];



_actor = _this select 0;

_target = _this select 1;
_knowsAboutCheck = [_this,3, false, [true]] call BIS_fnc_param;

if ( isNull _actor ) exitWith {false};

if ( isNull _target ) exitWith {false};

if ( weaponLowered _actor ) exitWith {false};

if ( _target knowsAbout _actor < 3  && _knowsAboutCheck) exitWith {false};



_pos0 = getPosASL _actor;

_pos1 = getPosASL _target;

_dst =( ( ( _pos0 vectorAdd ( (_actor weaponDirection (currentWeapon _actor)) vectorMultiply (_pos0 distance _pos1) ) ) distanceSqr _pos1 ) );

DEBUG2(str ("target: "+ str  _target));
DEBUG2(str ("distance: "+ str  (_target distance _actor)));
DEBUG2("deviation: "+str  _dst);

DEBUG("ending deviation check");

(_dst < ((_this select 2)^2) );