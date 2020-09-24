package twitch;

/**
	The type of a stream.
**/
@:jsRequire("twitch", "HelixStreamType") @:enum extern abstract HelixStreamType(String) from String to String {
	/**
		Returned by Twitch in case of an error.
	**/
	var None;
	/**
		A live stream.
	**/
	var Live;
	/**
		A vodcast.
		
		Currently not supported by Twitch - but one can only hope and leave it in here.
	**/
	var Vodcast;
}