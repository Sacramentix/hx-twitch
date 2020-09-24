package twitch.lib.api.helix.bits.helixbitsapi;

/**
	The Helix API methods that deal with bits.
	
	Can be accessed using `client.helix.bits` on an {@ApiClient} instance.
	
	## Example
	```ts
	const client = new ApiClient(new StaticAuthProvider(clientId, accessToken));
	const leaderboard = await client.helix.bits.getLeaderboard({ period: 'day' });
	```
**/
@:jsRequire("twitch/lib/API/Helix/Bits/HelixBitsApi", "HelixBitsApi") extern class HelixBitsApi extends twitch.lib.api.baseapi.BaseApi {
	function new();
	/**
		Gets a bits leaderboard of your channel.
	**/
	function getLeaderboard(?params:HelixBitsLeaderboardQuery):js.lib.Promise<twitch.HelixBitsLeaderboard>;
	static var prototype : HelixBitsApi;
}