/* File: nf_resupplyRemoveModActions.sqf
	called when admin disables modification
*/

_missionCrates = missionNamespace getVariable ["TIRP_resupply_crates",[]];

{
	_actions = actionIDs _x;
	private _y = _x;
	{
		_actionParams = _y actionParams _x ;
		_text = (_actionParams select 0);
		
		if (_text == "Save Resupply Crate") then  {
			_y removeAction _x;
		};
		
	} forEach _actions


} forEach _missionCrates;