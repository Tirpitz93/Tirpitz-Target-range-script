#define fileName "fn_newMission.sqf"
/*

	Author: Tirpitz
*/
_unit = _this select 0;
levels =  	[
				[
					//min range, max range,  target randomization, 	is moving excerise,	initial target delay, 	delay modifier code,	number of tgts,	initial tgt time, 	tgt time mod					 allowed weapons, 				weapons blacklist, 		allowed attachments, 									attachments blacklist		ammo whitelist, 								ammo blacklist, 		allowed firemodes
					[
						0,	//min range		0	
						300,	//max range 1
						true, 	//randomize				2
						false, 	//moving		3
							1, 		//target interval				4
							{(_this select 0 )* 0.95;},		//target interval modifier5
						5, 								//length6
						1, 								//target duration7
						{(_this select 0) * 0.95;},		// target duration modifier8
						["arifle_MX_F"] , 	//allowed weapon 9
						["arifle_MX_SW_F"], 	//weapon blacklist 10
						["ItemCore" /* allow all attachments*/], 	//allowed attachments	11		
						[], 						//blacklist attachments12
						["BulletBase"/*allow any ammo */], 		 //allowed rounds		13		
						[], 		//blacklist rounds 14
						["Single", "Burst","FullAuto", "manual", "player"],	 //firemodes 15
						5 //intro delay
					]
				]
			];
			

			
_missionObj = ["new", [shooter2, TIRP_DEFAULT_FIRING_DRILL select 0 select 1],1] call Exercise;


 shooter2 setVariable ["Mission", _missionObj];








