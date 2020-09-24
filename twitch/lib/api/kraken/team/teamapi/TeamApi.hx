package twitch.lib.api.kraken.team.teamapi;

/**
	The API methods that deal with teams.
	
	Can be accessed using `client.kraken.teams` on an {@ApiClient} instance.
	
	## Example
	```ts
	const client = new ApiClient(new StaticAuthProvider(clientId, accessToken));
	const team = await client.kraken.teams.getTeamByName('staff');
	```
**/
@:jsRequire("twitch/lib/API/Kraken/Team/TeamApi", "TeamApi") extern class TeamApi extends twitch.lib.api.baseapi.BaseApi {
	function new();
	/**
		Get a list of teams.
	**/
	function getTeams(?page:Float, ?limit:Float):js.lib.Promise<Array<twitch.lib.api.kraken.team.team.TeamData>>;
	/**
		Retrieves the team data for the given team name.
	**/
	function getTeamByName(team:String):js.lib.Promise<twitch.lib.api.kraken.team.teamwithusers.TeamWithUsers>;
	static var prototype : TeamApi;
}