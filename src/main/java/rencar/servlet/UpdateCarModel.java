package rencar.servlet;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import rencar.DAO.CarModelDAO;
import rencar.model.CarModel;

public class UpdateCarModel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateCarModel() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("id") != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("views/update-car-model.jsp?id="+request.getParameter("id"));
			dispatcher.forward(request, response);
		}
		else {
			response.sendRedirect("views/forbidden.jsp");	
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("id") != null) {
			if(request.getParameter("manufacturer_id") != null) {
				if(request.getParameter("name") != null) {
					if(request.getParameter("status") != null) {
						String ID = request.getParameter("id"); 
						int id = Integer.parseInt(ID);
						String MANUFACTURER_ID = request.getParameter("manufacturer_id");
						String name = request.getParameter("name");
						String STATUS = request.getParameter("status");
						int manufacturer_id = Integer.parseInt(MANUFACTURER_ID);
						int status = Integer.parseInt(STATUS);
						CarModel model = new CarModel(id, manufacturer_id, name, status);
						try {
							CarModelDAO.updateCarModel(model, id);
						} catch (ClassNotFoundException | SQLException e) {
							e.printStackTrace();
						}
						RequestDispatcher dispatcher = request.getRequestDispatcher("views/view-car-model.jsp");
						dispatcher.forward(request, response);
					}
				}
			}
		}	
		else {
			response.sendRedirect("views/forbidden.jsp");
		}
	}
}
