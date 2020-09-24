package twitch.lib.api.helix.webhooks.helixwebhooksubscription;

/**
	A subscription to a Twitch WebHook.
**/
@:jsRequire("twitch/lib/API/Helix/WebHooks/HelixWebHookSubscription", "HelixWebHookSubscription") extern class HelixWebHookSubscription {
	function new(_data:HelixWebHookSubscriptionData, client:twitch.ApiClient);
	private final _data : Dynamic;
	private final _client : twitch.ApiClient;
	/**
		The topic the WebHook is listening to.
	**/
	final topicUrl : String;
	/**
		The URL that will be called for every subscribed event.
	**/
	final callbackUrl : String;
	/**
		The time when the subscription will expire.
	**/
	final expiryDate : js.lib.Date;
	/**
		Unsubscribe from the WebHook.
	**/
	function unsubscribe():js.lib.Promise<Void>;
	static var prototype : HelixWebHookSubscription;
}