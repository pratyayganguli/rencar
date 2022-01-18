package rencar.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import rencar.database.Database;
import rencar.database.SQL;
import rencar.model.CarModel;
import rencar.model.Manufacturer;

public class CarModelDAO {
	public static void createCarModel(CarModel model) throws ClassNotFoundException {
		try {
			Connection connection 		= Database.initConnection();
			PreparedStatement statement = connection.prepareStatement(SQL.getInsertCarModelQuery());
			statement.setString(1, model.getName());
			statement.setInt(2, model.getManufacturer_id());
			statement.executeUpdate();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
	}
	public static List<CarModel> readCarModel() throws SQLException, ClassNotFoundException{
		List<CarModel> models = new ArrayList<>();
		try {
			Connection connection = Database.initConnection();
			PreparedStatement statement = connection.prepareStatement(SQL.getSelectAllCarModelQuery());
			ResultSet result = statement.executeQuery();
			
			while(result.next()) {
				int id = result.getInt("id");
				String name = result.getString("name");
				int manufacturer_id = result.getInt("manufacturer_id");
				models.add(new CarModel(id, name, manufacturer_id));
			}
		}
		catch(SQLException e){
			e.printStackTrace();
		}
		return models;
	}
	public static void deleteCarModel(int id) throws ClassNotFoundException {
		try {
			Connection connection 		= Database.initConnection();
			PreparedStatement statement = connection.prepareStatement(SQL.deleteCarModelQuery());
			statement.setInt(1, id);
			statement.executeUpdate();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static String readModelById(int id) throws ClassNotFoundException {
		String model = "";
		try {
			Connection connection = Database.initConnection();
			PreparedStatement statement = connection.prepareStatement(SQL.getModelByIdQuery());
			statement.setInt(1, id);
			ResultSet result = statement.executeQuery();
				while(result.next()) {
					model = result.getString("name");	
				}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return model;
	}
}
