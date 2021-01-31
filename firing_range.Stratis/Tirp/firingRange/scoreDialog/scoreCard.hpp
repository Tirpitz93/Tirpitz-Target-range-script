
#include "IDC.h"

class ScoreCard {
	idd = IDCDIALOG;
	movingEnable = false;
	controlsBackground[] = {};
	
	class controls
	{
		


		class scoreCardBack: RscBack
		{
			idc = BACK;
			x = 0 ;
			y = 0 ;
			w = 1 ;
			h = 1 ;
		};
		class reportFrame: RscFrame
		{
			idc = FRAME;
			x = 0;
			y = 0;
			w = 1;
			h = 1;
		};
		class scoreCardTitle: RscTitle
		{
			idc = TITLE;
			text = "Firing Drill Score Card"; //--- ToDo: Localize;

			
		};
		
		class scoreCardTargetList: RscListbox
		{
			idc = TGTLIST;
			x = 0.02;
			y = 0.12;
			w = 0.282;
			h = 0.63;
			
			onLBSelChanged = "_this call tirp_fnc_selectTarget";
		};
		
		class scoreCardTargetIcon: RscControlsGroup
		{
			idc = TGTICON;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 0.33;
			y = 0.13;
			w = 0.26;
			h = 1.04/3;
			
		};
		class scoreCardTargetInfo: RscStructuredText
		{
			idc = TGTINFO;
			
			x = 0.33;
			y = 0.13 + 1.04/3 +0.02;
			w = 0.26;
			h = 0.4;
		};
		class scoreCardStats: RscStructuredText
		{
			idc = STATS;
			x = 0.63;
			y = 0.13;
			w = 0.34;
			h = 0.62;
		};
		
		class scoreCardAccept: RscButtonMenuOK
		{
			idc = ACCEPT;
			
			text = "Accept";
			action = "[((findDisplay 10000) getVariable [""unit"", objNull]),""accept""] call tirp_fnc_destructor; closeDialog 0";
		};
		
		class scoreCardRetry: RscButtonMenuCancel
		{
			idc = RETRY;

			
			text = "Retry";
			action = "[((findDisplay 10000) getVariable [""unit"", objNull]),""reset""] call tirp_fnc_constructor; closeDialog 0;";
			disable = 1;
			
		};
	};		
class Objects { 
		class target 
		{ 
			onObjectMoved = "systemChat str _this"; 
			idc = TARGET; 
			type = 82; 
			model = "\A3\Structures_F\Training\Target_PopUp_F.p3d";
			scale = 1; 
			direction[] = {0,0, 1}; 
			up[] = {0,1,0}; 

			//position[] = {0,0,0.2}; optional 

			x = 0.46; 
			y = 0.5; 
			z = 3; 
			//positionBack[] = {0,0,1.2}; optional 

			xBack = 0.5; 
			yBack = 0.5; 
			zBack = 1.2; 
			inBack = 0; 
			enableZoom = 0; 
			zoomDuration = 0.001; 
			animTextureNormal = "a3\structures_f\training\data\target_inf2_acc1_co.paa";
			animTextureDisabled = "a3\structures_f\training\data\target_inf2_acc1_co.paa";
			animTextureOver = "a3\structures_f\training\data\target_inf2_acc1_co.paa";
			animTextureFocused = "a3\structures_f\training\data\target_inf2_acc1_co.paa";
			animTexturePressed = "a3\structures_f\training\data\target_inf2_acc1_co.paa";
			animTextureDefault = "a3\structures_f\training\data\target_inf2_acc1_co.paa";
			hiddenSelections[] = {"camo","target2","target3"};
			hiddenSelectionsTextures[] = {"a3\structures_f\training\data\target_inf2_acc1_co","#(argb,8,8,3)color(0,0,0,0,ca)","#(argb,8,8,3)color(0,0,0,0,ca)"};
		
		};
		class hitMarker
		{ 
			onObjectMoved = "systemChat str _this"; 
			idc = HITMARKER; 
			type = 82; 
			model = "\A3\Structures_F_Heli\VR\Helpers\Sign_sphere10cm_F.p3d";
			scale = 0.1; 
			direction[] = {0,0, 1}; 
			up[] = {0,1,0}; 
			
			//position[] = {0,0,0.2}; optional 

			x = 0.5; 
			y = 0.5; 
			z = 2; 
			//positionBack[] = {0,0,1.2}; optional 

			xBack = 0.5; 
			yBack = 0.5; 
			zBack = 1.2; 
			inBack = 0; 
			enableZoom = 0; 
			zoomDuration = 0.001; 
		}; 		
	}; 
	
};


