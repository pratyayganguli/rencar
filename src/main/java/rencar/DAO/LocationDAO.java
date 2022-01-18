package rencar.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import rencar.database.Database;
import rencar.database.SQL;
import rencar.model.Location;

public class LocationDAO {
	public static List<Location> readLocation() throws ClassNotFoundException, SQLException {
		List<Location> locations = new ArrayList<>();
		try {
			Connection connection = Database.initConnection();
			PreparedStatement statement = connection.prepareStatement(SQL.getSelectAllLocationQuery());
			ResultSet result = statement.executeQuery();
				while(result.next()) {
					int id 			= result.getInt("id");
					String name = result.getString("name");
					int city_id = result.getInt("city_id");
					locations.add(new Location(id, name, city_id));	
				}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return locations;
	}
}
