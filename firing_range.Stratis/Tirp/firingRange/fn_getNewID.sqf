#define fileName "fn_getNewID.sqf"
#include "MACRO.h"
ID;
//todo exec on server
if (isServer) then {
	currMissionID = currMissionID +1;
	currMissionID;
	[_unit, currMissionID] remoteExec ["tirp_fnc_recieveID", 0, true];
} 
else {_this remoteExec ["Tirp_drill_getNewID", 2];};
 