_menu = findDisplay 9020;
_nameEdit = _menu displayCtrl 9021;
_locationEdit = _menu displayCtrl 9022;

_name = ctrlText _nameEdit;
_location = ctrlText _locationEdit;

TP_Locations pushBack [_name, _location];

call LIQ_fnc_refreshList;