package twitch.lib.api.helix.user.helixprivilegeduser;

typedef HelixPrivilegedUserData = {
	@:optional
	var email : String;
	var id : String;
	var login : String;
	var display_name : String;
	var description : String;
	var type : twitch.HelixUserType;
	var broadcaster_type : twitch.HelixBroadcasterType;
	var profile_image_url : String;
	var offline_image_url : String;
	var view_count : Float;
};