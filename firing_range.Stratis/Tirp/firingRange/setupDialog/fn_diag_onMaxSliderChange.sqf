#define fileName "fn_diag_onMaxSliderChange.sqf"
#include "MACRO.h"
#include "IDC.h"
	_newMax = _this select 1;
	sliderSetRange [MINRANGESLIDER, 0, _newMax];