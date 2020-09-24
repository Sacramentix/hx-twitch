package twitch.lib.api.kraken.bits.cheermotelist;

typedef CheermoteActionData = {
	var prefix : String;
	var scales : Array<String>;
	var tiers : Array<CheermoteActionTierData>;
	var backgrounds : Array<String>;
	var states : Array<String>;
	var type : String;
	var updated_at : String;
	var priority : Float;
};