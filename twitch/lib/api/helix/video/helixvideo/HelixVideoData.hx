package twitch.lib.api.helix.video.helixvideo;

typedef HelixVideoData = {
	var id : String;
	var user_id : String;
	var user_name : String;
	var title : String;
	var description : String;
	var created_at : String;
	var published_at : String;
	var url : String;
	var thumbnail_url : String;
	var viewable : HelixVideoViewableStatus;
	var view_count : Float;
	var language : String;
	var type : HelixVideoType;
	var duration : String;
};