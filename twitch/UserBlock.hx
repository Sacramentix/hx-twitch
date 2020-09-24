package twitch;

/**
	A relation of a previously givn user blocking another user.
**/
@:jsRequire("twitch", "UserBlock") extern class UserBlock {
	function new(_data:twitch.lib.api.kraken.user.userblock.UserBlockData, client:ApiClient);
	private final _data : Dynamic;
	private final _client : Dynamic;
	/**
		The blocked user.
	**/
	final blockedUser : User;
	static var prototype : UserBlock;
}