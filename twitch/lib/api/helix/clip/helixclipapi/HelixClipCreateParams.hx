package twitch.lib.api.helix.clip.helixclipapi;

/**
	Parameters for creating a clip.
**/
typedef HelixClipCreateParams = {
	/**
		The ID of the broadcaster of which you want to create a clip.
	**/
	var channelId : String;
	/**
		Add a delay before the clip creation that accounts for the usual delay in the viewing experience.
	**/
	@:optional
	var createAfterDelay : Bool;
};