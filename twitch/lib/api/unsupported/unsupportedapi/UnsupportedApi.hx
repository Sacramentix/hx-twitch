package twitch.lib.api.unsupported.unsupportedapi;

/**
	Different API methods that are not officially supported by Twitch.
	
	Can be accessed using `client.unsupported` on an {@ApiClient} instance.
	
	## Example
	```ts
	const client = new ApiClient(new StaticAuthProvider(clientId, accessToken));
	const events = await client.unsupported.getEvents('125328655');
	```
**/
@:jsRequire("twitch/lib/API/Unsupported/UnsupportedApi", "UnsupportedApi") extern class UnsupportedApi extends twitch.lib.api.baseapi.BaseApi {
	function new();
	/**
		Retrieves a list of chatters in the Twitch chat of the given channel.
		
		**WARNING:** In contrast to most other methods, this takes a channel *name*, not a user ID.
	**/
	function getChatters(channel:twitch.UserNameResolvable):js.lib.Promise<twitch.ChattersList>;
	static var prototype : UnsupportedApi;
}