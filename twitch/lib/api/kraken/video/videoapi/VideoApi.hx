package twitch.lib.api.kraken.video.videoapi;

/**
	The API methods that deal with users.
	
	Can be accessed using `client.kraken.videos` on an {@ApiClient} instance.
	
	## Example
	```ts
	const client = new ApiClient(new StaticAuthProvider(clientId, accessToken));
	const user = await client.kraken.videos.getUser('125328655');
	```
**/
@:jsRequire("twitch/lib/API/Kraken/Video/VideoApi", "VideoApi") extern class VideoApi extends twitch.lib.api.baseapi.BaseApi {
	function new();
	/**
		Retrieves a video by ID.
	**/
	function getVideo(id:String):js.lib.Promise<twitch.lib.api.kraken.video.video.Video>;
	/**
		Retrieves the top videos.
	**/
	function getTopVideos(?game:String, ?searchPeriod:VideoSearchPeriod, ?type:twitch.lib.api.helix.video.helixvideo.HelixVideoType, ?languageCode:String, ?sort:VideoSort, ?page:Float, ?limit:Float):js.lib.Promise<Array<twitch.lib.api.kraken.video.video.Video>>;
	/**
		Retrieves the videos from channels followed by the authenticated user.
	**/
	function getFollowedVideos(?type:twitch.lib.api.helix.video.helixvideo.HelixVideoType, ?languageCode:String, ?sort:VideoSort, ?page:Float, ?limit:Float):js.lib.Promise<Array<twitch.lib.api.kraken.video.video.Video>>;
	/**
		Creates a new video.
	**/
	function createVideo(channel:twitch.UserIdResolvable, createData:twitch.VideoCreateData):js.lib.Promise<twitch.lib.api.kraken.video.createdvideo.CreatedVideo>;
	/**
		Completes a video upload.
	**/
	function completeVideoUpload(id:String, token:String):js.lib.Promise<Void>;
	/**
		Updates an already uploaded video.
	**/
	function updateVideo(id:String, updateData:VideoUpdateData):js.lib.Promise<Void>;
	/**
		Deletes a video.
	**/
	function deleteVideo(id:String):js.lib.Promise<Void>;
	static var prototype : VideoApi;
}