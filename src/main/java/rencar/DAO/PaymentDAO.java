package rencar.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import rencar.database.Database;
import rencar.database.SQL;
import rencar.model.Payment;

public class PaymentDAO {
	public static String calcPaymentAmount(int booking_id) throws ClassNotFoundException {
		String amount;
		String start_date 	= BookingDAO.readStartDate(booking_id);
		String end_date 	= BookingDAO.readEndDate(booking_id);
		String start_day 	= start_date.substring(8, 10);
		String end_day 		= end_date.substring(8, 10);
		String PRICE 		= CarDAO.readPrice(BookingDAO.readCarId(booking_id));
//		System.out.println(PRICE);
		int price 		= Integer.parseInt(PRICE); 		
		int startDay 	= Integer.parseInt(start_day);
		int endDay 		= Integer.parseInt(end_day);
		int days;
		if(endDay > startDay) {
			days 		= endDay - startDay;
		}
		else {
			days = startDay - endDay;
		}
		
		int AMOUNT = days*price;
		amount = Integer.toString(AMOUNT);
		return amount;
	}
	
	public static List<Payment> readPayment() throws SQLException, ClassNotFoundException{
		List<Payment> payments = new ArrayList<>();
		try {
			Connection connection = Database.initConnection();
			PreparedStatement statement = connection.prepareStatement(SQL.getSelectAllPaymentQuery());
			ResultSet result = statement.executeQuery();
			
			while(result.next()) {
				String amount = result.getString("amount");
				String mode_of_payment = result.getString("mode_of_payment");
				int booking_id = result.getInt("booking_id");
				payments.add(new Payment(amount, mode_of_payment, booking_id));
			}
		}
		catch(SQLException e){
			e.printStackTrace();
		}
		
		return payments;
	}
	
	public static void createPayment(Payment payment) throws ClassNotFoundException, SQLException {
		try {
			Connection connection 		= Database.initConnection();
			PreparedStatement statement = connection.prepareStatement(SQL.getInsertPaymentQuery()); 
			statement.setString(1, payment.getAmount());
			statement.setString(2, payment.getMode_of_payment());
			statement.setString(3, payment.getCard_number());
			statement.setInt(4, payment.getBooking_id());
			statement.executeUpdate();
			
			statement = connection.prepareStatement(SQL.getUpdatePaymentStatusQuery());
			statement.setInt(1, 1);
			statement.setInt(2, payment.getBooking_id());
			statement.executeUpdate();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}	
	}
}
