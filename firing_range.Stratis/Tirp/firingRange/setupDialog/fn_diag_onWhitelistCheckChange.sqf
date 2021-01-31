#define fileName "fn_diag_onWhitelistCheckChange.sqf"
#include "MACRO.h"
#include "IDC.h"
	_state = _this select 1;
	
	_State = if (_state == 1) then {false;} else {true};
	//hint str _state;
	//_state2 = !_state;
	(findDisplay IDCDIALOG displayCtrl BCHECK ) cbSetChecked  _state;
	