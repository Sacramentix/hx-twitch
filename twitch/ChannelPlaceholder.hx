package twitch;

/**
	A placeholder for a channel.
	
	This is used for example when you only have retrieved user data, but not channel data.
	This can do anything you can do with only a channel ID, as it's equivalent to the user ID.
**/
@:jsRequire("twitch", "ChannelPlaceholder") extern class ChannelPlaceholder {
	function new(id:String, client:ApiClient);
	private final _client : ApiClient;
	private var _data : twitch.lib.api.kraken.channel.channelplaceholder.ChannelPlaceholderData;
	final cacheKey : String;
	/**
		The ID of the channel.
	**/
	final id : String;
	/**
		Retrieves the list of cheermotes you can use in the channel.
	**/
	function getCheermotes():js.lib.Promise<CheermoteList>;
	/**
		Retrieves the channel data.
	**/
	function getChannel():js.lib.Promise<Channel>;
	/**
		Retrieves the channel's stream data.
	**/
	function getStream():js.lib.Promise<Null<Stream>>;
	/**
		Retrieves the channel's followers.
	**/
	function getFollowers():js.lib.Promise<Array<ChannelFollow>>;
	/**
		Retrieves the channel's subscribers.
	**/
	function getSubscriptions():js.lib.Promise<Array<ChannelSubscription>>;
	/**
		Retrieves the subscription data for the given user to the channel.
		
		Throws if the channel doesn't have a subscription program or the user is not subscribed to it.
		
		This method requires access to the channel. If you only have access to the user,
		use {@User#getSubscriptionTo} instead.
	**/
	function getSubscriptionBy(user:UserIdResolvable):js.lib.Promise<Null<ChannelSubscription>>;
	/**
		Checks whether the given user is subscribed to the channel.
	**/
	function hasSubscriber(user:UserIdResolvable):js.lib.Promise<Bool>;
	static var prototype : ChannelPlaceholder;
}