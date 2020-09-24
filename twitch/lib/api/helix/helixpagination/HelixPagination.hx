package twitch.lib.api.helix.helixpagination;

/**
	Base pagination parameters for Helix requests.
**/
typedef HelixPagination = {
	/**
		A cursor to get the previous page of.
	**/
	@:optional
	var before : String;
	/**
		The number of results per page.
	**/
	@:optional
	var limit : String;
	/**
		A cursor to get the following page of.
	**/
	@:optional
	var after : String;
};