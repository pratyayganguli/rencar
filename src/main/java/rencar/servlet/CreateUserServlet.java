package rencar.servlet;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rencar.DAO.UserDAO;
import rencar.database.Database;
import rencar.model.User;

public class CreateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public CreateUserServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("views/create-account.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstname 	= request.getParameter("firstname");
		String lastname 	= request.getParameter("lastname");
		String email 		= request.getParameter("email");
		String password 	= request.getParameter("password");
		int status 			= 1;
		
		String name = "";
		String middlename = "";
		if(request.getParameter("middlename") != null) {
			middlename = request.getParameter("middlename");
			name = firstname + " " + middlename + " " + lastname;
		}
		else {
			name = firstname + " " + lastname;
		}
		try {
			if(Database.initConnection() != null) {
				PrintWriter out = new PrintWriter(System.out);
				response.getWriter().append("Connected");
				User user = new User(name, email, password, status);
				UserDAO.createUser(user);
			}
			else {
				PrintWriter out = new PrintWriter(System.out);
				response.getWriter().append("Not Connected");
			}
		}
		catch(SQLException e){
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		response.sendRedirect("login");
	}
}
