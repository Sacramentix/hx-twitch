package twitch;

/**
	The properties describing where and how long a WebHook notification is sent, and how it is signed.
**/
typedef HelixWebHookHubRequestOptions = {
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