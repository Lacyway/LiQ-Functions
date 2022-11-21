missionNamespace setVariable ["TP_Locations", [], true];
missionNamespace setVariable ["TP_Vehicles", [], true];
missionNamespace setVariable ["TP_LeaderTp", false, true];
missionNamespace setVariable ["TP_SquadTp", false, true];

{
	_varName = getText (missionConfigFile >> "Respawns" >> "Vehicles" >> ConfigName _x >> "variable");
	_name = getText (missionConfigFile >> "Respawns" >> "Vehicles" >> ConfigName _x >> "name");
	_toPush = parseSimpleArray format ["['%1', '%2']", _varName, _name];
	TP_Vehicles pushBack _toPush;
} forEach ("true" configClasses (missionConfigFile >> "Respawns" >> "Vehicles"));

{
	_name = getText (missionConfigFile >> "Respawns" >> "Locations" >> ConfigName _x >> "name");
	_location = getArray (missionConfigFile >> "Respawns" >> "Locations" >> ConfigName _x >> "location");
	_toPush = parseSimpleArray format ["['%1', '%2']", _name, _location];
	TP_Locations pushBack _toPush;
} forEach ("true" configClasses (missionConfigFile >> "Respawns" >> "Locations"));

VT_Timeout = getNumber (missionConfigFile >> "Voting" >> "Settings" >> "timeout");
VT_Percentage = getNumber (missionConfigFile >> "Voting" >> "Settings" >> "percentage");

diag_log "LIQ: Init complete.";