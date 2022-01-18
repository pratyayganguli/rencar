package rencar.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import rencar.database.Database;
import rencar.database.SQL;
import rencar.model.Admin;
import rencar.model.Car;
import rencar.model.CarModel;

public class CarDAO {
	public static void createCar(Car car) throws ClassNotFoundException {
		try {
			Connection connection 		= Database.initConnection();
			PreparedStatement statement = connection.prepareStatement(SQL.getInsertCarQuery());
			statement.setInt(1, car.getModel_id());
			statement.setInt(2, car.getManufacturer_id());
			statement.setString(3, car.getRent());
			statement.setInt(4, car.getStatus());
			statement.executeUpdate();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static List<Car> readCar() throws SQLException, ClassNotFoundException{
		List<Car> cars = new ArrayList<>();
		try {
			Connection connection = Database.initConnection();
			PreparedStatement statement = connection.prepareStatement(SQL.getSelectAllCarQuery());
			ResultSet result = statement.executeQuery();
			
			while(result.next()) {
				int id = result.getInt("id");
				int model_id = result.getInt("model_id");
				int manufacturer_id = result.getInt("manufacturer_id");
				String rent = result.getString("rent");
				int status = result.getInt("status");
				cars.add(new Car(id, model_id, manufacturer_id, rent, status));
			}
		}
		catch(SQLException e){
			e.printStackTrace();
		}
		return cars;
	}
	
	public static String getRent(int id) throws ClassNotFoundException {
		String rent = "";
		try {
			Connection connection = Database.initConnection();
			PreparedStatement statement = connection.prepareStatement(SQL.getRentByIdQuery());
			statement.setInt(1, id);
			ResultSet result = statement.executeQuery();
				while(result.next()) {
					rent = result.getString("rent");	
				}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return rent;
	}
	
	public static int getStatus(int id) throws ClassNotFoundException {
		int status = 0;
		try {
			Connection connection = Database.initConnection();
			PreparedStatement statement = connection.prepareStatement(SQL.getCarStatusByIdQuery());
			statement.setInt(1, id);
			ResultSet result = statement.executeQuery();
				while(result.next()) {
					status = result.getInt("status");	
				}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return status;
	}
	
	public static void updateCar(Car car, int id) throws ClassNotFoundException, SQLException {
		try {
			Connection connection 		= Database.initConnection();
			PreparedStatement statement = connection.prepareStatement(SQL.getUpdateCarQuery());
			statement.setInt(1, car.getModel_id());
			statement.setInt(2, car.getManufacturer_id());
			statement.setString(3, car.getRent());
			statement.setInt(4, car.getStatus());
			statement.setInt(5, id);
			statement.executeUpdate();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}	
	}
}
