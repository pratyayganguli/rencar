package rencar.model;

public class Location {
	private int id;
	private String name;
	private int city_id;
	private String details;
	private int status;
	
	public Location() {		
	}
	
	public Location(int id, String name, int city_id, String details) {
		this.id = id;
		this.name = name;
		this.city_id = city_id;
		this.details = details;
	}
	
	public Location(int id, String name, int city_id) {
		this.id = id;
		this.name = name;
		this.city_id = city_id;
	}
	
	public Location(String name, int city_id, String details) {
		this.name = name;
		this.city_id = city_id;
		this.details = details;
	}
	
	public Location(String name, int city_id) {
		this.name = name;
		this.city_id = city_id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getCity_id() {
		return city_id;
	}

	public void setCity_id(int city_id) {
		this.city_id = city_id;
	}

	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
}
