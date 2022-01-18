package rencar.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import rencar.DAO.ManufacturerDAO;
import rencar.model.Manufacturer;

public class CreateManufacturerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	public CreateManufacturerServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("views/create-manufacturer.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		Manufacturer manufacturer = new Manufacturer(name);
		try {
			ManufacturerDAO.createManufacturer(manufacturer);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		RequestDispatcher dispatcher  = request.getRequestDispatcher("views/view-manufacturers.jsp");
		dispatcher.forward(request, response);
	}
}
