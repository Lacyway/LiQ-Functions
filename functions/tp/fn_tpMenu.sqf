createDialog "TpMenu";
disableSerialization;

_isAdmin = serverCommandAvailable "#kick";

_menu = findDisplay 9000;
_tpList = _menu displayCtrl 9001;
_tpButton = _menu displayCtrl 9002;
_addButton = _menu displayCtrl 9003;
_deleteButton = _menu displayCtrl 9004;
_groupTpCheck = _menu displayCtrl 9006;
_groupTpCheckText = _menu displayCtrl 9007;
_leaderTpCheck = _menu displayCtrl 9008;
_leaderTpCheckText = _menu displayCtrl 9009;
_adminFrame = _menu displayCtrl 9012;
_map = _menu displayCtrl 9011;

_map ctrlShow false;
_map setVariable ["maximized", false];
_map ctrlMapAnimAdd [0, 0.05, player];
ctrlMapAnimCommit _map;

if (TP_LeaderTp == true) then {
	_groupTpCheck cbSetChecked true;
};

if (TP_SquadTp == true) then {
	_leaderTpCheck cbSetChecked true;
};

_groupTpCheck ctrlAddEventHandler ["CheckedChanged", {
	params ["_control", "_checked"];
	if (_checked isEqualTo 1) then
	{
		TP_LeaderTp = true;
	} else
	{
		TP_LeaderTp = false;
	};
}];

_leaderTpCheck ctrlAddEventHandler ["CheckedChanged", {
	params ["_control", "_checked"];
	if (_checked isEqualTo 1) then
	{
		TP_SquadTp = true;
	} else
	{
		TP_SquadTp = false;
	};
}];

_tpList ctrlAddEventHandler ["LBSelChanged", {
	params ["_control", "_lbCurSel", "_lbSelection"];
	_menu = findDisplay 9000;
	_map = _menu displayCtrl 9011;
	_data = _control lbData _lbCurSel;
	_tpType = _control lbValue _lbCurSel;

	switch (_tpType) do {
		case 0: {
			_map ctrlMapAnimAdd [0, 0.05, parseSimpleArray _data];
			ctrlMapAnimCommit _map;
		};
		case 1: {
			_var = missionNamespace getVariable _data;
			_map ctrlMapAnimAdd [0, 0.05, getPos _var];
			ctrlMapAnimCommit _map;
		};
		case 3: {
			_target = _data call BIS_fnc_objectFromNetId;
			_target = getPos _target;
			_map ctrlMapAnimAdd [0, 0.05, _target];
			ctrlMapAnimCommit _map;
		};
	}
}];

if (_isAdmin == false && isMultiplayer) then {
	_addButton ctrlShow false;
	_deleteButton ctrlShow false;
	_groupTpCheck ctrlShow false;
	_groupTpCheckText ctrlShow false;
	_leaderTpCheck ctrlShow false;
	_leaderTpCheckText ctrlShow false;
	_adminFrame ctrlShow false;
};

call LIQ_fnc_refreshList;