package twitch;

typedef HelixPaginatedResult<T> = {
	/**
		The returned data.
	**/
	var data : Array<T>;
	/**
		A cursor for traversing more results.
	**/
	@:optional
	var cursor : String;
};