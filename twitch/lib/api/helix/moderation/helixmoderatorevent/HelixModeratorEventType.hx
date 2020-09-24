package twitch.lib.api.helix.moderation.helixmoderatorevent;

/**
	The different types a moderator event can have.
**/
@:jsRequire("twitch/lib/API/Helix/Moderation/HelixModeratorEvent", "HelixModeratorEventType") @:enum extern abstract HelixModeratorEventType(String) from String to String {
	/**
		Sent when a user gains moderation privileges.
	**/
	var Add;
	/**
		Sent when a user loses moderation privileges.
	**/
	var Remove;
}