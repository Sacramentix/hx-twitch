package twitch;

/**
	Filters for the extension transactions request.
**/
typedef HelixExtensionTransactionsFilter = {
	@:optional
	var transactionIds : Array<String>;
};