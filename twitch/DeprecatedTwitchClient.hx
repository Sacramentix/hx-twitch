package twitch;

@:jsRequire("twitch", "default") @:forward @:forwardStatics extern abstract DeprecatedTwitchClient(ApiClient) from ApiClient to ApiClient {
	/**
		Creates a new API client instance.
	**/
	function new(config:{ /** An authentication provider that supplies tokens to the client.For more information, see the {@AuthProvider} documentation. **/ @:optional var authProvider : AuthProvider; /** Whether to authenticate the client before a request is made. **/ @:optional var preAuth : Bool; /** The scopes to request with the initial request, even if it's not necessary for the request. **/ @:optional var initialScopes : Array<String>; /** Default values for fetched cheermotes. **/ @:optional var cheermotes : twitch.lib.apiclient.TwitchCheermoteConfig; /** The minimum level of log levels to see. Defaults to critical errors. **/ @:optional var logLevel : d_fischer.logger.LogLevel; });
	static var prototype : ApiClient;
	/**
		Creates a new instance with fixed credentials.
	**/
	static function withCredentials(clientId:String, ?accessToken:String, ?scopes:Array<String>, ?refreshConfig:RefreshConfig, ?config:{ /** An authentication provider that supplies tokens to the client.For more information, see the {@AuthProvider} documentation. **/ @:optional var authProvider : AuthProvider; /** Whether to authenticate the client before a request is made. **/ @:optional var preAuth : Bool; /** The scopes to request with the initial request, even if it's not necessary for the request. **/ @:optional var initialScopes : Array<String>; /** Default values for fetched cheermotes. **/ @:optional var cheermotes : twitch.lib.apiclient.TwitchCheermoteConfig; /** The minimum level of log levels to see. Defaults to critical errors. **/ @:optional var logLevel : d_fischer.logger.LogLevel; }, ?tokenType:AuthProviderTokenType):ApiClient;
	/**
		Creates a new instance with client credentials.
	**/
	static function withClientCredentials(clientId:String, ?clientSecret:String, ?config:{ /** An authentication provider that supplies tokens to the client.For more information, see the {@AuthProvider} documentation. **/ @:optional var authProvider : AuthProvider; /** Whether to authenticate the client before a request is made. **/ @:optional var preAuth : Bool; /** The scopes to request with the initial request, even if it's not necessary for the request. **/ @:optional var initialScopes : Array<String>; /** Default values for fetched cheermotes. **/ @:optional var cheermotes : twitch.lib.apiclient.TwitchCheermoteConfig; /** The minimum level of log levels to see. Defaults to critical errors. **/ @:optional var logLevel : d_fischer.logger.LogLevel; }):ApiClient;
	/**
		Makes a call to the Twitch API using given credentials.
	**/
	static function callApi<T>(options:TwitchApiCallOptions, ?clientId:String, ?accessToken:String):js.lib.Promise<T>;
	/**
		Makes a call to the Twitch API using given credentials.
	**/
	static function callAPI<T>(options:TwitchApiCallOptions, ?clientId:String, ?accessToken:String):js.lib.Promise<T>;
	/**
		Retrieves an access token with your client credentials and an authorization code.
	**/
	static function getAccessToken(clientId:String, clientSecret:String, code:String, redirectUri:String):js.lib.Promise<AccessToken>;
	/**
		Retrieves an app access token with your client credentials.
	**/
	static function getAppAccessToken(clientId:String, clientSecret:String):js.lib.Promise<AccessToken>;
	/**
		Refreshes an expired access token with your client credentials and the refresh token that was given by the initial authentication.
	**/
	static function refreshAccessToken(clientId:String, clientSecret:String, refreshToken:String):js.lib.Promise<AccessToken>;
	/**
		Retrieves information about an access token.
	**/
	static function getTokenInfo(accessToken:String, ?clientId:String):js.lib.Promise<TokenInfo>;
}