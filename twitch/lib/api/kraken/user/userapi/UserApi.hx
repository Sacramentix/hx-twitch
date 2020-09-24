package twitch.lib.api.kraken.user.userapi;

/**
	The API methods that deal with users.
	
	Can be accessed using `client.kraken.users` on an {@ApiClient} instance.
	
	## Example
	```ts
	const client = new ApiClient(new StaticAuthProvider(clientId, accessToken));
	const user = await client.kraken.users.getUser('125328655');
	```
**/
@:jsRequire("twitch/lib/API/Kraken/User/UserApi", "UserApi") extern class UserApi extends twitch.lib.api.baseapi.BaseApi {
	function new();
	private final _userByNameCache : Dynamic;
	/**
		Retrieves the user data of the currently authenticated user.
	**/
	function getMe():js.lib.Promise<twitch.PrivilegedUser>;
	/**
		Retrieves the user data for the given user ID.
	**/
	function getUser(userId:twitch.UserIdResolvable):js.lib.Promise<twitch.User>;
	/**
		Retrieves the user data for the given user name.
	**/
	function getUserByName(userName:String):js.lib.Promise<Null<twitch.User>>;
	/**
		Retrieves the user data for the given user names.
	**/
	function getUsersByNames(userNames:Array<String>):js.lib.Promise<{ }>;
	/**
		Retrieves information about the user's chat appearance and privileges.
	**/
	function getChatInfo(user:twitch.UserIdResolvable):js.lib.Promise<twitch.lib.api.kraken.user.userchatinfo.UserChatInfo>;
	/**
		Retrieves the emotes a given user can use.
	**/
	function getUserEmotes(user:twitch.UserIdResolvable):js.lib.Promise<twitch.EmoteSetList>;
	/**
		Retrieves the subscription data for a given user to a given channel.
	**/
	function getSubscriptionData(user:twitch.UserIdResolvable, toChannel:twitch.UserIdResolvable):js.lib.Promise<Null<twitch.UserSubscription>>;
	/**
		Get a list of channels a given user follows.
	**/
	function getFollowedChannels(user:twitch.UserIdResolvable, ?page:Float, ?limit:Float, ?orderBy:String, ?orderDirection:String):js.lib.Promise<Array<twitch.UserFollow>>;
	/**
		Get follow data for a given user to a given channel.
	**/
	function getFollowedChannel(user:twitch.UserIdResolvable, channel:twitch.UserIdResolvable):js.lib.Promise<Null<twitch.UserFollow>>;
	/**
		Follows a given channel with a given user.
	**/
	function followChannel(user:twitch.UserIdResolvable, channel:twitch.UserIdResolvable, ?notifications:Bool):js.lib.Promise<twitch.UserFollow>;
	/**
		Unfollows a given channel with a given user.
	**/
	function unfollowChannel(user:twitch.UserIdResolvable, channel:twitch.UserIdResolvable):js.lib.Promise<Void>;
	/**
		Retrieves a list of users a given user has blocked.
	**/
	function getBlockedUsers(user:twitch.UserIdResolvable, ?page:Float, ?limit:Float):js.lib.Promise<Array<twitch.UserBlock>>;
	/**
		Blocks a given user with another given user.
	**/
	function blockUser(user:twitch.UserIdResolvable, userToBlock:twitch.UserIdResolvable):js.lib.Promise<twitch.UserBlock>;
	/**
		Unblocks a given user with another given user.
	**/
	function unblockUser(user:twitch.UserIdResolvable, userToUnblock:twitch.UserIdResolvable):js.lib.Promise<Void>;
	private var _cleanUserCache : Dynamic;
	static var prototype : UserApi;
}