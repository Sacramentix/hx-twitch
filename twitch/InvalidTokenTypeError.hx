package twitch;

/**
	Thrown whenever a different token type (user vs. app) is expected in the method you're calling.
**/
@:jsRequire("twitch", "InvalidTokenTypeError") extern class InvalidTokenTypeError extends twitch.lib.errors.customerror.CustomError {
	function new();
	static var prototype : InvalidTokenTypeError;
}