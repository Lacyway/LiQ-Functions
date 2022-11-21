params ["_answer"];
_inProgress = missionNamespace getVariable ["votingInProgress", false];

if (isNil "_answer" || isNil "_inProgress") exitWith { diag_log "LIQ ERROR: Variable missing in fn_initVote" };

if (_inProgress == true) then {
	if (_answer == true) then {
		_UID = getPlayerUID player;
		if (_UID in voters) exitWith {systemChat "You have already voted."};
		systemChat "You have voted yes.";
		voters pushBack _UID;
		yesvotes = yesVotes + 1;
	} else {
		_UID = getPlayerUID player;
		if (_UID in voters) exitWith {systemChat "You have already voted."};
		systemChat "You have voted no.";
		voters pushBack _UID;
		noVotes = noVotes + 1;
	};
};

if (_answer == true && _inProgress == false) then {
	systemChat "Starting vote to end mission.";
	missionNamespace setVariable ["votingInProgress", true, true];
	missionNamespace setVariable ["yesVotes", 1, true];
	missionNamespace setVariable ["noVotes", 0, true];
	missionNamespace setVariable ["voters", [], true];
	_UID = getPlayerUID player;
	voters pushBack _UID;
	[] remoteExec ["LIQ_fnc_voteLoop", 2];
};