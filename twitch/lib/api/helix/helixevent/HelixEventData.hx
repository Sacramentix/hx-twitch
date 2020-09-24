package twitch.lib.api.helix.helixevent;

typedef HelixEventData<T, EventType> = {
	var id : String;
	var event_type : EventType;
	var event_timestamp : String;
	var version : String;
	var event_data : T;
};