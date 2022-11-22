_savedLoadout = missionNamespace getVariable ["SavedLoadout", nil];
if (isNil "_savedLoadout") then {
	missionNamespace setVariable ["SavedLoadout", [], false];
	SavedLoadout = getUnitLoadout player;
	player addEventHandler ["Respawn", {
		params ["_unit", "_corpse"];
		call LIQ_fnc_loadLoadout;
	}];
} else {
	SavedLoadout = getUnitLoadout player;
};