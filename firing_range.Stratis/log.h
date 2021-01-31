
#ifndef tirpDebug
#define tirpDebug 0
#endif

#define ERROR(MSG) if (tirpDebug >= 1) then {diag_log ("Tirp ERROR: " + MSG )}
#define INFO(MSG)  if (tirpDebug >= 2) then {diag_log ("Tirp INFO: "  + MSG )}
#define DEBUG(MSG) if (tirpDebug >= 3) then {diag_log ("Tirp DEBUG: " + MSG )}
