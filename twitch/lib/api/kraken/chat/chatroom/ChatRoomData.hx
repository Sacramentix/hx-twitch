package twitch.lib.api.kraken.chat.chatroom;

typedef ChatRoomData = {
	var _id : String;
	var owner_id : String;
	var name : String;
	var topic : String;
	var is_previewable : Bool;
	var minimum_allowed_role : ChatRoomRole;
};