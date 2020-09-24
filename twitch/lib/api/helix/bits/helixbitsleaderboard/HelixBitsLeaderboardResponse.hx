package twitch.lib.api.helix.bits.helixbitsleaderboard;

typedef HelixBitsLeaderboardResponse = {
	var date_range : twitch.lib.api.helix.helixdaterangedata.HelixDateRangeData;
	var total : Float;
	var data : Array<twitch.lib.api.helix.bits.helixbitsleaderboardentry.HelixBitsLeaderboardEntryData>;
};