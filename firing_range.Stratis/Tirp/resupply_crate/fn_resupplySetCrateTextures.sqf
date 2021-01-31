params ["_crate","_textures", ["_global", true]];
// systemChat str _this;

if ((typeOf _crate) call TIRP_fnc_resupplyHasSwitchedTextures) then {
// systemChat "switched";
	if (_global) then {
	// systemChat "global";
		_crate setObjectTextureGLOBAL [0,_textures select 1];
		_crate setObjectTextureGLOBAL [1,_textures select 0];
	} else {
	// systemChat "Local";
		_crate setObjectTexture [0,_textures select 1];
		_crate setObjectTexture [1,_textures select 0];
	};

} else {
	// systemChat "not switched";
	if (_global) then {
	// systemChat "global";
		_crate setObjectTextureGLOBAL [1,_textures select 1];
		_crate setObjectTextureGLOBAL [0,_textures select 0];

	} else {
	// systemChat "Local";
		_crate setObjectTexture [1,_textures select 1];
		_crate setObjectTexture [0,_textures select 0];
	}
};

