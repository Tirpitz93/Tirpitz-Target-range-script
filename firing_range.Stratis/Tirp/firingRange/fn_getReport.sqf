#define fileName "fn_getReport.sqf"
#include "MACRO.h";

		ID;
		_report = GET("report", []);
		copyToClipboard str _report;