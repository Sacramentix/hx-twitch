package twitch.lib.api.baseapi;

@:jsRequire("twitch/lib/API/BaseApi", "BaseApi") extern class BaseApi {
	function new(client:twitch.ApiClient);
	private final _client : twitch.ApiClient;
	static var prototype : BaseApi;
}