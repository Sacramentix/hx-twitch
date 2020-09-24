package twitch.lib.api.kraken.team.team;

/**
	A Twitch team.
**/
@:jsRequire("twitch/lib/API/Kraken/Team/Team", "Team") extern class Team {
	function new(_data:TeamData, client:twitch.ApiClient);
	private var _data : TeamData;
	private final _client : twitch.ApiClient;
	/**
		The ID of the team.
	**/
	final id : String;
	/**
		The background url of the team.
	**/
	final background : String;
	/**
		The banner url of the team.
	**/
	final banner : String;
	/**
		The date when the team was created.
	**/
	final creationDate : js.lib.Date;
	/**
		The last date when the team changed anything.
	**/
	final updateDate : js.lib.Date;
	/**
		The name of the team.
	**/
	final name : String;
	/**
		The info of the team.
	**/
	final info : String;
	/**
		The display name of the team.
	**/
	final displayName : String;
	/**
		The URL to the profile picture of the team.
	**/
	final logoUrl : String;
	function getUsers():js.lib.Promise<Array<twitch.User>>;
	static var prototype : Team;
}