package twitch.lib.api.kraken.bits.cheermotelist;

/**
	A description of a specific cheermote parsed from a message.
**/
typedef MessageCheermote = {
	/**
		The name of the cheermote.
	**/
	var name : String;
	/**
		The amount of bits for the cheermote.
	**/
	var amount : Float;
	/**
		The position of the cheermote in the text, zero based.
	**/
	var position : Float;
	/**
		The length of the cheermote in the text.
	**/
	var length : Float;
	/**
		Information on how the cheermote is supposed to be displayed.
	**/
	var displayInfo : twitch.CheermoteDisplayInfo;
};