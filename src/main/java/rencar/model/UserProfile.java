package rencar.model;

public class UserProfile {
	private int id;
	private int user_id;
	private String address;
	private String driver_license_file;
	private String profile_pic_file;
	private boolean status;
	
	public UserProfile() {
		
	}
	
	public UserProfile(int id, int user_id, String address, String driver_license_file, String profile_pic_file, boolean status) {
		this.id 					= id;
		this.user_id 				= user_id;
		this.address				= address;
		this.driver_license_file 	= driver_license_file;
		this.profile_pic_file		= profile_pic_file;
		this.status					= status;
	}
	
	public UserProfile(int user_id, String address, String driver_license_file, String profile_pic_file, boolean status) {
		this.user_id 				= user_id;
		this.address				= address;
		this.driver_license_file 	= driver_license_file;
		this.profile_pic_file		= profile_pic_file;
		this.status					= status;
	}
	
	public UserProfile(int user_id, String address, String driver_license_file, String profile_pic_file) {
		this.user_id 				= user_id;
		this.address				= address;
		this.driver_license_file 	= driver_license_file;
		this.profile_pic_file		= profile_pic_file;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDriver_license_file() {
		return driver_license_file;
	}

	public void setDriver_license_file(String driver_license_file) {
		this.driver_license_file = driver_license_file;
	}

	public String getProfile_pic_file() {
		return profile_pic_file;
	}

	public void setProfile_pic_file(String profile_pic_file) {
		this.profile_pic_file = profile_pic_file;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}
}
