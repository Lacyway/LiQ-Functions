_menu = findDisplay 9000;
_mapButton = _menu displayCtrl 9010;
_map = _menu displayCtrl 9011;
_status = _map getVariable "maximized";

if (_status isEqualTo true) then {
	_map ctrlMapSetPosition [(0.644375 * safezoneW + safezoneX), (0.335 * safezoneH + safezoneY), (0.0103125 * safezoneW), (0.33 * safezoneH)];
	_map CtrlSetFade 1;
	_map ctrlCommit 0;
	_mapButton ctrlSetPosition [(0.644375 * safezoneW + safezoneX), (0.335 * safezoneH + safezoneY), (0.0103125 * safezoneW), (0.33 * safezoneH)];
	_mapButton ctrlCommit 0;
	_map setVariable ["maximized", false];
	_map ctrlShow false;
	_mapButton ctrlSetText ">";
	_mapButton ctrlSetTooltip "Show map.";
} else {
	_map ctrlMapSetPosition [(0.644375 * safezoneW + safezoneX), (0.335 * safezoneH + safezoneY), (0.165 * safezoneW), (0.33 * safezoneH)];
	_map CtrlSetFade 0;
	_map ctrlCommit 0;
	_mapButton ctrlSetPosition [(0.809375 * safezoneW + safezoneX), (0.335 * safezoneH + safezoneY), (0.0103125 * safezoneW), (0.33 * safezoneH)];
	_mapButton ctrlCommit 0;
	_map setVariable ["maximized", true];
	_map ctrlShow true;
	_mapButton ctrlSetText "<";
	_mapButton ctrlSetTooltip "Hide map.";
};