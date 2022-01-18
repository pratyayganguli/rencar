package rencar.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import rencar.database.*;
import rencar.model.User;

public class UserDAO {
	public static void createUser(User user) throws ClassNotFoundException, SQLException {
		try {
			Connection connection = Database.initConnection();
			PreparedStatement statement = connection.prepareStatement(SQL.getInsertUserQuery());
			statement.setString(1, user.getName());
			statement.setString(2, user.getEmail());
			statement.setString(3, user.getPassword());
			statement.executeUpdate();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}	
	}
	
	public static void readUser() {
		
	}
	public static void updateUser() {
		
	}
	public static void deleteUser() {
		
	}
	public static String getUserPassword(String mail) throws ClassNotFoundException {
		String password = "";
		try {
			Connection connection 		= Database.initConnection();
			PreparedStatement statement = connection.prepareStatement(SQL.getUserPasswordByMail());
			statement.setString(1, mail);
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
}
