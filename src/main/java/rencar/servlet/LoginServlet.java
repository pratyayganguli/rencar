package rencar.servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rencar.DAO.AdminDAO;
import rencar.DAO.UserDAO;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("views/login.jsp");
		dispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if((request.getParameter("email") == null) && (request.getParameter("username") == null)) {
			
		}
		else {
			String email = "";
			String password = "";
			
			if(request.getParameter("email") != null) {
				email 	= request.getParameter("email");
			}
			if(request.getParameter("password") != null) {
				password = request.getParameter("password");
			}
			
			try {
				if(password.equals(AdminDAO.getAdminPassword(email))){	
					response.sendRedirect("index.jsp?username="+email);
				}
				
				else if(password.equals(UserDAO.getUserPassword(email))){
					response.sendRedirect("views/dashboard.jsp?email="+email);		
				}
				else {
					response.sendRedirect("views/forbidden.jsp");	
				}
			} 
			catch (ClassNotFoundException e) {		
				e.printStackTrace();
			}
		}
	}
}
