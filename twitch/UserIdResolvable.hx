package twitch;

/**
	A user ID or a user or channel object.
	
	This is not a user name.
	Please use {@HelixUserApi#getUserByName} to fetch a user object by name.
**/
typedef UserIdResolvable = ts.AnyOf5<String, Float, User, ChannelPlaceholder, HelixUser>;