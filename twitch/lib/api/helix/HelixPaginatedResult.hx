package twitch.lib.api.helix;

@:jsRequire("twitch/lib/API/Helix/HelixPaginatedResult") @valueModuleOnly extern class HelixPaginatedResult {
	static function createPaginatedResult<I, O>(response:twitch.lib.api.helix.helixresponse.HelixPaginatedResponse<I>, type:O, client:twitch.ApiClient):twitch.HelixPaginatedResult<d_fischer.shared_utils.ConstructedType<O>>;
	static function createPaginatedResultWithTotal<I, O>(response:twitch.lib.api.helix.helixresponse.HelixPaginatedResponseWithTotal<I>, type:O, client:twitch.ApiClient):twitch.HelixPaginatedResultWithTotal<d_fischer.shared_utils.ConstructedType<O>>;
}