package twitch;

/**
	The type of background a cheermote is supposed to appear on.
	
	We will supply a fitting graphic that does not show any artifacts
	on the given type of background.
**/
@:jsRequire("twitch", "CheermoteBackground") @:enum extern abstract CheermoteBackground(String) from String to String {
	/**
		A dark background.
		
		Cheermotes might show artifacts on bright backgrounds.
	**/
	var dark;
	/**
		A bright background.
		
		Cheermotes might show artifacts on dark backgrounds.
	**/
	var light;
}