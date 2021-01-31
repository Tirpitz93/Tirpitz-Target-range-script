class firingRange
{
	file = "Tirp\firingRange";
	//class firingRange {postInit = 1;};
	class firingRangeInit {postInit = 1;};
	class weaponMags {};
	class locker {postInit = 1;};
	class newMission {};
	class dummy {};
	
	
	

};
class FR {
	file = "Tirp\firingRange";
	class addReport {};
	class AI {};
	class checkEquipment {};
	class checkFiremode {};
	class checkStance {};
	class checkWeapon {};
	class constructor {};
	class destructor {};
	class displayResult {};
	class displayResult_sub1 {};
	class EH_fired {};
	class EH_inventory {};
	class EH_take {};
	class EH_tgtHit {};
	class endExcercise {};
	class getFinished {};
	class getNewID {};
	class getReport {};
	class handleScore {};
	class incrementTgt {};
	class initTgts {};
	class manageCurTgts {};
	class missionParams {};
	class popTgts {};
	class popTgts_sub1 {};
	class popTgts_sub2 {};
	class recieveID {};
	class removeEventHandler {};
	class setAmmo {};
	class setWeapons {};
	class setEquip {};
	class setFiremodes {};
	class setStances {};
	class setRange {};
	class tgtDown {};
	class trackEventHandlers {};
	class trackProcesses {};
	class resetDrill {};
	
};
class FRscoreDialog
{
	file = "Tirp\firingRange\scoreDialog";
	class selectTarget {};
};
class FRsetupDialog
{
	file = "Tirp\firingRange\setupDialog";
	class diag_dialogSetupLoad {};
	class diag_dialogSetupInit {};
	class diag_onMinSliderChange {};
	class diag_onMaxSliderChange {};
	class diag_onBlacklistCheckChange {};
	class diag_onWhitelistCheckChange {};
	class diag_setupOnKeyDown {};
	class diag_dialogSetupTreeSelChanged  {};
	class diag_dialogSetupTreeDblClick {};
	class diag_saveCompile {};
	class diag_lbToArray {};
	class diag_setupSave {};
	class diag_setupLoad {};
	class diag_setupDel {};
	class diag_runCurrent {};
	class diag_update_savedMissions {};

};