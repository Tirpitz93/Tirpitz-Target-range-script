private _ret = [];
_container = "";

if ((typeName _this) == "ARRAY") then {
	
	_container = (_this select 1);
	_clsName = (_this select 0);
	// _ret pushBack _clsName;
} else {_container = _this};

hint typeName _container;
_ret pushBack (itemCargo _container);
_ret pushBack (magazineCargo _container);
_ret pushBack (weaponsItemsCargo  _container);
_ret pushBack (backpackCargo _container);

private _subConts = [];

{
	// _subCont pushBack );
	private _cargo = (_x call TIRP_fnc_resupplyGetContainerCargoAll);
	_subConts pushBack [(_x select 0),_cargo];
} forEach (everyContainer _container);
_ret pushBack _subConts;
hintSilent str _ret;
_ret;