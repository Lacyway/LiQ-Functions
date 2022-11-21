params ["_hostage", "_rescuer", "_actionID"];
if (isNull _hostage || isNull _rescuer || isNil "_actionID") exitWith { diag_log "LIQ ERROR: Variable missing in fn_saveHostage" };

_group = group _rescuer;

[_hostage, ""] remoteExec ["switchMove", 0, true]; 
_hostage enableAI "ALL";  
_hostage setCaptive false;
[_hostage] joinSilent _group;
_hostage removeAction _actionID;