#define fileName "fn_diag_saveCompile.sqf"
#include "MACRO.h"
//DEBUG2("compiling...");
//white and blacklist
	//items
	
	
	
	_whiteItemsIDC = ("setupWhitelist" call tirp_cfg_nameToIDC);//0.5
	_blackItemsIDC = ("setupBlacklist" call tirp_cfg_nameToIDC);//0.5
	_whiteStancesIDC = ("setupWhitelistStances" call tirp_cfg_nameToIDC);//0.5
	_blackStancesIDC = ("setupBlacklistStances" call tirp_cfg_nameToIDC);//0.5
	_whiteFiremodesIDC = ("setupWhitelistFiremodes" call tirp_cfg_nameToIDC);//0.5
	_blackFiremodesIDC = ("setupBlacklistFiremodes" call tirp_cfg_nameToIDC);//0.5
	
	_itemWhite = _whiteItemsIDC call tirp_fnc_diag_lbToArray;
	_blackItems = _blackItemsIDC call tirp_fnc_diag_lbToArray;
	_whiteStances = _whiteStancesIDC call tirp_fnc_diag_lbToArray;
	_blackStances = _blackStancesIDC call tirp_fnc_diag_lbToArray;
	_whiteFiremodes = _whiteFiremodesIDC call tirp_fnc_diag_lbToArray;
	_blackFiremodes = _blackFiremodesIDC call tirp_fnc_diag_lbToArray;
	//DEBUG2(str _itemWhite);
	
	
	_minRange = round sliderPosition ("setupMinRangeSlider" call tirp_cfg_nameToIDC);
	_maxRange = round sliderPosition ("setupMaxRangeSlider" call tirp_cfg_nameToIDC);
	_numTgts = round sliderPosition ("setupNumTgtsSlider" call tirp_cfg_nameToIDC);
	//DEBUG2(str _numTgts);
	_sequence = lbData [("setupSequenceSelect" call tirp_cfg_nameToIDC),(lbCurSel ("setupSequenceSelect" call tirp_cfg_nameToIDC)) ];
	//DEBUG2(str _sequence);
	_lane = parseNumber lbData [("setupLaneSelect" call tirp_cfg_nameToIDC), (lbCurSel ("setupLaneSelect" call tirp_cfg_nameToIDC))];
	//DEBUG2( "the currently save lane is: "  +str _lane);
	_data = [_minRange, _maxRange, _numTgts, [0],_lane,_itemWhite, _blackItems, _whiteStances, _blackStances, _whiteFiremodes, _blackFiremodes];
	//DEBUG2("saved data is: " +str _data);
	copyToClipboard str _data;
	
	_data;