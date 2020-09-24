package twitch;

/**
	Thrown whenever you try using invalid values in the client configuration.
**/
@:jsRequire("twitch", "ConfigError") extern class ConfigError extends twitch.lib.errors.customerror.CustomError {
	function new();
	static var prototype : ConfigError;
}