#define fileName "fn_manageCurTgts.sqf"

#include "MACRO.h"

ID;

DEBUG2("manage_curTgts received this instruction" +str _this);

INFO(str _unit);
INFO(str _this);
_add = _this select 0;
_new = _this select 1;
_curTgts = [];

//DEBUG2("manage_curTgts _curTgts = " + str _curTgts);


if (_add == "add") then {
	DEBUG2("adding...");
	//DEBUG2(str _curTgts);
	_curTgts = _curTgts + [_new];
	//DEBUG2(str _new);
	//hint "adding";
	//DEBUG2("after adding curTgts contains: "+str _curTgts);
}; 
if (_add == "sub") then {
	DEBUG2("subtracting...");
	_curTgts = _curTgts - [_this select 1];
	
	//DEBUG2("after subtracting curTgts contains: " +str _curTgts);

};
DEBUG2("_curTgts currently contains: "+ str _curTgts);
_nextTgt = objNull;
if (count _curTgts == 0) then {} else{
_nextTgt = (_curTgts select 0);};
//SETT("curTgt", _nextTgt);
SETT("curTgts", _curTgts);
