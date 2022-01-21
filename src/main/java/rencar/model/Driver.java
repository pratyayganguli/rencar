package rencar.model;

public class Driver {
	private int id;
	private String firstname;
	private String lastname;
	private String unique_license_number;
	private int car_id;
	private int status;
	
	public Driver() {
		
	}
	
	public Driver(int id, String firstname, String lastname, String unique_license_number, int car_id, int status) {
		this.id 					= id;
		this.firstname 				= firstname;
		this.lastname 				= lastname;
		this.unique_license_number 	= unique_license_number;
		this.car_id					= car_id;
		this.status					= status;
	}
	
	public Driver(String firstname, String lastname, String unique_license_number, int car_id, int status) {
		this.firstname 				= firstname;
		this.lastname 				= lastname;
		this.unique_license_number 	= unique_license_number;
		this.car_id					= car_id;
		this.status					= status;
	}
	
	public Driver(String firstname, String lastname, String unique_license_number, int car_id) {
		this.firstname 				= firstname;
		this.lastname 				= lastname;
		this.unique_license_number 	= unique_license_number;
		this.car_id					= car_id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getUnique_license_number() {
		return unique_license_number;
	}

	public void setUnique_license_number(String unique_license_number) {
		this.unique_license_number = unique_license_number;
	}

	public int getCar_id() {
		return car_id;
	}

	public void setCar_id(int car_id) {
		this.car_id = car_id;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
}
