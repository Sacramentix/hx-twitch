package twitch;

@:jsRequire("twitch", "HelixClip") extern class HelixClip {
	function new(_data:twitch.lib.api.helix.clip.helixclip.HelixClipData, client:ApiClient);
	private final _data : Dynamic;
	private final _client : ApiClient;
	/**
		The clip ID.
	**/
	final id : String;
	/**
		The URL of the clip.
	**/
	final url : String;
	/**
		The embed URL of the clip.
	**/
	final embedUrl : String;
	/**
		The user ID of the broadcaster of the stream where the clip was created.
	**/
	final broadcasterId : String;
	/**
		The display name of the broadcaster of the stream where the clip was created.
	**/
	final broadcasterDisplayName : String;
	/**
		Retrieves information about the broadcaster of the stream where the clip was created.
	**/
	function getBroadcaster():js.lib.Promise<Null<HelixUser>>;
	/**
		The user ID of the creator of the clip.
	**/
	final creatorId : String;
	/**
		The display name of the creator of the clip.
	**/
	final creatorDisplayName : String;
	/**
		Retrieves information about the creator of the clip.
	**/
	function getCreator():js.lib.Promise<Null<HelixUser>>;
	/**
		The ID of the video the clip is taken from.
	**/
	final videoId : String;
	/**
		Retrieves information about the video the clip is taken from.
	**/
	function getVideo():js.lib.Promise<Null<HelixVideo>>;
	/**
		The ID of the game that was being played when the clip was created.
	**/
	final gameId : String;
	/**
		Retrieves information about the game that was being played when the clip was created.
	**/
	function getGame():js.lib.Promise<Null<HelixGame>>;
	/**
		The language of the stream where the clip was created.
	**/
	final language : String;
	/**
		The title of the clip.
	**/
	final title : String;
	/**
		The number of views of the clip.
	**/
	final views : Float;
	/**
		The date when the clip was created.
	**/
	final creationDate : js.lib.Date;
	/**
		The URL of the thumbnail of the clip.
	**/
	final thumbnailUrl : String;
	static var prototype : HelixClip;
}