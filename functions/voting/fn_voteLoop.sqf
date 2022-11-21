_timeOut = VT_Timeout;
_players = count allPlayers;
_neededPlayers = round (_players * (VT_Percentage/100));
_initMsg = format ["%1 has started a vote to end the mission. %2 votes are needed to end the vote.", name player, _neededPlayers];
[_initMsg] remoteExecCall ["systemChat"];

while { _timeOut > 0 && (yesVotes < _neededPlayers) } do {
	sleep 5;
	_timeOut = _timeOut - 5;
	_msg = format ["%1/%2 votes to end mission. Will timeout in %3 seconds. %4 people have voted no.", yesVotes, _neededPlayers, _timeout, noVotes];
	[_msg] remoteExecCall ["systemChat"];
};

if (yesVotes >= _neededPlayers) exitWith {"EveryoneLost" call BIS_fnc_endMissionServer};

["Vote to end mission has failed."] remoteExecCall ["systemChat", -2];
missionNamespace setVariable ["votingInProgress", nil, true];
missionNamespace setVariable ["yesVotes", nil, true];
missionNamespace setVariable ["noVotes", nil, true];
missionNamespace setVariable ["voters", nil, true];