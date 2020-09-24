package twitch;

/**
	A list of chatters in a Twitch chat.
**/
@:jsRequire("twitch", "ChattersList") extern class ChattersList {
	function new(_data:twitch.lib.api.unsupported.chatterslist.ChattersListData);
	private final _data : Dynamic;
	/**
		A list of user names of all chatters in the chat.
	**/
	final allChatters : Array<String>;
	/**
		A map of user names of all chatters in the chat, mapped to their status in the channel.
	**/
	final allChattersWithStatus : js.lib.Map<String, String>;
	static var prototype : ChattersList;
}