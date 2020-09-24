package twitch;

/**
	A Bits leaderboard entry.
**/
@:jsRequire("twitch", "HelixBitsLeaderboardEntry") extern class HelixBitsLeaderboardEntry {
	function new(_data:twitch.lib.api.helix.bits.helixbitsleaderboardentry.HelixBitsLeaderboardEntryData, client:ApiClient);
	private final _data : Dynamic;
	private final _client : ApiClient;
	/**
		The ID of the user on the leaderboard.
	**/
	final userId : String;
	/**
		The display name of the user on the leaderboard.
	**/
	final userDisplayName : String;
	/**
		The position of the user on the leaderboard.
	**/
	final rank : Float;
	/**
		The amount of bits used in the given period of time.
	**/
	final amount : Float;
	/**
		Retrieves the user that's on this place on the leaderboard.
	**/
	function getUser():js.lib.Promise<Null<HelixUser>>;
	static var prototype : HelixBitsLeaderboardEntry;
}