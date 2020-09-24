package twitch.lib.api.kraken.bits.cheermotelist;

typedef CheermoteActionTierData = {
	var min_bits : Float;
	var id : String;
	var color : String;
	var images : Array<{
		var dark : CheermoteActionImageUrlsByStateAndScale;
		var light : CheermoteActionImageUrlsByStateAndScale;
	}>;
};