#define fileName "fn_checkFiremode.sqf"
#include "MACRO.h";
ID;
DEBUG2("checking firemode");
_reason = "";
_firemodes = GET("firemodes", []);
_legit = ((_this) in (_firemodes));
DEBUG2(("firemode was: " + str _legit));
DEBUG2("Firemode was allowed: " + str _legit);
if (_legit) then {} else{
else {
SETT("reason","The firemode: " + (_this) +" was not allowed");};
if (_legit) then{} else { CALL1("tirp_fnc_endExcercise", ["fail"]); False;exit;};
_legit;