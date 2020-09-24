package twitch;

/**
	These are the kind of errors that should never happen.
	
	If you see one thrown, please file a bug in the GitHub issue tracker.
**/
@:jsRequire("twitch", "HellFreezesOverError") extern class HellFreezesOverError extends twitch.lib.errors.customerror.CustomError {
	function new(message:String);
	static var prototype : HellFreezesOverError;
}