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
import rencar.model.Manufacturer;

public class AdminDAO {
	public static void createAdmin(Admin admin) throws ClassNotFoundException, SQLException {
		try {
			Connection connection 		= Database.initConnection();
			PreparedStatement statement = connection.prepareStatement(SQL.getInsertAdminQuery());
			statement.setString(1, admin.getUsername());
			statement.setString(2, admin.getPassword());
			statement.setInt(3, admin.getCreator_id());
			statement.executeUpdate();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}	
	}
	public static List<Admin> readAdmin() throws ClassNotFoundException, SQLException {
		List<Admin> admins = new ArrayList<>();
		try {
			Connection connection = Database.initConnection();
			System.out.println("Error"+SQL.getSelectAllAdminQuery());
			PreparedStatement statement = connection.prepareStatement(SQL.getSelectAllAdminQuery());
			
			ResultSet result = statement.executeQuery();
				while(result.next()) {
					int id 			= result.getInt("id");
					String username = result.getString("username");
					int creator_id 	= result.getInt("creator_id");
					admins.add(new Admin(id, username, creator_id));	
				}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return admins;
	}
	
	public static void updateAdmin(Admin admin, int id) throws ClassNotFoundException, SQLException {
		try {
			Connection connection 		= Database.initConnection();
			PreparedStatement statement = connection.prepareStatement(SQL.getUpdateAdminQuery());
			statement.setString(1, admin.getUsername());
			statement.setString(2, admin.getPassword());
			statement.setInt(3, id);
			statement.executeUpdate();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}	
	}
	
	public static String getAdminUsername(int id) throws ClassNotFoundException {
		String username = "";
		try {
			Connection connection 		= Database.initConnection();
			PreparedStatement statement = connection.prepareStatement(SQL.getAdminUsernameQuery());
			statement.setInt(1, id);
			ResultSet result = statement.executeQuery();
			while(result.next()) {
				username = result.getString("username");
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return username;
	}
	
	public static String getAdminPassword(int id) throws ClassNotFoundException {
		String password = "";
		try {
			Connection connection 		= Database.initConnection();
			PreparedStatement statement = connection.prepareStatement(SQL.getAdminPasswordById());
			statement.setInt(1, id);
			ResultSet result 			= statement.executeQuery();
			while(result.next()) {
				password = result.getString("password");
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return password;
	}
	
	public static String getAdminPassword(String username) throws ClassNotFoundException {
		String password = "";
		try {
			Connection connection 		= Database.initConnection();
			PreparedStatement statement = connection.prepareStatement(SQL.getAdminPassword());
			statement.setString(1, username);
			ResultSet result 			= statement.executeQuery();
			while(result.next()) {
				password = result.getString("password");
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return password;
	}
	
	public static void deleteAdmin(int id) throws ClassNotFoundException {
		try {
			Connection connection 		= Database.initConnection();
			PreparedStatement statement = connection.prepareStatement(SQL.deleteAdminQuery());
			statement.setInt(1, id);
			statement.executeUpdate();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
	}
}
