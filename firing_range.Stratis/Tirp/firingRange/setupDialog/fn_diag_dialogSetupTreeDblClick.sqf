#define fileName "fn_diag_dialogSetupTreeDblClick.sqf"
#include "MACRO.h"
#include "IDC.h"
_white = cbChecked (findDisplay IDCDIALOG displayCtrl WCHECK ) ;

_data =  tvData [ctrlIDC (_this select 0), _this select 1];
_list = if (_white) then {
if (_data in (["STAND", "CROUCH", "PRONE", "UNDEFINED"])) exitWith {WSTANCE};
if (_data in (["Single", "Burst", "FullAuto", "manual", "player" ])) exitWith {WFM};



WITEM;}
else {
if (_data in (["STAND", "CROUCH", "PRONE", "UNDEFINED"])) exitWith {BSTANCE};
if (_data in (["Single", "Burst", "FullAuto", "manual", "player" ])) exitWith {BFM};
BITEM;};


_index = 0;
if (_data in (["STAND", "CROUCH", "PRONE", "UNDEFINED"]+["Single", "Burst", "FullAuto", "manual", "player" ])) then {
_index = lbAdd [_list, _data];

} else {_index = lbAdd [_list, (_data call ISSE_Cfg_Weapons_GetName)];
};
lbSetData [_list, _index, _data];

lbSetCurSel [_list, _index];
lbSetValue [_list, 0, _index];
