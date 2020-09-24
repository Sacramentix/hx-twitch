package twitch;

/**
	A relation of a previously given user subscribing to a channel.
**/
@:jsRequire("twitch", "UserSubscription") extern class UserSubscription extends Subscription {
	function new();
	/**
		The subscribed channel.
	**/
	final channel : Channel;
	static var prototype : UserSubscription;
}