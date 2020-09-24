package twitch.lib.api.kraken.chat.chatemotelist;

/**
	A list of emotes.
**/
@:jsRequire("twitch/lib/API/Kraken/Chat/ChatEmoteList", "ChatEmoteList") extern class ChatEmoteList {
	function new(_data:Array<twitch.lib.api.kraken.chat.chatemote.ChatEmoteData>, client:twitch.ApiClient);
	private final _data : Dynamic;
	private final _client : twitch.ApiClient;
	/**
		A list of all emotes in the list.
	**/
	final emotes : Array<twitch.lib.api.kraken.chat.chatemote.ChatEmote>;
	/**
		Gets all emotes from the list that are from a given emote set.
	**/
	function getAllFromSet(setId:Float):Array<twitch.lib.api.kraken.chat.chatemote.ChatEmote>;
	/**
		Finds a single emote by its ID.
	**/
	function getById(id:Float):Null<twitch.lib.api.kraken.chat.chatemote.ChatEmote>;
	static var prototype : ChatEmoteList;
}