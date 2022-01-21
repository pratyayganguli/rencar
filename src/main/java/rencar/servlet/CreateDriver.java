package rencar.servlet;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import rencar.DAO.DriverDAO;
import rencar.model.Driver;

public class CreateDriver extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CreateDriver() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("views/create-driver.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstname 				= "";
		String lastname 				= "";
		String unique_license_number 	= "";
		String CAR_ID 					= "";
		String STATUS 					= "";
		int car_id 						= 0;
		int status						= 1;
		
		if(request.getParameter("firstname") != null) {
			if(request.getParameter("lastname") != null) {
				if(request.getParameter("unique_license_number")!= null) {
					firstname 				= request.getParameter("firstname");
					lastname 				= request.getParameter("lastname");
					unique_license_number 	= request.getParameter("unique_license_number");
					if(request.getParameter("car_id") != null) {
						CAR_ID = request.getParameter("car_id");
					}
					
					if(CAR_ID.equals("")){
						car_id = Integer.parseInt(CAR_ID);	
					}
					
					Driver driver = null;
					
					if(car_id != 0) {
						driver = new Driver(firstname, lastname, unique_license_number, car_id, status);
					}
					else {
						driver = new Driver(firstname, lastname, unique_license_number, status);				
					}
					try {
						DriverDAO.createDriver(driver);
					} catch (ClassNotFoundException | SQLException e) {
						e.printStackTrace();
					}
					response.sendRedirect("views/view-driver.jsp");
				}	
			}
		}
		else {
			response.sendRedirect("views/forbidden.jsp");	
		}
	}
}
