#define fileName "fn_diag_dialogSetupLoad.sqf"
#include "MACRO.h"
#include "IDC.h"
_handle2 = _this spawn {

sleep 0.1;
_sequences = [["Random - Serial"], ["Sequential - serial"], ["Custom"]];
_savedMission = (_this call tirp_fnc_diag_update_savedMissions);


//DEBUG2(str _savedMission);
//copyToClipboard str  _savedMission;
sliderSetRange [MINRANGESLIDER, 0, _savedMission select 1];
sliderSetRange [MAXRANGESLIDER, _savedMission select 0, 3000];
sliderSetRange [NUMTGTSLIDER, 1, 200];
sliderSetPosition [MINRANGESLIDER, _savedMission select 0];
sliderSetPosition [MAXRANGESLIDER, _savedMission select 1];
sliderSetPosition [NUMTGTSLIDER, _savedMission select 2];
lbClear SEQUENCECOMBO;
{
	findDisplay IDCDIALOG displayCtrl SEQUENCECOMBO lbAdd (_x select 0);
} forEach (_sequences);
ctrlEnable [SEQUENCECOMBO, false];
ctrlEnable [SEQUENCETITLE, false];
ctrlEnable [SEQUENCCEEDIT, false];
ctrlEnable [DURATIONEDIT, false];
ctrlEnable [SPEED1, false];
ctrlEnable [SPEED2, false];
ctrlEnable [SPEEDSLIDER1, false];
ctrlEnable [SPEEDSLIDER2, false];
ctrlEnable [SPEEDTITLE1, false];
ctrlEnable [SPEEDTITLE2, false];




lbSetCurSel [SEQUENCECOMBO, _savedMission select 3 select 0];
(findDisplay IDCDIALOG displayCtrl WCHECK ) cbSetChecked  true;
lbClear WITEM;
{
	if (_x == "default") then {lbSetData [WITEM, lbAdd [WITEM, "Any weapon"],_x]} else {
		lbSetData [WITEM, lbAdd [WITEM, _x call ISSE_Cfg_Weapons_GetName],_x];
	};
} forEach (_savedMission select 5);
lbClear BITEM;
{
	lbSetData [BITEM, lbAdd [BITEM, _x call ISSE_Cfg_Weapons_GetName],_x];
} forEach (_savedMission select 6);

lbClear WSTANCE;
{
	if (_x == "default") then {lbSetData [WSTANCE, lbAdd [WSTANCE, "Any Stance"],_x]} else {
		lbSetData [WSTANCE, lbAdd [WSTANCE, _x],_x];
	};
} forEach (_savedMission select 7);
lbClear BSTANCE;
{
	lbSetData [BSTANCE, lbAdd [BSTANCE, _x ],_x];
} forEach (_savedMission select 8);

lbClear WFM;
{
	if (_x == "default") then {lbSetData [WFM, lbAdd [WFM, "Any Firemode"],_x]} else {
		lbSetData [WFM, lbAdd [WFM, _x ],_x];
	};
} forEach (_savedMission select 9);
lbClear BFM;
{
	lbSetData [BFM, lbAdd [BFM, _x ],_x];
} forEach (_savedMission select 10);

lbClear LANECOMBO ;

lbSetData [LANECOMBO, lbAdd [LANECOMBO,"No Lane Selected" ],0];
{	
	_string =( ( _x select 1) + " (" + str (round (_x select 3 select 0))+ " - " + str (round (_x select 3 select 1)) +"m)");

	lbSetData [LANECOMBO, (findDisplay IDCDIALOG displayCtrl LANECOMBO lbAdd _string),str (_x select 0)];
	
} forEach tirp_firingRange_lanes;

lbSetCurSel [LANECOMBO, (_savedMission select 4)];

//_treeCtrl = (findDisplay 20000 displayCtrl 1009 );
//hint str _treeCtrl;
tvClear WEPTREE;
tvAdd [WEPTREE, [], "Weapons"];
	{	
		tvAdd [WEPTREE, [0], _x select 2];
		tvSetPicture [WEPTREE, [0,_forEachIndex], _x select 1];
		tvSetData [WEPTREE, [0,_forEachIndex], _x select 0];
	} forEach ([] call tirp_fnc_baseWeapons);

tvAdd [WEPTREE,[], "Ammo"];
tvAdd [WEPTREE,[], "Items"];
	{
		tvAdd [WEPTREE, [2], _x select 2];
		tvSetPicture [WEPTREE, [2,_forEachIndex], _x select 1];
		tvSetData [WEPTREE, [2,_forEachIndex], _x select 0];
	} forEach ([] call tirp_fnc_baseItems);
	

tvAdd [WEPTREE,[], "Stances"];
{
	tvAdd [WEPTREE, [3],_x];
	tvSetData [WEPTREE, [3,_forEachIndex], _x];	
} forEach ["STAND", "CROUCH", "PRONE", "UNDEFINED"] ;

tvAdd [WEPTREE,[], "Firemodes"];
{
	tvAdd [WEPTREE, [4],_x];
	tvSetData [WEPTREE, [4,_forEachIndex], _x];

} forEach ["Single", "Burst", "FullAuto", "manual", "player" ] ;


//hint str (tvCount [1009, []] );

		
};