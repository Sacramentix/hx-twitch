package twitch;

/**
	A user you have extended privilges for, i.e. yourself.
**/
@:jsRequire("twitch", "HelixPrivilegedUser") extern class HelixPrivilegedUser extends HelixUser {
	function new();
	/**
		The email address of the user.
	**/
	final email : Null<String>;
	/**
		Changes the description of the user.
	**/
	function setDescription(description:String):js.lib.Promise<HelixPrivilegedUser>;
	static var prototype : HelixPrivilegedUser;
}