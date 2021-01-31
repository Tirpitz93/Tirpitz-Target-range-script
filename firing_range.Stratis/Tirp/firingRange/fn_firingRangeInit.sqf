/*
	Author: Lonja "Tirpitz" Selter.
	
	
	Description: initializes lanes at mission start. to collect information about ranges available and any names.


*/
#define fileName "fn_firingRangeInit.sqf"

#include "MACRO.h"

[] spawn {
	waitUntil {!(isNil "TIRP_modules")};
		if !("firingRange" in TIRP_modules) exitWith {INFO("Firing Range not activated")
	};
	TIRP_diaryEntries pushBack ["tirpModules", ["Firing Drills", "shooting practice!"]];
	
	tirp_firingRange_maxLanes = 99;
	tirp_firingRange_lanes = [];

	_find_targets = {

		DEBUG2("start initTgts");
		_lane = _this;
		_tgts =[];
		_maxRange = 0;
		_minRange = 3000;
		_range = [_minRange, _maxRange];
		DEBUG2(("range: " + str _range));
		for [{_y = 0}, {_y <=99}, {_y = _y+1}] do 
		{
			if !(isNull (missionNamespace getVariable ("lane_" +str(_lane) + "_tgt_" + (str (_y))))) then 
			{	
				_thisTgt = (missionNamespace getVariable ("lane_" +str(_lane) + "_tgt_" + (str (_y))));
				_unit = (missionNamespace getVariable ("lane_" +str (_lane)));
				
				if ((_thisTgt distance _unit) > _maxRange) then {_maxRange = (_thisTgt distance _unit)};
				if ((_thisTgt distance _unit) < _minRange) then {_minRange = (_thisTgt distance _unit)};
				
				DEBUG2(("the target: " + str _thisTgt));
				_tgts pushBack _thisTgt;
				//_thisTgt addEventHandler ["Hit", {["EH_Tgt_Hit", _this] call ((_this select 1) getVariable "Mission");}];
				_thisTgt animate["terc",1];
				_thisTgt setVariable ["validTgt", false];
				
				
			};
			
		};
		
		DEBUG2((str _tgts));
		DEBUG2("end initTgts");
		[_minRange, _maxRange, _tgts];
		};
		
	_find_lanes = {
	for [{_x = 0}, {_x <= tirp_firingRange_maxLanes}, {_x = _x+1}] do 
			{
				//hint str _x;
				if !(isNull (missionNamespace getVariable ("lane_" +str (_x)))) then 
				{
					_thisLane = [];
					_thisLane set [0, _x];
					_thisLane set [1, (missionNamespace getVariable ("lane_" +str (_x))) getVariable ["tirp_lane_name",("lane_" +str (_x)) ]];
					if ((_thisLane select 1 )!= ("lane_" +str (_x))) then {_thisLane set [2, true];} else {_thisLane set [2, false];};
					_thisLane set [3, (_x call _find_targets)];
					
					tirp_firingRange_lanes pushBack _thisLane;
					(missionNamespace getVariable ("lane_" +str (_x))) setVariable ["tirp_lane_range", [_thisLane select 3 select 0, _thisLane select 3 select 1]];
				};
				
			};
	};


	_handle = [] call _find_lanes;
	DEBUG2("Targets initialized");
	TIRP_firingRange_loaded= true;
}