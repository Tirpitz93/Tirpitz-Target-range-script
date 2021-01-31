
#define fileName "fn_diag_onBlacklistCheckChange.sqf"
#include "MACRO.h"
#include "IDC.h"

	_state = _this select 1;
	_State = if (_state == 1) then {false;} else {true};
	//hint str _state;
	//hint str (findDisplay 20000 displayCtrl 2800 );
	//_state2 = !_state;
	(findDisplay IDCDIALOG displayCtrl WCHECK ) cbSetChecked  _state;