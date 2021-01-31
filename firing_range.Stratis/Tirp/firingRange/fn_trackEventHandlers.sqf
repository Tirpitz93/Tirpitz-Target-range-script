#define fileName "fn_trackEventHandlers.sqf"

#include "MACRO.h"
ID;
DEBUG2(str _unit);

_newArr = GET("eventHandlers", []);
DEBUG2(str _newArr);
_newArr pushBack _this;

SETT("eventHandlers", _newArr);
_newArr;