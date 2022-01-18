package rencar.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ShowBookings extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ShowBookings() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("email")!=null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("views/view-bookings.jsp");
			dispatcher.forward(request, response);	
		}
		else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("views/forbidden.jsp");
			dispatcher.forward(request, response);		
		}
	}
}
