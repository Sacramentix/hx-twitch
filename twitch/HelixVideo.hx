package twitch;

/**
	A video on Twitch.
**/
@:jsRequire("twitch", "HelixVideo") extern class HelixVideo {
	function new(_data:twitch.lib.api.helix.video.helixvideo.HelixVideoData, client:ApiClient);
	private final _data : Dynamic;
	private final _client : ApiClient;
	/**
		The ID of the video.
	**/
	final id : String;
	/**
		The ID of the user who created the video.
	**/
	final userId : String;
	/**
		The display name of the user who created the video.
	**/
	final userDisplayName : String;
	/**
		Retrieves information about the user who created the video.
	**/
	function getUser():js.lib.Promise<Null<HelixUser>>;
	/**
		The title of the video.
	**/
	final title : String;
	/**
		The description of the video.
	**/
	final description : String;
	/**
		The date when the video was created.
	**/
	final creationDate : js.lib.Date;
	/**
		The date when the video was published.
	**/
	final publishDate : js.lib.Date;
	/**
		The URL of the video.
	**/
	final url : String;
	/**
		The URL of the thumbnail of the video.
	**/
	final thumbnailUrl : String;
	/**
		Whether the video is public or not.
	**/
	final isPublic : Bool;
	/**
		The number of views of the video.
	**/
	final views : Float;
	/**
		The language of the video.
	**/
	final language : String;
	/**
		The type of the video.
	**/
	final type : twitch.lib.api.helix.video.helixvideo.HelixVideoType;
	/**
		The duration of the video, as formatted by Twitch.
	**/
	final duration : String;
	/**
		The duration of the video, in seconds.
	**/
	final durationInSeconds : Float;
	static var prototype : HelixVideo;
}