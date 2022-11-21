_menu = findDisplay 9000;
_tpList = _menu displayCtrl 9001;

_tpIndex = lbCurSel _tpList;

if (_tpIndex == -1) exitWith {hint "No teleport location is selected."};

TP_Locations deleteAt _tpIndex;

call LIQ_fnc_refreshList;