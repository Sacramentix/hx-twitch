package twitch;

/**
	A version of a badge.
**/
@:jsRequire("twitch", "ChatBadgeVersion") extern class ChatBadgeVersion {
	function new(_data:twitch.lib.api.badges.chatbadgeversion.ChatBadgeVersionData, client:ApiClient);
	private final _data : Dynamic;
	private final _client : ApiClient;
	/**
		The action to execute when the badge is clicked.
	**/
	final clickAction : String;
	/**
		The URL to visit when the badge is clicked.
		
		Only applies if clickAction === 'visit_url'.
	**/
	final clickUrl : String;
	/**
		The description of the badge.
	**/
	final description : String;
	/**
		Gets an image URL for the given scale.
	**/
	function getImageUrl(scale:ChatBadgeScale):String;
	/**
		The title of the badge.
	**/
	final title : String;
	static var prototype : ChatBadgeVersion;
}