package twitch.lib.api.helix.helixresponse;

typedef HelixPaginatedResponseWithTotal<T> = {
	var total : Float;
	@:optional
	var pagination : {
		var cursor : String;
	};
	var data : Array<T>;
};