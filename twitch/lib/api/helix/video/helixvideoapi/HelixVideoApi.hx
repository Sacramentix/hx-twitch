package twitch.lib.api.helix.video.helixvideoapi;

/**
	The Helix API methods that deal with videos.
	
	Can be accessed using `client.helix.videos` on an {@ApiClient} instance.
	
	## Example
	```ts
	const client = new ApiClient(new StaticAuthProvider(clientId, accessToken));
	const videos = await client.helix.videos.getVideosByUser('125328655');
	```
**/
@:jsRequire("twitch/lib/API/Helix/Video/HelixVideoApi", "HelixVideoApi") extern class HelixVideoApi extends twitch.lib.api.baseapi.BaseApi {
	function new();
	/**
		Retrieves the video data for the given list of video IDs.
	**/
	function getVideosByIds(ids:ts.AnyOf2<String, Array<String>>):js.lib.Promise<Array<twitch.HelixVideo>>;
	/**
		Retrieves the video data for the given video ID.
	**/
	function getVideoById(id:String):js.lib.Promise<Null<twitch.HelixVideo>>;
	/**
		Retrieves the videos of the given user.
	**/
	function getVideosByUser(user:twitch.UserIdResolvable, ?filter:HelixPaginatedVideoFilter):js.lib.Promise<twitch.HelixPaginatedResult<twitch.HelixVideo>>;
	/**
		Creates a paginator for videos of the given user.
	**/
	function getVideosByUserPaginated(user:twitch.UserIdResolvable, ?filter:HelixVideoFilter):twitch.HelixPaginatedRequest<twitch.lib.api.helix.video.helixvideo.HelixVideoData, twitch.HelixVideo>;
	/**
		Retrieves the videos of the given game.
	**/
	function getVideosByGame(gameId:String, ?filter:HelixVideoFilter):js.lib.Promise<twitch.HelixPaginatedResult<twitch.HelixVideo>>;
	/**
		Creates a paginator for videos of the given game.
	**/
	function getVideosByGamePaginated(gameId:String, ?filter:HelixVideoFilter):twitch.HelixPaginatedRequest<twitch.lib.api.helix.video.helixvideo.HelixVideoData, twitch.HelixVideo>;
	private var _getVideos : Dynamic;
	private var _getVideosPaginated : Dynamic;
	static var prototype : HelixVideoApi;
	private static var _makeVideosQuery : Dynamic;
}