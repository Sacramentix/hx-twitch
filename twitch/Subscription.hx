package twitch;

/**
	A subscription to a Twitch channel.
**/
@:jsRequire("twitch", "Subscription") extern class Subscription {
	function new(_data:twitch.lib.api.kraken.subscription.SubscriptionData, client:ApiClient);
	private var _data : twitch.lib.api.kraken.subscription.SubscriptionData;
	private final _client : ApiClient;
	/**
		The ID of the subscription.
	**/
	final id : String;
	/**
		The identifier of the subscription plan.
	**/
	final subPlan : String;
	/**
		The name of the subscription plan.
	**/
	final subPlanName : String;
	/**
		The date when the subscription was started.
	**/
	final startDate : js.lib.Date;
	static var prototype : Subscription;
}