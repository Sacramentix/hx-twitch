package twitch;

/**
	An event that indicates the change of a moderator status, i.e. gaining or losing moderation privileges.
**/
@:jsRequire("twitch", "HelixModeratorEvent") extern class HelixModeratorEvent extends HelixModerator {
	function new(_eventData:twitch.lib.api.helix.moderation.helixmoderatorevent.HelixModeratorEventData, client:ApiClient);
	private final _eventData : Dynamic;
	/**
		The unique ID of the moderator event.
	**/
	final eventId : String;
	/**
		The type of the moderator event.
	**/
	final eventType : twitch.lib.api.helix.moderation.helixmoderatorevent.HelixModeratorEventType;
	/**
		The date of the moderator event.
	**/
	final eventDate : js.lib.Date;
	/**
		The version of the moderator event.
	**/
	final eventVersion : String;
	/**
		The id of the broadcaster where the user gained/lost moderation privileges.
	**/
	final broadcasterId : String;
	/**
		Retrieves more data about the broadcaster.
	**/
	function getBroadcaster():js.lib.Promise<Null<HelixUser>>;
	/**
		The name of the broadcaster where the user gained/lost moderation privileges.
	**/
	final broadcasterName : String;
	static var prototype : HelixModeratorEvent;
}