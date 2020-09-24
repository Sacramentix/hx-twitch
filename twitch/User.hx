package twitch;

/**
	A Twitch user.
**/
@:jsRequire("twitch", "User") extern class User {
	function new(_data:twitch.lib.api.kraken.user.user.UserData, client:ApiClient);
	private var _data : twitch.lib.api.kraken.user.user.UserData;
	private final _client : ApiClient;
	final cacheKey : String;
	/**
		The ID of the user.
	**/
	final id : String;
	/**
		The bio of the user.
	**/
	final bio : String;
	/**
		The date when the user was created, i.e. when they registered on Twitch.
	**/
	final creationDate : js.lib.Date;
	/**
		The last date when the user changed anything in their profile, e.g. their description or their profile picture.
	**/
	final updateDate : js.lib.Date;
	/**
		The user name of the user.
	**/
	final name : String;
	/**
		The display name of the user.
	**/
	final displayName : String;
	/**
		The URL to the profile picture of the user.
	**/
	final logoUrl : String;
	/**
		The type of the user.
	**/
	final type : String;
	/**
		Retrieves the channel data of the user.
	**/
	function getChannel():js.lib.Promise<Channel>;
	/**
		Gets a channel placeholder object for the user, which can do anything you can do to a channel with just the ID.
	**/
	function getChannelPlaceholder():ChannelPlaceholder;
	/**
		Retrieves the currently running stream of the user.
	**/
	function getStream():js.lib.Promise<Null<Stream>>;
	/**
		Retrieves the subscription data for the user to the given channel.
		
		Throws if the channel doesn't have a subscription program or the user is not subscribed to it.
		
		This method requires access to the user. If you only have access to the channel,
		use {@ChannelPlaceholder#getSubscriptionBy} instead.
	**/
	function getSubscriptionTo(channel:UserIdResolvable):js.lib.Promise<Null<UserSubscription>>;
	/**
		Checks whether the user is subscribed to the given channel.
	**/
	function isSubscribedTo(channel:UserIdResolvable):js.lib.Promise<Bool>;
	/**
		Retrieves a list of channels followed by the user.
	**/
	function getFollows(?page:Float, ?limit:Float, ?orderBy:String, ?orderDirection:String):js.lib.Promise<Array<UserFollow>>;
	/**
		Retrieves the follow data of the user to a given channel.
	**/
	function getFollowTo(channel:UserIdResolvable):js.lib.Promise<Null<UserFollow>>;
	/**
		Checks whether the user is following the given channel.
	**/
	function follows(channel:UserIdResolvable):js.lib.Promise<Bool>;
	/**
		Follows the channel with the authenticated user.
	**/
	function follow():js.lib.Promise<UserFollow>;
	/**
		Unfollows the channel with the authenticated user.
	**/
	function unfollow():js.lib.Promise<Void>;
	/**
		Retrieves the emotes the user can use.
	**/
	function getEmotes():js.lib.Promise<EmoteSetList>;
	static var prototype : User;
}