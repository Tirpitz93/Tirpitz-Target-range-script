/* File: fn_loadInteractions.sqf
*/

if (isDedicated) exitWith {False}; //no need to run on server
if (isClass(configfile >> "CfgPatches" >> "ace_main")) then  { //use ACE interaction menu
hint "Ace Enabled";
} else {//use vanilla scroll menu
hint "No Ace Enabled";
};
