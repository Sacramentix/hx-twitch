package twitch.lib.api.helix.stream.helixstreamapi;

/**
	Filters for the streams request.
**/
typedef HelixStreamFilter = {
	/**
		A community ID or a list thereof.
	**/
	@:optional
	var community : ts.AnyOf2<String, Array<String>>;
	/**
		A game ID or a list thereof.
	**/
	@:optional
	var game : ts.AnyOf2<String, Array<String>>;
	/**
		A language or a list thereof.
	**/
	@:optional
	var language : ts.AnyOf2<String, Array<String>>;
	/**
		A type of stream.
	**/
	@:optional
	var type : twitch.HelixStreamType;
	/**
		A user ID or a list thereof.
	**/
	@:optional
	var userId : ts.AnyOf2<String, Array<String>>;
	/**
		A user name or a list thereof.
	**/
	@:optional
	var userName : ts.AnyOf2<String, Array<String>>;
};