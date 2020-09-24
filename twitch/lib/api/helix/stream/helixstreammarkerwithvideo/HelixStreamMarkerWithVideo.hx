package twitch.lib.api.helix.stream.helixstreammarkerwithvideo;

@:jsRequire("twitch/lib/API/Helix/Stream/HelixStreamMarkerWithVideo", "HelixStreamMarkerWithVideo") extern class HelixStreamMarkerWithVideo extends twitch.lib.api.helix.stream.helixstreammarker.HelixStreamMarker {
	function new(data:HelixStreamMarkerVideoData, _videoId:String, client:twitch.ApiClient);
	private final _videoId : Dynamic;
	/**
		The URL of the video, which will start playing at the position of the stream marker.
	**/
	final url : Null<String>;
	/**
		The ID of the video.
	**/
	final videoId : String;
	/**
		Retrieves the video data of the video the marker was set in.
	**/
	function getVideo():js.lib.Promise<Null<twitch.HelixVideo>>;
	static var prototype : HelixStreamMarkerWithVideo;
}