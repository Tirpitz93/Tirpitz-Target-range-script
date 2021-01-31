/* File: fn_saveCrate.sqf

*/
hint "saving Contents";
if (missionNamespace getVariable ["TIRP_resupply_mod_enabled",false]) then {

_crate = _this select 0;
_cont = _crate call TIRP_fnc_resupplyGetContainerCargoAll;
hint "saved Contents";
profileNamespace setVariable ["TIRP_resupplyCrate_contents", _cont];
} else { hint "contents not saved. Functionality disabled at this time by the gamemaster.";};
2;