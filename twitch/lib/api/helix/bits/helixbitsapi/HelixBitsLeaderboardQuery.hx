package twitch.lib.api.helix.bits.helixbitsapi;

/**
	Filters for the bits leaderboard request.
**/
typedef HelixBitsLeaderboardQuery = {
	/**
		The number of leaderboard entries you want to retrieve.
	**/
	@:optional
	var count : Float;
	/**
		The time period from which bits should count towards the leaderboard.
		
		The leaderboards reset with the start of a new period, e.g. the `week` leaderboards reset every Monday midnight PST.
	**/
	@:optional
	var period : HelixBitsLeaderboardPeriod;
	/**
		The time to retrieve the bits leaderboard for.
	**/
	@:optional
	var startDate : js.lib.Date;
	/**
		The user ID to show.
		
		The leaderboard will be guaranteed to include this user and then have more users before and after that user.
	**/
	@:optional
	var contextUserId : String;
};