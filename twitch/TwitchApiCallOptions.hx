package twitch;

/**
	Configuration for a single API call.
**/
typedef TwitchApiCallOptions = {
	/**
		The URL to request.
		
		If `type` is not `'custom'`, this is relative to the respective API root endpoint. Otherwise, it is an absoulte URL.
	**/
	var url : String;
	/**
		The endpoint to call, i.e. /kraken, /helix or a custom (potentially unsupported) endpoint.
	**/
	@:optional
	var type : TwitchApiCallType;
	/**
		The HTTP method to use. Defaults to `'GET'`.
	**/
	@:optional
	var method : String;
	/**
		The query parameters to send with the API call.
	**/
	@:optional
	var query : { };
	/**
		The form body to send with the API call.
		
		If this is given, `jsonBody` will be ignored.
	**/
	@:optional
	var body : { };
	/**
		The JSON body to send with the API call.
		
		If `body` is also given, this will be ignored.
	**/
	@:optional
	var jsonBody : Dynamic;
	/**
		The scope the request needs.
	**/
	@:optional
	var scope : String;
	/**
		The Kraken API version to request with. Defaults to 5.
		
		If `type` is not `'kraken'`, this will be ignored.
		
		Note that v3 will be removed at some point and v5 will be the only Kraken version left, so you should only use this option if you want to rewrite everything in a few months.
		
		Internally, only v5 and Helix are used.
	**/
	@:optional
	var version : Float;
	/**
		Whether OAuth credentials should be generated and sent with the request. Defaults to `true`.
	**/
	@:optional
	var auth : Bool;
};