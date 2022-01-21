package rencar.model;

public class Booking {
	private int id;
	private String person_name;
	private String person_email;
	private String person_phone;
	private String booking_date;
	private String starting_date;
	private String ending_date;
	private int state_id;
	private int city_id;
	private int location_id;
	private int car_id;
	private int status;
	
	public Booking() {
		
	}

	public Booking(String person_name, String person_email, String person_phone, String booking_date,
			String starting_date, String ending_date, int state_id, int city_id, int location_id, int car_id,
			int status) {
		super();
		this.person_name = person_name;
		this.person_email = person_email;
		this.person_phone = person_phone;
		this.booking_date = booking_date;
		this.starting_date = starting_date;
		this.ending_date = ending_date;
		this.state_id = state_id;
		this.city_id = city_id;
		this.location_id = location_id;
		this.car_id = car_id;
		this.status = status;
	}

	public Booking(int id, String person_name, String person_email, String person_phone, String booking_date,
			String starting_date, String ending_date, int state_id, int city_id, int location_id, int car_id,
			int status) {
		super();
		this.id = id;
		this.person_name = person_name;
		this.person_email = person_email;
		this.person_phone = person_phone;
		this.booking_date = booking_date;
		this.starting_date = starting_date;
		this.ending_date = ending_date;
		this.state_id = state_id;
		this.city_id = city_id;
		this.location_id = location_id;
		this.car_id = car_id;
		this.status = status;
	}
	
	public Booking(int id, String person_name, String booking_date, String starting_date, String ending_date, int car_id) {
		this.id = id;
		this.person_name = person_name;
		this.booking_date = booking_date;
		this.starting_date = starting_date;
		this.ending_date = ending_date;
		this.car_id = car_id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPerson_name() {
		return person_name;
	}

	public void setPerson_name(String person_name) {
		this.person_name = person_name;
	}

	public String getPerson_email() {
		return person_email;
	}

	public void setPerson_email(String person_email) {
		this.person_email = person_email;
	}

	public String getPerson_phone() {
		return person_phone;
	}

	public void setPerson_phone(String person_phone) {
		this.person_phone = person_phone;
	}

	public String getBooking_date() {
		return booking_date;
	}

	public void setBooking_date(String booking_date) {
		this.booking_date = booking_date;
	}

	public String getStarting_date() {
		return starting_date;
	}

	public void setStarting_date(String starting_date) {
		this.starting_date = starting_date;
	}

	public String getEnding_date() {
		return ending_date;
	}

	public void setEnding_date(String ending_date) {
		this.ending_date = ending_date;
	}

	public int getState_id() {
		return state_id;
	}

	public void setState_id(int state_id) {
		this.state_id = state_id;
	}

	public int getCity_id() {
		return city_id;
	}

	public void setCity_id(int city_id) {
		this.city_id = city_id;
	}

	public int getLocation_id() {
		return location_id;
	}

	public void setLocation_id(int location_id) {
		this.location_id = location_id;
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
