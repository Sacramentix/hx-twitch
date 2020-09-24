package twitch.lib.api.helix.subscriptions.helixsubscription;

typedef HelixSubscriptionData = {
	var broadcaster_id : String;
	var broadcaster_name : String;
	var is_gift : Bool;
	var plan_name : String;
	var tier : String;
	var user_id : String;
	var user_name : String;
	@:optional
	var message : String;
};