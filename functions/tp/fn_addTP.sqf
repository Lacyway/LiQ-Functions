createDialog "AddTP";
disableSerialization;

_menu = findDisplay 9020;
_nameEdit = _menu displayCtrl 9021;
_locationEdit = _menu displayCtrl 9022;

_playerPos = getPos player;

_locationEdit ctrlSetText format ["%1", _playerPos];