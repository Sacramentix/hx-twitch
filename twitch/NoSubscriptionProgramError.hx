package twitch;

/**
	Thrown whenever you try accessing a subscription-related resource
	(for example {@ChannelApi#getChannelSubscriptions})
	and the given channel does not have a subscription program.
**/
@:jsRequire("twitch", "NoSubscriptionProgramError") extern class NoSubscriptionProgramError extends twitch.lib.errors.customerror.CustomError {
	function new(channelId:String);
	static var prototype : NoSubscriptionProgramError;
}