#define fileName "fn_finishMission.sqf"
#include "MACRO.h"

ID;
DEBUG2("ending mission");
SETT("finishTime", time);
SETT("complete", true);

commandStop _unit;
doStop _unit ; 
CALL1("tirp_fnc_endExcercise", "");
//_unit = MEMBER("unit", nil);


//hint "mission Finished";