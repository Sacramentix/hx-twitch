package twitch.lib.api.kraken.search.searchapi;

/**
	The API methods that deal with searching.
	
	Can be accessed using `client.kraken.search` on an {@ApiClient} instance.
	
	## Example
	```ts
	const client = new ApiClient(new StaticAuthProvider(clientId, accessToken));
	const channel = await client.kraken.search.searchStreams('Hearthstone');
	```
**/
@:jsRequire("twitch/lib/API/Kraken/Search/SearchApi", "SearchApi") extern class SearchApi extends twitch.lib.api.baseapi.BaseApi {
	function new();
	/**
		Retrieves a list of channels that match the given search term.
	**/
	function searchChannels(term:String, ?page:Float, ?limit:Float):js.lib.Promise<Array<twitch.Channel>>;
	/**
		Retrieves a list of streams that match the given search term.
	**/
	function searchStreams(term:String, ?page:Float, ?limit:Float, ?hls:Bool):js.lib.Promise<Array<twitch.Stream>>;
	static var prototype : SearchApi;
}