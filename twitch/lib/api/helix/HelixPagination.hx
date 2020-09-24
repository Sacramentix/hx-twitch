package twitch.lib.api.helix;

@:jsRequire("twitch/lib/API/Helix/HelixPagination") @valueModuleOnly extern class HelixPagination {
	static function makePaginationQuery(?__0:twitch.lib.api.helix.helixpagination.HelixPagination):{
		var after : Null<String>;
		var before : Null<String>;
		var first : Null<String>;
	};
}