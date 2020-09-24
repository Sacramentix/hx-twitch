package twitch.lib.api.kraken.chat.chatroom;

@:jsRequire("twitch/lib/API/Kraken/Chat/ChatRoom", "ChatRoom") extern class ChatRoom {
	function new(_data:ChatRoomData, client:twitch.ApiClient);
	private final _data : Dynamic;
	private final _client : twitch.ApiClient;
	/**
		The ID of the chat room.
	**/
	final id : String;
	/**
		The user ID of the chat room owner.
	**/
	final ownerId : String;
	/**
		Retrieves the user data of the chat room owner.
	**/
	function getOwner():js.lib.Promise<twitch.User>;
	/**
		The name of the chat room.
	**/
	final name : String;
	/**
		The topic of the chat room.
	**/
	final topic : String;
	/**
		Whether the chat room is previewable.
	**/
	final isPreviewable : Bool;
	/**
		The minimum role allowed to enter this chat room.
	**/
	final minRole : ChatRoomRole;
	/**
		The name of the IRC channel that corresponds to this chat room.
	**/
	final ircName : String;
	static var prototype : ChatRoom;
}