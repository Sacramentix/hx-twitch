package twitch.lib.api.kraken.user.userchatinfo;

/**
	Information about a user's chat appearance and privileges.
**/
@:jsRequire("twitch/lib/API/Kraken/User/UserChatInfo", "UserChatInfo") extern class UserChatInfo {
	function new(_data:UserChatInfoData, client:twitch.ApiClient);
	private final _data : Dynamic;
	private final _client : Dynamic;
	/**
		The ID of the user.
	**/
	final userId : String;
	/**
		Retrieves more data about the user.
	**/
	function getUser():js.lib.Promise<twitch.User>;
	/**
		The name of the user.
	**/
	final userName : String;
	/**
		The display name of the user.
	**/
	final displayName : String;
	/**
		The color that the user appears in in chat.
	**/
	final color : String;
	/**
		Whether the user is a known bot.
	**/
	final isKnownBot : Bool;
	/**
		Whether the user is a verified bot.
	**/
	final isVerifiedBot : Bool;
	/**
		Whether the user is at least a known bot (i.e. known or verified).
	**/
	final isAtLeastKnownBot : Bool;
	/**
		Checks whether the user has access to a given global badge.
	**/
	function hasBadge(id:String):Bool;
	static var prototype : UserChatInfo;
}