
#ifndef tirpDebug
#define tirpDebug 0
#endif
#ifndef fileName
#define fileName "UNKNOWN"
#endif
#define ERROR(MSG) if (tirpDebug >= 1) then {diag_log ("Tirp ERROR ("+  fileName + "): " + MSG );hint ("Tirp ERROR ("+  fileName+"): " + MSG );}

#define INFO(MSG)  if (tirpDebug >= 2) then {diag_log ("Tirp INFO  (" + fileName + "): " + MSG );}

#define DEBUG(MSG) if (tirpDebug >= 3) then {diag_log ("Tirp DEBUG ("+  fileName + "): " + MSG );hint ("Tirp DEBUG ("+ fileName+"): " + MSG );}
