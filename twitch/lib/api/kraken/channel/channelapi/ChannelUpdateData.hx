package twitch.lib.api.kraken.channel.channelapi;

/**
	Channel data to update using {@ChannelApi#updateChannel}.
**/
typedef ChannelUpdateData = {
	/**
		The status/title of the channel.
	**/
	@:optional
	var status : String;
	/**
		The currently played game.
	**/
	@:optional
	var game : String;
	/**
		The desired delay of the stream.
	**/
	@:optional
	var delay : Float;
	/**
		Whether or not to show the channel feed.
	**/
	@:optional
	var channel_feed_enabled : Bool;
};