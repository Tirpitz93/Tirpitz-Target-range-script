#include "IDC.h"
class tirp_diag_rangeSetup {
	IDD = IDCDIALOG;
	movingEnable = false;
	controlsBackground[] = {};
	class controls {
		class setupBack: RscBack
		{
			idc = BACK;
			x = -0.3;
			y = 0;
			w = 1.6;
			h = 1;
		};
		class setupFrame: RscFrame
		{
			idc = FRAME;
			x = 0;
			y = 0;
			w = 1;
			h = 1;
		};
		class setupTitle: RscTitle
		{
			idc = TITLE;
			text = "Range Setup"; //--- ToDo: Localize;
			
		};
		class setupPreconfiguredList: RscListbox
		{
			idc = SAVELIST;

			x = -0.29;
			y = 0.1;
			w = 0.28;
			h = 0.39;
			onLBSelChanged =  "_this call tirp_fnc_diag_dialogSetupTreeSelChanged";
		};

		class setupPreconfHeader: RscText
		{
			idc = SAVETITLE;
			text = "Prepared missions"; //--- ToDo: Localize;
			x = -0.29;
			y = 0;
			w = 0.28;
			h = 0.09;
		};
		class setupLoad: RscButton
		{
			idc = LOAD;
			text = "Load"; //--- ToDo: Localize;
			x = -0.29;
			y = 0.5;
			w = 0.1;
			h = 0.05;
			onMouseButtonClick = "[] call tirp_fnc_diag_setupLoad";
		};
		class setupDelete: RscButton
		{
			idc = DELETE;
			text = "Delete"; //--- ToDo: Localize;
			x = -0.11;
			y = 0.5;
			w = 0.1;
			h = 0.05;
			onMouseButtonClick = "[] call tirp_fnc_diag_setupDel";
		};
		class setupSaveName: RscEdit
		{
			idc = NAME;
			text = "Mission Name"; //--- ToDo: Localize;
			x = -0.29;
			y = 0.56;
			w = 0.28;
			h = 0.05;
		};
		class setupSaveNew: RscButton
		{
			idc = SAVENEW;
			text = "Save"; //--- ToDo: Localize;
			x = -0.29;
			y = 0.62;
			w = 0.1;
			h = 0.05;
			onMouseButtonClick = "[0] call tirp_fnc_diag_setupSave";
		};
		class setupNumber: RscText
		{
			idc = NUMTGTTITLE;
			text = "Number of targets"; //--- ToDo: Localize;
			x = 0.025;
			y = 0.34;
			w = 0.2;
			h = 0.05;
			
		};
		class setupSequence: RscText
		{
			idc = SEQUENCETITLE;
			text = "Sequence"; //--- ToDo: Localize;
			x = 0.025;
			y = 0.48;
		
			
			
		};
		class setupLaneTitle: RscText
		{
			idc = LANETITLE;
			text = "Lane"; //--- ToDo: Localize;
			x = 0.025;
			y = 0.6;
		};
		class RscText_1005: RscText
		{
			idc = RANGETITLE;
			text = "Range"; //--- ToDo: Localize;
			x = 0.0375;
			y = 0.1;
			w = 0.1;
			h = 0.05;
			
			
			
		};		
		class setupMinRange: RscText
		{
			idc = MINRANGE;
			text = "min_range"; //--- ToDo: Localize;
			x = 0.326;
			y = 0.18;
			w = 0.1;
			h = 0.05;
			
		};
		class setupMaxRange: RscText
		{
			idc = MAXRANGE;
			text = "max_range"; //--- ToDo: Localize;
			x = 0.326;
			y = 0.26;
			w = 0.1;
			h = 0.05;
			
		};
		
		class setupOverwrite: RscButton
		{
			idc = OVERWRITE;
			text = "Overwrite"; //--- ToDo: Localize;
			x = -0.11;
			y = 0.62;
			w = 0.1;
			h = 0.05;
			onMouseButtonClick = "[1] call tirp_fnc_diag_setupSave";
		};
		class setupMinRangeSlider: RscSlider
		{
			idc = MINRANGESLIDER;
			x = 0.025;
			y = 0.18;
			w = 0.3;
			h = 0.02;
			class Value // Link to a control which will show slider value
			{
				idc = MINRANGE; // Control IDC (has to be defined ABOVE the slider control)
				format = "%.f"; // Text format, value is represented by variable %g (float) or %.f (integer)
				type = SPTPlain; // Format, can be SPTPlain or SPTPercents (multiplies the value by 100)
				colorBase[] = {1,1,1,1}; // Text color
				colorActive[] = {1,0.5,0,1}; // Text color when the slider is active
			};
			onSliderPosChanged = "_this call tirp_fnc_diag_onMinSliderChange";
		};
		
		class setupMaxRangeSlider: RscSlider
		{
			idc = MAXRANGESLIDER;
			x = 0.025;
			y = 0.26;
			w = 0.3;
			h = 0.02;
			class Value // Link to a control which will show slider value
			{
				idc = MAXRANGE; // Control IDC (has to be defined ABOVE the slider control)
				format = "%.f"; // Text format, value is represented by variable %g (float) or %.f (integer)
				type = SPTPlain; // Format, can be SPTPlain or SPTPercents (multiplies the value by 100)
				colorBase[] = {1,1,1,1}; // Text color
				colorActive[] = {1,0.5,0,1}; // Text color when the slider is active
			};
			onSliderPosChanged = "_this call tirp_fnc_diag_onMaxSliderChange";
		};
		
		class setupNumTgtsSlider: RscSlider
		{
			idc = NUMTGTSLIDER;
			x = 0.025;
			y = 0.4;
			w = 0.3;
			h = 0.02;
			class Value // Link to a control which will show slider value
			{
				idc = 1008; // Control IDC (has to be defined ABOVE the slider control)
				format = "%.f"; // Text format, value is represented by variable %g (float) or %.f (integer)
				type = SPTPlain; // Format, can be SPTPlain or SPTPercents (multiplies the value by 100)
				colorBase[] = {1,1,1,1}; // Text color
				colorActive[] = {1,0.5,0,1}; // Text color when the slider is active
			};
		};
		
		
		class setupSequenceSelect: RscListXBox
		{
			idc = SEQUENCECOMBO;
			x = 0.025;
			y = 0.54;
			w = 0.2;
			h = 0.05;
		};
		class setupWeaponsSelect: RscTree
		{
			idc = WEPTREE;
			//text = "weaponSelect"; //--- ToDo: Localize;
			x = 1.01;
			y = 0.11;
			w = 0.28;
			h = 0.88;
			onTreeSelChanged = "_this call tirp_fnc_diag_dialogSetupTreeSelChanged";
			onTreeDblClick = " _this call tirp_fnc_diag_dialogSetupTreeDblClick";
		};
		class setupBlacklist: RscListbox
		{
			idc = BITEM;
			text = "Blacklist"; //--- ToDo: Localize;
			x = 0.775;
			y = 0.16;
			w = 0.2;
			h = 0.2;
			tooltip = "Any items here are not allowed in the mission."; //--- ToDo: Localize;
			onKeyDown  ="_this call tirp_fnc_diag_setupOnKeyDown";
		};
		class setupWhitelist: RscListbox
		{
			idc = WITEM;
			text = "WhiteList"; //--- ToDo: Localize;
			x = 0.55;
			y = 0.16;
			w = 0.2;
			h = 0.2;
			tooltip = "Any weapons here and any subclasses are allowed except where they or any parents are also in the blacklist"; //--- ToDo: Localize;
			onKeyDown  ="_this call tirp_fnc_diag_setupOnKeyDown";
			
		};
		class setupBlacklistStances: RscListbox
		{
			idc = BSTANCE;
			text = "Blacklist"; //--- ToDo: Localize;
			x = 0.775;
			y = 0.46;
			w = 0.2;
			h = 0.2;
			tooltip = "Any items here are not allowed in the mission."; //--- ToDo: Localize;
			onKeyDown  ="_this call tirp_fnc_diag_setupOnKeyDown";
		};
		class setupWhitelistStances: RscListbox
		{
			idc = WSTANCE;
			text = "WhiteList"; //--- ToDo: Localize;
			x = 0.55;
			y = 0.46;
			w = 0.2;
			h = 0.2;
			tooltip = "Any weapons here and any subclasses are allowed except where they or any parents are also in the blacklist"; //--- ToDo: Localize;
			onKeyDown  ="_this call tirp_fnc_diag_setupOnKeyDown";
			
		};
		class setupBlacklistFiremodes: RscListbox
		{
			idc = BFM;
			text = "Blacklist"; //--- ToDo: Localize;
			x = 0.775;
			y = 0.76;
			w = 0.2;
			h = 0.2;
			tooltip = "Any items here are not allowed in the mission."; //--- ToDo: Localize;
			onKeyDown  ="_this call tirp_fnc_diag_setupOnKeyDown";
		};
		class setupWhitelistFiremodes: RscListbox
		{
			idc = WFM;
			text = "WhiteList"; //--- ToDo: Localize;
			x = 0.55;
			y = 0.76;
			w = 0.2;
			h = 0.2;
			tooltip = "Any weapons here and any subclasses are allowed except where they or any parents are also in the blacklist"; //--- ToDo: Localize;
			onKeyDown  ="_this call tirp_fnc_diag_setupOnKeyDown";
			
		};
		class setupWhitelistTitle: RscText
		{
			idc = WTITLE;
			text = "Allowed Equipment"; //--- ToDo: Localize;
			x = 0.55;
			y = 0.1;
			w = 0.2;
			h = 0.04;
			
		};
		class setupBlacklistTitle: RscText
		{
			idc = BTITLE;
			text = "Barred Equipment"; //--- ToDo: Localize;
			x = 0.775;
			y = 0.1;
			w = 0.2;
			h = 0.04;
			
		};
		class setupWhitelistCheck: RscCheckbox
		{
			//todo: make square

			idc = WCHECK;
			x = 0.6125;
			y = 0.38;
			w = 0.05 * safezoneH / safezoneW;
			h = 0.05;
			style =   LB_MULTI;
			onCheckedChanged = "_this call tirp_fnc_diag_onWhitelistCheckChange";
		};
		class setupBlacklistCheck: RscCheckbox
		{
			idc = BCHECK;
			x = 0.85;
			y = 0.38;
			w = 0.05 * safezoneH / safezoneW;
			h = 0.05;
			style =   LB_MULTI;
			onCheckedChanged = "_this call tirp_fnc_diag_onBlacklistCheckChange";
		};
		class setupSelectEquipTitle: RscText
		{
			idc = WEPTITLE;
			text = "Select Equipment"; //--- ToDo: Localize;
			x = 1.01;
			y = 0;
			w = 0.28;
			h = 0.09;
			
		};
		class setupLaneSelect: RscCombo
		{
			idc = LANECOMBO;
			x = 0.025;
			y = 0.64;
			w = 0.2;
			h = 0.05;
		};
		/* class setupSequenceCode1: RscEdit
		{
			idc = SEQUENCEEDIT;
			x = 0.2375;
			y = 0.5;
			w = 0.2;
			h = 0.1;
			tooltip = "paste sequence delay code here, No Comments, new lines are stripped.";
		};
		class setupSequenceCode2: RscEdit
		{
			idc = DURATIONEDIT;
			x = 0.2375;
			y = 0.61;
			w = 0.2;
			h = 0.1;
			tooltip = "paste target uptime code here, No Comments, new lines are stripped.";
		}; */
		class tgtSpeedTgtDisplay_1: RscText
		{
			idc = SPEEDTITLE1;
			text = "max_range"; //--- ToDo: Localize;
			x = 0.1;
			y = 0.83;
			w = 0.1;
			h = 0.05;
			
		};
		class tgtSpeedTgtSlider_1: RscSlider
		{
			idc = SPEEDSLIDER1;
			x = 0.025;
			y = 0.826;
			w = 0.3;
			h = 0.02;
			class Value // Link to a control which will show slider value
			{
				idc = SPEED1; // Control IDC (has to be defined ABOVE the slider control)
				format = "%.f"; // Text format, value is represented by variable %g (float) or %.f (integer)
				type = SPTPlain; // Format, can be SPTPlain or SPTPercents (multiplies the value by 100)
				colorBase[] = {1,1,1,1}; // Text color
				colorActive[] = {1,0.5,0,1}; // Text color when the slider is active
			};
			onSliderPosChanged = "_this call tirp_fnc_diag_onMaxSliderChange";
		};
		class tgtSpeedTgtDisplay_2: RscText
		{
			idc = SPEEDTITLE2;
			text = "max_range"; //--- ToDo: Localize;
			x = 0.1;
			y = 0.83;
			w = 0.1;
			h = 0.05;
			
		};
		class tgtSpeedTgtSlider_2: RscSlider
		{
			idc = SPEEDSLIDER2;
			x = 0.025;
			y = 0.826;
			w = 0.3;
			h = 0.02;
			class Value // Link to a control which will show slider value
			{
				idc = SPEED2; // Control IDC (has to be defined ABOVE the slider control)
				format = "%.f"; // Text format, value is represented by variable %g (float) or %.f (integer)
				type = SPTPlain; // Format, can be SPTPlain or SPTPercents (multiplies the value by 100)
				colorBase[] = {1,1,1,1}; // Text color
				colorActive[] = {1,0.5,0,1}; // Text color when the slider is active
			};
			onSliderPosChanged = "_this call tirp_fnc_diag_onMaxSliderChange";
		};
		
		/* class setupLaneDesc: RscStructuredText
		{
			idc = 1102;
			x = 0.2375;
			y = 0.62;
			w = 0.2;
			h = 0.1;
		}; */
		class setupOK: RscButtonMenuOK
		{
			idc = OK;
			
			action = "[] call tirp_fnc_diag_runCurrent";
			
		};
		class setupCancel: RscButtonMenuCancel
		{
			idc = CANCEL;
			
		};
	};
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
