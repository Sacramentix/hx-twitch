package twitch;

/**
	Thrown whenever you try something that requires your own stream to be live.
**/
@:jsRequire("twitch", "StreamNotLiveError") extern class StreamNotLiveError extends twitch.lib.errors.customerror.CustomError {
	function new();
	static var prototype : StreamNotLiveError;
}