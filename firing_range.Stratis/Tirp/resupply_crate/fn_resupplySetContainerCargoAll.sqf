
private _crate = _this select 0;
_crate call TIRP_fnc_resupplyClear;
_arr = _this select 1;
diag_log "setting cargo:";
diag_log _arr;
private _i = 0;
{
	diag_log ("adding " + str _x +" to item cargo");
	_crate addItemCargoGlobal [_x, 1];
} forEach (_arr  select 0);
{
diag_log ("adding " + str _x +" to magazine cargo");
	_crate addMagazineCargoGlobal [_x, 1];
} forEach (_arr select 1);
{
diag_log ("adding " + str _x +" to weapon cargo");
	_wep_arr = +_x;
	_crate addWeaponWithAttachmentsCargoGlobal [_wep_arr,1];
} forEach (_arr select 2);
{
diag_log ("adding " + str _x +" to backpack cargo");
	_crate addBackpackCargoGlobal [_x, 1];
} forEach (_arr select 3);

private _containers = everyContainer _crate;

private _subContainers = +(_arr select 4);

// diag_log "sub containers:";
// diag_log _subContainers;
{
	// diag_log "processing Sub container";
	_clsName = (_x select 0);
	// diag_log "remaining containers";
	// diag_log _subContainers;
	// diag_log ("className: " + _clsName);
	_matched = false;
		for "private _i" from 0 to ((count _subContainers) -1) do {
			// diag_log "available class names:";
			if (count _subContainers >= (_i)) then {
			// diag_log (_subContainers select _i);
			_thisContCls = ((_subContainers select _i) select 0) ;
			// diag_log _thisContCls;
			_matched = false;
			if (_thisContCls == _clsName) then {
				_matched = true;
				// diag_log ("classnames Match at index: " + str _i);
				[(_x select 1), (_subContainers select _i select 1)] call tirp_fnc_resupplySetContainerCargoAll;
				// diag_log ("deleting at: " + str _i);
				_subContainers deleteAt _i;
				if (_matched) exitWith {false;};
			};
		};
		if (_matched) exitWith {false;};
		};

} forEach _containers;