package rencar.model;

public class Manufacturer {
	private int id;
	private String name;
	private int status;
	
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

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public Manufacturer() {
		
	}
	
	public Manufacturer(int id, String name) {
		this.id 	= id;
		this.name 	= name;
		this.status = 1;
	}
	
	public Manufacturer(String name) {
		this.name 	= name;
		this.status = 1;
	}
}
