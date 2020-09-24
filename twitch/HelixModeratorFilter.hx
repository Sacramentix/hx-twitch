package twitch;

/**
	Filters for the moderators request.
**/
typedef HelixModeratorFilter = {
	/**
		A user ID or a list thereof.
	**/
	var userId : ts.AnyOf2<String, Array<String>>;
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