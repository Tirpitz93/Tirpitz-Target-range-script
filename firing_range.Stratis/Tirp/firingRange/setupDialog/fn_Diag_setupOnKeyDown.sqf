#define fileName "fn_Diag_setupOnKeyDown.sqf"
#include "MACRO.h"
#include "IDC.h"

_ctrl = _this select 0;
_key = _this select 1;
_shiftState = _this select 2; // boolean
_ctrlState = _this select 3; // boolean
_altState = _this select 4; // boolean
_listBoxes = [WFM,WITEM,WSTANCE,BFM,BITEM,BSTANCE,SAVELIST];
//hint "working.....";
switch (_key) do {
	case 0xD3 : { //delete
		if (ctrlIDC _ctrl in _listBoxes) then { //delete pressed on listbox
			_selected = lbSelection _ctrl;
		
			lbDelete [(ctrlIDC _ctrl),lbCurSel _ctrl];
		};
	}; 
	
	
	case 0x0E : {
	//hint "working/.....";
	1511 call tirp_fnc_diag_testDeleteLb;};
};
_true;