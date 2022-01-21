package rencar.database;

public class SQL {
	public static String getInsertUserQuery() {
		String Query = "INSERT INTO User(name, email, password) VALUES(?, ?, ?);";
		return Query;
	}
	public static String getInsertBookingQuery() {
		String Query = "INSERT INTO booking(person_name, person_email, person_phone, booking_date, starting_date, ending_date, state_id, city_id, location_id, car_id, status) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
		return Query;
	}
	public static String getSelectNameUserQuery() {
		String Query = "SELECT name from User;";
		return Query;
	}
	public static String getSelectMailUserQuery() {
		String Query = "SELECT email from User;";
		return Query;
	}
	
	public static String getBookingQueryByMail() {
		String Query = "SELECT id, person_name, booking_date, starting_date, ending_date, car_id FROM booking WHERE person_email = ? AND payment_status = 0";
		return Query;
	}
	public static String getSelectAllUserQuery() {
		String Query = "SELECT * FROM User;";
		return Query;
	}	
	public static String getSelectUserQuery() {
		String Query = "SELECT name, email FROM User where id = ?";
		return Query;
	}
	public static String getUpdateUserQuery() {
		String Query = "";
		return Query;
	}
	public static String getInsertAdminQuery() {
		String Query = "INSERT INTO Admin(username, password, creator_id) VALUES(?, ?, ?);";
		return Query;
	}
	public static String getSelectAllAdminQuery() {
		String Query = "SELECT id, username, creator_id from Admin;";
		return Query;
	}
	public static String getSelectAllStateQuery() {
		String Query = "SELECT id, name from state;";
		return Query;
	}
	public static String getSelectAllCityQuery() {
		String Query = "SELECT id, name, state_id from city;";
		return Query;
	}
	public static String getSelectAllLocationQuery() {
		String Query = "SELECT id, name, city_id from location;";
		return Query;
	}
	public static String getSelectCityByStateQuery(int id) {
		String Query = "SELECT id, name, state_id from city WHERE state_id = "+id;
		return Query;
	}
	public static String getUpdateAdminQuery() {
		String Query = "UPDATE Admin set username = ?, password = ? WHERE id = ?;";
		return Query;
	}
	public static String getAdminUsernameQuery() {
		String Query = "SELECT username FROM Admin WHERE id = ?;";
		return Query;
	}
	public static String getManufacturerNameQuery() {
		String Query = "SELECT name FROM manufacturer WHERE id = ?;";
		return Query;
	}
	public static String getAdminPasswordByMail() {
		String Query = "SELECT password FROM Admin WHERE username = ?;";
		return Query;
	}
	public static String getUserPasswordByMail() {
		String Query = "SELECT password FROM user WHERE email = ?;";
		return Query;
	}
	public static String getAdminPasswordById() {
		String Query = "SELECT password FROM Admin WHERE id = ?;";
		return Query;
	}
	public static String getUserPasswordById() {
		String Query = "SELECT password FROM user WHERE id = ?;";
		return Query;
	}
	public static String getAdminPassword() {
		String Query = "SELECT password FROM Admin WHERE username = ?;";
		return Query;
	}
	public static String deleteAdminQuery() {
		String Query = "DELETE FROM Admin WHERE id = ?;";
		return Query;
	}
	public static String deleteCarModelQuery() {
		String Query = "DELETE FROM carmodel WHERE id = ?;";
		return Query;
	}
	public static String getInsertCarModelQuery() {
		String Query = "INSERT INTO carmodel(name, manufacturer_id) VALUES(?, ?)";
		return Query;
	}
	public static String getSelectAllCarModelQuery() {
		String Query = "SELECT id, name, manufacturer_id from carmodel;";
		return Query;
	}
	public static String getInsertManufacturerQuery() {
		String Query = "INSERT INTO Manufacturer(name) VALUES(?)";
		return Query;
	}
	public static String getSelectAllManufacturerQuery() {
		String Query = "SELECT id, name from Manufacturer;";
		return Query;
	}
	public static String getManufacturerByIdQuery() {
		String Query = "SELECT name from Manufacturer WHERE id = ?;";
		return Query;
	}
	public static String getManufacturerIdByQuery() {
		String Query = "SELECT manufacturer_id from carmodel WHERE id = ?;";
		return Query;
	}
	public static String getCarStatusByIdQuery() {
		String Query = "SELECT status from Car WHERE id = ?;";
		return Query;
	}
	public static String getCarModelStatusByIdQuery() {
		String Query = "SELECT status from carmodel WHERE id = ?;";
		return Query;
	}
	public static String getModelByIdQuery() {
		String Query = "SELECT name from carmodel WHERE id = ?;";
		return Query;
	}
	public static String getRentByIdQuery() {
		String Query = "SELECT rent from car WHERE id = ?;";
		return Query;
	}
	public static String getUpdateManufacturerQuery() {
		String Query = "UPDATE manufacturer SET name = ? WHERE id = ?;";
		return Query;
	}
	public static String getUpdateCarQuery() {
		String Query = "UPDATE car SET model_id = ?, manufacturer_id = ?, rent = ?, status = ? WHERE id = ?;";
		return Query;
	}
	public static String getUpdateCarModelQuery() {
		String Query = "UPDATE carmodel SET manufacturer_id = ?, name = ?, status = ? WHERE id = ?;";
		return Query;
	}
	public static String deleteManufacturerQuery() {
		String Query = "DELETE FROM manufacturer WHERE id = ?;";
		return Query;
	}
	public static String deleteCarQuery() {
		String Query = "DELETE FROM Car WHERE id = ?;";
		return Query;
	}
	public static String getManufacturerIdQuery() {
		String Query = "SELECT manufacturer_id FROM Car WHERE id = ?;";
		return Query;
	}
	public static String getModelIdQuery() {
		String Query = "SELECT model_id FROM Car WHERE id = ?;";
		return Query;
	}
	public static String getInsertCarQuery() {
		String Query = "INSERT INTO Car(model_id, manufacturer_id, rent, status) VALUES(?, ?, ?, ?)";
		return Query;
	}
	public static String getInsertPaymentQuery() {
		String Query = "INSERT INTO payment(amount, mode_of_payment, card_number, booking_id) VALUES(?, ?, ?, ?)";
		return Query;
	}
	public static String getSelectAllPaymentQuery() {
		String Query = "SELECT amount, mode_of_payment, booking_id FROM payment;";
		return Query;
	}
	public static String getSelectAllCarQuery() {
		String Query = "SELECT id, model_id, manufacturer_id, rent, status from Car";
		return Query;
	}
	public static String getInsertDriverQuery() {
		String Query = "INSERT INTO Driver(firstname, lastname, unique_license_number, car_id, status) VALUES(?, ?, ?, ?, ?)";
		return Query;
	}
	public static String getSelectAllDriverQuery() {
		String Query = "SELECT id, firstname, lastname, unique_license_number, car_id, status from Driver";
		return Query;
	}
	public static String getUpdateDriverQuery() {
		String Query = "UPDATE Driver SET firstname = ?, lastname = ?, unique_license_number = ?, car_id = ?, status = ? WHERE id = ?;";
		return Query;
	}
	public static String getDriverNameQuery() {
		String Query = "DELETE FROM Driver WHERE id = ?";
		return Query;		
	}
	public static String getStartDateQueryById() {
		String Query = "SELECT starting_date from booking WHERE id = ?";
		return Query;
	}
	public static String getEndDateQueryById() {
		String Query = "SELECT ending_date from booking WHERE id = ?";
		return Query;
	}
	public static String getCarId() {
		String Query = "SELECT car_id from booking where id = ?";
		return Query;
	}
	public static String getPriceQuery() {
		String Query = "SELECT rent from car where id = ?";
		return Query;
	}
	public static String getUpdatePaymentStatusQuery() {
		String Query = "UPDATE booking SET payment_status = ? WHERE id = ?";
		return Query;
	}
}
