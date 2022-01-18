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

public class CreateAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CreateAdmin() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("views/create-admin.jsp");
		dispatcher.forward(request, response);	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username 	= request.getParameter("username");
		String password 	= request.getParameter("conf-password");
		String code 		= request.getParameter("create-admin-code");
		String creatorid 	= request.getParameter("creator_id");
		int creator_id      = Integer.parseInt(creatorid);
		
		Admin admin = new Admin(username, password, creator_id);
		
		try {
			AdminDAO.createAdmin(admin);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("views/view-admins.jsp");
		dispatcher.forward(request, response);		
	}
}
