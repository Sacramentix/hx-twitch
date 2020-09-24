package twitch.lib.api.helix.webhooks.helixwebhooksapi;

/**
	The properties describing the WebHook to create or remove.
**/
typedef HelixWebHookHubRequest = {
	/**
		Whether to subscribe or unsubscribe from notifications.
	**/
	var mode : HubMode;
	/**
		What topic URL to subscribe to or unsubscribe from.
	**/
	var topicUrl : String;
	/**
		The OAuth scope necessary to subscribe to or unsubscribe from the given topic.
	**/
	@:optional
	var scope : String;
	/**
		The URL to send notifications to.
	**/
	var callbackUrl : String;
	/**
		The number of seconds the subscription is valid for. Defaults to 3600 (1 hour). Can be at most 864000 (10 days).
	**/
	@:optional
	var validityInSeconds : Float;
	/**
		The secret to sign the notification payloads with.
	**/
	@:optional
	var secret : String;
};