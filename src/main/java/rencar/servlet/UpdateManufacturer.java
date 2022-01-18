package rencar.servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import rencar.DAO.ManufacturerDAO;
import rencar.model.Manufacturer;

public class UpdateManufacturer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateManufacturer() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("id") != null) {
			String id = request.getParameter("id");
			RequestDispatcher dispatcher  = request.getRequestDispatcher("views/update-manufacturer.jsp?id="+id);
			dispatcher.forward(request, response);
		}
		else {
			RequestDispatcher dispatcher  = request.getRequestDispatcher("views/forbidden.jsp");
			dispatcher.forward(request, response);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("id") != null) {
			if(request.getParameter("name") != null) {	
				String ID = request.getParameter("id");
				int id = Integer.parseInt(ID);
				String name = request.getParameter("name");
				Manufacturer manufacturer = new Manufacturer(id, name);
		
				try {
					ManufacturerDAO.updateManufacturer(manufacturer, id);
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				}
				RequestDispatcher dispatcher = request.getRequestDispatcher("views/view-manufacturers.jsp");
				dispatcher.forward(request, response);
			}
		}
		else {
			RequestDispatcher dispatcher  = request.getRequestDispatcher("views/forbidden.jsp");
			dispatcher.forward(request, response);
		}
	}
}
