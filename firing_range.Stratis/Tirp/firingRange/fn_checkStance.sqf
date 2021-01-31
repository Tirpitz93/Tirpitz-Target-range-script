#define fileName "fn_checkStance.sqf"
#include "MACRO.h"
ID;
DEBUG2("Checking stance...");
_stances = GET("stances", []);
DEBUG2(str _stances);
_legit = ((_this) in (_stances ));
DEBUG2(("Stance was: " + str _legit));
DEBUG2("Stance was allowed: " + str _legit);
if (_legit) then {} else{
SETT("reason","The stance: " + (_this) +" was not allowed");};
_legit;