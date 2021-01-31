#define fileName "fn_trackProcesses.sqf"

#include "MACRO.h"

ID;

_newArr = GET("runningProcesses", []);

_newArr pushBack _this;
DEBUG2(("Precesses running: " + str _newArr));
SETT("runningProcesses", _newArr);