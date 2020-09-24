package twitch.lib.api.helix.helixapigroup;

/**
	Groups all API calls available in Helix a.k.a. the "New Twitch API".
	
	Can be accessed using {@ApiClient#helix}.
**/
@:jsRequire("twitch/lib/API/Helix/HelixApiGroup", "HelixApiGroup") extern class HelixApiGroup extends twitch.lib.api.baseapi.BaseApi {
	function new();
	/**
		The Helix bits API methods.
	**/
	final bits : twitch.lib.api.helix.bits.helixbitsapi.HelixBitsApi;
	/**
		The Helix clips API methods.
	**/
	final clips : twitch.lib.api.helix.clip.helixclipapi.HelixClipApi;
	/**
		The Helix extensions API methods.
	**/
	final extensions : twitch.lib.api.helix.extensions.helixextensionsapi.HelixExtensionsApi;
	/**
		The Helix game API methods.
	**/
	final games : twitch.lib.api.helix.game.helixgameapi.HelixGameApi;
	/**
		The Helix moderation API methods.
	**/
	final moderation : twitch.lib.api.helix.moderation.helixmoderationapi.HelixModerationApi;
	/**
		The Helix stream API methods.
	**/
	final streams : twitch.lib.api.helix.stream.helixstreamapi.HelixStreamApi;
	/**
		The Helix subscription API methods.
	**/
	final subscriptions : twitch.lib.api.helix.subscriptions.helixsubscriptionapi.HelixSubscriptionApi;
	/**
		The Helix user API methods.
	**/
	final users : twitch.lib.api.helix.user.helixuserapi.HelixUserApi;
	/**
		The Helix WebHook API methods.
	**/
	final webHooks : twitch.lib.api.helix.webhooks.helixwebhooksapi.HelixWebHooksApi;
	/**
		The Helix video API methods.
	**/
	final videos : twitch.lib.api.helix.video.helixvideoapi.HelixVideoApi;
	static var prototype : HelixApiGroup;
}