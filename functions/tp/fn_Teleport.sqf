_menu = findDisplay 9000;
_tpList = _menu displayCtrl 9001;

_tpIndex = lbCurSel _tpList;
_tpData = _tpList lbData _tpIndex;
_tpType = _tpList lbValue _tpIndex;

if (_tpIndex == -1) exitWith {hint "No teleport location is selected."};

switch (_tpType) do {
	case 0: {
		closeDialog 2;
		[_tpList lbText _tpIndex] spawn LIQ_fnc_tpEffect;
		sleep 2;
		player setPos parseSimpleArray _tpData;	
	};
	case 1: {
		_vehVar = missionNamespace getVariable [_tpData, 0];
		_freeSeats = _vehVar emptyPositions "";

		if (_freeSeats > 0) then {
			closeDialog 2;
			[_tpList lbText _tpIndex] spawn LIQ_fnc_tpEffect;
			sleep 2;
			player moveInCargo _vehVar;
		} else {
			closeDialog 2;
			[_tpList lbText _tpIndex] spawn LIQ_fnc_tpEffect;
			sleep 2;
			hint "No available seats, teleporting near vehicle.";
			player setPos ((getPos _vehVar) findEmptyPosition [1,25]);
		};
	};
	case 2: {
		_tpData = getPos (leader player);
		_tpData = _tpData findEmptyPosition [1,10];
		closeDialog 2;
		[_tpList lbText _tpIndex] spawn LIQ_fnc_tpEffect;
		sleep 2;
		player setPos _tpData;
	};
	case 3: {
		_target = _tpData call BIS_fnc_objectFromNetId;
		_target = getPos _target;
		_target = _target findEmptyPosition [1,10];
		closeDialog 2;
		[_tpList lbText _tpIndex] spawn LIQ_fnc_tpEffect;
		sleep 2;
		player setPos _target;
	};
};