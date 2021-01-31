///////////////////////////////////////////////////////////////////////////
/// Styles
///////////////////////////////////////////////////////////////////////////

// Control types
#define CT_STATIC           0
#define CT_BUTTON           1
#define CT_EDIT             2
#define CT_SLIDER           3
#define CT_COMBO            4
#define CT_LISTBOX          5
#define CT_TOOLBOX          6
#define CT_CHECKBOXES       7
#define CT_PROGRESS         8
#define CT_HTML             9
#define CT_STATIC_SKEW      10
#define CT_ACTIVETEXT       11
#define CT_TREE             12
#define CT_STRUCTURED_TEXT  13
#define CT_CONTEXT_MENU     14
#define CT_CONTROLS_GROUP   15
#define CT_SHORTCUTBUTTON   16
#define CT_XKEYDESC         40
#define CT_XBUTTON          41
#define CT_XLISTBOX         42
#define CT_XSLIDER          43
#define CT_XCOMBO           44
#define CT_ANIMATED_TEXTURE 45
#define CT_OBJECT           80
#define CT_OBJECT_ZOOM      81
#define CT_OBJECT_CONTAINER 82
#define CT_OBJECT_CONT_ANIM 83
#define CT_LINEBREAK        98
#define CT_USER             99
#define CT_MAP              100
#define CT_MAP_MAIN         101
#define CT_LISTNBOX         102
#define CT_CHECKBOX         77

// Static styles
#define ST_POS            0x0F
#define ST_HPOS           0x03
#define ST_VPOS           0x0C
#define ST_LEFT           0x00
#define ST_RIGHT          0x01
#define ST_CENTER         0x02
#define ST_DOWN           0x04
#define ST_UP             0x08
#define ST_VCENTER        0x0C

#define ST_TYPE           0xF0
#define ST_SINGLE         0x00
#define ST_MULTI          0x10
#define ST_TITLE_BAR      0x20
#define ST_PICTURE        0x30
#define ST_FRAME          0x40
#define ST_BACKGROUND     0x50
#define ST_GROUP_BOX      0x60
#define ST_GROUP_BOX2     0x70
#define ST_HUD_BACKGROUND 0x80
#define ST_TILE_PICTURE   0x90
#define ST_WITH_RECT      0xA0
#define ST_LINE           0xB0

#define ST_SHADOW         0x100
#define ST_NO_RECT        0x200
#define ST_KEEP_ASPECT_RATIO  0x800

#define ST_TITLE          ST_TITLE_BAR + ST_CENTER
#define ST_EDIT       		ST_SINGLE + ST_FRAME
// Slider styles
#define SL_DIR            0x400
#define SL_VERT           0
#define SL_HORZ           0x400

#define SL_TEXTURES       0x10



// progress bar 
#define ST_VERTICAL       0x01
#define ST_HORIZONTAL     0

// Listbox styles
#define LB_TEXTURES       0x10
#define LB_MULTI          0x20

// Tree styles
#define TR_SHOWROOT       1
#define TR_AUTOCOLLAPSE   2

// MessageBox styles
#define MB_BUTTON_OK      1
#define MB_BUTTON_CANCEL  2
#define MB_BUTTON_USER    4
#define MB_ERROR_DIALOG   8

#define GUI_TEXT_SIZE 	"(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)" //0.04
// Xbox buttons
#define KEY_XINPUT                0x00050000
#define KEY_XBOX_A                KEY_XINPUT + 0
#define KEY_XBOX_B                KEY_XINPUT + 1
#define KEY_XBOX_X                KEY_XINPUT + 2
#define KEY_XBOX_Y                KEY_XINPUT + 3
#define KEY_XBOX_Up               KEY_XINPUT + 4
#define KEY_XBOX_Down             KEY_XINPUT + 5
#define KEY_XBOX_Left             KEY_XINPUT + 6
#define KEY_XBOX_Right            KEY_XINPUT + 7
#define KEY_XBOX_Start            KEY_XINPUT + 8
#define KEY_XBOX_Back             KEY_XINPUT + 9
#define KEY_XBOX_LeftBumper       KEY_XINPUT + 10
#define KEY_XBOX_RightBumper      KEY_XINPUT + 11
#define KEY_XBOX_LeftTrigger      KEY_XINPUT + 12
#define KEY_XBOX_RightTrigger     KEY_XINPUT + 13
#define KEY_XBOX_LeftThumb        KEY_XINPUT + 14
#define KEY_XBOX_RightThumb       KEY_XINPUT + 15
#define KEY_XBOX_LeftThumbXRight  KEY_XINPUT + 16
#define KEY_XBOX_LeftThumbYUp     KEY_XINPUT + 17
#define KEY_XBOX_RightThumbXRight KEY_XINPUT + 18
#define KEY_XBOX_RightThumbYUp    KEY_XINPUT + 19
#define KEY_XBOX_LeftThumbXLeft   KEY_XINPUT + 20
#define KEY_XBOX_LeftThumbYDown   KEY_XINPUT + 21
#define KEY_XBOX_RightThumbXLeft  KEY_XINPUT + 22
#define KEY_XBOX_RightThumbYDown  KEY_XINPUT + 23
// Fonts
#define GUI_FONT_NORMAL			PuristaMedium
#define GUI_FONT_BOLD			PuristaSemibold
#define GUI_FONT_THIN			PuristaLight
#define GUI_FONT_MONO			EtelkaMonospacePro
#define GUI_FONT_NARROW			EtelkaNarrowMediumPro
#define GUI_FONT_CODE			LucidaConsoleB
#define GUI_FONT_SYSTEM			TahomaB

// Grids
#define GUI_GRID_CENTER_WAbs		((safezoneW / safezoneH) min 1.2)
#define GUI_GRID_CENTER_HAbs		(GUI_GRID_CENTER_WAbs / 1.2)
#define GUI_GRID_CENTER_W		(GUI_GRID_CENTER_WAbs / 40)
#define GUI_GRID_CENTER_H		(GUI_GRID_CENTER_HAbs / 25)
#define GUI_GRID_CENTER_X		(safezoneX + (safezoneW - GUI_GRID_CENTER_WAbs)/2)
#define GUI_GRID_CENTER_Y		(safezoneY + (safezoneH - GUI_GRID_CENTER_HAbs)/2)

/*colours to match main UI from user profilenamespace
gui_bcg_rgb_a
gui_bcg_rgb_b
gui_bcg_rgb_g
gui_bcg_rgb_preset
gui_bcg_rgb_presetdefault
gui_bcg_rgb_r

gui_grid_center_h
gui_grid_center_w
gui_grid_center_x
gui_grid_center_y

gui_grid_h
gui_grid_w
gui_grid_x
gui_grid_y

gui_titletext_rgb_a
gui_titletext_rgb_b
gui_titletext_rgb_g
gui_titletext_rgb_preset
gui_titletext_rgb_presetdefault
gui_titletext_rgb_r

guipreset
guipresetdefault

igui_bcg_rgb_a
igui_bcg_rgb_b
igui_bcg_rgb_g
igui_bcg_rgb_preset
igui_bcg_rgb_presetdefault
igui_bcg_rgb_r

igui_error_rgb_a
igui_error_rgb_b
igui_error_rgb_g
igui_error_rgb_preset
igui_error_rgb_presetdefault
igui_error_rgb_r

igui_grid_ace_displaytext_x
igui_grid_ace_displaytext_y

igui_grid_avcamera_h
igui_grid_avcamera_w
igui_grid_avcamera_x
igui_grid_avcamera_y

igui_grid_bar_x
igui_grid_bar_y

igui_grid_chat_h
igui_grid_chat_w
igui_grid_chat_x
igui_grid_chat_y

igui_grid_comm_x
igui_grid_comm_y

igui_grid_gaugealt_x
igui_grid_gaugealt_y

igui_grid_gaugecompass_x
igui_grid_gaugecompass_y

igui_grid_gaugehorizon_x
igui_grid_gaugehorizon_y

igui_grid_gaugespeed_x
igui_grid_gaugespeed_y

igui_grid_gaugestability_x
igui_grid_gaugestability_y

igui_grid_gps_h
igui_grid_gps_w
igui_grid_gps_x
igui_grid_gps_y

igui_grid_hint_x
igui_grid_hint_y
igui_grid_menu_x
igui_grid_menu_y

igui_grid_mission_x
igui_grid_mission_y

igui_grid_notification_x
igui_grid_notification_y

igui_grid_radar_x
igui_grid_radar_y

igui_grid_slingloadassistant_h
igui_grid_slingloadassistant_w
igui_grid_slingloadassistant_x
igui_grid_slingloadassistant_y

igui_grid_stance_x
igui_grid_stance_y

igui_grid_vehicle_x
igui_grid_vehicle_y

igui_grid_weapon_x
igui_grid_weapon_y

igui_text_rgb_a
igui_text_rgb_b
igui_text_rgb_g
igui_text_rgb_preset
igui_text_rgb_presetdefault
igui_text_rgb_r

igui_warning_rgb_a
igui_warning_rgb_b
igui_warning_rgb_g
igui_warning_rgb_preset
igui_warning_rgb_presetdefault
igui_warning_rgb_r

iguipreset
iguipresetdefault

*/
#define TIRPDEBUG 0
#define LINESPACING 1
///////////////////////////////////////////////////////////////////////////
/// Base Classes
///////////////////////////////////////////////////////////////////////////
#include "RscBase.hpp"

class RscText : RscBase
{
	colorBackground[] = {0,0,0,0};
};
class RscTextBox : RscBase
{
	colorBackground[] = 
	{
		"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_A',0.5])"
	};
};

class RscTitle : RscText
{	
	w = 1;
	
	
	colorBackground[] = 
	{
		"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_A',0.5])"
	};
	
};
class RscTitle2:RscTitle 
{
	style =ST_TITLE;
	
};
class RscStructuredText : RscText
{
	type = CT_STRUCTURED_TEXT;
	style = 0;
	class Attributes
	{
		font = "PuristaMedium";
		color = "#ffffff";
		colorLink = "#D09B43";
		align = "left";
		shadow = 1;
	};

	

};
class RscPicture
{

	style = ST_PICTURE;
	colorBackground[] = 
	{
		1,1,1,1
		
	};
	colorText[] = 
	{
		1,
		1,
		1,
		0
	};
	sizeEx = 0;
	lineSpacing = 0;
	fixedWidth = 0;
	shadow = 0;
	w = 0.2;
	h = 0.15;

};
class RscEdit :RscText
{

	type = CT_EDIT;
	x = 0;
	y = 0;
	h = 0.04;
	w = 0.2;

	colorSelection[] = 
	{
		"(profilenamespace getvariable ['IGUI_BCG_RGB_R',0.77])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_G',0.51])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_B',0.08])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_A',0.08])"
		
	};
	autocomplete = "";
	size = GUI_TEXT_SIZE;
	style = ST_EDIT;
	font = "LucidaConsoleB";
	shadow = 2;
	canModify = 1;
	
};
class RscListBox : RscText
{
	x = 0;
	y = 0;
	w = 0.3;
	h = 0.3;
	style = ST_POS;
	type = CT_LISTBOX; //5
	rowHeight = GUI_TEXT_SIZE;
	

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
	colorBackground[] = 
	{
		0,
		0,
		0,
		0.3
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
	tooltipColorText[] = 
	{
		1,
		1,
		1,
		1
	};
	tooltipColorBox[] = 
	{
		1,
		1,
		1,
		1
	};
	tooltipColorShade[] = 
	{
		0,
		0,
		0,
		0.65
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
	
	font = "PuristaMedium";
	//sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	shadow = 0;
	colorShadow[] = 
	{
		0,
		0,
		0,
		0.5
	};
	period = 1.2;
	maxHistoryDelay = 1;
};
class RscListXBox :RscListBox
		{
			access = 0; // Control access (0 - ReadAndWrite, 1 - ReadAndCreate, 2 - ReadOnly, 3 - ReadOnlyVerified)
			idc = CT_XLISTBOX; // Control identification (without it, the control won't be displayed)
			type = CT_XLISTBOX; // Type
			style = SL_HORZ + ST_CENTER + LB_TEXTURES; // Style
			default = 0; // Control selected by default (only one within a display can be used)
			blinkingPeriod = 0; // Time in which control will fade out and back in. Use 0 to disable the effect.

			x = 12 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X; // Horizontal coordinates
			y = 17 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y; // Vertical coordinates
			w = 10 * GUI_GRID_CENTER_W; // Width
			h = 1 * GUI_GRID_CENTER_H; // Height

			color[] = {1,1,1,1}; // Arrow color
			colorActive[] = {1,0.5,0,1}; // Selected arrow color

			sizeEx = GUI_GRID_CENTER_H; // Text size
			font = GUI_FONT_NORMAL; // Font from CfgFontFamilies
			shadow = 0; // Shadow (0 - none, 1 - N/A, 2 - black outline)
			colorText[] = {1,1,1,1}; // Text color
			colorSelect[] = {1,0.5,0,1}; // Selected text color
			colorDisabled[] = {1,1,1,0.5}; // Disabled text color

			tooltip = "CT_XLISTBOX"; // Tooltip text
			tooltipColorShade[] = {0,0,0,1}; // Tooltip background color
			tooltipColorText[] = {1,1,1,1}; // Tooltip text color
			tooltipColorBox[] = {1,1,1,1}; // Tooltip frame color

			arrowEmpty = "\A3\ui_f\data\gui\cfg\slider\arrowEmpty_ca.paa"; // Arrow
			arrowFull = "\A3\ui_f\data\gui\cfg\slider\arrowFull_ca.paa"; // Arrow when clicked on
			border = "\A3\ui_f\data\gui\cfg\slider\border_ca.paa"; // Fill texture

			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1}; // Sound played when an item is selected

			onCanDestroy = "systemChat str ['onCanDestroy',_this]; true";
			onDestroy = "systemChat str ['onDestroy',_this]; false";
			onSetFocus = "systemChat str ['onSetFocus',_this]; false";
			onKillFocus = "systemChat str ['onKillFocus',_this]; false";
			onKeyDown = "systemChat str ['onKeyDown',_this]; false";
			onKeyUp = "systemChat str ['onKeyUp',_this]; false";
			onMouseButtonDown = "systemChat str ['onMouseButtonDown',_this]; false";
			onMouseButtonUp = "systemChat str ['onMouseButtonUp',_this]; false";
			onMouseButtonClick = "systemChat str ['onMouseButtonClick',_this]; false";
			onMouseButtonDblClick = "systemChat str ['onMouseButtonDblClick',_this]; false";
			onMouseZChanged = "systemChat str ['onMouseZChanged',_this]; false";
			onMouseMoving = "";
			onMouseHolding = "";

			onLBSelChanged = "systemChat str ['onLBSelChanged',_this]; false";
			onLBDblClick = "systemChat str ['onLBDblClick',_this]; false";
		};
class RscListNBox : RscListBox
{

/*
** standard stuff
*/
 type = CT_LISTNBOX;// 102; 
 style =ST_MULTI;

/*
** type specific
*/
 autoScrollSpeed = -1; 
 autoScrollDelay = 5; 
 autoScrollRewind = 0; 
 arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)"; 
 arrowFull = "#(argb,8,8,3)color(1,1,1,1)"; 
 columns[] = {0.3, 0.6, 0.7}; 
 drawSideArrows = 1; 
 idcLeft = -1; 
 idcRight = -1; 
 maxHistoryDelay = 1; 
 rowHeight = 0; 
 soundSelect[] = {"", 0.1, 1}; 
 period = 1; 
 shadow = 2; 
 class ScrollBar
 {
  arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
  arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
  border = "#(argb,8,8,3)color(1,1,1,1)";
  color[] = {1,1,1,0.6};
  colorActive[] = {1,1,1,1};
  colorDisabled[] = {1,1,1,0.3};
  thumb = "#(argb,8,8,3)color(1,1,1,1)";
 };
};
class RscTree : RscListBox
{
			access = 0; // Control access (0 - ReadAndWrite, 1 - ReadAndCreate, 2 - ReadOnly, 3 - ReadOnlyVerified)
			idc = CT_TREE; // Control identification (without it, the control won't be displayed)
			type = CT_TREE; // Type
			style = ST_LEFT; // Style
			default = 0; // Control selected by default (only one within a display can be used)
			blinkingPeriod = 0; // Time in which control will fade out and back in. Use 0 to disable the effect.

			x = 12 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X; // Horizontal coordinates
			y = 3 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y; // Vertical coordinates
			w = 10 * GUI_GRID_CENTER_W; // Width
			h = 3 * GUI_GRID_CENTER_H; // Height

			colorBorder[] = {0,0,0,0}; // Frame color

			colorBackground[] = {
				"(profilenamespace getvariable ['IGUI_BCG_RGB_R',0.77])",
				"(profilenamespace getvariable ['IGUI_BCG_RGB_G',0.51])",
				"(profilenamespace getvariable ['IGUI_BCG_RGB_B',0.08])",
				"(profilenamespace getvariable ['IGUI_BCG_RGB_A',0.5])"
				}; // Fill color
			colorSelect[] = {1,0.5,0,1}; // Selected item fill color (when multiselectEnabled is 0)
			colorMarked[] = {1,0.5,0,0.5}; // Marked item fill color (when multiselectEnabled is 1)
			colorMarkedSelected[] = {1,0.5,0,1}; // Selected item fill color (when multiselectEnabled is 1)

			
			font = PuristaLight; // Font from CfgFontFamilies
			shadow = 1; // Shadow (0 - none, 1 - N/A, 2 - black outline)
			colorText[] = {1,1,1,1}; // Text color
			colorSelectText[] = {1,1,1,1}; // Selected text color (when multiselectEnabled is 0)
			colorMarkedText[] = {1,1,1,1}; // Selected text color (when multiselectEnabled is 1)

			tooltip = "CT_TREE"; // Tooltip text
			tooltipColorShade[] = {0,0,0,1}; // Tooltip background color
			tooltipColorText[] = {1,1,1,1}; // Tooltip text color
			tooltipColorBox[] = {1,1,1,1}; // Tooltip frame color

			multiselectEnabled = 1; // Allow selecting multiple items while holding Ctrl or Shift
			expandOnDoubleclick = 1; // Expand/collapse item upon double-click
			hiddenTexture = "A3\ui_f\data\gui\rsccommon\rsctree\hiddenTexture_ca.paa"; // Expand icon
			expandedTexture = "A3\ui_f\data\gui\rsccommon\rsctree\expandedTexture_ca.paa"; // Collapse icon
			maxHistoryDelay = 1; // Time since last keyboard type search to reset it

			// Scrollbar configuration
			class ScrollBar
			{
				width = 0; // Unknown?
				height = 0; // Unknown?
				scrollSpeed = 0.01; // Unknown?

				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa"; // Arrow
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa"; // Arrow when clicked on
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa"; // Slider background (stretched vertically)
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa"; // Dragging element (stretched vertically)

				color[] = {1,1,1,1}; // Scrollbar color
			};

			colorDisabled[] = {0,0,0,0}; // Does nothing, but must be present, otherwise an error is shown
			colorArrow[] = {0,0,0,0}; // Does nothing, but must be present, otherwise an error is shown

			onCanDestroy = "systemChat str ['onCanDestroy',_this]; true";
			onDestroy = "systemChat str ['onDestroy',_this]; false";
			onMouseEnter = "systemChat str ['onMouseEnter',_this]; false";
			onMouseExit = "systemChat str ['onMouseExit',_this]; false";
			onSetFocus = "systemChat str ['onSetFocus',_this]; false";
			onKillFocus = "systemChat str ['onKillFocus',_this]; false";
			onKeyDown = "systemChat str ['onKeyDown',_this]; false";
			onKeyUp = "systemChat str ['onKeyUp',_this]; false";
			onMouseButtonDown = "systemChat str ['onMouseButtonDown',_this]; false";
			onMouseButtonUp = "systemChat str ['onMouseButtonUp',_this]; false";
			onMouseButtonClick = "systemChat str ['onMouseButtonClick',_this]; false";
			onMouseButtonDblClick = "systemChat str ['onMouseButtonDblClick',_this]; false";
			onMouseZChanged = "systemChat str ['onMouseZChanged',_this]; false";
			onMouseMoving = "";
			onMouseHolding = "";

			onTreeSelChanged = "systemChat str ['onTreeSelChanged',_this]; false";
			onTreeLButtonDown = "systemChat str ['onTreeLButtonDown',_this]; false";
			onTreeDblClick = "systemChat str ['onTreeDblClick',_this]; false";
			onTreeExpanded = "systemChat str ['onTreeExpanded',_this]; false";
			onTreeCollapsed = "systemChat str ['onTreeCollapsed',_this]; false";
			//onTreeMouseMove = "systemChat str ['onTreeMouseMove',_this]; false"; // Causing CTD
			//onTreeMouseHold = "systemChat str ['onTreeMouseHold',_this]; false"; // Causing CTD
			onTreeMouseExit = "systemChat str ['onTreeMouseExit',_this]; false";
};
class CT_LISTBOX : RscListBox
{
	
	access = 0; // Control access (0 - ReadAndWrite, 1 - ReadAndCreate, 2 - ReadOnly, 3 - ReadOnlyVerified)
	idc = CT_LISTBOX; // Control identification (without it, the control won't be displayed)
	type = CT_LISTBOX; // Type is 5
	style = ST_LEFT + LB_TEXTURES; // Style
	default = 0; // Control selected by default (only one within a display can be used)
	blinkingPeriod = 0; // Time in which control will fade out and back in. Use 0 to disable the effect.

	x = 1 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X; // Horizontal coordinates
	y = 11 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y; // Vertical coordinates
	w = 10 * GUI_GRID_CENTER_W; // Width
	h = 3 * GUI_GRID_CENTER_H; // Height

	colorBackground[] = {0.2,0.2,0.2,1}; // Fill color
	colorSelectBackground[] = {1,0.5,0,1}; // Selected item fill color
	colorSelectBackground2[] = {0,0,0,1}; // Selected item fill color (oscillates between this and colorSelectBackground)

	//sizeEx = GUI_GRID_CENTER_H; // Text size
	//font = GUI_FONT_NORMAL; // Font from CfgFontFamilies
	shadow = 0; // Shadow (0 - none, 1 - directional, color affected by colorShadow, 2 - black outline)
	colorText[] = {1,1,1,1}; // Text and frame color
	colorDisabled[] = {1,1,1,0.5}; // Disabled text color
	colorSelect[] = {1,1,1,1}; // Text selection color
	colorSelect2[] = {1,1,1,1}; // Text selection color (oscillates between this and colorSelect)
	colorShadow[] = {0,0,0,0.5}; // Text shadow color (used only when shadow is 1)

	pictureColor[] = {1,0.5,0,1}; // Picture color
	pictureColorSelect[] = {1,1,1,1}; // Selected picture color
	pictureColorDisabled[] = {1,1,1,0.5}; // Disabled picture color

	tooltip = "CT_LISTBOX"; // Tooltip text
	tooltipColorShade[] = {0,0,0,1}; // Tooltip background color
	tooltipColorText[] = {1,1,1,1}; // Tooltip text color
	tooltipColorBox[] = {1,1,1,1}; // Tooltip frame color

	period = 1; // Oscillation time between colorSelect/colorSelectBackground2 and colorSelect2/colorSelectBackground when selected

	rowHeight = 1.5 * GUI_GRID_CENTER_H; // Row height
	itemSpacing = 0; // Height of empty space between items
	maxHistoryDelay = 1; // Time since last keyboard type search to reset it
	canDrag = 1; // 1 (true) to allow item dragging

	soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1}; // Sound played when an item is selected

	// Scrollbar configuration (applied only when LB_TEXTURES style is used)
	class   //In older games this class is "ScrollBar"
	{
		width = 0; // width of ListScrollBar
		height = 0; // height of ListScrollBar
		scrollSpeed = 0.01; // scroll speed of ListScrollBar

		arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa"; // Arrow
		arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa"; // Arrow when clicked on
		border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa"; // Slider background (stretched vertically)
		thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa"; // Dragging element (stretched vertically)

		color[] = {1,1,1,1}; // Scrollbar color
	};

	onCanDestroy = "systemChat str ['onCanDestroy',_this]; true";
	onDestroy = "systemChat str ['onDestroy',_this]; false";
	onSetFocus = "systemChat str ['onSetFocus',_this]; false";
	onKillFocus = "systemChat str ['onKillFocus',_this]; false";
	onKeyDown = "systemChat str ['onKeyDown',_this]; false";
	onKeyUp = "systemChat str ['onKeyUp',_this]; false";
	onMouseButtonDown = "systemChat str ['onMouseButtonDown',_this]; false";
	onMouseButtonUp = "systemChat str ['onMouseButtonUp',_this]; false";
	onMouseButtonClick = "systemChat str ['onMouseButtonClick',_this]; false";
	onMouseButtonDblClick = "systemChat str ['onMouseButtonDblClick',_this]; false";
	onMouseZChanged = "systemChat str ['onMouseZChanged',_this]; false";
	onMouseMoving = "";
	onMouseHolding = "";

	onLBSelChanged = "systemChat str ['onLBSelChanged',_this]; false";
	onLBDblClick = "systemChat str ['onLBDblClick',_this]; false";
	onLBDrag = "systemChat str ['onLBDrag',_this]; false";
	onLBDragging = "systemChat str ['onLBDragging',_this]; false";
	onLBDrop = "systemChat str ['onLBDrop',_this]; false";
};
class RscCombo : RscListBox
{
	deletable = 0;
	fade = 0;
	access = 0;
	type = 4;
	colorSelect[] = 
	{
		0,
		0,
		0,
		1
	};
	colorText[] = 
	{
		1,
		1,
		1,
		1
	};
	colorBackground[] = 
	{
		"(profilenamespace getvariable ['IGUI_BCG_RGB_R',0.77])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_G',0.75])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_B',0.08])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_A',0.77])"
	};
	colorScrollbar[] = 
	{
		1,
		0,
		0,
		1
	};
	colorDisabled[] = 
	{
		1,
		1,
		1,
		0.25
	};
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
	tooltipColorText[] = 
	{
		1,
		1,
		1,
		1
	};
	tooltipColorBox[] = 
	{
		1,
		1,
		1,
		1
	};
	tooltipColorShade[] = 
	{
		0,
		0,
		0,
		0.65
	};
	soundSelect[] = 
	{
		"\A3\ui_f\data\sound\RscCombo\soundSelect",
		0.1,
		1
	};
	soundExpand[] = 
	{
		"\A3\ui_f\data\sound\RscCombo\soundExpand",
		0.1,
		1
	};
	soundCollapse[] = 
	{
		"\A3\ui_f\data\sound\RscCombo\soundCollapse",
		0.1,
		1
	};
	maxHistoryDelay = 1;
	class ComboScrollBar
	{
		color[] = 
		{
			1,
			1,
			1,
			1
		};
	};
	style = "0x10 + 0x200";
	font = "PuristaMedium";
	//sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	shadow = 0;
	x = 0;
	y = 0;
	w = 0.12;
	h = 0.035;
	colorSelectBackground[] = 
	{
		1,
		1,
		1,
		0.7
	};
	arrowEmpty = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_ca.paa";
	arrowFull = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_active_ca.paa";
	wholeHeight = 0.45;
	colorActive[] = 
	{
		1,
		0,
		0,
		1
	};
};
class _CT_XCOMBO : RscCombo // Xbox combo box, cannot be controlled with mouse
{
	access = 0; // Control access (0 - ReadAndWrite, 1 - ReadAndCreate, 2 - ReadOnly, 3 - ReadOnlyVerified)
	idc = CT_XCOMBO; // Control identification (without it, the control won't be displayed)
	type = CT_XCOMBO; // Type is 44
	style = ST_LEFT + LB_TEXTURES; // Style
	default = 0; // Control selected by default (only one within a display can be used)
	blinkingPeriod = 0; // Time in which control will fade out and back in. Use 0 to disable the effect.

	x = 12 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X; // Horizontal coordinates
	y = 22 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y; // Vertical coordinates
	w = 10 * GUI_GRID_CENTER_W; // Width
	h = 1 * GUI_GRID_CENTER_H; // Height

	colorSelectBackground2[] = {0,0,0,1}; 

	colorBorder[] = {1,0,1,1}; // arrow color
	colorSelectBorder[] = {1,1,1,1}; // Selected arrow color
	colorDisabledBorder[] = {0,1,1,1}; // arrow color when disabled

	sizeEx = GUI_GRID_CENTER_H; // Text size
	//font = GUI_FONT_NORMAL; // Font from CfgFontFamilies
	shadow = 0; // Shadow (0 - none, 1 - N/A, 2 - black outline)
	colorText[] = {1,1,1,1}; // Text color
	colorSelect[] = {1,1,1,1}; // Selected text color
	colorSelect2[] = {1,1,1,1}; // Selected text color (oscillates between this and colorSelect)
	colorDisabled[] = {1,1,1,0.5}; // Disabled text color

	tooltip = "CT_XCOMBO"; // Tooltip text
	tooltipColorShade[] = {0,0,0,1}; // Tooltip background color
	tooltipColorText[] = {1,1,1,1}; // Tooltip text color
	tooltipColorBox[] = {1,1,1,1}; // Tooltip frame color

	soundExpand[] = {"\A3\ui_f\data\sound\RscCombo\soundExpand",0.1,1}; // Sound played when the list is expanded
	soundCollapse[] = {"\A3\ui_f\data\sound\RscCombo\soundCollapse",0.1,1}; // Sound played when the list is collapsed
	soundSelect[] = {"\A3\ui_f\data\sound\RscCombo\soundSelect",0.1,1}; // Sound played when an item is selected

	// List title (not moved when display is dragged)
	class Title
	{
		text = "CT_XCOMBO";
		x = 12 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X; // Horizontal coordinates
		y = 21 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y; // Vertical coordinates
		w = 10 * GUI_GRID_CENTER_W; // Width
		h = 1 * GUI_GRID_CENTER_H; // Height

		colorBackground[] = {0.2,0.2,0.2,1}; // Fill color
		colorSelectBackground[] = {1,0.5,0,1}; // Selected item fill color

		colorBorder[] = {0,0,0,1}; // Border color
		colorSelectBorder[] = {0,0,0,1}; // Selected border color
		colorDisabledBorder[] = {1,1,1,1}; // Disabled border color

		//font = GUI_FONT_NORMAL; // Font from CfgFontFamilies
		size = GUI_GRID_CENTER_H; // Text size
		colorText[] = {1,1,1,1}; // Text color
		colorSelect[] = {1,1,1,1}; // Selected text color
		colorDisabled[] = {1,1,1,0.5}; // Disabled text color
	};
	// Item list displayed when arrow right is pressed while the control is in focus (not moved when display is dragged)
	class List
	{
		x = 22 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X; // Horizontal coordinates
		y = 22 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y; // Vertical coordinates
		w = 10 * GUI_GRID_CENTER_W; // Width
		h = 5 * GUI_GRID_CENTER_H; // Height

		colorBackground[] = {0.2,0.2,0.2,1}; // List fill color
		colorSelectBackground[] = {1,0.5,0,1}; // Selected item fill color (oscillates between this and colorSelectBackground2 in control root)

		colorBorder[] = {1,1,1,1}; 

		rowHeight = 1 * GUI_GRID_CENTER_H; // Row height
		sizeEx = GUI_GRID_CENTER_H; // Text size
		colorText[] = {1,1,1,1}; // Text color
		colorSelect[] = {1,1,1,1}; // Selected text color (oscillates between this and colorSelect2 in control root)
	};
	// Scrollbar configuration (applied only when LB_TEXTURES style is used)
	class ScrollBar
	{
		width = 0; // width of scrollBar
		height = 0; // height of scrollbar
		scrollSpeed = 0.01; // speed of scroll bar

		arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa"; // Arrow
		arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa"; // Arrow when clicked on
		border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa"; // Slider background (stretched vertically)
		thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa"; // Dragging element (stretched vertically)

		color[] = {1,1,1,1}; // 
	};

	onCanDestroy = "systemChat str ['onCanDestroy',_this]; true";
	onDestroy = "systemChat str ['onDestroy',_this]; false";
	onMouseEnter = "systemChat str ['onMouseEnter',_this]; false";
	onMouseExit = "systemChat str ['onMouseExit',_this]; false";
	onSetFocus = "systemChat str ['onSetFocus',_this]; false";
	onKillFocus = "systemChat str ['onKillFocus',_this]; false";
	onKeyDown = "systemChat str ['onKeyDown',_this]; false";
	onKeyUp = "systemChat str ['onKeyUp',_this]; false";
	onMouseButtonDown = "systemChat str ['onMouseButtonDown',_this]; false";
	onMouseButtonUp = "systemChat str ['onMouseButtonUp',_this]; false";
	onMouseButtonClick = "systemChat str ['onMouseButtonClick',_this]; false";
	onMouseButtonDblClick = "systemChat str ['onMouseButtonDblClick',_this]; false";
	onMouseZChanged = "systemChat str ['onMouseZChanged',_this]; false";
	onMouseMoving = "";
	onMouseHolding = "";

	onLBSelChanged = "systemChat str ['onLBSelChanged',_this]; false";
	onLBDblClick = "systemChat str ['onLBDblClick',_this]; false";
	onLBListSelChanged = "systemChat str ['onLBListSelChanged',_this]; false";
};
class dialog
{
	x=y=wherever;
        canDrag=true;
        rows=10;
        lineSpacing = 1.3;
  
};
class RscFrame : RscBase
{
	type = 0;
	idc = -1;
	style = 64;
	shadow = 2;
	colorBackground[] = 
	{
		"(profilenamespace getvariable ['IGUI_BCG_RGB_R',0.77])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_G',0.51])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_B',0.08])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_A',0.5])"
		
	};
	colorText[] = 
	{
		1,
		1,
		1,
		1
	};
	font = "PuristaMedium";
	sizeEx = 0.02;
	text = "";
	x = 0;
	y = 0;
	w = 0.3;
	h = 0.3;
};
class RscSlider : RscBase
{
	deletable = 0;
	fade = 0;
	access = 0;
	type = 3;
	style = 1024;
	color[] = 
	{
		1,
		1,
		1,
		0.8
	};
	colorActive[] = 
	{
		1,
		1,
		1,
		1
	};
	shadow = 0;
	x = 0;
	y = 0;
	w = 0.3;
	h = 0.025;
};
class RscBack : RscBase
{
	type = 0;
	idc = 124;
	style = 128;
	text = "";
	colorText[] = 
	{
		0,
		0,
		0,
		0
	};
	font = "PuristaMedium";
	sizeEx = 0;
	shadow = 0;
	x = 0.1;
	y = 0.1;
	w = 0.1;
	h = 0.1;
	colorbackground[] = 
	{
		"(profilenamespace getvariable ['IGUI_BCG_RGB_R',0.77])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_G',0.51])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_B',0.08])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_A',0.5])"
	};
};
class RscCheckBox : RscText
{
	idc = -1;
	type = 77;
	style = 0;
	checked = 0;
	x = "0.375 * safezoneW + safezoneX";
	y = "0.36 * safezoneH + safezoneY";
	w = "0.025 * safezoneW";
	h = "0.04 * safezoneH";
	color[] = 
	{
		1,
		1,
		1,
		0.7
	};
	colorFocused[] = 
	{
		1,
		1,
		1,
		1
	};
	colorHover[] = 
	{
		1,
		1,
		1,
		1
	};
	colorPressed[] = 
	{
		1,
		1,
		1,
		1
	};
	colorDisabled[] = 
	{
		1,
		1,
		1,
		0.2
	};
	colorBackground[] = 
	{
		0,
		0,
		0,
		0
	};
	colorBackgroundFocused[] = 
	{
		0,
		0,
		0,
		0
	};
	colorBackgroundHover[] = 
	{
		0,
		0,
		0,
		0
	};
	colorBackgroundPressed[] = 
	{
		0,
		0,
		0,
		0
	};
	colorBackgroundDisabled[] = 
	{
		0,
		0,
		0,
		0
	};
	textureChecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
	textureUnchecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
	textureFocusedChecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
	textureFocusedUnchecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
	textureHoverChecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
	textureHoverUnchecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
	texturePressedChecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
	texturePressedUnchecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
	textureDisabledChecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
	textureDisabledUnchecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
	tooltipColorText[] = 
	{
		1,
		1,
		1,
		1
	};
	tooltipColorBox[] = 
	{
		1,
		1,
		1,
		1
	};
	tooltipColorShade[] = 
	{
		0,
		0,
		0,
		0.65
	};
	soundEnter[] = 
	{
		"",
		0.1,
		1
	};
	soundPush[] = 
	{
		"",
		0.1,
		1
	};
	soundClick[] = 
	{
		"",
		0.1,
		1
	};
	soundEscape[] = 
	{
		"",
		0.1,
		1
	};
};
class RscTextCheckBox : RscText
{
	idc = -1;
	type = 7;
	style = 0;
	x = "0.375 * safezoneW + safezoneX";
	y = "0.36 * safezoneH + safezoneY";
	w = "0.025 * safezoneW";
	h = "0.04 * safezoneH";
	colorText[] = 
	{
		1,
		0,
		0,
		1
	};
	color[] = 
	{
		0,
		0,
		0,
		0
	};
	colorBackground[] = 
	{
		0,
		0,
		0,
		0
	};
	colorTextSelect[] = 
	{
		0,
		0.8,
		0,
		1
	};
	colorSelectedBg[] = 
	{
		"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",
		1
	};
	colorSelect[] = 
	{
		0,
		0,
		0,
		1
	};
	colorTextDisable[] = 
	{
		0.4,
		0.4,
		0.4,
		1
	};
	colorDisable[] = 
	{
		0.4,
		0.4,
		0.4,
		1
	};
	tooltipColorText[] = 
	{
		1,
		1,
		1,
		1
	};
	tooltipColorBox[] = 
	{
		1,
		1,
		1,
		1
	};
	tooltipColorShade[] = 
	{
		0,
		0,
		0,
		0.65
	};
	font = "PuristaMedium";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
	rows = 1;
	columns = 1;
	strings[] = 
	{
		"UNCHECKED"
	};
	checked_strings[] = 
	{
		"CHECKED"
	};
};
class RscButton : RscText
{
	deletable = 0;
	fade = 0;
	access = 0;
	type = 1;
	text = "";
	colorText[] = 
	{
		1,
		1,
		1,
		1
	};
	colorDisabled[] = 
	{
		1,
		1,
		1,
		0.25
	};
	colorBackground[] = 
	{
		0,
		0,
		0,
		0.5
	};
	colorBackgroundDisabled[] = 
	{
		0,
		0,
		0,
		0.5
	};
	colorBackgroundActive[] = 
	{
		0,
		0,
		0,
		1
	};
	colorFocused[] = 
	{
		0,
		0,
		0,
		1
	};
	colorShadow[] = 
	{
		0,
		0,
		0,
		0
	};
	colorBorder[] = 
	{
		0,
		0,
		0,
		1
	};
	soundEnter[] = 
	{
		"\A3\ui_f\data\sound\RscButton\soundEnter",
		0.09,
		1
	};
	soundPush[] = 
	{
		"\A3\ui_f\data\sound\RscButton\soundPush",
		0.09,
		1
	};
	soundClick[] = 
	{
		"\A3\ui_f\data\sound\RscButton\soundClick",
		0.09,
		1
	};
	soundEscape[] = 
	{
		"\A3\ui_f\data\sound\RscButton\soundEscape",
		0.09,
		1
	};
	style = 2;
	x = 0;
	y = 0;
	w = 0.095589;
	h = 0.039216;
	shadow = 2;
	font = "PuristaMedium";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	offsetX = 0;
	offsetY = 0;
	offsetPressedX = 0;
	offsetPressedY = 0;
	borderSize = 0;
};
class RscButtonMenu : RscButton
{
	idc = -1;
	type = 16;
	style = "0x02 + 0xC0";
	default = 0;
	shadow = 0;
	x = 0;
	y = 0;
	w = 0.095589;
	h = 0.039216;
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,1)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,1)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,1)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,1)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,1)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,1)";
	colorBackground[] = 
	{
		"(profilenamespace getvariable ['IGUI_BCG_RGB_R',0.77])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_G',0.51])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_B',0.08])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_A',0.5])"
	};
	colorBackgroundFocused[] = 
	{
		1,
		1,
		1,
		1
	};
	colorBackground2[] = 
	{
		0.75,
		0.75,
		0.75,
		1
	};
	color[] = 
	{
		1,
		1,
		1,
		1
	};
	colorFocused[] = 
	{
		0,
		0,
		0,
		1
	};
	color2[] = 
	{
		0,
		0,
		0,
		1
	};
	colorText[] = 
	{
		1,
		1,
		1,
		1
	};
	colorDisabled[] = 
	{
		1,
		1,
		1,
		0.25
	};
	textSecondary = "";
	colorSecondary[] = 
	{
		1,
		1,
		1,
		1
	};
	colorFocusedSecondary[] = 
	{
		0,
		0,
		0,
		1
	};
	color2Secondary[] = 
	{
		0,
		0,
		0,
		1
	};
	colorDisabledSecondary[] = 
	{
		1,
		1,
		1,
		0.25
	};
	sizeExSecondary = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	fontSecondary = "PuristaLight";
	period = 1.2;
	periodFocus = 1.2;
	periodOver = 1.2;
	size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	tooltipColorText[] = 
	{
		1,
		1,
		1,
		1
	};
	tooltipColorBox[] = 
	{
		1,
		1,
		1,
		1
	};
	tooltipColorShade[] = 
	{
		0,
		0,
		0,
		0.65
	};
	class TextPos
	{
		left = "0.25 * (((safezoneW / safezoneH) min 1.2) / 40)";
		top = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
		right = 0.005;
		bottom = 0;
	};
	class Attributes
	{
		font = "PuristaLight";
		color = "#E5E5E5";
		align = "left";
		shadow = "false";
	};
	class ShortcutPos
	{
		left = "5.25 * (((safezoneW / safezoneH) min 1.2) / 40)";
		top = 0;
		w = "1 * (((safezoneW / safezoneH) min 1.2) / 40)";
		h = "1 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	};
	soundEnter[] = 
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundEnter",
		0.09,
		1
	};
	soundPush[] = 
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundPush",
		0.09,
		1
	};
	soundClick[] = 
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundClick",
		0.09,
		1
	};
	soundEscape[] = 
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundEscape",
		0.09,
		1
	};
};
class RscButtonMenuOK : RscButton
{
	idc = 1;
	x = 0.01;
	y = 0.88;
	w = 0.1;
	h = 0.05;
	shortcuts[] = 
	{
		"0x00050000 + 0",
		28,
		57,
		156
	};
	default = 1;
	colorFocused[] = {
		"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_A',0.5])"
		};
	
	text = "OK";
	soundPush[] = 
	{
		"\A3\ui_f\data\sound\RscButtonMenuOK\soundPush",
		0.09,
		1
	};
};
class RscButtonMenuCancel : RscButton
{
	idc = 2;
	x = 0.88;
	y = 0.88;
	w = 0.1;
	h = 0.05;
	shortcuts[] = 
	{
		"0x00050000 + 1"
	};
	colorFocused[] = {
		"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_A',0.5])"
		};
	text = "Cancel";
};
class RscShortcutButton  : RscButton
{
	deletable = 0;
	fade = 0;
	type = 16;
	x = 0.1;
	y = 0.1;
	class HitZone
	{
		left = 0;
		top = 0;
		right = 0;
		bottom = 0;
	};
	class ShortcutPos
	{
		left = 0;
		top = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 20) - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
		w = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1) * (3/4)";
		h = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	};
	class TextPos
	{
		left = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1) * (3/4)";
		top = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 20) - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
		right = 0.005;
		bottom = 0;
	};
	shortcuts[] = 
	{
	};
	textureNoShortcut = "#(argb,8,8,3)color(0,0,0,0)";
	color[] = 
	{
		1,
		1,
		1,
		1
	};
	colorFocused[] = 
	{
		1,
		1,
		1,
		1
	};
	color2[] = 
	{
		0.95,
		0.95,
		0.95,
		1
	};
	colorDisabled[] = 
	{
		1,
		1,
		1,
		0.25
	};
	colorBackground[] = 
	{
		"(profilenamespace getvariable ['IGUI_BCG_RGB_R',0.77])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_G',0.51])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_B',0.08])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_A',0.5])"
	};
	colorBackgroundFocused[] = 
	{
		"(profilenamespace getvariable ['IGUI_BCG_RGB_R',0.77])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_G',0.51])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_B',0.08])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_A',0.5])"
	};
	colorBackground2[] = 
	{
		1,
		1,
		1,
		1
	};
	soundEnter[] = 
	{
		"\A3\ui_f\data\sound\RscButton\soundEnter",
		0.09,
		1
	};
	soundPush[] = 
	{
		"\A3\ui_f\data\sound\RscButton\soundPush",
		0.09,
		1
	};
	soundClick[] = 
	{
		"\A3\ui_f\data\sound\RscButton\soundClick",
		0.09,
		1
	};
	soundEscape[] = 
	{
		"\A3\ui_f\data\sound\RscButton\soundEscape",
		0.09,
		1
	};
	class Attributes
	{
		font = "PuristaMedium";
		color = "#E5E5E5";
		align = "left";
		shadow = "true";
	};
	idc = -1;
	style = 0;
	default = 0;
	shadow = 1;
	w = 0.183825;
	h = "((((safezoneW / safezoneH) min 1.2) / 1.2) / 20)";
	textSecondary = "";
	colorSecondary[] = 
	{
		1,
		1,
		1,
		1
	};
	colorFocusedSecondary[] = 
	{
		1,
		1,
		1,
		1
	};
	color2Secondary[] = 
	{
		0.95,
		0.95,
		0.95,
		1
	};
	colorDisabledSecondary[] = 
	{
		1,
		1,
		1,
		0.25
	};
	sizeExSecondary = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	fontSecondary = "PuristaMedium";
	animTextureDefault = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
	animTextureNormal = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
	animTextureDisabled = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
	animTextureOver = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\over_ca.paa";
	animTextureFocused = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\focus_ca.paa";
	animTexturePressed = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\down_ca.paa";
	periodFocus = 1.2;
	periodOver = 0.8;
	period = 0.4;
	font = "PuristaMedium";
	size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	//sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	text = "";
	action = "";
	class AttributesImage
	{
		font = "PuristaMedium";
		color = "#E5E5E5";
		align = "left";
	};
};
class RscShortcutButtonMain :RscButton
{
	idc = -1;
	style = 0;
	default = 0;
	w = 0.313726;
	h = 0.104575;
	color[] = 
	{
		1,
		1,
		1,
		1
	};
	colorDisabled[] = 
	{
		1,
		1,
		1,
		0.25
	};
	class HitZone
	{
		left = 0;
		top = 0;
		right = 0;
		bottom = 0;
	};
	class ShortcutPos
	{
		left = 0.0145;
		top = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 20) - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2)) / 2";
		w = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2) * (3/4)";
		h = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2)";
	};
	class TextPos
	{
		left = "(((safezoneW / safezoneH) min 1.2) / 32) * 1.5";
		top = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 20)*2 - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2)) / 2";
		right = 0.005;
		bottom = 0;
	};
	animTextureNormal = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButtonMain\normal_ca.paa";
	animTextureDisabled = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButtonMain\disabled_ca.paa";
	animTextureOver = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButtonMain\over_ca.paa";
	animTextureFocused = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButtonMain\focus_ca.paa";
	animTexturePressed = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButtonMain\down_ca.paa";
	animTextureDefault = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButtonMain\normal_ca.paa";
	period = 0.5;
	font = "PuristaMedium";
	size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2)";
	//sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2)";
	text = "";
	action = "";
	class Attributes
	{
		font = "PuristaMedium";
		color = "#E5E5E5";
		align = "left";
		shadow = "false";
	};
	class AttributesImage
	{
		font = "PuristaMedium";
		color = "#E5E5E5";
		align = "false";
	};
};
class MyActiveText : RscButton
{
	idc = -1;
	type = CT_ACTIVETEXT;
	style = ST_LEFT;
	x = 0.75; y = 0.5;
	w = 0.2; h = 0.035;
	font = FontM;
	sizeEx = 0.024;
	color[] = { 1, 1, 1, 1 };
	colorActive[] = { 1, 0.2, 0.2, 1 };
	soundEnter[] = { "", 0, 1 };   // no sound
	soundPush[] = { "", 0, 1 };
	soundClick[] = { "", 0, 1 };
	soundEscape[] = { "", 0, 1 };
	action = "hint ""Good choice!""";
	text = "Text";
	default = true;
};
class RscControlsGroup : RscBack
{
	deletable = 0;
	fade = 0;
	class VScrollbar
	{
		color[] = 
		{
			1,
			1,
			1,
			1
		};
		width = 0.021;
		autoScrollEnabled = 1;
	};
	class HScrollbar
	{
		color[] = 
		{
			1,
			1,
			1,
			1
		};
		height = 0.028;
	};
	class Controls
	{
	};
	type = 15;
	idc = -1;
	x = 0;
	y = 0;
	w = 1;
	h = 1;
	shadow = 0;
	style = 16;
};
class RscProgress : RscBase
{
	type = 8;
	style = 0;
	colorFrame[] = {0,0,0,1};
	colorBar[] = {1,1,1,1};
	texture = "#(argb,8,8,3)color(1,1,1,1)";
	w = 1;
	h = 0.03;
};
class myProgressBar : RscBase
{
	idd = -1;
	onLoad = "((_this select 0) displayCtrl -1) progressSetPosition 0.5";
	class Controls
	{
		class Progress: RscProgress 
		{
			idc = -1;
			x = 0;
			y = 0.3;
		};
	};
};