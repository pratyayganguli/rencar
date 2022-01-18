package rencar.model;

public class Admin {
	private int id;
	private String username;
	private String password;
	private int creator_id;
	private int status;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public int getCreator_id() {
		return creator_id;
	}

	public void setCreator_id(int creator_id) {
		this.creator_id = creator_id;
	}
	
	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
	public Admin() {
		
	}
	
	public Admin(int id, String username, String password) {
		this.id = id;
		this.username = username;
		this.password = password;
	}
	
	public Admin(String username, String password, int creator_id) {
		this.username 	= username;
		this.password	= password;
		this.creator_id = creator_id;
		this.status 	= 1;
	}
	
	public Admin(String username, int creator_id) {
		this.username 	= username;
		this.creator_id = creator_id;
		this.status = 1;
	}
	
	public Admin(int id, String username, int creator_id) {
		this.id 		= id;
		this.username 	= username;
		this.creator_id = creator_id;
		this.setStatus(1);
	}
	
	public Admin(int id, String username, String password, int creator_id) {
		this.id 		= id;
		this.username 	= username;
		this.password	= password;
		this.creator_id = creator_id;
		this.setStatus(1);
	}
}

