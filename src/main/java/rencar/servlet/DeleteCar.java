package rencar.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rencar.DAO.CarDAO;
import rencar.DAO.CarModelDAO;

public class DeleteCar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteCar() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("id") != null) {
			String ID = request.getParameter("id");
			int id = Integer.parseInt(ID);
			try {
				CarDAO.deleteCar(id);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			response.sendRedirect("view-cars");
		}
		else {
			response.sendRedirect("index.jsp");
		}
	}

}
