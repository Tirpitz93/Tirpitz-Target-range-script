#define fileName "fn_missionParams"
#include "MACRO.h"

ID;
_vars = ["rules", "eventHandlers", "runningProcesses", "fail","score","curTgt","curTgts","introTime","report","activeTgts","reqEquip","shotCounter","finishTime","lane","timingDelay","timingDelayModifier","timingRandom","numTgts","timingDuration","timingDurationModifier","startTime","delayCode","durationCode","complete","availTgts","missionStartTime","allowedAmmo","bannedAmmo","allowedEquip","bannedEquip","range","allowedWeapons","bannedWeapons","attempts"];

INFO("**********************************************");
INFO("Dumping mission parameters...");
{
	_var = str (GET(_x, "nil"));
	INFO(_x + " has value: " + _var);
} forEach _vars;
INFO("**********************************************");