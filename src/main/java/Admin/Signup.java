package Admin;

import java.io.IOException;

import DAO.database;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Signup")
public class Signup extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

		String uname = request.getParameter("username");
		String password = request.getParameter("password");

		database db = new database();
		System.out.println("hello world");
		if (uname.equalsIgnoreCase("Admin") && password.equalsIgnoreCase("Admin")) {
			HttpSession session = request.getSession();
			session.setAttribute("Name", "Admin");
			response.sendRedirect("AdminPage.jsp");
		} else {

			if (db.Signin(uname, password)) {
				HttpSession ses = request.getSession();
				ses.setAttribute("Name",uname );
				System.out.println("hello world");
				response.sendRedirect("UserPage.jsp");
			} else {
				response.sendRedirect("Signup.jsp");
			}
		}

	}

}
