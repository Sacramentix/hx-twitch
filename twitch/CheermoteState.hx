package twitch;

/**
	The state of a cheermote, i.e. whether it's animated or not.
**/
@:jsRequire("twitch", "CheermoteState") @:enum extern abstract CheermoteState(String) from String to String {
	/**
		The cheermote should be animated.
	**/
	var animated;
	/**
		The cheermote should not be animated.
	**/
	@:native("static")
	var static_;
}