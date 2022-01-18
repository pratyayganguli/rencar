package rencar.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import rencar.DAO.ManufacturerDAO;

public class DeleteManufacturer extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public DeleteManufacturer() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("id") != null) {
			String ID = request.getParameter("id");
			int id = Integer.parseInt(ID);
			try {
				ManufacturerDAO.deleteManufacturer(id);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			RequestDispatcher dispatcher = request.getRequestDispatcher("views/view-manufacturers.jsp");
			dispatcher.forward(request, response);
		}
		else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("views/forbidden.jsp");
			dispatcher.forward(request, response);
		}
	}
}
