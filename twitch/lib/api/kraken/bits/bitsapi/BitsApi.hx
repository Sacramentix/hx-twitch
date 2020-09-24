package twitch.lib.api.kraken.bits.bitsapi;

/**
	The API methods that deal with Bits/Cheermotes.
	
	Can be accessed using `client.kraken.bits` on an {@ApiClient} instance.
	
	## Example
	```ts
	const client = new ApiClient(new StaticAuthProvider(clientId, accessToken));
	const cheermotes = await client.kraken.bits.getCheermotes();
	```
**/
@:jsRequire("twitch/lib/API/Kraken/Bits/BitsApi", "BitsApi") extern class BitsApi extends twitch.lib.api.baseapi.BaseApi {
	function new();
	/**
		Retrieves global and channel cheermotes.
	**/
	function getCheermotes(?channel:twitch.UserIdResolvable, ?includeSponsored:Bool):js.lib.Promise<twitch.CheermoteList>;
	static var prototype : BitsApi;
}