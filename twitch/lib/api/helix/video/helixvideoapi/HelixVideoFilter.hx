package twitch.lib.api.helix.video.helixvideoapi;

/**
	Filters for the videos request.
**/
typedef HelixVideoFilter = {
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
};