package twitch;

/**
	A set of badges.
**/
@:jsRequire("twitch", "ChatBadgeSet") extern class ChatBadgeSet {
	function new(_data:twitch.lib.api.badges.chatbadgeset.ChatBadgeSetData, client:ApiClient);
	private final _data : Dynamic;
	private final _client : ApiClient;
	/**
		Names of all versions of the badge set.
	**/
	final versionNames : Array<String>;
	/**
		Gets a specific version of a badge by name.
	**/
	function getVersion(name:String):ChatBadgeVersion;
	static var prototype : ChatBadgeSet;
}