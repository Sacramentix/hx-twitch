package twitch;

typedef HelixStreamGetMarkersResult = {
	var user_id : String;
	var user_name : String;
	var videos : Array<HelixStreamGetMarkersResultVideo>;
};