package cl.awakelab.models.dto;

public class User {
	private String username;
	private String password;
	private String name;
	private String lastName;
	
	public User() {
		
	}

	public User(String username, String password, String name, String lastName) {
		super();
		this.username = username;
		this.password = password;
		this.name = name;
		this.lastName = lastName;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	
	

}
