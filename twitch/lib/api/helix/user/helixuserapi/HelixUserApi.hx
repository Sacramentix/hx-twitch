package twitch.lib.api.helix.user.helixuserapi;

/**
	The Helix API methods that deal with users.
	
	Can be accessed using `client.helix.users` on an {@ApiClient} instance.
	
	## Example
	```ts
	const client = new ApiClient(new StaticAuthProvider(clientId, accessToken));
	const user = await client.helix.users.getUserById('125328655');
	```
**/
@:jsRequire("twitch/lib/API/Helix/User/HelixUserApi", "HelixUserApi") extern class HelixUserApi extends twitch.lib.api.baseapi.BaseApi {
	function new();
	/**
		Retrieves the user data for the given list of user IDs.
	**/
	function getUsersByIds(userIds:Array<twitch.UserIdResolvable>):js.lib.Promise<Array<twitch.HelixUser>>;
	/**
		Retrieves the user data for the given list of user names.
	**/
	function getUsersByNames(userNames:Array<twitch.UserNameResolvable>):js.lib.Promise<Array<twitch.HelixUser>>;
	/**
		Retrieves the user data for the given user ID.
	**/
	function getUserById(userId:twitch.UserIdResolvable):js.lib.Promise<Null<twitch.HelixUser>>;
	/**
		Retrieves the user data for the given user name.
	**/
	function getUserByName(userName:twitch.UserNameResolvable):js.lib.Promise<Null<twitch.HelixUser>>;
	/**
		Retrieves the user data of the currently authenticated user.
	**/
	function getMe(?withEmail:Bool):js.lib.Promise<twitch.HelixPrivilegedUser>;
	/**
		Updates the currently authenticated user's data.
	**/
	function updateUser(data:HelixUserUpdate):js.lib.Promise<twitch.HelixPrivilegedUser>;
	/**
		Retrieves a list of follow relations.
	**/
	function getFollows(filter:twitch.lib.api.helix.user.helixfollow.HelixFollowFilter):js.lib.Promise<twitch.HelixPaginatedResultWithTotal<twitch.HelixFollow>>;
	/**
		Creates a paginator for follow relations.
	**/
	function getFollowsPaginated(filter:twitch.lib.api.helix.user.helixfollow.HelixFollowFilter):twitch.lib.api.helix.helixpaginatedrequestwithtotal.HelixPaginatedRequestWithTotal<twitch.lib.api.helix.user.helixfollow.HelixFollowData, twitch.HelixFollow>;
	private var _getUsers : Dynamic;
	static var prototype : HelixUserApi;
	private static var _makeFollowsQuery : Dynamic;
}