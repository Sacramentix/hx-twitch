package twitch;

/**
	A list of badge sets.
**/
@:jsRequire("twitch", "ChatBadgeList") extern class ChatBadgeList {
	function new(_data:{ }, client:ApiClient);
	private final _data : Dynamic;
	private final _client : ApiClient;
	/**
		Names of all badge sets in the list.
	**/
	final badgeSetNames : Array<String>;
	/**
		Gets a specific badge set by name.
	**/
	function getBadgeSet(name:String):ChatBadgeSet;
	function _merge(additionalData:ts.AnyOf2<ChatBadgeList, { }>):ChatBadgeList;
	static var prototype : ChatBadgeList;
}