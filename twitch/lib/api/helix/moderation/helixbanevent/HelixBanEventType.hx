package twitch.lib.api.helix.moderation.helixbanevent;

/**
	The different types a ban event can have.
**/
@:jsRequire("twitch/lib/API/Helix/Moderation/HelixBanEvent", "HelixBanEventType") @:enum extern abstract HelixBanEventType(String) from String to String {
	/**
		Sent when a user gets banned.
	**/
	var Ban;
	/**
		Sent when a user gets unbanned.
	**/
	var Unban;
}