package twitch.lib.apiclient;

/**
	Default configuration for the cheermote API.
**/
typedef TwitchCheermoteConfig = {
	/**
		The default background type.
	**/
	var defaultBackground : twitch.CheermoteBackground;
	/**
		The default cheermote state.
	**/
	var defaultState : twitch.CheermoteState;
	/**
		The default cheermote scale.
	**/
	var defaultScale : twitch.CheermoteScale;
};