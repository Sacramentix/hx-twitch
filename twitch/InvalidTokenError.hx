package twitch;

/**
	Thrown whenever an invalid token is supplied.
**/
@:jsRequire("twitch", "InvalidTokenError") extern class InvalidTokenError extends twitch_auth.lib.errors.customerror.CustomError {
	function new();
	static var prototype : InvalidTokenError;
}