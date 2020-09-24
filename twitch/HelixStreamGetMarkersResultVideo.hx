package twitch;

typedef HelixStreamGetMarkersResultVideo = {
	var video_id : String;
	var markers : Array<twitch.lib.api.helix.stream.helixstreammarkerwithvideo.HelixStreamMarkerVideoData>;
};