package twitch;

/**
	The details on how a cheermote should be displayed.
**/
typedef CheermoteDisplayInfo = {
	/**
		The URL of the image that should be shown.
	**/
	var url : String;
	/**
		The color that should be used to shown the cheer amount.
		
		This is a hexadecimal color value, e.g. `#9c3ee8`.
	**/
	var color : String;
};