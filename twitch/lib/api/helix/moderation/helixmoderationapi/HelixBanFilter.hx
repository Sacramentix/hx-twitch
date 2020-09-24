package twitch.lib.api.helix.moderation.helixmoderationapi;

/**
	Filters for the banned users request.
**/
typedef HelixBanFilter = {
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