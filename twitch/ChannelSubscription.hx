package twitch;

/**
	A relation of a user subscribing to a previously given channel.
**/
@:jsRequire("twitch", "ChannelSubscription") extern class ChannelSubscription extends Subscription {
	function new();
	/**
		The user subscribing to the given channel.
	**/
	final user : User;
	static var prototype : ChannelSubscription;
}