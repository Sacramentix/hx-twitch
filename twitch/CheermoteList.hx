package twitch;

/**
	A list of cheermotes you can use globally or in a specific channel, depending on how you fetched the list.
**/
@:jsRequire("twitch", "CheermoteList") extern class CheermoteList {
	function new(data:Array<twitch.lib.api.kraken.bits.cheermotelist.CheermoteActionData>, client:ApiClient);
	private final _client : Dynamic;
	private final _data : Dynamic;
	/**
		Gets the URL and color needed to properly represent a cheer of the given amount of bits with the given prefix.
	**/
	function getCheermoteDisplayInfo(name:String, bits:Float, ?format:{ /** The desired background for the cheermote. **/ @:optional var background : CheermoteBackground; /** The desired cheermote state. **/ @:optional var state : CheermoteState; /** The desired cheermote scale. **/ @:optional var scale : CheermoteScale; }):CheermoteDisplayInfo;
	/**
		Gets all possible cheermote names.
	**/
	function getPossibleNames():Array<String>;
	/**
		Parses all the cheermotes out of a message.
	**/
	function parseMessage(message:String):Array<twitch.lib.api.kraken.bits.cheermotelist.MessageCheermote>;
	/**
		Transforms all the cheermotes in a message and returns an array of all the message parts.
	**/
	function transformCheerMessage<T>(message:String, transformer:(displayInfo:twitch.lib.api.kraken.bits.cheermotelist.MessageCheermote) -> ts.AnyOf2<String, T>):Array<ts.AnyOf2<String, T>>;
	static var prototype : CheermoteList;
}