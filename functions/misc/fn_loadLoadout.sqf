_savedLoadout = missionNamespace getVariable ["SavedLoadout", nil];
if (isNil "_savedLoadout") exitWith {};

player setUnitLoadout [_savedLoadout, true];