waitUntil {!isNull (findDisplay 46)};
(findDisplay 46) displayAddEventHandler ["KeyDown", "if ((_this select 1) == 21 && isNull findDisplay 9020) then {[] spawn LIQ_fnc_tpMenu};"]