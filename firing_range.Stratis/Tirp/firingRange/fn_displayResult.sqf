#define fileName "fn_displayResult.sqf"
#include "MACRO.h"

ID2;
_unit removeAction (_this select 2);
_display =  createDialog "scoreCard";
_report = GET("report", []);
_shots = GET("shotCounter", 1);
_report set [1, _shots];
_sTime = GET("startTime", -1);
_fTime = GET("finishTime", -1);
if (_fTime == -1) then {_fTime = time};
_timeElapsed = _fTime - _sTime;
_report set [2, _timeElapsed];
CALL1("tirp_fnc_missionParams", "");
DEBUG2(str _report);

[_unit, [_report, _display]] spawn tirp_fnc_displayResult_sub1;
