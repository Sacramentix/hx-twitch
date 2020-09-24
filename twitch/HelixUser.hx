package twitch;

/**
	A Twitch user.
**/
@:jsRequire("twitch", "HelixUser") extern class HelixUser {
	function new(_data:twitch.lib.api.helix.user.helixuser.HelixUserData, client:ApiClient);
	private var _data : twitch.lib.api.helix.user.helixuser.HelixUserData;
	private final _client : ApiClient;
	final cacheKey : String;
	/**
		The ID of the user.
	**/
	final id : String;
	/**
		The user name of the user.
	**/
	final name : String;
	/**
		The display name of the user.
	**/
	final displayName : String;
	/**
		The description of the user.
	**/
	final description : String;
	/**
		The type of the user.
	**/
	final type : HelixUserType;
	/**
		The type of the user.
	**/
	final broadcasterType : HelixBroadcasterType;
	/**
		The URL to the profile picture of the user.
	**/
	final profilePictureUrl : String;
	/**
		The URL to the offline video placeholder of the user.
	**/
	final offlinePlaceholderUrl : String;
	/**
		The total number of views of the user's channel.
	**/
	final views : Float;
	/**
		Retrieves the channel's stream data.
	**/
	function getStream():js.lib.Promise<Null<HelixStream>>;
	/**
		Retrieves a list of broadcasters the user follows.
	**/
	function getFollows():js.lib.Promise<HelixPaginatedResultWithTotal<HelixFollow>>;
	/**
		Retrieves the follow data of the user to the given broadcaster.
	**/
	function getFollowTo(broadcaster:UserIdResolvable):js.lib.Promise<Null<HelixFollow>>;
	/**
		Checks whether the user is following the given broadcaster.
	**/
	function follows(broadcaster:UserIdResolvable):js.lib.Promise<Bool>;
	/**
		Follows the broadcaster.
	**/
	function follow():js.lib.Promise<UserFollow>;
	/**
		Unfollows the broadcaster.
	**/
	function unfollow():js.lib.Promise<Void>;
	/**
		Retrieves the subscription data for the user to the given broadcaster, or `null` if the user is not subscribed.
	**/
	function getSubscriptionTo(broadcaster:UserIdResolvable):js.lib.Promise<Null<HelixSubscription>>;
	/**
		Checks whether the user is subscribed to the given broadcaster.
	**/
	function isSubscribedTo(broadcaster:UserIdResolvable):js.lib.Promise<Bool>;
	static var prototype : HelixUser;
}