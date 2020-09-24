package twitch.lib.api.kraken.video.videoapi;

/**
	Video data to update using {@VideoApi#updateVideo}.
**/
typedef VideoUpdateData = {
	/**
		The new title of the video.
	**/
	@:optional
	var title : String;
	/**
		The new description of the video.
	**/
	@:optional
	var description : String;
	/**
		The new game of the video.
	**/
	@:optional
	var game : String;
	/**
		The new language of the video.
	**/
	@:optional
	var language : String;
	/**
		The new tag list of the video.
	**/
	@:optional
	var tag_list : String;
};