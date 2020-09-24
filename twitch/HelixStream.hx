package twitch;

/**
	A Twitch stream.
**/
@:jsRequire("twitch", "HelixStream") extern class HelixStream {
	function new(_data:twitch.lib.api.helix.stream.helixstream.HelixStreamData, client:ApiClient);
	private final _data : Dynamic;
	private final _client : Dynamic;
	/**
		The stream ID.
	**/
	final id : String;
	/**
		The user ID.
	**/
	final userId : String;
	/**
		The user's display name.
	**/
	final userDisplayName : String;
	/**
		Retrieves information about the user broadcasting the stream.
	**/
	function getUser():js.lib.Promise<Null<HelixUser>>;
	/**
		The game ID.
	**/
	final gameId : String;
	/**
		Retrieves information about the game that is being played on this stream.
	**/
	function getGame():js.lib.Promise<Null<HelixGame>>;
	/**
		The type of the stream.
	**/
	final type : HelixStreamType;
	/**
		The title of the stream.
	**/
	final title : String;
	/**
		The number of viewers the stream currently has.
	**/
	final viewers : Float;
	/**
		The time when the stream started.
	**/
	final startDate : js.lib.Date;
	/**
		The language of the stream.
	**/
	final language : String;
	/**
		The URL of the thumbnail of the stream.
	**/
	final thumbnailUrl : String;
	static var prototype : HelixStream;
}