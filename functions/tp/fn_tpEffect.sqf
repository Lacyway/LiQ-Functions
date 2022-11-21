params ["_location"];

if (isNil "_location") exitWith { diag_log "LIQ ERROR: Variable missing in fn_tpEffect" };

titleText [format ["Relocating to %1...", _location], "BLACK OUT", 1];
player allowDamage false;
sleep 4;
player allowDamage true;
titleText [format ["Relocating to %1...", _location], "BLACK IN", 1];