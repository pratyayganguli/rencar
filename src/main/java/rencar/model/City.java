package rencar.model;

public class City {
	private int id;
	private String name;
	private int state_id;
	private int status;
	
	public City() {
		
	}
	
	public City(int id, String name, int state_id, int status) {
		this.id = id;
		this.name = name;
		this.state_id = state_id;
		this.status = status;	
	}
	
	public City(int id, String name, int state_id) {
		this.id = id;
		this.name = name;
		this.state_id = state_id;
	}
	
	public City(String name, int state_id, int status) {
		this.name = name;
		this.state_id = state_id;
		this.status = status;	
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

	public int getState_id() {
		return state_id;
	}

	public void setState_id(int state_id) {
		this.state_id = state_id;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
}
