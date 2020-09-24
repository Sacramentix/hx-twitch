package twitch.lib.api.helix.subscriptions.helixsubscriptionevent;

/**
	The different types a subscription event can have.
**/
@:jsRequire("twitch/lib/API/Helix/Subscriptions/HelixSubscriptionEvent", "HelixSubscriptionEventType") @:enum extern abstract HelixSubscriptionEventType(String) from String to String {
	/**
		Sent when a new user subscribes.
	**/
	var Subscribe;
	/**
		Sent when a previous subscriber stops subscribing.
	**/
	var Unsubscribe;
	/**
		Sent when a new or recurring subscriber sends their monthly notification.
	**/
	var Notification;
}