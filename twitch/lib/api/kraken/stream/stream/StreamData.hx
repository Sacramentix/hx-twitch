package twitch.lib.api.kraken.stream.stream;

typedef StreamData = {
	var _id : ts.AnyOf2<String, Float>;
	var game : String;
	var viewers : Float;
	var video_height : Float;
	var average_fps : Float;
	var delay : Float;
	var created_at : String;
	var is_playlist : Bool;
	var stream_type : twitch.StreamType;
	var preview : {
		var small : String;
		var medium : String;
		var large : String;
		var template : String;
	};
	var channel : twitch.lib.api.kraken.channel.channel.ChannelData;
};