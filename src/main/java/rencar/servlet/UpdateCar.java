package rencar.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import rencar.DAO.CarDAO;
import rencar.model.Car;

public class UpdateCar extends HttpServlet {
	private static final long serialVersionUID = 1L;
           
    public UpdateCar() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("id") != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("views/update-car.jsp?id="+request.getParameter("id"));
			dispatcher.forward(request, response);
		}
		else {
			response.sendRedirect("views/forbidden.jsp");	
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("id") != null) {
			if(request.getParameter("model_id") != null) {
				if(request.getParameter("manufacturer_id") != null) {
					if(request.getParameter("rent") != null) {
						if(request.getParameter("status") != null) {
							String ID = request.getParameter("id"); 
							int id = Integer.parseInt(ID);
							String MODEL_ID = request.getParameter("model_id");
							String MANUFACTURER_ID = request.getParameter("manufacturer_id");
							String rent = request.getParameter("rent");
							String STATUS = request.getParameter("status");
							int model_id = Integer.parseInt(MODEL_ID);
							int manufacturer_id = Integer.parseInt(MANUFACTURER_ID);
							int status = Integer.parseInt(STATUS);
							Car car = new Car(id, model_id, manufacturer_id, rent, status);
							try {
								CarDAO.updateCar(car, id);
							} catch (ClassNotFoundException | SQLException e) {
								e.printStackTrace();
							}
							RequestDispatcher dispatcher = request.getRequestDispatcher("views/view-cars.jsp");
							dispatcher.forward(request, response);
						}
					}
				}
			}	
		}
		else {
			response.sendRedirect("views/forbidden.jsp");
		}
	}

}
