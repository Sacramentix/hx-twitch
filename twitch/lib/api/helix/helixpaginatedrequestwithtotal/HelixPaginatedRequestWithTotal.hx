package twitch.lib.api.helix.helixpaginatedrequestwithtotal;

/**
	A special case of {@HelixPaginatedRequest} with support for fetching the total number of entities, whenever an endpoint supports it.
**/
@:jsRequire("twitch/lib/API/Helix/HelixPaginatedRequestWithTotal", "HelixPaginatedRequestWithTotal") extern class HelixPaginatedRequestWithTotal<D, T> extends twitch.HelixPaginatedRequest<D, T> {
	function new();
	/**
		Retrieves and returns the total number of entities existing in the queried result set.
	**/
	function getTotalCount():js.lib.Promise<Float>;
	static var prototype : HelixPaginatedRequestWithTotal<Dynamic, Dynamic>;
}