package twitch;

/**
	A Twitch stream.
**/
@:jsRequire("twitch", "Stream") extern class Stream {
	function new(_data:twitch.lib.api.kraken.stream.stream.StreamData, client:ApiClient);
	private final _data : Dynamic;
	private final _client : Dynamic;
	/**
		The ID of the stream.
	**/
	final id : String;
	/**
		The game played on the stream.
	**/
	final game : String;
	/**
		The current number of concurrent viewers.
	**/
	final viewers : Float;
	/**
		The height of the stream video.
	**/
	final videoHeight : Float;
	/**
		The average FPS (frames per second) that are shown on the stream.
	**/
	final averageFps : Float;
	final averageFPS : Float;
	/**
		The delay of the stream, in seconds.
	**/
	final delay : Float;
	/**
		The time when the stream started.
	**/
	final startDate : js.lib.Date;
	/**
		Whether the stream is running a playlist.
	**/
	final isPlaylist : Bool;
	/**
		The type of the stream.
	**/
	final type : StreamType;
	/**
		Gets the URL of a preview image for the stream
	**/
	function getPreviewUrl(size:twitch.lib.api.kraken.stream.stream.StreamPreviewSize):String;
	/**
		The channel where the stream is shown.
	**/
	final channel : Channel;
	static var prototype : Stream;
}