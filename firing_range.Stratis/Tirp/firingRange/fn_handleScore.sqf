#define fileName "fn_handleScore.sqf"
#include "MACRO.h"

ID;
DEBUG2("handling score...");
_score = GET("score", 0);
_score = _score +( _this select 0);

SETT("score", _score);
_score = _this;
