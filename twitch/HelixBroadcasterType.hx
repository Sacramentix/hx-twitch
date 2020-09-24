package twitch;

/**
	The type of a broadcaster.
**/
@:jsRequire("twitch", "HelixBroadcasterType") @:enum extern abstract HelixBroadcasterType(String) from String to String {
	/**
		A Twitch Partner.
	**/
	var Partner;
	/**
		A Twitch Affiliate.
	**/
	var Affiliate;
	/**
		A user that's neither a partner nor an affiliate.
	**/
	var None;
}