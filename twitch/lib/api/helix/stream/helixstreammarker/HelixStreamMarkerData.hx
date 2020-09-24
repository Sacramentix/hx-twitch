package twitch.lib.api.helix.stream.helixstreammarker;

typedef HelixStreamMarkerData = {
	var id : String;
	var created_at : String;
	var description : String;
	var position_seconds : Float;
	@:optional
	var URL : String;
};