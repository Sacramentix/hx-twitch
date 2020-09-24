package twitch.lib.api.kraken.user.userfollow;

typedef UserFollowData = {
	var created_at : String;
	var notifications : Bool;
	var channel : twitch.lib.api.kraken.channel.channel.ChannelData;
};