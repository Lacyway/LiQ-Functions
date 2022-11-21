_menu = findDisplay 9000;
_tpList = _menu displayCtrl 9001;

lbClear _tpList;

{
	_varName = _x select 0;
	_name = _x select 1;
	_index = _tpList lbAdd _name;
	_tpList lbSetData [_index, _varName];
	_tpList lbSetValue [_index, 1];
	_tpList lbSetPicture [_index, "\A3\ui_f\data\map\markers\nato\respawn_armor_ca.paa"];
	_tpList lbSetColor [_index, [0,0.3,0.6,1]];
} forEach TP_Vehicles;

{
	_name = _x select 0;
	_location = _x select 1;
	_index = _tpList lbAdd _name;
	_tpList lbSetData [_index, _location];
	_tpList lbSetValue [_index, 0];
	_tpList lbSetPicture [_index, "\A3\ui_f\data\map\markers\handdrawn\flag_CA.paa"];
	_tpList lbSetColor [_index, [0,0.5,0,1]];
} forEach TP_Locations;

if (TP_LeaderTp == true) then {
	_groupTpCheck cbSetChecked true;
	if (leader group player isNotEqualTo player) then {
		_index = _tpList lbAdd format ["(SL) %1", name (leader player)];
		_tpList lbSetData [_index, vehicleVarName (leader player)];
		_tpList lbSetValue [_index, 2];
	};	
};

if (TP_SquadTp == true && leader group player == player) then {
	{
		_index = _tpList lbAdd format ["(Group) %1", name _x];
		_tpList lbSetData [_index, _x call BIS_fnc_netId];
		_tpList lbSetValue [_index, 3];
	} forEach (units group player) - [player];
};