package twitch;

/**
	A relation of a user following a previously given channel.
**/
@:jsRequire("twitch", "ChannelFollow") extern class ChannelFollow {
	function new(_data:twitch.lib.api.kraken.channel.channelfollow.ChannelFollowData, client:ApiClient);
	private final _data : Dynamic;
	private final _client : Dynamic;
	/**
		The user following the given channel.
	**/
	final user : User;
	/**
		Whether the user has notifications enabled for the channel.
	**/
	final hasNotifications : Bool;
	/**
		The date when the user followed.
	**/
	final followDate : js.lib.Date;
	static var prototype : ChannelFollow;
}