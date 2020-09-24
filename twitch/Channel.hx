package twitch;

/**
	A Twitch Channel.
**/
@:jsRequire("twitch", "Channel") extern class Channel extends ChannelPlaceholder {
	function new(data:twitch.lib.api.kraken.channel.channel.ChannelData, client:ApiClient);
	/**
		Retrieves the channel data.
	**/
	function getChannel():js.lib.Promise<Channel>;
	/**
		Retrieves a list of the teams of the channel.
	**/
	function getTeams():js.lib.Promise<Array<twitch.lib.api.kraken.team.team.Team>>;
	/**
		Updates the game, title or delay of a channel or toggles the channel feed.
	**/
	function update(data:twitch.lib.api.kraken.channel.channelapi.ChannelUpdateData):js.lib.Promise<Void>;
	/**
		The name of the channel.
	**/
	final name : String;
	/**
		The display name of the channel, with proper capitalization or as Asian script.
	**/
	final displayName : String;
	/**
		The broadcaster's language.
	**/
	final broadcasterLanguage : String;
	/**
		The broadcaster's type, i.e. "partner", "affiliate" or "" (empty string, so neither of them).
	**/
	final broadcasterType : String;
	/**
		The date when the channel was created.
	**/
	final creationDate : js.lib.Date;
	/**
		The description of the channel.
	**/
	final description : String;
	/**
		The number of people following the channel.
	**/
	final followers : Float;
	/**
		The game that is currently being played on the channel (or was played when it was last online).
	**/
	final game : String;
	/**
		The language of the channel.
	**/
	final language : String;
	/**
		The URL to the logo of the channel.
	**/
	final logo : String;
	/**
		Whether the channel is flagged as suitable for mature audiences only.
	**/
	final isMature : Bool;
	/**
		Whether the channel is partnered.
	**/
	final isPartner : Bool;
	/**
		The URL to the profile's banner image.
	**/
	final profileBanner : Null<String>;
	/**
		The background color of the profile's banner.
	**/
	final profileBannerBackgroundColor : Null<String>;
	/**
		The current status message (i.e. the title) of the channel.
	**/
	final status : String;
	/**
		The date when the channel was last updated.
	**/
	final updateDate : js.lib.Date;
	/**
		The URL to the channel.
	**/
	final url : String;
	/**
		The URL to the channel's video banner, i.e. the offline image.
	**/
	final videoBanner : String;
	/**
		The total number of views of the channel.
	**/
	final views : Float;
	static var prototype : Channel;
}