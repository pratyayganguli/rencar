package rencar.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import rencar.database.Database;
import rencar.database.SQL;
import rencar.model.Booking;
import rencar.model.Car;

public class BookingDAO {
	public static void createBooking(Booking booking) throws ClassNotFoundException, SQLException {
		try {
			Connection connection 		= Database.initConnection();
			PreparedStatement statement = connection.prepareStatement(SQL.getInsertBookingQuery());
			statement.setString(1, booking.getPerson_name());
			statement.setString(2, booking.getPerson_email());
			statement.setString(3, booking.getPerson_phone());
			statement.setString(4, booking.getBooking_date());
			statement.setString(5, booking.getStarting_date());
			statement.setString(6, booking.getEnding_date());
			statement.setInt(7, booking.getState_id());
			statement.setInt(8, booking.getCity_id());
			statement.setInt(9, booking.getLocation_id());
			statement.setInt(10, booking.getCar_id());
			statement.setInt(11, booking.getStatus());
			statement.executeUpdate();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}	
	}
	
	public static List<Booking> readBooking(String email) throws SQLException, ClassNotFoundException{
		List<Booking> bookings = new ArrayList<>();
		try {
			Connection connection = Database.initConnection();
			PreparedStatement statement = connection.prepareStatement(SQL.getBookingQueryByMail());
			statement.setString(1, email);
			ResultSet result = statement.executeQuery();
			
			while(result.next()) {
				String person_name = result.getString("person_name");
				String booking_date = result.getString("booking_date");
				String starting_date = result.getString("starting_date");
				String ending_date = result.getString("ending_date");		
				int car_id = result.getInt("car_id");
				bookings.add(new Booking(person_name, booking_date, starting_date, ending_date, car_id));
			}
		}
		catch(SQLException e){
			e.printStackTrace();
		}
		return bookings;
	}

}
