_handle = createDialog "tirp_diag_rangeSetup";
_index = profileNamespace getVariable ["tirp_FD_currentMissionSelectionID", 0];
_index call tirp_fnc_diag_dialogSetupLoad;