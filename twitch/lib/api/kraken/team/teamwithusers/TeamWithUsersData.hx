package twitch.lib.api.kraken.team.teamwithusers;

typedef TeamWithUsersData = {
	var users : Array<twitch.lib.api.kraken.user.user.UserData>;
	var _id : String;
	var background : String;
	var banner : String;
	var created_at : String;
	var display_name : String;
	var info : String;
	var logo : String;
	var name : String;
	var updated_at : String;
};