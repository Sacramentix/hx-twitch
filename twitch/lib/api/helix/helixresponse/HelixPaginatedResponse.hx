package twitch.lib.api.helix.helixresponse;

typedef HelixPaginatedResponse<T> = {
	@:optional
	var pagination : {
		var cursor : String;
	};
	var data : Array<T>;
};