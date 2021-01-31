#include "MACRO.h"
_this spawn {

if !(player diarySubjectExists "tirpModules") then {
	player createDiarySubject ["tirpModules", "Scripts by Tirpitz"];

};

{
	DEBUG2(str _x);
	player createDiaryRecord _x;
	DEBUG2("creating record");


}forEach _this;};