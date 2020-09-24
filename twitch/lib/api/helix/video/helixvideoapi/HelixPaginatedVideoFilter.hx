package twitch.lib.api.helix.video.helixvideoapi;

typedef HelixPaginatedVideoFilter = {
	/**
		The language of the videos.
	**/
	@:optional
	var language : String;
	/**
		The period of time when the videos were created.
	**/
	@:optional
	var period : HelixVideoFilterPeriod;
	/**
		The value to order the videos by.
	**/
	@:optional
	var orderBy : HelixVideoSort;
	/**
		The type of the videos.
	**/
	@:optional
	var type : String;
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