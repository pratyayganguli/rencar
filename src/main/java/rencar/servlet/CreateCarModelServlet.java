package rencar.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rencar.DAO.CarModelDAO;
import rencar.DAO.ManufacturerDAO;
import rencar.model.CarModel;
import rencar.model.Manufacturer;

public class CreateCarModelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public CreateCarModelServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Manufacturer> listManufacturer =  new ArrayList<>();
		try {
			listManufacturer = ManufacturerDAO.readManufacturer();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("listManufacturer", listManufacturer);
		RequestDispatcher dispatcher  = request.getRequestDispatcher("views/create-model.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name 				= request.getParameter("name");
		String manufacturerid 		= request.getParameter("manufacturer_id");
		int manufacturer_id 		= Integer.parseInt(manufacturerid); 
		CarModel model 				= new CarModel(name, manufacturer_id);
		try {
			CarModelDAO.createCarModel(model);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		response.sendRedirect("view-car-models");
	}
}
