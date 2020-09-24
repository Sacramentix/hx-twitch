package twitch.lib.api.helix.user.helixuserapi;

@:jsRequire("twitch/lib/API/Helix/User/HelixUserApi", "UserLookupType") @:enum extern abstract UserLookupType(String) from String to String {
	var Id;
	var Login;
}