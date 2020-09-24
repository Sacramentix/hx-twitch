package twitch;

/**
	The type of a stream.
**/
@:jsRequire("twitch", "StreamType") @:enum extern abstract StreamType(String) from String to String {
	/**
		A live stream.
	**/
	var Live;
	/**
		An upload to the channel (VoD) that is streamed live for the first time.
	**/
	var Premiere;
	/**
		A rerun of a past live stream.
	**/
	var ReRun;
	/**
		All types of streams. Used for filtering.
	**/
	var All;
}