package twitch.lib.api.kraken.video.video;

typedef VideoData = {
	var _id : String;
	var broadcast_id : String;
	var broadcast_type : String;
	var channel : VideoChannelData;
	var created_at : String;
	var description : String;
	var description_html : String;
	var fps : { };
	var game : String;
	var language : String;
	var length : Float;
	var muted_segments : Array<VideoMutedSegment>;
	var preview : {
		var small : String;
		var medium : String;
		var large : String;
		var template : String;
	};
	var published_at : String;
	var resolutions : { };
	var status : String;
	var tag_list : String;
	var thumbnails : {
		var small : Array<VideoThumbnail>;
		var medium : Array<VideoThumbnail>;
		var large : Array<VideoThumbnail>;
		var template : Array<VideoThumbnail>;
	};
	var title : String;
	var url : String;
	var viewable : twitch.lib.api.helix.video.helixvideo.HelixVideoViewableStatus;
	var viewable_at : Null<String>;
	var views : Float;
};