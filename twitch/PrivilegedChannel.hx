package twitch;

/**
	A channel you have extended privileges for, i.e. the channel of the currently authenticated user.
**/
@:jsRequire("twitch", "PrivilegedChannel") extern class PrivilegedChannel extends Channel {
	function new();
	/**
		The channel's stream key.
	**/
	final streamKey : String;
	/**
		The channel's email address.
	**/
	final email : String;
	/**
		Retrieves the list of editors of the channel.
	**/
	function getEditors():js.lib.Promise<Array<User>>;
	/**
		Starts a commercial in the channel.
	**/
	function startCommercial(length:CommercialLength):js.lib.Promise<Void>;
	/**
		Resets the given channel's stream key.
	**/
	function resetStreamKey():js.lib.Promise<String>;
	/**
		Retrieves the channel data.
	**/
	function getChannel():js.lib.Promise<PrivilegedChannel>;
	static var prototype : PrivilegedChannel;
}