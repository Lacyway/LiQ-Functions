_menu = findDisplay 9000;
_tpList = _menu displayCtrl 9001;

_tpIndex = lbCurSel _tpList;
_tpType = _tpList lbValue _tpIndex;

if (_tpIndex == -1) exitWith {hint "No teleport location is selected."};
if (_tpType != 0) exitWith {hint "You can only delete teleport locations."};

TP_Locations deleteAt _tpIndex - count TP_Vehicles;

call LIQ_fnc_refreshList;