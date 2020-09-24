package twitch;

/**
	A relation of a previously given user following a channel.
**/
@:jsRequire("twitch", "UserFollow") extern class UserFollow {
	function new(_data:twitch.lib.api.kraken.user.userfollow.UserFollowData, client:ApiClient);
	private final _data : Dynamic;
	private final _client : Dynamic;
	/**
		The date when the user followed the channel.
	**/
	final followDate : js.lib.Date;
	/**
		Whether the user has notifications enabled for the channel.
	**/
	final hasNotifications : Bool;
	/**
		The followed channel.
	**/
	final channel : Channel;
	static var prototype : UserFollow;
}