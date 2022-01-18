package rencar.servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rencar.DAO.CarModelDAO;

public class DeleteCarModel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteCarModel() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("id") != null) {
			String ID = request.getParameter("id");
			int id = Integer.parseInt(ID);
			try {
				CarModelDAO.deleteCarModel(id);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			response.sendRedirect("view-car-models");
		}
		else {
			response.sendRedirect("index.jsp");
		}
	}
}
