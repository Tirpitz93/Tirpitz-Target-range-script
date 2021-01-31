#define fileName "fn_diag_update_savedMissions.sqf"
#include "MACRO.h"
#include "IDC.h"


_savedMissions = profileNamespace getVariable ["tirp_firingRange_Missions",TIRP_DEFAULT_FIRING_DRILL ];
lbClear SAVELIST;
{
	lbAdd [SAVELIST, _x select 0];
	} forEach _savedMissions;
lbSetCurSel [SAVELIST, _this];
DEBUG2(str _savedMissions);
_savedMission = (_savedMissions select _this) select 1;
if (isNil "_savedMission") then {_savedMission = ((_savedMissions select 0) select 1)};
DEBUG2(str _savedMission);
_savedMission;