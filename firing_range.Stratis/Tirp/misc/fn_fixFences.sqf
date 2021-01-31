/* 
	Fix fence Script by Big_Wilk
	edit by: Lonja: adds multiple type fence support

*/
BW_Repair_Fence = {
{_x hideObject true} foreach BW_Fence_In_Area; 
};

if (!isServer) exitWith {};
//Options:
_MarkerName = "fixFences"; // The centre of the area to be affected.
_RadiusAroundMarkerName = 1200; // Radius around your marker to be affected.
_RemoveType = ["Land_New_WiredFence_10m_Dam_F"]; // Classname of object to be removed.
_ReplaceType = ["Land_New_WiredFence_10m_F"]; // Classname of object that will replaced removed object. 


// Object to be removed:
private ["_pos","_replacement","_dir","_dirVector","_vectorUp"];
BW_Fence_In_Area = nearestObjects [getmarkerpos _MarkerName, _RemoveType, _RadiusAroundMarkerName]; // < Object to be removed Classname
publicVariable "BW_Fence_In_Area";
//hint format ["%1",count BW_Fence_In_Area]; // Counts number of fences changed debug.
[[],"BW_Repair_Fence",true,true] spawn BIS_fnc_MP;

// The Replacement Object:
{
_pos = getPosASL _x; 
_dirVector = vectorDir _x;
_vectorUp = vectorUp _x;

_replacement = createVehicle [_ReplaceType select (_RemoveType find typeOf _x) , [_pos select 0, _pos select 1, _pos select 2], [], 0, "CAN_COLLIDE"]; // < Replacement Classname

_replacement setPosASL _pos; 

_replacement setVectorDirAndUp [[_dirVector select 0, _dirVector select 1, _dirVector select 2],[_vectorUp select 0, _vectorUp select 1, _vectorUp select 2]];

} foreach BW_Fence_In_Area;