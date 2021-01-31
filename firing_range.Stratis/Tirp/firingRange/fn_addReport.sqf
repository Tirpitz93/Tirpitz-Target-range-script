#define fileName "fn_addReport.sqf"
#include "MACRO.h";

ID;
//hint "adding report";
_tReport = GET("report", [[]]);
(_tReport select 0) pushBack _this;

DEBUG2("reported: " + str _this);
DEBUG2("report now contains: " + str _tReport);
_score = GET("score", 0);
_score = _score + (_this select 0 );
SETT("score", _score);
SETT("report", _tReport);