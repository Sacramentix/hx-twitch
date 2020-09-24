package twitch.lib.api.kraken.user.usersubscription;

typedef UserSubscriptionData = {
	var channel : twitch.lib.api.kraken.channel.channel.ChannelData;
	var _id : String;
	var sub_plan : String;
	var sub_plan_name : String;
	var created_at : String;
};