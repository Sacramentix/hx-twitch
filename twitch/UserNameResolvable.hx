package twitch;

/**
	A user name or a user or channel object.
**/
typedef UserNameResolvable = ts.AnyOf4<String, User, HelixUser, Channel>;