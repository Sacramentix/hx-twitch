package twitch.lib.api.helix.moderation.helixmoderationapi;

/**
	The Helix API methods that deal with moderation.
	
	Can be accessed using `client.helix.moderation` on an {@ApiClient} instance.
	
	## Example
	```ts
	const client = new ApiClient(new StaticAuthProvider(clientId, accessToken));
	const game = await client.helix.moderation.getBannedUsers('61369223');
	```
**/
@:jsRequire("twitch/lib/API/Helix/Moderation/HelixModerationApi", "HelixModerationApi") extern class HelixModerationApi extends twitch.lib.api.baseapi.BaseApi {
	function new();
	/**
		Retrieves a list of banned users in a given channel.
	**/
	function getBannedUsers(channel:twitch.UserIdResolvable, ?filter:HelixBanFilter):js.lib.Promise<twitch.HelixPaginatedResult<twitch.HelixBan>>;
	/**
		Creates a paginator for banned users in a given channel.
	**/
	function getBannedUsersPaginated(channel:twitch.UserIdResolvable):twitch.HelixPaginatedRequest<twitch.lib.api.helix.moderation.helixban.HelixBanData, twitch.HelixBan>;
	/**
		Checks whether a given user is banned in a given channel.
	**/
	function checkUserBan(channel:twitch.UserIdResolvable, user:twitch.UserIdResolvable):js.lib.Promise<Bool>;
	/**
		Retrieves a list of ban events for a given channel.
	**/
	function getBanEvents(channel:twitch.UserIdResolvable, ?filter:HelixBanFilter):js.lib.Promise<{
		var data : Array<twitch.HelixBanEvent>;
		var cursor : Null<String>;
	}>;
	/**
		Creates a paginator for ban events for a given channel.
	**/
	function getBanEventsPaginated(channel:twitch.UserIdResolvable):twitch.HelixPaginatedRequest<twitch.lib.api.helix.moderation.helixbanevent.HelixBanEventData, twitch.HelixBanEvent>;
	/**
		Retrieves a list of moderators in a given channel.
	**/
	function getModerators(channel:twitch.UserIdResolvable, ?filter:twitch.HelixModeratorFilter):js.lib.Promise<twitch.HelixPaginatedResult<twitch.HelixModerator>>;
	/**
		Creates a paginator for moderators in a given channel.
	**/
	function getModeratorsPaginated(channel:twitch.UserIdResolvable):twitch.HelixPaginatedRequest<twitch.lib.api.helix.moderation.helixmoderator.HelixModeratorData, twitch.HelixModerator>;
	/**
		Checks whether a given user is a moderator of a given channel.
	**/
	function checkUserMod(channel:twitch.UserIdResolvable, user:twitch.UserIdResolvable):js.lib.Promise<Bool>;
	/**
		Retrieves a list of moderator events for a given channel.
	**/
	function getModeratorEvents(channel:twitch.UserIdResolvable, ?filter:twitch.HelixModeratorFilter):js.lib.Promise<twitch.HelixPaginatedResult<twitch.HelixModeratorEvent>>;
	/**
		Creates a paginator for moderator events for a given channel.
	**/
	function getModeratorEventsPaginated(channel:twitch.UserIdResolvable):twitch.HelixPaginatedRequest<twitch.lib.api.helix.moderation.helixmoderatorevent.HelixModeratorEventData, twitch.HelixModeratorEvent>;
	static var prototype : HelixModerationApi;
}