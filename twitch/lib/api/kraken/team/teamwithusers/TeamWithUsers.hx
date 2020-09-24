package twitch.lib.api.kraken.team.teamwithusers;

@:jsRequire("twitch/lib/API/Kraken/Team/TeamWithUsers", "TeamWithUsers") extern class TeamWithUsers extends twitch.lib.api.kraken.team.team.Team {
	function new();
	/**
		The list of users in the team.
	**/
	function getUsers():js.lib.Promise<Array<twitch.User>>;
	static var prototype : TeamWithUsers;
}