package cl.awakelab.models.service;

public class UserService {

	private final String USERNAME = "brian@awakelab.cl";
	private final String PASSWORD = "kupita";
	
	
	public boolean login(String username, String password) {
		
		if (username.equals(USERNAME) && password.equals(PASSWORD)) {
			return true;
		}
		
		return false;
	}
	
}
