package rencar.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import rencar.DAO.UserDAO;


public class AccountServet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public AccountServet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("views/user-login.jsp");
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = "";
		String password = "";
			
		if(request.getParameter("email") != null) {
			email 	= request.getParameter("email");
		}
		if(request.getParameter("password") != null) {
			password = request.getParameter("password");
		}
			
		try {
			if(password.equals(UserDAO.getUserPassword(email))){
				HttpSession session  = request.getSession();
				session.setAttribute("user", email);
				response.sendRedirect("/rencar/dashboard");
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
