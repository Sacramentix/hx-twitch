package twitch.lib.api.helix.webhooks.helixwebhooksapi;

/**
	The API methods that deal with WebHooks.
	
	Can be accessed using `client.helix.webHooks` on an {@ApiClient} instance.
	
	## Before using these methods...
	
	All of the methods in this class assume that you are already running a working WebHook listener at the given callback URL.
	
	If you don't already have one, we recommend use of the `twitch-webhooks` library, which handles subscribing and unsubscribing to these topics automatically.
	
	## Example
	```ts
	const client = new ApiClient(new StaticAuthProvider(clientId, accessToken));
	const accepted = await client.helix.webHooks.subscribeToUserFollowsTo('125328655', { callbackUrl: 'https://example.com' });
	```
**/
@:jsRequire("twitch/lib/API/Helix/WebHooks/HelixWebHooksApi", "HelixWebHooksApi") extern class HelixWebHooksApi extends twitch.lib.api.baseapi.BaseApi {
	function new();
	/**
		Retrieves the current WebHook subscriptions for the current client.
		
		Requires an app access token to work; does not work with user tokens.
	**/
	function getSubscriptions():js.lib.Promise<twitch.lib.api.helix.helixpaginatedrequestwithtotal.HelixPaginatedRequestWithTotal<twitch.lib.api.helix.webhooks.helixwebhooksubscription.HelixWebHookSubscriptionData, twitch.lib.api.helix.webhooks.helixwebhooksubscription.HelixWebHookSubscription>>;
	/**
		Sends an arbitrary request to subscribe to or unsubscribe from an event.
	**/
	function sendHubRequest(options:HelixWebHookHubRequest):js.lib.Promise<Void>;
	/**
		Subscribes to events representing a user following other users.
	**/
	function subscribeToUserFollowsFrom(user:twitch.UserIdResolvable, options:twitch.HelixWebHookHubRequestOptions):js.lib.Promise<Void>;
	/**
		Subscribes to events representing a user being followed by other users.
	**/
	function subscribeToUserFollowsTo(user:twitch.UserIdResolvable, options:twitch.HelixWebHookHubRequestOptions):js.lib.Promise<Void>;
	/**
		Unsubscribes from events representing a user following other users.
	**/
	function unsubscribeFromUserFollowsFrom(user:twitch.UserIdResolvable, options:twitch.HelixWebHookHubRequestOptions):js.lib.Promise<Void>;
	/**
		Unsubscribes from events representing a user being followed by other users.
	**/
	function unsubscribeFromUserFollowsTo(user:twitch.UserIdResolvable, options:twitch.HelixWebHookHubRequestOptions):js.lib.Promise<Void>;
	/**
		Subscribes to events representing a stream changing, i.e. going live, offline or changing its title or category.
	**/
	function subscribeToStreamChanges(user:twitch.UserIdResolvable, options:twitch.HelixWebHookHubRequestOptions):js.lib.Promise<Void>;
	/**
		Unsubscribes from events representing a stream changing.
	**/
	function unsubscribeFromStreamChanges(user:twitch.UserIdResolvable, options:twitch.HelixWebHookHubRequestOptions):js.lib.Promise<Void>;
	/**
		Subscribes to events representing a user changing a public setting or their email address.
	**/
	function subscribeToUserChanges(user:twitch.UserIdResolvable, options:twitch.HelixWebHookHubRequestOptions, ?withEmail:Bool):js.lib.Promise<Void>;
	/**
		Unsubscribes from events representing a user changing a public setting or their email address.
	**/
	function unsubscribeFromUserChanges(user:twitch.UserIdResolvable, options:twitch.HelixWebHookHubRequestOptions):js.lib.Promise<Void>;
	/**
		Subscribes to events representing the start or end of a channel subscription.
	**/
	function subscribeToSubscriptionEvents(user:twitch.UserIdResolvable, options:twitch.HelixWebHookHubRequestOptions):js.lib.Promise<Void>;
	/**
		Unsubscribes from events representing the start or end of a channel subscription.
	**/
	function unsubscribeFromSubscriptionEvents(user:twitch.UserIdResolvable, options:twitch.HelixWebHookHubRequestOptions):js.lib.Promise<Void>;
	/**
		Subscribes to extension transactions.
	**/
	function subscribeToExtensionTransactions(extensionId:String, options:twitch.HelixWebHookHubRequestOptions):js.lib.Promise<Void>;
	/**
		Unsubscribes from extension transactions.
	**/
	function unsubscribeFromExtensionTransactions(extensionId:String, options:twitch.HelixWebHookHubRequestOptions):js.lib.Promise<Void>;
	/**
		Subscribes to events representing a ban or unban.
	**/
	function subscribeToBanEvents(broadcaster:twitch.UserIdResolvable, options:twitch.HelixWebHookHubRequestOptions):js.lib.Promise<Void>;
	/**
		Unsubscribes from events representing a ban or unban.
	**/
	function unsubscribeFromBanEvents(broadcaster:twitch.UserIdResolvable, options:twitch.HelixWebHookHubRequestOptions):js.lib.Promise<Void>;
	/**
		Subscribes to events representing a ban or unban.
	**/
	function subscribeToBanEventsForUser(broadcaster:twitch.UserIdResolvable, user:twitch.UserIdResolvable, options:twitch.HelixWebHookHubRequestOptions):js.lib.Promise<Void>;
	/**
		Unsubscribes from events representing a ban or unban.
	**/
	function unsubscribeFromBanEventsForUser(broadcaster:twitch.UserIdResolvable, user:twitch.UserIdResolvable, options:twitch.HelixWebHookHubRequestOptions):js.lib.Promise<Void>;
	/**
		Subscribes to events representing a user gaining or losing moderator privileges in a channel.
	**/
	function subscribeToModeratorEvents(broadcaster:twitch.UserIdResolvable, options:twitch.HelixWebHookHubRequestOptions):js.lib.Promise<Void>;
	/**
		Unsubscribes from events representing a user gaining or losing moderator privileges in a channel.
	**/
	function unsubscribeFromModeratorEvents(broadcaster:twitch.UserIdResolvable, options:twitch.HelixWebHookHubRequestOptions):js.lib.Promise<Void>;
	/**
		Subscribes to events representing a user gaining or losing moderator privileges in a channel.
	**/
	function subscribeToModeratorEventsForUser(broadcaster:twitch.UserIdResolvable, user:twitch.UserIdResolvable, options:twitch.HelixWebHookHubRequestOptions):js.lib.Promise<Void>;
	/**
		Unsubscribes from events representing a user gaining or losing moderator privileges in a channel.
	**/
	function unsubscribeFromModeratorEventsForUser(broadcaster:twitch.UserIdResolvable, user:twitch.UserIdResolvable, options:twitch.HelixWebHookHubRequestOptions):js.lib.Promise<Void>;
	private var _sendUserFollowsHubRequest : Dynamic;
	private var _sendStreamChangeHubRequest : Dynamic;
	private var _sendUserChangeHubRequest : Dynamic;
	private var _sendSubscriptionEventsHubRequest : Dynamic;
	private var _sendExtensionTransactionsHubRequest : Dynamic;
	private var _sendBanEventsHubRequest : Dynamic;
	private var _sendModeratorEventsHubRequest : Dynamic;
	static var prototype : HelixWebHooksApi;
}