package twitch;

/**
	A result coming from a Helix resource that is paginated using a cursor, also including a total number of items.
**/
typedef HelixPaginatedResultWithTotal<T> = {
	/**
		The returned data.
	**/
	var data : Array<T>;
	/**
		A cursor for traversing more results.
	**/
	var cursor : String;
	/**
		The total number of items.
	**/
	var total : Float;
};