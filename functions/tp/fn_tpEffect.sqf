params ["_location"];

titleText [format ["Relocating to %1...", _location], "BLACK OUT", 1];
player allowDamage false;
sleep 4;
player allowDamage true;
titleText [format ["Relocating to %1...", _location], "BLACK IN", 1];