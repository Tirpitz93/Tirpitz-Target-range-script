

#ifndef tirpDebug
#define tirpDebug 0
#endif
#ifndef DEBUGTHIS
#define DEBUGTHIS false
#endif
#ifndef fileName
#define fileName "UNKNOWN"
#endif
#define ERROR(MSG) if (tirpDebug >= 1) then {diag_log ("Tirp ERROR ("+  fileName + "): " + MSG );hint ("Tirp ERROR ("+  fileName+"): " + MSG );}

#define INFO(MSG)  if (tirpDebug >= 2) then {diag_log ("Tirp INFO  (" + fileName + "): " + MSG );}

#define DEBUG(MSG) if (tirpDebug >= 3) then {diag_log ("Tirp DEBUG ("+  fileName + "): " + MSG );hint ("Tirp DEBUG ("+ fileName+"): " + MSG );}
#define DEBUG2(MSG) if (tirpDebug >= 3 && DEBUGTHIS ) then {diag_log ("Tirp DEBUG ("+  fileName + "): " + MSG );hint ("Tirp DEBUG ("+ fileName+"): " + MSG );}



#define ID _unit = (_this select 0 ); _id = (_unit getVariable ["Tirp_drill_MissionID", -1]); _this = (_this select 1)
#define ID2 _unit = (_this select 0 ); _id = (_unit getVariable ["Tirp_drill_MissionID", -1])

#define GET(NAME, DEFAULT) _unit getVariable [str ("Tirp_drill_" + str _id + "_" + NAME), DEFAULT]

#define SETT(NAME, VALUE) _unit setVariable [str ( "Tirp_drill_" + str _id + "_" + NAME), VALUE]

#define CALL2(NAME, PARAMETER) [_unit,PARAMETER] call (_unit getVariable (str("Tirp_drill_"+ str _id+"_"+NAME)))

#define CALL1(FNAME, PARAMETER) [_unit,FNAME, PARAMETER] call {private ["_unit", "_parameter", "_name"];_unit = _this select 0; _parameter = (_this select 2); _name = _this select 1; _str = ("Calling " + _name + " from " +  fileName +" with parameter  :" + str PARAMETER);INFO(_str);	_val = [_unit, _parameter] call (missionNamespace getVariable _name); _str = ("returned to " + fileName + " from "+ _name);INFO(_str);if (isNil "_val") then {_val = 0;DEBUG("the last function returned null");} else {DEBUG(str _val);};}

#define SPAWN1(FNAME, PARAMETER) [_unit,FNAME, PARAMETER] call {_unit = _this select 0;	_parameter = (_this select 2);	_name = _this select 1;	_str = ("Spawning " + str _name + " from " +  str fileName +" with parameter  :" + str PARAMETER);	INFO(_str);	[_unit, _parameter] spawn (missionNamespace getVariable _name);}

#define UGROUP(FUNCTION, PARAMETER) if (typeName _unit == "GROUP") then {{[_x, PARAMETER] remoteExec [FUNCTION, _x, false];} forEach (_unit) } else {[_unit, PARAMETER] remoteExec [FUNCTION, _unit, false];};
#define SERVER(FUNCTION, PARAMETER) [_unit, PARAMETER] remoteExec [FUNCTION, 2, false];
