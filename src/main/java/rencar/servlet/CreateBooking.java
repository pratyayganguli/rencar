package rencar.servlet;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import rencar.DAO.BookingDAO;
import rencar.model.Booking;

public class CreateBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CreateBooking() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("views/create-booking.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String person_name = request.getParameter("person_name");
		String person_email = request.getParameter("person_email");
		String person_phone = request.getParameter("person_phone");
		String booking_date = request.getParameter("booking_date");
		String starting_date = request.getParameter("starting_date");
		String ending_date = request.getParameter("ending_date");
		String STATE_ID = request.getParameter("state_id");
		String CITY_ID = request.getParameter("city_id");
		String LOCATION_ID =request.getParameter("location_id");
		String CAR_ID = request.getParameter("car_id");
		int status = 1;		
		int state_id = Integer.parseInt(STATE_ID);
		int city_id = Integer.parseInt(CITY_ID);
		int location_id = Integer.parseInt(LOCATION_ID);
		int car_id = Integer.parseInt(CAR_ID);
		
		Booking booking = new Booking(person_name, person_email, person_phone, booking_date, starting_date, ending_date, state_id, city_id, location_id, car_id, status);
		
		try {
			BookingDAO.createBooking(booking);
			response.sendRedirect("/rencar/check-booking");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
}
