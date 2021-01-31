#define fileName "fn_setRange.sqf"
#include "MACRO.h";

ID;
_arr = _this;

DEBUG2(("range set to: " + str _arr));
	SETT("range", _arr);
0;