/*
	file: fn_dialogReportSelTgt.sqf
	Author: Lonja "Tirpitz" Selter
	
	description: changes detail veiw when target is selected.

*/
#define DEBUGTHIS true
#define fileName "fn_selectTarget.sqf"
#include "MACRO.h"
#include "IDC.h"

//hint "changing target";
DEBUG2("running fn_selectTarget");

_report = (findDisplay IDCDIALOG) getVariable ["reportData", []];
copyToClipboard  str _report;
_index = _this select 1;


DEBUG (str _report);
_targetID = "Target " + str (_index +1);

_tgtType = _report select 0 select _index select 5;
DEBUG2(str _tgtType);
DEBUG2(str _tgtType);
_targetDescription = "";

_acc = false;
_moving =false;
_zone = false;
_civ = false;


if (_tgtType find "Acc2" >= 0) then { //accuracy target
	_acc = true;
};
if (_tgtType find "Moving" >= 0) then { //moving  target
	_moving = true;
};
if (_tgtType find "Acc1" >= 0) then { //zone  target
	_zone = true;
};
if (_tgtType find "Civ" >= 0 || _tgtType find "Hostage" >= 0) then { //Civ
	_civ = true; 
};

if (_civ) then {
	_targetDescription = "Civilian";
};
if (_acc && !_moving) then {
	_targetDescription = "Stationary Accuracy";
};
if (_acc && _moving) then {
	_targetDescription = "Moving Accuracy";
};
if (_zone && !_moving) then {
	_targetDescription = "Stationary Zones";
};
if (_zone && _moving) then {
	_targetDescription = "Moving Zones";
};
if (!_acc && _moving && !_zone) then {
	_targetDescription = "Moving Plain";
};
if (!_acc && !_moving && !_zone) then {
	_targetDescription = "Stationary Plain";
};


_centrePos =  [0.4605+(0.342*(_report select 0 select _index select 6 select 0)),1,0.502-(0.45*(_report select 0 select _index select 6 select 2))];
hint str _centrePos;

_model = getText (configFile >> "CfgVehicles" >> _tgtType >> "model");
//hint str _model;

(findDisplay IDCDIALOG displayCtrl HITMARKER) ctrlSetPosition _centrePos;
_score = (_report select 0 select _index select 0);
if (_score == -1) then {_score = "No Hit"} else {_score = str ([_score,2] call tirp_fnc_dp)};

 //hint (str (findDisplay 10000 displayCtrl 10500) + " " + _tgtType + " " +_model);
_text =  parseText format ["Target Type: <br /> %2 <br />Score: %3<br />Aquisition time: %4<br />Distance:  %5", 
	str _targetID, 
	str _targetDescription, 
	_score , 
	str ( [(_report select 0 select _index select 4),2] call tirp_fnc_dp), 
	str ([(_report select 0 select _index select 3),2] call tirp_fnc_dp)];
(findDisplay IDCDIALOG displayCtrl TGTINFO) ctrlSetStructuredText _text;





