#define fileName "fn_diag_onMinSliderChange.sqf"
#include "MACRO.h"
#include "IDC.h"
	_newMin = _this select 1;
	sliderSetRange [MAXRANGESLIDER, _newMin, 3000];