package Admin;

import java.io.IOException;

import DAO.database;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/CheckVoter")
public class CheckVoter extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String voterid = request.getParameter("voter-id");
		String id = request.getParameter("e-id");
		String aadhaar = request.getParameter("aadhaar");
		String name = request.getParameter("name");

		database db = new database();
		if (db.Verification(id, voterid)) {
			response.sendRedirect("UserPage.jsp?status=already_voted");
		} else {
			if (db.checkvoter(voterid, aadhaar)) {

				response.sendRedirect("Voting.jsp?election-id=" + id + "&voter-id=" + voterid + "&name=" + name);
			} else {

				response.sendRedirect("UserPage.jsp?status=no_user_found");
			}
		}
	}
}
