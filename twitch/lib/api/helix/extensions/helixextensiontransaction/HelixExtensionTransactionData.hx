package twitch.lib.api.helix.extensions.helixextensiontransaction;

typedef HelixExtensionTransactionData = {
	var id : String;
	var timestamp : String;
	var broadcaster_id : String;
	var broadcaster_name : String;
	var user_id : String;
	var user_name : String;
	var product_type : String;
	var product_data : twitch.lib.api.helix.extensions.helixextensionproductdata.HelixExtensionProductData;
};