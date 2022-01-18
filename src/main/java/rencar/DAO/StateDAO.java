package rencar.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import rencar.database.Database;
import rencar.database.SQL;
import rencar.model.State;

public class StateDAO {
	public static List<State> readState() throws ClassNotFoundException, SQLException {
		List<State> states = new ArrayList<>();
		try {
			Connection connection = Database.initConnection();
			PreparedStatement statement = connection.prepareStatement(SQL.getSelectAllStateQuery());
			ResultSet result = statement.executeQuery();
				while(result.next()) {
					int id 			= result.getInt("id");
					String name = result.getString("name");
					states.add(new State(id, name));	
				}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return states;
	}
}
