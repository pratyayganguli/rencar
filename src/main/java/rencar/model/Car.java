package rencar.model;

public class Car {
	private int id;
	private int model_id;
	private int manufacturer_id;
	private String rent;
	private int status;
	
	public Car() {
		
	}
	
	public Car(int id, int model_id, int manufacturer_id, String rent, int status) {
		this.id 	 			= id;
		this.model_id 	 		= model_id;
		this.manufacturer_id 	= manufacturer_id;
		this.rent 				= rent;
		this.status 			= status;
	}
	
	public Car(int model_id, int manufacturer_id, String rent, int status) {
		this.model_id 			= model_id;
		this.manufacturer_id 	= manufacturer_id;
		this.rent				= rent;
		this.status 			= status;
	}
	
	public Car(int model_id, int manufacturer_id, String rent) {
		this.model_id 			= model_id;
		this.manufacturer_id 	= manufacturer_id;
		this.rent				= rent;
	}
	
	public Car(int id, int model_id, int manufacturer_id, String rent) {
		this.id 				= id;
		this.model_id 			= model_id;
		this.manufacturer_id 	= manufacturer_id;
		this.rent				= rent;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getModel_id() {
		return model_id;
	}

	public void setModel_id(int model_id) {
		this.model_id = model_id;
	}

	public int getManufacturer_id() {
		return manufacturer_id;
	}

	public void setManufacturer_id(int manufacturer_id) {
		this.manufacturer_id = manufacturer_id;
	}

	public String getRent() {
		return rent;
	}

	public void setRent(String rent) {
		this.rent = rent;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
}
