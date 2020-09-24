package twitch.lib.api.kraken.channel.channelapi;

/**
	The API methods that deal with channels.
	
	Can be accessed using `client.kraken.channels` on an {@ApiClient} instance.
	
	## Example
	```ts
	const client = new ApiClient(new StaticAuthProvider(clientId, accessToken));
	const channel = await client.kraken.channels.getMyChannel();
	```
**/
@:jsRequire("twitch/lib/API/Kraken/Channel/ChannelApi", "ChannelApi") extern class ChannelApi extends twitch.lib.api.baseapi.BaseApi {
	function new();
	/**
		Gets the channel the client is logged in to.
	**/
	function getMyChannel():js.lib.Promise<twitch.PrivilegedChannel>;
	/**
		Retrieves the channel for the given user.
	**/
	function getChannel(user:twitch.UserIdResolvable):js.lib.Promise<twitch.Channel>;
	/**
		Updates the given channel with the given data.
	**/
	function updateChannel(channel:twitch.UserIdResolvable, data:ChannelUpdateData):js.lib.Promise<Void>;
	/**
		Retrieves the list of users that have editor rights to the given channel.
	**/
	function getChannelEditors(channel:twitch.UserIdResolvable):js.lib.Promise<Array<twitch.User>>;
	/**
		Retrieves the list of followers of the given channel.
	**/
	function getChannelFollowers(channel:twitch.UserIdResolvable, ?page:Float, ?limit:Float, ?orderDirection:String):js.lib.Promise<Array<twitch.ChannelFollow>>;
	/**
		Retrieves the list of subscribers of the given channel.
	**/
	function getChannelSubscriptions(channel:twitch.UserIdResolvable, ?page:Float, ?limit:Float, ?orderDirection:String):js.lib.Promise<Array<twitch.ChannelSubscription>>;
	/**
		Retrieves the total number of subscribers for the given channel.
	**/
	function getChannelSubscriptionCount(channel:twitch.UserIdResolvable):js.lib.Promise<Float>;
	/**
		Retrieves the subscription data for the given user to a given channel.
		
		Throws if the channel doesn't have a subscription program or the user is not subscribed to it.
		
		This method requires access to the channel. If you only have access to the user,
		use {@UserApi#getSubscriptionData} instead.
	**/
	function getChannelSubscriptionByUser(channel:twitch.UserIdResolvable, byUser:twitch.UserIdResolvable):js.lib.Promise<Null<twitch.ChannelSubscription>>;
	/**
		Retrieves a list of teams of the given channel.
	**/
	function getChannelTeams(channel:twitch.UserIdResolvable):js.lib.Promise<Array<twitch.lib.api.kraken.team.team.Team>>;
	/**
		Starts a commercial in the given channel.
	**/
	function startChannelCommercial(channel:twitch.UserIdResolvable, length:twitch.CommercialLength):js.lib.Promise<Void>;
	/**
		Resets the given channel's stream key.
	**/
	function resetChannelStreamKey(channel:twitch.UserIdResolvable):js.lib.Promise<twitch.lib.api.kraken.channel.privilegedchannel.PrivilegedChannelData>;
	private var _getChannelSubscriptions : Dynamic;
	static var prototype : ChannelApi;
}