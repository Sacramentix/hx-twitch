package twitch;

/**
	A user you have extended privileges for, i.e. the currently authenticated user.
**/
@:jsRequire("twitch", "PrivilegedUser") extern class PrivilegedUser extends User {
	function new();
	/**
		The user's email address.
	**/
	final email : String;
	/**
		Whether the user's email address is verified.
	**/
	final isEmailVerified : Bool;
	/**
		Whether the user has email notifications enabled.
	**/
	final hasEmailNotifications : Bool;
	/**
		Whether the user has push notifications enabled.
	**/
	final hasPushNotifications : Bool;
	/**
		Whether the user is partnered.
	**/
	final isPartnered : Bool;
	/**
		Whether the user has a Twitter account connected.
	**/
	final hasTwitter : Bool;
	/**
		Follows a channel.
	**/
	function followChannel(channel:UserIdResolvable, ?notifications:Bool):js.lib.Promise<UserFollow>;
	/**
		Unfollows a channel.
	**/
	function unfollowChannel(channel:UserIdResolvable):js.lib.Promise<Void>;
	/**
		Blocks a user.
	**/
	function blockUser(userToBlock:UserIdResolvable):js.lib.Promise<UserBlock>;
	/**
		Unblocks a user.
	**/
	function unblockUser(userToUnblock:UserIdResolvable):js.lib.Promise<Void>;
	static var prototype : PrivilegedUser;
}