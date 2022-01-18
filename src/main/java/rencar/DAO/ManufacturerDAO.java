package rencar.DAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import rencar.database.Database;
import rencar.database.SQL;
import rencar.model.Admin;
import rencar.model.Manufacturer;

public class ManufacturerDAO {
	public static void createManufacturer(Manufacturer manufacturer) throws ClassNotFoundException {
		try {
			Connection connection = Database.initConnection();
			PreparedStatement statement = connection.prepareStatement(SQL.getInsertManufacturerQuery());
			statement.setString(1, manufacturer.getName());
			statement.executeUpdate();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
	}
	public static List<Manufacturer> readManufacturer() throws ClassNotFoundException, SQLException {
		List<Manufacturer> manufacturers = new ArrayList<>();
		try {
			Connection connection = Database.initConnection();
			PreparedStatement statement = connection.prepareStatement(SQL.getSelectAllManufacturerQuery());
			ResultSet result = statement.executeQuery();
				while(result.next()) {
					int id = result.getInt("id");
					String name = result.getString("name");
					manufacturers.add(new Manufacturer(id, name));	
				}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return manufacturers;
	}
	
	public static String readManufacturerById(int id) throws ClassNotFoundException {
		String manufacturer = "";
		try {
			Connection connection = Database.initConnection();
			PreparedStatement statement = connection.prepareStatement(SQL.getManufacturerByIdQuery());
			statement.setInt(1, id);
			ResultSet result = statement.executeQuery();
				while(result.next()) {
					manufacturer = result.getString("name");	
				}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return manufacturer;
	}
	
	public static void updateManufacturer(Manufacturer manufacturer, int id) throws ClassNotFoundException {
		try {
			Connection connection 		= Database.initConnection();
			PreparedStatement statement = connection.prepareStatement(SQL.getUpdateManufacturerQuery());
			statement.setString(1, manufacturer.getName());
			statement.setInt(2, id);
			statement.executeUpdate();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
	}
	public static void deleteManufacturer(int id) throws ClassNotFoundException {
		try {
			Connection connection 		= Database.initConnection();
			PreparedStatement statement = connection.prepareStatement(SQL.deleteManufacturerQuery());
			statement.setInt(1, id);
			statement.executeUpdate();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
	}
	public static String getName(int id) throws ClassNotFoundException {
		String name = "";
		try {
			Connection connection 		= Database.initConnection();
			PreparedStatement statement = connection.prepareStatement(SQL.getManufacturerNameQuery());
			statement.setInt(1, id);
			ResultSet result = statement.executeQuery();
			while(result.next()) {
				name = result.getString("name");
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return name;
	}
}
