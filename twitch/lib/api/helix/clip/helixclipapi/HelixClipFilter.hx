package twitch.lib.api.helix.clip.helixclipapi;

/**
	Filters for clip queries.
**/
typedef HelixClipFilter = {
	/**
		The earliest date to find clips for.
	**/
	@:optional
	var startDate : String;
	/**
		The latest date to find clips for.
	**/
	@:optional
	var endDate : String;
	/**
		The maximum number of results to retrieve. Defaults to 20.
	**/
	@:optional
	var limit : Float;
};