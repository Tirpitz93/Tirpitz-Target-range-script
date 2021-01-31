#define fileName "fn_AI.sqf"
//#define DEBUGTHIS true
#include "MACRO.h"

ID;
_AIProcess= {
ID;
_isPlayer = isPlayer _unit;
if !(_isPlayer) then {

_shootTgt = {
	DEBUG("starting AI");
	_unit setBehaviour "AWARE";
	_curTgts = GET("_curTgts", []);
	_unit = _this select 0;
	_thisTgt = _this select 1;
	
	DEBUG2("the AI has been ordered to aim at: " + str _thisTgt);
	
	_handle = [_unit, _thisTgt] spawn {
		ID;
		
		_thisTgt = _this;
		//_oldTgtCount = (GET("curTgts") select 0);
		DEBUG2(str _thisTgt);
		while {_var1 = str (GET("curTgts", []));( count _var1 >0  &&  _thisTgt getVariable "validTgt" && _thisTgt in (GET("curTgts", [])))} do {
			//_unit doTarget _thisTgt;
			sleep 0.05;
			waitUntil {if (([_unit, _thisTgt, 2, false] call tirp_fnc_tajin_aimedAt2) || _thisTgt != (GET("curTgts",[]) select 0)) exitWith {true}; false};
			_time = time;
			waitUntil {if (((time - _time) > 0.1 && ([_unit, _thisTgt, 2, false] call tirp_fnc_tajin_aimedAt2) )|| _thisTgt != (GET("curTgts",[]) select 0)) exitwith {true}; false};
			
			if (_thisTgt != (GET("curTgts",[]) select 0)) exitWith {};
			
			//gameLogicName action ["useWeapon", vehicle _unit, _unit, 0];
			if (_thisTgt getVariable "validTgt") then {
				_unit fire currentWeapon _unit;
				
				
			} else {};
			_sleep =  (random 0.1);
			if (_sleep < 0.01) then {_sleep = 0.01};
			sleep _sleep;
			DEBUG2(("the AI has been ordered to fire at: " + str _thisTgt));
		};
		
	DEBUG2("target has been hit or has gone");
	};
	CALL1("tirp_fnc_trackProcesses", _handle);
};

_handle = [_unit, _shootTgt] spawn {
	ID2;
	_shootTgt = _this select 1;
	_prev = objNull;
	_unit disableAI "move";
	While {_done = GET("finished", false);!_done} do {
		
		_time = time;
		waitUntil {_curTgts = GET("curTgts", []); if (((count _curTgts )> 0 && _curTgts select 0 != _prev)||(( time - _time )> 5)) exitWith {true}; false};
		_curTgts = GET("curTgts", []);
		if ((count _curTgts )== 0 ) exitWith {DEBUG("AI finished because mission has finished or he got bored");};
		_curTgts = GET("curTgts", []);
		_thisTgt =  (_curTgts select 0);
		_unit doTarget _thisTgt;
		[_unit, _thisTgt] call _shootTgt;
		_prev = _thisTgt;
		
		
	};
	DEBUG("AI finished because mission has finished or he got bored");
};
} else {INFO("the unit is not AI controlled...ending AI script");};
};
_handle = [_unit,[]] spawn _AIProcess;
CALL1("tirp_fnc_trackProcesses", _handle);