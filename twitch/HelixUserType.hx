package twitch;

/**
	The type of a user.
**/
@:jsRequire("twitch", "HelixUserType") @:enum extern abstract HelixUserType(String) from String to String {
	/**
		A Twitch staff member.
	**/
	var Staff;
	/**
		A Twitch administrator.
	**/
	var Admin;
	/**
		A global moderator.
	**/
	var GlobalMod;
	/**
		A user with no special permissions across Twitch.
	**/
	var None;
}