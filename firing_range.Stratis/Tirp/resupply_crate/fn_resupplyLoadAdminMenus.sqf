
if (isNull (getAssignedCuratorLogic player)) exitWith {hint "You are not a game master";false}; //check if player is curator otherwise exit

if (missionNamespace getVariable ["TIRP_resupply_is_admin", false]) exitWith {hint "You should already have the admin menu";false};

missionNamespace setVariable ["TIRP_resupply_is_admin", true, false];


player createDiaryRecord ["Resupply", ["Curator",
"<execute expression=
	'missionNamespace setVariable [""TIRP_resupply_enabled"",True, True]; hint ""Enabled Resupply"";'
	>Enable spawning of resupply boxes</execute><br></br>
<execute expression=
	'missionNamespace setVariable [""TIRP_resupply_enabled"",False, True]; hint ""Disabled Resupply"";'
	>Disable spawning of resupply boxes</execute><br></br>
<execute expression=
	'if (missionNamespace getVariable [""TIRP_resupply_enabled"", False]) then {hint ""Resupply is Enabled"";} else {hint ""Resupply is Disabled""};'
	>Check whether spawning boxes is enables</execute><br></br><br></br>
<execute expression=
	'missionNamespace setVariable [""TIRP_resupply_mod_enabled"",True, True];[] remoteExec [""TIRP_fnc_resupplyAddModActions"", 0, true]; hint ""Enabled Resupply Modification"";'
	>Enable updating of resupply contents</execute> <br></br>
<execute expression=
	'missionNamespace setVariable [""TIRP_resupply_mod_enabled"",False, True];[] remoteExec [""TIRP_fnc_resupplyRemoveModActions"", 0, true]; hint ""Disabled Resupply modification "";'
	>Disable updating of resupply contents</execute><br></br>
<execute expression=
	'if (missionNamespace getVariable [""TIRP_resupply_mod_enabled"", False]) then 
		{hint ""Resupply modification is Enabled"";} else 
		{hint ""Resupply Modification is Disabled""};'
	>Check whether  updating of resupply contents is enabled</execute><br></br><br></br>
<execute expression=
	'[] call TIRP_fnc_resupplyResetSupplies;
	hint ""Resupply status is reset"";'
	>Reset count of Supplies spawned.</execute><br></br>
This sets everyones ammo resupply count to zero.<br></br>
<execute expression=
	'missionNamespace setVariable [""TIRP_resupply_max_supplies"", (missionNamespace getVariable [""TIRP_resupply_max_supplies"", 1]) +1, True];
	hint format [""Number of permitted resupplies is now: %1"", str (missionNamespace getVariable [""TIRP_resupply_max_supplies"", 1])];'
	>Increase the number of resupplies allowed per team</execute><br></br>
This increases the available supply count by 1.<br></br>
<execute expression=
	'missionNamespace setVariable [""TIRP_resupply_max_supplies"", 1, True];
	hint format [""Number of permitted resupplies is now: %1"", str (missionNamespace getVariable [""TIRP_resupply_max_supplies"", 1])];'
	>Reset max resupplies to 1</execute><br></br>
This sets available resupplies to 1.<br></br>
<execute expression=
	'missionNamespace setVariable [""TIRP_resupply_GrpLdr_only"", not (missionNamespace getVariable [""TIRP_resupply_GrpLdr_only"", false]), True];
	hint format [""Only group leaders may call supplies: %1"", str (missionNamespace getVariable [""TIRP_resupply_GrpLdr_only"", False])];'
	>Toggle Group leader only mode</execute><br></br>
Toggles whether only the group leader may call in supplies.<br></br><br></br>
<execute expression=
	'[] call TIRP_fnc_resupplyDeleteAllCrates'
	>Delete all spawned crates</execute><br></br>This removes all crates spawned with this script from the map, wherever they are."
], taskNull, "", false];