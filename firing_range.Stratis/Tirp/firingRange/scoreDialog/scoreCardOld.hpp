////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Lonja Selter, v1.063, #Coxado)
////////////////////////////////////////////////////////
//#include "defines.hpp"
class ScoreCard {
	idd = -1;
	movingEnable = false;
	controlsBackground[] = {};
	objects[] = {};
	class controls
	{

		class scoreCardBackground: RscBox
		{
			idc = 1800;
			x = 0.29375 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.4125 * safezoneW;
			h = 0.55 * safezoneH;
			
		};
		class scoreCardFrame: RscFrame
		{
			idc = 1801;
			x = 0.29375 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.4125 * safezoneW;
			h = 0.55 * safezoneH;
			
		};
		class scoreCard: RscControlsGroup
		{
			idc = 2300;
			x = 0.29375 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.42 * safezoneW;
			h = 0.55 * safezoneH;
			colorBackground[] = {0.2,0.2,0.2,1};
			colorActive[] = {0.4,0.4,0.4,1};
			class controls
			{

				class scoreCardTgtGrp: RscControlsGroup
				{
					idc = 23000;
					x = 0.314375 * safezoneW + safezoneX;
					y = 0.247 * safezoneH + safezoneY;
					w = 0.373 * safezoneW;
					h = 0.143 * safezoneH;
					colorBackground[] = {0.2,0.2,0.2,1};
					colorActive[] = {0.4,0.4,0.4,1};
					class controls
					{
						class RscPicture_1200: RscPicture
						{
							idc = 1200;
							text = "#(argb,8,8,3)color(1,1,1,1)";
							x = 0.304062 * safezoneW + safezoneX;
							y = 0.236 * safezoneH + safezoneY;
							w = 0.0257812 * safezoneW;
							h = 0.055 * safezoneH;
						};
						class RscPicture_1201: RscPicture
						{
							idc = 1201;
							text = "#(argb,8,8,3)color(1,1,1,1)";
							x = 0.340156 * safezoneW + safezoneX;
							y = 0.236 * safezoneH + safezoneY;
							w = 0.0257812 * safezoneW;
							h = 0.055 * safezoneH;
						};
						class RscPicture_1202: RscPicture
						{
							idc = 1202;
							text = "#(argb,8,8,3)color(1,1,1,1)";
							x = 0.37625 * safezoneW + safezoneX;
							y = 0.236 * safezoneH + safezoneY;
							w = 0.0257812 * safezoneW;
							h = 0.055 * safezoneH;
						};
						class RscPicture_1203: RscPicture
						{
							idc = 1203;
							text = "#(argb,8,8,3)color(1,1,1,1)";
							x = 0.412344 * safezoneW + safezoneX;
							y = 0.236 * safezoneH + safezoneY;
							w = 0.0257812 * safezoneW;
							h = 0.055 * safezoneH;
						};
						class RscPicture_1204: RscPicture
						{
							idc = 1204;
							text = "#(argb,8,8,3)color(1,1,1,1)";
							x = 0.448438 * safezoneW + safezoneX;
							y = 0.236 * safezoneH + safezoneY;
							w = 0.0257812 * safezoneW;
							h = 0.055 * safezoneH;
						};
						class RscPicture_1205: RscPicture
						{
							idc = 1205;
							text = "#(argb,8,8,3)color(1,1,1,1)";
							x = 0.484531 * safezoneW + safezoneX;
							y = 0.236 * safezoneH + safezoneY;
							w = 0.0257812 * safezoneW;
							h = 0.055 * safezoneH;
						};
						class RscPicture_1206: RscPicture
						{
							idc = 1206;
							text = "#(argb,8,8,3)color(1,1,1,1)";
							x = 0.520625 * safezoneW + safezoneX;
							y = 0.236 * safezoneH + safezoneY;
							w = 0.0257812 * safezoneW;
							h = 0.055 * safezoneH;
						};
						class RscPicture_1207: RscPicture
						{
							idc = 1207;
							text = "#(argb,8,8,3)color(1,1,1,1)";
							x = 0.556719 * safezoneW + safezoneX;
							y = 0.236 * safezoneH + safezoneY;
							w = 0.0257812 * safezoneW;
							h = 0.055 * safezoneH;
						};
						class RscPicture_1208: RscPicture
						{
							idc = 1208;
							text = "#(argb,8,8,3)color(1,1,1,1)";
							x = 0.592812 * safezoneW + safezoneX;
							y = 0.236 * safezoneH + safezoneY;
							w = 0.0257812 * safezoneW;
							h = 0.055 * safezoneH;
						};
						class RscPicture_1209: RscPicture
						{
							idc = 1209;
							text = "#(argb,8,8,3)color(1,1,1,1)";
							x = 0.628906 * safezoneW + safezoneX;
							y = 0.236 * safezoneH + safezoneY;
							w = 0.0257812 * safezoneW;
							h = 0.055 * safezoneH;
						};
						
						class RscPicture_1300: RscPicture
						{
							idc = 1300;
							text = "#(argb,8,8,3)color(1,1,1,1)";
							x = 0.304062 * safezoneW + safezoneX;
							y = 0.302 * safezoneH + safezoneY;
							w = 0.0257812 * safezoneW;
							h = 0.055 * safezoneH;
						};
						class RscPicture_1301: RscPicture
						{
							idc = 1301;
							text = "#(argb,8,8,3)color(1,1,1,1)";
							x = 0.340156 * safezoneW + safezoneX;
							y = 0.302 * safezoneH + safezoneY;
							w = 0.0257812 * safezoneW;
							h = 0.055 * safezoneH;
						};
						class RscPicture_1302: RscPicture
						{
							idc = 1302;
							text = "#(argb,8,8,3)color(1,1,1,1)";
							x = 0.37625 * safezoneW + safezoneX;
							y = 0.302 * safezoneH + safezoneY;
							w = 0.0257812 * safezoneW;
							h = 0.055 * safezoneH;
						};
						class RscPicture_1402: RscPicture
						{
							idc = 1402;
							text = "#(argb,8,8,3)color(1,1,1,1)";
							x = 0.37625 * safezoneW + safezoneX;
							y = 0.368 * safezoneH + safezoneY;
							w = 0.0257812 * safezoneW;
							h = 0.055 * safezoneH;
						};



					};
				};
				
				class scoreCardStatsGrp: RscControlsGroup
				{
					idc = 2800;
					x = 0.314375 * safezoneW + safezoneX;
					y = 0.247 * safezoneH + safezoneY;
					w = 0.373 * safezoneW;
					h = 0.143 * safezoneH;
					colorBackground[] = {0.3,0.3,0.3,0.3};
					colorActive[] = {0.5,0.5,0.5,0.5};
					class controls
					{
						class scoreCardStats: RscText
						{
							idc = 2801;
							text = "hello world hello world hello"; //--- ToDo: Localize;
							x = 0;
							y = 0;
							w = 1;
							h = 1;
							colorText[] = {1,1,1,1};
							colorBackground[] = {0.5,0.5,0.5,0.5};
							colorActive[] = {0.2,0.2,0.2,0.2};
						};
						
						/*class scoreCardStats2: RscText
						{
							idc = 2802;
							text = "hello world hello world hello"; //--- ToDo: Localize;
							x = 0.5 * safezoneW + safezoneX;
							y = 0 * safezoneH + safezoneY;
							w = 0.5 * safezoneW;
							h = 0.4 * safezoneH;
							colorText[] = {1,1,1,1};
							colorBackground[] = {0.6,0.6,0.6,0.6};
							colorActive[] = {0.2,0.2,0.2,0.2};
						};*/
					};
				};
				
			};
			
			
		};
	};		
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////



