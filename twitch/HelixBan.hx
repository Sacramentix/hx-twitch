package twitch;

/**
	Information about the ban of a user.
**/
@:jsRequire("twitch", "HelixBan") extern class HelixBan {
	function new(_data:twitch.lib.api.helix.moderation.helixban.HelixBanData, client:ApiClient);
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
	/**
		The date when the ban will expire; null for permanent bans.
	**/
	final expiryDate : Null<js.lib.Date>;
	static var prototype : HelixBan;
}