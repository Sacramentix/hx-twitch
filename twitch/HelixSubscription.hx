package twitch;

/**
	A (paid) subscription of a user to a broadcaster.
**/
@:jsRequire("twitch", "HelixSubscription") extern class HelixSubscription {
	function new(_data:twitch.lib.api.helix.subscriptions.helixsubscription.HelixSubscriptionData, client:ApiClient);
	private final _data : Dynamic;
	private final _client : ApiClient;
	/**
		The user ID of the broadcaster.
	**/
	final broadcasterId : String;
	/**
		The display name of the broadcaster.
	**/
	final broadcasterDisplayName : String;
	/**
		Retrieves more data about the broadcaster.
	**/
	function getBroadcaster():js.lib.Promise<Null<HelixUser>>;
	/**
		Whether the subscription has been gifted by another user.
	**/
	final isGift : Bool;
	/**
		The tier of the subscription.
	**/
	final tier : String;
	/**
		The user ID of the subscribed user.
	**/
	final userId : String;
	/**
		The display name of the subscribed user.
	**/
	final userDisplayName : String;
	/**
		Retrieves more data about the subscribed user.
	**/
	function getUser():js.lib.Promise<Null<HelixUser>>;
	static var prototype : HelixSubscription;
}