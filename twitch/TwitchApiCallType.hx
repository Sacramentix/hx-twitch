package twitch;

/**
	The endpoint to call, i.e. /kraken, /helix or a custom (potentially unsupported) endpoint.
**/
@:jsRequire("twitch", "TwitchApiCallType") @:enum extern abstract TwitchApiCallType(Int) from Int to Int {
	/**
		Call a Kraken API endpoint.
	**/
	var Kraken;
	/**
		Call a Helix API endpoint.
	**/
	var Helix;
	/**
		Call an authentication endpoint.
	**/
	var Auth;
	/**
		Call a custom (potentially unsupported) endpoint.
	**/
	var Custom;
}