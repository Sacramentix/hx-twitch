package twitch;

/**
	An event that indicates the change of a ban status, i.e. banning or unbanning a user.
**/
@:jsRequire("twitch", "HelixBanEvent") extern class HelixBanEvent extends HelixBan {
	function new(_eventData:twitch.lib.api.helix.moderation.helixbanevent.HelixBanEventData, client:ApiClient);
	private final _eventData : Dynamic;
	/**
		The unique ID of the ban event.
	**/
	final eventId : String;
	/**
		The type of the ban event.
	**/
	final eventType : twitch.lib.api.helix.moderation.helixbanevent.HelixBanEventType;
	/**
		The date of the ban event.
	**/
	final eventDate : js.lib.Date;
	/**
		The version of the ban event.
	**/
	final eventVersion : String;
	/**
		The id of the broadcaster from whose chat the user was banned/unbanned.
	**/
	final broadcasterId : String;
	/**
		Retrieves more data about the broadcaster.
	**/
	function getBroadcaster():js.lib.Promise<Null<HelixUser>>;
	/**
		The name of the broadcaster from whose chat the user was banned/unbanned.
	**/
	final broadcasterName : String;
	static var prototype : HelixBanEvent;
}