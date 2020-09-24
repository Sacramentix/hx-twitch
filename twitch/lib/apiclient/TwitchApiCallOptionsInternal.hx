package twitch.lib.apiclient;

typedef TwitchApiCallOptionsInternal = {
	var options : twitch.TwitchApiCallOptions;
	@:optional
	var clientId : String;
	@:optional
	var accessToken : String;
};