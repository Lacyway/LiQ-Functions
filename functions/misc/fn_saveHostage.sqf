params ["_hostage", "_rescuer", "_actionID"];

_group = group _rescuer;

[_hostage, ""] remoteExec ["switchMove", 0, true]; 
_hostage enableAI "ALL";  
_hostage setCaptive false;
[_hostage] joinSilent _group;
_hostage removeAction _actionID;