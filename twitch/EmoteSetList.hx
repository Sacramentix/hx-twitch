package twitch;

/**
	A list of emotes, grouped into emote sets, that a user can use.
**/
@:jsRequire("twitch", "EmoteSetList") extern class EmoteSetList {
	function new(_data:{ });
	private final _data : Dynamic;
	/**
		Finds the emote ID for the given emote code.
	**/
	function findEmoteId(emoteCode:String):Null<Float>;
	static var prototype : EmoteSetList;
	private static var _testEmoteCode : Dynamic;
}