package Admin;

import java.io.IOException;

import DAO.database;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Reset")
public class Reset extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

		String email = request.getParameter("email");
		String password = request.getParameter("password");

		database db = new database();



			if (db.Reset(email, password)) {
				response.sendRedirect("Signup.jsp?status=success");
			} else {
				response.sendRedirect("Signup.jsp?status=fail");
			
		}

	}

}