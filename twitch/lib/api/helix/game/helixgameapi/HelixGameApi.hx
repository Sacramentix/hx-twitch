package twitch.lib.api.helix.game.helixgameapi;

/**
	The Helix API methods that deal with games.
	
	Can be accessed using `client.helix.games` on an {@ApiClient} instance.
	
	## Example
	```ts
	const client = new ApiClient(new StaticAuthProvider(clientId, accessToken));
	const game = await client.helix.games.getGameByName('Hearthstone');
	```
**/
@:jsRequire("twitch/lib/API/Helix/Game/HelixGameApi", "HelixGameApi") extern class HelixGameApi extends twitch.lib.api.baseapi.BaseApi {
	function new();
	/**
		Retrieves the game data for the given list of game IDs.
	**/
	function getGamesByIds(ids:Array<String>):js.lib.Promise<Array<twitch.HelixGame>>;
	/**
		Retrieves the game data for the given list of game names.
	**/
	function getGamesByNames(names:Array<String>):js.lib.Promise<Array<twitch.HelixGame>>;
	/**
		Retrieves the game data for the given game ID.
	**/
	function getGameById(id:String):js.lib.Promise<Null<twitch.HelixGame>>;
	/**
		Retrieves the game data for the given game name.
	**/
	function getGameByName(name:String):js.lib.Promise<Null<twitch.HelixGame>>;
	/**
		Retrieves a list of the most viewed games at the moment.
	**/
	function getTopGames(?pagination:twitch.lib.api.helix.helixpagination.HelixPagination):js.lib.Promise<twitch.HelixPaginatedResult<twitch.HelixGame>>;
	/**
		Creates a paginator for the most viewed games at the moment.
	**/
	function getTopGamesPaginated():twitch.HelixPaginatedRequest<twitch.lib.api.helix.game.helixgame.HelixGameData, twitch.HelixGame>;
	private var _getGames : Dynamic;
	static var prototype : HelixGameApi;
}