package rencar.model;

public class CarModel {
	private int id;
	private String name;
	private int manufacturer_id;
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

	public int getManufacturer_id() {
		return manufacturer_id;
	}

	public void setManufacturer_id(int manufacturer_id) {
		this.manufacturer_id = manufacturer_id;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public CarModel() {
		
	}
	
	public CarModel(int id, String name, int manufacturer_id) {
		this.id 				= id;
		this.name 				= name;
		this.manufacturer_id 	= manufacturer_id;
		this.status 			= 1;
	}
	public CarModel(int id, String name) {
		this.id 	= id;
		this.name 	= name;
	}
	
	public CarModel(String name, int manufacturer_id) {
		this.name 				= name;
		this.manufacturer_id 	= manufacturer_id;
		this.status 			= 1;	
	}		
}
