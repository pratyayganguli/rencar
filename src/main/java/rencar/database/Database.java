package rencar.database;
import java.sql.*;
import rencar.app.Log;

public class Database {
	static String driver 			= "com.mysql.cj.jdbc.Driver";
	static final String user 		= "root";
	static final String password 	= "root";
	static final String database 	= "rencar_db";
	static final String port		= "3306";
	static final String URL 		= "jdbc:mysql://localhost:"+port+"/"+database+"?useSSL=false";
	
	public static Connection initConnection() throws SQLException, ClassNotFoundException {
		Connection connection = null;
		try {
			Class.forName(driver);
			connection = DriverManager.getConnection(URL, user, password);
			System.out.println("Connection" + connection);
		}
		catch(SQLException e) {
			e.printStackTrace();
			Log.connectivityError();
		}
		catch(ClassNotFoundException e) {
			e.printStackTrace();	
			System.out.println("Driver class not found");		}
		return connection; 
	}
}
