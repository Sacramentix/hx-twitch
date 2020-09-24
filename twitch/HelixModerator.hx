package twitch;

/**
	Information about the moderator status of a user.
**/
@:jsRequire("twitch", "HelixModerator") extern class HelixModerator {
	function new(_data:twitch.lib.api.helix.moderation.helixmoderator.HelixModeratorData, client:ApiClient);
	private final _data : Dynamic;
	private final _client : ApiClient;
	/**
		The ID of the user.
	**/
	final userId : String;
	/**
		Retrieves more data about the user.
	**/
	function getUser():js.lib.Promise<Null<HelixUser>>;
	/**
		The name of the user.
	**/
	final userName : String;
	static var prototype : HelixModerator;
}