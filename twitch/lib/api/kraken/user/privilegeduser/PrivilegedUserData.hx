package twitch.lib.api.kraken.user.privilegeduser;

typedef PrivilegedUserData = {
	var email : String;
	var email_verified : Bool;
	var notifications : UserNotificationFlags;
	var partnered : Bool;
	var twitter_connected : Bool;
	var _id : String;
	var bio : String;
	var created_at : String;
	var name : String;
	var display_name : String;
	var logo : String;
	var type : String;
	var updated_at : String;
};