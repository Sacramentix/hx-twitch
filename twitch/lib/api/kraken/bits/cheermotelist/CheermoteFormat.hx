package twitch.lib.api.kraken.bits.cheermotelist;

/**
	The format of the cheermote you want to request.
**/
typedef CheermoteFormat = {
	/**
		The desired background for the cheermote.
	**/
	var background : twitch.CheermoteBackground;
	/**
		The desired cheermote state.
	**/
	var state : twitch.CheermoteState;
	/**
		The desired cheermote scale.
	**/
	var scale : twitch.CheermoteScale;
};