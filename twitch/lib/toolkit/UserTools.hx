package twitch.lib.toolkit;

@:jsRequire("twitch/lib/Toolkit/UserTools") @valueModuleOnly extern class UserTools {
	/**
		Extracts the user ID from an argument that is possibly an object containing that ID.
	**/
	static function extractUserId(user:twitch.UserIdResolvable):String;
	/**
		Extracts the user name from an argument that is possibly an object containing that name.
	**/
	static function extractUserName(user:twitch.UserNameResolvable):String;
}