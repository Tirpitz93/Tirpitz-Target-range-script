class RscBase
{
	deletable = 0;
	fade = 0;
	access = 0;
	type = 0;
	idc = -1;
	text = "";
	fixedWidth = 0;
	x = 0;
	y = 0;
	h = GUI_TEXT_SIZE;
	w = 0.3;
	style = 0;
	shadow = 0;
	font = GUI_FONT_NORMAL;
	SizeEx = GUI_TEXT_SIZE ;
	size = GUI_TEXT_SIZE;
	linespacing = LINESPACING;
	
	canModify = 0;
	colorBackground[] = //background
	{
		"(profilenamespace getvariable ['IGUI_BCG_RGB_R',0.77])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_G',0.51])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_B',0.08])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_A',0.5])"
	};
	colorText[] = //text
	{
		"(profilenamespace getvariable ['igui_titletext_rgb_r',1])",
		"(profilenamespace getvariable ['igui_titletext_rgb_g',1])",
		"(profilenamespace getvariable ['igui_titletext_rgb_b',1])",
		"(profilenamespace getvariable ['igui_titletext_rgb_a',1])"
	};
	colorShadow[] = 
	{
		0,
		0,
		0,
		0.5
	};
	tooltipColorText[] = //tooltip text colour
	{
		"(profilenamespace getvariable ['igui_titletext_rgb_r',1])",
		"(profilenamespace getvariable ['igui_titletext_rgb_g',1])",
		"(profilenamespace getvariable ['igui_titletext_rgb_b',1])",
		"(profilenamespace getvariable ['igui_titletext_rgb_a',1])"
	};
	tooltipColorBox[] = //tooltip background?
	{
		"(profilenamespace getvariable ['IGUI_BCG_RGB_R',0.77])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_G',0.51])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_B',0.08])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_A',0.5])"
	};
	tooltipColorShade[] = //tooltip background?
	{
		"(profilenamespace getvariable ['IGUI_BCG_RGB_R',0.77])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_G',0.51])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_B',0.08])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_A',0.5])"
	};
	colorBackgroundDisabled[] = //background disabled
	{
		"(profilenamespace getvariable ['IGUI_BCG_RGB_R',0.77])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_G',0.51])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_B',0.08])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_A',0.5])"
	};
	colorDisabled[] = //text disabled
	{
		"(profilenamespace getvariable ['IGUI_BCG_RGB_R',0.77])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_G',0.51])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_B',0.08])",
		0.25
	};
	disabledCtrlColor[] = {0,0,0,1};	
	disabledKeyColor[] = {0,0,0,1};
	colorScrollbar[] = 
	{
		1,
		0,
		0,
		0
	};
	colorSelect[] = 
	{
		0,
		0,
		0,
		1
	};
	colorSelect2[] = 
	{
		0,
		0,
		0,
		1
	};
	colorSelectBackground[] = 
	{
		0.95,
		0.95,
		0.95,
		1
	};
	colorSelectBackground2[] = 
	{
		1,
		1,
		1,
		0.5
	};

	soundSelect[] = 
	{
		"\A3\ui_f\data\sound\RscListbox\soundSelect",
		0.09,
		1
	};
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
	arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
	arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
	colorPicture[] = 
	{
		1,
		1,
		1,
		1
	};
	colorPictureSelected[] = 
	{
		1,
		1,
		1,
		1
	};
	colorPictureDisabled[] = 
	{
		1,
		1,
		1,
		0.25
	};
	colorPictureRight[] = 
	{
		1,
		1,
		1,
		1
	};
	colorPictureRightSelected[] = 
	{
		1,
		1,
		1,
		1
	};
	colorPictureRightDisabled[] = 
	{
		1,
		1,
		1,
		0.25
	};
	colorTextRight[] = 
	{
		1,
		1,
		1,
		1
	};
	colorSelectRight[] = 
	{
		0,
		0,
		0,
		1
	};
	colorSelect2Right[] = 
	{
		0,
		0,
		0,
		1
	};

	class ListScrollBar
	{
		color[] = 
		{
			1,
			1,
			1,
			1
		};
		autoScrollEnabled = 1;
	};
	
	period = 1.2;
	maxHistoryDelay = 1;
};