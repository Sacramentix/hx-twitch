package twitch.lib.api.kraken.channel.channelfollow;

typedef ChannelFollowData = {
	var created_at : String;
	var notifications : Bool;
	var user : twitch.lib.api.kraken.user.user.UserData;
};