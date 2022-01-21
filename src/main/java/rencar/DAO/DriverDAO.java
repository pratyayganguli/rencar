package rencar.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import rencar.database.Database;
import rencar.database.SQL;
import rencar.model.Driver;

public class DriverDAO {
	public static void createDriver(Driver driver) throws ClassNotFoundException, SQLException {
		try {
			Connection connection 		= Database.initConnection();
			PreparedStatement statement = connection.prepareStatement(SQL.getInsertDriverQuery());
			statement.setString(1, driver.getFirstname());
			statement.setString(2, driver.getLastname());
			statement.setString(3, driver.getUnique_license_number());
			statement.setInt(4, driver.getCar_id());
			statement.setInt(5, driver.getStatus());
			statement.executeUpdate();
		}		
		catch(SQLException e) {
			e.printStackTrace();
		}	
	}
	
	public static List<Driver> readDriver() throws ClassNotFoundException, SQLException {
		List<Driver> drivers = new ArrayList<>();
		try {
			Connection connection = Database.initConnection();
			//log
			System.out.println("Database connection failure");
			PreparedStatement statement = connection.prepareStatement(SQL.getSelectAllDriverQuery());
			ResultSet result = statement.executeQuery();
				while(result.next()) {
					int id 							= result.getInt("id");
					String firstname 				= result.getString("firstname");
					String lastname 				= result.getString("lastname");
					String unique_license_number 	= result.getString("unique_license_number");
					int car_id 						= result.getInt("car_id");
					int status						= result.getInt("status");
					drivers.add(new Driver(id, firstname, lastname, unique_license_number, car_id, status));	
				}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return drivers;
	}
	
	public static void updateDriver(Driver driver, int id) throws ClassNotFoundException, SQLException {
		try {
			Connection connection 		= Database.initConnection();
			PreparedStatement statement = connection.prepareStatement(SQL.getUpdateDriverQuery());
			statement.setString(1, driver.getFirstname());
			statement.setString(2, driver.getLastname());
			statement.setString(3, driver.getUnique_license_number());
			statement.setInt(4, driver.getCar_id());
			statement.setInt(5, driver.getStatus());
			statement.executeUpdate();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}	
	}
	
	public static String getDriverName(int id) throws ClassNotFoundException {
		String name = "";
		String firstName = "";
		String lastName = "";
		
		try {
			Connection connection 		= Database.initConnection();
			PreparedStatement statement = connection.prepareStatement(SQL.getDriverNameQuery());
			statement.setInt(1, id);
			ResultSet result = statement.executeQuery();
			while(result.next()) {
				firstName = result.getString("firstname");
				lastName = result.getString("lastname");
			}
			name = firstName + " " + lastName;
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return name;
	}
}
