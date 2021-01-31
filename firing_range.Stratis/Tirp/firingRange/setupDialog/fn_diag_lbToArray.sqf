#define fileName "fn_diag_lbToArray.sqf"
#include "MACRO.h"
_control = (findDisplay 20000 displayCtrl _this );
//hint str _control;
_length = lbSize  _control;
_a = 0;
_arr = [];
while {_a <= (_length - 1)} do {
	_data = lbData [ _this, _a];
	//hint str _data;
	_arr pushBack _data;
	_a = _a +1;
	//lbDelete [_this, 0];
	
};

_arr;