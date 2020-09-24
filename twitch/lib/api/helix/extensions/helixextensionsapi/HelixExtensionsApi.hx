package twitch.lib.api.helix.extensions.helixextensionsapi;

/**
	The Helix API methods that deal with extensions.
	
	Can be accessed using `client.helix.extensions` on an {@ApiClient} instance.
	
	## Example
	```ts
	const client = new ApiClient(new StaticAuthProvider(clientId, accessToken));
	const transactions = await client.helix.extionsions.getExtensionTransactions('abcd');
	```
**/
@:jsRequire("twitch/lib/API/Helix/Extensions/HelixExtensionsApi", "HelixExtensionsApi") extern class HelixExtensionsApi extends twitch.lib.api.baseapi.BaseApi {
	function new();
	/**
		Retrieves a list of transactions for the given extension.
	**/
	function getExtensionTransactions(extensionId:String, ?filter:twitch.HelixExtensionTransactionsPaginatedFilter):js.lib.Promise<twitch.HelixPaginatedResult<twitch.HelixExtensionTransaction>>;
	/**
		Creates a paginator for transactions for the given extension.
	**/
	function getExtensionTransactionsPaginated(extensionId:String, ?filter:twitch.HelixExtensionTransactionsFilter):twitch.HelixPaginatedRequest<twitch.lib.api.helix.extensions.helixextensiontransaction.HelixExtensionTransactionData, twitch.HelixExtensionTransaction>;
	static var prototype : HelixExtensionsApi;
}