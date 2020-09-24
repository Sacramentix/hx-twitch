package twitch.lib.api.helix.stream.helixstreamapi;

/**
	The Helix API methods that deal with streams.
	
	Can be accessed using `client.helix.streams` on an {@ApiClient} instance.
	
	## Example
	```ts
	const client = new ApiClient(new StaticAuthProvider(clientId, accessToken));
	const stream = await client.helix.streams.getStreamByUserId('125328655');
	```
**/
@:jsRequire("twitch/lib/API/Helix/Stream/HelixStreamApi", "HelixStreamApi") extern class HelixStreamApi extends twitch.lib.api.baseapi.BaseApi {
	function new();
	/**
		Retrieves a list of streams.
	**/
	function getStreams(?filter:HelixPaginatedStreamFilter):js.lib.Promise<twitch.HelixPaginatedResult<twitch.HelixStream>>;
	/**
		Creates a paginator for streams.
	**/
	function getStreamsPaginated(?filter:HelixStreamFilter):twitch.HelixPaginatedRequest<twitch.lib.api.helix.stream.helixstream.HelixStreamData, twitch.HelixStream>;
	/**
		Retrieves the current stream for the given user name.
	**/
	function getStreamByUserName(user:twitch.UserNameResolvable):js.lib.Promise<Null<twitch.HelixStream>>;
	/**
		Retrieves the current stream for the given user ID.
	**/
	function getStreamByUserId(user:twitch.UserIdResolvable):js.lib.Promise<Null<twitch.HelixStream>>;
	/**
		Retrieves a list of all stream markers for an user.
	**/
	function getStreamMarkersForUser(user:twitch.UserIdResolvable):js.lib.Promise<twitch.HelixPaginatedResult<twitch.lib.api.helix.stream.helixstreammarkerwithvideo.HelixStreamMarkerWithVideo>>;
	/**
		Creates a paginator for all stream markers for an user.
	**/
	function getStreamMarkersForUserPaginated(user:twitch.UserIdResolvable):twitch.HelixPaginatedRequest<twitch.HelixStreamGetMarkersResult, twitch.lib.api.helix.stream.helixstreammarkerwithvideo.HelixStreamMarkerWithVideo>;
	/**
		Retrieves a list of all stream markers for a video.
	**/
	function getStreamMarkersForVideo(videoId:String):js.lib.Promise<twitch.HelixPaginatedResult<twitch.lib.api.helix.stream.helixstreammarkerwithvideo.HelixStreamMarkerWithVideo>>;
	/**
		Creates a paginator for all stream markers for a video.
	**/
	function getStreamMarkersForVideoPaginated(videoId:String):twitch.HelixPaginatedRequest<twitch.HelixStreamGetMarkersResult, twitch.lib.api.helix.stream.helixstreammarkerwithvideo.HelixStreamMarkerWithVideo>;
	/**
		Creates a new stream marker.
		
		Only works while the specified user's stream is live.
	**/
	function createStreamMarker(userId:String, ?description:String):js.lib.Promise<twitch.lib.api.helix.stream.helixstreammarker.HelixStreamMarker>;
	private var _getStreamMarkers : Dynamic;
	private var _getStreamMarkersPaginated : Dynamic;
	static var prototype : HelixStreamApi;
	private static var _mapGetStreamMarkersResult : Dynamic;
}