package twitch.lib.api.kraken.chat.chatemote;

/**
	A chat emote.
**/
@:jsRequire("twitch/lib/API/Kraken/Chat/ChatEmote", "ChatEmote") extern class ChatEmote {
	function new(_data:ChatEmoteData, client:twitch.ApiClient);
	private final _data : Dynamic;
	private final _client : twitch.ApiClient;
	/**
		The emote ID.
	**/
	final id : Float;
	/**
		The emote code, i.e. how you write it in chat.
	**/
	final code : String;
	/**
		The ID of the emote set.
	**/
	final setId : Float;
	static var prototype : ChatEmote;
}