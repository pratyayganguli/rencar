package rencar.servlet;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import rencar.DAO.AdminDAO;
import rencar.model.Admin;

public class UpdateAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateAdmin() {
        super();  
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("id") != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("views/update-admin.jsp?id="+request.getParameter("id"));
			dispatcher.forward(request, response);
		}
		RequestDispatcher dispatcher  = request.getRequestDispatcher("views/forbidden.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("id") != null) {
			if(request.getParameter("username") != null) {
				if(request.getParameter("password") != null) {
					String ID = request.getParameter("id"); 
					int id = Integer.parseInt(ID);
					String username = request.getParameter("username");
					String password = request.getParameter("password");
					Admin admin = new Admin(id, username, password);
					try {
						AdminDAO.updateAdmin(admin, id);
					} catch (ClassNotFoundException | SQLException e) {
						e.printStackTrace();
					}
					RequestDispatcher dispatcher = request.getRequestDispatcher("views/view-admins.jsp");
					dispatcher.forward(request, response);
				}
			}	
		}
		else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("views/forbidden.jsp");
			dispatcher.forward(request, response);
		}
	}
}
