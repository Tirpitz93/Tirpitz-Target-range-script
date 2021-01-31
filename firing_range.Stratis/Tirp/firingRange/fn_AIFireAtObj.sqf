/*
Filename: fn_AIFireAtObj.sqf
Author: Lonja Selter

Description: forces an ai to aim, and fire at an object (if the target has a variable validTgt set to true). also use RNG to ensure that the unit does not continually fire at a target, in a semi realistic manner ie there is a delay between targeting and firing, and some time for recoil adjustment.)


*/


_unit doTarget _thisTgt;
waitUntil {([_unit, _thisTgt] call tirp_fnc_isAimedAt);};

_sleep =  (random 1);
if (_sleep < 0.1) then {_sleep = 0.1};
sleep _sleep;

if (_thisTgt getVariable "validTgt") then {
	_unit fire currentWeapon _unit;
	//commandStop _unit;
	
} else {sleep 0.1;};
sleep 0.1;
