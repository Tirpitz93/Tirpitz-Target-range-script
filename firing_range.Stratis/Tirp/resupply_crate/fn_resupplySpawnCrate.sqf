/* File: fn_spawnCrate.sqf
*/
private _empty = _this select 0;
_uid = getPlayerUID player;
if (missionNamespace getVariable ["TIRP_resupply_enabled", False]) then {
if (missionNamespace getVariable ["TIRP_resupply_GrpLdr_only", false] && (player != (leader group player))) then {
	hint "You are not the group leader";
	exit;}else{

	_suppliesCalled = missionNamespace getVariable [format ["TIRP_resupply_called_%1",_uid], 0];

	_maxSupplies = missionNamespace getVariable ["TIRP_resupply_max_supplies", 1];


	_caseClass = missionNamespace getVariable ["TIRP_resupply_crate_class","Box_NATO_Uniforms_F"];
	_crate = "";


	if (_suppliesCalled >= _maxSupplies) then {
	player groupChat "Your group has already been resupplied";
	exit;} else {

	_units =  units player;

	{
	private _unitSupplies =  missionNamespace getVariable [format ["TIRP_resupply_called_%1",getPlayerUID _x], 0];
	_unitSupplies = _unitSupplies +1;
	missionNamespace setVariable [format ["TIRP_resupply_called_%1",getPlayerUID _x], _unitSupplies, True];
	}
	forEach _units;


	_pos = _this select 0;


	if (getMarkerColor (format ["TIRP_resupply_%1",groupId (group player)]) == "") then{
		if (getMarkerColor "TIRP_resupply" == "") then{
		player groupChat "Resupply has been sent straight to the player.";
		_crate = createVehicle [_caseClass ,getposATL player,[],0,"CAN_COLLIDE"]; 
		systemChat str getposATL player;

		} else {
			player groupChat "Resupply has been sent to the central depot.";
			_crate = _caseClass createVehicle getMarkerPos ["TIRP_resupply", true];
			
			[_crate, (getMarkerColor "TIRP_resupply") call TIRP_fnc_resupplyGetColourCode, true] call TIRP_fnc_resupplySetCrateTextures;

	 
		};
		} else {
			player groupChat format ["Resupply has been sent to the %1 depot.", groupId (group player)];
		_crate = _caseClass createVehicle (getMarkerPos [(format ["TIRP_resupply_%1",groupId (group player)]), true]);
		[_crate, getMarkerColor (format ["TIRP_resupply_%1",groupId (group player)]) call TIRP_fnc_resupplyGetColourCode, true] call TIRP_fnc_resupplySetCrateTextures;

		};

	// hint str _crate;
	// hint _name;


	_missionCrates = missionNamespace getVariable ["TIRP_resupply_crates",[]];
	_missionCrates pushBack _crate;
	missionNamespace setVariable ["TIRP_resupply_crates", _missionCrates, True];


	private _name =  (groupId (group player) + " Resupply");
	[_crate,[_name, {player action ["Gear", _this select 0 ];}, [], 7, true,true, "","", 5]] remoteExec ["addAction", 0, true];

	if (missionNamespace getVariable ["TIRP_resupply_mod_enabled", False]) then {
		[_crate,["Save Resupply Crate", {_this call tirp_fnc_resupplySaveCrate;}, [], 0, true,true, "","", 5]] remoteExec ["addAction", 0, true];

	};

	_crate call TIRP_fnc_resupplyClear;
	if (_empty) then {
		[_crate, profileNamespace getVariable "TIRP_resupplyCrate_contents"] call TIRP_fnc_resupplySetContainerCargoAll;
	};
	};
	}
} else {hint "Resupply disabled";}