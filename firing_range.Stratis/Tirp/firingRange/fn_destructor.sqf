#define fileName "fn_destructor.sqf"
#include "MACRO.h"
ID;
//todo: cleanup
_index = GET("displayResultsIndex", 2000);
_unit removeAction _index;
_unit setVariable ["Tirp_drill_MissionID", nil];
_prev = (_unit getVariable ["Tirp_drill_prevMissions",[]]);
_prev pushBack _id;
_unit setVariable ["Tirp_drill_prevMissions", _prev];
_unit commandWatch objNull;
//EH