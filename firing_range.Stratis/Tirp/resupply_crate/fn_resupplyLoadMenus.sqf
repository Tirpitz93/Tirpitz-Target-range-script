/* File: fn_loadMenus.sqf
*/

player createDiarySubject ["Resupply", "Resupply"];
player createDiaryRecord ["Resupply", ["Player",
"<execute expression=
	'[] call TIRP_fnc_resupplyLoadAdminMenus'
	>Open admin options</execute><br></br>If you have access to a curator module (Zeus) you can open the admin controls here."], taskNull, "", false];

player createDiaryRecord ["Resupply", ["Player",
"<execute expression=
	'[true] call tirp_fnc_resupplySpawnCrate;'
	>Spawn resupply crate at designated location</execute><br></br>
	This spawns a crate at the mission makers designated location or at the players location if configured. This in no way ensures that the box will magically make its way to your locations, you still need to request the airdrop via radio.<br>
	</br><execute expression=
	'[false] call tirp_fnc_resupplySpawnCrate;'
	>Spawn Empty resupply crate at designated location</execute><br></br>This still counts towards your group's limit.
"], taskNull, "", false];


player createDiaryRecord ["Resupply", ["Player","<execute expression='if (missionNamespace getVariable [""TIRP_resupply_enabled"", False]) then {hint ""Resupply is Enabled"";} else {hint ""Resupply is Disabled""};'>Check</execute><br></br>Check whether requesting resupplies is enabled."], taskNull, "", false];



	
 

