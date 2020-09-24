package twitch.lib.api.kraken.channel.channelsubscription;

typedef ChannelSubscriptionData = {
	var user : twitch.lib.api.kraken.user.user.UserData;
	var _id : String;
	var sub_plan : String;
	var sub_plan_name : String;
	var created_at : String;
};