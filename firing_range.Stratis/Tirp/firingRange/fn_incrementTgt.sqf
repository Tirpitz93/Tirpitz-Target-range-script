#define fileName "fn_incrementTgt.sqf"
#include "MACRO.h"
	ID;
		_tgt = GET("currTgt", []);
		_tgt = _tgt + _this select 1;
		SETT("currTgt", _tgt);