package twitch;

/**
	A relation of a user following a broadcaster.
**/
@:jsRequire("twitch", "HelixFollow") extern class HelixFollow {
	function new(_data:twitch.lib.api.helix.user.helixfollow.HelixFollowData, client:ApiClient);
	private var _data : twitch.lib.api.helix.user.helixfollow.HelixFollowData;
	private final _client : ApiClient;
	/**
		The user ID of the following user.
	**/
	final userId : String;
	/**
		The display name of the following user.
	**/
	final userDisplayName : String;
	/**
		Retrieves the data of the following user.
	**/
	function getUser():js.lib.Promise<Null<HelixUser>>;
	/**
		The user ID of the followed broadcaster.
	**/
	final followedUserId : String;
	/**
		The display name of the followed user.
	**/
	final followedUserDisplayName : String;
	/**
		Retrieves the data of the followed broadcaster.
	**/
	function getFollowedUser():js.lib.Promise<Null<HelixUser>>;
	/**
		The date when the user followed the broadcaster.
	**/
	final followDate : js.lib.Date;
	static var prototype : HelixFollow;
}