package twitch;

/**
	Configuration for an {@ApiClient} instance.
**/
typedef ApiConfig = {
	/**
		An authentication provider that supplies tokens to the client.
		
		For more information, see the {@AuthProvider} documentation.
	**/
	var authProvider : AuthProvider;
	/**
		Whether to authenticate the client before a request is made.
	**/
	var preAuth : Bool;
	/**
		The scopes to request with the initial request, even if it's not necessary for the request.
	**/
	@:optional
	var initialScopes : Array<String>;
	/**
		Default values for fetched cheermotes.
	**/
	var cheermotes : twitch.lib.apiclient.TwitchCheermoteConfig;
	/**
		The minimum level of log levels to see. Defaults to critical errors.
	**/
	@:optional
	var logLevel : d_fischer.logger.LogLevel;
};