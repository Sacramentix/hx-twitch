package twitch.lib.api.badges.badgesapi;

/**
	The API methods that deal with badges.
	
	Can be accessed using `client.badges` on an {@ApiClient} instance.
	
	## Example
	```ts
	const client = new ApiClient(new StaticAuthProvider(clientId, accessToken));
	const cheermotes = await client.badges.getGlobalBadges();
	```
**/
@:jsRequire("twitch/lib/API/Badges/BadgesApi", "BadgesApi") extern class BadgesApi extends twitch.lib.api.baseapi.BaseApi {
	function new();
	/**
		Retrieves all globally applicable chat badges.
	**/
	function getGlobalBadges(?language:String):js.lib.Promise<twitch.ChatBadgeList>;
	/**
		Retrieves all applicable chat badges for a given channel.
	**/
	function getChannelBadges(channel:twitch.UserIdResolvable, ?includeGlobal:Bool, ?language:String):js.lib.Promise<twitch.ChatBadgeList>;
	static var prototype : BadgesApi;
}