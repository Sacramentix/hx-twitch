package twitch.lib.api.helix.user.helixuserapi;

/**
	User data to update using {@HelixUserApi#updateUser}.
**/
typedef HelixUserUpdate = {
	@:optional
	var description : String;
};