package twitch.lib.api.helix.subscriptions.helixsubscriptionapi;

/**
	The Helix API methods that deal with subscriptions.
	
	Can be accessed using `client.helix.subscriptions` on an {@ApiClient} instance.
	
	## Example
	```ts
	const client = new ApiClient(new StaticAuthProvider(clientId, accessToken));
	const subscriptions = await client.helix.subscriptions.getSubscriptionsForUsers('61369223', '125328655');
	```
**/
@:jsRequire("twitch/lib/API/Helix/Subscriptions/HelixSubscriptionApi", "HelixSubscriptionApi") extern class HelixSubscriptionApi extends twitch.lib.api.baseapi.BaseApi {
	function new();
	/**
		Retrieves a list of all subscriptions to a given broadcaster.
	**/
	function getSubscriptions(broadcaster:twitch.UserIdResolvable):js.lib.Promise<twitch.HelixPaginatedResult<twitch.HelixSubscription>>;
	/**
		Creates a paginator for all subscriptions to a given broadcaster.
	**/
	function getSubscriptionsPaginated(broadcaster:twitch.UserIdResolvable):twitch.HelixPaginatedRequest<twitch.lib.api.helix.subscriptions.helixsubscription.HelixSubscriptionData, twitch.HelixSubscription>;
	/**
		Retrieves the subset of the given user list that is subscribed to the given broadcaster.
	**/
	function getSubscriptionsForUsers(broadcaster:twitch.UserIdResolvable, users:Array<twitch.UserIdResolvable>):js.lib.Promise<Array<twitch.HelixSubscription>>;
	/**
		Retrieves the subscription data for a given user to a given broadcaster.
	**/
	function getSubscriptionForUser(broadcaster:twitch.UserIdResolvable, user:twitch.UserIdResolvable):js.lib.Promise<Null<twitch.HelixSubscription>>;
	/**
		Retrieves the most recent subscription events for a given broadcaster.
	**/
	function getSubscriptionEventsForBroadcaster(broadcaster:twitch.UserIdResolvable):js.lib.Promise<twitch.HelixPaginatedResult<twitch.HelixSubscriptionEvent>>;
	/**
		Creates a paginator for the recent subscription events for a given broadcaster.
	**/
	function getSubscriptionEventsForBroadcasterPaginated(broadcaster:twitch.UserIdResolvable):twitch.HelixPaginatedRequest<twitch.lib.api.helix.subscriptions.helixsubscriptionevent.HelixSubscriptionEventData, twitch.HelixSubscriptionEvent>;
	/**
		Retrieves a single subscription event by ID.
	**/
	function getSubscriptionEventById(id:String):js.lib.Promise<twitch.HelixPaginatedResult<twitch.HelixSubscriptionEvent>>;
	private var _getSubscriptionEvents : Dynamic;
	static var prototype : HelixSubscriptionApi;
}