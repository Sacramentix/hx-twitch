package twitch;

/**
	A game as displayed on Twitch.
**/
@:jsRequire("twitch", "HelixGame") extern class HelixGame {
	function new(_data:twitch.lib.api.helix.game.helixgame.HelixGameData, client:ApiClient);
	private final _data : Dynamic;
	private final _client : ApiClient;
	/**
		The ID of the game.
	**/
	final id : String;
	/**
		The name of the game.
	**/
	final name : String;
	/**
		The URL of the box art of the game.
	**/
	final boxArtUrl : String;
	static var prototype : HelixGame;
}