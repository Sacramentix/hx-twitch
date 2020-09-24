package twitch.lib.api.helix.stream.helixstream;

typedef HelixStreamData = {
	var id : String;
	var user_id : String;
	var user_name : String;
	var game_id : String;
	var community_ids : Array<String>;
	var type : twitch.HelixStreamType;
	var title : String;
	var viewer_count : Float;
	var started_at : String;
	var language : String;
	var thumbnail_url : String;
};