package twitch.lib.api.kraken.video.video;

/**
	A Twitch video.
**/
@:jsRequire("twitch/lib/API/Kraken/Video/Video", "Video") extern class Video {
	function new(_data:VideoData, client:twitch.ApiClient);
	private var _data : VideoData;
	private final _client : twitch.ApiClient;
	/**
		The ID of the video.
	**/
	final id : String;
	/**
		The ID of the channel the video was uploaded to.
	**/
	final channelId : String;
	/**
		The name of the channel the video was uploaded to.
	**/
	final channelName : String;
	/**
		The display name of the channel the video was uploaded to.
	**/
	final channelDisplayName : String;
	/**
		The date when the video was created.
	**/
	final creationDate : js.lib.Date;
	/**
		The description of the video.
	**/
	final description : String;
	/**
		The description of the video in HTML.
	**/
	final htmlDescription : String;
	/**
		The resolutions the video is available in.
	**/
	final resolutions : { };
	/**
		Gets the FPS (frames per second) of the video for a given resolution.
	**/
	function getFps(resolution:String):Null<Float>;
	/**
		The name of the game shown in the video.
	**/
	final gameName : String;
	/**
		The language of the video.
	**/
	final language : String;
	/**
		The length of the video, in seconds.
	**/
	final length : Float;
	/**
		The muted segments of the video.
	**/
	final mutedSegments : Array<VideoMutedSegment>;
	/**
		Gets the URL for a given size of the video.
	**/
	function getPreview(size:twitch.lib.api.kraken.stream.stream.StreamPreviewSize):String;
	/**
		The date when the video was published.
	**/
	final publishDate : js.lib.Date;
	/**
		The status of the video.
	**/
	final status : String;
	/**
		A list of tags of the video.
	**/
	final tags : Array<String>;
	/**
		Gets a list of thumbnails for a given size of the video.
	**/
	function getThumbnails(size:twitch.lib.api.kraken.stream.stream.StreamPreviewSize):Array<VideoThumbnail>;
	/**
		The title of the video.
	**/
	final title : String;
	/**
		The URL of the video.
	**/
	final url : String;
	/**
		Whether the video is public.
	**/
	final isPublic : Bool;
	/**
		When the video will be viewable publicly.
	**/
	final viewabilityDate : Null<js.lib.Date>;
	/**
		The number of views of the video.
	**/
	final views : Float;
	static var prototype : Video;
}