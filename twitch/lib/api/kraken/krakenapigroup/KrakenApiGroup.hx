package twitch.lib.api.kraken.krakenapigroup;

/**
	Groups all API calls available in Kraken v5.
	
	Can be accessed using {@ApiClient#kraken}.
**/
@:jsRequire("twitch/lib/API/Kraken/KrakenApiGroup", "KrakenApiGroup") extern class KrakenApiGroup extends twitch.lib.api.baseapi.BaseApi {
	function new();
	/**
		The API methods that deal with bits.
	**/
	final bits : twitch.lib.api.kraken.bits.bitsapi.BitsApi;
	/**
		The API methods that deal with channels.
	**/
	final channels : twitch.lib.api.kraken.channel.channelapi.ChannelApi;
	/**
		The API methods that deal with chat.
	**/
	final chat : twitch.lib.api.kraken.chat.chatapi.ChatApi;
	/**
		The API methods that deal with searching.
	**/
	final search : twitch.lib.api.kraken.search.searchapi.SearchApi;
	/**
		The API methods that deal with streams.
	**/
	final streams : twitch.lib.api.kraken.stream.streamapi.StreamApi;
	/**
		The API methods that deal with teams.
	**/
	final teams : twitch.lib.api.kraken.team.teamapi.TeamApi;
	/**
		The API methods that deal with videos.
	**/
	final videos : twitch.lib.api.kraken.video.videoapi.VideoApi;
	/**
		The API methods that deal with users.
	**/
	final users : twitch.lib.api.kraken.user.userapi.UserApi;
	static var prototype : KrakenApiGroup;
}