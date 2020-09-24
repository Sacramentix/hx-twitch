package twitch.lib.api.kraken.stream.streamapi;

/**
	The API methods that deal with streams.
	
	Can be accessed using `client.kraken.streams` on an {@ApiClient} instance.
	
	## Example
	```ts
	const client = new ApiClient(new StaticAuthProvider(clientId, accessToken));
	const stream = await client.kraken.streams.getStreamByChannel('125328655');
	```
**/
@:jsRequire("twitch/lib/API/Kraken/Stream/StreamApi", "StreamApi") extern class StreamApi extends twitch.lib.api.baseapi.BaseApi {
	function new();
	/**
		Retrieves the current stream on the given channel.
	**/
	function getStreamByChannel(channel:twitch.UserIdResolvable):js.lib.Promise<Null<twitch.Stream>>;
	/**
		Retrieves a list of streams.
	**/
	function getStreams(?channels:ts.AnyOf2<String, Array<String>>, ?game:String, ?languageCode:String, ?type:twitch.StreamType, ?page:Float, ?limit:Float):js.lib.Promise<Array<twitch.Stream>>;
	/**
		Retrieves a list of all streams.
	**/
	function getAllStreams(?page:Float, ?limit:Float):js.lib.Promise<Array<twitch.Stream>>;
	/**
		Retrieves a list of all live streams.
	**/
	function getAllLiveStreams(?page:Float, ?limit:Float):js.lib.Promise<Array<twitch.Stream>>;
	/**
		Retrieves a list of all streams on channels the currently authenticated user is following.
	**/
	function getFollowedStreams(?type:twitch.StreamType, ?page:Float, ?limit:Float):js.lib.Promise<Array<twitch.Stream>>;
	static var prototype : StreamApi;
}