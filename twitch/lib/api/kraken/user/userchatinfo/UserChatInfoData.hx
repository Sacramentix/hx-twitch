package twitch.lib.api.kraken.user.userchatinfo;

typedef UserChatInfoData = {
	var _id : String;
	var login : String;
	var display_name : String;
	var color : String;
	var is_verified_bot : Bool;
	var is_known_bot : Bool;
	var badges : Array<twitch.UserChatInfoGlobalBadgeData>;
};