#define fileName "init.sqf"

nopop = true;
RYD_craters = 
    {
    private ["_unit","_bullet","_pos","_previous","_past","_new","_positions"];
    
    _unit = _this select 0;
    _bullet = _this select 6;
    
    _pos = screenToWorld [0.5,0.5];
    _previous = (_pos nearObjects ["#crater",15]) + (_pos nearObjects ["#crateronvehicle",15]);
    
    [_bullet,_pos,_previous] spawn//because we can't use waitUntil in code called from within EH, we need to spawn separate scope in scheduled environment. This may cause unwanted delays though, also if we will spawn whole code instead of call. 
    //Some crude alternative may be to use sqs with "~" as sleep (but we don't know, how long, must be somewhat calculated from distance and bullet speed (from config perhaps?)), 
    //the only known to me reasonable way to make script wait outside scheduler, and rare situation, where sqs can do something, that sqf can't (?) 
        {
        _bullet = _this select 0;
        _pos = _this select 1;
        _previous = _this select 2;
        
        waitUntil {(isNull _bullet)};
            
        _past =(_pos nearObjects ["#crater",50]) + (_pos nearObjects ["#crateronvehicle",50]);//increase ranges, if no new crater is detected after hit. 
//May be needed for bigger shooting distancies, as used method of determining aiming point doesn't count ballistics, dispersion, zeroing and such, so real impact position can be quite far from screenToWorld aiming position. 
        
        _new = _past - _previous;
            
        _positions = [];
        
            {
            _positions set [(count _positions),getPosATL _x]
            }
        forEach _new;
        
        player sidechat format ["craters: %1 pos: %2",_new,_positions]
        }
    };

Tirp_TGT_hit = {
	_tgt = (this select 0);
	_tgt setVariable ["craters", (_tgt getVariable ["craters", []])];
	_pos = getPos (_this select 0);
	_pos set [2, ((_pos select 2)+ 0.80)];
	_current = (_pos nearObjects ["#crater",2]) + (_pos nearObjects ["#crateronvehicle",2]);
	
	_new = _current - (_tgt getVariable ["craters", []]);
	
	//newCraters = craters - currentCraters;
	_distance = ((_new select 0) distance _pos);
	diag_log "distance:";
	diag_log str _distance;
	diag_log "vertical distance: ";
	diag_log str ((_pos select 2 ) - ((getPos (_new select 0) select 2)));
	_score = ((0.12-( _distance/3))*100);
	if (_score < 0) then {_score = 0};
	
	//hint str (_score);
	
	_tgt setVariable ["craters", ((_tgt getVariable ["craters", []])+ _new)] ;

};

levels =  	[
				[
					//min range, max range,  target randomization, 	is moving excerise,	initial target delay, 	delay modifier code,	allowed weapons, weapons blacklist, 	allowed attachments, 	attachments blacklist		ammo whitelist, 			ammo blacklist, 		allowed firemodes
					[0,				300,	false, 					true, 				1, 						{_this * 0.95;}, 		["arifle_MX_F"] , ["arifle_MX_SW_F"], 	["ItemCore" /* allow all attachments*/], 					[], 						["BulletBase"/*allow any ammo */], 						[], 		["Single", "Burst","FullAuto", "manual", "player"]	]
				]
			];
currMissionID = 0;
TIRP_DEFAULT_FIRING_DRILL = [["Default",[0,600,5,[0],1,["default","arifle_Mk20_F","arifle_MXM_Hamr_LP_BI_F","arifle_MXC_Holo_F","arifle_Katiba_GL_ACO_pointer_snds_F","H_HelmetB_light"],["arifle_MX_Black_F","acc_flashlight"],["default"],["CROUCH"],["default"],["FullAuto"]]]];
player call {

_this addAction["start firing drill", {[player, TIRP_DEFAULT_FIRING_DRILL select 0] call tirp_fnc_constructor;}];
_this addAction["AI", {
						_var = (TIRP_DEFAULT_FIRING_DRILL select 0 select 1); 

						_var set [4,1];
						[shooter1, ["2", _var]] call tirp_fnc_constructor;
						_var = (TIRP_DEFAULT_FIRING_DRILL select 0 select 1); 
						_var set [4,2];
						[shooter2, ["3", _var]] call tirp_fnc_constructor;
						_var = (TIRP_DEFAULT_FIRING_DRILL select 0 select 1); 
						_var set [4,3];
						[shooter3, ["4", _var]] call tirp_fnc_constructor;
						_var = (TIRP_DEFAULT_FIRING_DRILL select 0 select 1); 
						_var set [4,4];
						[shooter4, ["5", _var]] call tirp_fnc_constructor;
						_var = (TIRP_DEFAULT_FIRING_DRILL select 0 select 1); 
						_var set [4,5];
						[shooter5, ["6", _var]] call tirp_fnc_constructor;
						_var = (TIRP_DEFAULT_FIRING_DRILL select 0 select 1); 
						_var set [4,6];
						[shooter6, ["7", _var]] call tirp_fnc_constructor;
						_var = (TIRP_DEFAULT_FIRING_DRILL select 0 select 1); 
						_var set [4,7];
						[shooter7, ["8", _var]] call tirp_fnc_constructor;
						_var = (TIRP_DEFAULT_FIRING_DRILL select 0 select 1); 
						_var set [4,8];
						[shooter8, ["9", _var]] call tirp_fnc_constructor;
						_var = (TIRP_DEFAULT_FIRING_DRILL select 0 select 1); 
						_var set [4,9];
						[shooter9, ["9", _var]] call tirp_fnc_constructor;
						_var = (TIRP_DEFAULT_FIRING_DRILL select 0 select 1); 
						_var set [4,10];
						[shooter10, ["10", _var]] call tirp_fnc_constructor;
						

						
					}];
//_this addAction["display card", {createDialog "scoreCard"}];
//hint str (levels select 0 select 0);
//_this addAction["start mission AI", {[player] call tirp_fnc_newMission;}];


//_this addAction ["Copy Report", {["getReport", nil] call (player getVariable "mission");}];

_this addEventHandler ["InventoryOpened", {_this call tirp_fnc_lockerOpen}];
_this addEventHandler ["InventoryClosed", {_this call tirp_fnc_lockerClose}];
//_this addAction ["view weapon Array", {[] execVM "weapons.sqf"}];
_this addAction ["setup dialog...", {[] call tirp_fnc_diag_dialogSetupInit;}];
//_this addAction ["clear preconfigs", {profileNamespace setVariable ["tirp_firingRange_Missions", nil];
//profileNamespace setVariable ["tirp_FD_currentMissionSelectionID", nil]}];

};
[] call tirp_fnc_ISSEInfo;

//test comment
//GunHandler = player addEventHandler ["Fired",{nul = _this call RYD_WhenFired}];  