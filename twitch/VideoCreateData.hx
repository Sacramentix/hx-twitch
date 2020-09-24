package twitch;

/**
	Video data for a new video using {@VideoApi#createVideo}.
**/
typedef VideoCreateData = {
	/**
		The new title of the video.
	**/
	var title : String;
	/**
		Whether the video will be public or private initially.
	**/
	var viewable : twitch.lib.api.helix.video.helixvideo.HelixVideoViewableStatus;
	/**
		When the video will become public.
		
		This only takes effect if `viewable` is `private`.
	**/
	var viewable_at : String;
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