package twitch.lib.api.helix.clip.helixclipapi;

/**
	The Helix API methods that deal with clips.
	
	Can be accessed using `client.helix.clips` on an {@ApiClient} instance.
	
	## Example
	```ts
	const client = new ApiClient(new StaticAuthProvider(clientId, accessToken));
	const clipId = await client.helix.clips.createClip({ channelId: '125328655' });
	```
**/
@:jsRequire("twitch/lib/API/Helix/Clip/HelixClipApi", "HelixClipApi") extern class HelixClipApi extends twitch.lib.api.baseapi.BaseApi {
	function new();
	/**
		Retrieves the latest clips for the specified broadcaster.
	**/
	function getClipsForBroadcaster(userId:String, ?filter:HelixClipFilter):js.lib.Promise<twitch.HelixPaginatedResult<twitch.HelixClip>>;
	/**
		Creates a paginator for the latest clips for the specified broadcaster.
	**/
	function getClipsForBroadcasterPaginated(userId:String, ?filter:HelixClipFilter):twitch.HelixPaginatedRequest<twitch.lib.api.helix.clip.helixclip.HelixClipData, twitch.HelixClip>;
	/**
		Retrieves the latest clips for the specified game.
	**/
	function getClipsForGame(gameId:String, ?filter:HelixClipFilter):js.lib.Promise<twitch.HelixPaginatedResult<twitch.HelixClip>>;
	/**
		Creates a paginator for the latest clips for the specified game.
	**/
	function getClipsForGamePaginated(gameId:String, ?filter:HelixClipFilter):twitch.HelixPaginatedRequest<twitch.lib.api.helix.clip.helixclip.HelixClipData, twitch.HelixClip>;
	/**
		Retrieves the clips identified by the given IDs.
	**/
	function getClipsByIds(ids:Array<String>):js.lib.Promise<Array<twitch.HelixClip>>;
	/**
		Retrieves the clip identified by the given ID.
	**/
	function getClipById(id:String):js.lib.Promise<Null<twitch.HelixClip>>;
	/**
		Creates a clip of a running stream.
		
		Returns the ID of the clip.
	**/
	function createClip(params:HelixClipCreateParams):js.lib.Promise<String>;
	private var _getClips : Dynamic;
	private var _getClipsPaginated : Dynamic;
	static var prototype : HelixClipApi;
}