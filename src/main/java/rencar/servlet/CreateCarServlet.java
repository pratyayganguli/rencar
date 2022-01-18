package rencar.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rencar.DAO.CarDAO;
import rencar.model.Car;

public class CreateCarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CreateCarServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher  = request.getRequestDispatcher("views/create-car.jsp");
		dispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rent 			= request.getParameter("rent");
		String modelid 			= request.getParameter("model_id");
		String manufacturerid 	= request.getParameter("manufacturer_id");
		String STATUS	 		= request.getParameter("status");
		int model_id 			=  Integer.parseInt(modelid);
		int manufacturer_id 	=  Integer.parseInt(manufacturerid);
		int status				= Integer.parseInt(STATUS);
		
		Car car = new Car(model_id, manufacturer_id, rent, status);
		try {
			CarDAO.createCar(car);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		response.sendRedirect("index.jsp");
	}
}
