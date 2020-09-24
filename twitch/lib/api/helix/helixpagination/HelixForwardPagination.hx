package twitch.lib.api.helix.helixpagination;

/**
	Base forward pagination parameters for Helix requests.
**/
typedef HelixForwardPagination = {
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