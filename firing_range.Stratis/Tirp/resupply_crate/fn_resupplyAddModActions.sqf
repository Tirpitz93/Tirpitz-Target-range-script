/* File: nf_resupplyAddModActions.sqf
called when box is spawned and when admin enables modification
*/
if (typeName _this == "OBJECT") then { //specific box called
["Save Resupply Crate", {_this call tirp_fnc_resupplySaveCrate;}, [], 0, true,true, "","", 5] addAction _this;
} else {


_missionCrates = missionNamespace getVariable ["TIRP_resupply_crates",[]];

{
 _x addAction ["Save Resupply Crate", {_this call tirp_fnc_resupplySaveCrate;}, [], 0, true,true, "","", 5];



} forEach _missionCrates;

}