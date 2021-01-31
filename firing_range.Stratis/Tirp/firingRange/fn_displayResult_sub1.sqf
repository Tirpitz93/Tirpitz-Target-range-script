#define fileName "fn_displayResult_sub1.sqf"
#include "MACRO.h"
#include "scoreDialog\IDC.h"
ID;

sleep 0.2;

_report = (_this select 0);

DEBUG2(str _report);

DEBUG2("report being displayed");
disableSerialization;
_myDisplay = findDisplay IDCDIALOG;
_myDisplay setVariable ["reportData", _report];
_myDisplay setVariable ["unit", _unit];



copyToClipboard str _report;
// overall stat
// overall stats
_score = 0;
//hint str (_report select 0 select 0);
{if ((_x select 0 )!= -1) then {_score = _score + (_x select 0);};} forEach (_report select 0);

_avgScore = _score / (count (_report select 0));

_tTime= 0;

{_tTime = _tTime + (_x select 4);} forEach (_report select 0);

_avgTime = _tTime / (count (_report select 0));
_hitCount = 0;

{
	if ((_x select 0 ) != -1) then {_hitCount = _hitCount + 1;}
	
} forEach (_report select 0);

_maxScore = 0;

{if (_x select 0 > _maxScore) then {_maxScore = (_x select 0);};} forEach (_report select 0);

_maxTime = 0;
{if (_x select 4 > _maxTime &&( _x select 0) !=0) then {_maxTime = (_x select 4);};} forEach (_report select 0);

_minTime = 9999;
{if (_x select 4 < _minTime && (_x select 0) >0) then {_minTime = (_x select 4);};} forEach (_report select 0);

_name = name _unit;
if (isPlayer _unit) then {_name = profileName + " (" + profileNameSteam +")"};
_text =  parseText (format ["<t size ='2'>Overall Stats</t><br /> <t size='0.7'>Soldier: %1 </t><br /> <br />Targets Hit: %2/%3 <br />Average score: %4 <br />Average targeting Time: %5<br />Quickest acquisition time: %6<br />Longest Aquisition Time: %7<br />Highest Score: %8<br />Shots Fired: %9<br />", _name, str _hitCount, str (count (_report select 0)), str _avgScore, str _avgTime, str _minTime, str _maxTime, str _maxScore, str (_report select 1)] + format ["Elapsed Time: %1 <br />Score per Min: %2<br />Hit percentage: %3", _report select 2, str (_score *60/(_report select 2)), 100*_hitCount/(_report select 1)]);
(findDisplay IDCDIALOG displayCtrl STATS) ctrlSetStructuredText _text;
// end overall stats

//per target stats
_y =1;
{
	_string = ("Target " + str _y + " (" + str (_x select 3) +"m)");
	lbAdd [TGTLIST, _string];
	_y = _y +1;
} forEach (_report select 0);
