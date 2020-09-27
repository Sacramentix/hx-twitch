package twitch;

/**
	The main entry point of this library. Manages API calls and the use of access tokens in these.
**/
@:jsRequire("twitch", "ApiClient") extern class ApiClient implements AuthProvider {
	/**
		Creates a new API client instance.
	**/
	function new(config:{ /** An authentication provider that supplies tokens to the client.For more information, see the {@AuthProvider} documentation. **/ @:optional var authProvider : AuthProvider; /** Whether to authenticate the client before a request is made. **/ @:optional var preAuth : Bool; /** The scopes to request with the initial request, even if it's not necessary for the request. **/ @:optional var initialScopes : Array<String>; /** Default values for fetched cheermotes. **/ @:optional var cheermotes : twitch.lib.apiclient.TwitchCheermoteConfig; /** The minimum level of log levels to see. Defaults to critical errors. **/ @:optional var logLevel : d_fischer.logger.LogLevel; });
	private final _config : Dynamic;
	private final _helixRateLimiter : Dynamic;
	/**
		Retrieves information about your access token.
	**/
	function getTokenInfo():js.lib.Promise<TokenInfo>;
	/**
		Retrieves an access token for the authentication provider.
	**/
	function getAccessToken(?scopes:ts.AnyOf2<String, Array<String>>):js.lib.Promise<Null<AccessToken>>;
	/**
		The scopes that are currently available using the access token.
	**/
	final currentScopes : Array<String>;
	function setAccessToken(token:AccessToken):Void;
	/**
		Forces the authentication provider to refresh the access token, if possible.
	**/
	function refresh():js.lib.Promise<Null<AccessToken>>;
	/**
		Forces the authentication provider to refresh the access token, if possible.
	**/
	function refreshAccessToken():js.lib.Promise<Null<AccessToken>>;
	/**
		The type of token used by the client.
	**/
	final tokenType : AuthProviderTokenType;
	/**
		The client ID of your application.
	**/
	final clientId : String;
	/**
		Makes a call to the Twitch API using your access token.
	**/
	function callApi<T>(options:TwitchApiCallOptions):js.lib.Promise<T>;
	/**
		Makes a call to the Twitch API using your access token.
	**/
	function callAPI<T>(options:TwitchApiCallOptions):js.lib.Promise<T>;
	/**
		The default specs for cheermotes.
	**/
	final cheermoteDefaults : twitch.lib.apiclient.TwitchCheermoteConfig;
	/**
		A group of Kraken API methods.
	**/
	final kraken : twitch.lib.api.kraken.krakenapigroup.KrakenApiGroup;
	/**
		A group of Helix API methods.
	**/
	final helix : twitch.lib.api.helix.helixapigroup.HelixApiGroup;
	/**
		The API methods that deal with badges.
	**/
	final badges : twitch.lib.api.badges.badgesapi.BadgesApi;
	/**
		Various API methods that are not officially supported by Twitch.
	**/
	final unsupported : twitch.lib.api.unsupported.unsupportedapi.UnsupportedApi;
	private var _callApiInternal : Dynamic;
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
	@:native("callApi")
	static function callApi_<T>(options:TwitchApiCallOptions, ?clientId:String, ?accessToken:String):js.lib.Promise<T>;
	/**
		Makes a call to the Twitch API using given credentials.
	**/
	@:native("callAPI")
	static function callAPI_<T>(options:TwitchApiCallOptions, ?clientId:String, ?accessToken:String):js.lib.Promise<T>;
	/**
		Retrieves an access token with your client credentials and an authorization code.
	**/
	@:native("getAccessToken")
	static function getAccessToken_(clientId:String, clientSecret:String, code:String, redirectUri:String):js.lib.Promise<AccessToken>;
	/**
		Retrieves an app access token with your client credentials.
	**/
	static function getAppAccessToken(clientId:String, clientSecret:String):js.lib.Promise<AccessToken>;
	/**
		Refreshes an expired access token with your client credentials and the refresh token that was given by the initial authentication.
	**/
	@:native("refreshAccessToken")
	static function refreshAccessToken_(clientId:String, clientSecret:String, refreshToken:String):js.lib.Promise<AccessToken>;
	/**
		Retrieves information about an access token.
	**/
	@:native("getTokenInfo")
	static function getTokenInfo_(accessToken:String, ?clientId:String):js.lib.Promise<TokenInfo>;
}