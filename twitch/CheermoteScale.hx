package twitch;

/**
	The scale of the cheermote, which usually relates to the pixel density of the device in use.
**/
@:jsRequire("twitch", "CheermoteScale") @:enum extern abstract CheermoteScale(String) from String to String {
	/**
		The cheermote should not be scaled.
	**/
	var x1;
	/**
		The cheermote should be scaled 1.5x.
	**/
	var x1_5;
	/**
		The cheermote should be scaled 2x.
	**/
	var x2;
	/**
		The cheermote should be scaled 3x.
	**/
	var x3;
	/**
		The cheermote should be scaled 4x.
	**/
	var x4;
}