package twitch;

/**
	Thrown whenever a HTTP error occurs. Some HTTP errors are handled in the library when they're expected.
**/
@:jsRequire("twitch", "HttpStatusCodeError") extern class HttpStatusCodeError extends twitch_api_call.lib.errors.customerror.CustomError {
	function new(statusCode:Float, statusText:String, body:Dynamic);
	private final _statusCode : Dynamic;
	private final _body : Dynamic;
	final statusCode : Float;
	final body : Dynamic;
	static var prototype : HttpStatusCodeError;
}