package twitch.lib.api.helix.stream.helixstreammarker;

@:jsRequire("twitch/lib/API/Helix/Stream/HelixStreamMarker", "HelixStreamMarker") extern class HelixStreamMarker {
	function new(_data:HelixStreamMarkerData, client:twitch.ApiClient);
	private final _data : HelixStreamMarkerData;
	private final _client : twitch.ApiClient;
	/**
		The ID of the marker.
	**/
	final id : String;
	/**
		The date and time when the marker was created.
	**/
	final creationDate : js.lib.Date;
	/**
		The description of the marker.
	**/
	final description : String;
	/**
		The position in the stream when the marker was created, in seconds.
	**/
	final positionInSeconds : Float;
	static var prototype : HelixStreamMarker;
}