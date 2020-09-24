package twitch.lib.api.kraken.video.createdvideo;

/**
	A Twitch video that was just created.
**/
@:jsRequire("twitch/lib/API/Kraken/Video/CreatedVideo", "CreatedVideo") extern class CreatedVideo extends twitch.lib.api.kraken.video.video.Video {
	function new(data:CreatedVideoData, client:twitch.ApiClient);
	private var _uploadData : Dynamic;
	/**
		The upload token for your video. Use it to upload your video parts.
	**/
	final uploadToken : String;
	static var prototype : CreatedVideo;
}