package rencar.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rencar.DAO.BookingDAO;
import rencar.DAO.PaymentDAO;
import rencar.model.Booking;
import rencar.model.Payment;

public class CreatePayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	public CreatePayment() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("booking_id") == null) {
			response.sendRedirect("views/forbidden.jsp");
		}
		else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("views/create-payment.jsp?id="+request.getParameter("booking_id"));
			dispatcher.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String amount = request.getParameter("amount");
		String mode_of_payment = request.getParameter("mode_of_payment");
		String card_number = request.getParameter("card_number");
		String bookingid = request.getParameter("booking_id");
		int booking_id = Integer.parseInt(bookingid);		
		
		Payment payment = new Payment(amount, mode_of_payment, card_number, booking_id);
		
		try {
			PaymentDAO.createPayment(payment);
			response.sendRedirect("views/payment-success.jsp");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
}
