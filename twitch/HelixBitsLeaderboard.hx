package twitch;

/**
	A leaderboard where the users who used the most bits to a broadcaster are listed.
**/
@:jsRequire("twitch", "HelixBitsLeaderboard") extern class HelixBitsLeaderboard {
	function new(_data:twitch.lib.api.helix.bits.helixbitsleaderboard.HelixBitsLeaderboardResponse, client:ApiClient);
	private final _data : Dynamic;
	private final _client : ApiClient;
	/**
		The entries of the leaderboard.
	**/
	final entries : Array<HelixBitsLeaderboardEntry>;
	/**
		The total amount of people on the requested leaderboard.
	**/
	final totalCount : Float;
	static var prototype : HelixBitsLeaderboard;
}