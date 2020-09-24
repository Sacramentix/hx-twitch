package twitch;

/**
	An event that indicates the change of a subscription status, i.e. subscribing, unsubscribing or sending the monthly notification.
**/
@:jsRequire("twitch", "HelixSubscriptionEvent") extern class HelixSubscriptionEvent extends HelixSubscription {
	function new(_eventData:twitch.lib.api.helix.subscriptions.helixsubscriptionevent.HelixSubscriptionEventData, client:ApiClient);
	private final _eventData : Dynamic;
	/**
		The unique ID of the subscription event.
	**/
	final eventId : String;
	/**
		The type of the subscription event.
	**/
	final eventType : twitch.lib.api.helix.subscriptions.helixsubscriptionevent.HelixSubscriptionEventType;
	/**
		The date of the subscription event.
	**/
	final eventDate : js.lib.Date;
	/**
		The version of the subscription event.
	**/
	final eventVersion : String;
	/**
		The message sent with the subscription event.
	**/
	final eventMessage : String;
	static var prototype : HelixSubscriptionEvent;
}