package twitch;

/**
	A bits transaction made inside an extension.
**/
@:jsRequire("twitch", "HelixExtensionTransaction") extern class HelixExtensionTransaction {
	function new(_data:twitch.lib.api.helix.extensions.helixextensiontransaction.HelixExtensionTransactionData, client:ApiClient);
	private final _data : Dynamic;
	private final _client : Dynamic;
	/**
		The ID of the transaction.
	**/
	final id : String;
	/**
		The time when the transaction was made.
	**/
	final transactionDate : js.lib.Date;
	/**
		The ID of the broadcaster that runs the extension on their channel.
	**/
	final broadcasterId : String;
	/**
		The display name of the broadcaster that runs the extension on their channel.
	**/
	final broadcasterDisplayName : String;
	/**
		Retrieves information about the broadcaster that runs the extension on their channel.
	**/
	function getBroadcaster():js.lib.Promise<Null<HelixUser>>;
	/**
		The ID of the user that made the transaction.
	**/
	final userId : String;
	/**
		The display name of the user that made the transaction.
	**/
	final userDisplayName : String;
	/**
		Retrieves information about the user that made the transaction.
	**/
	function getUser():js.lib.Promise<Null<HelixUser>>;
	/**
		The product type. Currently always BITS_IN_EXTENSION.
	**/
	final productType : String;
	/**
		The product SKU.
	**/
	final productSku : String;
	final productSKU : String;
	/**
		The cost of the product, in bits.
	**/
	final productCost : Float;
	/**
		The display name of the product.
	**/
	final productDisplayName : String;
	/**
		Whether the product is in development.
	**/
	final productInDevelopment : Bool;
	static var prototype : HelixExtensionTransaction;
}