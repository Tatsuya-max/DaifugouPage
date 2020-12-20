package models;

public class LoginLogic {
	public boolean execute(User u) {
		if(u.getPass().equals("1111")) {return true;}
		return false;
	}
}