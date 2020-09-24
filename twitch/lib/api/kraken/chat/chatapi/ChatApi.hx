package twitch.lib.api.kraken.chat.chatapi;

/**
	The API methods that deal with chat and chatrooms.
	
	Can be accessed using `client.kraken.chat` on an {@ApiClient} instance.
	
	## Example
	```ts
	const client = new ApiClient(new StaticAuthProvider(clientId, accessToken));
	const emotes = await client.kraken.chat.getEmotesBySets('1');
	```
**/
@:jsRequire("twitch/lib/API/Kraken/Chat/ChatApi", "ChatApi") extern class ChatApi extends twitch.lib.api.baseapi.BaseApi {
	function new();
	/**
		Retrieves a list of emotes for a given list of enote set IDs.
	**/
	function getEmotesBySets(emotesets:ts.AnyOf2<String, Array<String>>):js.lib.Promise<twitch.lib.api.kraken.chat.chatemotelist.ChatEmoteList>;
	/**
		Retrieves a list of chat rooms for a given channel.
	**/
	function getChatRoomsForChannel(channel:twitch.UserIdResolvable):js.lib.Promise<Array<twitch.lib.api.kraken.chat.chatroom.ChatRoom>>;
	static var prototype : ChatApi;
}