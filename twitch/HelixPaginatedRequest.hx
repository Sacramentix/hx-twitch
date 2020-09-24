package twitch;

/**
	Represents a request to the new Twitch API (Helix) that utilizes a cursor to paginate through its results.
	
	Aside from the methods described below, you can also utilize the async iterator using `for await .. of`:
	
	```ts
	const result = client.helix.videos.getVideosByUser('125328655');
	for await (const video of result) {
	     console.log(video.title);
	}
	```
**/
@:jsRequire("twitch", "HelixPaginatedRequest") extern class HelixPaginatedRequest<D, T> {
	function new<D, T>(_callOptions:{ /** The URL to request.If `type` is not `'custom'`, this is relative to the respective API root endpoint. Otherwise, it is an absoulte URL. **/ var url : String; /** The HTTP method to use. Defaults to `'GET'`. **/ @:optional var method : String; /** The query parameters to send with the API call. **/ @:optional var query : { }; /** The form body to send with the API call.If this is given, `jsonBody` will be ignored. **/ @:optional var body : { }; /** The JSON body to send with the API call.If `body` is also given, this will be ignored. **/ @:optional var jsonBody : Dynamic; /** The scope the request needs. **/ @:optional var scope : String; /** The Kraken API version to request with. Defaults to 5.If `type` is not `'kraken'`, this will be ignored.Note that v3 will be removed at some point and v5 will be the only Kraken version left, so you should only use this option if you want to rewrite everything in a few months.Internally, only v5 and Helix are used. **/ @:optional var version : Float; /** Whether OAuth credentials should be generated and sent with the request. Defaults to `true`. **/ @:optional var auth : Bool; }, client:ApiClient, _mapper:(data:D) -> ts.AnyOf2<Array<T>, T>);
	private final _callOptions : Dynamic;
	private final _mapper : Dynamic;
	private final _client : Dynamic;
	@:optional
	private var _currentCursor : String;
	private var _isFinished : Bool;
	@:optional
	private var _currentData : twitch.lib.api.helix.helixresponse.HelixPaginatedResponse<D>;
	/**
		The last retrieved page of data associated to the requested resource.
		
		Only works with {@HelixPaginatedRequest#getNext} and not with any other methods of data retrieval.
	**/
	final current : Null<Array<D>>;
	/**
		Retrieves and returns the next available page of data associated to the requested resource, or an empty array if there are no more available pages.
	**/
	function getNext():js.lib.Promise<Array<T>>;
	/**
		Retrieves and returns all data associated to the requested resource.
		
		Be aware that this makes multiple calls to the Twitch API. Due to this, you might be more suspectible to rate limits.
		
		Also be aware that this resets the internal cursor, so avoid using this and {@HelixPaginatedRequest#getNext} together.
	**/
	function getAll():js.lib.Promise<Array<T>>;
	/**
		Retrieves the current cursor.
		
		Only useful if you want to make manual requests to the API.
	**/
	final currentCursor : Null<String>;
	/**
		Resets the internal cursor.
		
		This will make {@HelixPaginatedRequest#getNext} start from the first page again.
	**/
	function reset():Void;
	private function _fetchData(?additionalOptions:{ /** The URL to request.If `type` is not `'custom'`, this is relative to the respective API root endpoint. Otherwise, it is an absoulte URL. **/ @:optional var url : String; /** The endpoint to call, i.e. /kraken, /helix or a custom (potentially unsupported) endpoint. **/ @:optional var type : TwitchApiCallType; /** The HTTP method to use. Defaults to `'GET'`. **/ @:optional var method : String; /** The query parameters to send with the API call. **/ @:optional var query : { }; /** The form body to send with the API call.If this is given, `jsonBody` will be ignored. **/ @:optional var body : { }; /** The JSON body to send with the API call.If `body` is also given, this will be ignored. **/ @:optional var jsonBody : Dynamic; /** The scope the request needs. **/ @:optional var scope : String; /** The Kraken API version to request with. Defaults to 5.If `type` is not `'kraken'`, this will be ignored.Note that v3 will be removed at some point and v5 will be the only Kraken version left, so you should only use this option if you want to rewrite everything in a few months.Internally, only v5 and Helix are used. **/ @:optional var version : Float; /** Whether OAuth credentials should be generated and sent with the request. Defaults to `true`. **/ @:optional var auth : Bool; }):js.lib.Promise<twitch.lib.api.helix.helixresponse.HelixPaginatedResponse<D>>;
	private function _processResult(result:twitch.lib.api.helix.helixresponse.HelixPaginatedResponse<D>):Array<T>;
	static var prototype : HelixPaginatedRequest<Dynamic, Dynamic>;
}