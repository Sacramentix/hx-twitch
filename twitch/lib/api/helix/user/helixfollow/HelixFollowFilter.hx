package twitch.lib.api.helix.user.helixfollow;

/**
	Filters for the follower request.
**/
typedef HelixFollowFilter = {
	/**
		The following user.
	**/
	@:optional
	var user : twitch.UserIdResolvable;
	/**
		The followed user.
	**/
	@:optional
	var followedUser : twitch.UserIdResolvable;
};